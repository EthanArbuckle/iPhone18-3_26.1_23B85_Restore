@interface MTTrackpadUberAlg
+ (MTForceBehavior_)forceBehaviorFromForceConfig:(SEL)a3 mask:(__MTForceConfig *)a4;
+ (int)getForceSourceForBehavior:(int)a3 secondaryClickEnabled:(BOOL)a4;
- (BOOL)handleProperty:(id)a3 value:(id)a4;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (BOOL)updateGestureConfiguration:(id)a3 value:(id)a4;
- (MTTrackpadUberAlg)initWithConfig:(id)a3 actuationHandler:(id)a4 builtIn:(BOOL)a5 supportsForce:(BOOL)a6 supportsDeepPress:(BOOL)a7;
- (__IOHIDEvent)createHIDCollectionEvents:(unsigned int)a3 timestamp:(double)a4;
- (double)autoReleaseTapAndAHalfDrag:(double)a3 eventRef:(__IOHIDEvent *)a4;
- (id).cxx_construct;
- (uint64_t)shouldSecondaryClick;
- (void)appendInjectedPointerEventToBaseEvent:(__IOHIDEvent *)a3;
- (void)cancelCurrentTapAndAHalfDrag;
- (void)clearState;
- (void)createDigitizerChildEventForPath:(__IOHIDEvent *)a3 parserPath:(const MTParserPath_ *)a4 pathEventMask:(id *)a5 hostTimestamp:(float)a6 cancellingCollection:(float)a7;
- (void)createDigitizerPathChildEvents:(__IOHIDEvent *)a3 collectionEventMask:(unsigned int)a4 hostTimestamp:(unint64_t)a5 additionalEventMask:(unsigned int *)a6;
- (void)dealloc;
- (void)handleMomentumState:(int)a3 active:(BOOL)a4;
- (void)handleSettings:(id)a3;
- (void)handleTPSettings:(id)a3;
- (void)processContact:(id *)a3 activePathCount:(float)a4 timestamp:(float)a5 baseEvent:callbackInterval:isFlush:;
- (void)setDivingButtonState:(BOOL)a3;
- (void)setHostClickEnabled:(BOOL)a3;
- (void)setMouseButtonFilterData:(float)a3;
- (void)setMouseMotionFilterData:(const MTPoint *)a3;
- (void)updateFingerStats:(id)a3;
@end

@implementation MTTrackpadUberAlg

- (MTTrackpadUberAlg)initWithConfig:(id)a3 actuationHandler:(id)a4 builtIn:(BOOL)a5 supportsForce:(BOOL)a6 supportsDeepPress:(BOOL)a7
{
  v10 = a3;
  v11 = a4;
  v15 = v11;
  v14 = a5;
  v13.receiver = self;
  v13.super_class = MTTrackpadUberAlg;
  if ([(MTTrackpadUberAlg *)&v13 init])
  {
    [(AlgsConfigEvent *)v10 surfaceSize];
    [(AlgsConfigEvent *)v10 surfaceSize];
    std::allocate_shared[abi:ne200100]<MTSurfaceDimensions_,std::allocator<MTSurfaceDimensions_>,MTRect &,MTSize,0>();
  }

  return 0;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(TrackpadActuatorStage *)v4 dealloc];
  }

  v5.receiver = self;
  v5.super_class = MTTrackpadUberAlg;
  [(MTTrackpadUberAlg *)&v5 dealloc];
}

- (void)setDivingButtonState:(BOOL)a3
{
  v3 = a3;
  if ([(MTTrackpadUberAlg *)self divingButtonState]!= a3)
  {
    MTPathStates_::setDivingButtonState(self->_pathStates.__ptr_, v3);
    ptr = self->_mtHandStats.__ptr_;
    if (*(ptr + 305) != v3)
    {
      *(ptr + 36) = *(ptr + 1);
    }

    *(ptr + 305) = v3;
    MTAbsoluteTimeGetCurrent();
    *(ptr + 6) = v6;
    if (self->_dragManagerEventQueue._cycle_state >= 2)
    {
      [(MTTrackpadUberAlg *)self cancelCurrentTapAndAHalfDrag];
    }

    self->_divingButtonState = v3;
  }
}

- (void)processContact:(id *)a3 activePathCount:(float)a4 timestamp:(float)a5 baseEvent:callbackInterval:isFlush:
{
  v9 = v8;
  v10 = v7;
  v52 = v6;
  v11 = *&a4;
  v12 = v5;
  MTTapDragManager_::updateLastState(&self->_dragManagerEventQueue);
  ChordTableForHand = MTGestureConfig_::getChordTableForHand(self->_gestureConfig.__ptr_, 1);
  v16 = ChordTableForHand;
  cycle_state = self->_dragManagerEventQueue._cycle_state;
  hasTriggeredFluidDock = cycle_state > 2;
  v53 = v10;
  if (cycle_state <= 2)
  {
    if (ChordTableForHand)
    {
      hasTriggeredFluidDock = MTChordCycling_::hasTriggeredFluidDock(ChordTableForHand);
      p_pathStates = &self->_pathStates;
      ptr = self->_pathStates.__ptr_;
      goto LABEL_6;
    }

    p_pathStates = &self->_pathStates;
    ptr = self->_pathStates.__ptr_;
  }

  else
  {
    p_pathStates = &self->_pathStates;
    ptr = self->_pathStates.__ptr_;
    if (ChordTableForHand)
    {
      hasTriggeredFluidDock = 1;
LABEL_6:
      *(ptr + 102) = MTChordTable_::getMinThumbSpecificFingerCount(v16);
      v21 = p_pathStates->__ptr_;
      *(v21 + 404) = MTChordTable_::hasTwoFingerOrientationEvents(v16);
      ptr = p_pathStates->__ptr_;
      CommittedFingerCount = MTChordCycling_::getCommittedFingerCount(v16);
      v23 = 0;
      goto LABEL_9;
    }
  }

  CommittedFingerCount = 0;
  *(ptr + 102) = 0;
  v23 = 1;
  *(ptr + 404) = 1;
LABEL_9:
  *(ptr + 103) = CommittedFingerCount;
  v24 = self->_forceManagement.__ptr_;
  if (v24)
  {
    *(v24 + 144) = (__PAIR64__(*(self->_mtHandStats.__ptr_ + 186), *(self->_mtHandStats.__ptr_ + 195)) - *(self->_mtHandStats.__ptr_ + 186)) >> 32;
    v25 = self->_pathStates.__ptr_;
    isForceButtonActivated = MTForceManagement_::isForceButtonActivated(v24);
    MTPathStates_::updateDragDisplacements_mm(v25, isForceButtonActivated);
    v27 = self->_forceManagement.__ptr_;
    if (v23)
    {
      v28 = 1;
    }

    else
    {
      v28 = MTChordCycling_::shouldBlockClicks(v16, self->_mtHandStats.__ptr_, self->_mtHandMotion.__ptr_) ^ 1;
    }

    *(v27 + 604) = v28;
  }

  v29 = mach_continuous_time();
  v51 = a3;
  v30 = a3;
  v31 = v12;
  v32 = MTPathStates_::unpackContactFrame(self->_pathStates.__ptr_, v30, v12, v11);
  v33 = self->_forceManagement.__ptr_;
  if (v33 && *(v33 + 606) == 1)
  {
    MTForceManagement_::analyzeAndManageStrongestForces(v33, p_pathStates->__ptr_);
  }

  v34 = MTLoggingPlugin();
  if (os_signpost_enabled(v34))
  {
    *buf = 134349056;
    v55 = v29;
    _os_signpost_emit_with_name_impl(&dword_0, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MTTrackpadAlg-Path+Force", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
  }

  v35 = mach_continuous_time();
  if (MTHandStatistics_::processHandState(self->_mtHandStats.__ptr_, self->_pathStates.__ptr_, v32 & v9, hasTriggeredFluidDock))
  {
    if (v23)
    {
      ActiveDegreesOfFreedomMask = 0;
    }

    else
    {
      ActiveDegreesOfFreedomMask = MTChordIntegrating_::getActiveDegreesOfFreedomMask((v16 + 408), self->_mtHandStats.__ptr_, v16);
    }

    v37 = v31;
    v38 = self->_mtHandStats.__ptr_;
    v39 = *(v38 + 191);
    if ((*(v38 + 168) & 0x20) != 0)
    {
      v39 += *(v38 + 193);
      v40 = *(v38 + 188) + *(v38 + 186);
      v41 = *(v38 + 189) + *(v38 + 187);
    }

    else
    {
      v40 = *(v38 + 186);
      v41 = *(v38 + 187);
    }

    v42 = v11 - *(v38 + 7);
    MTHandMotion_::processHandMotion(self->_mtHandMotion.__ptr_, self->_pathStates.__ptr_, v39, v40, v41, v42, ActiveDegreesOfFreedomMask, *(v38 + 148));
    *v52 = [(MTTrackpadUberAlg *)self createHIDCollectionEvents:(*(self->_mtHandMotion.__ptr_ + 35) | *(self->_mtHandStats.__ptr_ + 43)) timestamp:v11];
    v43 = MTLoggingPlugin();
    if (os_signpost_enabled(v43))
    {
      *buf = 134349056;
      v55 = v35;
      _os_signpost_emit_with_name_impl(&dword_0, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MTTrackpadAlg-HSHMHID", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    if (!*v52)
    {
      goto LABEL_42;
    }

    v44 = self->_forceManagement.__ptr_;
    if (v44)
    {
      v45 = v31 < 1 ? v9 : 0;
      if (MTForceManagement_::actuateForceAndHIDEvents(v44, p_pathStates->__ptr_, *v52, v45))
      {
        [(MTTrackpadUberAlg *)self setDivingButtonState:MTForceManagement_::isForceButtonActivated(self->_forceManagement.__ptr_)];
        MTDragManagerEventQueue_::forceButtonChange(&self->_dragManagerEventQueue, *v52);
      }
    }

    v46 = mach_continuous_time();
    (*(*v16 + 32))(v16, self->_mtHandStats.__ptr_, self->_mtHandMotion.__ptr_, *v52);
    v47 = MTLoggingPlugin();
    if (os_signpost_enabled(v47))
    {
      *buf = 134349056;
      v55 = v46;
      _os_signpost_emit_with_name_impl(&dword_0, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MTTrackpadAlg-Gesture", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    [(MTTrackpadUberAlg *)self updateFingerStats:*v52];
    if (MTTapDragManager_::hasPhysicalDraggingEnded(&self->_dragManagerEventQueue, v51, v37))
    {
      [(MTTrackpadUberAlg *)self appendInjectedPointerEventToBaseEvent:v52];
    }

    if (self->_dragManagerEventQueue._cycle_state >= 1 && *(self->_mtHandStats.__ptr_ + 211) + *(self->_mtHandStats.__ptr_ + 186) <= self->_dragManagerEventQueue._resting_finger_count)
    {
      goto LABEL_46;
    }
  }

  if (*v52)
  {
    goto LABEL_44;
  }

LABEL_42:
  v48 = self->_mtHandStats.__ptr_;
  if (!*(v48 + 186) || *(v48 + 211) + *(v48 + 186) <= self->_dragManagerEventQueue._resting_finger_count)
  {
LABEL_46:
    v50 = v53;
    if (!v53)
    {
      return;
    }

    [(MTTrackpadUberAlg *)self autoReleaseTapAndAHalfDrag:v52 eventRef:v11];
    goto LABEL_48;
  }

LABEL_44:
  v49 = 0;
  v50 = v53;
  if (v53)
  {
LABEL_48:
    *v50 = v49;
  }
}

- (__IOHIDEvent)createHIDCollectionEvents:(unsigned int)a3 timestamp:(double)a4
{
  v4 = *&a3;
  v6 = mach_absolute_time();
  ptr = self->_mtHandStats.__ptr_;
  if ((*(ptr + 168) & 0x20) != 0)
  {
    if (*(ptr + 78) | *(ptr + 76) || *(ptr + 79) | *(ptr + 77))
    {
      goto LABEL_8;
    }
  }

  else if (*(ptr + 76) || *(ptr + 77))
  {
    goto LABEL_8;
  }

  if (!*(ptr + 202))
  {
    return 0;
  }

LABEL_8:
  MTSurfaceDimensions_::convertPixelsToSurfaceFraction(self->_surfaceDimensions.__ptr_, *(self->_mtHandMotion.__ptr_ + 184));
  v8 = self->_mtHandStats.__ptr_;
  if ((*(v8 + 168) & 0x20) != 0)
  {
    v9 = *(v8 + 188) + *(v8 + 186);
  }

  else
  {
    v9 = *(v8 + 186);
  }

  LODWORD(v15) = v9 != 0;
  HIDWORD(v15) = 3;
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  if (DigitizerEvent)
  {
    v16 = 0;
    [(MTTrackpadUberAlg *)self createDigitizerPathChildEvents:DigitizerEvent collectionEventMask:v4 hostTimestamp:v6 additionalEventMask:&v16, v15];
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v12 = Children;
      if (CFArrayGetCount(Children) >= 1)
      {
        v13 = 0;
        while (!CFArrayGetValueAtIndex(v12, 0) || IOHIDEventGetType() != 11)
        {
          if (++v13 >= CFArrayGetCount(v12))
          {
            goto LABEL_20;
          }
        }

        IOHIDEventGetIntegerValue();
        IOHIDEventSetIntegerValue();
      }
    }

LABEL_20:
    if (v16)
    {
      IOHIDEventSetIntegerValue();
    }
  }

  return DigitizerEvent;
}

- (void)createDigitizerPathChildEvents:(__IOHIDEvent *)a3 collectionEventMask:(unsigned int)a4 hostTimestamp:(unint64_t)a5 additionalEventMask:(unsigned int *)a6
{
  v33 = a3;
  v34 = a5;
  v7 = 916;
  v8 = 31;
  parserOptions = self->_parserOptions;
  do
  {
    v9 = (*(self->_pathStates.__ptr_ + 35) + v7);
    v10 = *(v9 - 77);
    if (*(v9 - 79) - 32 >= 0xFFFFFFE1 && v10 != 15)
    {
      v12 = (v9 - 87);
      v13 = *v9;
      v14 = v10 - 1;
      v15 = v10 != 0;
      v16 = *(v9 - 53) - 1;
      v17 = *(v9 - 78) - 5;
      v18 = *(v9 - 54) - 5;
      v19 = (parserOptions >> 5) & 1;
      if (v14 > 4)
      {
        LOBYTE(v19) = 1;
      }

      if (v18 < 0xFFFFFFFE)
      {
        v20 = 1;
      }

      else
      {
        v20 = (v14 > 4) & (a4 >> 7);
      }

      v21 = v20 | ~(v16 < 5) | (v14 < 5);
      if (v16 < 5)
      {
        v22 = 1;
      }

      else
      {
        v22 = v19;
      }

      if (v21)
      {
        v23 = (v14 > 4) & (a4 >> 7);
      }

      else
      {
        v23 = v15;
      }

      if (v23)
      {
        v24 = v13 | 0x83;
      }

      else
      {
        v24 = v13;
      }

      if (v17 < 0xFFFFFFFE)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v24 | 2;
      }

      isStylusContact = MTParserPath_::isStylusContact(v12);
      v28 = MTParserPath_::wasStylusContact(v12);
      if (v17 >= 0xFFFFFFFE)
      {
        if ((v14 < 5) | isStylusContact & 1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v30 = v14 < 5 || v16 < 5;
        if ((v30 | isStylusContact | v28))
        {
LABEL_46:
          [(MTTrackpadUberAlg *)self createDigitizerChildEventForPath:v33 parserPath:v12 pathEventMask:v26 hostTimestamp:v34 cancellingCollection:v23, v33, v34];
          goto LABEL_47;
        }
      }

      if ((parserOptions & 0x20) != 0)
      {
        goto LABEL_46;
      }

      v31 = v17 >= 0xFFFFFFFE && v14 >= 5;
      v32 = !v31;
      if ((a4 & 0x80) == 0)
      {
        v32 = 1;
      }

      if ((((v32 | isStylusContact) & 1) == 0) | v23 & 1)
      {
        goto LABEL_46;
      }
    }

LABEL_47:
    v7 += 568;
    --v8;
  }

  while (v8);
}

- (void)createDigitizerChildEventForPath:(__IOHIDEvent *)a3 parserPath:(const MTParserPath_ *)a4 pathEventMask:(id *)a5 hostTimestamp:(float)a6 cancellingCollection:(float)a7
{
  ptr = self->_pathStates.__ptr_;
  if (ptr && (*(ptr + 144) & 1) != 0)
  {
    v11 = *&a4[3].var3.var12;
  }

  else
  {
    v11 = 0;
  }

  if ((a4->var3.var3 - 3) < 2)
  {
    v12 = v7 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_surfaceDimensions.__ptr_;
  v22.y = MTParserPath_::getQuantizedMinorRadius_mm(a4);
  v22.x = 0.0;
  MTSurfaceDimensions_::convertMillimetersToSurfaceFraction(v13, v22);
  v14 = self->_surfaceDimensions.__ptr_;
  v23.y = MTParserPath_::getQuantizedMajorRadius_mm(a4);
  v23.x = 0.0;
  MTSurfaceDimensions_::convertMillimetersToSurfaceFraction(v14, v23);
  v15 = vadd_f32(v11, a4[3].var3.var6);
  y = v15.y;
  MTSurfaceDimensions_::convertPixelsToSurfaceFraction(self->_surfaceDimensions.__ptr_, v15);
  MTContact_getEllipseOrientationDegrees();
  DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
  IOHIDEventSetIntegerValue();
  if (DigitizerFingerEventWithQuality)
  {
    v18 = self->_surfaceDimensions.__ptr_;
    v24.y = MTParserPath_::getQuantizedRadiusAccuracy_mm(a4);
    v24.x = 0.0;
    MTSurfaceDimensions_::convertMillimetersToSurfaceFraction(v18, v24);
    IOHIDEventSetFloatValue();
    if (v12)
    {
      VelocityEvent = IOHIDEventCreateVelocityEvent();
      if (VelocityEvent)
      {
        v20 = VelocityEvent;
        IOHIDEventAppendEvent();
        CFRelease(v20);
      }
    }

    if ((a4->var3.var15 & 0x4000) != 0)
    {
      IOHIDEventGetPhase();
      IOHIDEventSetPhase();
    }

    IOHIDEventAppendEvent();

    CFRelease(DigitizerFingerEventWithQuality);
  }
}

- (void)updateFingerStats:(id)a3
{
  v4 = a3;
  ptr = self->_mtHandStats.__ptr_;
  v7 = *(ptr + 1) - self->_dragManagerEventQueue.t_mostRecentTap == 0.0 || self->_dragManagerEventQueue._cycle_state > 1;
  v8 = *(ptr + 186);
  if ((self->_parserOptions & 2) != 0)
  {
    if (v8 <= *(ptr + 195))
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  activePathCount = self->_activePathCount;
  secondaryClickRegionIsActive = self->_secondaryClickRegionIsActive;
  v12 = v9 + v8;
  secondaryClick = self->_secondaryClick;
  if (secondaryClick == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * (secondaryClick == 3);
  }

  v15 = *(ptr + 77);
  v16 = self->_forceManagement.__ptr_;
  if (v16)
  {
    v17 = *(v16 + 66);
    if (v17 >= 1)
    {
      memcpy(__dst, &unk_D7178, sizeof(__dst));
      v18 = *(self->_pathStates.__ptr_ + 35) + 568 * v17;
      *__dst = off_109680;
      memcpy(&__dst[8], (v18 + 8), 0x114uLL);
      *&__dst[288] = off_109880;
      v19 = *(v18 + 328);
      v20 = *(v18 + 312);
      *&__dst[296] = *(v18 + 296);
      *&__dst[312] = v20;
      *&__dst[328] = v19;
      v21 = *(v18 + 368);
      v22 = *(v18 + 336);
      *&__dst[352] = *(v18 + 352);
      *&__dst[336] = v22;
      *&__dst[368] = v21;
      v23 = *(v18 + 416);
      v25 = *(v18 + 384);
      v24 = *(v18 + 400);
      *&__dst[432] = *(v18 + 432);
      *&__dst[416] = v23;
      *&__dst[384] = v25;
      *&__dst[400] = v24;
      v26 = *(v18 + 480);
      v28 = *(v18 + 448);
      v27 = *(v18 + 464);
      *&__dst[496] = *(v18 + 496);
      *&__dst[480] = v26;
      *&__dst[448] = v28;
      *&__dst[464] = v27;
      v30 = *(v18 + 528);
      v29 = *(v18 + 544);
      v31 = *(v18 + 512);
      *&__dst[560] = *(v18 + 560);
      *&__dst[544] = v29;
      *&__dst[512] = v31;
      *&__dst[528] = v30;
      v15 = *&__dst[272];
      MTParserPath_::~MTParserPath_(__dst);
    }
  }

  v32 = (v15 & v14) != 0;
  self->_activePathCount = v12;
  self->_secondaryClickRegionIsActive = v32;
  v34 = activePathCount != v12 || v32 != secondaryClickRegionIsActive;
  if (v34 || v7)
  {
    v35 = self->_secondaryClick;
    if (self->_secondaryClick)
    {
      self->_shouldSecondaryClick = 0;
      if (!v7 && !self->_previousButtonState)
      {
        v36 = v12 == 2 && v35 == 1;
        if (v36 || (v15 & v14) != 0)
        {
          self->_shouldSecondaryClick = 1;
        }
      }
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = [v4 children];
  v39 = [v38 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v39)
  {
    v40 = *v48;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = *(*(&v47 + 1) + 8 * i);
        v43 = [v42 type];
        if (v43 == 2)
        {
          v44 = 0x20000;
        }

        else
        {
          if (v43 != 17)
          {
            continue;
          }

          v44 = 1114115;
        }

        v45 = [v42 integerValueForField:v44];
        LODWORD(v46) = v45;
        if (self->_shouldSecondaryClick && (v45 & 1) != 0)
        {
          v46 = v45 & 0xFFFFFFFFFFFFFFFCLL | 2;
          [v42 setIntegerValue:v46 forField:v44];
        }

        self->_previousButtonState = v46;
      }

      v39 = [v38 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v39);
  }
}

- (double)autoReleaseTapAndAHalfDrag:(double)a3 eventRef:(__IOHIDEvent *)a4
{
  v4 = 0.0;
  if (a4)
  {
    if (self->_gestureConfig.__ptr_)
    {
      mach_absolute_time();
      DigitizerEvent = IOHIDEventCreateDigitizerEvent();
      if (DigitizerEvent)
      {
        v9 = DigitizerEvent;
        v10 = MTDragManagerEventQueue_::serviceEventQueue(&self->_dragManagerEventQueue, DigitizerEvent, self->_gestureConfig.__ptr_, a3, *(self->_mtHandStats.__ptr_ + 211) + *(self->_mtHandStats.__ptr_ + 186));
        if (IOHIDEventGetChildren())
        {
          MTSurfaceDimensions_::convertPixelsToSurfaceFraction(self->_surfaceDimensions.__ptr_, *(self->_mtHandMotion.__ptr_ + 184));
          IOHIDEventSetFloatValue();
          IOHIDEventSetFloatValue();
          mach_absolute_time();
          IOHIDEventSetTimeStamp();
          if (*a4)
          {
            CFRelease(*a4);
          }

          *a4 = v9;
        }

        else
        {
          CFRelease(v9);
        }

        ChordTableForHand = MTGestureConfig_::getChordTableForHand(self->_gestureConfig.__ptr_, 1);
        if (ChordTableForHand)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        if (v12 == 1)
        {
          return *(ChordTableForHand + 372);
        }
      }
    }
  }

  return v4;
}

- (void)appendInjectedPointerEventToBaseEvent:(__IOHIDEvent *)a3
{
  if (a3)
  {
    v4 = *a3;
    [(__IOHIDEvent *)v4 timestamp];
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    [(__IOHIDEvent *)v4 appendEvent:RelativePointerEvent];
  }
}

- (void)handleSettings:(id)a3
{
  v4 = a3;
  configureGestureParser(self->_gestureConfig.__ptr_, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(self->_mtHandMotion.__ptr_ + 69) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTrackpadUberAlg *)self handleTPSettings:v4];
    }
  }
}

- (void)handleTPSettings:(id)a3
{
  v4 = a3;
  ptr = self->_mtHandMotion.__ptr_;
  *(ptr + 136) = [v4 notificationCenterEdgeSwipe2F] == 1;
  v6 = self->_mtHandMotion.__ptr_;
  *(v6 + 137) = [v4 notificationCenterEdgeSwipe2F] == 2;
  v7 = self->_mtHandMotion.__ptr_;
  *(v7 + 138) = 0;
  *(v7 + 139) = [v4 symmetricZoomRotate];
  self->_dragManagerEventQueue._tap_drag_lock_enabled = [v4 accessibilityDrag] == 2;
  self->_secondaryClick = [v4 secondaryClick];
  self->_actuateDetents = [v4 forceSuppressed] ^ 1;
  v8 = self->_forceManagement.__ptr_;
  if (v8)
  {
    *(v8 + 608) = 1;
    MTForceBehavior_Configuration::clearBehaviors((v8 + 272));
    if ([v4 forceSuppressed])
    {
      v9 = 1;
    }

    else if ([(MTTrackpadUberAlg *)self supportsDeepPress])
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    v10 = MTForceConfigCreate(v9, 0);
    if (v10)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v18.var8.__cap_ = v11;
      *&v18.var9.__end_ = v11;
      *&v18.var7.__end_ = v11;
      *&v18.var8.__begin_ = v11;
      *&v18.var6.__begin_ = v11;
      *&v18.var6.__cap_ = v11;
      *&v18.var4 = v11;
      *&v18.var5.var1 = v11;
      *&v18.var0 = v11;
      v12 = objc_opt_class();
      if (v12)
      {
        [v12 forceBehaviorFromForceConfig:v10 mask:{34, *&v18.var0, *&v18.var4}];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      MTForceBehavior_Configuration::addDefaultBehavior((self->_forceManagement.__ptr_ + 272), &v18);
      CFRelease(v10);
      if (v18.var9.__begin_)
      {
        v18.var9.__end_ = v18.var9.__begin_;
        operator delete(v18.var9.__begin_);
      }

      if (v18.var8.__begin_)
      {
        v18.var8.__end_ = v18.var8.__begin_;
        operator delete(v18.var8.__begin_);
      }

      if (v18.var7.__begin_)
      {
        v18.var7.__end_ = v18.var7.__begin_;
        operator delete(v18.var7.__begin_);
      }

      if (v18.var6.__begin_)
      {
        v18.var6.__end_ = v18.var6.__begin_;
        operator delete(v18.var6.__begin_);
      }

      if (v18.var5.var0)
      {
        v18.var5.var1 = v18.var5.var0;
        operator delete(v18.var5.var0);
      }
    }

    v13 = [objc_opt_class() getForceSourceForBehavior:2 secondaryClickEnabled:{self->_secondaryClick == 1, *&v18.var0, *&v18.var4}];
    v14 = MTForceConfigCreate(2, 0);
    if (v14)
    {
      if (v13)
      {
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v18.var8.__cap_ = v15;
        *&v18.var9.__end_ = v15;
        *&v18.var7.__end_ = v15;
        *&v18.var8.__begin_ = v15;
        *&v18.var6.__begin_ = v15;
        *&v18.var6.__cap_ = v15;
        *&v18.var4 = v15;
        *&v18.var5.var1 = v15;
        *&v18.var0 = v15;
        v16 = objc_opt_class();
        if (v16)
        {
          [v16 forceBehaviorFromForceConfig:v14 mask:v13];
        }

        else
        {
          memset(&v18, 0, sizeof(v18));
        }

        MTForceBehavior_Configuration::addDefaultBehavior((self->_forceManagement.__ptr_ + 272), &v18);
        if (v18.var9.__begin_)
        {
          v18.var9.__end_ = v18.var9.__begin_;
          operator delete(v18.var9.__begin_);
        }

        if (v18.var8.__begin_)
        {
          v18.var8.__end_ = v18.var8.__begin_;
          operator delete(v18.var8.__begin_);
        }

        if (v18.var7.__begin_)
        {
          v18.var7.__end_ = v18.var7.__begin_;
          operator delete(v18.var7.__begin_);
        }

        if (v18.var6.__begin_)
        {
          v18.var6.__end_ = v18.var6.__begin_;
          operator delete(v18.var6.__begin_);
        }

        if (v18.var5.var0)
        {
          v18.var5.var1 = v18.var5.var0;
          operator delete(v18.var5.var0);
        }
      }

      CFRelease(v14);
    }

    MTForceManagement_::setFirstStageClickPreference(self->_forceManagement.__ptr_, [v4 clickStrength]);
    MTForceManagement_::setSecondStageClickPreference(self->_forceManagement.__ptr_, [v4 clickStrength]);
    v17 = self->_forceManagement.__ptr_;
    *(v17 + 607) = [v4 forceSuppressed];
  }
}

- (void)handleMomentumState:(int)a3 active:(BOOL)a4
{
  ChordTableForHand = MTGestureConfig_::getChordTableForHand(self->_gestureConfig.__ptr_, 1);
  *(ChordTableForHand + 1276) = a3;
  *(ChordTableForHand + 1272) = a4;
}

- (void)clearState
{
  ptr = self->_mtHandStats.__ptr_;
  MTAbsoluteTimeGetCurrent();
  *(ptr + 5) = v4;
  MTHandStatistics_::clear(self->_mtHandStats.__ptr_, 0);
  MTHandMotion_::clear(self->_mtHandMotion.__ptr_);
  MTPathStates_::clear(self->_pathStates.__ptr_);
  v5 = self->_forceManagement.__ptr_;
  if (v5)
  {
    MTForceManagement_::clearState(v5, 0);
  }

  ChordTableForHand = MTGestureConfig_::getChordTableForHand(self->_gestureConfig.__ptr_, 1);
  (*(*ChordTableForHand + 16))(ChordTableForHand);
  MTTapDragManager_::clearState(&self->_dragManagerEventQueue);

  [(MTTrackpadUberAlg *)self setDivingButtonState:0];
}

+ (MTForceBehavior_)forceBehaviorFromForceConfig:(SEL)a3 mask:(__MTForceConfig *)a4
{
  Behavior = MTForceConfigGetBehavior(a4);
  NumStages = MTForceConfigGetNumStages(a4);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&retstr->var0 = v10;
  *&retstr->var4 = v10;
  *&retstr->var5.var1 = v10;
  *&retstr->var6.__begin_ = v10;
  *&retstr->var6.__cap_ = v10;
  *&retstr->var7.__end_ = v10;
  *&retstr->var8.__begin_ = v10;
  *&retstr->var8.__cap_ = v10;
  *&retstr->var9.__end_ = v10;
  MTForceBehavior_::MTForceBehavior_(retstr);
  result = MTForceConfigIsContinuous(a4);
  retstr->var3 = result;
  retstr->var0 = Behavior;
  retstr->var1 = a5;
  if (NumStages)
  {
    for (i = 0; i != NumStages; ++i)
    {
      ThresholdsForStage = MTForceConfigGetThresholdsForStage(a4, i);
      v15 = v14;
      ActuationsForStage = MTForceConfigGetActuationsForStage(a4, i);
      MTForceBehavior_::addStage(retstr, i, ActuationsForStage, ThresholdsForStage, v15);
      if (MTForceConfigShouldSkipActivationForStage(a4, i))
      {
        v17 = i;
        std::vector<int>::push_back[abi:ne200100](&retstr->var6.__begin_, &v17);
      }

      result = MTForceConfigShouldSkipReleaseForStage(a4, i);
      if (result)
      {
        v18 = i;
        std::vector<int>::push_back[abi:ne200100](&retstr->var7.__begin_, &v18);
      }
    }
  }

  return result;
}

+ (int)getForceSourceForBehavior:(int)a3 secondaryClickEnabled:(BOOL)a4
{
  if (a3 > 0x11)
  {
    return 0;
  }

  if (((1 << a3) & 0x31C22) != 0)
  {
    return 34;
  }

  if (a3 != 2)
  {
    return 0;
  }

  if (a4)
  {
    return 134;
  }

  return 0;
}

- (void)setHostClickEnabled:(BOOL)a3
{
  ptr = self->_forceManagement.__ptr_;
  if (ptr)
  {
    self->_hostClickEnabled = a3;
    v5 = *(ptr + 606);
    *(ptr + 606) = a3;
    if (!a3 && (v5 & 1) != 0)
    {
      MTForceManagement_::clearState(ptr, 1);
    }
  }
}

- (void)cancelCurrentTapAndAHalfDrag
{
  if ((*self->_dragManagerEventQueue._vptr$MTTapDragManager_)())
  {
    self->_dragManagerEventQueue._tap_drag_needs_immediate_release = 1;
  }
}

- (BOOL)updateGestureConfiguration:(id)a3 value:(id)a4
{
  v33 = a3;
  v6 = a4;
  v32 = v6;
  if (v6 && (v7 = self->_forceManagement.__ptr_) != 0 && (*(v7 + 607) & 1) == 0 && (v8 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    v30 = v9;
    v10 = [v9 objectForKey:@"Version"];
    v31 = v10;
    if (v10 && [v10 isEqualToNumber:&off_112488])
    {
      v11 = [v9 objectForKey:@"Behaviors"];
      v29 = v11;
      if (v11)
      {
        if ([v33 isEqualToString:@"MTGestureConfiguration"])
        {
          MTForceBehavior_Configuration::clearNonDefaultBehaviors((self->_forceManagement.__ptr_ + 272));
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v11;
        v13 = 0;
        v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v14)
        {
          v15 = *v36;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v36 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v35 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v17 objectForKey:@"BehaviorID"];
                v19 = v18;
                if (v18)
                {
                  v20 = [v18 intValue];
                  v21 = MTForceConfigCreate(v20, 0);
                  v22 = [objc_opt_class() getForceSourceForBehavior:v20 secondaryClickEnabled:self->_secondaryClick == 1];
                  if (v21)
                  {
                    v23 = v22;
                    if (v22)
                    {
                      *&v24 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *&v34.var8.__cap_ = v24;
                      *&v34.var9.__end_ = v24;
                      *&v34.var7.__end_ = v24;
                      *&v34.var8.__begin_ = v24;
                      *&v34.var6.__begin_ = v24;
                      *&v34.var6.__cap_ = v24;
                      *&v34.var4 = v24;
                      *&v34.var5.var1 = v24;
                      *&v34.var0 = v24;
                      v25 = objc_opt_class();
                      if (v25)
                      {
                        [v25 forceBehaviorFromForceConfig:v21 mask:v23];
                      }

                      else
                      {
                        memset(&v34, 0, sizeof(v34));
                      }

                      v26 = [v33 isEqualToString:@"MTGestureConfiguration"];
                      ptr = self->_forceManagement.__ptr_;
                      if (v26)
                      {
                        MTForceBehavior_Configuration::pushBehavior((ptr + 272), &v34);
                      }

                      else
                      {
                        MTForceManagement_::setOverrideBehavior(ptr, &v34);
                      }

                      if (v34.var9.__begin_)
                      {
                        v34.var9.__end_ = v34.var9.__begin_;
                        operator delete(v34.var9.__begin_);
                      }

                      if (v34.var8.__begin_)
                      {
                        v34.var8.__end_ = v34.var8.__begin_;
                        operator delete(v34.var8.__begin_);
                      }

                      if (v34.var7.__begin_)
                      {
                        v34.var7.__end_ = v34.var7.__begin_;
                        operator delete(v34.var7.__begin_);
                      }

                      if (v34.var6.__begin_)
                      {
                        v34.var6.__end_ = v34.var6.__begin_;
                        operator delete(v34.var6.__begin_);
                      }

                      if (v34.var5.var0)
                      {
                        v34.var5.var1 = v34.var5.var0;
                        operator delete(v34.var5.var0);
                      }

                      v13 = 1;
                    }

                    CFRelease(v21);
                  }
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v14);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (void)setMouseMotionFilterData:(const MTPoint *)a3
{
  ptr = self->_mtHandMotion.__ptr_;
  if (ptr)
  {
    MTHandMotion_::storeFeedbackFromMouse(ptr, *a3);
  }
}

- (void)setMouseButtonFilterData:(float)a3
{
  ptr = self->_mtHandMotion.__ptr_;
  if (ptr)
  {
    MTHandMotion_::storeFeedbackFromButton(ptr, a3);
  }
}

- (BOOL)handleProperty:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isEqualToString:@"AppKitActuateWithID"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = self->_forceManagement.__ptr_) == 0)
  {
    if (([v6 isEqualToString:@"MTGestureConfiguration"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"MTGestureConfigurationOverride"))
    {
      v9 = [(MTTrackpadUberAlg *)self updateGestureConfiguration:v6 value:v7];
      goto LABEL_11;
    }

    if ([v6 isEqualToString:@"SendClickThresholdInfo"])
    {
      ptr = self->_forceManagement.__ptr_;
      if (ptr)
      {
        *(ptr + 224) = [v7 BOOLValue];
LABEL_21:
        v9 = 1;
        goto LABEL_11;
      }
    }

    else if ([v6 isEqualToString:@"DisableClickWaveformAdaptation"])
    {
      v12 = self->_forceManagement.__ptr_;
      if (v12)
      {
        MTForceManagement_::setDisableClickWaveformAdaptation(v12, [v7 BOOLValue]);
        goto LABEL_21;
      }
    }

    else if ([v6 isEqualToString:@"DisableForceThresholdAdaptation"])
    {
      v13 = self->_forceManagement.__ptr_;
      if (v13)
      {
        MTForceManagement_::setDisableForceThresholdAdaptation(v13, [v7 BOOLValue]);
        goto LABEL_21;
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
  if (self->_actuateDetents && *(self->_mtHandStats.__ptr_ + 186) && (*(v8 + 607) & 1) == 0)
  {
    [v7 intValue];
    (*(self->_actBlock + 2))(1.0, 1.0);
  }

LABEL_11:

  return v9;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<MTHandStatistics_>(a3, HSUtil::CoderKey::Literal<(char)109,(char)116,(char)72,(char)97,(char)110,(char)100,(char)83,(char)116,(char)97,(char)116,(char)115>::Key, self->_mtHandStats.__ptr_);
  HSUtil::Encoder::encodeCodable<MTHandStatistics_>(a3, HSUtil::CoderKey::Literal<(char)109,(char)116,(char)80,(char)97,(char)116,(char)104,(char)83,(char)116,(char)97,(char)116,(char)101,(char)115>::Key, self->_pathStates.__ptr_);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)112,(char)112,(char)111,(char)114,(char)116,(char)115,(char)70,(char)111,(char)114,(char)99,(char)101>::Key, self->_forceManagement.__ptr_ != 0);
  ptr = self->_forceManagement.__ptr_;
  if (ptr)
  {
    HSUtil::Encoder::encodeCodable<MTForceManagement_>(a3, HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101,(char)77,(char)97,(char)110,(char)97,(char)103,(char)101,(char)109,(char)101,(char)110,(char)116>::Key, ptr);
  }

  HSUtil::Encoder::encodeCodable<MTPListGestureConfig_>(a3, HSUtil::CoderKey::Literal<(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)67,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, self->_gestureConfig.__ptr_);
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(a3, &v10);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MTTrackpadUberAlg hsDecode:];
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  HSUtil::Decoder::decodeCodable<MTHandStatistics_>(&v10, HSUtil::CoderKey::Literal<(char)109,(char)116,(char)72,(char)97,(char)110,(char)100,(char)83,(char)116,(char)97,(char)116,(char)115>::Key, self->_mtHandStats.__ptr_);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MTTrackpadUberAlg hsDecode:];
    }

    goto LABEL_20;
  }

  HSUtil::Decoder::decodeCodable<MTPathStates_>(&v10, HSUtil::CoderKey::Literal<(char)109,(char)116,(char)80,(char)97,(char)116,(char)104,(char)83,(char)116,(char)97,(char)116,(char)101,(char)115>::Key, self->_pathStates.__ptr_);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MTTrackpadUberAlg hsDecode:];
    }

    goto LABEL_20;
  }

  v6 = HSUtil::Decoder::decodeBool(&v10, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)112,(char)112,(char)111,(char)114,(char)116,(char)115,(char)70,(char)111,(char)114,(char)99,(char)101>::Key);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MTTrackpadUberAlg hsDecode:];
    }

    goto LABEL_20;
  }

  if (v6)
  {
    HSUtil::Decoder::decodeCodable<MTForceManagement_>(&v10, HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101,(char)77,(char)97,(char)110,(char)97,(char)103,(char)101,(char)109,(char)101,(char)110,(char)116>::Key, self->_forceManagement.__ptr_);
    if (v10)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MTTrackpadUberAlg hsDecode:];
      }

      goto LABEL_20;
    }
  }

  HSUtil::Decoder::decodeCodable<MTPListGestureConfig_>(&v10, HSUtil::CoderKey::Literal<(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)67,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, self->_gestureConfig.__ptr_);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/MTTrackpadUberAlg.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MTTrackpadUberAlg hsDecode:];
    }

    goto LABEL_20;
  }

  v7 = 1;
LABEL_21:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  *&v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (id).cxx_construct
{
  self->_mtHandMotion = 0u;
  self->_gestureConfig = 0u;
  self->_pathStates = 0u;
  self->_mtHandStats = 0u;
  self->_surfaceDimensions = 0u;
  MTDragManagerEventQueue_::MTDragManagerEventQueue_(&self->_dragManagerEventQueue);
  self->_forceManagement.__ptr_ = 0;
  self->_forceManagement.__cntrl_ = 0;
  return self;
}

- (uint64_t)shouldSecondaryClick
{
  if (a1)
  {
    v1 = *(a1 + 256);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end