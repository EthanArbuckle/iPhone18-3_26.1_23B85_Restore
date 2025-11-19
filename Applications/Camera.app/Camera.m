uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NSNotificationCenter defaultCenter];
  objc_initWeak(&location, v1);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000017A4;
  v14 = sub_100001838;
  v15 = 0;
  v2 = objc_loadWeakRetained(&location);
  v3 = +[NSOperationQueue mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001840;
  v8[3] = &unk_100004328;
  objc_copyWeak(&v9, &location);
  v8[4] = &v10;
  v4 = [v2 addObserverForName:@"CAMRegisterAppShortcuts" object:0 queue:v3 usingBlock:v8];
  v5 = v11[5];
  v11[5] = v4;

  v6 = CAMApplicationMain();
  objc_destroyWeak(&v9);
  _Block_object_dispose(&v10, 8);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v0);
  return v6;
}

void sub_100001770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1000017A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000017B4@<X0>(uint64_t *a1@<X8>)
{
  result = OpenCaptureModeIntent.$target.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000017E0@<X0>(uint64_t *a1@<X8>)
{
  result = StartCaptureIntent.$captureMode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000180C@<X0>(uint64_t *a1@<X8>)
{
  result = ChangeCameraDeviceIntent.$device.getter();
  *a1 = result;
  return result;
}

void sub_100001840(uint64_t a1)
{
  v3 = objc_alloc_init(_TtC6Camera28CameraAppShortcutsController);
  [(CameraAppShortcutsController *)v3 registerAppShortcutsIfNeeded];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

id sub_100001924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraAppShortcutsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000197C()
{
  result = qword_1000081F0;
  if (!qword_1000081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081F0);
  }

  return result;
}

uint64_t sub_1000019D0()
{
  sub_100001A44(&qword_1000081F8, qword_1000031D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100003180;
  v1 = type metadata accessor for CameraUIAppIntents();
  v2 = sub_100001A8C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_100001A44(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001A8C()
{
  result = qword_100008200;
  if (!qword_100008200)
  {
    type metadata accessor for CameraUIAppIntents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008200);
  }

  return result;
}

uint64_t sub_100001AFC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v91 = v0;
  v92 = v1;
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v87 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for Locale() - 8) + 64);
  (__chkstk_darwin)();
  v90 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  (__chkstk_darwin)();
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 64);
  (__chkstk_darwin)();
  v86 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AppShortcut();
  v93 = *(v89 - 8);
  v11 = *(v93 + 64);
  (__chkstk_darwin)();
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(type metadata accessor for OpenCaptureModeIntent() - 8) + 64);
  (__chkstk_darwin)();
  OpenCaptureModeIntent.init()();
  sub_100001A44(&qword_100008208, &qword_100003258);
  v15 = *(sub_100001A44(&qword_100008210, &qword_100003260) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v81 = xmmword_100003180;
  *(v18 + 16) = xmmword_100003180;
  v19 = (*(*(sub_100001A44(&qword_100008218, &qword_100003268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  sub_100002C5C(&qword_100008220, &type metadata accessor for OpenCaptureModeIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  sub_100001A44(&qword_100008228, &qword_1000032A0);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v21);
  AppShortcutPhrase.init(stringInterpolation:)();
  v79 = 0xD000000000000025;
  v83 = v8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v84 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v92 + 104);
  v92 += 104;
  v88 = v22;
  (v22)(v87);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v76 = 0xD000000000000012;
  v82 = v13;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v80 = static AppShortcutsBuilder.buildExpression(_:)();
  v85 = *(v93 + 8);
  v93 += 8;
  v85(v13, v89);
  v23 = *(*(type metadata accessor for StartCaptureIntent() - 8) + 64);
  (__chkstk_darwin)();
  v77 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  StartCaptureIntent.init()();
  sub_100001A44(&qword_100008230, &qword_1000032A8);
  v25 = *(sub_100001A44(&qword_100008238, &qword_1000032B0) - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v75 = 2 * *(v25 + 72);
  v27 = swift_allocObject();
  v78 = xmmword_1000031F0;
  v74 = v27;
  *(v27 + 16) = xmmword_1000031F0;
  v28 = *(*(sub_100001A44(&qword_100008240, &qword_1000032B8) - 8) + 64);
  (__chkstk_darwin)();
  sub_100002C5C(&qword_100008248, &type metadata accessor for StartCaptureIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x206120656B6154;
  v29._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  sub_100001A44(&qword_100008250, &qword_1000032F0);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = AppShortcutPhrase.init(stringInterpolation:)();
  __chkstk_darwin(v31);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0x612064726F636552;
  v32._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = AppShortcutPhrase.init(stringInterpolation:)();
  __chkstk_darwin(v34);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._object = 0x8000000100003460;
  v35._countAndFlagsBits = v76;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v36);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = v87;
  v38 = v84;
  v88(v87, v84, v91);
  v39 = v37;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v76 = "ART_CAPTURE_SHORT_TITLE";
  v75 = 0xD00000000000001ALL;
  v40 = v82;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v77 = static AppShortcutsBuilder.buildExpression(_:)();
  v85(v40, v89);
  v41 = type metadata accessor for ChangeCameraDeviceIntent();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v74 = v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangeCameraDeviceIntent.init()();
  sub_100001A44(&qword_100008258, &qword_1000032F8);
  v44 = *(sub_100001A44(&qword_100008260, &qword_100003300) - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  *(swift_allocObject() + 16) = v81;
  v47 = sub_100001A44(&qword_100008268, &qword_100003308);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  sub_100002C5C(&qword_100008270, &type metadata accessor for ChangeCameraDeviceIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v49);
  swift_getKeyPath();
  sub_100001A44(&qword_100008278, &qword_100003340);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v50._countAndFlagsBits = 0x6172656D616320;
  v50._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v50);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v88(v39, v38, v91);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v73[1] = "ANGE_CAMERA_SHORT_TITLE";
  v51 = v82;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v74 = static AppShortcutsBuilder.buildExpression(_:)();
  v52 = v51;
  v53 = v89;
  v54 = v85;
  v85(v52, v89);
  v55 = type metadata accessor for FlipCameraDeviceIntent();
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  FlipCameraDeviceIntent.init()();
  sub_100001A44(&qword_100008280, &qword_100003348);
  v57 = *(sub_100001A44(&qword_100008288, &qword_100003350) - 8);
  v58 = *(v57 + 72);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  *(swift_allocObject() + 16) = v81;
  sub_100002C5C(&qword_100008290, &type metadata accessor for FlipCameraDeviceIntent);
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v88(v87, v84, v91);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v60 = v82;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  *&v81 = static AppShortcutsBuilder.buildExpression(_:)();
  v61 = v60;
  v54(v60, v53);
  v62 = type metadata accessor for StopCaptureIntent();
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  StopCaptureIntent.init()();
  sub_100001A44(&qword_100008298, &qword_100003358);
  v64 = *(sub_100001A44(&qword_1000082A0, &qword_100003360) - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  *(swift_allocObject() + 16) = v78;
  sub_100002C5C(&qword_1000082A8, &type metadata accessor for StopCaptureIntent);
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v88(v87, v84, v91);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v67 = static AppShortcutsBuilder.buildExpression(_:)();
  v85(v61, v89);
  sub_100001A44(&qword_1000082B0, &qword_100003368);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100003200;
  v69 = v77;
  *(v68 + 32) = v80;
  *(v68 + 40) = v69;
  v70 = v81;
  *(v68 + 48) = v74;
  *(v68 + 56) = v70;
  *(v68 + 64) = v67;
  v71 = static AppShortcutsBuilder.buildBlock(_:)();

  return v71;
}

uint64_t sub_100002C5C(unint64_t *a1, void (*a2)(uint64_t))
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