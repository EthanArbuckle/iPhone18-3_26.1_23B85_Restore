uint64_t sub_2EA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_9C94();
  sub_2F18(v3, a2);
  sub_2F7C(v3, a2);
  return sub_9C84();
}

uint64_t *sub_2F18(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2F7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_2FB4()
{
  v1 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController);
  }

  else
  {
    v4 = sub_3014();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_3014()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
        if (qword_103A8 != -1)
        {
          swift_once();
        }

        v10 = sub_9C94();
        sub_2F7C(v10, qword_105A0);
        v4 = sub_9C74();
        v11 = sub_9E64();
        if (!os_log_type_enabled(v4, v11))
        {
          v7 = PABSPearlPasscodeController_ptr;
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v4, v11, "Content view will populate for Face ID & Passcode settings", v12, 2u);
        v7 = PABSPearlPasscodeController_ptr;
      }

      else
      {
        if (qword_103A8 != -1)
        {
          swift_once();
        }

        v13 = sub_9C94();
        sub_2F7C(v13, qword_105A0);
        v4 = sub_9C74();
        v14 = sub_9E64();
        if (!os_log_type_enabled(v4, v14))
        {
          v7 = PABSPasscodeLockController_ptr;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v4, v14, "Content view will populate for Passcode settings", v15, 2u);
        v7 = PABSPasscodeLockController_ptr;
      }

      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v3 = sub_9C94();
  sub_2F7C(v3, qword_105A0);
  v4 = sub_9C74();
  v5 = sub_9E64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Content view will populate for Touch ID & Passcode settings", v6, 2u);
    v7 = PABSTouchIDPasscodeController_ptr;
LABEL_18:

    goto LABEL_19;
  }

  v7 = PABSTouchIDPasscodeController_ptr;
LABEL_19:

  v16 = objc_allocWithZone(*v7);

  return [v16 init];
}

id sub_32D4()
{
  v1 = v0;
  v2 = *(*(sub_749C(&qword_10470, &unk_A620) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
  swift_beginAccess();
  sub_7D20(v0 + v8, v7, &qword_10470, &unk_A620);
  v9 = sub_9EA4();
  v10 = *(v9 - 8);
  v19 = *(v10 + 48);
  v11 = v19(v7, 1, v9);
  sub_7CC0(v7, &qword_10470, &unk_A620);
  if (v11 == 1)
  {
    goto LABEL_8;
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v12 = sub_9C94();
  sub_2F7C(v12, qword_105A0);
  v13 = sub_9C74();
  v14 = sub_9E64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Stopped observing for Settings.app being backgrounded", v15, 2u);
  }

  v16 = [objc_opt_self() defaultCenter];
  sub_7D20(v1 + v8, v5, &qword_10470, &unk_A620);
  result = v19(v5, 1, v9);
  if (result != 1)
  {
    sub_9E94();

    (*(v10 + 8))(v5, v9);
LABEL_8:
    v18 = type metadata accessor for PABSRootContainerViewController();
    v20.receiver = v1;
    v20.super_class = v18;
    return objc_msgSendSuper2(&v20, "dealloc");
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PABSRootContainerViewController()
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_366C()
{
  v1 = v0;
  v2 = sub_749C(&qword_10468, &qword_A618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_749C(&qword_10470, &unk_A620);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PABSRootContainerViewController();
  v20.receiver = v0;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v12 = sub_9C94();
  sub_2F7C(v12, qword_105A0);
  v13 = sub_9C74();
  v14 = sub_9E64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "viewDidLoad: Root view for Biometrics & Passcode settings, starting observing for Settings.app being backgrounded", v15, 2u);
  }

  v16 = [objc_opt_self() defaultCenter];
  sub_7AC4(0, &qword_10478, UIApplication_ptr);
  sub_9E44();
  sub_7B0C();
  sub_9EB4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_7BA4();
  sub_9E84();

  (*(v3 + 8))(v6, v2);
  v17 = sub_9EA4();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
  swift_beginAccess();
  sub_7C50(v10, v1 + v18);
  swift_endAccess();
  sub_5BDC();
}

void sub_39B0()
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_103A8 != -1)
    {
      swift_once();
    }

    v2 = sub_9C94();
    sub_2F7C(v2, qword_105A0);
    v3 = sub_9C74();
    v4 = sub_9E64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Settings.app has been backgrounded", v5, 2u);
    }

    v6 = [objc_opt_self() sharedConnection];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isPasscodeSet];

      if (v8)
      {
        sub_5A2C();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_3C38(char a1)
{
  v2 = v1;
  v4 = sub_749C(&qword_10460, &qword_A5E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for PABSRootContainerViewController();
  v33.receiver = v2;
  v33.super_class = v8;
  objc_msgSendSuper2(&v33, "viewDidAppear:", a1 & 1);
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v9 = sub_9C94();
  sub_2F7C(v9, qword_105A0);
  v10 = sub_9C74();
  v11 = sub_9E64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "viewDidAppear: Root view", v12, 2u);
  }

  v13 = [v2 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = sub_4020();

  v16 = objc_opt_self();
  v17 = [v16 sharedConnection];
  if (!v17)
  {
LABEL_16:
    __break(1u);
LABEL_17:

    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 isPasscodeSet];

  if ((v15 & v19) != 1)
  {
    v2 = v2;
    v27 = sub_9C74();
    v28 = sub_9E64();
    if (!os_log_type_enabled(v27, v28))
    {

      return;
    }

    v29 = swift_slowAlloc();
    *v29 = 67109376;
    v30 = [v16 sharedConnection];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 isPasscodeSet];

      *(v29 + 4) = v32;
      *(v29 + 8) = 1024;
      *(v29 + 10) = v15 & 1;
      _os_log_impl(&dword_0, v27, v28, "viewDidAppear: Will not take any action on Root view since isPasscodeSet: %{BOOL}d and hasBlurredSubview: %{BOOL}d", v29, 0xEu);

      return;
    }

    goto LABEL_17;
  }

  v20 = sub_9C74();
  v21 = sub_9E64();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Device has passcode set, requesting passcode challenge", v22, 2u);
  }

  v23 = sub_9E34();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_9E14();
  v24 = v2;
  v25 = sub_9E04();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;
  sub_44D8(0, 0, v7, &unk_A5F8, v26);
}

uint64_t sub_4020()
{
  v1 = [v0 subviews];
  sub_7AC4(0, &qword_10410, UIView_ptr);
  v2 = sub_9DB4();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_9F04())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_9EE4();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_9E14();
      sub_9E04();
      sub_9DC4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return 1;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 0;
}

uint64_t sub_41D4()
{
  v0[2] = sub_9E14();
  v0[3] = sub_9E04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_4280;

  return sub_48A4();
}

uint64_t sub_4280()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_9DC4();

  return _swift_task_switch(sub_43BC, v5, v4);
}

uint64_t sub_43BC()
{
  v1 = *(v0 + 24);

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v2 = sub_9C94();
  sub_2F7C(v2, qword_105A0);
  v3 = sub_9C74();
  v4 = sub_9E64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Done requesting passcode challenge", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_749C(&qword_10460, &qword_A5E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_7D20(a3, v27 - v11, &qword_10460, &qword_A5E8);
  v13 = sub_9E34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_7CC0(v12, &qword_10460, &qword_A5E8);
  }

  else
  {
    sub_9E24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_9DC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_9D74() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_7CC0(a3, &qword_10460, &qword_A5E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7CC0(a3, &qword_10460, &qword_A5E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_48A4()
{
  v1[55] = v0;
  v2 = sub_749C(&qword_10428, &qword_A5B8);
  v1[56] = v2;
  v3 = *(v2 - 8);
  v1[57] = v3;
  v4 = *(v3 + 64) + 15;
  v1[58] = swift_task_alloc();
  v5 = sub_749C(&qword_10430, &qword_A5C0);
  v1[59] = v5;
  v6 = *(v5 - 8);
  v1[60] = v6;
  v7 = *(v6 + 64) + 15;
  v1[61] = swift_task_alloc();
  sub_9E14();
  v1[62] = sub_9E04();
  v9 = sub_9DC4();
  v1[63] = v9;
  v1[64] = v8;

  return _swift_task_switch(sub_4A0C, v9, v8);
}

uint64_t sub_4A0C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 53;
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[59];
  v11 = v1[55];
  v10 = [objc_allocWithZone(LAPasscodeVerificationService) init];
  v1[65] = v10;
  v7 = [objc_allocWithZone(LAPasscodeVerificationServiceOptions) init];
  v1[66] = v7;
  [v7 setDismissUIAfterCompletion:0];
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_4C30;
  swift_continuation_init();
  v1[25] = v6;
  v8 = sub_74E4(v1 + 22);
  sub_7AC4(0, &qword_10438, LAContext_ptr);
  v1[67] = sub_749C(&qword_10440, &qword_A5C8);
  sub_9DD4();
  (*(v4 + 32))(v8, v5, v6);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_58B0;
  v1[21] = &unk_C7D8;
  [v10 startInParentVC:v11 options:v7 completion:?];
  (*(v4 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_4C30()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  v4 = *(v1 + 512);
  v5 = *(v1 + 504);
  if (v3)
  {
    v6 = sub_54D8;
  }

  else
  {
    v6 = sub_4D60;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_4D60()
{
  v11 = v0[53];
  v0[69] = v11;
  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v1 = sub_9C94();
  v0[70] = sub_2F7C(v1, qword_105B8);
  v2 = sub_9C74();
  v3 = sub_9E64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Passcode challenge succeeded, extracting credentials", v4, 2u);
  }

  v5 = v0[67];
  v7 = v0[57];
  v6 = v0[58];
  v8 = v0[56];

  v0[10] = v0;
  v0[15] = v0 + 47;
  v0[11] = sub_4FD8;
  swift_continuation_init();
  v0[33] = v8;
  v9 = sub_74E4(v0 + 30);
  sub_749C(&qword_10448, &qword_A5D0);
  sub_9DD4();
  (*(v7 + 32))(v9, v6, v8);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_5960;
  v0[29] = &unk_C800;
  [v11 credentialOfType:-9 reply:v0 + 26];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_4FD8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 568) = v3;
  v4 = *(v1 + 512);
  v5 = *(v1 + 504);
  if (v3)
  {
    v6 = sub_56C0;
  }

  else
  {
    v6 = sub_5108;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_5108()
{
  v1 = *(v0 + 496);

  v2 = *(v0 + 384);
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 560);
    v4 = sub_9C74();
    v5 = sub_9E54();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 552);
    v8 = *(v0 + 528);
    v9 = *(v0 + 520);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v4, v5, "Extracting credentials from passcode challenge failed unexpectedly", v10, 2u);
    }

    goto LABEL_22;
  }

  v11 = *(v0 + 376);
  sub_75D0(v11, *(v0 + 384));
  v12 = sub_7108(v11, v2);
  if (v13)
  {
    goto LABEL_12;
  }

  *(v0 + 392) = v11;
  *(v0 + 400) = v2;
  sub_75D0(v11, v2);
  sub_749C(&qword_10450, &qword_A5D8);
  if (!swift_dynamicCast())
  {
    *(v0 + 344) = 0;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_7CC0(v0 + 312, &qword_10458, &qword_A5E0);
LABEL_11:
    v12 = sub_6EE4(v11, v2);
LABEL_12:
    v17 = v12;
    v16 = v13;
    sub_7624(v11, v2);
    goto LABEL_13;
  }

  sub_768C((v0 + 312), v0 + 272);
  v14 = *(v0 + 304);
  sub_76F0((v0 + 272), *(v0 + 296));
  if ((sub_9F24() & 1) == 0)
  {
    sub_76A4((v0 + 272));
    goto LABEL_11;
  }

  sub_7624(v11, v2);
  v15 = *(v0 + 304);
  sub_76F0((v0 + 272), *(v0 + 296));
  sub_9F14();
  v17 = *(v0 + 408);
  v16 = *(v0 + 416);
  sub_76A4((v0 + 272));
LABEL_13:
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v19 = *(v0 + 560);
  if (v18)
  {
    v20 = sub_9C74();
    v21 = sub_9E64();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Passcode extraction succeeded, dimissing passcode challenge", v22, 2u);
    }

    v4 = *(v0 + 552);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v25 = *(v0 + 440);

    sub_6220(v17, v16);

    sub_7624(v11, v2);
  }

  else
  {

    v4 = sub_9C74();
    v26 = sub_9E54();
    v27 = os_log_type_enabled(v4, v26);
    v28 = *(v0 + 552);
    v29 = *(v0 + 528);
    v30 = *(v0 + 520);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v4, v26, "Extracting credentials from passcode challenge failed, extracted value is invalid", v31, 2u);
    }

    sub_7624(v11, v2);
  }

LABEL_22:

  v32 = *(v0 + 488);
  v33 = *(v0 + 464);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_54D8()
{
  v23 = v0;
  v1 = v0[68];
  v2 = v0[62];

  swift_willThrow();
  v3 = v0[68];
  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v4 = sub_9C94();
  sub_2F7C(v4, qword_105B8);
  swift_errorRetain();
  v5 = sub_9C74();
  v6 = sub_9E54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[44];
    v9 = v0[45];
    v11 = v0[46];
    v12 = sub_9F54();
    v14 = sub_9348(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Passcode challenge failed, error '%s'", v7, 0xCu);
    sub_76A4(v8);
  }

  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[55];
  sub_5A2C();

  v18 = v0[61];
  v19 = v0[58];

  v20 = v0[1];

  return v20();
}

uint64_t sub_56C0()
{
  v24 = v0;
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[62];

  swift_willThrow();

  v4 = v0[71];
  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v5 = sub_9C94();
  sub_2F7C(v5, qword_105B8);
  swift_errorRetain();
  v6 = sub_9C74();
  v7 = sub_9E54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[44];
    v10 = v0[45];
    v12 = v0[46];
    v13 = sub_9F54();
    v15 = sub_9348(v13, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Passcode challenge failed, error '%s'", v8, 0xCu);
    sub_76A4(v9);
  }

  v16 = v0[66];
  v17 = v0[65];
  v18 = v0[55];
  sub_5A2C();

  v19 = v0[61];
  v20 = v0[58];

  v21 = v0[1];

  return v21();
}

void sub_58B0(uint64_t a1, void *a2, void *a3)
{
  sub_76F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_749C(&qword_10430, &qword_A5C0);
    sub_9DE4();
  }

  else if (a2)
  {
    v6 = a2;
    sub_749C(&qword_10430, &qword_A5C0);
    sub_9DF4();
  }

  else
  {
    __break(1u);
  }
}

void sub_5960(uint64_t a1, void *a2, void *a3)
{
  sub_76F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_749C(&qword_10428, &qword_A5B8);
    sub_9DE4();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      sub_9C04();
    }

    sub_749C(&qword_10428, &qword_A5B8);
    sub_9DF4();
  }
}

uint64_t sub_5A2C()
{
  v1 = v0;
  v2 = sub_9CE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v7 = sub_9C94();
  sub_2F7C(v7, qword_105A0);
  v8 = sub_9C74();
  v9 = sub_9E64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Navigating back to Settings.app's root view", v10, 2u);
  }

  v11 = [v1 traitCollection];
  sub_9E74();

  sub_9CD4();
  return (*(v3 + 8))(v6, v2);
}

void sub_5BDC()
{
  v1 = v0;
  v2 = sub_2FB4();
  [v1 addChildViewController:v2];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController;
  v6 = [*&v1[OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController] view];
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  [v4 addSubview:v6];

  v8 = [*&v1[v5] view];
  if (!v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_749C(&qword_10418, &qword_A5B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_A530;
  v11 = [*&v1[v5] view];
  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v10 + 32) = v17;
  v18 = [*&v1[v5] view];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v10 + 40) = v24;
  v25 = [*&v1[v5] view];
  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v10 + 48) = v31;
  v32 = [*&v1[v5] view];
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v10 + 56) = v39;
  sub_7AC4(0, &qword_10420, NSLayoutConstraint_ptr);
  isa = sub_9DA4().super.isa;

  [v37 activateConstraints:isa];

  v41 = objc_opt_self();
  v42 = [v41 sharedConnection];
  if (!v42)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v43 = v42;
  v44 = [v42 isPasscodeSet];

  if ((v44 & 1) == 0)
  {
    sub_6220(0, 0);
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v45 = sub_9C94();
  sub_2F7C(v45, qword_105A0);
  v46 = sub_9C74();
  v47 = sub_9E64();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "Navigating forward to our content view", v48, 2u);
  }

  [*&v1[v5] didMoveToParentViewController:v1];
  v49 = [v41 sharedConnection];
  if (!v49)
  {
    goto LABEL_38;
  }

  v50 = v49;
  v51 = [v49 isPasscodeSet];

  if (!v51)
  {
    return;
  }

  v52 = [v1 view];
  if (!v52)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v53 = v52;
  v54 = [objc_opt_self() effectWithStyle:1];
  v55 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v54];
  [v53 bounds];
  [v55 setFrame:?];
  [v55 setAutoresizingMask:18];
  [v53 addSubview:v55];
}

void sub_6220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = [v2 specifier];
  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    v8 = MobileGestalt_get_current_device();
    if (!v8)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v9 = v8;
    MobileGestalt_get_pearlIDCapability();
  }

  v10 = sub_9D54();

  [v22 setIdentifier:v10];

  if (a2)
  {
    v11 = sub_9D54();
    [v22 setProperty:v11 forKey:PSSpecifierPasscodeKey];
  }

  v12 = sub_2FB4();
  [v12 setSpecifier:v22];

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v13 = sub_9C94();
  sub_2F7C(v13, qword_105A0);

  v14 = sub_9C74();
  v15 = sub_9E64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a2 != 0;

    _os_log_impl(&dword_0, v14, v15, "Set specifier on content vc [with passcode: %{BOOL}d]", v16, 8u);

    if (!a2)
    {
      goto LABEL_18;
    }

LABEL_14:
    v17 = sub_9C74();
    v18 = sub_9E64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Refreshing content view post retrieving passcode", v19, 2u);
    }

    [*&v3[OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController] reloadSpecifiers];
    v20 = [v3 view];
    if (v20)
    {
      v21 = v20;
      sub_6568();

      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a2)
  {
    goto LABEL_14;
  }

LABEL_18:
}

void sub_6568()
{
  v1 = [v0 subviews];
  sub_7AC4(0, &qword_10410, UIView_ptr);
  v2 = sub_9DB4();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

LABEL_17:
  v3 = sub_9F04();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_9EE4();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_18;
    }
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v6;
  sub_72B4(v8);
}

void sub_6A0C()
{
  sub_6AA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_6AA4()
{
  if (!qword_10408)
  {
    sub_9EA4();
    v0 = sub_9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_10408);
    }
  }
}

uint64_t sub_6AFC(void *a1)
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setAlpha:0.0];
  [a1 setEffect:0];
}

uint64_t sub_6BB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_6BFC(uint64_t a1, void *a2)
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 removeFromSuperview];
}

uint64_t sub_6CA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_6CF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6DEC;

  return v7(a1);
}

uint64_t sub_6DEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_6EE4(uint64_t a1, unint64_t a2)
{
  sub_75D0(a1, a2);
  v4 = *(sub_6F8C(a1, a2) + 2);
  v5 = sub_9D84();

  return v5;
}

uint64_t sub_6F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_9D84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_6F8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_9C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_7638(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_97D0(v11, 0);
      v15 = sub_9BF4();
      sub_7638(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_7108(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_9D84();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_9D84();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_9B84();
  if (a1)
  {
    a1 = sub_9BA4();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_9B84() || !__OFSUB__(v5, sub_9BA4()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_9B94();
  return sub_9D84();
}

void sub_72B4(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_7474;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6BB8;
  v12 = &unk_C760;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_7494;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6CA0;
  v12 = &unk_C7B0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.5];
  _Block_release(v7);
  _Block_release(v4);
}

uint64_t sub_743C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_747C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_749C(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_74E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_7558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_75D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_7624(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7638(a1, a2);
  }

  return a1;
}

uint64_t sub_7638(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_768C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_76A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_76F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7734()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7774()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7828;

  return sub_41D4();
}

uint64_t sub_7828()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_791C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7D9C;

  return sub_6CF4(a1, v5);
}

uint64_t sub_7A0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7828;

  return sub_6CF4(a1, v5);
}

uint64_t sub_7AC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_7B0C()
{
  result = qword_10480;
  if (!qword_10480)
  {
    sub_9E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10480);
  }

  return result;
}

uint64_t sub_7B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_7BA4()
{
  result = qword_10488;
  if (!qword_10488)
  {
    sub_7C08(&qword_10468, &qword_A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10488);
  }

  return result;
}

uint64_t sub_7C08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_749C(&qword_10470, &unk_A620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7CC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_749C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_749C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_7DDC()
{
  result = qword_10528;
  if (!qword_10528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10528);
  }

  return result;
}

uint64_t sub_7E4C()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v0;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (touchIDCapability)
  {
    v0 = 0x1000000000000014;
    v1 = 0x800000000000AA80;
    goto LABEL_8;
  }

  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
LABEL_12:
    __break(1u);
    return LocalizedStringResource.init(stringLiteral:)(v0, v1);
  }

  v4 = v0;
  pearlIDCapability = MobileGestalt_get_pearlIDCapability();

  if (pearlIDCapability)
  {
    v1 = 0x800000000000AA60;
    v0 = 0x1000000000000013;
  }

  else
  {
    v0 = 0x65646F6373736150;
    v1 = 0xE800000000000000;
  }

LABEL_8:

  return LocalizedStringResource.init(stringLiteral:)(v0, v1);
}

uint64_t sub_7F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = sub_749C(&qword_10530, &qword_A700);
  v8 = *(v7 - 8);
  v54 = v7 - 8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v46 - v10;
  v52 = sub_749C(&qword_10538, &qword_A708);
  v60 = *(v52 - 8);
  v11 = v60[8];
  v12 = __chkstk_darwin(v52);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v46 - v14;
  v58 = sub_749C(&qword_10540, &qword_A710);
  v49 = *(v58 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v58);
  v17 = &v46 - v16;
  v50 = sub_749C(&qword_10548, &qword_A718);
  v47 = *(v50 - 8);
  v18 = v47;
  v19 = *(v47 + 64);
  v20 = __chkstk_darwin(v50);
  v57 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v22;
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;

  v24 = a3;
  sub_749C(&qword_10550, &qword_A720);
  v25 = sub_9C34();
  v26 = sub_9414(&qword_10558, &type metadata accessor for PreferencesControllerView);
  v65 = v25;
  v66 = v26;
  swift_getOpaqueTypeConformance2();
  sub_9D34();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = v24;
  v48 = &protocol conformance descriptor for SettingsPane<A>;
  v28 = sub_9B08(&qword_10560, &qword_10540, &qword_A710);

  v29 = v24;
  v30 = v56;
  v31 = v58;
  sub_9CF4();
  (*(v49 + 8))(v17, v31);
  swift_checkMetadataState();
  v32 = v59;
  sub_9D44();
  v33 = *(v18 + 16);
  v34 = v57;
  v35 = v50;
  v33(v57, v30, v50);
  v36 = v60[2];
  v38 = v51;
  v37 = v52;
  v36(v51, v32, v52);
  v65 = v58;
  v66 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v33(v53, v34, v35);
  v65 = v40;
  v41 = sub_9B08(&qword_10568, &qword_10538, &qword_A708);
  v42 = &v40[*(v54 + 56)];
  v36(v42, v38, v37);
  v66 = v42;
  v63 = v35;
  v64 = v37;
  v61 = OpaqueTypeConformance2;
  v62 = v41;
  sub_9CC4();
  v43 = v60[1];
  v43(v59, v37);
  v44 = *(v47 + 8);
  v44(v56, v35);
  v43(v38, v37);
  return (v44)(v57, v35);
}

uint64_t sub_84F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a4;
  v18 = sub_9BC4();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_9C64();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_9C34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PABSRootContainerViewController();
  sub_993C(a3);
  sub_9C44();
  sub_9C24();
  sub_7E4C();
  sub_9414(&qword_10558, &type metadata accessor for PreferencesControllerView);
  sub_9CB4();
  (*(v5 + 8))(v8, v18);
  (*(v12 + 8))(v15, v11);
}

uint64_t sub_8794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_9CA4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_749C(&qword_10578, &qword_A738) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_9B74();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = sub_9BE4();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_9E14();
  v5[19] = sub_9E04();
  v17 = sub_9DC4();

  return _swift_task_switch(sub_8998, v17, v16);
}

uint64_t sub_8998()
{
  v76 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[3];

  sub_9D14();
  if (qword_103B8 != -1)
  {
    swift_once();
  }

  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = sub_9C94();
  sub_2F7C(v8, qword_105D0);
  (*(v6 + 16))(v5, v4, v7);
  v9 = sub_9C74();
  v10 = sub_9E64();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v75 = v16;
    *v15 = 136315138;
    sub_9414(&qword_10580, &type metadata accessor for URL);
    v17 = sub_9F34();
    v19 = v18;
    v74 = *(v12 + 8);
    v74(v13, v14);
    v20 = sub_9348(v17, v19, &v75);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "Received deep link url %s", v15, 0xCu);
    sub_76A4(v16);
  }

  else
  {

    v74 = *(v12 + 8);
    v74(v13, v14);
  }

  v22 = v0 + 13;
  v21 = v0[13];
  v23 = v0[18];
  v25 = v0 + 12;
  v24 = v0[12];
  v26 = v0[11];
  sub_9B54();
  if ((*(v21 + 48))(v26, 1, v24) != 1)
  {
    v31 = v0 + 14;
    v34 = v0[18];
    v35 = v0[10];
    v36 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_9D04();
    v37 = sub_9BD4();
    v39 = v38;
    v40 = sub_9B64();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      v44 = v0[6];

      v45 = sub_9D54();
      [v44 setSpecifierIdentifierToScrollAndHighlight:v45];

      v46 = sub_9C74();
      v47 = sub_9E64();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v75 = v49;
        *v48 = 136315138;
        v50 = sub_9348(v42, v43, &v75);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_0, v46, v47, "Will ScrollAndHighlight identifier: %s", v48, 0xCu);
        sub_76A4(v49);

LABEL_13:

LABEL_24:
        v58 = v0[10];
        v59 = v0[7];
        v60 = v0[8];
        v61 = v0[2];
        sub_9D24();
        (*(v60 + 8))(v58, v59);
        goto LABEL_25;
      }
    }

    else
    {
      v51 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v51 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (!v51 || v37 == v0[4] && v39 == v0[5] || (sub_9F44() & 1) != 0)
      {
        goto LABEL_23;
      }

      v52 = v0[6];
      v53 = sub_9D54();
      [v52 setSpecifierIdentifierToScrollAndSelect:v53];

      v46 = sub_9C74();
      v54 = sub_9E64();

      if (os_log_type_enabled(v46, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v75 = v56;
        *v55 = 136315138;
        v57 = sub_9348(v37, v39, &v75);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_0, v46, v54, "Will ScrollAndSelect identifier: %s", v55, 0xCu);
        sub_76A4(v56);

        goto LABEL_13;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  sub_92E0(v0[11]);
  v27 = sub_9C74();
  v28 = sub_9E54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Invalid URL!", v29, 2u);
  }

  v31 = v0 + 9;
  v30 = v0[9];
  v33 = v0[2];
  v32 = v0[3];

  sub_9D04();
  sub_9D24();
  v22 = v0 + 8;
  v25 = v0 + 7;
LABEL_25:
  v62 = *v25;
  v63 = *v22;
  v64 = v0[17];
  v65 = v0[18];
  v66 = v0[15];
  v67 = v0[16];
  v68 = v0[14];
  v70 = v0[10];
  v69 = v0[11];
  v71 = v0[9];
  (*(v63 + 8))(*v31, v62);
  v74(v65, v66);

  v72 = v0[1];

  return v72();
}

uint64_t sub_9028()
{
  v0 = sub_9C64();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_9294();
  sub_9C54();
  sub_9C24();
}

id sub_9128@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x800000000000A9D0;
  a1[2] = result;
  return result;
}

uint64_t sub_9190()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_91D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7828;

  return sub_8794(a1, a2, v6, v7, v8);
}

unint64_t sub_9294()
{
  result = qword_10570;
  if (!qword_10570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10570);
  }

  return result;
}

uint64_t sub_92E0(uint64_t a1)
{
  v2 = sub_749C(&qword_10578, &qword_A738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9348(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_945C(v11, 0, 0, 1, a1, a2);
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
    sub_7558(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_76A4(v11);
  return v7;
}

uint64_t sub_9414(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_945C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_9568(a5, a6);
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
    result = sub_9EF4();
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

char *sub_9568(uint64_t a1, unint64_t a2)
{
  v4 = sub_95B4(a1, a2);
  sub_96E4(&off_C710);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_95B4(uint64_t a1, unint64_t a2)
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

  v6 = sub_97D0(v5, 0);
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

  result = sub_9EF4();
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
        v10 = sub_9D94();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_97D0(v10, 0);
        result = sub_9ED4();
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

uint64_t sub_96E4(uint64_t result)
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

  result = sub_9844(result, v12, 1, v3);
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

void *sub_97D0(uint64_t a1, uint64_t a2)
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

  sub_749C(&qword_10588, &qword_A740);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_9844(char *result, int64_t a2, char a3, char *a4)
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
    sub_749C(&qword_10588, &qword_A740);
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

id sub_993C(uint64_t a1)
{
  v2 = [objc_allocWithZone(PSSpecifier) init];
  v3 = sub_9D54();
  [v2 setIdentifier:v3];

  v4 = sub_9D54();
  [v2 setName:v4];

  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  return v2;
}

__n128 sub_9A18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_9A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_7C08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}