void AXHMEnableControlCenterModule()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"AXHapticMusicNewCCModuleEnabled"];

  if ((v1 & 1) == 0)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 BOOLForKey:@"AXHapticMusicNewCCModuleEnabled"];

    if ((v3 & 1) == 0)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v4 = qword_39870;
      v19 = qword_39870;
      if (!qword_39870)
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_22A4;
        v14 = &unk_34C60;
        v15 = &v16;
        sub_22A4(&v11);
        v4 = v17[3];
      }

      v5 = v4;
      _Block_object_dispose(&v16, 8);
      v6 = [[v4 alloc] initWithIntent:2 controlKind:@"com.apple.accessibility.musichaptics" controlType:1 extensionBundleIdentifier:@"com.apple.AccessibilityUIServer.AccessibilityControlsExtension" containerBundleIdentifier:@"com.apple.AccessibilityUIServer" size:2];
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v7 = qword_39880;
      v19 = qword_39880;
      if (!qword_39880)
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_246C;
        v14 = &unk_34C60;
        v15 = &v16;
        sub_246C(&v11);
        v7 = v17[3];
      }

      v8 = v7;
      _Block_object_dispose(&v16, 8);
      v9 = [v7 sharedInstance];
      [v9 handleIconElementRequest:v6 completionHandler:&stru_34C38];

      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:1 forKey:@"AXHapticMusicNewCCModuleEnabled"];
    }
  }
}

void sub_2100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_211C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = AXLogHapticMusic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Added Haptic Music: %@ success: %d", &v6, 0x12u);
  }
}

id AXHMPattern(void *a1, double a2)
{
  v3 = a1;
  v4 = [CHHapticPattern instancesRespondToSelector:"initWithDictionary:intensityScale:error:"];
  v5 = [CHHapticPattern alloc];
  if (v4)
  {
    v11 = 0;
    v6 = &v11;
    v7 = [v5 initWithDictionary:v3 intensityScale:&v11 error:a2];
  }

  else
  {
    v10 = 0;
    v6 = &v10;
    v7 = [v5 initWithDictionary:v3 error:&v10];
  }

  v8 = v7;

  return v8;
}

Class sub_22A4(uint64_t a1)
{
  sub_22FC();
  result = objc_getClass("CCSIconElementRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2B770();
  }

  qword_39870 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22FC()
{
  v1[0] = 0;
  if (!qword_39878)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_23F8;
    v1[4] = &unk_34C98;
    v1[5] = v1;
    v2 = off_34C80;
    v3 = 0;
    qword_39878 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_39878)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_23F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_39878 = result;
  return result;
}

Class sub_246C(uint64_t a1)
{
  sub_22FC();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2B798();
  }

  qword_39880 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_24C4()
{
  v0 = sub_2B8B0();
  sub_2B158(v0, HMLog);
  sub_25AC(v0, HMLog);
  return sub_2B8A0();
}

uint64_t HMLog.unsafeMutableAddressor()
{
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v0 = sub_2B8B0();

  return sub_25AC(v0, HMLog);
}

uint64_t sub_25AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25E4()
{
  sub_2BCF0(28);

  v2 = *v0;
  v3._countAndFlagsBits = sub_2BDB0();
  sub_2BA40(v3);

  v4._countAndFlagsBits = 0x3A63727369202CLL;
  v4._object = 0xE700000000000000;
  sub_2BA40(v4);
  sub_2BA40(*(v0 + 1));
  return 0xD000000000000011;
}

uint64_t sub_26B0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_2BDC0() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v4 != v7) && (sub_2BDC0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2BDC0();
}

Swift::Int sub_27B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_2BE40();
  sub_2BE50(v1);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  return sub_2BE60();
}

uint64_t sub_2854()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  sub_2BE50(*v0);
  sub_2BA20();
  sub_2BA20();

  return sub_2BA20();
}

Swift::Int sub_28E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_2BE40();
  sub_2BE50(v1);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  return sub_2BE60();
}

id sub_2978()
{
  result = [objc_allocWithZone(type metadata accessor for AXHapticMusicServer()) init];
  qword_398A0 = result;
  return result;
}

id variable initialization expression of AXHapticMusicServer.isActive()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 hapticMusicActive];

  return v1;
}

void variable initialization expression of AXHapticMusicServer.trackIdentifier(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
}

uint64_t variable initialization expression of AXHapticMusicServer.queue()
{
  v8 = sub_2BBC0();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_2BB90() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_2B920() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v9 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90);
  sub_2BC80();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_2BBF0();
}

uint64_t sub_2CC4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2D0C(uint64_t *a1, uint64_t *a2)
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

uint64_t variable initialization expression of AXHapticMusicServer.ahapAvailableQueue()
{
  v8 = sub_2BBC0();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_2BB90() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_2B920() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v9 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90);
  sub_2BC80();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_2BBF0();
}

uint64_t variable initialization expression of AXHapticMusicServer.ahapAvailableCacheQueue()
{
  v8 = sub_2BBC0();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_2BB90() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_2B920() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v9 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90);
  sub_2BC80();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_2BBF0();
}

uint64_t sub_327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (a2 == 1)
  {
    v9 = sub_20FC4(a4, a5);
    v11 = v10;

    if (v11)
    {
      v13 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v6;
      v25 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_237B0();
        v15 = v25;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      v17 = *(v15 + 56) + 24 * v9;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);

      result = sub_225FC(v9, v15);
      *v6 = v15;
    }
  }

  else
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v6;
    sub_22E0C(a1, a2, a3, a4, a5, v24);

    *v6 = v26;
  }

  return result;
}

uint64_t sub_339C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_235B8(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_29C28(a2);
    *v2 = v19;
  }

  else
  {
    v9 = *v2;
    v10 = sub_20F00(a2);
    LOBYTE(v9) = v11;
    result = sub_29C28(a2);
    if (v9)
    {
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v20 = *v3;
      if (!v13)
      {
        sub_23FC4();
        v14 = v20;
      }

      v15 = (*(v14 + 48) + 56 * v10);
      v16 = v15[2];
      v17 = v15[4];
      v18 = v15[6];

      result = sub_22BB4(v10, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_34A4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t variable initialization expression of AXHapticMusicServer.statusObservers()
{
  type metadata accessor for AXHapticMusicServer.StatusObservers();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2457C(&_swiftEmptyArrayStorage);
  return v0;
}

id static AXHapticMusicServer.sharedInstance()()
{
  if (qword_39898 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

uint64_t sub_35DC()
{
  v1 = sub_2B8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v42 = OBJC_IVAR___AXHapticMusicServer_isSessionValid;
  v0[OBJC_IVAR___AXHapticMusicServer_isSessionValid] = 1;
  v39 = v6;
  v7 = [v6 currentRoute];
  v8 = [v7 outputs];

  v38 = sub_2ACCC(0, &qword_39530, AVAudioSessionPortDescription_ptr);
  v9 = sub_2BAA0();

  v40 = v2;
  v41 = v1;
  v43 = v5;
  v44 = v0;
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_25:
    v11 = sub_2BD60();
  }

  else
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  v12 = 0;
  v45 = v9;
  v13 = v9 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_2BD00();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_24;
      }

      v14 = *(v45 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = [v14 portType];
    v16 = sub_2B9F0();
    v18 = v17;
    if (v16 == sub_2B9F0() && v18 == v19)
    {

LABEL_17:
      v44[v42] = 0;
      break;
    }

    v21 = sub_2BDC0();

    ++v12;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v22 = v41;
  v23 = sub_25AC(v41, HMLog);
  swift_beginAccess();
  v24 = v40;
  v25 = v43;
  (*(v40 + 16))(v43, v23, v22);
  v26 = v44;
  v27 = v44;

  v28 = sub_2B890();
  v29 = sub_2BB40();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 67109378;
    *(v31 + 4) = v26[v42];

    *(v31 + 8) = 2080;
    v33 = sub_2BAB0();
    v35 = v34;

    v36 = sub_20958(v33, v35, &v46);

    *(v31 + 10) = v36;
    _os_log_impl(&dword_0, v28, v29, "Handling media session valid status: %{BOOL}d %s", v31, 0x12u);
    sub_2566C(v32);

    return (*(v30 + 8))(v43, v22);
  }

  else
  {

    return (*(v24 + 8))(v25, v22);
  }
}

uint64_t sub_3A5C()
{
  v1 = sub_2B8F0();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2B920();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B940();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = [objc_allocWithZone(STMediaStatusDomain) init];
  v16 = OBJC_IVAR___AXHapticMusicServer_mediaDomain;
  v17 = *&v0[OBJC_IVAR___AXHapticMusicServer_mediaDomain];
  *&v0[OBJC_IVAR___AXHapticMusicServer_mediaDomain] = v15;

  v18 = *&v0[v16];
  if (v18)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_25DDC;
    v43 = v19;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_46D8;
    v41 = &unk_35428;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    [v21 observeData:v20];
    _Block_release(v20);
  }

  v22 = *&v0[OBJC_IVAR___AXHapticMusicServer_queue];
  sub_2B930();
  sub_2B950();
  v30 = *(v8 + 8);
  v30(v12, v7);
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  v42 = sub_2B61C;
  v43 = v23;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_2B614;
  v41 = &unk_35478;
  v24 = _Block_copy(&aBlock);
  v25 = v0;
  v26 = v31;
  sub_2B900();
  v37 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  v27 = v34;
  v28 = v36;
  sub_2BC80();
  sub_2BBA0();
  _Block_release(v24);

  (*(v35 + 8))(v27, v28);
  (*(v32 + 8))(v26, v33);
  v30(v14, v7);
}

uint64_t sub_3F1C()
{
  v0 = sub_2B8F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B920();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B940();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v32 = *(result + OBJC_IVAR___AXHapticMusicServer_queue);
    sub_2B930();
    v31 = v16;
    sub_2B950();
    v19 = *(v10 + 8);
    v30 = v10 + 8;
    v33 = v19;
    v19(v14, v9);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    aBlock[4] = sub_25DE4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_354C8;
    v21 = _Block_copy(aBlock);
    v29 = v18;
    sub_2B900();
    v35 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    v22 = v0;
    v27 = v5;
    v28 = v9;
    v23 = v34;
    v24 = v8;
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    sub_2BC80();
    v26 = v31;
    v25 = v32;
    sub_2BBA0();
    _Block_release(v21);

    (*(v1 + 8))(v4, v22);
    (*(v23 + 8))(v24, v27);
    v33(v26, v28);
  }

  return result;
}

void sub_432C(void *a1)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = OBJC_IVAR___AXHapticMusicServer_isCameraActive;
    v35 = v2[OBJC_IVAR___AXHapticMusicServer_isCameraActive];
    v10 = a1;
    v11 = [v10 cameraAttributions];
    sub_2ACCC(0, &qword_39538, STMediaStatusDomainCameraCaptureAttribution_ptr);
    v12 = sub_2BAA0();

    if (v12 >> 62)
    {
      v13 = sub_2BD60();
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    v2[v9] = v13 > 0;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v14 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);
    v15 = v10;
    v16 = v2;
    v17 = sub_2B890();
    v18 = sub_2BB40();

    v19 = os_log_type_enabled(v17, v18);
    v34 = v15;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v32 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = v9;
      v23 = v22;
      v36 = v22;
      *v21 = 67109378;
      *(v21 + 4) = v2[v33];

      *(v21 + 8) = 2080;
      v24 = [v15 cameraAttributions];
      v31 = v4;
      v25 = v24;
      sub_2BAA0();

      v26 = sub_2BAB0();
      v28 = v27;

      v29 = sub_20958(v26, v28, &v36);

      *(v21 + 10) = v29;
      _os_log_impl(&dword_0, v17, v18, "Camera active: %{BOOL}d for: %s", v21, 0x12u);
      sub_2566C(v23);
      v9 = v33;

      (*(v32 + 8))(v8, v31);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    if (v35 != v2[v9])
    {
      sub_4760(0xD000000000000016, 0x800000000002E020);
    }
  }

  else
  {
    v2[OBJC_IVAR___AXHapticMusicServer_isCameraActive] = 0;
  }
}

void sub_46D8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(a2, a3);

  swift_unknownObjectRelease();
}

void sub_4760(uint64_t a1, void *a2)
{
  v40._countAndFlagsBits = a1;
  v40._object = a2;
  v44 = sub_2B8B0();
  v3 = *(v44 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v44);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - v8;
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 thermalState];

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v14 = v44;
  v15 = sub_25AC(v44, HMLog);
  swift_beginAccess();
  v16 = v3[2];
  v41 = v15;
  v42 = v16;
  v16(v11, v15, v14);
  v43 = v2;
  v17 = sub_2B890();
  v18 = sub_2BB70();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v13;
    v20 = v43;
    v38 = v9;
    v21 = v3;
    v22 = v13 != &dword_0 + 3;
    v23 = swift_slowAlloc();
    *v23 = 67110400;
    *(v23 + 4) = _AXSHapticMusicEnabled() != 0;
    *(v23 + 8) = 1024;
    *(v23 + 10) = *(&v20->isa + OBJC_IVAR___AXHapticMusicServer_isActive);
    *(v23 + 14) = 1024;
    *(v23 + 16) = *(&v20->isa + OBJC_IVAR___AXHapticMusicServer_isSessionValid);
    *(v23 + 20) = 1024;
    *(v23 + 22) = v22;
    v3 = v21;
    v9 = v38;
    *(v23 + 26) = 1024;
    *(v23 + 28) = *(&v20->isa + OBJC_IVAR___AXHapticMusicServer_siriActive);
    *(v23 + 32) = 1024;
    *(v23 + 34) = *(&v20->isa + OBJC_IVAR___AXHapticMusicServer_isCameraActive);

    _os_log_impl(&dword_0, v17, v18, "Checking status of server: Enabled: %{BOOL}d, active: %{BOOL}d, session valid: %{BOOL}d, thermal state: %{BOOL}d, siri active: %{BOOL}d, camera active: %{BOOL}d", v23, 0x26u);
  }

  else
  {

    v17 = v43;
    v19 = v13;
  }

  v24 = v11;
  v25 = v3[1];
  v25(v24, v44);
  if (v19 == &dword_0 + 3 || (*(&v43->isa + OBJC_IVAR___AXHapticMusicServer_siriActive) & 1) != 0 || *(&v43->isa + OBJC_IVAR___AXHapticMusicServer_isCameraActive) == 1)
  {
    v42(v9, v41, v44);
    v26 = sub_2B890();
    v27 = sub_2BB70();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "System in state where haptics can't play", v28, 2u);
    }

    v25(v9, v44);
    v29 = v43;
    AXHapticMusicServer.stopHapticMusic()();
    v30 = *(&v29->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v30)
    {
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_2B748;
      v50 = v31;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v32 = &unk_356D0;
LABEL_13:
      v47 = sub_2B744;
      v48 = v32;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v34 stopWithCompletionHandler:v33];
      _Block_release(v33);
    }
  }

  else if (_AXSHapticMusicEnabled() && *(&v43->isa + OBJC_IVAR___AXHapticMusicServer_isActive) == 1 && *(&v43->isa + OBJC_IVAR___AXHapticMusicServer_isSessionValid) == 1)
  {
    AXHMEnableControlCenterModule();
    sub_4E94();
    if (*(&v43->isa + OBJC_IVAR___AXHapticMusicServer_isEnabled) == 1)
    {
      sub_54CC(v40._countAndFlagsBits, v40._object);
    }

    else
    {
      sub_5A68(1);
      AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(v40);
    }
  }

  else
  {
    v35 = v43;
    sub_5A68(0);
    AXHapticMusicServer.stopHapticMusic()();
    v30 = *(&v35->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v30)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_2B748;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v32 = &unk_356A8;
      goto LABEL_13;
    }
  }
}

void sub_4E94()
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AXHapticMusicServer_engine;
  if (!*&v0[OBJC_IVAR___AXHapticMusicServer_engine])
  {
    v8 = [objc_opt_self() auxiliarySession];
    v9 = OBJC_IVAR___AXHapticMusicServer_audioSession;
    v10 = *&v0[OBJC_IVAR___AXHapticMusicServer_audioSession];
    *&v0[OBJC_IVAR___AXHapticMusicServer_audioSession] = v8;

    v11 = *&v0[v9];
    if (v11)
    {
      aBlock = 0;
      if (![v11 setCategory:AVAudioSessionCategoryAmbient withOptions:1 error:&aBlock])
      {
        v42 = aBlock;
        sub_2B7D0();

        swift_willThrow();
        return;
      }

      v12 = aBlock;
    }

    v13 = [objc_opt_self() defaultCenter];
    [v13 addObserver:v0 selector:"handleAudioSessionInterruptionNotificationWithNotification:" name:AVAudioSessionInterruptionNotification object:*&v0[v9]];

    v14 = *&v0[v9];
    v15 = objc_allocWithZone(CHHapticEngine);
    aBlock = 0;
    v16 = v14;
    v17 = [v15 initWithAudioSession:v16 error:&aBlock];
    v18 = aBlock;
    if (v17)
    {

      v19 = *&v0[v7];
      *&v0[v7] = v17;

      if (qword_39890 != -1)
      {
        swift_once();
      }

      v20 = sub_25AC(v2, HMLog);
      swift_beginAccess();
      (*(v3 + 16))(v6, v20, v2);
      v21 = v0;
      v22 = v0;
      v23 = sub_2B890();
      v24 = sub_2BB70();
      v45 = v21;

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v44 = v1;
        v26 = v25;
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = *&v22[v7];
        *(v26 + 4) = v28;
        *v27 = v28;
        v29 = v28;
        _os_log_impl(&dword_0, v23, v24, "Make engine: %@", v26, 0xCu);
        sub_2AF20(v27, &qword_391A8, &qword_2CDE8);
      }

      (*(v3 + 8))(v6, v2);
      v30 = *&v22[v7];
      if (v30)
      {
        v31 = v30;
        [v31 setPlaysHapticsOnly:1];
        [v31 setAutoShutdownEnabled:0];
        v32 = swift_allocObject();
        v33 = v45;
        *(v32 + 16) = v45;
        v34 = swift_allocObject();
        v34[2] = v33;
        v34[3] = sub_260B8;
        v34[4] = v32;
        v50 = sub_260D8;
        v51 = v34;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_9CD0;
        v49 = &unk_35748;
        v35 = _Block_copy(&aBlock);
        v36 = v33;

        [v31 setStoppedHandler:v35];
        _Block_release(v35);
        v37 = swift_allocObject();
        *(v37 + 16) = sub_260B8;
        *(v37 + 24) = v32;
        v50 = sub_2611C;
        v51 = v37;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_2B614;
        v49 = &unk_35798;
        v38 = _Block_copy(&aBlock);

        [v31 setResetHandler:v38];
        _Block_release(v38);
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        v50 = sub_26124;
        v51 = v39;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_A25C;
        v49 = &unk_357E8;
        v40 = _Block_copy(&aBlock);
        v41 = v36;

        [v31 notifyWhenPlayersFinished:v40];
        _Block_release(v40);
      }
    }

    else
    {
      v43 = v18;
      sub_2B7D0();

      swift_willThrow();
    }
  }
}

void sub_54CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2B8B0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v42 - v13;
  __chkstk_darwin(v12);
  v16 = v42 - v15;
  v17 = OBJC_IVAR___AXHapticMusicServer_isEnabled;
  if (v3[OBJC_IVAR___AXHapticMusicServer_isEnabled] == 1 && v3[OBJC_IVAR___AXHapticMusicServer_isActive] == 1 && _AXSHapticMusicEnabled())
  {
    v45 = a1;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v18 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    v44 = v7[2];
    v44(v14, v18, v6);

    v19 = sub_2B890();
    v20 = sub_2BB70();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42[1] = v7 + 2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v43 = v18;
      v24 = v23;
      aBlock[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20958(v45, a2, aBlock);
      _os_log_impl(&dword_0, v19, v20, "Music state changed, Requesting now playing client %s", v22, 0xCu);
      sub_2566C(v24);
      v18 = v43;
    }

    v25 = v7[1];
    v25(v14, v6);
    Current = CFAbsoluteTimeGetCurrent();
    v27 = OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight;
    if (Current - *&v3[OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight] >= 10.0)
    {
      *&v3[v27] = CFAbsoluteTimeGetCurrent();
      MRMediaRemoteGetLocalOrigin();
      v36 = *&v3[OBJC_IVAR___AXHapticMusicServer_queue];
      v37 = swift_allocObject();
      v38 = v45;
      v37[2] = v3;
      v37[3] = v38;
      v37[4] = a2;
      aBlock[4] = sub_27A3C;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_12670;
      aBlock[3] = &unk_35A18;
      v39 = _Block_copy(aBlock);
      v40 = v3;

      v41 = v36;

      MRMediaRemoteGetNowPlayingClientForOrigin();
      _Block_release(v39);
    }

    else
    {
      v44(v11, v18, v6);
      v28 = sub_2B890();
      v29 = sub_2BB40();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Already trying to fetch now playing, let's wait", v30, 2u);
      }

      v25(v11, v6);
    }
  }

  else
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v31 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    (v7[2])(v16, v31, v6);
    v32 = v3;
    v33 = sub_2B890();
    v34 = sub_2BB70();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109632;
      *(v35 + 4) = v3[v17];
      *(v35 + 8) = 1024;
      *(v35 + 10) = *(&v32->isa + OBJC_IVAR___AXHapticMusicServer_isActive);

      *(v35 + 14) = 1024;
      *(v35 + 16) = _AXSHapticMusicEnabled() != 0;
      _os_log_impl(&dword_0, v33, v34, "Music state changed, but not processing because its off %{BOOL}d %{BOOL}d %{BOOL}d", v35, 0x14u);
    }

    else
    {

      v33 = v32;
    }

    (v7[1])(v16, v6);
  }
}

void sub_5A68(char a1)
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  sub_2CC4(&qword_39568, &qword_2D0A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2CD30;
  v4 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingInfoDidChangeNotification)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 32) = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
  v5 = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + 40) = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
  v6 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v3 + 48) = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
  v7 = kMRMediaRemoteNowPlayingPlayerDidChange;
  if (!kMRMediaRemoteNowPlayingPlayerDidChange)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 56) = kMRMediaRemoteNowPlayingPlayerDidChange;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  sub_6D7C(a1 & 1, v8);

  v13 = CFNotificationCenterGetLocalCenter();
  v14 = v13;
  if ((a1 & 1) == 0)
  {
    if (kMRMediaRemoteNowPlayingApplicationDidChangeNotification)
    {
      CFNotificationCenterRemoveObserver(v13, v1, kMRMediaRemoteNowPlayingApplicationDidChangeNotification, 0);
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

  CFNotificationCenterAddObserver(v13, v1, sub_1091C, kMRMediaRemoteNowPlayingApplicationDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
LABEL_9:
}

void sub_5BCC(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v7 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_2B890();
    v9 = sub_2BB70();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      v11 = [objc_opt_self() processInfo];
      v12 = [v11 thermalState];

      *(v10 + 4) = v12;
      _os_log_impl(&dword_0, v8, v9, "Updating thermal state to %ld", v10, 0xCu);
    }

    (*(v3 + 8))(v6, v2);
    sub_4760(0x206C616D72656874, 0xEE00737574617473);
  }
}

void sub_5E64(char a1)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - v10;
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v12 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v11, v12, v4);
    v13 = sub_2B890();
    v14 = sub_2BB70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Interrupt started", v15, 2u);
    }

    (*(v5 + 8))(v11, v4);
    AXHapticMusicServer.stopHapticMusic()();
    v16 = *(v2 + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v16)
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_25EF8;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_35590;
      v18 = _Block_copy(aBlock);
      v19 = v16;

      [v19 stopWithCompletionHandler:v18];
      _Block_release(v18);
    }
  }

  else
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v20 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v9, v20, v4);
    v21 = sub_2B890();
    v22 = sub_2BB70();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Interrupt ended", v23, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v24._object = 0x800000000002E060;
    v24._countAndFlagsBits = 0xD000000000000017;
    AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(v24);
    sub_4760(0xD000000000000017, 0x800000000002E080);
  }
}

uint64_t sub_6240(void *a1)
{
  v2 = sub_2B8F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B920();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B8B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 userInfo];
  if (result)
  {
    v41 = v8;
    v42 = v3;
    v43 = v7;
    v18 = result;
    v19 = sub_2B9A0();

    v46 = sub_2B9F0();
    v47 = v20;
    sub_2BCC0();
    if (*(v19 + 16) && (v21 = sub_2103C(aBlock), (v22 & 1) != 0))
    {
      sub_25098(*(v19 + 56) + 32 * v21, v48);
      sub_25044(aBlock);

      result = swift_dynamicCast();
      if (result)
      {
        v39 = v46;
        if (qword_39890 != -1)
        {
          swift_once();
        }

        v23 = sub_25AC(v12, HMLog);
        swift_beginAccess();
        (*(v13 + 16))(v16, v23, v12);
        v24 = a1;
        v25 = sub_2B890();
        v26 = sub_2BB70();

        v40 = v25;
        v27 = os_log_type_enabled(v25, v26);
        v28 = v43;
        if (v27)
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v24;
          *v30 = v24;
          v31 = v24;
          _os_log_impl(&dword_0, v40, v26, "Handling interrupt %@", v29, 0xCu);
          sub_2AF20(v30, &qword_391A8, &qword_2CDE8);
          v28 = v43;
        }

        (*(v13 + 8))(v16, v12);
        v32 = v44;
        v33 = *&v44[OBJC_IVAR___AXHapticMusicServer_queue];
        v34 = swift_allocObject();
        v35 = v39;
        *(v34 + 16) = v32;
        *(v34 + 24) = v35;
        aBlock[4] = sub_25EC8;
        aBlock[5] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2B614;
        aBlock[3] = &unk_35568;
        v36 = _Block_copy(aBlock);
        v37 = v33;
        v38 = v32;
        sub_2B900();
        v46 = &_swiftEmptyArrayStorage;
        sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
        sub_2CC4(&qword_39168, &qword_2CDD0);
        sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
        sub_2BC80();
        sub_2BBE0();
        _Block_release(v36);

        (*(v42 + 8))(v6, v2);
        (*(v41 + 8))(v11, v28);
      }
    }

    else
    {

      return sub_25044(aBlock);
    }
  }

  return result;
}

uint64_t sub_6864(void *a1)
{
  v2 = v1;
  v4 = sub_2B8F0();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B920();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B8B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v17 = sub_25AC(v12, HMLog);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = a1;
  v19 = sub_2B890();
  v20 = sub_2BB40();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&dword_0, v19, v20, "Active route changed %@", v22, 0xCu);
    sub_2AF20(v23, &qword_391A8, &qword_2CDE8);

    v2 = v33;
  }

  (*(v13 + 8))(v16, v12);
  v25 = *&v2[OBJC_IVAR___AXHapticMusicServer_queue];
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  aBlock[4] = sub_25E50;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35518;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  v29 = v2;
  sub_2B900();
  v38 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  v30 = v37;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v27);

  (*(v36 + 8))(v7, v30);
  (*(v34 + 8))(v11, v35);
}

void sub_6D7C(char a1, unint64_t a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___AXHapticMusicServer_observersEnabled;
  if (v3[OBJC_IVAR___AXHapticMusicServer_observersEnabled] != v6)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v13 = sub_25AC(v7, HMLog);
    swift_beginAccess();
    (*(v8 + 16))(v11, v13, v7);

    v14 = sub_2B890();
    v15 = sub_2BB40();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = v12;
      v17 = v16;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v17 = 67109378;
      *(v17 + 4) = a1 & 1;
      *(v17 + 8) = 2080;
      type metadata accessor for CFString(0);
      v18 = sub_2BAB0();
      v20 = sub_20958(v18, v19, &v37);
      v34 = v14;
      v21 = v15;
      v22 = v20;

      *(v17 + 10) = v22;
      v23 = v34;
      _os_log_impl(&dword_0, v34, v21, "Updating observers %{BOOL}d %s: ", v17, 0x12u);
      sub_2566C(v35);

      v12 = v36;
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    v3[v12] = a1 & 1;
    if (a2 >> 62)
    {
      v24 = sub_2BD60();
      if (!v24)
      {
        return;
      }
    }

    else
    {
      v24 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        return;
      }
    }

    if (v24 < 1)
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v24; ++i)
      {
        v26 = sub_2BD00();
        v27 = CFNotificationCenterGetLocalCenter();
        v28 = v27;
        if (a1)
        {
          CFNotificationCenterAddObserver(v27, v3, sub_105CC, v26, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

        else
        {
          CFNotificationCenterRemoveObserver(v27, v3, v26, 0);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v29 = (a2 + 32);
      do
      {
        v30 = *v29;
        v31 = CFNotificationCenterGetLocalCenter();
        v32 = v31;
        if (a1)
        {
          CFNotificationCenterAddObserver(v31, v3, sub_105CC, v30, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

        else
        {
          CFNotificationCenterRemoveObserver(v31, v3, v30, 0);
        }

        ++v29;
        --v24;
      }

      while (v24);
    }
  }
}

id sub_7140()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedAVSystemController];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  sub_2CC4(&qword_39528, &qword_2D080);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2CD40;
  v10 = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  v11 = AVSystemController_ActiveAudioRouteDidChangeNotification;
  *(v9 + 32) = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  *(v9 + 40) = v11;
  v12 = AVSystemController_CarPlayAuxStreamSupportDidChangeNotification;
  *(v9 + 48) = AVSystemController_CarPlayAuxStreamSupportDidChangeNotification;
  type metadata accessor for Name(0);
  v55 = v10;
  v13 = v11;
  v14 = v12;
  isa = sub_2BA80().super.isa;

  aBlock = 0;
  v16 = [v8 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:&aBlock];

  if (v16)
  {
    v17 = aBlock;
  }

  else
  {
    v18 = aBlock;
    sub_2B7D0();

    swift_willThrow();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v19 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v19, v2);
    swift_errorRetain();
    v20 = sub_2B890();
    v21 = sub_2BB60();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v54 = v14;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_0, v20, v21, "Could not register carplay connected %@", v23, 0xCu);
      sub_2AF20(v24, &qword_391A8, &qword_2CDE8);

      v14 = v54;
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  v26 = objc_opt_self();
  v27 = [v26 defaultCenter];
  [v27 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v13 object:0];

  v28 = [v26 defaultCenter];
  [v28 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v55 object:0];

  v29 = [v26 defaultCenter];
  [v29 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v14 object:0];

  sub_3A5C();
  sub_35DC();
  v30 = [v26 defaultCenter];
  [v30 addObserver:v1 selector:"thermalStatusChangedWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

  v31 = objc_opt_self();
  v32 = [v31 sharedInstance];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_25BD4;
  v61 = v33;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_2B614;
  v59 = &unk_35248;
  v34 = _Block_copy(&aBlock);

  [v32 registerUpdateBlock:v34 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v34);

  v35 = [v31 sharedInstance];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_25C1C;
  v61 = v36;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_2B614;
  v59 = &unk_35270;
  v37 = _Block_copy(&aBlock);

  [v35 registerUpdateBlock:v37 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v37);

  v38 = [v31 sharedInstance];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_25C64;
  v61 = v39;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_2B614;
  v59 = &unk_35298;
  v40 = _Block_copy(&aBlock);

  [v38 registerUpdateBlock:v40 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v40);

  v41 = [v31 sharedInstance];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_25CAC;
  v61 = v42;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_2B614;
  v59 = &unk_352C0;
  v43 = _Block_copy(&aBlock);

  [v41 registerUpdateBlock:v43 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v43);

  sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  v44 = sub_2BBD0();
  v45 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:v44];

  v46 = OBJC_IVAR___AXHapticMusicServer_notificationTimer;
  v47 = *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer) = v45;

  v48 = *(v1 + v46);
  if (v48)
  {
    [v48 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v49 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:*(v1 + OBJC_IVAR___AXHapticMusicServer_queue)];
  v50 = OBJC_IVAR___AXHapticMusicServer_shutdownTimer;
  v51 = *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer) = v49;

  result = *(v1 + v50);
  if (result)
  {
    return [result setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return result;
}

uint64_t sub_7A18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_7A5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v5 = sub_2B8F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B920();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B8B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v32 = v11;
    v34 = v6;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v33 = v10;
    v22 = sub_25AC(v15, HMLog);
    swift_beginAccess();
    (*(v16 + 16))(v19, v22, v15);
    v23 = sub_2B890();
    v24 = sub_2BB70();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, v35, v25, 2u);
    }

    (*(v16 + 8))(v19, v15);
    v26 = *&v21[OBJC_IVAR___AXHapticMusicServer_queue];
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    aBlock[4] = v37;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = v38;
    v28 = _Block_copy(aBlock);
    v29 = v26;
    v30 = v21;
    sub_2B900();
    v39 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v28);

    (*(v34 + 8))(v9, v5);
    (*(v32 + 8))(v14, v33);
  }

  return result;
}

void sub_7ED4()
{
  v0 = sub_2B8F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B920();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v32 = v6;
    v33 = v5;
    v17 = [objc_opt_self() sharedInstance];
    v18 = [v17 hapticMusicActive];

    if (v18 == v16[OBJC_IVAR___AXHapticMusicServer_isActive])
    {
    }

    else
    {
      v30 = v1;
      v16[OBJC_IVAR___AXHapticMusicServer_isActive] = v18;
      if (qword_39890 != -1)
      {
        swift_once();
      }

      v31 = v0;
      v19 = sub_25AC(v10, HMLog);
      swift_beginAccess();
      (*(v11 + 16))(v14, v19, v10);
      v20 = sub_2B890();
      v21 = sub_2BB70();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v18;
        _os_log_impl(&dword_0, v20, v21, "Haptic Music active state changed to: %{BOOL}d", v22, 8u);
      }

      (*(v11 + 8))(v14, v10);
      v23 = *&v16[OBJC_IVAR___AXHapticMusicServer_queue];
      v24 = swift_allocObject();
      *(v24 + 16) = v16;
      aBlock[4] = sub_25CB4;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35310;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      v27 = v16;
      sub_2B900();
      v34 = &_swiftEmptyArrayStorage;
      sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
      sub_2CC4(&qword_39168, &qword_2CDD0);
      sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
      v28 = v31;
      sub_2BC80();
      sub_2BBE0();
      _Block_release(v25);

      (*(v30 + 8))(v4, v28);
      (*(v32 + 8))(v9, v33);

      sub_2B980();
      sub_2B970();
      sub_2B960();
    }
  }
}

char *sub_83FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2CC4(&qword_39500, &qword_2D070);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v54 - v4;
  v64 = sub_2CC4(&qword_39508, &qword_2D078);
  v63 = *(v64 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v64);
  v61 = &v54 - v6;
  v66 = sub_2BC20();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v66);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2B8F0();
  v58 = *(v59 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2BBC0();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v77);
  v76 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2BB90();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v55 = sub_2B920();
  v54 = *(v55 - 8);
  v16 = *(v54 + 64);
  __chkstk_darwin(v55);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 0;
  v19 = OBJC_IVAR___AXHapticMusicServer_isActive;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 hapticMusicActive];

  *(v1 + v19) = v21;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isSessionValid) = 1;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_HapticEngineTimeout) = 0x4034000000000000;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_engine) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_players) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentMetadata) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_audioSession) = 0;
  v22 = v1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier;
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0xE000000000000000;
  v23[3] = 0;
  v23[4] = 0xE000000000000000;
  v23[5] = 0;
  v23[6] = 0xE000000000000000;
  v78 = OBJC_IVAR___AXHapticMusicServer_queue;
  v79 = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  v75 = "com.apple.music.classical";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v24 = sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes);
  v25 = sub_2CC4(&qword_39130, &qword_2CD90);
  v26 = sub_25B40(&qword_39138, &qword_39130, &qword_2CD90);
  v71 = v14;
  v72 = v25;
  v73 = v24;
  v74 = v26;
  sub_2BC80();
  v68 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v69 = *(v11 + 104);
  v70 = v11 + 104;
  v27 = v76;
  v28 = v77;
  v69(v76);
  *(v1 + v78) = sub_2BBF0();
  v75 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue;
  v67 = "ibility.AXHapticMusicServer";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2BC80();
  v29 = v68;
  v30 = v69;
  (v69)(v27, v68, v28);
  *&v75[v1] = sub_2BBF0();
  *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer) = 0;
  v75 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue;
  v67 = "MusicServer.AHAPAvailable";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2BC80();
  v30(v27, v29, v77);
  *&v75[v1] = sub_2BBF0();
  v31 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  *(v1 + v31) = sub_2440C(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_hapticSubscriptions) = &_swiftEmptySetSingleton;
  v32 = OBJC_IVAR___AXHapticMusicServer_supportedClients;
  *(v1 + v32) = sub_24BA4(&_swiftEmptyArrayStorage, &qword_39580, &qword_2D0B8);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActive) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_cachedIntensity) = 1065353216;
  v33 = OBJC_IVAR___AXHapticMusicServer_statusObservers;
  type metadata accessor for AXHapticMusicServer.StatusObservers();
  v34 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v34 + 112) = sub_2457C(&_swiftEmptyArrayStorage);
  *(v1 + v33) = v34;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isCameraActive) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_mediaDomain) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer____lazy_storage___displayManager) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_observersEnabled) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight) = 0;
  v35 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
  *(v1 + v35) = sub_2469C(&_swiftEmptyArrayStorage);
  result = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:*(v1 + v78)];
  if (result)
  {
    *(v1 + OBJC_IVAR___AXHapticMusicServer_playbackStatisticsTimer) = result;
    v82.receiver = v1;
    v82.super_class = ObjectType;
    v37 = objc_msgSendSuper2(&v82, "init");
    v38 = *&v37[OBJC_IVAR___AXHapticMusicServer_queue];
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    aBlock[4] = sub_25A64;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_351F8;
    v40 = _Block_copy(aBlock);
    v41 = v37;
    v42 = v38;
    sub_2B900();
    v80 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    v43 = v57;
    v44 = v59;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v40);

    (*(v58 + 8))(v43, v44);
    (*(v54 + 8))(v18, v55);

    v45 = [objc_opt_self() defaultCenter];
    v46 = sub_2BB80();
    v47 = v62;
    sub_2BC30();

    v48 = sub_2BBD0();
    aBlock[0] = v48;
    v49 = sub_2BBB0();
    v50 = v60;
    (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
    sub_254AC(&qword_39510, &type metadata accessor for NSNotificationCenter.Publisher);
    sub_25AD8();
    v51 = v61;
    v52 = v66;
    sub_2B8D0();
    sub_2AF20(v50, &qword_39500, &qword_2D070);

    sub_25B40(&qword_39520, &qword_39508, &qword_2D078);
    v53 = v64;
    sub_2B8E0();
    (*(v63 + 8))(v51, v53);
    swift_beginAccess();
    sub_2B8C0();
    swift_endAccess();

    (*(v65 + 8))(v47, v52);
    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HapticMusicSiriActionSource.__allocating_init(delegate:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithDelegate:a1];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_9130()
{
  sub_2B980();
  sub_2B970();
  sub_2B960();
}

uint64_t sub_91B4(char *a1)
{
  v2 = sub_2B8F0();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2B920();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___AXHapticMusicServer_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_26144;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35838;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = a1;
  sub_2B900();
  v19 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v12);

  (*(v18 + 8))(v5, v2);
  (*(v6 + 8))(v9, v17);
}

uint64_t sub_9494(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (__chkstk_darwin)();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v10 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_2B890();
  v13 = sub_2BB70();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v3;
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Engine stopped handler called. Resetting", v14, 2u);
    v3 = v26;
  }

  v15 = v3[1];
  v15(v9, v2);
  v16 = *(a1 + OBJC_IVAR___AXHapticMusicServer_audioSession);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_audioSession) = 0;

  v17 = (a1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  v18 = *(a1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 16);
  v19 = *(a1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 32);
  v20 = *(a1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 48);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  v17[3] = 0;
  v17[4] = 0xE000000000000000;
  v17[5] = 0;
  v17[6] = 0xE000000000000000;

  sub_97B0();
  v21 = *(a1 + OBJC_IVAR___AXHapticMusicServer_engine);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_engine) = 0;

  v11(v7, v10, v2);
  v22 = sub_2B890();
  v23 = sub_2BB40();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Engine stop: Music State Change", v24, 2u);
  }

  v15(v7, v2);
  return sub_4760(0xD000000000000015, 0x800000000002E130);
}

uint64_t sub_97B0()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v7 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2B890();
  v9 = sub_2BB40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Clearing all the haptic players", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR___AXHapticMusicServer_players;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (v12 < 0)
  {
    v20 = *(v1 + v11);
  }

  v13 = sub_2BD60();
  if (v13)
  {
LABEL_7:
    if (v13 < 1)
    {
      __break(1u);
    }

    v21 = v1;

    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = sub_2BD00();
      }

      else
      {
        v16 = *(v12 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      v22 = 0;
      if ([v16 stopAtTime:&v22 error:0.0])
      {
        v15 = v22;
      }

      else
      {
        v17 = v22;
        sub_2B7D0();

        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }

    v1 = v21;
  }

LABEL_17:
  v18 = *(v1 + v11);
  *(v1 + v11) = &_swiftEmptyArrayStorage;

  *(v1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = 0;
  return result;
}

void sub_9ADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_2B8B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v10 = sub_25AC(v5, HMLog);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2B890();
  v12 = sub_2BB70();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_0, v11, v12, "Stop Handler: The engine stopped for reason: %ld", v13, 0xCu);
  }

  v14 = (*(v6 + 8))(v9, v5);
  if (a1 == 1)
  {
    sub_5E64(1);
  }

  else
  {
    a3(v14);
  }
}

uint64_t sub_9CD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_9D24(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v7 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2B890();
  v9 = sub_2BB70();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Reset Handler:", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return a1(v11);
}

uint64_t sub_9EE4(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = &unk_39000;
  if (a1)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v11 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v9, v11, v2);
    swift_errorRetain();
    v12 = sub_2B890();
    v13 = sub_2BB70();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_0, v12, v13, "Player finished error: %@", v14, 0xCu);
      sub_2AF20(v15, &qword_391A8, &qword_2CDE8);

      v10 = &unk_39000;
    }

    else
    {
    }

    (*(v3 + 8))(v9, v2);
  }

  if (v10[274] != -1)
  {
    swift_once();
  }

  v17 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v7, v17, v2);
  v18 = sub_2B890();
  v19 = sub_2BB40();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Players finished", v20, 2u);
  }

  (*(v3 + 8))(v7, v2);
  return sub_97B0();
}

uint64_t sub_A25C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

uint64_t sub_A34C()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247FC(&_swiftEmptyArrayStorage);
  *&v62 = 0x44496D616461;
  *(&v62 + 1) = 0xE600000000000000;
  sub_2BCC0();
  v8 = (v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  v9 = *(v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  v63 = &type metadata for Int64;
  *&v62 = v9;
  sub_2A5C4(&v62, &v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v7;
  sub_22FC8(&v64, v66, isUniquelyReferenced_nonNull_native);
  sub_25044(v66);
  v11 = *&v61[0];
  *&v62 = 1668445033;
  *(&v62 + 1) = 0xE400000000000000;
  sub_2BCC0();
  v12 = v8[1];
  v13 = v8[2];
  v63 = &type metadata for String;
  *&v62 = v12;
  *(&v62 + 1) = v13;
  sub_2A5C4(&v62, &v64);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v11;
  sub_22FC8(&v64, v66, v14);
  sub_25044(v66);
  v15 = *&v61[0];
  *&v62 = 0x656C746974;
  *(&v62 + 1) = 0xE500000000000000;
  sub_2BCC0();
  v16 = v8[3];
  v17 = v8[4];
  v63 = &type metadata for String;
  *&v62 = v16;
  *(&v62 + 1) = v17;
  sub_2A5C4(&v62, &v64);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v15;
  sub_22FC8(&v64, v66, v18);
  sub_25044(v66);
  v19 = *&v61[0];
  *&v62 = 0x747369747261;
  *(&v62 + 1) = 0xE600000000000000;
  sub_2BCC0();
  v20 = v8[5];
  v21 = v8[6];
  v63 = &type metadata for String;
  *&v62 = v20;
  *(&v62 + 1) = v21;
  sub_2A5C4(&v62, &v64);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v19;
  sub_22FC8(&v64, v66, v22);
  sub_25044(v66);
  v23 = *&v61[0];
  v67 = *&v61[0];
  v24 = *(v1 + OBJC_IVAR___AXHapticMusicServer_currentMetadata);
  if (!v24)
  {
    goto LABEL_36;
  }

  *&v62 = 0x6E6F6973726576;
  *(&v62 + 1) = 0xE700000000000000;

  sub_2BCC0();
  *&v64 = 0x5F73636974706168;
  *(&v64 + 1) = 0xEF6E6F6973726576;
  sub_2BCC0();
  if (*(v24 + 16) && (v25 = sub_2103C(&v62), (v26 & 1) != 0))
  {
    sub_25098(*(v24 + 56) + 32 * v25, &v64);
    sub_25044(&v62);
    sub_2A5C4(&v64, v61);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v23;
    sub_22FC8(v61, v66, v27);
    sub_25044(v66);
    v67 = v60;
  }

  else
  {
    sub_25044(&v62);
    sub_213F0(v66, &v64);
    sub_25044(v66);
    sub_2AF20(&v64, &qword_39590, &qword_2D0C8);
  }

  *&v62 = 0x4464657461657263;
  *(&v62 + 1) = 0xEB00000000657461;
  sub_2BCC0();
  *&v64 = 0x5F64657461657263;
  *(&v64 + 1) = 0xEA00000000006E6FLL;
  sub_2BCC0();
  if (*(v24 + 16) && (v28 = sub_2103C(&v62), (v29 & 1) != 0))
  {
    sub_25098(*(v24 + 56) + 32 * v28, &v64);
    sub_25044(&v62);
    sub_2A5C4(&v64, v61);
    v30 = v67;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v30;
    sub_22FC8(v61, v66, v31);
    sub_25044(v66);
    v67 = v60;
  }

  else
  {
    sub_25044(&v62);
    sub_213F0(v66, &v64);
    sub_25044(v66);
    sub_2AF20(&v64, &qword_39590, &qword_2D0C8);
  }

  *&v62 = 0xD000000000000013;
  *(&v62 + 1) = 0x800000000002E280;
  sub_2BCC0();
  *&v61[0] = 0x7363697274656DLL;
  *(&v61[0] + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (!*(v24 + 16))
  {
    goto LABEL_18;
  }

  v32 = sub_2103C(&v62);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25098(*(v24 + 56) + 32 * v32, &v64);
  sub_25044(&v62);
  sub_2CC4(&qword_395D8, &qword_2D0F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v64 = 0u;
    v65 = 0u;
    goto LABEL_20;
  }

  v34 = *&v61[0];
  *&v64 = 0xD000000000000020;
  *(&v64 + 1) = 0x800000000002E2F0;
  sub_2BCC0();
  if (!*(v34 + 16) || (v35 = sub_2103C(&v62), (v36 & 1) == 0))
  {

LABEL_18:
    sub_25044(&v62);
    goto LABEL_19;
  }

  sub_25098(*(v34 + 56) + 32 * v35, &v64);
  sub_25044(&v62);

  if (!*(&v65 + 1))
  {
LABEL_20:
    sub_2AF20(&v64, &qword_39590, &qword_2D0C8);
    sub_213F0(v66, &v62);
    sub_25044(v66);
    sub_2AF20(&v62, &qword_39590, &qword_2D0C8);
    goto LABEL_21;
  }

  sub_2A5C4(&v64, &v62);
  v37 = v67;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v37;
  sub_22FC8(&v62, v66, v38);
  sub_25044(v66);
  v67 = *&v61[0];
LABEL_21:
  *&v62 = 0xD000000000000014;
  *(&v62 + 1) = 0x800000000002E2A0;
  sub_2BCC0();
  *&v61[0] = 0x7363697274656DLL;
  *(&v61[0] + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (!*(v24 + 16))
  {
    goto LABEL_29;
  }

  v39 = sub_2103C(&v62);
  if ((v40 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_25098(*(v24 + 56) + 32 * v39, &v64);
  sub_25044(&v62);
  sub_2CC4(&qword_395D8, &qword_2D0F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v64 = 0u;
    v65 = 0u;
    goto LABEL_31;
  }

  v41 = *&v61[0];
  *&v64 = 0xD000000000000021;
  *(&v64 + 1) = 0x800000000002E2C0;
  sub_2BCC0();
  if (!*(v41 + 16) || (v42 = sub_2103C(&v62), (v43 & 1) == 0))
  {

LABEL_29:
    sub_25044(&v62);
    goto LABEL_30;
  }

  sub_25098(*(v41 + 56) + 32 * v42, &v64);
  sub_25044(&v62);

  if (!*(&v65 + 1))
  {
LABEL_31:
    sub_2AF20(&v64, &qword_39590, &qword_2D0C8);
    sub_213F0(v66, &v62);
    sub_25044(v66);
    sub_2AF20(&v62, &qword_39590, &qword_2D0C8);
    goto LABEL_32;
  }

  sub_2A5C4(&v64, &v62);
  v44 = v67;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = v44;
  sub_22FC8(&v62, v66, v45);
  sub_25044(v66);
  v67 = *&v61[0];
LABEL_32:
  *&v62 = 0x746E6169726176;
  *(&v62 + 1) = 0xE700000000000000;
  sub_2BCC0();
  *&v64 = 0x746E6169726176;
  *(&v64 + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (*(v24 + 16) && (v46 = sub_2103C(&v62), (v47 & 1) != 0))
  {
    sub_25098(*(v24 + 56) + 32 * v46, &v64);
    sub_25044(&v62);

    sub_2A5C4(&v64, v61);
    v48 = v67;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v48;
    sub_22FC8(v61, v66, v49);
    sub_25044(v66);
    v67 = v60;
  }

  else
  {

    sub_25044(&v62);
    sub_213F0(v66, v61);
    sub_25044(v66);
    sub_2AF20(v61, &qword_39590, &qword_2D0C8);
  }

LABEL_36:
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v50 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v50, v2);
  v51 = sub_2B890();
  v52 = sub_2BB40();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v62 = v54;
    *v53 = 136315138;
    swift_beginAccess();

    v55 = sub_2B9B0();
    v57 = v56;

    v58 = sub_20958(v55, v57, &v62);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_0, v51, v52, "Returning now playing info %s", v53, 0xCu);
    sub_2566C(v54);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  return v67;
}

uint64_t AXHapticMusicServer.processMessage(_:withIdentifier:fromClientWithIdentifier:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v140 = a3;
  v8 = sub_2CC4(&qword_39140, &qword_2CD98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v123 - v10;
  v136 = sub_2B8F0();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v136);
  v132 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2B920();
  v133 = *(v134 - 8);
  v14 = *(v133 + 64);
  __chkstk_darwin(v134);
  v131 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2B8B0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v123 - v22;
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    v24 = sub_247FC(&_swiftEmptyArrayStorage);
  }

  v130 = v21;
  v137 = v4;
  v126 = v11;

  v141 = v24;
  v139 = sub_2B9B0();
  v26 = v25;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v27 = sub_25AC(v16, HMLog);
  swift_beginAccess();
  v28 = v17[2];
  v129 = v17 + 2;
  v128 = v28;
  v28(v23, v27, v16);

  v29 = v16;
  v30 = sub_2B890();
  v31 = sub_2BB40();

  v32 = os_log_type_enabled(v30, v31);
  v127 = v17;
  v150 = v26;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v138 = a4;
    v34 = v33;
    v35 = swift_slowAlloc();
    v124 = v29;
    aBlock = v35;
    *v34 = 134218498;
    *(v34 + 4) = a2;
    v125 = v27;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_20958(v140, v138, &aBlock);
    *(v34 + 22) = 2080;
    *(v34 + 24) = sub_20958(v139, v26, &aBlock);
    _os_log_impl(&dword_0, v30, v31, "Service got a message: %ld from client: %s. Payload: %s", v34, 0x20u);
    v27 = v125;
    swift_arrayDestroy();

    a4 = v138;

    v36 = v17[1];
    v37 = v124;
    v36(v23, v124);
  }

  else
  {

    v36 = v17[1];
    v36(v23, v29);
    v37 = v29;
  }

  v38 = v141;
  v39 = a2;
  if (a2 > 3)
  {
    if (a2 == 4)
    {

      return sub_A34C();
    }

    if (a2 == 5)
    {

      v148[0] = 1684632949;
      v148[1] = 0xE400000000000000;
      sub_2BCC0();
      if (*(v38 + 16))
      {
        v101 = sub_2103C(&aBlock);
        if (v102)
        {
          sub_25098(*(v38 + 56) + 32 * v101, v149);
          sub_25044(&aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_64;
          }

          v104 = v148[0];
          v103 = v148[1];
          v148[0] = 0xD000000000000010;
          v148[1] = 0x800000000002D950;
          sub_2BCC0();
          if (*(v38 + 16))
          {
            v105 = sub_2103C(&aBlock);
            if (v106)
            {
              sub_25098(*(v38 + 56) + 32 * v105, v149);
              sub_25044(&aBlock);

              if (swift_dynamicCast())
              {
                v107 = v148[0];
                v108 = v148[1];
                v109 = sub_2BB10();
                v110 = v126;
                (*(*(v109 - 8) + 56))(v126, 1, 1, v109);
                v111 = swift_allocObject();
                v111[2] = 0;
                v111[3] = 0;
                v112 = v137;
                v111[4] = v137;
                v111[5] = v104;
                v111[6] = v103;
                v111[7] = v107;
                v113 = v140;
                v111[8] = v108;
                v111[9] = v113;
                v111[10] = a4;

                v114 = v112;
                sub_C560(0, 0, v110, &unk_2CDE0, v111);
LABEL_51:

                return sub_247FC(&_swiftEmptyArrayStorage);
              }

LABEL_64:

              return sub_247FC(&_swiftEmptyArrayStorage);
            }
          }
        }
      }

LABEL_61:

      sub_25044(&aBlock);
      return sub_247FC(&_swiftEmptyArrayStorage);
    }

    if (a2 != 6)
    {
      goto LABEL_32;
    }

    v58 = v137;
    v59 = *&v137[OBJC_IVAR___AXHapticMusicServer_queue];
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    v146 = sub_254F4;
    v147 = v60;
    aBlock = _NSConcreteStackBlock;
    v143 = 1107296256;
    v144 = sub_2B614;
    v145 = &unk_34ED8;
    v61 = _Block_copy(&aBlock);
    v62 = v58;
    v63 = v59;
    v64 = v131;
    sub_2B900();
    v149[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    v65 = v132;
    v66 = v136;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v61);
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {

        strcpy(v148, "treatAsAdamID");
        HIWORD(v148[1]) = -4864;
        sub_2BCC0();
        if (!*(v38 + 16))
        {
          goto LABEL_61;
        }

        v80 = sub_2103C(&aBlock);
        if ((v81 & 1) == 0)
        {
          goto LABEL_61;
        }

        sub_25098(*(v38 + 56) + 32 * v80, v149);
        sub_25044(&aBlock);
        sub_2ACCC(0, &qword_39148, NSNumber_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_64;
        }

        v82 = v148[0];
        v148[0] = 1701080931;
        v148[1] = 0xE400000000000000;
        sub_2BCC0();
        if (*(v38 + 16))
        {
          v83 = sub_2103C(&aBlock);
          if (v84)
          {
            sub_25098(*(v38 + 56) + 32 * v83, v149);
            sub_25044(&aBlock);
            if (swift_dynamicCast())
            {
              v85 = v137;
              v87 = v148[0];
              v86 = v148[1];
              v148[0] = 1684632949;
              v148[1] = 0xE400000000000000;
              sub_2BCC0();
              if (*(v38 + 16) && (v88 = sub_2103C(&aBlock), (v89 & 1) != 0))
              {
                sub_25098(*(v38 + 56) + 32 * v88, v149);
                sub_25044(&aBlock);

                if (swift_dynamicCast())
                {
                  v90 = a4;
                  v91 = v148[0];
                  v92 = v148[1];
                  v93 = *&v85[OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue];
                  v94 = swift_allocObject();
                  v94[2] = v85;
                  v94[3] = v87;
                  v94[4] = v86;
                  v94[5] = v82;
                  v94[6] = v91;
                  v94[7] = v92;
                  v94[8] = v140;
                  v94[9] = v90;
                  v146 = sub_25420;
                  v147 = v94;
                  aBlock = _NSConcreteStackBlock;
                  v143 = 1107296256;
                  v144 = sub_2B614;
                  v145 = &unk_34E88;
                  v95 = _Block_copy(&aBlock);

                  v96 = v85;
                  v97 = v93;
                  v150 = v82;
                  v98 = v131;
                  sub_2B900();
                  v149[0] = &_swiftEmptyArrayStorage;
                  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
                  sub_2CC4(&qword_39168, &qword_2CDD0);
                  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
                  v99 = v132;
                  v100 = v136;
                  sub_2BC80();
                  sub_2BBE0();
                  _Block_release(v95);

                  (*(v135 + 8))(v99, v100);
                  (*(v133 + 8))(v98, v134);
                }

                else
                {
                }
              }

              else
              {

                sub_25044(&aBlock);
              }

              return sub_247FC(&_swiftEmptyArrayStorage);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_59;
      }

      if (a2 == 3)
      {

        v148[0] = 1684632949;
        v148[1] = 0xE400000000000000;
        sub_2BCC0();
        if (!*(v38 + 16))
        {
          goto LABEL_61;
        }

        v40 = sub_2103C(&aBlock);
        if ((v41 & 1) == 0)
        {
          goto LABEL_61;
        }

        sub_25098(*(v38 + 56) + 32 * v40, v149);
        sub_25044(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_64;
        }

        v43 = v148[0];
        v42 = v148[1];
        strcpy(v148, "treatAsAdamID");
        HIWORD(v148[1]) = -4864;
        sub_2BCC0();
        if (*(v38 + 16))
        {
          v44 = sub_2103C(&aBlock);
          if (v45)
          {
            sub_25098(*(v38 + 56) + 32 * v44, v149);
            sub_25044(&aBlock);
            sub_2ACCC(0, &qword_39148, NSNumber_ptr);
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_64;
            }

            v46 = v148[0];
            strcpy(v148, "register");
            BYTE1(v148[1]) = 0;
            WORD1(v148[1]) = 0;
            HIDWORD(v148[1]) = -402653184;
            sub_2BCC0();
            if (*(v38 + 16))
            {
              v47 = sub_2103C(&aBlock);
              if (v48)
              {
                sub_25098(*(v38 + 56) + 32 * v47, v149);
                sub_25044(&aBlock);

                if (swift_dynamicCast())
                {
                  v49 = v148[0];
                  if (![v148[0] BOOLValue])
                  {

                    v115 = sub_2BB10();
                    v116 = v126;
                    (*(*(v115 - 8) + 56))(v126, 1, 1, v115);
                    v117 = swift_allocObject();
                    v117[2] = 0;
                    v117[3] = 0;
                    v118 = v137;
                    v119 = v140;
                    v117[4] = v137;
                    v117[5] = v119;
                    v117[6] = a4;

                    v120 = v118;
                    sub_C560(0, 0, v116, &unk_2CDA8, v117);

                    return sub_247FC(&_swiftEmptyArrayStorage);
                  }

                  v50 = v137;
                  v51 = v137[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying];
                  v52 = sub_2BB10();
                  v53 = v126;
                  (*(*(v52 - 8) + 56))(v126, 1, 1, v52);
                  if (v51 == 1)
                  {
                    v54 = swift_allocObject();
                    v54[2] = 0;
                    v54[3] = 0;
                    v55 = v140;
                    v54[4] = v50;
                    v54[5] = v55;
                    v54[6] = a4;
                    v54[7] = v43;
                    v54[8] = v42;
                    v54[9] = v46;

                    v56 = v50;
                    v57 = &unk_2CDC8;
                  }

                  else
                  {
                    v54 = swift_allocObject();
                    v54[2] = 0;
                    v54[3] = 0;
                    v121 = v140;
                    v54[4] = v50;
                    v54[5] = v121;
                    v54[6] = a4;
                    v54[7] = v43;
                    v54[8] = v42;
                    v54[9] = v46;

                    v122 = v50;
                    v57 = &unk_2CDB8;
                  }

                  sub_C560(0, 0, v53, v57, v54);

                  goto LABEL_51;
                }

                goto LABEL_64;
              }
            }

            goto LABEL_61;
          }
        }

LABEL_59:
        sub_25044(&aBlock);
        return sub_247FC(&_swiftEmptyArrayStorage);
      }

LABEL_32:

      v74 = v130;
      v128(v130, v27, v37);

      v75 = v150;

      v76 = sub_2B890();
      v77 = sub_2BB60();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v78 = 134218498;
        *(v78 + 4) = v39;
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_20958(v140, a4, &aBlock);
        *(v78 + 22) = 2080;
        v79 = sub_20958(v139, v75, &aBlock);

        *(v78 + 24) = v79;
        _os_log_impl(&dword_0, v76, v77, "Unhandled service message: %ld from client: %s. Payload: %s", v78, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v36(v74, v37);
      return sub_247FC(&_swiftEmptyArrayStorage);
    }

    v67 = v137;
    v68 = *&v137[OBJC_IVAR___AXHapticMusicServer_queue];
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    v146 = sub_25630;
    v147 = v69;
    aBlock = _NSConcreteStackBlock;
    v143 = 1107296256;
    v144 = sub_2B614;
    v145 = &unk_34F50;
    v70 = _Block_copy(&aBlock);
    v71 = v68;
    v72 = v67;
    v64 = v131;
    sub_2B900();
    v149[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    v65 = v132;
    v66 = v136;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v70);
  }

  (*(v135 + 8))(v65, v66);
  (*(v133 + 8))(v64, v134);

  return sub_247FC(&_swiftEmptyArrayStorage);
}

uint64_t sub_C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_C46C;

  return sub_2614C(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_C46C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_C560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2CC4(&qword_39140, &qword_2CD98);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_2B0F0(a3, v27 - v11, &qword_39140, &qword_2CD98);
  v13 = sub_2BB10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2AF20(v12, &qword_39140, &qword_2CD98);
  }

  else
  {
    sub_2BB00();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2BAF0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2BA10() + 32;
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

      sub_2AF20(a3, &qword_39140, &qword_2CD98);

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

  sub_2AF20(a3, &qword_39140, &qword_2CD98);
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

void sub_C860()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack;
  if (*&v1[OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack] > 0.0)
  {
    v8 = CFAbsoluteTimeGetCurrent() - *&v1[v7];
    v9 = OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime;
    *&v1[OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime] = v8 + *&v1[OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime];
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v10 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v10, v2);
    v11 = v1;
    v12 = sub_2B890();
    v13 = sub_2BB50();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v8;
      *(v14 + 12) = 2048;
      *(v14 + 14) = *&v1[v9];
      _os_log_impl(&dword_0, v12, v13, "Play duration logging %f -> %f playback time", v14, 0x16u);
    }

    (*(v3 + 8))(v6, v2);
    *&v1[v7] = 0;
    v15 = *&v11[OBJC_IVAR___AXHapticMusicServer_playbackStatisticsTimer];
    if (([v15 isPending] & 1) == 0)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      aBlock[4] = sub_25F58;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35630;
      v17 = _Block_copy(aBlock);
      v18 = v11;

      [v15 afterDelay:v17 processBlock:60.0];
      _Block_release(v17);
    }
  }
}

void sub_CB50(void *a1, unint64_t a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v57 = a7;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v56 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v51[-v16];
  __chkstk_darwin(v15);
  v19 = &v51[-v18];
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v20 = sub_25AC(v10, HMLog);
  swift_beginAccess();
  v21 = v11[2];
  v60 = v20;
  v59 = v21;
  v21(v19, v20, v10);

  v22 = sub_2B890();
  v23 = sub_2BB40();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v11;
  v55 = a6;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v62 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20958(a1, a2, &v62);
    _os_log_impl(&dword_0, v22, v23, "About to check available:%s", v25, 0xCu);
    sub_2566C(v26);

    v11 = v61;
  }

  v58 = v11[1];
  v58(v19, v10);
  v27 = sub_E774(a1, a2, v52 & 1);
  sub_2CC4(&qword_39660, &qword_2D128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD40;
  *(inited + 32) = 0x6C62616C69617661;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v27 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1684632949;
  v29 = v53;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v29;
  *(inited + 104) = v54;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1701080931;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v30 = sub_24938(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39668, &qword_2D130);
  swift_arrayDestroy();
  v59(v17, v60, v10);
  v31 = v57;

  v32 = sub_2B890();
  v33 = sub_2BB40();

  v34 = os_log_type_enabled(v32, v33);
  v54 = v30;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v53 = v17;
    v36 = v35;
    v62 = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_20958(v55, v31, &v62);
    *(v36 + 12) = 2080;
    v37 = sub_2B9B0();
    v39 = sub_20958(v37, v38, &v62);

    *(v36 + 14) = v39;
    _os_log_impl(&dword_0, v32, v33, "Haptic track availability: %s %s", v36, 0x16u);
    swift_arrayDestroy();

    v58(v53, v10);
  }

  else
  {

    v58(v17, v10);
  }

  v40 = sub_2B9C0();
  v41 = [objc_opt_self() clientMessengerWithIdentifier:v40];

  v42 = v56;
  if (v41)
  {
    v59(v56, v60, v10);
    v43 = v41;
    v44 = sub_2B890();
    v45 = sub_2BB40();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v41;
      v48 = v43;
      _os_log_impl(&dword_0, v44, v45, "Send availability info to: %@", v46, 0xCu);
      sub_2AF20(v47, &qword_391A8, &qword_2CDE8);
    }

    v58(v42, v10);
    sub_E0D0(v54);

    isa = sub_2B990().super.isa;

    v50 = [objc_opt_self() mainAccessQueue];
    [v43 sendAsynchronousMessage:isa withIdentifier:2 targetAccessQueue:v50 completion:0];
  }

  else
  {
  }
}

uint64_t sub_D2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a8;
  v8[24] = v10;
  v8[21] = a6;
  v8[22] = a7;
  v8[19] = a4;
  v8[20] = a5;
  return (_swift_task_switch)(sub_D328, 0, 0);
}

uint64_t sub_D328()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = *(v0[19] + OBJC_IVAR___AXHapticMusicServer_statusObservers);
  v0[25] = v3;
  v4 = v1;

  return (_swift_task_switch)(sub_D3B8, v3, 0);
}

uint64_t sub_D3B8()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  swift_beginAccess();
  v7 = v1;

  v8 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_22E0C(v4, v3, v1, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v11;
  swift_endAccess();

  return (_swift_task_switch)(sub_D4CC, 0, 0);
}

uint64_t sub_D4CC()
{
  v1 = *(v0 + 152) + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_29BF0(v0 + 16, v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_D59C;
  v6 = *(v0 + 152);

  return sub_D698(v0 + 16, 1);
}

uint64_t sub_D59C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v5 = *v0;

  sub_29C28(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_D698(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  return (_swift_task_switch)(sub_D6BC, 0, 0);
}

uint64_t sub_D6BC()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (_kAXSMusicHapticsActiveStatusDidChangeNotification)
  {
    v2 = v1;
    v3 = *(v0 + 104);
    v4 = _kAXSMusicHapticsActiveStatusDidChangeNotification;
    CFNotificationCenterPostNotification(v2, v4, 0, 0, 1u);

    *(v0 + 112) = *(v3 + OBJC_IVAR___AXHapticMusicServer_statusObservers);
    v1 = sub_D780;
  }

  else
  {
    __break(1u);
  }

  return (_swift_task_switch)(v1);
}

uint64_t sub_D780()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  *(v0 + 120) = *(v1 + 112);

  return (_swift_task_switch)(sub_D808, 0, 0);
}

uint64_t sub_D808()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 32);
  *(v0 + 177) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  if (v5)
  {
    v6 = 0;
LABEL_8:
    *(v0 + 128) = v5;
    *(v0 + 136) = v6;
    v9 = __clz(__rbit64(v5)) | (v6 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    *(v0 + 144) = v11;
    v13 = (*(v1 + 56) + 24 * v9);
    v14 = *v13;
    v15 = v13[1];
    *(v0 + 152) = v15;
    v16 = v13[2];
    *(v0 + 160) = v16;
    *(v0 + 80) = v14;
    *(v0 + 88) = v15;
    v17 = v16;
    swift_bridgeObjectRetain_n();

    sub_2CC4(&qword_39588, &qword_2D0C0);
    sub_2ADF0();
    sub_2BCC0();
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_D9E0;
    v19 = *(v0 + 176);
    v20 = *(v0 + 96);

    return sub_26C9C(v12, v11, v0 + 16, v20, v19);
  }

  else
  {
    v7 = 0;
    v8 = ((63 - v4) >> 6) - 1;
    while (v8 != v7)
    {
      v6 = v7 + 1;
      v5 = *(v1 + 8 * v7++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_D9E0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v4 = *v0;

  sub_25044(v1 + 16);

  return (_swift_task_switch)(sub_DAE4, 0, 0);
}

uint64_t sub_DAE4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v5 = *(v0 + 136);
  v6 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v6)
  {
    result = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v6;
    *(v0 + 136) = v5;
    v8 = __clz(__rbit64(v6)) | (v5 << 6);
    v9 = (*(result + 48) + 16 * v8);
    v11 = *v9;
    v10 = v9[1];
    *(v0 + 144) = v10;
    v12 = (*(result + 56) + 24 * v8);
    v13 = *v12;
    v14 = v12[1];
    *(v0 + 152) = v14;
    v15 = v12[2];
    *(v0 + 160) = v15;
    *(v0 + 80) = v13;
    *(v0 + 88) = v14;
    v16 = v15;
    swift_bridgeObjectRetain_n();

    sub_2CC4(&qword_39588, &qword_2D0C0);
    sub_2ADF0();
    sub_2BCC0();
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_D9E0;
    v18 = *(v0 + 176);
    v19 = *(v0 + 96);

    return sub_26C9C(v11, v10, v0 + 16, v19, v18);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 120);
      if (v7 >= (((1 << *(v0 + 177)) + 63) >> 6))
      {
        break;
      }

      v6 = *(result + 8 * v7 + 64);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return (_swift_task_switch)(sub_DCF0, 0, 0);
}

uint64_t sub_DCF0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = *(v0[5] + OBJC_IVAR___AXHapticMusicServer_statusObservers);
  v0[11] = v3;
  v4 = v1;

  return (_swift_task_switch)(sub_DD80, v3, 0);
}

uint64_t sub_DD80()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  swift_beginAccess();
  v7 = v1;

  v8 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_22E0C(v4, v3, v1, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v12;
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return (_swift_task_switch)(sub_DEB0, 0, 0);
}

uint64_t sub_DEDC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_beginAccess();

  sub_327C(0, 1, 0, v3, v1);
  swift_endAccess();
  v4 = v0[1];

  return v4();
}

uint64_t sub_E0D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v2 = sub_2BD90();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25098(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2A5C4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2A5C4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2A5C4(v31, v32);
    result = sub_2BCA0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2A5C4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_E398(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v2 = sub_2BD90();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2A5D4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_2A5C4(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_2A5C4(v35, v24);
    result = sub_2BCA0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_2A5C4(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_E684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_2AE84((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2CC4(&qword_396D8, &qword_2D1A8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_2B9A0();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_E774(void *a1, unint64_t a2, int a3)
{
  v167 = a2;
  v168 = a1;
  v5 = sub_2B8F0();
  v157 = *(v5 - 8);
  v6 = *(v157 + 64);
  __chkstk_darwin(v5);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B920();
  v156 = *(v9 - 8);
  v10 = *(v156 + 64);
  __chkstk_darwin(v9);
  v155 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B940();
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = *(v161 + 64);
  v14 = __chkstk_darwin(v12);
  v159 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v160 = &v144 - v16;
  v17 = sub_2B8B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v24 = __chkstk_darwin(&v144 - v23);
  v164 = &v144 - v25;
  v26 = __chkstk_darwin(v24);
  v31 = &v144 - v30;
  v165 = v3;
  v32 = &v3[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
  v33 = *&v3[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
  if (v33 == 99999999)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v34 = sub_25AC(v17, HMLog);
    swift_beginAccess();
    (*(v18 + 16))(v31, v34, v17);
    v35 = sub_2B890();
    v36 = sub_2BB50();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Matched sample track - must be active", v37, 2u);
    }

    (*(v18 + 8))(v31, v17);
    return 1;
  }

  v153 = v28;
  v154 = v26;
  v148 = v8;
  v149 = v29;
  v146 = v5;
  v147 = v27;
  v145 = v9;
  v163 = v18;
  v166 = v17;
  v40 = *(v32 + 1);
  v39 = *(v32 + 2);
  v41 = *(v32 + 4);
  v42 = *(v32 + 6);

  LODWORD(v158) = a3;
  if (a3)
  {
    v43 = v167;
    v44 = sub_2B9C0();
    v45 = [v44 longLongValue];

    v46 = 0;
    v47 = 0xE000000000000000;
    if (v33 && v45 && v33 == v45)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v43 = v167;

    v46 = v168;
    v47 = v43;
  }

  if (!v40 && v39 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0 || !v46 && v47 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0)
  {

    v48 = v163;
  }

  else
  {
    if (v40 == v46 && v39 == v47)
    {

LABEL_11:
      v48 = v163;

      goto LABEL_12;
    }

    v143 = sub_2BDC0();

    v48 = v163;
    if (v143)
    {
LABEL_12:
      v49 = v166;
      if (qword_39890 == -1)
      {
LABEL_13:
        v50 = sub_25AC(v49, HMLog);
        swift_beginAccess();
        v48[2](v164, v50, v49);
        v51 = sub_2B890();
        v52 = sub_2BB50();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_0, v51, v52, "Matched current track - must be active", v53, 2u);
        }

        (v48[1])(v164, v49);
        return 1;
      }

LABEL_58:
      swift_once();
      goto LABEL_13;
    }
  }

  v54 = v166;
  v55 = v158;
  if (v158)
  {
    v56 = sub_2B9C0();
    v57 = [v56 longLongValue];

    v58 = 0;
    v49 = 0xE000000000000000;
  }

  else
  {

    v57 = 0;
    v58 = v168;
    v49 = v43;
  }

  v144 = v57;
  *&v177 = v57;
  *(&v177 + 1) = v58;
  v178 = v49;
  v179 = 0xE000000000000000;
  v180 = 0xE000000000000000;
  v59 = qword_39890;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = sub_25AC(v54, HMLog);
  swift_beginAccess();
  v61 = v154;
  v151 = v48[2];
  v152 = v60;
  v150 = (v48 + 2);
  v151(v154, v60, v54);

  swift_bridgeObjectRetain_n();
  v62 = sub_2B890();
  v63 = v48;
  v64 = sub_2BB50();
  swift_bridgeObjectRelease_n();

  if (os_log_type_enabled(v62, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136315138;

    swift_bridgeObjectRetain_n();
    v67 = sub_25E4();
    v69 = v68;
    swift_bridgeObjectRelease_n();

    v70 = sub_20958(v67, v69, &aBlock);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_0, v62, v64, "Requesting track identifier %s", v65, 0xCu);
    sub_2566C(v66);
    v55 = v158;

    v71 = v63[1];
    v72 = v61;
    v73 = v166;
  }

  else
  {

    v71 = v63[1];
    v72 = v61;
    v73 = v54;
  }

  v164 = v71;
  (v71)(v72, v73);
  v176 = 0;
  v74 = v165;
  v158 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue;
  v75 = *&v165[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
  v76 = swift_allocObject();
  *(v76 + 16) = &v176;
  *(v76 + 24) = v74;
  v77 = v178;
  *(v76 + 32) = v177;
  *(v76 + 48) = v77;
  *(v76 + 64) = v179;
  *(v76 + 80) = v180;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_2A934;
  *(v78 + 24) = v76;
  v174 = sub_2B658;
  v175 = v78;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_1449C;
  v173 = &unk_360A8;
  v79 = _Block_copy(&aBlock);

  swift_bridgeObjectRetain_n();
  v80 = v75;
  v48 = v74;

  dispatch_sync(v80, v79);

  _Block_release(v79);
  LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

  if (v79)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v176)
  {
    v81 = v176;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v82 = v153;
    v83 = v166;
    v151(v153, v152, v166);
    v84 = v167;

    v85 = v81;
    v86 = sub_2B890();
    v87 = sub_2BB50();

    v88 = &AXHapticMusicServer__prots;
    if (os_log_type_enabled(v86, v87))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v89 = 136315394;
      *(v89 + 4) = sub_20958(v168, v84, &aBlock);
      *(v89 + 12) = 1024;
      *(v89 + 14) = [v85 BOOLValue];

      _os_log_impl(&dword_0, v86, v87, "Returning cached result for %s = %{BOOL}d", v89, 0x12u);
      sub_2566C(v90);

      v88 = &AXHapticMusicServer__prots;

      v91 = v82;
      v92 = v166;
    }

    else
    {

      v91 = v82;
      v92 = v83;
    }

    (v164)(v91, v92);
    v98 = [v85 v88[314].count];

    goto LABEL_42;
  }

  if (v144 != 99999999)
  {
    v154 = v48;

    sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
    sub_2CC4(&qword_395A8, &qword_2D0D8);
    if (v55)
    {
      v100 = &SHMediaItemAppleMusicID;
    }

    else
    {
      v100 = &SHMediaItemISRC;
    }

    inited = swift_initStackObject();
    v102 = *v100;
    *(inited + 32) = *v100;
    *(inited + 16) = xmmword_2CD50;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v168;
    *(inited + 48) = v167;

    v103 = v102;
    v104 = sub_24A68(inited);
    swift_setDeallocating();
    sub_2AF20(inited + 32, &qword_395B0, &qword_2D0E0);
    v105 = sub_144C4(v104);
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    v149 = v106 + 16;
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    v153 = (v107 + 16);
    v108 = v105;
    v168 = v108;
    v109 = dispatch_semaphore_create(0);
    v110 = objc_opt_self();
    v111 = swift_allocObject();
    v111[2] = v106;
    v111[3] = v107;
    v111[4] = v109;
    v174 = sub_2AA44;
    v175 = v111;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_1513C;
    v173 = &unk_36120;
    v112 = _Block_copy(&aBlock);

    v167 = v107;

    v113 = v109;

    [v110 isHapticTrackAvailableForMediaItem:v108 completionHandler:v112];
    _Block_release(v112);
    v114 = v159;
    sub_2B930();
    v115 = v160;
    sub_2B950();
    v116 = v162;
    v117 = *(v161 + 8);
    v117(v114, v162);
    sub_2BC40();

    v118 = v166;
    v117(v115, v116);
    v119 = v147;
    v151(v147, v152, v118);
    v120 = v106;
    swift_retain_n();

    swift_bridgeObjectRetain_n();
    v121 = sub_2B890();
    v122 = sub_2BB50();
    swift_bridgeObjectRelease_n();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      aBlock = v124;
      *v123 = 136315394;

      swift_bridgeObjectRetain_n();
      LODWORD(v162) = v122;
      v125 = sub_25E4();
      v127 = v126;
      swift_bridgeObjectRelease_n();

      v128 = sub_20958(v125, v127, &aBlock);

      *(v123 + 4) = v128;
      *(v123 + 12) = 1024;
      swift_beginAccess();
      LODWORD(v128) = *(v120 + 16);

      *(v123 + 14) = v128;

      _os_log_impl(&dword_0, v121, v162, "Storing cached result %s %{BOOL}d", v123, 0x12u);
      sub_2566C(v124);

      v129 = v119;
      v130 = v166;
    }

    else
    {

      v129 = v119;
      v130 = v118;
    }

    (v164)(v129, v130);
    v131 = v153;
    v132 = v154;
    swift_beginAccess();
    v133 = v148;
    if (*v131)
    {

      swift_bridgeObjectRelease_n();

      v134 = v176;

      return 0;
    }

    v135 = *&v165[v158];
    v136 = swift_allocObject();
    v137 = v178;
    *(v136 + 24) = v177;
    *(v136 + 16) = v132;
    *(v136 + 40) = v137;
    *(v136 + 56) = v179;
    *(v136 + 72) = v180;
    *(v136 + 80) = v120;
    v174 = sub_2AAA8;
    v175 = v136;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_2B614;
    v173 = &unk_36170;
    v166 = _Block_copy(&aBlock);
    v138 = v132;

    v139 = v135;
    v140 = v155;
    sub_2B900();
    v169 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    v141 = v146;
    sub_2BC80();
    v142 = v166;
    sub_2BBE0();

    _Block_release(v142);
    (*(v157 + 8))(v133, v141);
    (*(v156 + 8))(v140, v145);

    swift_beginAccess();
    v98 = *(v120 + 16);

LABEL_42:
    v99 = v176;

    return v98;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v93 = v166;
  v151(v149, v152, v166);
  v94 = sub_2B890();
  v95 = sub_2BB50();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_0, v94, v95, "Matched sample track, we have haptics", v96, 2u);
    v93 = v166;
  }

  (v164)(v149, v93);
  v97 = v176;

  return 1;
}

Swift::Void __swiftcall AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(Swift::String codeFlowIdentifier)
{
  object = codeFlowIdentifier._object;
  countAndFlagsBits = codeFlowIdentifier._countAndFlagsBits;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  if (*(v1 + OBJC_IVAR___AXHapticMusicServer_isEnabled))
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v12 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v9, v12, v4);
    v13 = sub_2B890();
    v14 = sub_2BB40();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Already running Haptic Music, no need to start", v15, 2u);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    *(v1 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 1;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v16 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v11, v16, v4);

    v17 = sub_2B890();
    v18 = sub_2BB70();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_20958(countAndFlagsBits, object, &v21);
      _os_log_impl(&dword_0, v17, v18, "Starting Haptic Music %s", v19, 0xCu);
      sub_2566C(v20);
    }

    (*(v5 + 8))(v11, v4);
    sub_54CC(countAndFlagsBits, object);
  }
}

Swift::Void __swiftcall AXHapticMusicServer.stopHapticMusic()()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AXHapticMusicServer_isEnabled;
  if (v1[OBJC_IVAR___AXHapticMusicServer_isEnabled] == 1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v8 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_2B890();
    v10 = sub_2BB40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Stopping haptic music", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v1[v7] = 0;
    v12 = &v1[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
    v13 = *&v1[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 16];
    v14 = *&v1[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 32];
    v15 = *&v1[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 48];
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    v12[3] = 0;
    v12[4] = 0xE000000000000000;
    v12[5] = 0;
    v12[6] = 0xE000000000000000;

    v16 = v1;
    sub_27AFC(v16, v16, &unk_35988, sub_27A1C, &unk_359A0);
  }
}

uint64_t sub_100F8(void *a1, char *a2)
{
  v4 = sub_2B8F0();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B920();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B8B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v16 = sub_25AC(v11, HMLog);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = a1;
  v18 = sub_2B890();
  v19 = sub_2BB40();

  if (os_log_type_enabled(v18, v19))
  {
    v35 = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v17;
    v34 = a1;
    if (!a1)
    {
      v22 = sub_2B9C0();
    }

    *(v20 + 4) = v22;
    *v21 = v22;
    v23 = v17;
    _os_log_impl(&dword_0, v18, v19, "Notification (coalesced): %@", v20, 0xCu);
    sub_2AF20(v21, &qword_391A8, &qword_2CDE8);

    a1 = v34;
    a2 = v35;
  }

  (*(v12 + 8))(v15, v11);
  v24 = *&a2[OBJC_IVAR___AXHapticMusicServer_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a1;
  aBlock[4] = sub_27928;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35950;
  v26 = _Block_copy(aBlock);
  v27 = v17;
  v28 = v24;
  v29 = a2;
  sub_2B900();
  v41 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  v30 = v36;
  v31 = v40;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v26);

  (*(v39 + 8))(v30, v31);
  (*(v37 + 8))(v10, v38);
}

void sub_105CC(void *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2748C(a2, a3);
}

uint64_t sub_1064C(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v7 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2B890();
  v9 = sub_2BB40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Now playing app changed", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = (a1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
  v12 = *(a1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier + 8);
  *v11 = 0;
  v11[1] = 0xE000000000000000;

  *(a1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  if (*(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) == 1)
  {
    *(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 0;
    v13 = *(a1 + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v13)
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_2B748;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_358B0;
      v15 = _Block_copy(aBlock);
      v16 = v13;

      [v16 stopWithCompletionHandler:v15];
      _Block_release(v15);
    }
  }

  *(a1 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 0;
  return sub_97B0();
}

void sub_10924(void (*a1)(char *, uint64_t), void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v100 - v17;
  __chkstk_darwin(v16);
  v23 = &v100 - v22;
  *&a3[OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight] = 0;
  if (!a2)
  {
    v103 = v21;
    v101 = v20;
    v100 = v19;
    v36 = MRNowPlayingClientGetBundleIdentifier();
    v108 = a4;
    if (v36)
    {
      v37 = v36;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        aBlock = 0;
        v114 = 0;
        sub_2B9E0();

        v38 = v114;
        if (v114)
        {
          v39 = aBlock;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v39 = 0;
    v38 = 0xE000000000000000;
LABEL_14:
    v40 = &a3[OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier];
    v41 = *&a3[OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier + 8];
    *v40 = v39;
    v40[1] = v38;

    v42 = MRNowPlayingClientGetParentAppBundleIdentifier();
    v104 = a1;
    if (v42)
    {
      v43 = v42;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        aBlock = 0;
        v114 = 0;
        sub_2B9E0();

        v44 = aBlock;
        if (!v114)
        {
          v44 = 0;
        }

        v111 = v44;
        if (v114)
        {
          v45 = v114;
        }

        else
        {
          v45 = 0xE000000000000000;
        }

LABEL_23:
        if (qword_39890 != -1)
        {
          swift_once();
        }

        v46 = sub_25AC(v10, HMLog);
        swift_beginAccess();
        v47 = v11[2];
        v106 = v11 + 2;
        v107 = v46;
        v105 = v47;
        v47(v18, v46, v10);
        v48 = a3;

        v49 = sub_2B890();
        v50 = sub_2BB40();

        v110 = v48;

        v51 = os_log_type_enabled(v49, v50);
        v109 = v11;
        if (v51)
        {
          v52 = swift_slowAlloc();
          v102 = v10;
          v53 = v52;
          aBlock = swift_slowAlloc();
          *v53 = 136315650;
          v54 = a5;
          v56 = *v40;
          v55 = v40[1];

          v57 = sub_20958(v56, v55, &aBlock);

          *(v53 + 4) = v57;
          a5 = v54;
          *(v53 + 12) = 2080;
          v58 = v111;
          *(v53 + 14) = sub_20958(v111, v45, &aBlock);
          *(v53 + 22) = 1024;
          *(v53 + 24) = MRNowPlayingClientGetProcessIdentifier();
          _os_log_impl(&dword_0, v49, v50, "Now playing client %s parent %s %d", v53, 0x1Cu);
          swift_arrayDestroy();

          v10 = v102;

          v59 = v109[1];
          v59(v18, v10);
        }

        else
        {

          v59 = v11[1];
          v59(v18, v10);
          v58 = v111;
        }

        v60 = sub_2BA30();
        v61 = v110;
        if (v60 <= 0)
        {

          v58 = *v40;
          v45 = v40[1];
        }

        v62 = OBJC_IVAR___AXHapticMusicServer_supportedClients;
        swift_beginAccess();
        if (*(*&v61[v62] + 16) && (sub_20FC4(v58, v45), (v63 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v64 = objc_allocWithZone(LSApplicationRecord);

          v65 = sub_1F6AC(v58, v45, 0);
          if (v65)
          {
            v104 = v59;
            v111 = v65;
            v66 = [objc_allocWithZone(NSNumber) initWithBool:AXApplicationSupportsHapticMusic()];
            swift_beginAccess();

            v67 = v66;
            v68 = *&v61[v62];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = *&v61[v62];
            *&v61[v62] = 0x8000000000000000;
            sub_232A4(v67, v58, v45, isUniquelyReferenced_nonNull_native);

            *&v61[v62] = v112;
            swift_endAccess();
            v70 = v101;
            v105(v101, v107, v10);

            v71 = v67;
            v72 = sub_2B890();
            v73 = sub_2BB40();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v103 = a5;
              v75 = v74;
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v102 = v10;
              v78 = v77;
              aBlock = v77;
              *v75 = 136315394;
              *(v75 + 4) = sub_20958(v58, v45, &aBlock);
              *(v75 + 12) = 2112;
              *(v75 + 14) = v71;
              *v76 = v71;
              v79 = v71;
              _os_log_impl(&dword_0, v72, v73, "Marking client as supporting MH %s = %@", v75, 0x16u);
              sub_2AF20(v76, &qword_391A8, &qword_2CDE8);

              sub_2566C(v78);
              v10 = v102;

              a5 = v103;

              v80 = v111;
            }

            else
            {

              v81 = v111;
            }

            v59 = v104;
            v104(v70, v10);
            v61 = v110;
          }
        }

        swift_beginAccess();
        v82 = *&v61[v62];
        if (*(v82 + 16) && (v83 = sub_20FC4(v58, v45), (v84 & 1) != 0))
        {
          v85 = v59;
          v86 = *(*(v82 + 56) + 8 * v83);
          swift_endAccess();
          v87 = v86;
          if (([v87 BOOLValue] & 1) == 0)
          {
            v93 = v58;
            v94 = v100;
            v105(v100, v107, v10);

            v95 = sub_2B890();
            v96 = sub_2BB40();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              aBlock = v98;
              *v97 = 136315138;
              v99 = sub_20958(v93, v45, &aBlock);

              *(v97 + 4) = v99;
              _os_log_impl(&dword_0, v95, v96, "Client doesn't support MH %s", v97, 0xCu);
              sub_2566C(v98);
            }

            else
            {
            }

            v85(v94, v10);
            return;
          }
        }

        else
        {
          swift_endAccess();
        }

        v88 = *&v61[OBJC_IVAR___AXHapticMusicServer_queue];
        v89 = swift_allocObject();
        v89[2] = v108;
        v89[3] = a5;
        v89[4] = v61;
        v117 = sub_27A88;
        v118 = v89;
        aBlock = _NSConcreteStackBlock;
        v114 = 1107296256;
        v115 = sub_1261C;
        v116 = &unk_35A68;
        v90 = _Block_copy(&aBlock);
        v91 = v61;
        v92 = v88;

        MRMediaRemoteGetNowPlayingApplicationPlaybackState();
        _Block_release(v90);

        return;
      }
    }

    v111 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_23;
  }

  v24 = qword_39890;
  v25 = a2;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_25AC(v10, HMLog);
  swift_beginAccess();
  v27 = v10;
  (v11[2])(v23, v26, v10);
  v28 = v25;
  v29 = sub_2B890();
  v30 = sub_2BB60();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    type metadata accessor for CFError(0);
    sub_254AC(&qword_39578, type metadata accessor for CFError);
    swift_allocError();
    *v33 = v28;
    v34 = v28;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v32 = v35;
    _os_log_impl(&dword_0, v29, v30, "Error getting info %@", v31, 0xCu);
    sub_2AF20(v32, &qword_391A8, &qword_2CDE8);
  }

  else
  {
    v34 = v29;
    v29 = v28;
  }

  (v11[1])(v23, v27);
}

void sub_1161C(int a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_2B890();
  v14 = sub_2BB40();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 67109378;
    *(v15 + 4) = a1;
    *(v15 + 8) = 2080;
    *(v15 + 10) = sub_20958(v18, a3, &v19);
    _os_log_impl(&dword_0, v13, v14, "Got now playing state State %u %s", v15, 0x12u);
    sub_2566C(v16);
  }

  (*(v8 + 8))(v11, v7);
  if (a1 == 1)
  {
    sub_1188C(v18, a3);
  }

  else if (a4[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] == 1)
  {
    a4[OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup] = 1;
    sub_11D80(a4);
  }
}

void sub_1188C(uint64_t a1, unint64_t a2)
{
  v30 = a1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v29 = v9;
  v12 = sub_25AC(v4, HMLog);
  swift_beginAccess();
  v27 = *(v5 + 16);
  v27(v11, v12, v4);

  v13 = v2;
  v14 = sub_2B890();
  v15 = sub_2BB40();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v4;
    v18 = v5;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_20958(v30, a2, aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v13[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying];

    _os_log_impl(&dword_0, v14, v15, "Handling play state. Haptic state: %s %{BOOL}d", v16, 0x12u);
    sub_2566C(v19);
    v5 = v18;
    v4 = v28;
  }

  else
  {
  }

  (*(v5 + 8))(v11, v4);
  v20 = *&v13[OBJC_IVAR___AXHapticMusicServer_shutdownTimer];
  if (v20)
  {
    v20 = [v20 cancel];
  }

  v13[OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup] = 0;
  if (!*&v13[OBJC_IVAR___AXHapticMusicServer_audioSession])
  {
    sub_4E94(v20);
  }

  MRPlaybackQueueRequestCreateDefault();
  v21 = *&v13[OBJC_IVAR___AXHapticMusicServer_queue];
  v22 = swift_allocObject();
  v23 = v30;
  v22[2] = v13;
  v22[3] = v23;
  v22[4] = a2;
  aBlock[4] = sub_27AA8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12670;
  aBlock[3] = &unk_35AB8;
  v24 = _Block_copy(aBlock);

  v25 = v13;
  v26 = v21;

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v24);
}

void sub_11D80(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - v9;
  v11 = __chkstk_darwin(v8);
  v57 = &v57 - v12;
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  if (qword_39890 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v15 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    v16 = v3[2];
    v72 = v15;
    v71 = v3 + 2;
    v70 = v16;
    v16(v14, v15, v2);
    v17 = a1;
    v18 = sub_2B890();
    v19 = sub_2BB40();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v18, v19, "Handling pause state. Haptic track is playing: %{BOOL}d", v20, 8u);
    }

    else
    {

      v18 = v17;
    }

    v21 = v3[1];
    ++v3;
    v69 = v21;
    v21(v14, v2);
    v22 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v14 = *(&v17->isa + v22);
    if (!(v14 >> 62))
    {
      a1 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (!a1)
      {
        break;
      }

      goto LABEL_7;
    }

    a1 = sub_2BD60();
    if (!a1)
    {
      break;
    }

LABEL_7:
    v64 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v68 = v14 & 0xC000000000000001;
    v62 = v14 & 0xFFFFFFFFFFFFFF8;

    v23 = 0;
    *&v24 = 136315138;
    v59 = v24;
    v65 = v10;
    v61 = v2;
    v60 = v17;
    v67 = v14;
    v66 = a1;
    v58 = v7;
    while (v68)
    {
      v25 = sub_2BD00();
      v26 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      aBlock[0] = 0;
      v27 = [v25 pauseAtTime:aBlock error:0.0];
      v28 = aBlock[0];
      if (v27)
      {
        *(&v17->isa + v64) = 0;
        v70(v10, v72, v2);
        v29 = v28;
        v30 = sub_2B890();
        v31 = sub_2BB40();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_0, v30, v31, "Haptics Paused", v32, 2u);
          v10 = v65;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v69(v10, v2);
      }

      else
      {
        v33 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v70(v7, v72, v2);
        swift_errorRetain();
        v34 = v7;
        v35 = sub_2B890();
        v36 = sub_2BB60();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          aBlock[0] = v63;
          *v37 = v59;
          swift_getErrorValue();
          v38 = sub_2BDF0();
          v40 = v35;
          v41 = v3;
          v42 = sub_20958(v38, v39, aBlock);

          *(v37 + 4) = v42;
          v3 = v41;
          v43 = v40;
          _os_log_impl(&dword_0, v40, v36, "Failed to pause haptics. %s", v37, 0xCu);
          sub_2566C(v63);
          v2 = v61;

          v17 = v60;

          swift_unknownObjectRelease();

          v7 = v58;
          v69(v58, v2);
        }

        else
        {
          swift_unknownObjectRelease();

          v69(v34, v2);
          v7 = v34;
        }

        v10 = v65;
      }

      v14 = v67;
      a1 = v66;
      ++v23;
      if (v26 == v66)
      {

        goto LABEL_25;
      }
    }

    if (v23 >= *(v62 + 16))
    {
      goto LABEL_34;
    }

    v25 = *(v14 + 8 * v23 + 32);
    swift_unknownObjectRetain();
    v26 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_25:
  v44 = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
  v45 = *(&v17[1].isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);

  v46 = sub_2BA30();

  if (v46)
  {
    v47 = 20.0;
  }

  else
  {
    v47 = 1.0;
  }

  v48 = v57;
  v70(v57, v72, v2);
  v49 = sub_2B890();
  v50 = sub_2BB40();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v47;
    _os_log_impl(&dword_0, v49, v50, "Engine shutdown in %f", v51, 0xCu);
  }

  v69(v48, v2);
  v52 = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v52)
  {
    v53 = swift_allocObject();
    v53[2] = v17;
    aBlock[4] = sub_2B6F0;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_362B0;
    v54 = _Block_copy(aBlock);
    v55 = v17;
    v56 = v52;

    [v56 afterDelay:v54 processBlock:v47];
    _Block_release(v54);
  }
}

uint64_t sub_1261C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_12670(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_126E8(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v7 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_2B890();
  v10 = sub_2BB40();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR___AXHapticMusicServer_engineIsRunning);

    _os_log_impl(&dword_0, v9, v10, "Check shutdown engine: running %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  (*(v3 + 8))(v6, v2);
  if (*(&v8->isa + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) == 1)
  {
    v12 = *(&v8->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_2B748;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_359C8;
      v14 = _Block_copy(aBlock);
      v15 = v12;

      [v15 stopWithCompletionHandler:v14];
      _Block_release(v14);
    }
  }
}

uint64_t sub_129A4(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B8F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B920();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v42 = a1;
    v43 = v6;
    v44 = v3;
    v45 = v2;
    *(result + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 0;
    v18 = [objc_opt_self() defaultCenter];
    v19 = OBJC_IVAR___AXHapticMusicServer_audioSession;
    [v18 removeObserver:v17 name:AVAudioSessionInterruptionNotification object:*&v17[OBJC_IVAR___AXHapticMusicServer_audioSession]];

    v20 = *&v17[v19];
    *&v17[v19] = 0;

    v21 = *&v17[OBJC_IVAR___AXHapticMusicServer_engine];
    *&v17[OBJC_IVAR___AXHapticMusicServer_engine] = 0;

    sub_97B0();
    sub_C860();
    v22 = *&v17[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    aBlock[4] = sub_25F00;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_355E0;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v40 = v12;
    v26 = v25;
    v41 = v17;
    sub_2B900();
    v47 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v24);

    (*(v8 + 8))(v11, v7);
    (*(v46 + 8))(v15, v40);

    if (qword_39890 != -1)
    {
      swift_once();
    }

    v27 = v45;
    v28 = sub_25AC(v45, HMLog);
    swift_beginAccess();
    v30 = v43;
    v29 = v44;
    (*(v44 + 16))(v43, v28, v27);
    v31 = v42;
    swift_errorRetain();
    v32 = sub_2B890();
    v33 = sub_2BB40();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      if (v31)
      {
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v34 + 4) = v36;
      *v35 = v37;
      _os_log_impl(&dword_0, v32, v33, "Stopping and clearing out haptic engine: %@", v34, 0xCu);
      sub_2AF20(v35, &qword_391A8, &qword_2CDE8);

      v38 = v41;
    }

    else
    {
      v38 = v32;
      v32 = v41;
    }

    return (*(v29 + 8))(v30, v27);
  }

  return result;
}

void sub_12F50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2B8B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v14 = sub_25AC(v9, HMLog);
    swift_beginAccess();
    (*(v10 + 16))(v13, v14, v9);
    v15 = a2;
    v16 = sub_2B890();
    v17 = sub_2BB60();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      if (a2)
      {
        v25[0] = v15;
        type metadata accessor for CFError(0);
        sub_254AC(&qword_39578, type metadata accessor for CFError);
        v20 = sub_2BDF0();
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v25[0] = v20;
      v25[1] = v21;
      sub_2CC4(&qword_39588, &qword_2D0C0);
      v22 = sub_2BA00();
      v24 = sub_20958(v22, v23, &v26);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_0, v16, v17, "NowPlayingProvider#item Unexpected nil playbackQueue or error: %s", v18, 0xCu);
      sub_2566C(v19);
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_1321C(a4, a5);
  }
}

void sub_1321C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v151 = a1;
  v5 = sub_2B8B0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v145 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v147 = &v143 - v11;
  v12 = __chkstk_darwin(v10);
  v144 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v158 = &v143 - v15;
  __chkstk_darwin(v14);
  v17 = &v143 - v16;
  if (qword_39890 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v18 = sub_25AC(v5, HMLog);
    swift_beginAccess();
    v19 = v6[2];
    v161 = v6 + 2;
    v162 = v18;
    v160 = v19;
    v19(v17, v18, v5);

    v20 = sub_2B890();
    v21 = sub_2BB40();

    v22 = os_log_type_enabled(v20, v21);
    v163 = v3;
    v157 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = v6;
      v25 = swift_slowAlloc();
      *&v170 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_20958(v151, a2, &v170);
      _os_log_impl(&dword_0, v20, v21, "handle playing state with playback: %s", v23, 0xCu);
      sub_2566C(v25);

      v159 = v24[1];
    }

    else
    {

      v159 = v6[1];
    }

    v159(v17, v5);
    MRPlaybackQueueGetContentItemAtOffset();
    ContentItemsCount = MRPlaybackQueueGetContentItemsCount();
    v27 = MRContentItemCopyNowPlayingInfo();
    v28 = v158;
    v148 = v27;
    v146 = ContentItemsCount;
    if (!v27)
    {
      v170 = 0u;
      v171 = 0u;
      sub_2AF20(&v170, &qword_39590, &qword_2D0C8);
      v170 = 0u;
      v171 = 0u;
      sub_2AF20(&v170, &qword_39590, &qword_2D0C8);
      v149 = 0;
      v150 = 0;
      v170 = 0u;
      v171 = 0u;
      v33 = 0xE000000000000000;
      v34 = 0xE000000000000000;
LABEL_32:
      v44 = v163;
      sub_2AF20(&v170, &qword_39590, &qword_2D0C8);
      goto LABEL_33;
    }

    v29 = v27;
    if (!kMRMediaRemoteNowPlayingInfoTitle)
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      return;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v30;
    v31 = v29;
    v32 = [v31 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v32)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v167 = 0u;
    }

    v170 = aBlock;
    v171 = v167;
    if (*(&v167 + 1))
    {
      v35 = a2;
      if (swift_dynamicCast())
      {
        v36 = *(&aBlock + 1);
        v150 = aBlock;
        goto LABEL_16;
      }
    }

    else
    {
      v35 = a2;
      sub_2AF20(&v170, &qword_39590, &qword_2D0C8);
    }

    v150 = 0;
    v36 = 0xE000000000000000;
LABEL_16:
    if (!kMRMediaRemoteNowPlayingInfoArtist)
    {
      goto LABEL_108;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v37;
    v38 = v31;
    v39 = [v38 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v39)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v167 = 0u;
    }

    v170 = aBlock;
    v171 = v167;
    if (*(&v167 + 1))
    {
      if (swift_dynamicCast())
      {
        v33 = *(&aBlock + 1);
        v149 = aBlock;
        goto LABEL_25;
      }
    }

    else
    {
      sub_2AF20(&v170, &qword_39590, &qword_2D0C8);
    }

    v149 = 0;
    v33 = 0xE000000000000000;
LABEL_25:
    if (!kMRMediaRemoteNowPlayingInfoDuration)
    {
      goto LABEL_109;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v40;
    v41 = v38;
    v42 = [v41 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v42)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v167 = 0u;
    }

    v34 = v36;
    v28 = v158;
    v170 = aBlock;
    v171 = v167;
    a2 = v35;
    if (!*(&v167 + 1))
    {
      goto LABEL_32;
    }

    v43 = swift_dynamicCast();
    v44 = v163;
    if (v43)
    {
      v45 = *&aBlock;
      goto LABEL_34;
    }

LABEL_33:
    v45 = 0.0;
LABEL_34:
    v154 = sub_151B4();
    v47 = v46;
    v152 = v48;
    v160(v28, v162, v5);

    v49 = sub_2B890();
    v50 = sub_2BB40();

    v51 = os_log_type_enabled(v49, v50);
    v155 = v47;
    v156 = v34;
    v153 = v33;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *&v170 = swift_slowAlloc();
      *v52 = 136316162;
      *(v52 + 4) = sub_20958(v150, v34, &v170);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_20958(v149, v33, &v170);
      *(v52 + 22) = 2048;
      *(v52 + 24) = v152;
      *(v52 + 32) = 2080;
      *(v52 + 34) = sub_20958(v154, v47, &v170);
      *(v52 + 42) = 2048;
      *(v52 + 44) = v146;
      _os_log_impl(&dword_0, v49, v50, "Now playing state: %s %s Song ID: %lld ISRC CODE: %s queueCount %ld", v52, 0x34u);
      swift_arrayDestroy();

      v44 = v163;

      v53 = v158;
    }

    else
    {

      v53 = v28;
    }

    v159(v53, v5);
    v54 = v5;
    v55 = v152;
    if (!v152 && (!v154 && v155 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0))
    {
      break;
    }

    v56 = objc_opt_self();
    v57 = [v56 sharedInstance];
    v58 = [v57 hapticMusicAlgorithmSelections];

    if (!v58)
    {
      v59 = *&v44[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections];
LABEL_46:
      v60 = v59 == 0;
      goto LABEL_47;
    }

    *&v170 = 0;
    sub_2BA90();

    v59 = *&v44[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections];
    if (!v170)
    {
      goto LABEL_46;
    }

    if (v59)
    {
      v60 = sub_1FE60(v170, v59);
    }

    else
    {

      v60 = 0;
    }

LABEL_47:
    v61 = *&v44[OBJC_IVAR___AXHapticMusicServer_cachedIntensity];
    v62 = [v56 sharedInstance];
    [v62 hapticMusicIntensity];
    v64 = v63;

    v65 = v147;
    v160(v147, v162, v54);
    v66 = sub_2B890();
    v67 = sub_2BB40();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 67109120;
      *(v68 + 4) = (v60 & 1) == 0;
      _os_log_impl(&dword_0, v66, v67, "Algo selection changed: %{BOOL}d", v68, 8u);
    }

    v158 = (v157 + 1);
    v159(v65, v54);
    v69 = &v44[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
    v70 = *(v69 + 1);
    v71 = *(v69 + 2);
    v73 = v155;
    v72 = v156;
    if (v55 && *v69 && *v69 == v55 || (v70 || v71 != 0xE000000000000000) && (v80 = *(v69 + 1), v81 = *(v69 + 2), (sub_2BDC0() & 1) == 0) && (v154 || v73 != 0xE000000000000000) && (sub_2BDC0() & 1) == 0 && (v70 == v154 && v71 == v73 || (sub_2BDC0() & 1) != 0))
    {
      v74 = v64;
      v75 = OBJC_IVAR___AXHapticMusicServer_players;
      v76 = v163;
      swift_beginAccess();
      v77 = *&v76[v75];
      if (v77 >> 62)
      {
        if (v77 < 0)
        {
          v142 = *&v76[v75];
        }

        v78 = sub_2BD60();
      }

      else
      {
        v78 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
      }

      v79 = vabds_f32(v61, v74);
      v72 = v156;
      if (v78 <= 0)
      {
        if ((v163[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & v60 & 1) != 0 && v79 < 1.0e-10)
        {
LABEL_73:
          v157 = a2;

          v90 = v145;
          v160(v145, v162, v54);
          v91 = v163;
          v92 = sub_2B890();
          v93 = sub_2BB40();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v165[0] = v95;
            *v94 = 136315394;
            v96 = *(v69 + 1);
            v170 = *v69;
            v171 = v96;
            v172 = *(v69 + 2);
            v173 = *(v69 + 6);
            sub_29BF0(&v170, &aBlock);
            v97 = sub_25E4();
            v99 = v98;
            sub_29C28(&v170);
            v100 = sub_20958(v97, v99, v165);

            *(v94 + 4) = v100;
            *(v94 + 12) = 2048;
            *(v94 + 14) = v55;
            _os_log_impl(&dword_0, v92, v93, "Song ID matches haptic track id %s -> %lld", v94, 0x16u);
            sub_2566C(v95);

            v101 = v145;
          }

          else
          {

            v101 = v90;
          }

          v159(v101, v54);
          v134 = v148;
          v135 = v157;
          if ((v91[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & 1) != 0 || (v136 = *&v91[OBJC_IVAR___AXHapticMusicServer_notificationTimer]) == 0)
          {
          }

          else
          {
            v137 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v138 = swift_allocObject();
            v139 = v151;
            v138[2] = v137;
            v138[3] = v139;
            v138[4] = v135;
            *&v168 = sub_29C98;
            *(&v168 + 1) = v138;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v167 = sub_2B614;
            *(&v167 + 1) = &unk_35B30;
            v140 = _Block_copy(&aBlock);

            v141 = v136;

            [v141 afterDelay:v140 processBlock:0.1];

            _Block_release(v140);
          }

          return;
        }
      }

      else if ((v60 & (v79 < 1.0e-10)) == 1)
      {
        goto LABEL_73;
      }
    }

    v102 = swift_allocObject();
    v104 = v153;
    v103 = v154;
    v102[2] = v55;
    v102[3] = v103;
    v105 = v149;
    v106 = v150;
    v102[4] = v73;
    v102[5] = v106;
    v102[6] = v72;
    v102[7] = v105;
    v102[8] = v104;
    v107 = v163;
    v163[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] = 1;
    v107[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] = 0;
    v108 = v107;

    sub_28404(v108, v108);

    v109 = *(v102 + 2);
    v170 = *(v102 + 1);
    v171 = v109;
    v172 = *(v102 + 3);
    v173 = v102[8];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29BF0(&v170, &aBlock);
    sub_28CAC(v151, a2, &v170, v108, v17, v102, v45);

    v161 = v102;

    sub_29C28(&v170);
    v6 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    v3 = *(v6 + v108);
    v5 = v3 + 64;
    v110 = 1 << *(v3 + 32);
    v111 = -1;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    v112 = v111 & *(v3 + 64);
    v113 = (v110 + 63) >> 6;
    v114 = *(v6 + v108);

    v115 = 0;
    a2 = 0x4082C00000000000;
    v162 = v3;
    if (v112)
    {
LABEL_84:
      while (1)
      {
        v117 = *(v3 + 48) + 56 * (__clz(__rbit64(v112)) | (v115 << 6));
        v118 = *(v117 + 48);
        v119 = *(v117 + 32);
        v120 = *v117;
        v167 = *(v117 + 16);
        v168 = v119;
        aBlock = v120;
        v169 = v118;
        sub_29BF0(&aBlock, v165);
        Current = CFAbsoluteTimeGetCurrent();
        swift_beginAccess();
        v17 = *(v6 + v108);
        if (!*(v17 + 16))
        {
          break;
        }

        v122 = sub_20F00(&aBlock);
        if ((v123 & 1) == 0)
        {
          goto LABEL_102;
        }

        v112 &= v112 - 1;
        v124 = *(*(v17 + 56) + 16 * v122 + 8);
        swift_endAccess();
        if (Current - v124 <= 600.0)
        {
          sub_29C28(&aBlock);
          if (!v112)
          {
            goto LABEL_80;
          }
        }

        else
        {
          swift_beginAccess();
          v125 = *(v6 + v108);
          v126 = sub_20F00(&aBlock);
          v17 = v127;
          sub_29C28(&aBlock);
          if (v17)
          {
            v128 = *(v6 + v108);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = *(v6 + v108);
            v164 = v17;
            *(v6 + v108) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_23E0C();
              v17 = v164;
            }

            v130 = (*(v17 + 48) + 56 * v126);
            v163 = v130[2];
            v131 = v130[4];
            v132 = v130[6];

            v133 = *(*(v17 + 56) + 16 * v126);

            sub_2295C(v126, v17);
            *(v6 + v108) = v17;
            v3 = v162;
          }

          swift_endAccess();
          a2 = 0x4082C00000000000;
          if (!v112)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else
    {
LABEL_80:
      while (1)
      {
        v116 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        if (v116 >= v113)
        {

          return;
        }

        v112 = *(v5 + 8 * v116);
        ++v115;
        if (v112)
        {
          v115 = v116;
          goto LABEL_84;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  v82 = v144;
  v83 = v54;
  v160(v144, v162, v54);
  v84 = sub_2B890();
  v85 = sub_2BB60();
  v86 = os_log_type_enabled(v84, v85);
  v87 = v148;
  if (v86)
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_0, v84, v85, "No song id, stopping playback", v88, 2u);
  }

  v159(v82, v83);
  v89 = v44;
  sub_27AFC(v89, v89, &unk_35B68, sub_2B6F0, &unk_35B80);
}

uint64_t sub_144C4(void *a1)
{
  sub_2CC4(&qword_39680, &qword_2D148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD60;
  *(inited + 32) = sub_2BC00();
  *(inited + 40) = SHMediaItemTimeRanges;
  v3 = SHMediaItemTimeRanges;
  *(inited + 48) = sub_2BC10();
  *(inited + 56) = SHMediaItemFrequencySkewRanges;
  v4 = SHMediaItemFrequencySkewRanges;
  v5 = sub_26B90(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39688, &qword_2D150);
  swift_arrayDestroy();
  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v10;
LABEL_10:
    v10 = (v12 - 1) & v12;
    if (a1[2])
    {
      v95 = (v12 - 1) & v12;
      v14 = (v6 << 9) | (8 * __clz(__rbit64(v12)));
      v15 = *(*(v5 + 56) + v14);
      v16 = *(*(v5 + 48) + v14);
      v17 = v15;
      v18 = sub_21080(v16, sub_206F8);
      if (v19)
      {
        sub_25098(a1[7] + 32 * v18, v100);
        sub_25098(v100, &v98);
        sub_2CC4(&qword_39690, &qword_2D158);
        if (swift_dynamicCast())
        {
          v20 = *&v97[0];
          v21 = *(*&v97[0] + 16);
          if (v21)
          {
            v90 = v17;
            v92 = v5;
            *&v98 = &_swiftEmptyArrayStorage;
            sub_207FC(0, v21, 0);
            v22 = v98;
            v23 = (v20 + 40);
            do
            {
              v24 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v23 - 1) upperBound:*v23];
              *&v98 = v22;
              v26 = v22[2];
              v25 = v22[3];
              if (v26 >= v25 >> 1)
              {
                v88 = v24;
                sub_207FC((v25 > 1), v26 + 1, 1);
                v24 = v88;
                v22 = v98;
              }

              v22[2] = v26 + 1;
              v22[v26 + 4] = v24;
              v23 += 2;
              --v21;
            }

            while (v21);

            v17 = v90;
            v5 = v92;
          }

          else
          {

            v22 = &_swiftEmptyArrayStorage;
          }

          *(&v99 + 1) = sub_2CC4(&qword_396A0, &qword_2D168);
          *&v98 = v22;
          sub_2A5C4(&v98, v97);
          v48 = a1;
          v49 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v48;
          v51 = sub_21080(v49, sub_206F8);
          v53 = v48[2];
          v54 = (v52 & 1) == 0;
          v46 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v46)
          {
            goto LABEL_69;
          }

          v56 = v52;
          if (v48[3] >= v55)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v79 = v5;
              v80 = v51;
              sub_200E0();
              v51 = v80;
              v5 = v79;
            }
          }

          else
          {
            sub_20260(v55, isUniquelyReferenced_nonNull_native);
            v51 = sub_21080(v49, sub_206F8);
            if ((v56 & 1) != (v57 & 1))
            {
              goto LABEL_75;
            }
          }

          if (v56)
          {
            v58 = v48;
            v59 = (v48[7] + 32 * v51);
            sub_2566C((v96[7] + 32 * v51));
            sub_2A5C4(v97, v59);
          }

          else
          {
            v48[(v51 >> 6) + 8] |= 1 << v51;
            *(v48[6] + 8 * v51) = v49;
            sub_2A5C4(v97, (v48[7] + 32 * v51));
            v60 = v48[2];
            v46 = __OFADD__(v60, 1);
            v61 = v60 + 1;
            if (v46)
            {
              goto LABEL_72;
            }

            v58 = v48;
            v48[2] = v61;
          }

          v44 = v58;
        }

        else
        {
          sub_25098(v100, &v98);
          sub_2CC4(&qword_39698, &qword_2D160);
          if (swift_dynamicCast())
          {
            v27 = *&v97[0];
            v28 = *(*&v97[0] + 16);
            if (v28)
            {
              v91 = v17;
              v93 = v5;
              *&v97[0] = &_swiftEmptyArrayStorage;
              sub_207FC(0, v28, 0);
              v29 = *&v97[0];
              v30 = (v27 + 36);
              do
              {
                v31 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v30 - 1) upperBound:*v30];
                *&v97[0] = v29;
                v33 = v29[2];
                v32 = v29[3];
                if (v33 >= v32 >> 1)
                {
                  v89 = v31;
                  sub_207FC((v32 > 1), v33 + 1, 1);
                  v31 = v89;
                  v29 = *&v97[0];
                }

                v29[2] = v33 + 1;
                v29[v33 + 4] = v31;
                v30 += 2;
                --v28;
              }

              while (v28);

              v17 = v91;
              v5 = v93;
            }

            else
            {

              v29 = &_swiftEmptyArrayStorage;
            }

            *(&v99 + 1) = sub_2CC4(&qword_396A0, &qword_2D168);
            *&v98 = v29;
            sub_2A5C4(&v98, v97);
            v44 = a1;
            v63 = v17;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v65 = sub_21080(v63, sub_206F8);
            v67 = v44[2];
            v68 = (v66 & 1) == 0;
            v46 = __OFADD__(v67, v68);
            v69 = v67 + v68;
            if (v46)
            {
              goto LABEL_70;
            }

            v70 = v66;
            if (v44[3] >= v69)
            {
              if ((v64 & 1) == 0)
              {
                v82 = v5;
                v83 = v65;
                sub_200E0();
                v65 = v83;
                v5 = v82;
              }
            }

            else
            {
              sub_20260(v69, v64);
              v65 = sub_21080(v63, sub_206F8);
              if ((v70 & 1) != (v71 & 1))
              {
                goto LABEL_75;
              }
            }

            if (v70)
            {
              v72 = (v44[7] + 32 * v65);
              sub_2566C(v72);
              sub_2A5C4(v97, v72);
            }

            else
            {
              v44[(v65 >> 6) + 8] |= 1 << v65;
              *(v44[6] + 8 * v65) = v63;
              sub_2A5C4(v97, (v44[7] + 32 * v65));
              v73 = v44[2];
              v46 = __OFADD__(v73, 1);
              v74 = v73 + 1;
              if (v46)
              {
                goto LABEL_74;
              }

              v44[2] = v74;
            }
          }

          else
          {
            sub_25098(v100, &v98);
            v34 = a1;
            v35 = v17;
            v36 = swift_isUniquelyReferenced_nonNull_native();
            *&v97[0] = v34;
            v38 = sub_21080(v35, sub_206F8);
            v39 = v34[2];
            v40 = (v37 & 1) == 0;
            v41 = v39 + v40;
            if (__OFADD__(v39, v40))
            {
              goto LABEL_71;
            }

            if (v34[3] >= v41)
            {
              if (v36)
              {
                v44 = *&v97[0];
                if (v37)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                v81 = v37;
                sub_200E0();
                v44 = *&v97[0];
                if (v81)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              v94 = v37;
              sub_20260(v41, v36);
              v42 = sub_21080(v35, sub_206F8);
              if ((v94 & 1) != (v43 & 1))
              {
                goto LABEL_75;
              }

              v38 = v42;
              v44 = *&v97[0];
              if (v94)
              {
LABEL_47:
                v62 = (v44[7] + 32 * v38);
                sub_2566C(v62);
                sub_2A5C4(&v98, v62);

                goto LABEL_59;
              }
            }

            v44[(v38 >> 6) + 8] |= 1 << v38;
            *(v44[6] + 8 * v38) = v35;
            sub_2A5C4(&v98, (v44[7] + 32 * v38));
            v45 = v44[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (v46)
            {
              goto LABEL_73;
            }

            v44[2] = v47;
          }
        }

LABEL_59:
        v75 = sub_21080(v16, sub_206F8);
        if (v76)
        {
          v77 = v75;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v97[0] = v44;
          if ((v78 & 1) == 0)
          {
            sub_200E0();
            v44 = *&v97[0];
          }

          sub_2A5C4((v44[7] + 32 * v77), &v98);
          a1 = v44;
          sub_20530(v77, v44);

          sub_2566C(v100);
        }

        else
        {
          a1 = v44;
          sub_2566C(v100);

          v98 = 0u;
          v99 = 0u;
        }

        sub_2AF20(&v98, &qword_39590, &qword_2D0C8);
        v10 = v95;
      }

      else
      {

        v10 = v95;
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty(0);
      sub_254AC(&qword_396A8, type metadata accessor for SHMediaItemProperty);
      isa = sub_2B990().super.isa;
      v86 = [ObjCClassFromMetadata mediaItemWithProperties:isa];

      return v86;
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for SHMediaItemProperty(0);
  result = sub_2BDE0();
  __break(1u);
  return result;
}

Swift::Int sub_14E90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v15 = sub_25AC(v10, HMLog);
    swift_beginAccess();
    (*(v11 + 16))(v14, v15, v10);
    swift_errorRetain();
    v16 = sub_2B890();
    v17 = sub_2BB60();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = a3;
      v21 = a1;
      v22 = v20;
      *v19 = 138412546;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v23;
      *v22 = v23;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v21 & 1;
      _os_log_impl(&dword_0, v16, v17, "Error checking availability: %@ %{BOOL}d", v19, 0x12u);
      sub_2AF20(v22, &qword_391A8, &qword_2CDE8);
      a1 = v21;
      a3 = v27;
    }

    (*(v11 + 8))(v14, v10);
  }

  swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  swift_beginAccess();
  v24 = *(a4 + 16);
  *(a4 + 16) = a2;
  swift_errorRetain();

  return sub_2BC50();
}

void sub_1513C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_151B4()
{
  v1 = sub_2B8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = __chkstk_darwin(v1);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = MRContentItemCopyNowPlayingInfo();
  if (!v9)
  {
    ITunesStoreIdentifier = MRContentItemGetITunesStoreIdentifier();
    v48 = 0u;
    v49 = 0u;
    goto LABEL_11;
  }

  ITunesStoreIdentifier = MRContentItemGetITunesStoreIdentifier();
  result = kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode;
  if (kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode)
  {
    *&v46 = sub_2B9F0();
    *(&v46 + 1) = v12;
    v13 = v9;
    v14 = [v13 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v14)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      v15 = swift_dynamicCast();
      if (v15)
      {
        v17 = *(&v46 + 1);
        v16 = v46;
        if (ITunesStoreIdentifier)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

LABEL_12:
      v16 = 0;
      v17 = 0xE000000000000000;
      if (ITunesStoreIdentifier)
      {
        goto LABEL_21;
      }

LABEL_13:
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v44 = v8;
        v45 = v2;
        v19 = *(v0 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
        v20 = *(v0 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier + 8);
        *&v48 = v19;
        *(&v48 + 1) = v20;
        __chkstk_darwin(v15);
        *(&v44 - 2) = &v48;

        v21 = sub_24168(sub_2B750, (&v44 - 4), &off_34DA8);
        swift_arrayDestroy();

        v2 = v45;
        if (v21)
        {
          v22 = sub_2B9C0();
          v23 = [v22 longLongValue];

          if (qword_39890 != -1)
          {
            swift_once();
          }

          v24 = sub_25AC(v1, HMLog);
          swift_beginAccess();
          v25 = v44;
          (*(v2 + 2))(v44, v24, v1);

          v26 = sub_2B890();
          v27 = sub_2BB40();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v46 = v29;
            *v28 = 136315394;
            *(v28 + 4) = sub_20958(v16, v17, &v46);
            *(v28 + 12) = 2048;
            *(v28 + 14) = v23;
            _os_log_impl(&dword_0, v26, v27, "Transfering isrc %s to adam ID: %lld", v28, 0x16u);
            sub_2566C(v29);

            (*(v2 + 1))(v44, v1);
          }

          else
          {

            (*(v2 + 1))(v25, v1);
          }

          return v16;
        }

LABEL_22:
        if (v16 == sub_2B9F0() && v17 == v30)
        {
        }

        else
        {
          v32 = sub_2BDC0();

          if ((v32 & 1) == 0)
          {

            return v16;
          }
        }

        if (qword_39890 != -1)
        {
          swift_once();
        }

        v33 = sub_25AC(v1, HMLog);
        swift_beginAccess();
        (*(v2 + 2))(v6, v33, v1);
        v34 = v9;
        v35 = sub_2B890();
        v36 = sub_2BB40();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v45 = v6;
          v38 = v16;
          v39 = v1;
          v40 = v2;
          v41 = v37;
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v34;
          *v42 = v9;
          v43 = v34;
          _os_log_impl(&dword_0, v35, v36, "Sample track: %@", v41, 0xCu);
          sub_2AF20(v42, &qword_391A8, &qword_2CDE8);

          v2 = v40;
          v1 = v39;
          v16 = v38;
          v6 = v45;
        }

        else
        {
          v43 = v35;
          v35 = v34;
        }

        (*(v2 + 1))(v6, v1);
        return v16;
      }

LABEL_21:
      swift_arrayDestroy();
      goto LABEL_22;
    }

LABEL_11:
    v15 = sub_2AF20(&v48, &qword_39590, &qword_2D0C8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_15820(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2B8B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v3[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & 1) == 0)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v11 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    (*(v7 + 16))(v10, v11, v6);

    v12 = sub_2B890();
    v13 = sub_2BB40();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20958(a1, a2, aBlock);
      _os_log_impl(&dword_0, v12, v13, "Start haptic playback: %s", v14, 0xCu);
      sub_2566C(v15);
    }

    (*(v7 + 8))(v10, v6);
    v16 = [objc_allocWithZone(MRNowPlayingRequest) init];
    v17 = *&v3[OBJC_IVAR___AXHapticMusicServer_queue];
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = a1;
    v18[4] = a2;
    aBlock[4] = sub_29D04;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18344;
    aBlock[3] = &unk_35BD0;
    v19 = _Block_copy(aBlock);

    v20 = v17;
    v21 = v3;

    [v16 requestNowPlayingItemMetadataOnQueue:v20 completion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_15B38(char a1, uint64_t a2, void *a3)
{
  v5 = sub_2CC4(&qword_39140, &qword_2CD98);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v36[-v7];
  v9 = sub_2B8B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v16 = sub_25AC(v9, HMLog);
    swift_beginAccess();
    (*(v10 + 16))(v13, v16, v9);

    v17 = sub_2B890();
    v18 = sub_2BB40();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      swift_beginAccess();
      *(v19 + 4) = a3[2];

      *(v19 + 12) = 1024;
      *(v19 + 14) = a1 & 1;
      _os_log_impl(&dword_0, v17, v18, "Fetched haptic tracks for %lld: %{BOOL}d", v19, 0x12u);
    }

    else
    {
    }

    (*(v10 + 8))(v13, v9);
    if (a1)
    {
      swift_beginAccess();
      v20 = a3[4];
      v21 = a3[5];
      v23 = a3[6];
      v22 = a3[7];
      v24 = a3[8];
      v25 = &v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
      v26 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 16];
      v27 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 32];
      v28 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 48];
      *v25 = *(a3 + 1);
      *(v25 + 2) = v20;
      *(v25 + 3) = v21;
      *(v25 + 4) = v23;
      *(v25 + 5) = v22;
      *(v25 + 6) = v24;
    }

    else
    {
      v29 = &v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
      v30 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 16];
      v31 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 32];
      v32 = *&v15[OBJC_IVAR___AXHapticMusicServer_trackIdentifier + 48];
      *v29 = 0;
      v29[1] = 0;
      v29[2] = 0xE000000000000000;
      v29[3] = 0;
      v29[4] = 0xE000000000000000;
      v29[5] = 0;
      v29[6] = 0xE000000000000000;
    }

    v15[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] = 0;
    v33 = sub_2BB10();
    (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v15;
    *(v34 + 40) = a1 & 1;
    v35 = v15;
    sub_C560(0, 0, v8, &unk_2D188, v34);
  }

  return result;
}

uint64_t sub_15F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 144) = a5;
  *(v5 + 128) = a4;
  return (_swift_task_switch)(sub_15F40, 0, 0);
}

uint64_t sub_15F40()
{
  v1 = *(v0 + 128) + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_29BF0(v0 + 16, v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_16010;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);

  return sub_D698(v0 + 16, v6);
}

uint64_t sub_16010()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v5 = *v0;

  sub_29C28(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void sub_1610C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B8B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  if (a1 && (*(a2 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) & 1) == 0)
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v45 = a3;
    v21[4] = a4;
    v22 = qword_39890;
    v23 = a1;

    v44 = a2;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = sub_25AC(v8, HMLog);
    swift_beginAccess();
    (*(v9 + 16))(v15, v24, v8);
    v25 = v23;
    v26 = sub_2B890();
    v27 = sub_2BB50();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v21;
      v30 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = a1;
      v31 = v25;
      _os_log_impl(&dword_0, v26, v27, "metadata: %@", v28, 0xCu);
      sub_2AF20(v30, &qword_391A8, &qword_2CDE8);
      v21 = v43;
    }

    (*(v9 + 8))(v15, v8);
    v32 = v44;
    if (v44[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying])
    {
      v33 = v45;
      if (v44[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] == 1)
      {
LABEL_15:
        v34 = v25;
        v35 = 0;
LABEL_19:
        sub_16650(v34, v35, v32, v33, a4);
        goto LABEL_20;
      }
    }

    else
    {
      v33 = v45;
      if (v44[OBJC_IVAR___AXHapticMusicServer_engineIsRunning] != 1)
      {
        v36 = *&v44[OBJC_IVAR___AXHapticMusicServer_engine];
        if (v36)
        {
          v37 = v44;
          v38 = swift_allocObject();
          v38[2] = v37;
          v38[3] = sub_29D60;
          v38[4] = v21;
          v38[5] = v25;
          aBlock[4] = sub_29D70;
          aBlock[5] = v38;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2B744;
          aBlock[3] = &unk_35C48;
          v39 = _Block_copy(aBlock);
          v40 = v25;
          v41 = v37;
          v42 = v36;

          [v42 startWithCompletionHandler:v39];

          _Block_release(v39);
          return;
        }

LABEL_20:

        return;
      }

      v44[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] = 1;
      if (v32[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] == 1)
      {
        goto LABEL_15;
      }
    }

    v34 = v25;
    v35 = 1;
    goto LABEL_19;
  }

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v16 = sub_25AC(v8, HMLog);
  swift_beginAccess();
  (*(v9 + 16))(v13, v16, v8);
  v17 = a2;
  v18 = sub_2B890();
  v19 = sub_2BB40();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup);

    _os_log_impl(&dword_0, v18, v19, "Not process start requesting: %{BOOL}d", v20, 8u);
  }

  else
  {

    v18 = v17;
  }

  (*(v9 + 8))(v13, v8);
}

uint64_t sub_16650(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v57) = a2;
  v9 = sub_2B8F0();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B920();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B940();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = &v52 - v20;
  v21 = sub_2B8B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = sub_29DD0(a1);
  *(v26 + 16) = v27;
  v28 = *&a3[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo];
  if (v28)
  {
    v29 = v27;
    v54 = a4;
    v55 = a5;
    v30 = v28;
    [v30 startOffset];
    *(v26 + 16) = v31 + v29;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v32 = sub_25AC(v21, HMLog);
    swift_beginAccess();
    (*(v22 + 16))(v25, v32, v21);
    v33 = v30;
    v34 = sub_2B890();
    v35 = sub_2BB40();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = v15;
      v37 = v36;
      *v36 = 134217984;
      [v33 startOffset];
      *(v37 + 1) = v38;
      _os_log_impl(&dword_0, v34, v35, "Adding spatial offset: %f", v37, 0xCu);
      v15 = v53;

      v39 = v33;
    }

    else
    {
      v39 = v34;
      v34 = v33;
    }

    a4 = v54;

    (*(v22 + 8))(v25, v21);
    a5 = v55;
  }

  v40 = *(v26 + 16);
  if (v57)
  {
    sub_16D74(*(v26 + 16));
  }

  else
  {
    sub_173BC(*(v26 + 16));
  }

  v57 = *&a3[OBJC_IVAR___AXHapticMusicServer_queue];
  sub_2B930();
  v41 = (v56 + 8);
  sub_2B950();
  v56 = *v41;
  (v56)(v19, v15);
  v42 = swift_allocObject();
  v42[2] = v26;
  v42[3] = a3;
  v42[4] = a4;
  v42[5] = a5;
  if (v40 >= 1.0)
  {
    v70 = sub_2A0D8;
    v71 = v42;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v43 = &unk_35D10;
  }

  else
  {
    v70 = sub_2B76C;
    v71 = v42;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v43 = &unk_35D60;
  }

  v68 = sub_2B614;
  v69 = v43;
  v44 = _Block_copy(&aBlock);

  v45 = a3;

  v46 = v58;
  sub_2B900();
  v65 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  v47 = v59;
  v48 = v63;
  sub_2BC80();
  v49 = v64;
  v50 = v57;
  sub_2BBA0();
  _Block_release(v44);

  (*(v62 + 8))(v47, v48);
  (*(v60 + 8))(v46, v61);
  (v56)(v49, v15);
}

uint64_t sub_16D74(double a1)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v14 = sub_25AC(v3, HMLog);
  swift_beginAccess();
  v15 = v4;
  v16 = *(v4 + 16);
  v57 = v4 + 16;
  v58 = v14;
  v56 = v16;
  v16(v13, v14, v3);
  v17 = v1;
  v18 = sub_2B890();
  v19 = sub_2BB70();
  v20 = os_log_type_enabled(v18, v19);
  v21 = &unk_39000;
  v53 = v3;
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 134218496;
    *(v22 + 4) = a1;
    *(v22 + 12) = 1024;
    *(v22 + 14) = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
    *(v22 + 18) = 2048;
    v23 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v24 = *(&v17->isa + v23);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v48 = *(&v17->isa + v23);
      }

      v25 = sub_2BD60();
    }

    else
    {
      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    }

    *(v22 + 20) = v25;

    _os_log_impl(&dword_0, v18, v19, "Starting at position for playing tracks: %f %{BOOL}d, players: %ld", v22, 0x1Cu);

    v3 = v53;
    v21 = &unk_39000;
  }

  else
  {

    v18 = v17;
  }

  v26 = *(v15 + 8);
  v54 = v15 + 8;
  v55 = v26;
  v26(v13, v3);
  if (*(&v17->isa + v21[42]))
  {
    v27 = OBJC_IVAR___AXHapticMusicServer_players;
    result = swift_beginAccess();
    v51 = v17;
    v29 = *(&v17->isa + v27);
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v49 = *(&v17->isa + v27);
      }

      result = sub_2BD60();
      v30 = result;
      if (!result)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      if (!v30)
      {
LABEL_27:
        *(&v51->isa + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 1;
        return result;
      }
    }

    if (v30 < 1)
    {
      __break(1u);
    }

    v59 = v29 & 0xC000000000000001;

    v31 = 0;
    *&v32 = 138412290;
    v52 = v32;
    do
    {
      if (v59)
      {
        v33 = sub_2BD00();
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
        swift_unknownObjectRetain();
      }

      v60 = 0;
      v34 = [v33 startAtTime:&v60 error:0.0];
      v35 = v60;
      if (v34 && (v60 = 0, v36 = v35, v37 = [v33 seekToOffset:&v60 error:a1], v35 = v60, v37))
      {
        v38 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v35;
        sub_2B7D0();

        swift_willThrow();
        v56(v8, v58, v3);
        swift_errorRetain();
        v40 = sub_2B890();
        v41 = sub_2BB60();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = v52;
          swift_errorRetain();
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v42 + 4) = v44;
          *v43 = v44;
          _os_log_impl(&dword_0, v40, v41, "Error seeking offset: %@", v42, 0xCu);
          sub_2AF20(v43, &qword_391A8, &qword_2CDE8);

          v3 = v53;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v55(v8, v3);
      }

      ++v31;
    }

    while (v30 != v31);

    goto LABEL_27;
  }

  v56(v11, v58, v3);
  v45 = sub_2B890();
  v46 = sub_2BB40();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, " -- Haptic not playing - not starting", v47, 2u);
  }

  return (v55)(v11, v3);
}

uint64_t sub_173BC(double a1)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - v9;
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v13 = sub_25AC(v3, HMLog);
  swift_beginAccess();
  v14 = v4[2];
  v54 = v4 + 2;
  v55 = v13;
  v53 = v14;
  v14(v12, v13, v3);
  v15 = v1;
  v16 = sub_2B890();
  v17 = sub_2BB40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v4;
    v19 = swift_slowAlloc();
    *v19 = 134218496;
    *(v19 + 4) = a1;
    *(v19 + 12) = 1024;
    *(v19 + 14) = *(&v15->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
    *(v19 + 18) = 2048;
    v20 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v21 = *(&v15->isa + v20);
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v47 = *(&v15->isa + v20);
      }

      v22 = sub_2BD60();
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    *(v19 + 20) = v22;

    _os_log_impl(&dword_0, v16, v17, "Seeking position for playing tracks: %f %{BOOL}d, players: %ld", v19, 0x1Cu);

    v4 = v18;
  }

  else
  {

    v16 = v15;
  }

  v52 = v4[1];
  v52(v12, v3);
  v23 = *(&v15->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
  v49 = v4 + 1;
  if (v23)
  {
    if (*(&v15->isa + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) < a1)
    {
      *(&v15->isa + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
    }

    v24 = OBJC_IVAR___AXHapticMusicServer_players;
    result = swift_beginAccess();
    v26 = *(&v15->isa + v24);
    if (v26 >> 62)
    {
      result = sub_2BD60();
      v27 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      if (!v27)
      {
        return result;
      }
    }

    if (v27 < 1)
    {
      __break(1u);
    }

    v28 = v26 & 0xC000000000000001;

    v29 = 0;
    *&v30 = 138412290;
    v48 = v30;
    v50 = v26;
    v51 = v26 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v32 = sub_2BD00();
      }

      else
      {
        v32 = *(v26 + 8 * v29 + 32);
        swift_unknownObjectRetain();
      }

      v57 = 0;
      v33 = [v32 seekToOffset:&v57 error:{a1, v48, *(&v48 + 1)}];
      v34 = v57;
      if (v33)
      {
        v57 = 0;
        v35 = v34;
        if ([v32 resumeAtTime:&v57 error:0.0])
        {
          v31 = v57;
        }

        else
        {
          v36 = v57;
          sub_2B7D0();

          v28 = v51;
          swift_willThrow();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v37 = v57;
        sub_2B7D0();

        swift_willThrow();
        v53(v56, v55, v3);
        swift_errorRetain();
        v38 = sub_2B890();
        v39 = sub_2BB60();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v3;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = v48;
          swift_errorRetain();
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v43;
          *v42 = v43;
          _os_log_impl(&dword_0, v38, v39, "Error seeking offset: %@", v41, 0xCu);
          sub_2AF20(v42, &qword_391A8, &qword_2CDE8);
          v28 = v51;

          v3 = v40;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v52(v56, v3);
        v26 = v50;
      }

      ++v29;
    }

    while (v27 != v29);
  }

  else
  {
    v53(v10, v55, v3);
    v44 = sub_2B890();
    v45 = sub_2BB40();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, " -- Haptic not playing - not starting", v46, 2u);
    }

    return (v52)(v10, v3);
  }
}

uint64_t sub_17A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_2B890();
  v14 = sub_2BB50();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    swift_beginAccess();
    *(v15 + 4) = *(a1 + 16);
    _os_log_impl(&dword_0, v13, v14, "Re-requesting position: %f", v15, 0xCu);
  }

  (*(v8 + 8))(v11, v7);
  return sub_54CC(a3, a4);
}

uint64_t sub_17C4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a5;
  v9 = sub_2B8F0();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2B920();
  v38 = *(v36 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2B8B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v21 = sub_25AC(v16, HMLog);
    swift_beginAccess();
    (*(v17 + 16))(v20, v21, v16);
    swift_errorRetain();
    v22 = sub_2B890();
    v23 = sub_2BB60();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_0, v22, v23, "Could not start engine: %@", v24, 0xCu);
      sub_2AF20(v25, &qword_391A8, &qword_2CDE8);
    }

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v28 = *&a2[OBJC_IVAR___AXHapticMusicServer_queue];
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a3;
    v30 = v37;
    v29[4] = a4;
    v29[5] = v30;
    aBlock[4] = sub_29DC4;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_35C98;
    v31 = _Block_copy(aBlock);
    v32 = v28;
    v33 = a2;

    v34 = v30;
    sub_2B900();
    v40 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v31);

    (*(v39 + 8))(v12, v9);
    (*(v38 + 8))(v15, v36);
  }
}

void sub_18134(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 1;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2B890();
  v14 = sub_2BB40();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Started engine", v15, 2u);
  }

  (*(v8 + 8))(v11, v7);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 1;
  a2(a4, 1);
  sub_C860();
  *(a1 + OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack) = CFAbsoluteTimeGetCurrent();
}

void sub_18344(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_183D0(uint64_t a1)
{
  v2 = sub_2B870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v62 - v7;
  v65 = sub_2B8B0();
  v68 = *(v65 - 8);
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = sub_2CC4(&qword_39540, &qword_2D088);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  v22 = OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime;
  v23 = *(a1 + OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime);
  [v21 hapticMusicUsagePerDay];
  [v21 setHapticMusicUsagePerDay:v23 + v24];

  *(a1 + v22) = 0;
  v25 = [objc_allocWithZone(NSDate) init];
  v64 = v20;
  v26 = [v20 sharedInstance];
  v27 = [v26 hapticMusicUsageStartDate];

  if (v27)
  {
    sub_2B850();

    (*(v3 + 56))(v17, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v17, 1, 1, v2);
  }

  v28 = v2;
  sub_25F60(v17, v19);
  v29 = (*(v3 + 48))(v19, 1, v2);
  v31 = v65;
  v30 = v66;
  if (v29 == 1)
  {
    sub_2AF20(v19, &qword_39540, &qword_2D088);
    v32 = [v25 dateByAddingTimeInterval:-86401.0];

    v33 = v32;
  }

  else
  {
    isa = sub_2B830().super.isa;

    (*(v3 + 8))(v19, v28);
    v35 = qword_39890;
    v36 = isa;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = sub_25AC(v31, HMLog);
    swift_beginAccess();
    (*(v68 + 16))(v12, v37, v31);
    v33 = v36;
    v38 = sub_2B890();
    v39 = sub_2BB50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v33;
      *v41 = v33;
      v42 = v33;
      _os_log_impl(&dword_0, v38, v39, "Last time we stored data %@", v40, 0xCu);
      sub_2AF20(v41, &qword_391A8, &qword_2CDE8);
    }

    (*(v68 + 8))(v12, v31);
  }

  v43 = [(objc_class *)v33 dateByAddingTimeInterval:86400.0];

  v44 = v67;
  sub_2B850();

  sub_2B860();
  LOBYTE(v43) = sub_2B840();
  v45 = *(v3 + 8);
  v45(v30, v28);
  if (v43)
  {
    v46 = [v64 sharedInstance];
    [v46 hapticMusicUsagePerDay];
    v48 = v47;

    if (v48 <= 0.0)
    {
      v49 = 0;
    }

    else if (v48 >= 30.0)
    {
      if (v48 >= 60.0)
      {
        if (v48 >= 120.0)
        {
          if (v48 >= 180.0)
          {
            if (v48 >= 360.0)
            {
              if (v48 >= 600.0)
              {
                if (v48 >= 1200.0)
                {
                  if (v48 >= 1800.0)
                  {
                    if (v48 >= 3600.0)
                    {
                      if (v48 >= 7200.0)
                      {
                        if (v48 >= 10800.0)
                        {
                          if (v48 >= 14400.0)
                          {
                            if (v48 >= 18000.0)
                            {
                              if (v48 >= 21600.0)
                              {
                                if (v48 >= 43200.0)
                                {
                                  if (v48 >= 64800.0)
                                  {
                                    if (v48 >= 86400.0)
                                    {
                                      v49 = 0;
                                    }

                                    else
                                    {
                                      v49 = 86400;
                                    }
                                  }

                                  else
                                  {
                                    v49 = 64800;
                                  }
                                }

                                else
                                {
                                  v49 = 43200;
                                }
                              }

                              else
                              {
                                v49 = 21600;
                              }
                            }

                            else
                            {
                              v49 = 18000;
                            }

                            v31 = v65;
                            v30 = v66;
                          }

                          else
                          {
                            v49 = 14400;
                          }
                        }

                        else
                        {
                          v49 = 10800;
                        }
                      }

                      else
                      {
                        v49 = 7200;
                      }
                    }

                    else
                    {
                      v49 = 3600;
                    }
                  }

                  else
                  {
                    v49 = 1800;
                  }
                }

                else
                {
                  v49 = 1200;
                }
              }

              else
              {
                v49 = 600;
              }
            }

            else
            {
              v49 = 360;
            }
          }

          else
          {
            v49 = 180;
          }
        }

        else
        {
          v49 = 120;
        }
      }

      else
      {
        v49 = 60;
      }
    }

    else
    {
      v49 = 30;
    }

    if (qword_39890 != -1)
    {
      swift_once();
    }

    v50 = sub_25AC(v31, HMLog);
    swift_beginAccess();
    (*(v68 + 16))(v63, v50, v31);
    v51 = sub_2B890();
    v52 = sub_2BB50();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218240;
      *(v53 + 4) = v48;
      *(v53 + 12) = 2048;
      *(v53 + 14) = v49;
      _os_log_impl(&dword_0, v51, v52, "Bucketing value %f -> %ld", v53, 0x16u);
    }

    (*(v68 + 8))(v63, v31);
    v54 = sub_2B9C0();
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    aBlock[4] = sub_25FE0;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E2C;
    aBlock[3] = &unk_35680;
    v56 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v56);

    v57 = v64;
    v58 = [v64 sharedInstance];
    v59 = [objc_opt_self() now];
    sub_2B850();

    v60 = sub_2B830().super.isa;
    v45(v30, v28);
    [v58 setHapticMusicUsageStartDate:v60];

    v61 = [v57 sharedInstance];
    [v61 setHapticMusicUsagePerDay:0.0];

    v45(v67, v28);
  }

  else
  {
    v45(v44, v28);
  }
}

Class sub_18E2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2ACCC(0, &qword_39548, NSObject_ptr);
    v5.super.isa = sub_2B990().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_18EC8()
{
  v2 = v0;
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSData);
  sub_2B7E0(v9);
  v11 = v10;
  v12 = [v8 initWithContentsOfURL:v10];

  if (v12)
  {
    v43 = xmmword_2CD70;
    sub_2B820();

    v13 = *(&v43 + 1);
    if (*(&v43 + 1) >> 60 != 15)
    {
      v14 = v43;
      v15 = objc_opt_self();
      isa = sub_2B810().super.isa;
      *&v43 = 0;
      v17 = [v15 JSONObjectWithData:isa options:0 error:&v43];

      if (v17)
      {
        v18 = v43;
        sub_2BC70();
        swift_unknownObjectRelease();
        sub_2CC4(&qword_395B8, &qword_2D0E8);
        if (swift_dynamicCast())
        {
          v19 = objc_allocWithZone(CHHapticPattern);
          v20 = sub_1F788();
          if (!v1)
          {
            v21 = v20;
            v40 = v14;
            if (qword_39890 != -1)
            {
              swift_once();
            }

            v22 = sub_25AC(v3, HMLog);
            swift_beginAccess();
            (*(v4 + 16))(v7, v22, v3);
            v23 = v21;
            v24 = sub_2B890();
            LOBYTE(v22) = sub_2BB40();
            v41 = v23;

            v25 = v22;
            if (os_log_type_enabled(v24, v22))
            {
              v26 = swift_slowAlloc();
              *v26 = 134217984;
              [v41 duration];
              *(v26 + 4) = v27;
              _os_log_impl(&dword_0, v24, v25, "Pattern duration: %f", v26, 0xCu);
            }

            (*(v4 + 8))(v7, v3);
            [v41 duration];
            *(v2 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = v28;
            v29 = *(v2 + OBJC_IVAR___AXHapticMusicServer_engine);
            if (v29)
            {
              v42[0] = 0;
              v30 = [v29 createAdvancedPlayerWithPattern:v41 error:v42];
              v31 = v42[0];
              v32 = v40;
              if (v30)
              {
                v33 = OBJC_IVAR___AXHapticMusicServer_players;
                swift_beginAccess();
                v34 = v31;
                swift_unknownObjectRetain();
                sub_2BA70();
                if (*(&dword_10 + (*(v2 + v33) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v33) & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  v38 = *(&dword_10 + (*(v2 + v33) & 0xFFFFFFFFFFFFFF8));
                  sub_2BAC0();
                }

                sub_2BAD0();
                swift_endAccess();
                sub_2A4B8(v32, v13);
                swift_unknownObjectRelease();
                goto LABEL_21;
              }

              v37 = v42[0];
              sub_2B7D0();

              swift_willThrow();
              v36 = v32;
            }

            else
            {
              v36 = v40;
            }

            sub_2A4B8(v36, v13);
LABEL_21:

            return;
          }
        }
      }

      else
      {
        v35 = v43;
        sub_2B7D0();

        swift_willThrow();
      }

      sub_2A4B8(v14, v13);
    }
  }
}

void sub_19390(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, unint64_t a6)
{
  v255 = a4;
  v280 = sub_2B800();
  v276 = *(v280 - 8);
  v11 = v276[8];
  v12 = __chkstk_darwin(v280);
  v275 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v245 - v14);
  v274 = sub_2B8B0();
  v261 = *(v274 - 1);
  v16 = v261[8];
  v17 = __chkstk_darwin(v274);
  v19 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v245 - v21;
  v23 = __chkstk_darwin(v20);
  v256 = (&v245 - v24);
  v25 = __chkstk_darwin(v23);
  v257 = &v245 - v26;
  v27 = __chkstk_darwin(v25);
  v28 = __chkstk_darwin(v27);
  v29 = __chkstk_darwin(v28);
  v265 = &v245 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v245 - v32;
  __chkstk_darwin(v31);
  p_aBlock = &v245 - v36;
  v38 = (a3 >> 62);
  v278 = a3;
  if (a3 >> 62)
  {
    goto LABEL_78;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
LABEL_79:
    (a5)(0);
    return;
  }

  while (1)
  {
    v279 = v38;
    v247 = v35;
    v248 = v34;
    v246 = v19;
    v252 = a6;
    v39 = &_swiftEmptyArrayStorage;
    v282 = &_swiftEmptyArrayStorage;
    v254 = objc_opt_self();
    v40 = [v254 sharedInstance];
    v41 = [v40 hapticMusicAlgorithmSelections];

    if (v41)
    {
      *&aBlock = 0;
      sub_2BA90();

      if (aBlock)
      {
        v39 = aBlock;
      }
    }

    v270 = v15;
    v249 = v22;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v22 = v274;
    v42 = sub_25AC(v274, HMLog);
    swift_beginAccess();
    v43 = v261;
    v44 = v261[2];
    v268 = v42;
    v267 = v261 + 2;
    v266 = v44;
    v44(p_aBlock, v42, v22);

    v45 = sub_2B890();
    v46 = sub_2BB40();

    v47 = os_log_type_enabled(v45, v46);
    v251 = a2;
    v273 = v39;
    v250 = a1;
    v253 = a5;
    if (v47)
    {
      a2 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&aBlock = v48;
      *a2 = 136315138;
      v49 = sub_2BAB0();
      v51 = sub_20958(v49, v50, &aBlock);

      *(a2 + 4) = v51;
      _os_log_impl(&dword_0, v45, v46, "Algorithms desired %s", a2, 0xCu);
      sub_2566C(v48);
    }

    v269 = v43[1];
    v269(p_aBlock, v22);
    v266(v33, v268, v22);
    a1 = v278;

    a6 = sub_2B890();
    p_aBlock = sub_2BB40();

    if (os_log_type_enabled(a6, p_aBlock))
    {
      v52 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      *&aBlock = a2;
      *v52 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v53 = sub_2BAB0();
      a1 = v54;
      v55 = sub_20958(v53, v54, &aBlock);

      *(v52 + 4) = v55;
      _os_log_impl(&dword_0, a6, p_aBlock, "Available items %s", v52, 0xCu);
      sub_2566C(a2);
    }

    v269(v33, v22);
    v15 = v270;
    if (v279)
    {
      a6 = v278;
      v58 = sub_2BD60();
      v57 = a6;
      v19 = v58;
    }

    else
    {
      v57 = v278;
      v19 = *(&dword_10 + (v278 & 0xFFFFFFFFFFFFFF8));
    }

    v38 = _Block_release;
    *&v277 = v19;
    if (!v19)
    {
      break;
    }

    a5 = 0;
    v59 = 0;
    v272 = (v57 & 0xC000000000000001);
    v262 = v57 & 0xFFFFFFFFFFFFFF8;
    v258 = SHHapticPatternAlgorithmDefault;
    v264 = (v261 + 1);
    v279 = &_swiftEmptyArrayStorage;
    *&v56 = 136315394;
    v259 = v56;
    while (1)
    {
      if (v272)
      {
        v60 = sub_2BD00();
      }

      else
      {
        if (a5 >= *(v262 + 16))
        {
          goto LABEL_77;
        }

        v60 = *(v57 + 8 * a5 + 32);
      }

      a6 = v60;
      v22 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        break;
      }

      v61 = [v60 algorithm];
      v62 = sub_2B9F0();
      a2 = v63;

      a1 = &v245;
      *&aBlock = v62;
      *(&aBlock + 1) = a2;
      __chkstk_darwin(v64);
      *(&v245 - 2) = &aBlock;
      v65 = v273;
      v33 = v59;
      p_aBlock = sub_24168(sub_2B750, (&v245 - 4), v273);

      if (p_aBlock)
      {
        swift_beginAccess();
        a1 = a6;
        sub_2BA70();
        if (*(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v282 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v78 = *(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8));
          sub_2BAC0();
        }

        sub_2BAD0();
        a6 = v282;
        swift_endAccess();
        v33 = v265;
        v266(v265, v268, v274);

        p_aBlock = sub_2B890();
        a2 = sub_2BB40();

        v66 = os_log_type_enabled(p_aBlock, a2);
        v279 = a6;
        if (v66)
        {
          v67 = swift_slowAlloc();
          *&v263 = a1;
          a1 = v67;
          *&aBlock = swift_slowAlloc();
          *a1 = v259;
          v68 = sub_2BAB0();
          v271 = v59;
          v70 = sub_20958(v68, v69, &aBlock);

          *(a1 + 4) = v70;
          *(a1 + 12) = 2080;
          sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

          v71 = sub_2BAB0();
          v73 = v72;

          v74 = sub_20958(v71, v73, &aBlock);
          v15 = v270;

          *(a1 + 14) = v74;
          v59 = v271;
          _os_log_impl(&dword_0, p_aBlock, a2, "Selected track for %s %s", a1, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v269(v33, v274);
      }

      else
      {
        if (!*(v65 + 16))
        {
          p_aBlock = [a6 algorithm];
          v75 = sub_2B9F0();
          a2 = v76;
          if (v75 == sub_2B9F0() && a2 == v77)
          {

LABEL_38:
            swift_beginAccess();
            v19 = a6;
            sub_2BA70();
            if (*(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v282 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_39;
            }

            goto LABEL_187;
          }

          a1 = sub_2BDC0();

          if (a1)
          {
            goto LABEL_38;
          }
        }
      }

      v57 = v278;
      ++a5;
      v19 = v277;
      if (v22 == v277)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v248 = v34;
    v111 = v35;
    v279 = v38;
    v112 = sub_2BD60();
    v38 = v279;
    v35 = v111;
    v34 = v248;
    if (v112 < 1)
    {
      goto LABEL_79;
    }
  }

  v59 = 0;
  v279 = &_swiftEmptyArrayStorage;
  while (1)
  {
LABEL_43:
    v91 = v57;
    v33 = v260;
    v92 = *&v260[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections];
    *&v260[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections] = v273;

    v93 = [v254 sharedInstance];
    [v93 hapticMusicIntensity];
    v95 = v94;

    v96 = v95;
    if (v96 == 0.0)
    {
      v96 = 1.0;
    }

    v38 = &v288;
    v273 = OBJC_IVAR___AXHapticMusicServer_cachedIntensity;
    *&v33[OBJC_IVAR___AXHapticMusicServer_cachedIntensity] = v96;
    v97 = v279;
    if (v279 >> 62)
    {
      v113 = sub_2BD60();
      v98 = v91;
      if (v113)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v98 = v91;
      if (*(&dword_10 + (v279 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_88;
      }
    }

    p_aBlock = &_swiftEmptyArrayStorage;
    *&aBlock = &_swiftEmptyArrayStorage;
    if (v19)
    {
      v271 = v59;
      a6 = 0;
      v99 = v98 & 0xC000000000000001;
      a5 = v98 & 0xFFFFFFFFFFFFFF8;
      v22 = SHHapticPatternAlgorithmDefault;
      while (1)
      {
        if (v99)
        {
          v100 = sub_2BD00();
        }

        else
        {
          if (a6 >= *(a5 + 16))
          {
            goto LABEL_76;
          }

          v100 = *(v98 + 8 * a6 + 32);
        }

        v15 = v100;
        v33 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          goto LABEL_75;
        }

        p_aBlock = [v100 algorithm];
        v101 = sub_2B9F0();
        a2 = v102;
        v104 = sub_2B9F0();
        v105 = v101;
        v19 = v103;
        if (v105 == v104 && a2 == v103)
        {
          break;
        }

        a1 = sub_2BDC0();

        if (a1)
        {
          goto LABEL_62;
        }

LABEL_50:
        ++a6;
        v15 = v270;
        v98 = v278;
        if (v33 == v277)
        {
          p_aBlock = aBlock;
          v59 = v271;
          v97 = v279;
          goto LABEL_65;
        }
      }

LABEL_62:
      p_aBlock = &aBlock;
      sub_2BD20();
      v19 = *(aBlock + 16);
      sub_2BD40();
      sub_2BD50();
      sub_2BD30();
      goto LABEL_50;
    }

LABEL_65:
    if (p_aBlock < 0 || (p_aBlock & 0x4000000000000000) != 0)
    {
      v114 = v98;
      v115 = sub_2BD60();
      v98 = v114;
      if (!v115)
      {
LABEL_83:
        v107 = v98;

        goto LABEL_84;
      }
    }

    else if (!*(p_aBlock + 16))
    {
      goto LABEL_83;
    }

    if ((p_aBlock & 0xC000000000000001) != 0)
    {
      goto LABEL_185;
    }

    if (*(p_aBlock + 16))
    {
      break;
    }

    __break(1u);
LABEL_187:
    sub_2BAC0();
LABEL_39:
    sub_2BAD0();
    v79 = v282;
    swift_endAccess();
    v80 = v247;
    v81 = v274;
    v266(v247, v268, v274);
    v82 = sub_2B890();
    a2 = sub_2BB40();
    v83 = os_log_type_enabled(v82, a2);
    v279 = v79;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v272 = v19;
      v85 = v84;
      a1 = swift_slowAlloc();
      *&aBlock = a1;
      *v85 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v86 = v59;

      v87 = sub_2BAB0();
      v89 = v88;

      v90 = sub_20958(v87, v89, &aBlock);
      v15 = v270;

      *(v85 + 4) = v90;
      v59 = v86;
      _os_log_impl(&dword_0, v82, a2, "Selected default algorithm track %s", v85, 0xCu);
      sub_2566C(a1);
    }

    else
    {
    }

    v269(v80, v81);
    v57 = v278;
    v19 = v277;
  }

  v107 = v98;
  for (i = *(p_aBlock + 32); ; i = sub_2BD00())
  {
    v109 = i;

    swift_beginAccess();
    v110 = v109;
    sub_2BA70();
    if (*(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v282 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v244 = *(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8));
      sub_2BAC0();
    }

    sub_2BAD0();
    v97 = v282;
    swift_endAccess();

LABEL_84:
    v116 = v248;
    v117 = v274;
    v266(v248, v268, v274);
    v118 = sub_2B890();
    v119 = sub_2BB40();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&aBlock = v121;
      *v120 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

      v122 = sub_2BAB0();
      v124 = v123;

      v125 = sub_20958(v122, v124, &aBlock);

      *(v120 + 4) = v125;
      _os_log_impl(&dword_0, v118, v119, "Fallback to default item %s", v120, 0xCu);
      sub_2566C(v121);

      v269(v116, v274);
      v98 = v278;
    }

    else
    {

      v269(v116, v117);
      v98 = v107;
    }

    v19 = v277;
LABEL_88:
    if (v97 >> 62)
    {
      v240 = v98;
      v126 = sub_2BD60();
      v98 = v240;
    }

    else
    {
      v126 = *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8));
    }

    v127 = v257;
    if (v126)
    {
      goto LABEL_102;
    }

    if (!v19)
    {
      goto LABEL_98;
    }

    if ((v98 & 0xC000000000000001) != 0)
    {
      goto LABEL_183;
    }

    if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

    __break(1u);
LABEL_185:
    v107 = v98;
  }

  v128 = *(v98 + 32);
  while (2)
  {
    v129 = v128;
    swift_beginAccess();
    v130 = v129;
    sub_2BA70();
    if (*(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v282 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v243 = *(&dword_10 + (v282 & 0xFFFFFFFFFFFFFF8));
      sub_2BAC0();
    }

    sub_2BAD0();
    v97 = v282;
    swift_endAccess();

    v127 = v257;
LABEL_98:
    v131 = v274;
    v266(v127, v268, v274);
    v132 = sub_2B890();
    v133 = sub_2BB40();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *&aBlock = v135;
      *v134 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

      v136 = sub_2BAB0();
      v138 = v137;

      v139 = sub_20958(v136, v138, &aBlock);

      *(v134 + 4) = v139;
      _os_log_impl(&dword_0, v132, v133, "Fallback to first item %s", v134, 0xCu);
      sub_2566C(v135);

      v140 = v127;
      v141 = v274;
    }

    else
    {

      v140 = v127;
      v141 = v131;
    }

    v269(v140, v141);
LABEL_102:
    if (v97 >> 62)
    {
      v142 = sub_2BD60();
    }

    else
    {
      v142 = *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8));
    }

    v279 = v97;
    v278 = v97 >> 62;
    if (v142)
    {
      *&aBlock = &_swiftEmptyArrayStorage;

      sub_24214(0, v142 & ~(v142 >> 63), 0);
      if ((v142 & 0x8000000000000000) == 0)
      {
        v143 = 0;
        v144 = aBlock;
        v145 = v97 & 0xC000000000000001;
        do
        {
          v146 = v59;
          if (v145)
          {
            v147 = sub_2BD00();
          }

          else
          {
            v147 = *(v279 + 8 * v143 + 32);
          }

          v148 = v147;
          v149 = [v147 fileURL];
          sub_2B7F0();

          *&aBlock = v144;
          v151 = *(v144 + 16);
          v150 = *(v144 + 24);
          if (v151 >= v150 >> 1)
          {
            sub_24214(v150 > 1, v151 + 1, 1);
            v144 = aBlock;
          }

          ++v143;
          *(v144 + 16) = v151 + 1;
          (v276[4])(v144 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + v276[9] * v151, v15, v280);
          v59 = v146;
        }

        while (v142 != v143);
        v97 = v279;

        break;
      }

      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v128 = sub_2BD00();
      continue;
    }

    break;
  }

  v15 = v256;
  v152 = v274;
  v266(v256, v268, v274);

  v153 = sub_2B890();
  v154 = sub_2BB70();

  v155 = os_log_type_enabled(v153, v154);
  v271 = v59;
  if (v155)
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&aBlock = v157;
    *v156 = 136315138;
    v158 = sub_2BAB0();
    v59 = v159;

    v160 = sub_20958(v158, v59, &aBlock);

    *(v156 + 4) = v160;
    _os_log_impl(&dword_0, v153, v154, "Found haptic tracks at: %s", v156, 0xCu);
    sub_2566C(v157);
  }

  else
  {
  }

  v269(v15, v152);
  v161 = v260;
  if (v278)
  {
    v162 = sub_2BD60();
    v163 = &unk_39000;
    if (!v162)
    {
      goto LABEL_166;
    }

    goto LABEL_121;
  }

  v162 = *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8));
  v163 = &unk_39000;
  if (v162)
  {
LABEL_121:
    if (v162 < 1)
    {
      goto LABEL_182;
    }

    v270 = OBJC_IVAR___AXHapticMusicServer_currentPatternDuration;
    v265 = OBJC_IVAR___AXHapticMusicServer_currentMetadata;
    v264 = OBJC_IVAR___AXHapticMusicServer_engine;
    v262 = v163[62];
    v278 = v97 & 0xC000000000000001;
    v164 = (v276 + 1);
    v276 = v261 + 1;
    v261 = v285;

    v165 = 0;
    *(&v166 + 1) = 0xF000000000000000;
    v277 = xmmword_2CD70;
    *&v166 = 134218240;
    v263 = v166;
    *&v166 = 136315394;
    v259 = v166;
    while (1)
    {
      if (v278)
      {
        v167 = sub_2BD00();
      }

      else
      {
        v167 = *(v97 + 8 * v165 + 32);
      }

      v168 = v167;
      v169 = [v167 fileURL];
      v170 = v275;
      sub_2B7F0();

      v171 = objc_allocWithZone(NSData);
      sub_2B7E0(v172);
      v174 = v173;
      v175 = [v171 initWithContentsOfURL:v173];

      (*v164)(v170, v280);
      if (!v175 || (aBlock = v277, sub_2B820(), v175, v176 = *(&aBlock + 1), *(&aBlock + 1) >> 60 == 15))
      {
      }

      else
      {
        v177 = aBlock;
        v178 = objc_opt_self();
        isa = sub_2B810().super.isa;
        *&aBlock = 0;
        v180 = [v178 JSONObjectWithData:isa options:0 error:&aBlock];

        if (v180)
        {
          v181 = aBlock;
          sub_2BC70();
          swift_unknownObjectRelease();
          sub_2CC4(&qword_395D8, &qword_2D0F0);
          if (swift_dynamicCast())
          {
            v182 = v286;
            if (sub_1B868(v286))
            {
              v183 = objc_allocWithZone(CHHapticPattern);
              v184 = v271;
              v185 = sub_1F788();
              if (v184)
              {

                sub_2A4B8(v177, v176);

                goto LABEL_135;
              }

              v271 = 0;
              if (v185)
              {
                v258 = v162;
                v187 = v185;
                v266(v249, v268, v274);
                v272 = v187;
                v188 = v260;
                v189 = sub_2B890();
                v190 = sub_2BB40();
                v256 = v188;

                v191 = v272;
                LODWORD(v257) = v190;
                if (os_log_type_enabled(v189, v190))
                {
                  v192 = v189;
                  v193 = swift_slowAlloc();
                  *v193 = v263;
                  [v191 duration];
                  *(v193 + 4) = v194;
                  *(v193 + 12) = 2048;
                  *(v193 + 14) = *&v260[v273];
                  _os_log_impl(&dword_0, v192, v257, "Pattern duration: %f, volume: %f", v193, 0x16u);
                  v189 = v192;
                }

                v269(v249, v274);
                [v191 duration];
                *&v260[v270] = v195;
                *&v286 = 0x617461646174654DLL;
                *(&v286 + 1) = 0xE800000000000000;
                sub_2BCC0();
                if (*(v182 + 16) && (v196 = sub_2103C(&aBlock), (v197 & 1) != 0))
                {
                  sub_25098(*(v182 + 56) + 32 * v196, &v286);
                  sub_25044(&aBlock);

                  v198 = swift_dynamicCast();
                  v162 = v258;
                  if (v198)
                  {
                    v199 = v283;
                  }

                  else
                  {
                    v199 = 0;
                  }

                  v200 = v260;
                  v97 = v279;
                }

                else
                {

                  sub_25044(&aBlock);
                  v199 = 0;
                  v200 = v260;
                  v97 = v279;
                  v162 = v258;
                }

                v201 = *&v265[v200];
                *&v265[v200] = v199;

                if (v199)
                {
                  *&v286 = 0x746E6169726176;
                  *(&v286 + 1) = 0xE700000000000000;
                  sub_2BCC0();
                  v202 = [v168 fileURL];
                  v287 = v280;
                  sub_2A560(&v286);
                  sub_2B7F0();

                  sub_2A5C4(&v286, &v283);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v281 = v199;
                  sub_22FC8(&v283, &aBlock, isUniquelyReferenced_nonNull_native);
                  sub_25044(&aBlock);
                }

                v204 = *&v260[v264];
                if (!v204)
                {

                  sub_2A4B8(v177, v176);
                  goto LABEL_124;
                }

                *&aBlock = 0;
                v205 = v272;
                v206 = [v204 createAdvancedPlayerWithPattern:v272 error:&aBlock];
                v207 = aBlock;
                if (v206)
                {
                  v208 = v206;
                  v285[4] = &OBJC_PROTOCOL___CHHapticAdvancedPatternPlayerExtended;
                  v209 = swift_dynamicCastObjCProtocolConditional();
                  if (v209)
                  {
                    v210 = v209;
                    v211 = v260;
                    v212 = *&v260[v273];
                    v213 = v207;
                    swift_unknownObjectRetain();
                    LODWORD(v214) = v212;
                    [v210 setVolume:v214];
                    v215 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v285[2] = sub_2A558;
                    v285[3] = v215;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    v285[0] = sub_2B744;
                    v285[1] = &unk_35F68;
                    v216 = _Block_copy(&aBlock);

                    [v208 setCompletionHandler:v216];
                    _Block_release(v216);
                    v217 = v262;
                    swift_beginAccess();
                    swift_unknownObjectRetain();
                    sub_2BA70();
                    if (*(&dword_10 + (*&v211[v217] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v211[v217] & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      v231 = *(&dword_10 + (*&v211[v217] & 0xFFFFFFFFFFFFFF8));
                      sub_2BAC0();
                    }

                    sub_2BAD0();
                    swift_endAccess();
                    v266(v246, v268, v274);
                    swift_unknownObjectRetain();
                    v218 = v251;

                    v219 = sub_2B890();
                    v220 = sub_2BB40();

                    swift_unknownObjectRelease();
                    LODWORD(v258) = v220;
                    if (os_log_type_enabled(v219, v220))
                    {
                      v221 = swift_slowAlloc();
                      v254 = v221;
                      v257 = swift_slowAlloc();
                      *&aBlock = v257;
                      *v221 = v259;
                      v222 = [v208 description];
                      v256 = v219;
                      v223 = v222;
                      v248 = sub_2B9F0();
                      v225 = v224;

                      swift_unknownObjectRelease();
                      v226 = sub_20958(v248, v225, &aBlock);

                      v227 = v254;
                      *(v254 + 4) = v226;
                      *(v227 + 6) = 2080;
                      *(v227 + 14) = sub_20958(v250, v218, &aBlock);
                      v228 = v256;
                      _os_log_impl(&dword_0, v256, v258, "Made player: %s %s", v227, 0x16u);
                      swift_arrayDestroy();

                      sub_2A4B8(v177, v176);
                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      sub_2A4B8(v177, v176);
                      swift_unknownObjectRelease_n();
                    }

                    v269(v246, v274);
                  }

                  else
                  {
                    v230 = v207;
                    sub_2A4B8(v177, v176);
                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                  v229 = aBlock;
                  sub_2B7D0();

                  swift_willThrow();
                  sub_2A4B8(v177, v176);

LABEL_135:
                  v271 = 0;
                }
              }

              else
              {

                sub_2A4B8(v177, v176);
              }
            }

            else
            {
              sub_2A4B8(v177, v176);
            }

            v97 = v279;
            goto LABEL_124;
          }

          sub_2A4B8(v177, v176);
        }

        else
        {
          v186 = aBlock;
          sub_2B7D0();

          swift_willThrow();
          sub_2A4B8(v177, v176);

          v271 = 0;
        }
      }

LABEL_124:
      if (v162 == ++v165)
      {

        v161 = v260;
        v163 = &unk_39000;
        break;
      }
    }
  }

LABEL_166:
  v232 = v163[62];
  swift_beginAccess();
  v233 = *&v161[v232];
  if (v233 >> 62)
  {
    if (v233 < 0)
    {
      v241 = *&v161[v232];
    }

    v234 = sub_2BD60();
  }

  else
  {
    v234 = *(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8));
  }

  v253(v234 > 0);
  v235 = *&v161[v232];
  if (v235 >> 62)
  {
    if (v235 < 0)
    {
      v242 = *&v161[v232];
    }

    v236 = sub_2BD60();
  }

  else
  {
    v236 = *(&dword_10 + (v235 & 0xFFFFFFFFFFFFFF8));
  }

  v237 = *&v161[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo];
  if (v236 < 1)
  {
    *&v161[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo] = 0;
  }

  else
  {
    v238 = v255;
    *&v161[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo] = v255;
    v239 = v238;

    sub_15820(v250, v251);
  }
}