uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, v5, v7);

  return v8;
}

uint64_t sub_100002380(uint64_t a1)
{
  qword_100011F20 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000027CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000283C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("restorationQueue", v1);
  v3 = qword_100011F38;
  qword_100011F38 = v2;
}

void sub_1000028C0(uint64_t a1)
{
  v2 = [*(a1 + 40) restorationUrl];
  v15 = 0;
  v3 = [NSData dataWithContentsOfURL:v2 options:0 error:&v15];
  v4 = v15;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(*(*(a1 + 32) + 8) + 40);
  v14 = 0;
  v8 = [v7 decompressedDataUsingAlgorithm:0 error:&v14];
  v9 = v14;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (!v4)
  {
    goto LABEL_5;
  }

  v12 = spuiLogHandles[5];
  if (!v12)
  {
    SPUIInitLogging();
    v12 = spuiLogHandles[5];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10000540C();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v13 = spuiLogHandles[5];
  if (!v13)
  {
    SPUIInitLogging();
    v13 = spuiLogHandles[5];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100005474();
  }

LABEL_10:
}

void sub_100002E1C(id a1)
{
  v1 = spuiLogHandles[0];
  if (!spuiLogHandles[0])
  {
    SPUIInitLogging();
    v1 = spuiLogHandles[0];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1000053C8(v1);
  }
}

void sub_10000305C(id a1)
{
  v2 = +[SPUISearchViewControllerHolder sharedInstance];
  v1 = [v2 searchViewController];
  [v1 searchViewDidPresentFromSource:1];
}

void sub_10000350C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setHeaderHeight:*(a1 + 32)];
  }
}

FBSSceneTransitionContext *__cdecl sub_100003754(id a1, FBSMutableSceneClientSettings *a2)
{
  v2 = objc_opt_new();
  [v2 setSearchBarDidFocus:1];

  return v2;
}

uint64_t sub_1000038AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003978(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 40) restorationUrl];
  v4 = [v3 path];
  v5 = [v2 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [*(a1 + 40) restorationUrl];
    v8 = [v7 path];
    v9 = objc_opt_new();
    [v6 createFileAtPath:v8 contents:v9 attributes:0];
  }

  v10 = *(a1 + 32);
  if ([*(a1 + 32) length])
  {
    v11 = *(a1 + 32);
    v17 = 0;
    v12 = [v11 compressedDataUsingAlgorithm:0 error:&v17];
    v13 = v17;

    if (v13)
    {
      v14 = spuiLogHandles[5];
      if (!v14)
      {
        SPUIInitLogging();
        v14 = spuiLogHandles[5];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000054DC();
      }

      v15 = objc_opt_new();

      v12 = v15;
    }

    v10 = v12;
  }

  v16 = [*(a1 + 40) restorationUrl];
  [v10 writeToURL:v16 atomically:0];
}

void sub_100004180(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = spuiLogHandles[3];
    if (!v4)
    {
      SPUIInitLogging();
      v4 = spuiLogHandles[3];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100005544(a1, v4);
    }

    v5 = spuiLogHandles[3];
    if (!v5)
    {
      SPUIInitLogging();
      v5 = spuiLogHandles[3];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100005698(a1, v5);
    }

    v6 = v3;
    [v6 setDistanceToTopOfIcons:*(a1 + 64)];
    [v6 setSearchHeaderLayerRenderID:*(a1 + 40)];
    [v6 setSearchHeaderContextID:*(a1 + 120)];
    [v6 setSearchHeaderBackgroundLayerRenderID:*(a1 + 48)];
    [v6 setSearchHeaderBackgroundContextID:*(a1 + 124)];
    [v6 setKeyboardHeight:*(a1 + 56)];
    [*(a1 + 32) keyboardProtectorHeight];
    v8 = v7;
    v9 = *(a1 + 56);
    v10 = *(a1 + 132);
    if (*(a1 + 133) == 1)
    {
      [v6 setKeyboardPresented:*(a1 + 134)];
      if ((*(a1 + 134) & 1) == 0 && v10)
      {
        goto LABEL_16;
      }
    }

    else if (v10)
    {
LABEL_16:
      [v6 setSearchBarSize:{*(a1 + 72), *(a1 + 80)}];
      [v6 setDockedSearchBarSize:{*(a1 + 88), *(a1 + 96)}];
      [v6 setSearchBarCornerRadius:*(a1 + 104)];
      [v6 setSearchHeaderBlurContextID:*(a1 + 128)];
      [v6 setSearchHeaderBlurLayerRenderID:*(a1 + 112)];

      goto LABEL_17;
    }

    [v6 setKeyboardProtectorHeight:v8 + v9];
    goto LABEL_16;
  }

LABEL_17:
}

id sub_1000049D0(uint64_t a1)
{
  v1 = [*(a1 + 32) searchViewController];
  [v1 purgeMemory];

  return +[_TtC15SpotlightAppiOS18SPUIMediaUtilities purgeMemory];
}

FBSSceneTransitionContext *__cdecl sub_100004B90(id a1, FBSMutableSceneClientSettings *a2)
{
  v2 = objc_opt_new();
  [v2 setShouldBackground:1];

  return v2;
}

FBSSceneTransitionContext *__cdecl sub_100004C40(id a1, FBSMutableSceneClientSettings *a2)
{
  v2 = objc_opt_new();
  [v2 setShouldDismiss:1];

  return v2;
}

void sub_100004D28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100004D50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004DE0()
{
  sub_100004D50(&qword_100011E40, qword_100007B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100007B20;
  v1 = type metadata accessor for SpotlightUISharedPackage();
  v2 = sub_100004D98(&qword_100011E48, &type metadata accessor for SpotlightUISharedPackage);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SearchUIAppIntentsPackage();
  v4 = sub_100004D98(&qword_100011E50, &type metadata accessor for SearchUIAppIntentsPackage);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_100004EC8()
{
  v0 = type metadata accessor for Logger();
  sub_1000052CC(v0, qword_100011FC8);
  sub_100004F48(v0, qword_100011FC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100004F48(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id SPUIMediaUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUIMediaUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUIMediaUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id SPUIMediaUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUIMediaUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000050E8(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100011FC0 != -1)
  {
    swift_once();
  }

  v7 = sub_100004F48(v2, qword_100011FC8);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriAudioAppPredictor released: %{BOOL}d", v10, 8u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t *sub_1000052CC(uint64_t a1, uint64_t *a2)
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

void sub_100005544(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithUnsignedLongLong:v3];
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 120)];
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v8 = [NSNumber numberWithUnsignedInt:*(a1 + 124)];
  v9 = [NSNumber numberWithDouble:*(a1 + 56)];
  v10 = 138413314;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Header Setting renderID: %@, contextID: %@, backgroundRenderID:%@, backgroundContextId:%@ keyboardHeight:%@", &v10, 0x34u);
}

void sub_100005698(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  *&v4 = v2;
  v5 = [NSNumber numberWithFloat:v4];
  sub_100004D44();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "distanceToTop %@", v6, 0xCu);
}