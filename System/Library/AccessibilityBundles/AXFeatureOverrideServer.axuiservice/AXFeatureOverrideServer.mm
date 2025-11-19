uint64_t sub_1778()
{
  v0 = sub_4BE4();
  sub_4B1C(v0, FeatureOverrideLog);
  sub_185C(v0, FeatureOverrideLog);
  return sub_4BD4();
}

uint64_t FeatureOverrideLog.unsafeMutableAddressor()
{
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v0 = sub_4BE4();

  return sub_185C(v0, FeatureOverrideLog);
}

uint64_t sub_185C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1894()
{
  result = [objc_allocWithZone(type metadata accessor for AXFeatureOverrideServer()) init];
  qword_C7A0 = result;
  return result;
}

id static AXFeatureOverrideServer.sharedInstance()()
{
  if (qword_C798 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

char *sub_19B8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___AXFeatureOverrideServer_grayscalePriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_invertColorsPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_voiceControlPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_voiceOverPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_zoomPriorState] = 0;
  v2 = &v0[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeTimer] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_sessionOverrideTimeInterval] = 0x4072C00000000000;
  v3 = OBJC_IVAR___AXFeatureOverrideServer_SBSubstantialTransitionNotification;
  *&v0[v3] = sub_4C24();
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_applicationStateChanged] = sub_1BD4;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "init");
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, 0, *&v4[OBJC_IVAR___AXFeatureOverrideServer_applicationStateChanged], *&v4[OBJC_IVAR___AXFeatureOverrideServer_SBSubstantialTransitionNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v4;
}

uint64_t sub_1B48()
{
  if (*(v0 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8))
  {
    v1 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_grayscalePriorState);
    _AXSGrayscaleSetEnabled();
    v2 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_invertColorsPriorState);
    _AXSInvertColorsSetEnabled();
    v3 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceControlPriorState);
    _AXSCommandAndControlSetEnabled();
    v4 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceOverPriorState);
    _AXSVoiceOverTouchSetEnabled();
    v5 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_zoomPriorState);

    return _AXSZoomTouchSetEnabled();
  }

  return result;
}

unint64_t AXFeatureOverrideServer.processMessage(_:withIdentifier:fromClientWithIdentifier:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v9 = sub_4BE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = sub_459C(&_swiftEmptyArrayStorage);
  }

  v84 = a2;

  v79 = sub_4C14();
  v18 = v17;
  v19 = sub_459C(&_swiftEmptyArrayStorage);
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v20 = sub_185C(v9, FeatureOverrideLog);
  swift_beginAccess();
  v21 = *(v10 + 16);
  v77 = v20;
  v76 = v10 + 16;
  v75 = v21;
  v21(v15, v20, v9);

  v82 = v15;
  v22 = sub_4BC4();
  v23 = v10;
  v24 = sub_4C74();

  v25 = os_log_type_enabled(v22, v24);
  v78 = a4;
  v83 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v73 = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v72 = v16;
    v86[0] = v28;
    *v27 = 134218498;
    v74 = v23;
    v29 = v84;
    *(v27 + 4) = v84;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_3324(v80, a4, v86);
    *(v27 + 22) = 2080;
    *(v27 + 24) = sub_3324(v79, v18, v86);
    _os_log_impl(&dword_0, v22, v24, "Incoming message: %ld from client: %s. Payload: %s", v27, 0x20u);
    swift_arrayDestroy();
    v16 = v72;

    v5 = v73;

    v30 = v74;
    v31 = *(v74 + 8);
    v31(v82, v9);
    if (v29 != 2)
    {
LABEL_8:
      v32 = v29;
      if (v29 == 1)
      {

        *&v85[0] = 0xD00000000000001FLL;
        *(&v85[0] + 1) = 0x80000000000056D0;
        sub_4CB4();
        if (*(v16 + 16))
        {
          v33 = sub_38CC(v86);
          if (v34)
          {
            sub_470C(*(v16 + 56) + 32 * v33, &v87);
            sub_46B8(v86);
            if (swift_dynamicCast())
            {
              v35 = v19;
              v36 = v85[0];
              *&v85[0] = 0xD000000000000021;
              *(&v85[0] + 1) = 0x80000000000056F0;
              sub_4CB4();
              if (!*(v16 + 16) || (v37 = sub_38CC(v86), (v38 & 1) == 0))
              {
LABEL_36:

                sub_46B8(v86);
                return v19;
              }

              sub_470C(*(v16 + 56) + 32 * v37, &v87);
              sub_46B8(v86);
              if (swift_dynamicCast())
              {
                v39 = v5;
                v40 = *&v85[0];
                *&v85[0] = 0xD000000000000022;
                *(&v85[0] + 1) = 0x8000000000005720;
                sub_4CB4();
                if (*(v16 + 16))
                {
                  v41 = sub_38CC(v86);
                  if (v42)
                  {
                    sub_470C(*(v16 + 56) + 32 * v41, &v87);
                    sub_46B8(v86);

                    if (swift_dynamicCast())
                    {
                      v43 = OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions;
                      if (*(v39 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions) || (v44 = OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions, *(v39 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions)))
                      {

                        *&v87 = 0x746C75736572;
                        *(&v87 + 1) = 0xE600000000000000;
                        sub_4CB4();
                        v88 = &type metadata for Int;
                        *&v87 = 1;
                      }

                      else
                      {
                        v69 = *&v85[0];
                        v70 = *(v39 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8);
                        *(v39 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride) = v36;

                        *(v39 + v43) = v40;
                        *(v39 + v44) = v69;
                        sub_26E0();
                        if (sub_276C())
                        {
                          return v35;
                        }

                        *&v87 = 0x746C75736572;
                        *(&v87 + 1) = 0xE600000000000000;
                        sub_4CB4();
                        v88 = &type metadata for Int;
                        *&v87 = 0;
                      }

                      sub_4768(&v87, v85);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v89 = v35;
                      goto LABEL_47;
                    }

                    goto LABEL_45;
                  }
                }

                goto LABEL_36;
              }
            }

LABEL_45:

            return v19;
          }
        }

        goto LABEL_29;
      }

      v84 = v19;

      v75(v81, v77, v9);
      v50 = v78;

      v51 = v83;

      v52 = sub_4BC4();
      v53 = v9;
      v54 = sub_4C64();

      if (os_log_type_enabled(v52, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v74 = v30;
        v86[0] = v56;
        *v55 = 134218498;
        *(v55 + 4) = v32;
        v57 = v53;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_3324(v80, v50, v86);
        *(v55 + 22) = 2080;
        v58 = sub_3324(v79, v51, v86);

        *(v55 + 24) = v58;
        _os_log_impl(&dword_0, v52, v54, "Unhandled message: %ld from client: %s. Payload: %s", v55, 0x20u);
        swift_arrayDestroy();

        v59 = v81;
        v60 = v57;
      }

      else
      {

        v59 = v81;
        v60 = v53;
      }

      v31(v59, v60);
      return v84;
    }
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v82, v9);
    v30 = v23;
    v29 = v84;
    if (v84 != 2)
    {
      goto LABEL_8;
    }
  }

  *&v85[0] = 0xD00000000000001FLL;
  *(&v85[0] + 1) = 0x80000000000056D0;
  sub_4CB4();
  if (!*(v16 + 16) || (v46 = sub_38CC(v86), (v47 & 1) == 0))
  {
LABEL_29:

    sub_46B8(v86);
    return v19;
  }

  sub_470C(*(v16 + 56) + 32 * v46, &v87);
  sub_46B8(v86);

  if (swift_dynamicCast())
  {
    v48 = (v5 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride);
    v49 = *(v5 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8);
    if (!v49)
    {
      goto LABEL_45;
    }

    if (__PAIR128__(v49, *v48) == v85[0])
    {
    }

    else
    {
      v62 = *v48;
      v63 = sub_4D24();

      if ((v63 & 1) == 0)
      {
        *&v87 = 0x746C75736572;
        *(&v87 + 1) = 0xE600000000000000;
        sub_4CB4();
        v88 = &type metadata for Int;
        *&v87 = 2;
        sub_4768(&v87, v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v19;
LABEL_47:
        sub_3BC8(v85, v86, isUniquelyReferenced_nonNull_native);
        sub_46B8(v86);
        return v89;
      }
    }

    sub_1B48();
    v64 = v48[1];
    *v48 = 0;
    v48[1] = 0;

    *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions) = 0;
    *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions) = 0;
    v65 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
    v66 = *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeTimer);
    if (v66)
    {
      v67 = v66;
      if ([v67 isPending])
      {
        [v67 cancel];
      }
    }

    v68 = *(v5 + v65);
    *(v5 + v65) = 0;
  }

  return v19;
}

uint64_t sub_26E0()
{
  v1 = _AXSGrayscaleEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_grayscalePriorState) = v1;
  v2 = _AXSInvertColorsEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_invertColorsPriorState) = v2;
  v3 = _AXSCommandAndControlEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceControlPriorState) = v3;
  v4 = _AXSVoiceOverTouchEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceOverPriorState) = v4;
  result = _AXSZoomTouchEnabled();
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_zoomPriorState) = result != 0;
  return result;
}

BOOL sub_276C()
{
  v1 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions);
  v2 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions);
  if ((v1 & 1) != 0 || (v2 & 1) == 0 && _AXSGrayscaleEnabled())
  {
    _AXSGrayscaleSetEnabled();
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _AXSGrayscaleSetEnabled();
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  if ((v2 & 2) != 0 || !_AXSInvertColorsEnabled())
  {
    _AXSInvertColorsSetEnabled();
    if ((v1 & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_9:
  _AXSInvertColorsSetEnabled();
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v2 & 4) != 0 || !_AXSCommandAndControlEnabled())
  {
    _AXSCommandAndControlSetEnabled();
    if ((v1 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_14:
  _AXSCommandAndControlSetEnabled();
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((v2 & 8) != 0 || !_AXSVoiceOverTouchEnabled())
  {
    _AXSVoiceOverTouchSetEnabled();
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_19:
  _AXSVoiceOverTouchSetEnabled();
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((v2 & 0x10) == 0)
  {
    _AXSZoomTouchEnabled();
  }

LABEL_24:
  _AXSZoomTouchSetEnabled();

  return sub_29C4();
}

BOOL sub_29C4()
{
  v1 = v0;
  v2 = sub_4BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4BB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() mainAccessQueue];
  v13 = [objc_allocWithZone(AXAccessQueueTimer) initWithTargetAccessQueue:v12];

  if (v13)
  {
    sub_4BA4();
    sub_4B94();
    v15 = v14 + 300.0;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    aBlock[4] = sub_4998;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3040;
    aBlock[3] = &unk_8680;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    [v13 afterDelay:v17 processBlock:v15];
    _Block_release(v17);
    (*(v8 + 8))(v11, v7);
    v19 = *&v18[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
    *&v18[OBJC_IVAR___AXFeatureOverrideServer_activeTimer] = v13;
  }

  else
  {
    if (qword_C790 != -1)
    {
      swift_once();
    }

    v20 = sub_185C(v2, FeatureOverrideLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v20, v2);
    v21 = sub_4BC4();
    v22 = sub_4C64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Unable to start timer for feature override session, could not get access queue", v23, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  return v13 != 0;
}

void sub_2D50(void *a1)
{
  v2 = sub_4BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v7 = sub_185C(v2, FeatureOverrideLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_4BC4();
  v10 = sub_4C74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = &v8[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
    if (*&v8[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8])
    {
      v14 = *v13;
      v15 = v13[1];
    }

    else
    {
      v15 = 0xE800000000000000;
      v14 = 0x64697575206C696ELL;
    }

    v16 = sub_3324(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "Timer for override session [%s] has elapsed", v11, 0xCu);
    sub_49B8(v12);

    (*(v3 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  sub_1B48();
  v17 = &v8[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
  v18 = *&v8[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8];
  *v17 = 0;
  *(v17 + 1) = 0;

  *&v8[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
  *&v8[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
  v19 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
  v20 = *&v8[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
  if (v20)
  {
    v21 = v20;
    if ([v21 isPending])
    {
      [v21 cancel];
    }
  }

  v22 = *&v8[v19];
  *&v8[v19] = 0;
}

uint64_t sub_3040(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id AXFeatureOverrideServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_3160(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_3190@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_31BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_32C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_3FFC(a1);

  *a2 = v3;
  return result;
}

void *sub_3308@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3324(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_33F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_470C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_49B8(v11);
  return v7;
}

unint64_t sub_33F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_34FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_4CE4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_34FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_3548(a1, a2);
  sub_3678(&off_8550);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3548(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3764(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_4CE4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_4C44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3764(v10, 0);
        result = sub_4CD4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3678(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_37D8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3764(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_4A60(&qword_C708, &qword_5698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_37D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_4A60(&qword_C708, &qword_5698);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_38CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_4C94(*(v2 + 40));

  return sub_3D90(a1, v4);
}

uint64_t sub_3910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_4A60(&qword_C700, &qword_5690);
  result = sub_4D04();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_4768((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_4A04(v24, &v37);
        sub_470C(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_4C94(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_4768(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_3BC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_38CC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_3E58();
      goto LABEL_7;
    }

    sub_3910(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_38CC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_4A04(a2, v22);
      return sub_3D14(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_4D34();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_49B8(v17);

  return sub_4768(a1, v17);
}

_OWORD *sub_3D14(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_4768(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_3D90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4A04(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_4CA4();
      sub_46B8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_3E58()
{
  v1 = v0;
  sub_4A60(&qword_C700, &qword_5690);
  v2 = *v0;
  v3 = sub_4CF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_4A04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_470C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_4768(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_3FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_4034()
{
  v0 = sub_4BE4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v8 = sub_185C(v0, FeatureOverrideLog);
  swift_beginAccess();
  v9 = v1[2];
  v9(v7, v8, v0);
  v10 = sub_4BC4();
  v11 = sub_4C74();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Observed application state change", v12, 2u);
  }

  v13 = v1[1];
  v13(v7, v0);
  type metadata accessor for AXFeatureOverrideServer();
  v14 = static AXFeatureOverrideServer.sharedInstance()();
  v15 = *&v14[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8];

  if (v15)
  {

    v9(v5, v8, v0);
    v16 = sub_4BC4();
    v17 = sub_4C74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Reverting to prior feature enablement and removing active overrides", v18, 2u);
    }

    v13(v5, v0);
    v19 = static AXFeatureOverrideServer.sharedInstance()();
    sub_1B48();

    v20 = static AXFeatureOverrideServer.sharedInstance()();
    v21 = &v20[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
    v22 = *&v20[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8];
    *v21 = 0;
    *(v21 + 1) = 0;

    *&v20[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
    *&v20[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
    v23 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
    v24 = *&v20[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
    if (v24)
    {
      v25 = v24;
      if ([v25 isPending])
      {
        [v25 cancel];
      }
    }

    v26 = *&v20[v23];
    *&v20[v23] = 0;
  }
}

Swift::Int sub_437C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4A60(&unk_C720, &unk_56B0);
    v3 = sub_4CC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_4A04(v6 + 40 * v4, v19);
      result = sub_4C94(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_4A04(*(v3 + 48) + 40 * i, v18);
        v11 = sub_4CA4();
        result = sub_46B8(v18);
        if (v11)
        {
          sub_46B8(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int _s23AXFeatureOverrideServerAAC48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0(uint64_t a1)
{
  if ((a1 - 1) > 1)
  {
    return 0;
  }

  sub_4A60(&qword_C718, &qword_56A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5390;
  sub_4CB4();
  v2 = sub_437C(inited);
  swift_setDeallocating();
  sub_46B8(inited + 32);
  return v2;
}

unint64_t sub_459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4A60(&qword_C700, &qword_5690);
    v3 = sub_4D14();
    v4 = a1 + 32;

    while (1)
    {
      sub_4AAC(v4, v13);
      result = sub_38CC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_4768(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_470C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_4800(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_48B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Options(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4960()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_49A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_49B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4A60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4A60(&qword_C710, &qword_56A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_4B1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}