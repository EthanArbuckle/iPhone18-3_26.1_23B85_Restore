@interface HSTHIDEventGenerator
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (HSTHIDEventGenerator)initWithConfig:(const HSTHIDEventGeneratorConfig *)config;
- (id).cxx_construct;
- (void)_cancelActiveContacts:(int64_t)contacts;
- (void)_handleContactFrame:(id)frame;
- (void)_handleCopyEvent:(id)event;
- (void)_handleDebugStateEvent:(id)event;
- (void)_handleGetPropertyEvent:(id)event;
- (void)_handleHIDEvents:(id)events;
- (void)_handleResetEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleTouchModeEvent:(id)event;
- (void)_handleVendorEvent:(id)event;
- (void)_handleWakeSystemEvent:(id)event;
- (void)_logContact:(Contact *)contact ofType:(int)type withFrame:(id)frame;
- (void)_saveLastTouchSystemReady:(id)ready;
- (void)handleConsume:(id)consume;
@end

@implementation HSTHIDEventGenerator

- (HSTHIDEventGenerator)initWithConfig:(const HSTHIDEventGeneratorConfig *)config
{
  v10.receiver = self;
  v10.super_class = HSTHIDEventGenerator;
  v4 = [(HSStage *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_config = *config;
    v4->_touchMode = 1;
    v6 = objc_opt_new();
    hidStats = v5->_hidStats;
    v5->_hidStats = v6;

    v8 = v5;
  }

  return v5;
}

- (void)_saveLastTouchSystemReady:(id)ready
{
  readyCopy = ready;
  v5 = readyCopy[1];
  for (i = readyCopy[2]; v5 != i; ++v5)
  {
    v7 = *v5;
    v8 = *v5;
    if ([v8 type] == 1 && objc_msgSend(v8, "integerValueForField:", 0x10000) == &loc_FF60 && objc_msgSend(v8, "integerValueForField:", 65537) == &dword_8 + 1)
    {
      objc_storeStrong(&self->_lastTouchSystemReadyEvent, v7);
      v9 = [v8 dataValueForField:65540];
      v10 = MTLoggingPlugin();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "YES";
        if (!*v9)
        {
          v11 = "NO";
        }

        *buf = 136446210;
        v13 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Touch System Ready = %{public}s", buf, 0xCu);
      }
    }
  }
}

- (void)_handleHIDEvents:(id)events
{
  eventsCopy = events;
  if (!self->_disableEvents)
  {
    [(HSTHIDEventGenerator *)self _saveLastTouchSystemReady:eventsCopy];
    [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:eventsCopy];
    v5.receiver = self;
    v5.super_class = HSTHIDEventGenerator;
    [(HSStage *)&v5 handleConsume:eventsCopy];
  }
}

- (void)_logContact:(Contact *)contact ofType:(int)type withFrame:(id)frame
{
  frameCopy = frame;
  contactID = contact->contactID;
  v10 = &self->_prevUnmodifiedContacts[contactID];
  contactStateCounts = self->_contactStateCounts;
  if (__PAIR64__(v10->stage, v10->contactID) == __PAIR64__(contact->stage, contactID) && v10->finger == contact->finger && v10->flags == contact->flags)
  {
    v12 = contactStateCounts[contactID] + 1;
    contactStateCounts[contactID] = v12;
    HIDWORD(v13) = -286331153 * v12;
    LODWORD(v13) = -286331153 * v12;
    if ((v13 >> 1) <= 0x8888888)
    {
      v14 = MTLoggingPlugin();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        frameNumber = [frameCopy frameNumber];
        firmwareTimestamp = [frameCopy firmwareTimestamp];
        v17 = contactStateCounts[contactID];
        v18 = [NSString stringWithFormat:@"HSTContact{ID:%u, Stage:%u, Finger:%u, Flags:0x%08llX}", contact->contactID, contact->stage, contact->finger, contact->flags];
        *buf = 134219010;
        v28 = frameNumber;
        v29 = 2048;
        v30 = (firmwareTimestamp / 1000000.0);
        v31 = 1024;
        *v32 = v17;
        *&v32[4] = 2114;
        *&v32[6] = v18;
        v33 = 1024;
        typeCopy = type;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[F%llu @%f] Contact seen for %d frames: state %{public}@, type %u", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v19 = MTLoggingPlugin();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      frameNumber2 = [frameCopy frameNumber];
      firmwareTimestamp2 = [frameCopy firmwareTimestamp];
      v22 = [NSString stringWithFormat:@"HSTContact{ID:%u, Stage:%u, Finger:%u, Flags:0x%08llX}", contact->contactID, contact->stage, contact->finger, contact->flags];
      *buf = 134219010;
      v23 = contactStateCounts[contactID];
      v28 = frameNumber2;
      v29 = 2048;
      v30 = (firmwareTimestamp2 / 1000000.0);
      v31 = 2114;
      *v32 = v22;
      *&v32[8] = 1024;
      *&v32[10] = type;
      v33 = 1024;
      typeCopy = v23;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[F%llu @%f] Contact state changed: %{public}@, type %u, previous state count %d", buf, 0x2Cu);
    }

    contactStateCounts[contactID] = 1;
  }

  v24 = *&contact->contactID;
  v25 = *&contact->position.x;
  v26 = *&contact->azimuth;
  *&v10->velocity.y = *&contact->velocity.y;
  *&v10->azimuth = v26;
  *&v10->contactID = v24;
  *&v10->position.x = v25;
}

- (void)_handleContactFrame:(id)frame
{
  frameCopy = frame;
  HSUtil::MachTimeFromNanoseconds([frameCopy hsTimestamp]);
  if (frameCopy[120] != 1)
  {
    goto LABEL_19;
  }

  v3 = frameCopy[113];
  if (v3 == 10)
  {
    if ((self->_touchMode & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v3 == 9)
  {
    if ((self->_touchMode & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v4 = 1;
    v5 = "enabled";
    goto LABEL_11;
  }

  if (v3 == 8 && (self->_touchMode & 0x80) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v4 = 2;
  v5 = "disabled";
LABEL_11:
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(frameCopy + 29);
    buf[0] = 67109376;
    buf[1] = v3;
    LOWORD(buf[2]) = 1024;
    *(&buf[2] + 2) = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Tritium3 frame received: wake reason 0x%02X, gesture recognition time %d ms", buf, 0xEu);
  }

  v8 = *(frameCopy + 6);
  for (i = *(frameCopy + 7); v8 != i; v8 += 64)
  {
    if (v8[1] - 1 <= 3)
    {
      v10 = MTLoggingPlugin();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v8;
        buf[0] = 67109378;
        buf[1] = v11;
        LOWORD(buf[2]) = 2082;
        *(&buf[2] + 2) = v5;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Contact %u is a tritium3 contact, setting contact type to tritium3 %{public}s", buf, 0x12u);
      }

      self->_contactTypes[*v8] = v4;
    }
  }

LABEL_19:
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  memset(buf, 0, sizeof(buf));
  v12 = *(frameCopy + 7);
  if (*(frameCopy + 6) >= v12)
  {
    v66 = 0;
    v67 = 0;
    v65 = 0;
  }

  else
  {
    v13 = 0;
    v90 = 0;
    v89 = 0;
    v91 = 0;
    v92 = 0;
    v14 = -v12;
    selfCopy5 = self;
    do
    {
      v17 = (v12 + v13 - 64);
      v16 = *v17;
      if (v16 >= 0x20)
      {
        __assert_rtn("[HSTHIDEventGenerator _handleContactFrame:]", "HSTHIDEventGenerator.mm", 332, "c.contactID < Contact::MaxContactCount");
      }

      contactTypes = selfCopy5->_contactTypes;
      [(HSTHIDEventGenerator *)selfCopy5 _logContact:v12 + v13 - 64 ofType:selfCopy5->_contactTypes[v16] withFrame:frameCopy];
      v19 = &selfCopy5->_contacts[v16];
      if ((selfCopy5->_touchMode & 1) == 0 && contactTypes[v16] != 1)
      {
        if (v19->contactID || v19->stage || v19->finger || v19->flags)
        {
          v20 = MTLoggingPlugin();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *v17;
            *v98 = 67109120;
            *&v98[4] = v21;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Contact %u is not tritium3 enabled and the screen is off, setting stage to NotTracking", v98, 8u);
          }

          selfCopy5 = self;
        }

        *(v12 + v13 - 63) = 0;
      }

      v22 = v12 + v13;
      if (*(v12 + v13 - 62) - 1 >= 5)
      {
        if (v19->contactID || v19->stage || v19->finger || v19->flags)
        {
          v23 = MTLoggingPlugin();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *v17;
            v25 = *(v22 - 62);
            *v98 = 67109376;
            *&v98[4] = v24;
            v99 = 1024;
            LODWORD(v100) = v25;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Contact %u has an invalid finger id (%d), setting stage to NotTracking", v98, 0xEu);
          }

          selfCopy5 = self;
        }

        *(v12 + v13 - 63) = 0;
      }

      stage = v19->stage;
      v27 = stage - 1;
      if ((stage - 1) >= 4u && *(v12 + v13 - 63) - 1 > 3 || contactTypes[v16] == 2)
      {
        if (v19->contactID | stage || v19->finger || v19->flags)
        {
          v28 = MTLoggingPlugin();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = "cType == Tritium3DisabledContact";
            if (v19->stage - 1 >= 4)
            {
              v29 = "cType == Tritium3DisabledContact";
              if (*(v12 + v13 - 63) - 1 >= 4)
              {
                v29 = "!inRange -> !inRange";
              }
            }

            v30 = *v17;
            *v98 = 67109378;
            *&v98[4] = v30;
            v99 = 2082;
            v100 = v29;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Erasing contact %u, reason: %{public}s", v98, 0x12u);
          }

          selfCopy5 = self;
        }

        v31 = 0;
        *&v19->contactID = 0;
        v19->flags = 0;
        v19->position = 0;
        v19->needsVelocitiesCalculated = 0;
        *&v19->velocity.x = 0u;
        *&v19->minorRadius = 0u;
        v19->tilt = 0.0;
        v32 = (v12 + v13);
        if (*(v12 + v13 - 63) - 1 <= 3)
        {
          v31 = contactTypes[v16];
        }

        contactTypes[v16] = v31;
        v33 = v32 - 64;
        v34 = *(frameCopy + 7);
        v35 = &v34[v14];
        if (v32 != v34)
        {
          memmove(v32 - 64, v32, &v34[v14]);
        }

        *(frameCopy + 7) = &v35[v33];
      }

      else
      {
        v88 = v12 + v13;
        v36 = *(v12 + v13 - 63);
        if ((stage - 3) < 2 != (v36 - 3) < 2)
        {
          v37 = ((stage - 1) < 4u) ^ ((v36 - 1) < 4) | 2;
        }

        else
        {
          v37 = ((stage - 1) < 4u) ^ ((v36 - 1) < 4);
        }

        if ((stage - 1) <= 3u && v36 == 0)
        {
          v39 = MTLoggingPlugin();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *v17;
            *v98 = 67109120;
            *&v98[4] = v40;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Contact %u transitioned from inRange -> NotTracking, canceling contact", v98, 8u);
          }

          v37 |= 0x80u;
          v27 = v19->stage - 1;
        }

        if (v27 <= 3u)
        {
          v41 = eventFlagsFromContact(v19);
          v42 = eventFlagsFromContact((v12 + v13 - 64));
          v43 = v12 + v13;
          if (v19->finger == *(v22 - 62))
          {
            v44 = v37;
          }

          else
          {
            v44 = v37 | 0x20;
          }

          v46 = *(v43 - 48);
          v45 = *(v43 - 44);
          if (v19->position.x == v46 && v19->position.y == v45)
          {
            v48 = v44;
          }

          else
          {
            v48 = v44 | 4;
          }

          if (v41 == v42 && ((*(v12 + v13 - 56) ^ LODWORD(v19->flags)) & 0x4000) == 0)
          {
            v37 = v48;
          }

          else
          {
            v37 = v48 | 0x40;
          }
        }

        v50 = *v17;
        buf[v50] = v37;
        v51 = *(v88 - 63);
        v52 = v91;
        if ((v51 - 3) < 2)
        {
          v52 = v91 + 1;
        }

        v91 = v52;
        v53 = v89;
        if ((v51 - 1) < 4)
        {
          v53 = v89 + 1;
        }

        v89 = v53;
        if ((v51 - 1) >= 4)
        {
          v57 = 0;
          v55 = 0;
          v54 = 0;
          LOBYTE(v51) = 0;
          LOBYTE(v50) = 0;
          v59 = 0;
          v61 = 0;
          v62 = 0uLL;
          v60 = 0uLL;
          v58 = 0;
          v56 = v87;
        }

        else
        {
          v54 = *(v22 - 62);
          v55 = *(v12 + v13 - 61);
          v56 = *(v12 + v13 - 60);
          v57 = *(v12 + v13 - 56);
          v58 = *(v12 + v13 - 48);
          v59 = *(v12 + v13 - 40);
          *v98 = *(v12 + v13 - 39);
          v98[2] = *(v12 + v13 - 37);
          v60 = *(v12 + v13 - 36);
          v61 = *(v12 + v13 - 20);
          v62 = *(v12 + v13 - 16);
        }

        v19->contactID = v50;
        v19->stage = v51;
        v19->finger = v54;
        v19->hand = v55;
        *(&v19->hand + 1) = v56;
        v19->flags = v57;
        v19->position = v58;
        v19->needsVelocitiesCalculated = v59;
        *(&v19->needsVelocitiesCalculated + 1) = *v98;
        *(&v19->needsVelocitiesCalculated + 3) = v98[2];
        *&v19->velocity.x = v60;
        v19->minorRadius = v61;
        *&v19->azimuth = v62;
        v87 = v56;
        if (*(v88 - 63) - 1 > 3)
        {
          v63 = 0;
        }

        else
        {
          v63 = contactTypes[v16];
        }

        v90 |= v37;
        v92 += v37 >> 7;
        contactTypes[v16] = v63;
        selfCopy5 = self;
      }

      v64 = *(frameCopy + 6);
      v13 -= 64;
      v14 += 64;
    }

    while (v64 < v12 + v13);
    v65 = v90 & 0xFFFFFF7F;
    v66 = v89 != 0;
    v67 = v91 != 0;
    if (v92)
    {
      v65 |= (v92 == (*(frameCopy + 7) - v64) >> 6) << 7;
    }
  }

  initialToCurrentFrameDeltaMs_low = LOBYTE(self->_frameMetadata.tritium.var0.__val_.initialToCurrentFrameDeltaMs);
  if ((initialToCurrentFrameDeltaMs_low & 1) == 0)
  {
    v69 = frameCopy[120];
    goto LABEL_108;
  }

  v69 = frameCopy[120];
  if (v69 != 1)
  {
LABEL_108:
    v70 = (initialToCurrentFrameDeltaMs_low != v69) << 6;
    goto LABEL_109;
  }

  if (initialToCurrentFrameDeltaMs_low == 1 && self->_frameMetadata.tritium.var0.__val_.version == frameCopy[112] && *(&self->_frameMetadata.tritium.var0.__null_state_ + 1) == frameCopy[113] && self->_frameMetadata.tritium.var0.__val_.gestureType == *(frameCopy + 29))
  {
    v70 = 0;
  }

  else
  {
    v70 = 64;
  }

LABEL_109:
  v71 = v70 | v65;
  v72 = *(frameCopy + 72);
  v73 = *(frameCopy + 88);
  v74 = *(frameCopy + 104);
  *(&self->_frameMetadata.tritium + 4) = *(frameCopy + 116);
  self->_frameMetadata.image.var0 = v73;
  *&self->_frameMetadata.image.__engaged_ = v74;
  *&self->_frameMetadata.surfaceSize.var0.__null_state_ = v72;
  contacts = *(frameCopy + 6);
  v76 = *(frameCopy + 7);
  if (contacts == v76 || v71 == 0)
  {
    v78 = 0;
  }

  else
  {
    if (v66)
    {
      v79 = v76 - contacts;
    }

    else
    {
      contacts = self->_contacts;
      v79 = 32;
    }

    getAveragePositionFromContacts(contacts, v79);
    v85 = v67 | 0x300000000;
    *v98 = IOHIDEventCreateDigitizerEvent();
    v81 = *(frameCopy + 6);
    for (j = *(frameCopy + 7); v81 != j; ++v81)
    {
      eventFlagsFromContact(v81);
      v86 = 0;
      *&v85 = v81->zdensity;
      DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
    }

    IOHIDEventSetIntegerValue();
    if (frameCopy[120] == 1)
    {
      v97 = frameCopy[113];
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
    }

    v78 = objc_opt_new();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v78 + 1, v98);
  }

  selfCopy7 = self;
  if ((*(frameCopy + 10) & 1) != self->_largeBodyActive)
  {
    self->_largeBodyActive = *(frameCopy + 10) & 1;
    if (!v78)
    {
      v78 = objc_opt_new();
    }

    ProximtyEvent = IOHIDEventCreateProximtyEvent();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v78 + 1, &ProximtyEvent);

    selfCopy7 = self;
  }

  v95.receiver = selfCopy7;
  v95.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v95 handleConsume:frameCopy, v85, v86];
  if (v78)
  {
    [(HSTHIDEventGenerator *)selfCopy7 _handleHIDEvents:v78];
  }
}

- (void)_handleWakeSystemEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleWakeSystemEvent:]"];
    [v15 handleFailureInFunction:v16 file:@"HSTHIDEventGenerator.mm" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v22.receiver = self;
  v22.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v22 handleConsume:eventCopy];
  HSUtil::MachTimeFromNanoseconds([eventCopy hsTimestamp]);
  v5 = objc_opt_new();
  if ((eventCopy[24] & 1) == 0)
  {
    if ((eventCopy[29] & 1) == 0)
    {
      if ((eventCopy[40] & 1) == 0 && (eventCopy[52] & 1) == 0)
      {
        if ((self->_touchMode & 0x10) == 0)
        {
          goto LABEL_26;
        }

        MotionGestureEvent = IOHIDEventCreateMotionGestureEvent();
        std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &MotionGestureEvent);
        v12 = MotionGestureEvent;
        goto LABEL_25;
      }

      v6 = 0;
      goto LABEL_12;
    }

    v6 = 0;
LABEL_8:
    v7 = (self->_touchMode >> 5) & 1;
    goto LABEL_13;
  }

  v6 = (self->_touchMode >> 4) & 1;
  if (eventCopy[29])
  {
    goto LABEL_8;
  }

LABEL_12:
  v7 = 0;
LABEL_13:
  if (eventCopy[40] == 1)
  {
    v8 = (self->_touchMode >> 6) & 1;
  }

  else
  {
    v8 = 0;
  }

  if (eventCopy[52] == 1)
  {
    v9 = (self->_touchMode >> 11) & 1;
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_21:
    NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &NavigationSwipeEvent);
    v12 = NavigationSwipeEvent;
LABEL_25:

    goto LABEL_26;
  }

  v9 = 0;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v6)
  {
    v10 = IOHIDEventCreateMotionGestureEvent();
    v17 = 0;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventAppendEvent();
    v12 = v10;
    v20 = v12;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v20);
    v13 = v20;
LABEL_24:

    goto LABEL_25;
  }

  if ((v8 | v9))
  {
    v14 = IOHIDEventCreateMotionGestureEvent();
    v17 = 0;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventAppendEvent();
    v12 = v14;
    v19 = v12;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v19);
    v13 = v19;
    goto LABEL_24;
  }

LABEL_26:
  [(HSTHIDEventGenerator *)self _handleHIDEvents:v5, v17];
}

- (void)_handleDebugStateEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleDebugStateEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"HSTHIDEventGenerator.mm" lineNumber:608 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  *(eventCopy + 16) = 1;
  v9[0] = @"Stage";
  v9[1] = @"Generation Stats";
  v10[0] = @"HIDEventGenerator";
  stats = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v10[1] = stats;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  [*(eventCopy + 3) addObject:v6];
}

- (void)_cancelActiveContacts:(int64_t)contacts
{
  v4 = objc_opt_new();
  v32 = v4;
  [v4 hsSetTimestamp:contacts];
  v5 = 200;
  v6 = 2048;
  do
  {
    v7 = self + v5;
    if (*(&self->super.super.isa + v5 + 1) - 1 <= 3)
    {
      v8 = *v7;
      v9 = v7[2];
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      v13 = v7[6];
      v33 = v7[7];
      v34 = *(v7 + 1);
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v37 = v7[24];
      v38 = v7[25];
      v39 = v7[26];
      v40 = v7[27];
      v41 = *(v7 + 7);
      v42 = *(v7 + 8);
      v43 = *(v7 + 9);
      v44 = *(v7 + 10);
      v45 = *(v7 + 11);
      v15 = *(v7 + 12);
      v14 = *(v7 + 13);
      v17 = *(v7 + 14);
      v16 = *(v7 + 15);
      v18 = MTLoggingPlugin();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v48 = v8;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Canceling contact %u, setting stage to NotTracking", buf, 8u);
      }

      v19 = (v4 + 6);
      v20 = v4[7];
      v21 = v4[8];
      if (v20 >= v21)
      {
        v23 = (v20 - *v19) >> 6;
        v24 = v23 + 1;
        if ((v23 + 1) >> 58)
        {
          std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
        }

        v25 = v21 - *v19;
        if (v25 >> 5 > v24)
        {
          v24 = v25 >> 5;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFC0)
        {
          v26 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(v19, v26);
        }

        v27 = v23 << 6;
        *v27 = v8;
        *(v27 + 1) = 0;
        *(v27 + 2) = v9;
        *(v27 + 3) = v10;
        *(v27 + 4) = v11;
        *(v27 + 5) = v12;
        *(v27 + 6) = v13;
        *(v27 + 7) = v33;
        *(v27 + 8) = v34;
        *(v27 + 16) = v35;
        *(v27 + 20) = v36;
        *(v27 + 24) = v37;
        *(v27 + 25) = v38;
        *(v27 + 26) = v39;
        *(v27 + 27) = v40;
        *(v27 + 28) = v41;
        *(v27 + 32) = v42;
        *(v27 + 36) = v43;
        *(v27 + 40) = v44;
        *(v27 + 44) = v45;
        *(v27 + 48) = v15;
        *(v27 + 52) = v14;
        v22 = (v23 << 6) + 64;
        v28 = *v19;
        v29 = v19[1] - *v19;
        v30 = (v27 - v29);
        *(v27 + 56) = v17;
        *(v27 + 60) = v16;
        memcpy((v27 - v29), v28, v29);
        v31 = *v19;
        *v19 = v30;
        v19[1] = v22;
        v19[2] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v20 = v8;
        *(v20 + 1) = 0;
        *(v20 + 2) = v9;
        *(v20 + 3) = v10;
        *(v20 + 4) = v11;
        *(v20 + 5) = v12;
        *(v20 + 6) = v13;
        *(v20 + 7) = v33;
        *(v20 + 8) = v34;
        *(v20 + 16) = v35;
        *(v20 + 20) = v36;
        *(v20 + 24) = v37;
        *(v20 + 25) = v38;
        *(v20 + 26) = v39;
        *(v20 + 27) = v40;
        *(v20 + 28) = v41;
        *(v20 + 32) = v42;
        *(v20 + 36) = v43;
        *(v20 + 40) = v44;
        *(v20 + 44) = v45;
        *(v20 + 48) = v15;
        *(v20 + 52) = v14;
        v22 = v20 + 64;
        *(v20 + 56) = v17;
        *(v20 + 60) = v16;
      }

      v19[1] = v22;
      v4 = v32;
    }

    v5 += 64;
    v6 -= 64;
  }

  while (v6);
  if (v4[6] != v4[7])
  {
    [(HSTHIDEventGenerator *)self _handleContactFrame:v4];
  }
}

- (void)_handleResetEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v7 handleConsume:eventCopy];
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Reset event received, canceling active contacts", v6, 2u);
  }

  -[HSTHIDEventGenerator _cancelActiveContacts:](self, "_cancelActiveContacts:", [eventCopy hsTimestamp]);
}

- (void)_handleTouchModeEvent:(id)event
{
  eventCopy = event;
  v6.receiver = self;
  v6.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v6 handleConsume:eventCopy];
  touchMode = [eventCopy touchMode];
  self->_touchMode = touchMode;
  if ((touchMode & 1) == 0)
  {
    -[HSTHIDEventGenerator _cancelActiveContacts:](self, "_cancelActiveContacts:", [eventCopy hsTimestamp]);
  }
}

- (void)_handleVendorEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleVendorEvent:]"];
    [v8 handleFailureInFunction:v9 file:@"HSTHIDEventGenerator.mm" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v11.receiver = self;
  v11.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v11 handleConsume:eventCopy];
  HSUtil::MachTimeFromNanoseconds([eventCopy hsTimestamp]);
  v5 = objc_opt_new();
  [eventCopy type];
  data = [eventCopy data];
  [data bytes];
  data2 = [eventCopy data];
  [data2 length];
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &VendorDefinedEvent);

  [(HSTHIDEventGenerator *)self _handleHIDEvents:v5];
}

- (void)_handleCopyEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleCopyEvent:]"];
    [v11 handleFailureInFunction:v12 file:@"HSTHIDEventGenerator.mm" lineNumber:677 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v13.receiver = self;
  v13.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v13 handleConsume:eventCopy];
  matching = [eventCopy matching];
  IntegerValue = IOHIDEventGetIntegerValue();

  matching2 = [eventCopy matching];
  v8 = IOHIDEventGetIntegerValue();

  if ([eventCopy type] == 1 && IntegerValue == 65376 && v8 == 9)
  {
    [eventCopy setResult:self->_lastTouchSystemReadyEvent];
  }

  else
  {
    v9 = MTLoggingPlugin();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      type = [eventCopy type];
      *buf = 67109632;
      v15 = type;
      v16 = 1024;
      v17 = IntegerValue;
      v18 = 1024;
      v19 = v8;
      _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Unsuported copyEvent match event: type=%x, usagePage=%x, usage=%x", buf, 0x14u);
    }
  }
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy + 16;
  v6 = eventCopy[39];
  if (v6 < 0)
  {
    if (*(eventCopy + 3) != 13)
    {
      goto LABEL_15;
    }

    v5 = *v5;
  }

  else if (v6 != 13)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v8 = *(v5 + 5);
  if (v7 == 0x45656C6261736944 && v8 == 0x73746E657645656CLL)
  {
    v12 = eventCopy;
    v10 = *(eventCopy + 5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    self->_disableEvents = [v11 BOOLValue];
    eventCopy = v12;
  }

LABEL_15:
}

- (void)_handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy + 2;
  v6 = *(eventCopy + 39);
  if (v6 < 0)
  {
    if (eventCopy[3] != 13)
    {
      goto LABEL_12;
    }

    v5 = *v5;
  }

  else if (v6 != 13)
  {
    goto LABEL_12;
  }

  v7 = *v5;
  v8 = *(v5 + 5);
  if (v7 == 0x45656C6261736944 && v8 == 0x73746E657645656CLL)
  {
    v12 = eventCopy;
    v10 = [NSNumber numberWithBool:self->_disableEvents];
    v11 = v12[5];
    v12[5] = v10;

    eventCopy = v12;
  }

LABEL_12:
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTHIDEventGenerator *)self _handleContactFrame:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTHIDEventGenerator *)self _handleTouchModeEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTHIDEventGenerator *)self _handleWakeSystemEvent:v8];
      }

      else
      {
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          [(HSTHIDEventGenerator *)self _handleResetEvent:v10];
        }

        else
        {
          v12 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v10);

          if (v12)
          {
            [(HSTHIDEventGenerator *)self _handleDebugStateEvent:v10];
          }

          else
          {
            v13 = HSUtil::DynamicCast<HSTVendorEvent>(v10);

            if (v13)
            {
              [(HSTHIDEventGenerator *)self _handleVendorEvent:v10];
            }

            else
            {
              v14 = HSUtil::DynamicCast<HSTCopyEvent>(v10);

              if (v14)
              {
                [(HSTHIDEventGenerator *)self _handleCopyEvent:v10];
              }

              else
              {
                v15 = HSUtil::DynamicCast<HSTHIDEvents>(v10);

                if (v15)
                {
                  [(HSTHIDEventGenerator *)self _handleHIDEvents:v10];
                }

                else
                {
                  v16 = HSUtil::DynamicCast<HSTSetPropertyEvent>(v10);

                  if (v16)
                  {
                    [(HSTHIDEventGenerator *)self _handleSetPropertyEvent:v10];
                  }

                  else
                  {
                    v17 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v10);

                    if (v17)
                    {
                      [(HSTHIDEventGenerator *)self _handleGetPropertyEvent:v10];
                    }

                    else
                    {
                      v18.receiver = self;
                      v18.super_class = HSTHIDEventGenerator;
                      [(HSStage *)&v18 handleConsume:v10];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v12 = *(encode + 17);
    DWORD2(v12) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v12);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTHIDEventGeneratorConfig>(encode, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata>(encode, HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)77,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key, &self->_frameMetadata);
  HSUtil::Encoder::encodeBool(encode, HSUtil::CoderKey::Literal<(char)108,(char)97,(char)114,(char)103,(char)101,(char)66,(char)111,(char)100,(char)121,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key, self->_largeBodyActive);
  HSUtil::Encoder::encodeBool(encode, HSUtil::CoderKey::Literal<(char)100,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key, self->_disableEvents);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key, self->_touchMode);
  HSUtil::Encoder::encodeArrayStart(encode, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key, 4);
  v5 = 0;
  contacts = self->_contacts;
  v7 = *encode;
  do
  {
    while (contacts[v5].stage && v7 == 0)
    {
      v9 = HSTPipeline::Contact::encode(&contacts[v5], encode);
      v7 = *encode;
      if (*encode || v9 != 0)
      {
        break;
      }

      v7 = 10;
      *encode = 10;
      if (++v5 == 32)
      {
        return 1;
      }
    }

    ++v5;
  }

  while (v5 != 32);
  if (!v7)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
    if (!*encode)
    {
      HSUtil::Encoder::_encodeContainerStop(encode);
    }
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v21 = v5;
  HSUtil::Decoder::decodeMap(decode, &v21);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  HSUtil::Decoder::decodeCodable<HSTHIDEventGeneratorConfig>(&v21, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata>(&v21, HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)77,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key, &self->_frameMetadata);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_largeBodyActive = HSUtil::Decoder::decodeBool(&v21, HSUtil::CoderKey::Literal<(char)108,(char)97,(char)114,(char)103,(char)101,(char)66,(char)111,(char)100,(char)121,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_disableEvents = HSUtil::Decoder::decodeBool(&v21, HSUtil::CoderKey::Literal<(char)100,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_touchMode = HSUtil::Decoder::decodeUInt(&v21, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v9;
  v20 = v9;
  v17 = v9;
  v18 = v9;
  v16 = v9;
  HSUtil::Decoder::decodeArray(&v21, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key, &v16);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }
  }

  else
  {
    contacts = self->_contacts;
    v11 = 2048;
    v12 = contacts;
    do
    {
      memset(__b, 0, 23);
      v26 = 0uLL;
      *&v12->contactID = 0;
      v12->needsVelocitiesCalculated = 0;
      *&v12->flags = v26;
      v13 = __b[0];
      *&v12->majorRadius = *(__b + 15);
      *&v12->azimuth = 0;
      *(&v12->needsVelocitiesCalculated + 1) = v13;
      *&v12->zdensity = 0;
      ++v12;
      v27 = 0;
      v11 -= 64;
    }

    while (v11);
    v14 = 2048;
    while (1)
    {
      HSUtil::Decoder::decodeCodable<HSTPipeline::Contact>(&v16, contacts);
      if (v16)
      {
        break;
      }

      ++contacts;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_36;
      }
    }

    if (v16 == 3)
    {
LABEL_36:
      v6 = 1;
      goto LABEL_37;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }
  }

  v6 = 0;
LABEL_37:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v15 = v17;
  *&v17 = 0;
  if (v15)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v15);
    operator delete();
  }

LABEL_20:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v7 = v22;
  *&v22 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 128) = 0;
  *(self + 136) = 0;
  *(self + 144) = 0;
  *(self + 160) = 0;
  *(self + 168) = 0;
  *(self + 176) = 0;
  *(self + 180) = 0;
  *(self + 184) = 0;
  v2 = 200;
  v3 = 2048;
  do
  {
    v4 = self + v2;
    *(v4 + 7) = 0;
    *(v4 + 13) = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    v4[24] = 0;
    *(v4 + 36) = 0;
    *(v4 + 28) = 0;
    v2 += 64;
    *(v4 + 11) = 0;
    v3 -= 64;
  }

  while (v3);
  v5 = 2376;
  v6 = 2048;
  do
  {
    v7 = self + v5;
    *(v7 + 7) = 0;
    *(v7 + 13) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    v7[24] = 0;
    *(v7 + 36) = 0;
    *(v7 + 28) = 0;
    v5 += 64;
    *(v7 + 11) = 0;
    v6 -= 64;
  }

  while (v6);
  return self;
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end