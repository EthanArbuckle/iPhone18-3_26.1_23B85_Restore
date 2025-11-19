uint64_t sub_10002117C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(HMDeviceConfigurations) init];
    [v2 setEnableHearingProtection:1];
    v3 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_featureManager];
    *(swift_allocObject() + 16) = v1;

    v4 = v1;
    HeadphoneProxFeatureManager.updateRecord(configs:deviceAddress:usecase:completion:)();
  }

  return result;
}

uint64_t sub_1000212A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000BAF88();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000212F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneYodelHearingProtectionViewController()
{
  result = qword_10011D3B0;
  if (!qword_10011D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000214A4()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100021574()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000215AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000215EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10002117C();
}

uint64_t sub_1000215F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100021640(void *a1, void *a2)
{
  if (a1)
  {
  }
}

BOOL sub_1000216E8(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4, const char *a5)
{
  v8 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v13)
  {
    goto LABEL_5;
  }

  String.uppercased()();
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  (*(v9 + 104))(v12, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v8);
  v14 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v16 = v15;

  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    if ([v16 *a3] == 2)
    {
      v17 = [v14 *a4];

      return v17 == 2;
    }
  }

  else
  {
LABEL_5:
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A570(v19, qword_100122FF0);
    v14 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v20, a5, v21, 2u);
    }
  }

  return 0;
}

void sub_100021944()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

void sub_100021A68()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

void sub_100021B8C()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100021CB0(uint64_t a1, unint64_t a2)
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v4 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v4 + 16) && (v5 = sub_1000CD118(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = [v7 listeningModeOffAllowed] == 1 || objc_msgSend(v7, "listeningModeOffAllowed") == 0;
    v16 = [v7 listeningMode];
    v17 = [v7 listeningModeConfigs];
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_100122FF0);
    v19 = v7;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = v8;
      v22 = v17;
      v23 = v16;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = [v19 debugDescription];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100078978(v27, v29, &v33);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "shouldPromptUserSwitchListeningMode: device %s", v24, 0xCu);
      sub_10000EA94(v25);

      v16 = v23;
      v17 = v22;
      v8 = v32;
    }

    v31 = [v19 hideOffListeningModeCapability];
    v14 = v31 == 2;
    if (v31 == 2 && !v8)
    {
      v14 = (v16 == 1) | v17;
    }
  }

  else
  {

    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_100122FF0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100078978(a1, a2, &v33);
      _os_log_impl(&_mh_execute_header, v10, v11, "shouldPromptUserSwitchListeningMode: Invalid address %s", v12, 0xCu);
      sub_10000EA94(v13);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100022064()
{

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_1000220A4()
{
  v0 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v5)
  {
    goto LABEL_5;
  }

  String.uppercased()();
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  (*(v1 + 104))(v4, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v0);
  v6 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v8 = v7;

  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    if ([v6 hearingProtectionCapability] == 2)
    {
      v9 = [v6 hearingAidCapability];

      return v9 == 2;
    }
  }

  else
  {
LABEL_5:
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A570(v11, qword_100122FF0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "HeadphoneProxFeatureService: showHearingProtection: depdencies not meet return false", v14, 2u);
    }
  }

  return 0;
}

unint64_t sub_1000222FC()
{
  result = qword_10011D7C0;
  if (!qword_10011D7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D7C0);
  }

  return result;
}

uint64_t sub_100022348()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {

    v6 = *(v5 + 24);

    v7 = *(v5 + 56);

    v8 = *(v5 + 72);

    v9 = *(v5 + 96);

    v10 = *(v5 + 104);
  }

  if (*(v5 + 112))
  {

    v11 = *(v5 + 120);
  }

  v12 = *(v5 + 128);

  v13 = *(v5 + 152);

  v14 = v1[12];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v5 + v1[15] + 8);

  v19 = (v5 + v1[16]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100022640(*v19, v20);
  }

  v21 = *(v5 + v1[19] + 8);

  v22 = *(v5 + v1[20] + 8);

  v23 = *(v5 + v1[37]);

  v24 = v1[38];
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  v27 = v5 + v1[45];
  v28 = *(v27 + 8);
  if (v28 != 255)
  {
    sub_10001C2AC(*v27, v28 & 1);
  }

  v29 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;

  v31 = *(v5 + v1[49]);

  v32 = *(v0 + v30);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100022640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100022694(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001F790(a1, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_100022750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v9 = enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:);
  v38[0] = v5[13];
  (v38[0])(v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v4);
  v38[2] = a1;
  v39 = a2;
  v10 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v12 = v11;

  v13 = v5[1];
  v13(v8, v4);
  if (v10)
  {

    v14 = [v12 hearingProtectionRegionStatus];
    v15 = v14 == 2;
  }

  else
  {
    v15 = 0;
  }

  static HeadphoneProxFeatureManager.shared.getter();
  (v38[0])(v8, v9, v4);
  v16 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v18 = v17;

  v13(v8, v4);
  if (v16 && (v16, v19 = [v18 hearingProtectionPPECapability], v18, v19 == 1))
  {
    v20 = "Localizable-Yodel";
    v21 = "ARING_PROTECTION_TITLE";
    if (!v15)
    {
      static HeadphoneProxFeatureManager.shared.getter();
      (v38[0])(v8, v9, v4);
      v22 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v24 = v23;

      v13(v8, v4);
      if (!v22)
      {
        goto LABEL_13;
      }

      v25 = [v24 hearingProtectionPPERegionStatus];
      if (v25 != 2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (!v15)
    {
LABEL_13:
      v26 = 0xD000000000000019;
      v20 = "Off mode config switch";
      v21 = "YODEL_WHATS_NEW_LSR_TITLE";
      v39 = 0xD00000000000001CLL;
      goto LABEL_14;
    }

    v20 = "Localizable-Yodel";
    v21 = "ARING_PROTECTION_TITLE";
  }

  v39 = 0xD000000000000029;
  v26 = 0xD000000000000026;
LABEL_14:
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];
  v40._object = 0xE000000000000000;
  v29._object = (v20 | 0x8000000000000000);
  v30.value._object = 0x80000001000DC8A0;
  v29._countAndFlagsBits = v26;
  v30.value._countAndFlagsBits = 0xD000000000000011;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v40)._countAndFlagsBits;

  v33 = [v27 mainBundle];
  v41._object = 0xE000000000000000;
  v34._object = (v21 | 0x8000000000000000);
  v35.value._object = 0x80000001000DC8A0;
  v34._countAndFlagsBits = v39;
  v35.value._countAndFlagsBits = 0xD000000000000011;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v41);

  return countAndFlagsBits;
}

void sub_100022B38(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  type metadata accessor for HeadphoneProxFeatureManager();
  swift_unknownObjectRetain();
  static HeadphoneProxFeatureManager.shared.getter();
  v13 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v13 + 16) && (v14 = sub_1000CD118(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    if (sub_100021CB0(a2, a3))
    {
      v17 = [a4 hearingProtectionRegionStatus];
      v18 = v17 == 2;
      if (v17 == 2)
      {
        v19 = 4294967211;
      }

      else
      {
        v19 = 4294967213;
      }

      if (v18)
      {
        v20 = 4294967212;
      }

      else
      {
        v20 = 4294967214;
      }

      sub_100033A5C(v19);
      sub_100033A5C(v20);
      v49 = v16;
      v21 = String._bridgeToObjectiveC()();

      v22 = String._bridgeToObjectiveC()();

      v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

      v24 = v23;
      sub_100033A5C(175);
      v25 = swift_allocObject();
      v25[2] = a2;
      v25[3] = a3;
      v25[4] = sub_100023270;
      v25[5] = v12;

      v26 = String._bridgeToObjectiveC()();

      v55 = sub_10002329C;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_10000C034;
      v54 = &unk_1001041A0;
      v27 = _Block_copy(&aBlock);

      v28 = objc_opt_self();
      v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
      _Block_release(v27);

      [v24 addAction:v29];
      sub_100033A5C(176);
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = a3;
      v30[4] = sub_100023270;
      v30[5] = v12;

      v31 = String._bridgeToObjectiveC()();

      v55 = sub_1000232E8;
      v56 = v30;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_10000C034;
      v54 = &unk_1001041F0;
      v32 = _Block_copy(&aBlock);

      v33 = [v28 actionWithTitle:v31 style:0 handler:v32];
      _Block_release(v32);

      [v24 addAction:v33];
      [a1 presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      if (qword_10011C608 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000A570(v39, qword_100122FF0);
      v50 = v16;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock = v43;
        *v42 = 136315138;
        v44 = [v50 debugDescription];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_100078978(v45, v47, &aBlock);

        *(v42 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "showOffModeSwitchAlert: dont need to alert %s", v42, 0xCu);
        sub_10000EA94(v43);
      }

      if (a5)
      {
        sub_1000B7214();
      }
    }
  }

  else
  {

    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A570(v34, qword_100122FF0);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100078978(a2, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "showOffModeSwitchAlert: Invalid address %s", v37, 0xCu);
      sub_10000EA94(v38);
    }

    if (a5)
    {
      sub_1000B7214();
    }
  }
}

uint64_t sub_100023238()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023270()
{
  if (*(v0 + 16))
  {
    return sub_1000B7214();
  }

  return result;
}

uint64_t sub_1000232A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1000232F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_featureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset] = 0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_type] = 34;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t sub_10002341C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D3C0);
  v1 = sub_10000A570(v0, qword_10011D3C0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000234E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v323 = &v310 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v324 = &v310 - v8;
  __chkstk_darwin(v7);
  v10 = &v310 - v9;
  v11 = type metadata accessor for URL();
  v325 = *(v11 - 8);
  v326 = v11;
  v12 = *(v325 + 64);
  v13 = __chkstk_darwin(v11);
  *&v330 = &v310 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v327 = &v310 - v15;
  v16 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v310 - v18;
  v20 = type metadata accessor for HeadphoneViewModel(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v310 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336.receiver = v1;
  v336.super_class = ObjectType;
  objc_msgSendSuper2(&v336, "viewDidLoad");
  v25 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
  swift_beginAccess();
  v331 = v1;
  sub_10000E88C(&v1[v25], v19, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000E950(v19, &qword_10011F2E0, &unk_1000D8580);
    goto LABEL_7;
  }

  sub_1000260D0(v19, v24);
  v26 = &v24[*(v20 + 56)];
  v27 = *(v26 + 13);
  v333[12] = *(v26 + 12);
  v334 = v27;
  v335 = *(v26 + 14);
  v28 = *(v26 + 9);
  v333[8] = *(v26 + 8);
  v333[9] = v28;
  v29 = *(v26 + 11);
  v333[10] = *(v26 + 10);
  v333[11] = v29;
  v30 = *(v26 + 5);
  v333[4] = *(v26 + 4);
  v333[5] = v30;
  v31 = *(v26 + 7);
  v333[6] = *(v26 + 6);
  v333[7] = v31;
  v32 = *(v26 + 1);
  v333[0] = *v26;
  v333[1] = v32;
  v33 = *(v26 + 3);
  v333[2] = *(v26 + 2);
  v333[3] = v33;
  v34 = v24;
  if (sub_100026134(v333) == 1)
  {
LABEL_6:
    sub_10002614C(v34, type metadata accessor for HeadphoneViewModel);
LABEL_7:
    if (qword_10011C610 == -1)
    {
LABEL_8:
      v40 = type metadata accessor for Logger();
      sub_10000A570(v40, qword_10011D3C0);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "No view model present", v43, 2u);
      }

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_8;
  }

  v35 = *(v20 + 44);
  sub_10000E88C(v34 + v35, v10, &qword_10011CCF0, qword_1000D61B0);
  v36 = type metadata accessor for HeadphoneAssets(0);
  v37 = *(v36 - 1);
  v38 = *(v37 + 48);
  v39 = (v37 + 48);
  if (v38(v10, 1, v36) == 1)
  {
    sub_10000E950(v10, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_6;
  }

  v313 = v35;
  v318 = v39;
  v321 = v38;
  v322 = v36;
  v310 = v20;
  v45 = v325;
  v44 = v326;
  v46 = v330;
  (*(v325 + 16))(v330, v10, v326);
  sub_10002614C(v10, type metadata accessor for HeadphoneAssets);
  (*(v45 + 32))(v327, v46, v44);
  v47 = v331;
  [v331 setDismissalType:1];
  v48 = *v34;
  v49 = v34[1];
  v50 = String._bridgeToObjectiveC()();
  [v47 setTitle:v50];

  v51 = v34[2];
  v52 = v34[3];
  v317 = v34;
  v53 = String._bridgeToObjectiveC()();
  [v47 setSubtitle:v53];

  v320 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  v330 = xmmword_1000D5C90;
  *(inited + 16) = xmmword_1000D5C90;
  v55 = *&v47[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftLabel];
  *(inited + 32) = v55;
  v329 = (inited + 32);
  v56 = *&v47[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightLabel];
  *(inited + 40) = v56;
  v57 = *&v47[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseLabel];
  *(inited + 48) = v57;
  v319 = v55;
  v316 = v56;
  v314 = v57;
  v58 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v59 = *(inited + 8 * v58 + 32);
    }

    v60 = v59;
    ++v58;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v60 setAdjustsFontForContentSizeCategory:1];
    v61 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v60 setFont:v61];

    v62 = [objc_opt_self() labelColor];
    [v60 setTextColor:v62];

    [v60 setNumberOfLines:0];
    v63 = [v331 contentView];
    [v63 addSubview:v60];
  }

  while (v58 != 3);
  swift_setDeallocating();
  v64 = *(inited + 16);
  swift_arrayDestroy();
  v65 = swift_initStackObject();
  *(v65 + 16) = v330;
  v66 = v331;
  v67 = *&v331[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftGenerationLabel];
  *(v65 + 32) = v67;
  v312 = (v65 + 32);
  v68 = *&v66[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightGenerationLabel];
  *(v65 + 40) = v68;
  v69 = *&v66[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseGenerationLabel];
  *(v65 + 48) = v69;
  v328 = v67;
  v329 = v68;
  v315 = v69;
  v70 = 0;
  do
  {
    if ((v65 & 0xC000000000000001) != 0)
    {
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v70 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v71 = *(v65 + 8 * v70 + 32);
    }

    v72 = v71;
    ++v70;
    [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v72 setAdjustsFontForContentSizeCategory:1];
    v73 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v72 setFont:v73];

    v74 = [objc_opt_self() secondaryLabelColor];
    [v72 setTextColor:v74];

    [v72 setNumberOfLines:0];
    v75 = [v331 contentView];
    [v75 addSubview:v72];
  }

  while (v70 != 3);
  swift_setDeallocating();
  v76 = *(v65 + 16);
  swift_arrayDestroy();
  sub_100033A5C(28);
  v77 = String._bridgeToObjectiveC()();

  v78 = v319;
  [v319 setText:v77];

  [v78 setTextAlignment:2];
  [v328 setTextAlignment:2];
  sub_100033A5C(29);
  v79 = String._bridgeToObjectiveC()();

  v80 = v316;
  [v316 setText:v79];

  [v80 setTextAlignment:0];
  [v329 setTextAlignment:0];
  sub_100033A5C(30);
  v81 = String._bridgeToObjectiveC()();

  v82 = v314;
  [v314 setText:v81];

  [v82 setTextAlignment:1];
  [v315 setTextAlignment:1];
  URL.path.getter();
  v83 = String.count.getter();

  if (v83 < 1)
  {
    v86 = v323;
    sub_10000E88C(v317 + v313, v323, &qword_10011CCF0, qword_1000D61B0);
    v87 = v322;
    if (v321(v86, 1, v322) == 1)
    {
      sub_10000E950(v86, &qword_10011CCF0, qword_1000D61B0);
LABEL_55:
      v92 = 0;
LABEL_56:
      v93 = [objc_allocWithZone(UIImageView) initWithImage:v92];
      goto LABEL_57;
    }

    v88 = *&v86[v87[8]];

    sub_10002614C(v86, type metadata accessor for HeadphoneAssets);
    if (!(v88 >> 62))
    {
      if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:

        goto LABEL_55;
      }

LABEL_37:
      if ((v88 & 0xC000000000000001) != 0)
      {
        v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v91 = *(v88 + 32);
      }

      v92 = v91;

      goto LABEL_56;
    }

LABEL_53:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v84 = v324;
  sub_10000E88C(v317 + v313, v324, &qword_10011CCF0, qword_1000D61B0);
  v85 = v322;
  if (v321(v84, 1, v322) == 1)
  {
    sub_10000E950(v84, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_46;
  }

  v88 = *&v84[v85[8]];

  sub_10002614C(v84, type metadata accessor for HeadphoneAssets);
  if (v88 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_45;
    }

LABEL_31:
    if ((v88 & 0xC000000000000001) != 0)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_34;
    }

    if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v89 = *(v88 + 32);
LABEL_34:
      v90 = v89;

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_45:

LABEL_46:
  v90 = 0;
LABEL_47:
  v93 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v90];

  v94 = [objc_opt_self() currentTraitCollection];
  v95 = [v94 userInterfaceStyle];

  if (v95 == 2)
  {
    v96 = 1;
  }

  else
  {
    v96 = 2;
  }

  URL._bridgeToObjectiveC()(1);
  v92 = v97;
  [v93 updateViewForAssetType:v96 adjustmentsURL:v97];
LABEL_57:

  v98 = v93;
  [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v99) = 1148846080;
  [v98 setContentCompressionResistancePriority:0 forAxis:v99];
  v100 = v331;
  v101 = [v331 contentView];
  v318 = v98;
  [v101 addSubview:v98];

  v102 = swift_initStackObject();
  *(v102 + 16) = v330;
  v103 = *&v100[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftCircle];
  *(v102 + 32) = v103;
  v324 = (v102 + 32);
  v104 = *&v100[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightCircle];
  *(v102 + 40) = v104;
  v105 = *&v100[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseCircle];
  *(v102 + 48) = v105;
  v106 = (v102 & 0xC000000000000001);
  v107 = v102 & 0xFFFFFFFFFFFFFF8;
  v321 = v103;
  v322 = v104;
  v312 = v105;
  v108 = 0;
  v109 = &unk_100116000;
  do
  {
    if (v106)
    {
      v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v108 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v110 = *(v102 + 8 * v108 + 32);
    }

    v111 = v110;
    ++v108;
    [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
    v112 = [v111 layer];
    [v112 setCornerRadius:3.5];

    v113 = [objc_opt_self() systemGrayColor];
    [v111 setBackgroundColor:v113];

    v70 = [v331 contentView];
    [v70 addSubview:v111];
  }

  while (v108 != 3);
  swift_setDeallocating();
  v114 = *(v102 + 16);
  swift_arrayDestroy();
  v70 = swift_initStackObject();
  *(v70 + 16) = v330;
  v115 = v331;
  v116 = *&v331[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftArm];
  *(v70 + 32) = v116;
  v117 = *&v115[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightArm];
  *(v70 + 40) = v117;
  v118 = *&v115[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseArm];
  *(v70 + 48) = v118;
  v107 = v70 & 0xC000000000000001;
  v106 = (v70 & 0xFFFFFFFFFFFFFF8);
  v324 = v116;
  v323 = v117;
  v119 = v118;
  v311 = v119;
  if (v107)
  {
    goto LABEL_100;
  }

  if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_99;
  }

  v120 = v324;
  while (2)
  {
    v121 = v120;
    [v120 setTranslatesAutoresizingMaskIntoConstraints:{0, v310}];
    v122 = [objc_opt_self() v109[244]];
    [v121 setBackgroundColor:v122];

    v123 = [v331 contentView];
    [v123 addSubview:v121];

    if (!v107)
    {
      if (v106[2] >= 2uLL)
      {
        v124 = *(v70 + 40);
        goto LABEL_70;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

  v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_70:
  v125 = v124;
  [v124 setTranslatesAutoresizingMaskIntoConstraints:0];
  v126 = [objc_opt_self() v109[244]];
  [v125 setBackgroundColor:v126];

  v127 = [v331 contentView];
  [v127 addSubview:v125];

  if (v107)
  {
    v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v106[2] < 3uLL)
    {
      goto LABEL_99;
    }

    v128 = *(v70 + 48);
  }

  v129 = v128;
  [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
  v130 = [objc_opt_self() v109[244]];
  [v129 setBackgroundColor:v130];

  v131 = [v331 contentView];
  [v131 addSubview:v129];

  swift_setDeallocating();
  v132 = *(v70 + 16);
  swift_arrayDestroy();
  v109 = *(v317 + *(v310 + 17));
  v133 = v109[2];
  if (v133)
  {
    LODWORD(v313) = 0;
    v107 = 0;
    *&v330 = -v133;
    v134 = (v109 + 7);
    v310 = (v109 + 7);
LABEL_75:
    v135 = &v134[32 * v107++];
    while (v107 - 1 < v109[2])
    {
      v141 = *(v135 - 3);
      v140 = *(v135 - 2);
      v70 = *(v135 - 1);
      v142 = *v135;
      v143 = v70;

      v144 = String._bridgeToObjectiveC()();
      if (v142)
      {
        if (v142 != 1)
        {
          v106 = v315;
          [v315 setText:v144];

          if (v70)
          {
            [v106 setTextColor:v143];
            v106 = &unk_100116000;
            [v312 setBackgroundColor:v143];
            [v311 setBackgroundColor:v143];
          }

          v145 = v330 + v107;
          sub_1000261AC(v141, v140, v70, 2u);
          LODWORD(v313) = 1;
          v134 = v310;
          if (v145)
          {
            goto LABEL_75;
          }

          goto LABEL_93;
        }

        v106 = v329;
        [v329 setText:v144];

        if (v70)
        {
          [v106 setTextColor:v143];
          v106 = &unk_100116000;
          [v322 setBackgroundColor:v143];
          [v323 setBackgroundColor:v143];
          v136 = v141;
          v137 = v140;
          v138 = v70;
        }

        else
        {
          v136 = v141;
          v137 = v140;
          v138 = 0;
        }

        v139 = 1;
      }

      else
      {
        v106 = v328;
        [v328 setText:v144];

        if (v70)
        {
          [v106 setTextColor:v143];
          v106 = &unk_100116000;
          [v321 setBackgroundColor:v143];
          [v324 setBackgroundColor:v143];
          v136 = v141;
          v137 = v140;
          v138 = v70;
        }

        else
        {
          v136 = v141;
          v137 = v140;
          v138 = 0;
        }

        v139 = 0;
      }

      sub_1000261AC(v136, v137, v138, v139);
      ++v107;
      v135 += 32;
      if (v330 + v107 == 1)
      {
        goto LABEL_93;
      }
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  LODWORD(v313) = 0;
LABEL_93:
  v146 = [v331 contentView];
  v147 = [v146 mainContentGuide];

  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1000D6890;
  v149 = v319;
  v150 = [v319 topAnchor];
  v151 = [v147 topAnchor];
  v152 = [v150 constraintGreaterThanOrEqualToAnchor:v151];

  *(v148 + 32) = v152;
  v153 = [v149 leftAnchor];
  v331 = v147;
  v154 = [v147 leftAnchor];
  v155 = [v153 constraintGreaterThanOrEqualToAnchor:v154];

  *(v148 + 40) = v155;
  v156 = v149;
  v157 = [v149 rightAnchor];
  v158 = [v324 leftAnchor];
  v159 = [v157 constraintEqualToAnchor:v158 constant:-10.0];

  *(v148 + 48) = v159;
  v160 = v328;
  v161 = [v328 trailingAnchor];
  v162 = [v156 trailingAnchor];
  v163 = [v161 constraintEqualToAnchor:v162];

  *(v148 + 56) = v163;
  v164 = [v160 leftAnchor];
  v165 = [v147 leftAnchor];
  v166 = [v164 constraintGreaterThanOrEqualToAnchor:v165];

  *(v148 + 64) = v166;
  v167 = [v160 topAnchor];
  v168 = [v156 bottomAnchor];
  v169 = [v167 constraintEqualToAnchor:v168];

  *(v148 + 72) = v169;
  v170 = [v160 bottomAnchor];
  v171 = [v318 topAnchor];
  v172 = [v170 constraintLessThanOrEqualToAnchor:v171 constant:-5.0];

  *(v148 + 80) = v172;
  v173 = v316;
  v174 = [v316 topAnchor];
  v175 = [v156 topAnchor];
  v176 = [v174 constraintEqualToAnchor:v175];

  *(v148 + 88) = v176;
  v177 = [v173 rightAnchor];
  v178 = v331;
  v179 = [v331 rightAnchor];
  v180 = [v177 constraintLessThanOrEqualToAnchor:v179];

  *(v148 + 96) = v180;
  v181 = [v173 leftAnchor];
  v182 = [v323 rightAnchor];
  v183 = [v181 constraintEqualToAnchor:v182 constant:10.0];

  *(v148 + 104) = v183;
  v184 = v329;
  v185 = [v329 leftAnchor];
  v186 = [v173 leftAnchor];
  v187 = [v185 constraintEqualToAnchor:v186];

  *(v148 + 112) = v187;
  v188 = [v184 rightAnchor];
  v189 = [v178 rightAnchor];
  v190 = [v188 constraintLessThanOrEqualToAnchor:v189];

  *(v148 + 120) = v190;
  v191 = [v184 topAnchor];
  v192 = [v173 bottomAnchor];
  v193 = [v191 constraintEqualToAnchor:v192];

  *(v148 + 128) = v193;
  v194 = [v184 bottomAnchor];
  v195 = v318;
  v196 = [v318 topAnchor];
  v197 = [v194 constraintLessThanOrEqualToAnchor:v196 constant:-5.0];

  *(v148 + 136) = v197;
  v198 = [v195 centerXAnchor];
  v199 = [v178 centerXAnchor];
  v200 = [v198 constraintEqualToAnchor:v199];

  *(v148 + 144) = v200;
  v201 = [v195 topAnchor];
  v202 = [v178 topAnchor];
  v203 = [v201 constraintGreaterThanOrEqualToAnchor:v202];

  *(v148 + 152) = v203;
  v204 = [v195 bottomAnchor];
  v205 = [v178 bottomAnchor];
  v206 = [v204 constraintEqualToAnchor:v205];

  *(v148 + 160) = v206;
  v207 = v321;
  v208 = [v321 widthAnchor];
  v209 = [v208 constraintEqualToConstant:7.0];

  *(v148 + 168) = v209;
  v210 = [v207 heightAnchor];
  v211 = [v207 widthAnchor];
  v212 = [v210 constraintEqualToAnchor:v211];

  *(v148 + 176) = v212;
  v213 = [v207 centerXAnchor];
  v214 = [v195 leftAnchor];
  v215 = *(&v334 + 1);
  v216 = v335;
  v217 = [v213 constraintEqualToAnchor:v214 constant:*(&v334 + 1)];

  *(v148 + 184) = v217;
  v218 = [v207 centerYAnchor];
  v219 = [v195 topAnchor];
  v220 = [v218 constraintEqualToAnchor:v219 constant:*&v216];

  *(v148 + 192) = v220;
  v221 = v324;
  v222 = [v324 topAnchor];
  v223 = [v319 centerYAnchor];
  v224 = [v222 constraintEqualToAnchor:v223];

  *(v148 + 200) = v224;
  v225 = [v221 bottomAnchor];
  v226 = [v207 centerYAnchor];
  v227 = [v225 constraintEqualToAnchor:v226];

  *(v148 + 208) = v227;
  v228 = [v221 centerXAnchor];
  v229 = [v207 centerXAnchor];
  v230 = [v228 constraintEqualToAnchor:v229];

  *(v148 + 216) = v230;
  v231 = [v221 widthAnchor];
  v232 = [v231 constraintEqualToConstant:1.0];

  *(v148 + 224) = v232;
  v233 = v322;
  v234 = [v322 widthAnchor];
  v235 = [v234 constraintEqualToConstant:7.0];

  *(v148 + 232) = v235;
  v236 = [v233 heightAnchor];
  v237 = [v233 widthAnchor];
  v238 = [v236 constraintEqualToAnchor:v237];

  *(v148 + 240) = v238;
  v239 = [v233 centerXAnchor];
  v240 = [v195 rightAnchor];

  v241 = [v239 constraintEqualToAnchor:v240 constant:-v215];
  *(v148 + 248) = v241;
  v242 = [v233 centerYAnchor];
  v243 = [v207 centerYAnchor];
  v244 = [v242 constraintEqualToAnchor:v243];

  *(v148 + 256) = v244;
  v245 = v323;
  v246 = [v323 topAnchor];
  v247 = [v316 centerYAnchor];
  v248 = [v246 constraintEqualToAnchor:v247];

  *(v148 + 264) = v248;
  v249 = [v245 bottomAnchor];
  v250 = [v233 centerYAnchor];
  v251 = [v249 constraintEqualToAnchor:v250];

  *(v148 + 272) = v251;
  v252 = [v245 centerXAnchor];
  v253 = [v233 centerXAnchor];
  v254 = [v252 constraintEqualToAnchor:v253];

  *(v148 + 280) = v254;
  v255 = [v245 widthAnchor];
  v256 = [v255 constraintEqualToConstant:1.0];

  *(v148 + 288) = v256;
  v332 = v148;
  if (v313)
  {
    v257 = swift_initStackObject();
    *(v257 + 16) = xmmword_1000D68A0;
    v258 = v314;
    v259 = [v314 topAnchor];
    v260 = v331;
    v261 = [v331 topAnchor];
    v262 = [v259 constraintEqualToAnchor:v261];

    *(v257 + 32) = v262;
    v263 = [v258 leadingAnchor];
    v264 = [v260 leadingAnchor];
    v265 = [v263 constraintEqualToAnchor:v264];

    *(v257 + 40) = v265;
    v266 = [v258 trailingAnchor];
    v267 = [v260 trailingAnchor];
    v268 = [v266 constraintEqualToAnchor:v267];

    *(v257 + 48) = v268;
    v269 = v315;
    v270 = [v315 trailingAnchor];
    v271 = [v258 trailingAnchor];
    v272 = [v270 constraintEqualToAnchor:v271];

    *(v257 + 56) = v272;
    v273 = [v269 leadingAnchor];
    v274 = [v258 leadingAnchor];
    v275 = [v273 constraintEqualToAnchor:v274];

    *(v257 + 64) = v275;
    v276 = [v269 topAnchor];
    v277 = [v258 bottomAnchor];
    v278 = [v276 constraintEqualToAnchor:v277];

    *(v257 + 72) = v278;
    v279 = [v269 bottomAnchor];
    v280 = [v319 topAnchor];
    v281 = [v279 constraintEqualToAnchor:v280 constant:-5.0];

    *(v257 + 80) = v281;
    v282 = v312;
    v283 = [v312 widthAnchor];
    v284 = [v283 constraintEqualToConstant:7.0];

    *(v257 + 88) = v284;
    v285 = [v282 heightAnchor];
    v286 = [v282 widthAnchor];
    v287 = [v285 constraintEqualToAnchor:v286];

    *(v257 + 96) = v287;
    v288 = [v282 centerXAnchor];
    v289 = v318;
    v290 = [v318 centerXAnchor];
    v291 = [v288 constraintEqualToAnchor:v290];

    *(v257 + 104) = v291;
    v292 = [v282 centerYAnchor];
    v293 = [v289 topAnchor];
    v294 = [v292 constraintEqualToAnchor:v293 constant:*(&v216 + 1)];

    *(v257 + 112) = v294;
    v295 = v311;
    v296 = [v311 topAnchor];
    v297 = [v269 bottomAnchor];
    v298 = [v296 constraintEqualToAnchor:v297 constant:5.0];

    *(v257 + 120) = v298;
    v299 = [v295 bottomAnchor];
    v300 = [v282 centerYAnchor];
    v301 = [v299 constraintEqualToAnchor:v300];

    *(v257 + 128) = v301;
    v302 = [v295 centerXAnchor];
    v303 = [v282 centerXAnchor];
    v304 = [v302 constraintEqualToAnchor:v303];

    *(v257 + 136) = v304;
    v305 = [v295 widthAnchor];
    v306 = [v305 constraintEqualToConstant:1.0];

    *(v257 + 144) = v306;
    sub_100009D2C(v257);
  }

  else
  {
    [v314 setHidden:1];
    [v315 setHidden:1];
    [v312 setHidden:1];
    [v311 setHidden:1];
  }

  v307 = v317;
  v308 = objc_opt_self();
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v308 activateConstraints:isa];

  (*(v325 + 8))(v327, v326);
  sub_10002614C(v307, type metadata accessor for HeadphoneViewModel);
}

uint64_t type metadata accessor for HeadphoneMismatchViewController()
{
  result = qword_10011D468;
  if (!qword_10011D468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025D7C()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100025E40()
{
  if (!qword_10011D478)
  {
    type metadata accessor for HeadphoneViewModel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10011D478);
    }
  }
}

id sub_100025EA8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
  v5 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftGenerationLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightGenerationLabel;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseGenerationLabel;
  *&v1[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftCircle;
  *&v1[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftArm;
  *&v1[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightCircle;
  *&v1[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightArm;
  *&v1[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseCircle;
  *&v1[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseArm;
  *&v1[v17] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_type] = 18;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "initWithContentView:", a1);
}

uint64_t sub_1000260D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026134(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002614C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000261AC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }
}

id sub_1000261F8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() systemFontOfSize:12.0];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  return v0;
}

char *sub_1000262D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [objc_opt_self() systemFontOfSize:12.0];
  [v10 setFont:v11];

  [v10 setNumberOfLines:0];
  v12 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor:v12];

  *&v4[v9] = v10;
  v13 = &v4[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_textString];
  *v13 = a2;
  *(v13 + 1) = a3;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_animationView] = a1;

  v14 = a1;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  v17 = *&v15[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label];
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  LODWORD(v19) = 1148846080;
  [*&v15[v16] setContentHuggingPriority:0 forAxis:v19];
  sub_1000264E4();

  return v15;
}

void sub_1000264E4()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_animationView];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D6930;
  v5 = [v2 centerYAnchor];
  v6 = [v0 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 widthAnchor];
  v12 = [v11 constraintEqualToConstant:10.0];

  *(v4 + 48) = v12;
  v13 = [v2 heightAnchor];
  v14 = [v0 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v4 + 56) = v15;
  v16 = [v1 leadingAnchor];
  v17 = [v2 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];

  *(v4 + 64) = v18;
  v19 = [v1 topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v4 + 72) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v4 + 80) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v4 + 88) = v27;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_100026A8C()
{
  v168.receiver = v0;
  v168.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v168, "viewDidLoad");
  v167 = v0;
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  v4 = objc_allocWithZone(BSUICAPackageView);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithPackageName:v6 inBundle:v5];

  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = v7;
  v9 = [v2 mainBundle];
  v169._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x44454752414843;
  v10._object = 0xE700000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v169._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v169);

  v14 = type metadata accessor for LEDView();
  v15 = objc_allocWithZone(v14);
  v163 = v8;
  v166 = sub_1000262D4(v8, v13._countAndFlagsBits, v13._object);
  v16 = objc_allocWithZone(BSUICAPackageView);
  v17 = v5;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithPackageName:v18 inBundle:v17];

  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v19;
  v21 = [v2 mainBundle];
  v170._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0x474E494752414843;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v170._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v170);

  v26 = objc_allocWithZone(v14);
  v160 = v20;
  v27 = sub_1000262D4(v20, v25._countAndFlagsBits, v25._object);
  LODWORD(v28) = 1148846080;
  [v27 setContentHuggingPriority:0 forAxis:v28];
  v29 = objc_allocWithZone(BSUICAPackageView);
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 initWithPackageName:v30 inBundle:v17];

  v162 = v17;
  if (!v31)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = v31;
  v33 = [v2 mainBundle];
  v171._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x435F454752414843;
  v34._object = 0xEB00000000455341;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v171._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v171);

  v38 = objc_allocWithZone(v14);
  v159 = v32;
  v39 = sub_1000262D4(v32, v37._countAndFlagsBits, v37._object);
  v40 = [objc_allocWithZone(UIView) init];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = v166;
  [v40 addSubview:v41];
  [v40 addSubview:v27];
  v42 = v39;
  [v40 addSubview:v42];
  v166 = objc_opt_self();
  v161 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000D6940;
  v44 = [v27 topAnchor];

  v45 = [v40 topAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

  *(v43 + 32) = v46;
  v47 = [v27 centerXAnchor];

  v48 = [v40 centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v43 + 40) = v49;
  v50 = [v27 centerYAnchor];

  v51 = [v40 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v43 + 48) = v52;
  v53 = [v27 bottomAnchor];

  v54 = [v40 bottomAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

  *(v43 + 56) = v55;
  v56 = [v41 topAnchor];

  v57 = [v40 topAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57];

  *(v43 + 64) = v58;
  v59 = [v41 leadingAnchor];

  v60 = [v40 leadingAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor:v60];

  *(v43 + 72) = v61;
  v62 = [v41 trailingAnchor];

  v63 = [v27 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-16.0];

  *(v43 + 80) = v64;
  v65 = [v41 centerYAnchor];

  v66 = [v40 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v43 + 88) = v67;
  v68 = [v41 bottomAnchor];
  v158 = v41;

  v69 = [v40 bottomAnchor];
  v70 = [v68 constraintLessThanOrEqualToAnchor:v69];

  *(v43 + 96) = v70;
  v71 = [v42 topAnchor];

  v72 = [v40 topAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72];

  *(v43 + 104) = v73;
  v74 = [v42 leadingAnchor];

  v75 = [v27 trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:16.0];

  *(v43 + 112) = v76;
  v77 = [v42 trailingAnchor];

  v78 = [v40 trailingAnchor];
  v79 = [v77 constraintLessThanOrEqualToAnchor:v78];

  *(v43 + 120) = v79;
  v80 = [v42 centerYAnchor];

  v81 = [v40 centerYAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v43 + 128) = v82;
  v83 = [v42 bottomAnchor];
  v157 = v42;

  v84 = [v40 bottomAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor:v84];

  *(v43 + 136) = v85;
  v86 = sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:isa];

  v88 = v167;
  v89 = [v167 view];
  if (!v89)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v90 = v89;
  v156 = v86;
  [v89 addSubview:v40];

  v91 = [v167 contentView];
  v165 = [v91 mainContentGuide];

  v92 = &v167[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_contentProvider];
  swift_beginAccess();
  v93 = *(v92 + 3);
  if (!v93)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v94 = *(v92 + 4);
  v95 = sub_10000E7E4(v92, *(v92 + 3));
  v96 = *(v93 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  v99 = &v152 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v96 + 16))(v99);
  v100 = (*(v94 + 8))(v93, v94);
  (*(v96 + 8))(v99, v93);
  v101 = objc_allocWithZone(UIImageView);
  v164 = v100;
  v102 = [v101 initWithImage:v100];
  [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v102 setClipsToBounds:0];
  v103 = [objc_allocWithZone(CAShapeLayer) init];
  v104 = [objc_allocWithZone(UIBezierPath) init];
  [v102 bounds];
  v105 = CGRectGetWidth(v172) * 0.5;
  [v102 bounds];
  v106 = CGRectGetHeight(v173) * 0.5 + 10.0;
  [v102 bounds];
  v107 = CGRectGetHeight(v174) + 10.0;
  [v104 moveToPoint:{v105, v106}];
  [v104 addLineToPoint:{v105, v107}];
  v108 = [v104 CGPath];
  [v103 setPath:v108];

  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  v109 = sub_1000A2978(0x37393739373923, 0xE700000000000000);
  if (!v109)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v110 = v109;
  v153 = v104;
  v155 = v27;
  v111 = [v109 CGColor];

  [v103 setStrokeColor:v111];
  [v103 setLineWidth:1.0];
  [v103 setLineCap:kCALineCapRound];
  v112 = [v102 layer];
  v154 = v103;
  [v112 addSublayer:v103];

  v113 = [v88 view];
  if (!v113)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v114 = v113;
  [v113 addSubview:v102];

  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1000D5260;
  v116 = [v102 topAnchor];
  v117 = v165;
  v118 = [v165 topAnchor];
  v119 = [v116 constraintGreaterThanOrEqualToAnchor:v118];

  *(v115 + 32) = v119;
  v120 = [v102 centerXAnchor];
  v121 = [v117 centerXAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];

  *(v115 + 40) = v122;
  v123 = [v102 widthAnchor];
  v124 = v164;
  [v164 size];
  v125 = [v123 constraintEqualToConstant:?];

  *(v115 + 48) = v125;
  v126 = [v102 heightAnchor];
  [v124 size];
  v128 = [v126 constraintEqualToConstant:v127];

  *(v115 + 56) = v128;
  v129 = [v40 topAnchor];
  v130 = [v102 bottomAnchor];

  v131 = [v129 constraintEqualToAnchor:v130 constant:20.0];
  *(v115 + 64) = v131;
  v132 = [v40 bottomAnchor];
  v133 = [v117 bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133];

  *(v115 + 72) = v134;
  v135 = [v40 centerXAnchor];
  v136 = [v117 centerXAnchor];
  v137 = [v135 constraintEqualToAnchor:v136 constant:-16.0];

  *(v115 + 80) = v137;
  v138 = [v40 leadingAnchor];
  v139 = v167;
  v140 = [v167 view];
  if (!v140)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v141 = v140;
  v142 = [v140 leadingAnchor];

  v143 = [v138 constraintGreaterThanOrEqualToAnchor:v142];
  *(v115 + 88) = v143;
  v144 = [v40 trailingAnchor];
  v145 = [v139 view];
  v146 = v162;
  v147 = v155;
  if (v145)
  {
    v148 = v145;
    v149 = [v145 trailingAnchor];

    v150 = [v144 constraintLessThanOrEqualToAnchor:v149];
    *(v115 + 96) = v150;
    v151 = Array._bridgeToObjectiveC()().super.isa;

    [v166 activateConstraints:v151];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_100027DF4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v22._object = 0xE000000000000000;
  v3._object = 0x80000001000DCBA0;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v22);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = [v1 mainBundle];
  v23._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001000DCBC0;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v23);

  v11 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v11];

  v12 = [v1 mainBundle];
  v24._object = 0xE000000000000000;
  v13._countAndFlagsBits = 1162760004;
  v13._object = 0xE400000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v24);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100028944;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_100104310;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  v20 = [v0 addAction:v19];
}

void sub_1000280F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController);
    if (v2)
    {
      v3 = v2;

      sub_1000AA9CC();
      v1 = v3;
    }
  }
}

uint64_t sub_10002816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Headphone_Manager();
  v8 = static Headphone_Manager.shared.getter();
  v9 = *(a4 + 152);
  if (v9)
  {
    *&v33[0] = *(a4 + 144);
    *(&v33[0] + 1) = v9;
    *&v30 = 58;
    *(&v30 + 1) = 0xE100000000000000;
    v29[0] = 45;
    v29[1] = 0xE100000000000000;
    sub_100008480();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

  if (*(v13 + 16))
  {
    v14 = sub_1000CD118(v10, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v14);

      HeadphoneDevice.featureContent.getter();
      if (v29[3])
      {
        sub_100008438(&qword_10011CB58, &qword_1000D85C0);
        sub_100008438(&qword_10011D520, &unk_1000D6A50);
        if (swift_dynamicCast())
        {
          if (*(&v31 + 1))
          {

            sub_10000E9B0(&v30, v33);
            sub_10000E9B0(v33, &v30);
            v18 = OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_contentProvider;
            swift_beginAccess();
            sub_10000EA2C(&v30, v5 + v18, &qword_10011D518, &unk_1000D6A40);
            swift_endAccess();
            sub_10000E390(a4, a1);
            return 1;
          }
        }

        else
        {
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
        }
      }

      else
      {
        sub_10000E950(v29, &qword_10011CB48, &qword_1000D85B0);
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
      }

      sub_10000E950(&v30, &qword_10011D518, &unk_1000D6A40);
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A570(v25, qword_100123040);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "ChargingCaseViewController: Headphone content is nil, exiting", v28, 2u);
      }

      if (*(v5 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_presenter))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100047C68();
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A570(v20, qword_100123040);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "ChargingCaseViewController: Headphone device is nil, exiting", v23, 2u);
  }

  if (*(v5 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_presenter) && swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
    swift_unknownObjectRelease();
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    MobileGestalt_get_appleInternalInstallCapability();

LABEL_30:
    sub_10000E390(a4, a1);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChargingCaseViewController()
{
  result = qword_10011D508;
  if (!qword_10011D508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028768()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100028858(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController) = a1;
  return _objc_release_x1();
}

uint64_t sub_100028870(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

uint64_t sub_10002890C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002894C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100028968()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = [v3 leftAnchor];

  if (v5)
  {
    return v5;
  }

LABEL_11:
  v7 = [v0 leftAnchor];

  return v7;
}

unint64_t sub_100028A4C()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v1 + 8 * result + 32);
          goto LABEL_8;
        }

        __break(1u);
        return result;
      }

      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v6 = v5;
      v7 = [v5 rightAnchor];

      if (v7)
      {
        return v7;
      }
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = [v0 rightAnchor];

  return v9;
}

char *sub_100028B48(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v158 = a4;
  ObjectType = swift_getObjectType();
  v160 = type metadata accessor for BatteryIconStyle();
  v11 = *(v160 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v160);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadphoneBatteryInfo(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView] = 0;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews] = a1;
  v19 = a3;
  v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryType] = *(a3 + 9);
  if (a2 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v159 = a2;
  if (v20 >= 2)
  {
    v21 = v15;
LABEL_5:

    v22 = 0;
    a5 = 3;
LABEL_14:
    v24 = &off_10011D000;
    v25 = ObjectType;
    goto LABEL_15;
  }

  sub_100009C6C(a3, v18);
  v23 = v18[9];
  sub_100009CD0(v18);
  v21 = v15;
  if (v23 <= 1)
  {
    if (v23)
    {

      v22 = 0;
      a5 = 2;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v23 != 2)
  {
    if (v23 == 3)
    {
      goto LABEL_5;
    }

LABEL_11:

    v22 = 0;
    a5 = 1;
    goto LABEL_14;
  }

  v24 = &off_10011D000;
  v25 = ObjectType;
  v22 = v158;
LABEL_15:
  v157 = v19;
  v26 = *v19;
  v27 = *(v19 + 8);
  (*(v11 + 16))(v14, v19 + *(v21 + 28), v160);
  v28 = objc_allocWithZone(type metadata accessor for LabelledBatteryView());
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView] = sub_10003D578(v22, a5, v27, v14, v26);
  v162.receiver = v6;
  v162.super_class = v25;
  v29 = objc_msgSendSuper2(&v162, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = objc_allocWithZone(UIStackView);
  sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
  v31 = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithArrangedSubviews:isa];

  v34 = v24[168];
  v35 = *&v34[v31];
  *&v34[v31] = v33;
  v36 = v31;
  v37 = v33;

  v38 = v37;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = *&v36[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
  v40 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView;
  v160 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = v36;
  ObjectType = v36;
  v42 = v41;
  [v42 addSubview:v38];
  [v42 addSubview:*&v36[v40]];
  v43 = [objc_allocWithZone(UILayoutGuide) init];
  v44 = [objc_allocWithZone(UILayoutGuide) init];
  [v42 addLayoutGuide:v43];
  [v42 addLayoutGuide:v44];
  v156 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000D6A60;
  v158 = v43;
  v46 = [v43 topAnchor];
  v47 = [v42 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v45 + 32) = v48;
  v49 = [v38 topAnchor];
  v50 = [v43 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v45 + 40) = v51;
  v52 = [v38 leadingAnchor];
  v53 = [v42 leadingAnchor];

  v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53];
  *(v45 + 48) = v54;
  v55 = [v38 trailingAnchor];
  v56 = [v42 trailingAnchor];

  v57 = [v55 constraintLessThanOrEqualToAnchor:v56];
  *(v45 + 56) = v57;
  v159 = v38;
  v58 = [v38 centerXAnchor];
  v59 = [v42 centerXAnchor];

  v60 = [v58 constraintEqualToAnchor:v59];
  *(v45 + 64) = v60;
  v61 = [v44 topAnchor];
  v62 = [v38 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v45 + 72) = v63;
  v65 = v160;
  v64 = ObjectType;
  v66 = [*(ObjectType + v160) topAnchor];
  v67 = [v44 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:20.0];

  *(v45 + 80) = v68;
  v69 = [*(v64 + v65) bottomAnchor];
  v70 = [v42 bottomAnchor];

  v71 = [v69 constraintEqualToAnchor:v70];
  *(v45 + 88) = v71;
  v72 = [*(v64 + v65) leadingAnchor];
  v73 = [v42 leadingAnchor];

  v74 = [v72 constraintGreaterThanOrEqualToAnchor:v73];
  *(v45 + 96) = v74;
  v75 = [*(v64 + v65) trailingAnchor];
  v76 = [v42 trailingAnchor];

  v77 = [v75 constraintLessThanOrEqualToAnchor:v76];
  *(v45 + 104) = v77;
  v78 = [*(v64 + v65) centerXAnchor];
  v79 = [v42 centerXAnchor];

  v80 = [v78 constraintEqualToAnchor:v79];
  *(v45 + 112) = v80;
  v81 = v158;
  v82 = [v158 heightAnchor];
  v83 = [v44 heightAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v45 + 120) = v84;
  v85 = *&v42[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints];
  *&v42[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints] = v45;
  v86 = v42;

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1000D6A70;
  v88 = [v81 leadingAnchor];
  v89 = [v42 leadingAnchor];

  v90 = [v88 constraintEqualToAnchor:v89];
  *(v87 + 32) = v90;
  v91 = [v81 topAnchor];
  v92 = [v86 topAnchor];

  v93 = [v91 constraintEqualToAnchor:v92];
  *(v87 + 40) = v93;
  v94 = [v81 bottomAnchor];
  v95 = [v86 bottomAnchor];

  v96 = [v94 constraintEqualToAnchor:v95];
  *(v87 + 48) = v96;
  v97 = [v81 widthAnchor];
  v98 = [v44 widthAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v87 + 56) = v99;
  v100 = [v81 heightAnchor];
  v101 = [v44 heightAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v87 + 64) = v102;
  v103 = [v44 topAnchor];
  v104 = [v86 topAnchor];

  v105 = [v103 constraintEqualToAnchor:v104];
  *(v87 + 72) = v105;
  v106 = [v44 bottomAnchor];
  v107 = [v86 bottomAnchor];

  v108 = [v106 constraintEqualToAnchor:v107];
  *(v87 + 80) = v108;
  v109 = [v44 leadingAnchor];
  v110 = [v81 trailingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];

  *(v87 + 88) = v111;
  v112 = [v44 trailingAnchor];
  v113 = [v86 trailingAnchor];

  v114 = [v112 constraintEqualToAnchor:v113];
  *(v87 + 96) = v114;
  v115 = v159;
  v116 = [v159 topAnchor];
  v117 = [v81 topAnchor];
  v118 = [v116 constraintGreaterThanOrEqualToAnchor:v117];

  *(v87 + 104) = v118;
  v119 = [v115 bottomAnchor];
  v120 = [v81 bottomAnchor];
  v121 = [v119 constraintLessThanOrEqualToAnchor:v120];

  *(v87 + 112) = v121;
  v122 = [v115 leadingAnchor];
  v123 = [v81 leadingAnchor];
  v124 = [v122 constraintGreaterThanOrEqualToAnchor:v123];

  *(v87 + 120) = v124;
  v125 = [v115 trailingAnchor];
  v126 = [v81 trailingAnchor];
  v127 = [v125 constraintLessThanOrEqualToAnchor:v126];

  *(v87 + 128) = v127;
  v128 = [v115 centerXAnchor];
  v129 = [v81 centerXAnchor];
  v130 = [v128 constraintEqualToAnchor:v129];

  *(v87 + 136) = v130;
  v131 = [v115 centerYAnchor];

  v132 = [v81 centerYAnchor];
  v133 = [v131 constraintEqualToAnchor:v132];

  *(v87 + 144) = v133;
  v135 = v160;
  v134 = ObjectType;
  v136 = [*(ObjectType + v160) topAnchor];
  v137 = [v44 topAnchor];
  v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137];

  *(v87 + 152) = v138;
  v139 = [*(v134 + v135) bottomAnchor];
  v140 = [v44 bottomAnchor];
  v141 = [v139 constraintLessThanOrEqualToAnchor:v140];

  *(v87 + 160) = v141;
  v142 = [*(v134 + v135) leadingAnchor];
  v143 = [v44 leadingAnchor];
  v144 = [v142 constraintGreaterThanOrEqualToAnchor:v143];

  *(v87 + 168) = v144;
  v145 = [*(v134 + v135) trailingAnchor];
  v146 = [v44 trailingAnchor];
  v147 = [v145 constraintLessThanOrEqualToAnchor:v146];

  *(v87 + 176) = v147;
  v148 = [*(v134 + v135) centerXAnchor];
  v149 = [v44 centerXAnchor];
  v150 = [v148 constraintEqualToAnchor:v149];

  *(v87 + 184) = v150;
  v151 = [*(v134 + v135) centerYAnchor];
  v152 = [v44 centerYAnchor];
  v153 = [v151 constraintEqualToAnchor:v152];

  *(v87 + 192) = v153;
  v154 = *&v86[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints];
  *&v86[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints] = v87;

  sub_100029CBC();

  sub_100009CD0(v157);
  return v86;
}

void sub_100029CBC()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = objc_opt_self();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v5 = (v3 & 1) == 0;
  if (v3)
  {
    v6 = &OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints;
  }

  v7 = *v6;
  v8 = *(v0 + v7);
  if (v5)
  {
    v9 = &OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints;
  }

  v10 = *(v0 + v7);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:isa];

  v12 = *(v0 + *v9);

  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:v13];
}

void sub_100029E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 currentTraitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v12 = v11;
      [v7 updateViewForAssetType:v10 adjustmentsURL:v11];
    }

    while (v2 != v5);
  }
}

void sub_100029FD0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_100029CBC();
  }
}

id sub_10002A1FC()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView);
  if (!v2 || (result = [v2 centerXAnchor]) == 0)
  {
    v4 = [v1 centerXAnchor];

    return v4;
  }

  return result;
}

uint64_t sub_10002A38C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for HeadphoneBatteryInfo(0);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  v24 = v12;
  v25 = a3;
  v26 = a4;
  v27 = a2;
  v14 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v15];
    [v17 setContentMode:4];
    v18 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v14;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v13 != v14);
  a2 = v27;
  v19 = v28;
  a3 = v25;
  a4 = v26;
  v12 = v24;
LABEL_14:

  if (v19 >> 62)
  {
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);

    v20 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v20 = v19;
  }

  sub_100009C6C(a2, v12);
  v21 = objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
  v22 = sub_100028B48(v19, v20, v12, a3, a4);
  sub_100009CD0(a2);
  return v22;
}

void sub_10002A67C(uint64_t *a1)
{
  v3 = (a1 + *(type metadata accessor for HeadphoneViewModel(0) + 56));
  v4 = v3[13];
  v90[12] = v3[12];
  v90[13] = v4;
  v90[14] = v3[14];
  v5 = v3[9];
  v90[8] = v3[8];
  v90[9] = v5;
  v6 = v3[11];
  v90[10] = v3[10];
  v90[11] = v6;
  v7 = v3[5];
  v90[4] = v3[4];
  v90[5] = v7;
  v8 = v3[7];
  v90[6] = v3[6];
  v90[7] = v8;
  v9 = v3[1];
  v90[0] = *v3;
  v90[1] = v9;
  v10 = v3[3];
  v90[2] = v3[2];
  v90[3] = v10;
  if (sub_100026134(v90) != 1)
  {
    v11 = *a1;
    v12 = a1[1];
    v13 = String._bridgeToObjectiveC()();
    [v1 setTitle:v13];

    v14 = a1[2];
    v15 = a1[3];
    v16 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v16];

    v17 = a1[4];
    v18 = a1[5];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v20 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10002B198;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C034;
    aBlock[3] = &unk_1001043D0;
    v21 = _Block_copy(aBlock);
    v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];

    _Block_release(v21);

    v87 = v22;

    v23 = objc_opt_self();
    v24 = [v23 configurationWithPointSize:2 weight:88.0];
    v25 = objc_opt_self();
    v26 = [v25 systemBlueColor];
    v27 = [v23 configurationWithHierarchicalColor:v26];

    v85 = v24;
    v86 = v27;
    v28 = [v24 configurationByApplyingConfiguration:v27];
    v29 = sub_100005624();
    if (!v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();
    }

    v30 = objc_opt_self();
    v84 = v28;
    v88 = [v30 systemImageNamed:v29 withConfiguration:v28];

    v31 = [objc_allocWithZone(UIImageView) initWithImage:v88];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v1 contentView];
    [v32 addSubview:v31];

    v33 = [v23 configurationWithPointSize:4 weight:34.0];
    v34 = [v25 systemGrayColor];
    v35 = [v23 configurationWithHierarchicalColor:v34];

    v82 = v35;
    v83 = v33;
    v36 = [v33 configurationByApplyingConfiguration:v35];
    v37 = String._bridgeToObjectiveC()();
    v38 = [v30 _systemImageNamed:v37 withConfiguration:v36];

    v81 = v36;
    v39 = [objc_allocWithZone(UIImageView) initWithImage:v38];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v1 contentView];
    [v40 addSubview:v39];

    v80 = v38;
    v41 = [objc_allocWithZone(UIImageView) initWithImage:v38];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [v1 contentView];
    [v42 addSubview:v41];

    if (v88)
    {
      v43 = v88;
      [v43 size];
      v45 = v44;
      [v43 size];
      v47 = v46;

      v48 = v45 / v47;
    }

    else
    {
      v48 = 1.0;
    }

    v49 = [v1 contentView];
    v50 = [v49 mainContentGuide];

    v79 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000D5260;
    v52 = [v31 topAnchor];
    v53 = [v50 topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    *(v51 + 32) = v54;
    v55 = [v31 bottomAnchor];
    v56 = [v50 bottomAnchor];
    v57 = [v55 constraintLessThanOrEqualToAnchor:v56];

    *(v51 + 40) = v57;
    v58 = [v31 centerXAnchor];
    v59 = [v50 centerXAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v51 + 48) = v60;
    v61 = [v31 heightAnchor];
    v62 = [v61 constraintEqualToConstant:110.0];

    *(v51 + 56) = v62;
    v63 = [v31 widthAnchor];
    v64 = [v31 heightAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 multiplier:v48];

    *(v51 + 64) = v65;
    v66 = [v39 centerYAnchor];
    v67 = [v31 centerYAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v51 + 72) = v68;
    v69 = [v39 trailingAnchor];

    v70 = [v31 leadingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v51 + 80) = v71;
    v72 = [v41 centerYAnchor];
    v73 = [v31 centerYAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v51 + 88) = v74;
    v75 = [v41 leadingAnchor];

    v76 = [v31 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v51 + 96) = v77;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v79 activateConstraints:isa];
  }
}

void sub_10002B02C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B7214();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002B160()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10002B1B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_10002B1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002B244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10002B2D0(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      result = *(v1 + 16);
      v4 = *(v1 + 24);
    }

    else
    {
      result = *v1;
      v4 = *(v1 + 8);
    }

LABEL_24:
    v8 = 144;
    goto LABEL_25;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v2 = 56;
      if (*(v1 + 72))
      {
        v2 = 0;
      }

      v3 = 64;
      if (*(v1 + 72))
      {
        v3 = 8;
      }

      v4 = *(v1 + v3);
      result = *(v1 + v2);
    }

    else if (*(v1 + 96))
    {
      v9 = 56;
      if (*(v1 + 72))
      {
        v9 = 0;
      }

      v10 = 64;
      if (*(v1 + 72))
      {
        v10 = 8;
      }

      result = *(v1 + v9);
      v4 = *(v1 + 144) * 0.5 - (*(v1 + v10) + result * 0.5);
    }

    else
    {
      result = *(v1 + 80);
      v4 = *(v1 + 88);
    }

    goto LABEL_24;
  }

  v6 = 32;
  if (*(v1 + 48))
  {
    v6 = 0;
  }

  v7 = 40;
  if (*(v1 + 48))
  {
    v7 = 8;
  }

  v4 = *(v1 + v7);
  result = *(v1 + v6);
  v8 = 160;
LABEL_25:
  v11 = *(v1 + v8) * 0.5 - (v4 + result * 0.5);
  return result;
}

__n128 sub_10002B3C0@<Q0>(uint64_t a1@<X8>)
{
  v78[0].n128_u8[0] = 1;
  LOBYTE(v65) = 1;
  v15[240] = 0;

  v31 = xmmword_1000D6B50;
  v32 = xmmword_1000D6B60;
  v33 = xmmword_1000D6B70;
  v34.n128_u8[0] = 0;
  v35.n128_u64[0] = 0;
  v34.n128_u64[1] = 0;
  v35.n128_u8[8] = 1;
  v36 = 0uLL;
  v37[0] = 1;
  *&v37[8] = xmmword_1000D6B80;
  *&v37[24] = 0;
  v38[0] = 0;
  *&v38[8] = xmmword_1000D6B90;
  *&v38[24] = xmmword_1000D6B90;
  strcpy(&v38[40], "airpods");
  v39 = 0xE700000000000000;
  v40 = 0xD000000000000019;
  v41 = 0x80000001000DCF40;
  __asm { FMOV            V5.2D, #24.0 }

  v42 = _Q5;
  __asm { FMOV            V6.2D, #25.0 }

  v43 = _Q6;
  v44 = 0;
  v45[0] = xmmword_1000D6B50;
  v45[1] = xmmword_1000D6B60;
  v45[2] = xmmword_1000D6B70;
  v46 = 0;
  v48 = 0;
  v47 = 0;
  v49 = 1;
  v51 = 0;
  v50 = 0;
  v52 = 1;
  v53 = xmmword_1000D6B80;
  v54 = 0;
  v55 = 0;
  v56 = xmmword_1000D6B90;
  v57 = xmmword_1000D6B90;
  v58 = 0x73646F70726961;
  v59 = 0xE700000000000000;
  v60 = 0xD000000000000019;
  v61 = 0x80000001000DCF40;
  v62 = _Q5;
  v63 = _Q6;
  v64 = 0;
  sub_10000A304(&v31, v78);
  sub_10000A360(v45);
  v27 = *v38;
  v28 = *&v38[16];
  v29 = *&v38[32];
  v30 = v39;
  v23 = v35;
  v24 = v36;
  v25 = *v37;
  v26 = *&v37[16];
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v16 = v42;
  v17 = v43;
  v18 = v44;

  v73 = v27;
  v74 = v28;
  v75 = v29;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v72 = v26;
  v65 = v19;
  v66 = v20;
  v67 = v21;
  v68 = v22;
  *&v77[8] = v16;
  *&v77[24] = v17;
  v78[8] = v27;
  v78[9] = v28;
  v78[10] = v29;
  v78[4] = v23;
  v78[5] = v24;
  v78[6] = v25;
  v78[7] = v26;
  v78[0] = v19;
  v78[1] = v20;
  v78[2] = v21;
  v78[3] = v22;
  *v77 = 0x80000001000DCF60;
  *&v77[40] = v18;
  *&v76 = v30;
  *(&v76 + 1) = 0xD000000000000022;
  v79 = v30;
  v80 = 0xD000000000000022;
  v82 = v16;
  v83 = v17;
  v81 = 0x80000001000DCF60;
  v84 = v18;
  sub_10000A304(&v65, v15);
  sub_10000A360(v78);
  v8 = *&v77[16];
  *(a1 + 192) = *v77;
  *(a1 + 208) = v8;
  *(a1 + 224) = *&v77[32];
  v9 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v9;
  v10 = v76;
  *(a1 + 160) = v75;
  *(a1 + 176) = v10;
  v11 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v11;
  v12 = v72;
  *(a1 + 96) = v71;
  *(a1 + 112) = v12;
  v13 = v66;
  *a1 = v65;
  *(a1 + 16) = v13;
  result = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002B6D0@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BA0;
  *&v16 = 0x4067400000000000;
  *(&v16 + 1) = 0x4051954FDF3B645ALL;
  v17 = xmmword_1000D6BB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6BC0;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6BD0;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6B90;
  *&v21[24] = xmmword_1000D6B90;
  *&v21[40] = 0xD000000000000020;
  *&v22 = 0x80000001000DCFC0;
  *(&v22 + 1) = 0xD000000000000032;
  *v23 = 0x80000001000DCFF0;
  __asm { FMOV            V5.2D, #23.0 }

  *&v23[8] = _Q5;
  *&v23[24] = 0;
  v24 = 0uLL;
  v25 = xmmword_1000D6BA0;
  v26 = 0x4067400000000000;
  v27 = 0x4051954FDF3B645ALL;
  v28 = xmmword_1000D6BB0;
  v29 = 0;
  v30 = xmmword_1000D6BC0;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 1;
  v35 = xmmword_1000D6BD0;
  v36 = 0;
  v37 = 0;
  v38 = xmmword_1000D6B90;
  v39 = xmmword_1000D6B90;
  v40 = 0xD000000000000020;
  v41 = 0x80000001000DCFC0;
  v42 = 0xD000000000000032;
  v43 = 0x80000001000DCFF0;
  v44 = _Q5;
  v46 = 0;
  v45 = 0;
  v47 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(&v25);
  v7 = *&v23[16];
  *(a1 + 192) = *v23;
  *(a1 + 208) = v7;
  *(a1 + 224) = v24;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = v22;
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002B8A8@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BE0;
  v16 = xmmword_1000D6BF0;
  v17 = xmmword_1000D6C00;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6C10;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C20;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6C30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpods.gen3");
  v21[53] = 0;
  *&v21[54] = -5120;
  *&v21[56] = 0xD000000000000027;
  *v22 = 0x80000001000DD030;
  __asm { FMOV            V7.2D, #28.0 }

  *&v22[8] = _Q7;
  *&v22[24] = 0;
  v23 = 0uLL;
  v24[0] = xmmword_1000D6BE0;
  v24[1] = xmmword_1000D6BF0;
  v24[2] = xmmword_1000D6C00;
  v25 = 0;
  v26 = xmmword_1000D6C10;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 1;
  v31 = xmmword_1000D6C20;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1000D6C30;
  v35 = xmmword_1000D6B90;
  strcpy(v36, "airpods.gen3");
  HIBYTE(v36[6]) = 0;
  v36[7] = -5120;
  v37 = 0xD000000000000027;
  v38 = 0x80000001000DD030;
  v39 = _Q7;
  v41 = 0;
  v40 = 0;
  v42 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(v24);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = v23;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BA70@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BE0;
  v16 = xmmword_1000D6C40;
  v17 = xmmword_1000D6C00;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6C10;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C50;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6C30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpods.gen3");
  v21[53] = 0;
  *&v21[54] = -5120;
  *&v21[56] = 0xD000000000000027;
  *v22 = 0x80000001000DD030;
  __asm { FMOV            V7.2D, #28.0 }

  *&v22[8] = _Q7;
  *&v22[24] = xmmword_1000D6C60;
  *&v22[40] = 0x401C000000000000;
  v23[0] = xmmword_1000D6BE0;
  v23[1] = xmmword_1000D6C40;
  v23[2] = xmmword_1000D6C00;
  v24 = 0;
  v25 = xmmword_1000D6C10;
  v26 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 1;
  v30 = xmmword_1000D6C50;
  v31 = 0;
  v32 = 0;
  v33 = xmmword_1000D6C30;
  v34 = xmmword_1000D6B90;
  strcpy(v35, "airpods.gen3");
  HIBYTE(v35[6]) = 0;
  v35[7] = -5120;
  v36 = 0xD000000000000027;
  v37 = 0x80000001000DD030;
  v38 = _Q7;
  v39 = xmmword_1000D6C60;
  v40 = 0x401C000000000000;
  sub_10000A304(&v15, v14);
  sub_10000A360(v23);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v22[32];
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BC40@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6C70;
  v16 = xmmword_1000D6C80;
  v17 = xmmword_1000D6BB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6BC0;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C90;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6B90;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "beats.fit.pro");
  *&v21[54] = -4864;
  *&v21[56] = 0xD00000000000001FLL;
  *v22 = 0x80000001000DD060;
  __asm { FMOV            V6.2D, #23.0 }

  *&v22[8] = _Q6;
  *&v22[24] = 0;
  v23 = 0uLL;
  v24[0] = xmmword_1000D6C70;
  v24[1] = xmmword_1000D6C80;
  v24[2] = xmmword_1000D6BB0;
  v25 = 0;
  v26 = xmmword_1000D6BC0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 1;
  v31 = xmmword_1000D6C90;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1000D6B90;
  v35 = xmmword_1000D6B90;
  strcpy(v36, "beats.fit.pro");
  v36[7] = -4864;
  v37 = 0xD00000000000001FLL;
  v38 = 0x80000001000DD060;
  v39 = _Q6;
  v41 = 0;
  v40 = 0;
  v42 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(v24);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = v23;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BE04@<Q0>(uint64_t a1@<X8>)
{
  v16[256] = 0;
  v16[248] = 0;

  v17 = v14;
  v18 = xmmword_1000D6CA0;
  v19 = xmmword_1000D6CB0;
  v20[0] = 0;
  *&v20[8] = xmmword_1000D6CC0;
  v20[24] = 0;
  v21 = 0uLL;
  v22[0] = 1;
  *&v22[8] = xmmword_1000D6CD0;
  *&v22[24] = 0;
  v23[0] = 0;
  *&v23[8] = v15;
  *&v23[24] = xmmword_1000D6B90;
  strcpy(&v23[40], "airpodspro");
  v23[51] = 0;
  *&v23[52] = -369098752;
  *&v23[56] = 0xD000000000000025;
  *v24 = 0x80000001000DCF90;
  __asm { FMOV            V5.2D, #21.0 }

  *&v24[8] = _Q5;
  *&v24[24] = xmmword_1000D6CE0;
  *&v24[40] = 0x4024000000000000;
  v25[0] = v14;
  v25[1] = xmmword_1000D6CA0;
  v25[2] = xmmword_1000D6CB0;
  v26 = 0;
  v27 = xmmword_1000D6CC0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  v31 = 1;
  v32 = xmmword_1000D6CD0;
  v33 = 0;
  v34 = 0;
  v35 = v15;
  v36 = xmmword_1000D6B90;
  v37 = 0x7073646F70726961;
  v38 = 0xEA00000000006F72;
  v39 = 0xD000000000000025;
  v40 = 0x80000001000DCF90;
  v41 = _Q5;
  v42 = xmmword_1000D6CE0;
  v43 = 0x4024000000000000;
  sub_10000A304(&v17, v16);
  sub_10000A360(v25);
  v7 = *&v24[16];
  *(a1 + 192) = *v24;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v24[32];
  v8 = *&v23[16];
  *(a1 + 128) = *v23;
  *(a1 + 144) = v8;
  v9 = *&v23[48];
  *(a1 + 160) = *&v23[32];
  *(a1 + 176) = v9;
  v10 = v21;
  *(a1 + 64) = *&v20[16];
  *(a1 + 80) = v10;
  v11 = *&v22[16];
  *(a1 + 96) = *v22;
  *(a1 + 112) = v11;
  v12 = v18;
  *a1 = v17;
  *(a1 + 16) = v12;
  result = *v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BFCC@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;
  v14[240] = 0;

  v15 = xmmword_1000D6CF0;
  v16 = xmmword_1000D6D00;
  v17 = xmmword_1000D6CB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6D10;
  v18[24] = 0;
  v19 = xmmword_1000D6D20;
  v20[0] = 0;
  *&v20[8] = xmmword_1000D6CD0;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6D30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpodspro");
  v21[51] = 0;
  *&v21[52] = -369098752;
  *&v21[56] = 0xD000000000000025;
  *v22 = 0x80000001000DCF90;
  __asm { FMOV            V16.2D, #21.0 }

  *&v22[8] = _Q16;
  *&v22[24] = xmmword_1000D6CE0;
  *&v22[40] = 0x4024000000000000;
  v23[0] = xmmword_1000D6CF0;
  v23[1] = xmmword_1000D6D00;
  v23[2] = xmmword_1000D6CB0;
  v24 = 0;
  v25 = xmmword_1000D6D10;
  v26 = 0;
  v27 = xmmword_1000D6D20;
  v28 = 0;
  v29 = xmmword_1000D6CD0;
  v30 = 0;
  v31 = 0;
  v32 = xmmword_1000D6D30;
  v33 = xmmword_1000D6B90;
  v34 = 0x7073646F70726961;
  v35 = 0xEA00000000006F72;
  v36 = 0xD000000000000025;
  v37 = 0x80000001000DCF90;
  v38 = _Q16;
  v39 = xmmword_1000D6CE0;
  v40 = 0x4024000000000000;
  sub_10000A304(&v15, v14);
  sub_10000A360(v23);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v22[32];
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C1A4@<Q0>(uint64_t a1@<X8>)
{
  v9[256] = 0;
  v9[248] = 0;

  v10 = xmmword_1000D6D40;
  v11 = xmmword_1000D6D50;
  v12 = xmmword_1000D6D60;
  v13[0] = 0;
  *&v13[8] = xmmword_1000D6CC0;
  v13[24] = 0;
  v14 = 0uLL;
  v15[0] = 1;
  *&v15[8] = xmmword_1000D6D70;
  *&v15[24] = 0;
  v16[0] = 0;
  *&v16[8] = xmmword_1000D6B90;
  *&v16[24] = xmmword_1000D6B90;
  *&v16[40] = 0xD000000000000010;
  *&v17 = 0x80000001000DCE60;
  *(&v17 + 1) = 0xD000000000000022;
  *v18 = 0x80000001000DCE80;
  *&v18[8] = xmmword_1000D6D80;
  *&v18[24] = 0;
  v19 = 0uLL;
  v20[0] = xmmword_1000D6D40;
  v20[1] = xmmword_1000D6D50;
  v20[2] = xmmword_1000D6D60;
  v21 = 0;
  v22 = xmmword_1000D6CC0;
  v23 = 0;
  v25 = 0;
  v24 = 0;
  v26 = 1;
  v27 = xmmword_1000D6D70;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_1000D6B90;
  v31 = xmmword_1000D6B90;
  v32 = 0xD000000000000010;
  v33 = 0x80000001000DCE60;
  v34 = 0xD000000000000022;
  v35 = 0x80000001000DCE80;
  v36 = xmmword_1000D6D80;
  v38 = 0;
  v37 = 0;
  v39 = 0;
  sub_10000A304(&v10, v9);
  sub_10000A360(v20);
  v2 = *&v18[16];
  *(a1 + 192) = *v18;
  *(a1 + 208) = v2;
  *(a1 + 224) = v19;
  v3 = *&v16[16];
  *(a1 + 128) = *v16;
  *(a1 + 144) = v3;
  v4 = v17;
  *(a1 + 160) = *&v16[32];
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = *&v13[16];
  *(a1 + 80) = v5;
  v6 = *&v15[16];
  *(a1 + 96) = *v15;
  *(a1 + 112) = v6;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = *v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C360@<Q0>(uint64_t a1@<X8>)
{
  v9[256] = 0;
  v9[248] = 0;

  v10 = xmmword_1000D6D40;
  v11 = xmmword_1000D6D50;
  v12 = xmmword_1000D6D60;
  v13[0] = 0;
  *&v13[8] = xmmword_1000D6CC0;
  v13[24] = 0;
  v14 = 0uLL;
  v15[0] = 1;
  *&v15[8] = xmmword_1000D6D70;
  *&v15[24] = 0;
  v16[0] = 0;
  *&v16[8] = xmmword_1000D6B90;
  *&v16[24] = xmmword_1000D6B90;
  *&v16[40] = 0xD000000000000010;
  *&v17 = 0x80000001000DCE40;
  *(&v17 + 1) = 0xD000000000000010;
  *v18 = 0x80000001000DCE40;
  *&v18[8] = xmmword_1000D6D80;
  *&v18[24] = 0;
  v19 = 0uLL;
  v20[0] = xmmword_1000D6D40;
  v20[1] = xmmword_1000D6D50;
  v20[2] = xmmword_1000D6D60;
  v21 = 0;
  v22 = xmmword_1000D6CC0;
  v23 = 0;
  v25 = 0;
  v24 = 0;
  v26 = 1;
  v27 = xmmword_1000D6D70;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_1000D6B90;
  v31 = xmmword_1000D6B90;
  v32 = 0xD000000000000010;
  v33 = 0x80000001000DCE40;
  v34 = 0xD000000000000010;
  v35 = 0x80000001000DCE40;
  v36 = xmmword_1000D6D80;
  v38 = 0;
  v37 = 0;
  v39 = 0;
  sub_10000A304(&v10, v9);
  sub_10000A360(v20);
  v2 = *&v18[16];
  *(a1 + 192) = *v18;
  *(a1 + 208) = v2;
  *(a1 + 224) = v19;
  v3 = *&v16[16];
  *(a1 + 128) = *v16;
  *(a1 + 144) = v3;
  v4 = v17;
  *(a1 + 160) = *&v16[32];
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = *&v13[16];
  *(a1 + 80) = v5;
  v6 = *&v15[16];
  *(a1 + 96) = *v15;
  *(a1 + 112) = v6;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = *v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C508@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v115 = 1;
  v113 = 1;
  v111 = 1;
  memset(v149, 0, 48);
  v149[48] = 1;
  v151 = 0;
  v150 = 0;
  v152 = 1;
  v154 = 0;
  v153 = 0;
  v155 = 1;
  v157 = 0;
  v156 = 0;
  v159 = 0;
  v158 = 0;
  v160 = xmmword_1000D6B90;
  v161 = xmmword_1000D6B90;
  v162 = 0x6E6F687064616568;
  v163 = 0xEA00000000007365;
  v164 = 0xD000000000000011;
  v165 = 0x80000001000DCE20;
  v168 = 0;
  v167 = 0u;
  v166 = 0u;
  sub_10000A360(v149);
  v3 = objc_opt_self();
  v4 = [v3 beatsSoloPro];
  v5 = [v4 productID];

  if (v5 == a1)
  {
    LOBYTE(v100) = 1;

    v116 = xmmword_1000D6F00;
    v117 = xmmword_1000D6F10;
    v118 = 0uLL;
    v119 = 1;
    v121 = 0uLL;
    v122 = 1;
    v124 = 0uLL;
    v125 = 1;
    v128 = 0;
    v127 = 0uLL;
    v129 = 0;
    v131 = xmmword_1000D6B90;
    v132 = xmmword_1000D6B90;
    v133 = 0xD000000000000010;
    v134 = 0x80000001000DCE40;
    v135 = 0xD000000000000011;
    v136 = 0x80000001000DCE20;
    v139 = 0;
    v138 = 0u;
    v137 = 0u;
    v140 = xmmword_1000D6F00;
    v141 = xmmword_1000D6F10;
    v142 = 0uLL;
    v143.n128_u8[0] = 1;
    *&v144 = 0;
    v143.n128_u64[1] = 0;
    BYTE8(v144) = 1;
    v145 = 0uLL;
    v146[0] = 1;
    memset(&v146[8], 0, 24);
    v147[0] = 0;
    *&v147[8] = xmmword_1000D6B90;
    *&v147[24] = xmmword_1000D6B90;
    *&v147[40] = 0xD000000000000010;
    *&v147[48] = 0x80000001000DCE40;
    *&v147[56] = 0xD000000000000011;
    *v148 = 0x80000001000DCE20;
    memset(&v148[8], 0, 40);
    sub_10000A304(&v116, &v100);
    sub_10000A360(&v140);
    v6 = v116;
    v7 = v117;
    v8 = v118;
    v9 = v119;
    v114[0] = *v120;
    *(v114 + 3) = *&v120[3];
    v10 = v121;
    v11 = v122;
    v112[0] = *v123;
    *(v112 + 3) = *&v123[3];
    v12 = v124;
    v13 = v125;
    *(v110 + 3) = *&v126[3];
    v110[0] = *v126;
    v14 = v127;
    v15 = v128;
    v16 = v129;
    *(v109 + 3) = *&v130[3];
    v109[0] = *v130;
    v17 = v131;
    v18 = v132;
    v19 = v133;
    v20 = v134;
    v21 = v135;
    v22 = v136;
    v23 = v137;
    v24 = v138;
    v25 = v139;
LABEL_12:
    v34 = a2;
    goto LABEL_13;
  }

  v26 = [v3 airPods];
  v27 = [v26 productID];

  if (v27 != a1)
  {
    v35 = [v3 airPodsSecondGeneration];
    v36 = [v35 productID];

    if (v36 == a1)
    {
      sub_10002B3C0(&v116);
LABEL_11:
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      v17 = v131;
      v18 = v132;
      v19 = v133;
      v20 = v134;
      v21 = v135;
      v22 = v136;
      v23 = v137;
      v24 = v138;
      v25 = v139;
      goto LABEL_12;
    }

    v37 = [v3 airPodsPro];
    v38 = [v37 productID];

    if (v38 == a1)
    {
LABEL_10:
      sub_10002BE04(&v116);
      goto LABEL_11;
    }

    v46 = [v3 beatsX];
    v47 = [v46 productID];

    if (v47 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v48 = xmmword_1000D6ED0;
      v49 = xmmword_1000D6EE0;
LABEL_17:
      v116 = v48;
      v117 = v49;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0x61652E7374616562;
      v134 = 0xEF73656E6F687072;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = v48;
      v141 = v49;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0x61652E7374616562;
      *&v147[48] = 0xEF73656E6F687072;
LABEL_27:
      *&v147[56] = 0xD000000000000011;
      *v148 = 0x80000001000DCE20;
      *&v148[8] = v50;
      *&v148[24] = v50;
LABEL_28:
      *&v148[40] = 0;
LABEL_29:
      sub_10000A304(&v116, &v100);
      sub_10000A360(&v140);
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      v17 = v131;
      v18 = v132;
      v19 = v133;
      v20 = v134;
      v21 = v135;
      v22 = v136;
      v23 = v137;
      v24 = v138;
      goto LABEL_6;
    }

    v51 = [v3 powerBeats3];
    v52 = [v51 productID];

    if (v52 == a1)
    {
      LOBYTE(v100) = 1;

      v53 = 0x80000001000DCF20;
      v116 = xmmword_1000D6EC0;
      v117 = xmmword_1000D6DF0;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000011;
      v134 = 0x80000001000DCF20;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = xmmword_1000D6EC0;
      v141 = xmmword_1000D6DF0;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000011;
LABEL_26:
      *&v147[48] = v53;
      goto LABEL_27;
    }

    v54 = [v3 beatsSolo];
    v55 = [v54 productID];

    if (v55 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6EA0;
      v57 = xmmword_1000D6EB0;
LABEL_24:
      v60 = "beats.headphones";
LABEL_25:
      v53 = (v60 - 32) | 0x8000000000000000;
      v116 = v56;
      v117 = v57;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000010;
      v134 = v53;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = v56;
      v141 = v57;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000010;
      goto LABEL_26;
    }

    v58 = [v3 beatsStudio];
    v59 = [v58 productID];

    if (v59 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6E80;
      v57 = xmmword_1000D6E90;
      goto LABEL_24;
    }

    v61 = [v3 powerBeatsPro];
    v62 = [v61 productID];

    if (v62 == a1)
    {

      v116 = xmmword_1000D6E40;
      v117 = xmmword_1000D6E50;
      v118 = xmmword_1000D6E60;
      v119 = 0;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v127 = xmmword_1000D6E70;
      v128 = 0;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000013;
      v134 = 0x80000001000DCED0;
      v135 = 0xD000000000000025;
      v136 = 0x80000001000DCEF0;
      __asm { FMOV            V4.2D, #11.0 }

      v137 = _Q4;
      v138 = 0uLL;
      v139 = 0;
      v140 = xmmword_1000D6E40;
      v141 = xmmword_1000D6E50;
      v142 = xmmword_1000D6E60;
      v143.n128_u8[0] = 0;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      *&v146[8] = xmmword_1000D6E70;
      *&v146[24] = 0;
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000013;
      *&v147[48] = 0x80000001000DCED0;
      *&v147[56] = 0xD000000000000025;
      *v148 = 0x80000001000DCEF0;
      *&v148[8] = _Q4;
      *&v148[32] = 0;
      *&v148[24] = 0;
      goto LABEL_28;
    }

    if (a1 == 8221)
    {
      sub_10002B6D0(&v116);
      goto LABEL_11;
    }

    v64 = [v3 powerBeats4];
    v65 = [v64 productID];

    if (v65 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6E20;
      v57 = xmmword_1000D6E30;
      v60 = "beats.powerbeats";
      goto LABEL_25;
    }

    v66 = [v3 airPodsMax];
    v67 = [v66 productID];

    if (v67 == a1 || (v68 = [v3 airPodsMax], v69 = objc_msgSend(v68, "altProductID"), v68, v69 == a1))
    {
      LOBYTE(v100) = 1;

      v116 = xmmword_1000D6E00;
      v117 = 0u;
      v118 = 0u;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v127 = 0uLL;
      v128 = 0x4059000000000000;
      v129 = 1;
      v131 = xmmword_1000D6E10;
      v132 = xmmword_1000D6E10;
      v133 = 0x6D73646F70726961;
      v134 = 0xEA00000000007861;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v138 = 0u;
      v137 = 0u;
      v141 = 0u;
      v142 = 0u;
      v140 = xmmword_1000D6E00;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      *&v146[16] = 0;
      *&v146[8] = 0;
      *&v146[24] = 0x4059000000000000;
      v147[0] = 1;
      *&v147[8] = xmmword_1000D6E10;
      *&v147[24] = xmmword_1000D6E10;
      strcpy(&v147[40], "airpodsmax");
      v147[51] = 0;
      *&v147[52] = -369098752;
      *&v147[56] = 0xD000000000000011;
      *v148 = 0x80000001000DCE20;
      memset(&v148[8], 0, 40);
      goto LABEL_29;
    }

    v70 = [v3 beatsFlex];
    v71 = [v70 productID];

    if (v71 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v48 = xmmword_1000D6DE0;
      v49 = xmmword_1000D6DF0;
      goto LABEL_17;
    }

    v72 = [v3 b688];
    v73 = [v72 productID];

    if (v73 == a1)
    {
      sub_10002B8A8(&v116);
      goto LABEL_11;
    }

    if (a1 > 8221)
    {
      if (a1 == 8222)
      {
        goto LABEL_49;
      }

      v74 = 8224;
    }

    else
    {
      if (a1 == 8217)
      {
        goto LABEL_49;
      }

      v74 = 8219;
    }

    if (a1 != v74)
    {
      v75 = [v3 b507];
      v76 = [v75 productID];

      if (v76 == a1)
      {

        v116 = xmmword_1000D6D40;
        v117 = xmmword_1000D6D50;
        v118 = xmmword_1000D6DD0;
        v119 = 0;
        v121 = 0uLL;
        v122 = 1;
        v124 = 0uLL;
        v125 = 1;
        v127 = xmmword_1000D6D70;
        v128 = 0;
        v129 = 0;
        v131 = xmmword_1000D6B90;
        v132 = xmmword_1000D6B90;
        v133 = 0xD000000000000010;
        v134 = 0x80000001000DCE60;
        v135 = 0xD000000000000022;
        v136 = 0x80000001000DCE80;
        v137 = xmmword_1000D6D80;
        v138 = 0uLL;
        v139 = 0;
        v140 = xmmword_1000D6D40;
        v141 = xmmword_1000D6D50;
        v142 = xmmword_1000D6DD0;
        v143.n128_u8[0] = 0;
        *&v144 = 0;
        v143.n128_u64[1] = 0;
        BYTE8(v144) = 1;
        v145 = 0uLL;
        v146[0] = 1;
        *&v146[8] = xmmword_1000D6D70;
        *&v146[24] = 0;
        v147[0] = 0;
        *&v147[8] = xmmword_1000D6B90;
        *&v147[24] = xmmword_1000D6B90;
        *&v147[40] = 0xD000000000000010;
        *&v147[48] = 0x80000001000DCE60;
        *&v147[56] = 0xD000000000000022;
        *v148 = 0x80000001000DCE80;
        *&v148[8] = xmmword_1000D6D80;
        *&v148[32] = 0;
        *&v148[24] = 0;
      }

      else
      {
        v77 = [v3 b494];
        v78 = [v77 productID];

        if (v78 == a1 || (v79 = [v3 b494b], v80 = objc_msgSend(v79, "productID"), v79, v80 == a1))
        {
          sub_10002BC40(&v116);
          goto LABEL_11;
        }

        v81 = [v3 b698];
        v82 = [v81 productID];

        if (v82 == a1)
        {
          goto LABEL_10;
        }

        v83 = [v3 b698];
        v84 = [v83 altProductID];

        if (v84 == a1)
        {
          goto LABEL_10;
        }

        v85 = [v3 b788];
        v86 = [v85 productID];

        if (v86 == a1 || (v87 = [v3 b788], v88 = objc_msgSend(v87, "altProductID"), v87, v88 == a1))
        {
          sub_10002BFCC(&v116);
          goto LABEL_11;
        }

        v89 = [v3 b607];
        v90 = [v89 productID];

        if (v90 == a1)
        {
          sub_10002C1A4(&v116);
          goto LABEL_11;
        }

        v91 = [v3 b453];
        v92 = [v91 productID];

        if (v92 != a1)
        {
          v93 = [v3 b465];
          v94 = [v93 productID];

          if (v94 != a1)
          {
            v95 = [v3 b463];
            v96 = [v95 productID];

            if (v96 == a1)
            {
              sub_10002C360(&v116);
              goto LABEL_11;
            }

            v97 = [v3 b487];
            v98 = [v97 productID];

            if (v98 != a1)
            {
              sub_10001309C(&v140);
              v34 = a2;
              goto LABEL_14;
            }
          }
        }

        LOBYTE(v100) = 1;

        v116 = xmmword_1000D6D90;
        v117 = xmmword_1000D6DA0;
        v118 = 0uLL;
        v119 = 1;
        v121 = 0uLL;
        v122 = 1;
        v124 = 0uLL;
        v125 = 1;
        v128 = 0;
        v127 = 0uLL;
        v129 = 0;
        v131 = xmmword_1000D6B90;
        v132 = xmmword_1000D6B90;
        v133 = 0xD000000000000010;
        v134 = 0x80000001000DCE40;
        v135 = 0xD000000000000011;
        v136 = 0x80000001000DCE20;
        v139 = 0;
        v138 = 0u;
        v137 = 0u;
        v140 = xmmword_1000D6D90;
        v141 = xmmword_1000D6DA0;
        v142 = 0uLL;
        v143.n128_u8[0] = 1;
        *&v144 = 0;
        v143.n128_u64[1] = 0;
        BYTE8(v144) = 1;
        v145 = 0uLL;
        v146[0] = 1;
        memset(&v146[8], 0, 24);
        v147[0] = 0;
        *&v147[8] = xmmword_1000D6B90;
        *&v147[24] = xmmword_1000D6B90;
        *&v147[40] = 0xD000000000000010;
        *&v147[48] = 0x80000001000DCE40;
        *&v147[56] = 0xD000000000000011;
        *v148 = 0x80000001000DCE20;
        memset(&v148[8], 0, 32);
      }

      *&v148[40] = 0;
      sub_10000A304(&v116, &v100);
      sub_10000A360(&v140);
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      goto LABEL_5;
    }

LABEL_49:
    sub_10002BA70(&v116);
    goto LABEL_11;
  }

  v116 = xmmword_1000D6B50;
  v117 = xmmword_1000D6B60;
  v118 = xmmword_1000D6B70;
  v119 = 0;
  v121 = 0uLL;
  v122 = 1;
  v124 = 0uLL;
  v125 = 1;
  v127 = xmmword_1000D6B80;
  v128 = 0;
  v129 = 0;
  v131 = xmmword_1000D6B90;
  v132 = xmmword_1000D6B90;
  v133 = 0x73646F70726961;
  v134 = 0xE700000000000000;
  v135 = 0xD000000000000019;
  v136 = 0x80000001000DCF40;
  __asm { FMOV            V4.2D, #24.0 }

  v137 = _Q4;
  __asm { FMOV            V5.2D, #25.0 }

  v138 = _Q5;
  v139 = 0;
  v140 = xmmword_1000D6B50;
  v141 = xmmword_1000D6B60;
  v142 = xmmword_1000D6B70;
  v143.n128_u8[0] = 0;
  *&v144 = 0;
  v143.n128_u64[1] = 0;
  BYTE8(v144) = 1;
  v145 = 0uLL;
  v146[0] = 1;
  *&v146[8] = xmmword_1000D6B80;
  *&v146[24] = 0;
  v147[0] = 0;
  *&v147[8] = xmmword_1000D6B90;
  *&v147[24] = xmmword_1000D6B90;
  strcpy(&v147[40], "airpods");
  *&v147[48] = 0xE700000000000000;
  *&v147[56] = 0xD000000000000019;
  *v148 = 0x80000001000DCF40;
  *&v148[8] = _Q4;
  *&v148[24] = _Q5;
  *&v148[40] = 0;
  sub_10000A304(&v116, &v100);
  sub_10000A360(&v140);
  v6 = v116;
  v7 = v117;
  v8 = v118;
  v9 = v119;
  v114[0] = *v120;
  *(v114 + 3) = *&v120[3];
  v10 = v121;
  v11 = v122;
  v112[0] = *v123;
  *(v112 + 3) = *&v123[3];
  v12 = v124;
  v13 = v125;
  *(v110 + 3) = *&v126[3];
  v110[0] = *v126;
  v14 = v127;
  v15 = v128;
  v16 = v129;
  v109[0] = *v130;
  *(v109 + 3) = *&v130[3];
LABEL_5:
  v17 = v131;
  v18 = v132;
  v19 = v133;
  v20 = v134;
  v21 = v135;
  v22 = v136;
  v23 = v137;
  v24 = v138;
LABEL_6:
  v25 = v139;
  v34 = a2;
LABEL_13:
  v100 = v6;
  v101 = v7;
  v102 = v8;
  v103[0] = v9;
  *&v103[1] = v114[0];
  *&v103[4] = *(v114 + 3);
  *&v103[8] = v10;
  v103[24] = v11;
  *&v103[25] = v112[0];
  *&v103[28] = *(v112 + 3);
  v104 = v12;
  v105[0] = v13;
  *&v105[4] = *(v110 + 3);
  *&v105[1] = v110[0];
  *&v105[8] = v14;
  *&v105[24] = v15;
  v106[0] = v16;
  *&v106[4] = *(v109 + 3);
  *&v106[1] = v109[0];
  *&v106[8] = v17;
  *&v106[24] = v18;
  *&v106[40] = v19;
  *&v107 = v20;
  *(&v107 + 1) = v21;
  *v108 = v22;
  *&v108[8] = v23;
  *&v108[24] = v24;
  *&v108[40] = v25;
  nullsub_1(&v100);
  *v148 = *v108;
  *&v148[16] = *&v108[16];
  *&v148[32] = *&v108[32];
  *v147 = *v106;
  *&v147[16] = *&v106[16];
  *&v147[32] = *&v106[32];
  *&v147[48] = v107;
  v144 = *&v103[16];
  v145 = v104;
  *v146 = *v105;
  *&v146[16] = *&v105[16];
  v140 = v100;
  v141 = v101;
  v142 = v102;
  v143 = *v103;
LABEL_14:
  v39 = *&v148[16];
  *(v34 + 192) = *v148;
  *(v34 + 208) = v39;
  *(v34 + 224) = *&v148[32];
  v40 = *&v147[16];
  *(v34 + 128) = *v147;
  *(v34 + 144) = v40;
  v41 = *&v147[48];
  *(v34 + 160) = *&v147[32];
  *(v34 + 176) = v41;
  v42 = v145;
  *(v34 + 64) = v144;
  *(v34 + 80) = v42;
  v43 = *&v146[16];
  *(v34 + 96) = *v146;
  *(v34 + 112) = v43;
  v44 = v141;
  *v34 = v140;
  *(v34 + 16) = v44;
  result = v143;
  *(v34 + 32) = v142;
  *(v34 + 48) = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for HeadphoneLayoutMetrics.Mismatch(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneBatteryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneBatteryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002DD10()
{
  result = qword_10011D5E8;
  if (!qword_10011D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D5E8);
  }

  return result;
}

void sub_10002DD64(uint64_t a1)
{
  sub_100053298(a1);
  if (*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction])
  {

    [v1 removeAction:?];
  }
}

uint64_t type metadata accessor for USBHeadphoneConnectingViewController()
{
  result = qword_10011D618;
  if (!qword_10011D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002DE88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_10002DF0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002DE88;
  v6[3] = &unk_100104658;
  v4 = _Block_copy(v6);

  [v3 setAccessoryAttached:v4];
  _Block_release(v4);
  return [v3 start];
}

id sub_10002DFD4()
{
  v1 = *v0;
  [*v0 setAccessoryAttached:0];

  return [v1 stop];
}

uint64_t sub_10002E024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E03C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D628);
  v1 = sub_10000A570(v0, qword_10011D628);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002E104()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v60 - v4;
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v60 - v12;
  v64.receiver = v0;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    sub_10000E88C(v15 + 16, v62, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v16 = v63;
    if (v63)
    {
      v17 = sub_10000E7E4(v62, v63);
      v60[1] = v60;
      v61 = v13;
      v18 = *(v16 - 8);
      v19 = *(v18 + 64);
      __chkstk_darwin(v17);
      v21 = (v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v21);
      sub_10000E950(v62, &qword_10011FBC0, &unk_1000D5EF0);
      v22 = *v21;
      v23 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v22 + v23, v11);
      (*(v18 + 8))(v21, v16);
      v13 = v61;
      sub_10000E828(v11, v5);
      (*(v7 + 56))(v5, 0, 1, v6);
      goto LABEL_6;
    }

    sub_10000E950(v62, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v24 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v0[v24], v5, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000E950(v5, &qword_10011EBD0, &unk_1000D5EE0);
    if (qword_10011C618 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A570(v25, qword_10011D628);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Pause Media: Headphone Model is nil, exiting", v28, 2u);
    }
  }

  else
  {
    sub_10000E828(v5, v13);
    v29 = [objc_opt_self() configurationWithPointSize:4 weight:56.0];
    v30 = String._bridgeToObjectiveC()();
    v31 = [objc_opt_self() _systemImageNamed:v30 withConfiguration:v29];

    if (v31)
    {

      v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];
      v33 = v32;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v34 = [v0 contentView];
      [v34 addSubview:v33];

      v35 = [v0 contentView];
      v36 = [v35 mainContentGuide];

      v37 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000D6000;
      v39 = [v33 topAnchor];
      v40 = [v36 topAnchor];
      v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];

      *(v38 + 32) = v41;
      v42 = [v33 bottomAnchor];
      v43 = [v36 bottomAnchor];
      v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

      *(v38 + 40) = v44;
      v45 = [v33 centerYAnchor];
      v46 = [v36 centerYAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v38 + 48) = v47;
      v48 = [v33 centerXAnchor];

      v49 = [v36 centerXAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];

      *(v38 + 56) = v50;
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 activateConstraints:isa];

      v52 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneProxFeatureManager];
      v53 = *(v13 + 18);
      v54 = *(v13 + 19);
      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v55 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v56 = *(v55 - 8);
      v57 = *(v56 + 72);
      v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1000D5250;
      (*(v56 + 104))(v59 + v58, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v55);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      sub_10000E8F4(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10002EA58(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_10002F6E4;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100104738;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_10002F72C;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100104760;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_10002ED10()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C618;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011D628);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Requested Turn On for Pause Media on Sleep", v7, 2u);
    }

    sub_10000E88C(v3 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor, v14, &qword_10011FBC0, &unk_1000D5EF0);
    if (v15)
    {
      v8 = sub_10000E7E4(v14, v15);
      v9 = *(*v8 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
      v10 = *v8 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v12 = *(v10 + 144);
      v11 = *(v10 + 152);

      v13.value._countAndFlagsBits = v12;
      v13.value._object = v11;
      HeadphoneProxFeatureManager.setPauseMediaOnSleepConfig(deviceAddress:enabled:)(v13, 1);

      sub_10000EA94(v14);
    }

    else
    {
      sub_10000E950(v14, &qword_10011FBC0, &unk_1000D5EF0);
    }

    sub_1000AA094(0, 0);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8CF0();

    swift_unknownObjectRelease();
  }
}

void sub_10002EF24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10002EF80()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C618;
    v7 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011D628);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requested Not Now for Pause Media on Sleep", v6, 2u);
    }

    sub_1000AA094(0, 1);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8FF0();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v5 = v4[11];
  v6 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = v4[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v4[13]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (a2 + v4[14]);
  sub_10001309C(v28);
  v10 = v28[13];
  v9[12] = v28[12];
  v9[13] = v10;
  v9[14] = v28[14];
  v11 = v28[9];
  v9[8] = v28[8];
  v9[9] = v11;
  v12 = v28[11];
  v9[10] = v28[10];
  v9[11] = v12;
  v13 = v28[5];
  v9[4] = v28[4];
  v9[5] = v13;
  v14 = v28[7];
  v9[6] = v28[6];
  v9[7] = v14;
  v15 = v28[1];
  *v9 = v28[0];
  v9[1] = v15;
  v16 = v28[3];
  v9[2] = v28[2];
  v9[3] = v16;
  *(a2 + v4[15]) = 0;
  *(a2 + v4[16]) = 0;
  *(a2 + v4[17]) = _swiftEmptyArrayStorage;
  *(a2 + v4[18]) = _swiftEmptyArrayStorage;
  v17 = (a2 + v4[19]);
  v17[5] = 0u;
  v17[6] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = (a2 + v4[20]);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v4[21]) = 0;
  *(a2 + v4[22]) = 0;
  *(a2 + v4[23]) = 0;
  *(a2 + v4[24]) = 0;
  *a2 = sub_100033A5C(110);
  *(a2 + 8) = v19;
  *(a2 + 16) = sub_100033A5C(111);
  *(a2 + 24) = v20;
  v21 = type metadata accessor for HeadphoneModel(0);
  if (sub_10001E474(*(a1 + *(v21 + 136))))
  {
    v22 = sub_100033A5C(112);
    v24 = v23;

    *(a2 + 16) = v22;
    *(a2 + 24) = v24;
  }

  *(a2 + 32) = sub_100033A5C(113);
  *(a2 + 40) = v25;
  result = sub_100033A5C(114);
  *(a2 + 48) = result;
  *(a2 + 56) = v27;
  return result;
}

uint64_t type metadata accessor for HeadphonePauseMediaOnSleepViewController()
{
  result = qword_10011D688;
  if (!qword_10011D688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F4B0()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10002F57C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v8.value._countAndFlagsBits = a2;
  v8.value._object = a3;
  LOBYTE(a3) = HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(v8);

  sub_10000E390(a4, a1);
  return a3 & 1;
}

uint64_t sub_10002F5F4(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController) = a1;
  return _objc_release_x1();
}

uint64_t sub_10002F60C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneModel;
  swift_beginAccess();
  sub_100013144(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_10002F6AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002F764()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 contentView];
  [v5 addSubview:v4];

  v6 = [v1 contentView];
  v7 = [v6 mainContentGuide];

  [v4 frame];
  Height = CGRectGetHeight(v26);
  [v4 frame];
  Width = CGRectGetWidth(v27);
  v10 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5240;
  v12 = [v7 heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant:Height];

  *(v11 + 32) = v13;
  v14 = [v4 heightAnchor];
  v15 = [v14 constraintEqualToConstant:Height];

  *(v11 + 40) = v15;
  v16 = [v4 widthAnchor];
  v17 = [v16 constraintEqualToConstant:Width];

  *(v11 + 48) = v17;
  v18 = [v4 centerXAnchor];
  v19 = [v7 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 56) = v20;
  v21 = [v4 centerYAnchor];

  v22 = [v7 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 64) = v23;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];
}

void sub_10002FB40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v16[4] = sub_1000302D0;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000C034;
  v16[3] = &unk_1001047F0;
  v13 = _Block_copy(v16);
  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v15 = [v1 addAction:v14];
}

void sub_10002FCE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000BB0EC();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10002FD54(int a1@<W0>, uint64_t a2@<X8>)
{
  HIDWORD(v41) = a1;
  v3 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for String.LocalizationValue.StringInterpolation() - 8) + 64);
  __chkstk_darwin();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = v7[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v11 = (a2 + v7[13]);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = (a2 + v7[14]);
  sub_10001309C(v43);
  v13 = v43[13];
  v12[12] = v43[12];
  v12[13] = v13;
  v12[14] = v43[14];
  v14 = v43[9];
  v12[8] = v43[8];
  v12[9] = v14;
  v15 = v43[11];
  v12[10] = v43[10];
  v12[11] = v15;
  v16 = v43[5];
  v12[4] = v43[4];
  v12[5] = v16;
  v17 = v43[7];
  v12[6] = v43[6];
  v12[7] = v17;
  v18 = v43[1];
  *v12 = v43[0];
  v12[1] = v18;
  v19 = v43[3];
  v12[2] = v43[2];
  v12[3] = v19;
  *(a2 + v7[15]) = 0;
  *(a2 + v7[16]) = 0;
  *(a2 + v7[17]) = &_swiftEmptyArrayStorage;
  *(a2 + v7[18]) = &_swiftEmptyArrayStorage;
  v20 = (a2 + v7[19]);
  v20[5] = 0u;
  v20[6] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  *v20 = 0u;
  v21 = (a2 + v7[20]);
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v7[21]) = 0;
  *(a2 + v7[22]) = 0;
  *(a2 + v7[23]) = 0;
  *(a2 + v7[24]) = 0;
  v22 = objc_opt_self();
  v23 = [v22 mainBundle];
  v44._object = 0xE000000000000000;
  v24._object = 0x80000001000DD190;
  v24._countAndFlagsBits = 0xD000000000000013;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v44);

  *a2 = v27;
  v28 = sub_10001E474(SHIDWORD(v41));
  if (v28)
  {
    v29 = 0x7374616542;
  }

  else
  {
    v29 = 0x2073646F50726941;
  }

  if (v28)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xEB000000006F7250;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD000000000000017;
  v31._object = 0x80000001000DD1B0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v32);

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
  String.LocalizationValue.init(stringInterpolation:)();
  v34 = [v22 mainBundle];
  static Locale.current.getter();
  *(a2 + 16) = String.init(localized:table:bundle:locale:comment:)();
  *(a2 + 24) = v35;
  v36 = [v22 mainBundle];
  v45._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD00000000000001CLL;
  v37._object = 0x80000001000DD1D0;
  v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v38.value._object = 0xEB00000000656C62;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v45);

  *(a2 + 32) = v40;
}

uint64_t sub_100030298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000302D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000302F0(char *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v56 = a1;
  v55 = type metadata accessor for URL();
  v20 = *(v55 - 8);
  v21 = v20[8];
  __chkstk_darwin(v55);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_player;
  *&v10[v24] = [objc_allocWithZone(AVPlayer) initWithPlayerItem:0];
  v25 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  v26 = [objc_opt_self() playerLayerWithPlayer:0];
  [v26 setOpacity:0.0];
  *&v10[v25] = v26;
  v27 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer;
  v28 = [objc_allocWithZone(AVQueuePlayer) init];
  [v28 setMuted:1];
  [v28 setAllowsExternalPlayback:0];
  *&v10[v27] = v28;
  v29 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_url;
  v30 = v20[2];
  v31 = a1;
  v32 = v55;
  v30(&v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_url], v31, v55);
  v33 = &v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds];
  *v33 = a6;
  v33[1] = a7;
  v33[2] = a8;
  v33[3] = a9;
  v34 = *&v10[v25];
  [v34 setPlayer:v28];

  v35 = *&v10[v27];
  v30(v23, &v10[v29], v32);
  v36 = objc_allocWithZone(AVPlayerItem);
  v37 = v35;
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v41 = [v36 initWithURL:v39];

  v42 = v20[1];
  v42(v23, v32);
  v43 = [objc_opt_self() playerLooperWithPlayer:v37 templateItem:v41];

  *&v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLooper] = v43;
  v44 = type metadata accessor for ProxMovieLoopPlayer();
  v63.receiver = v10;
  v63.super_class = v44;
  v45 = objc_msgSendSuper2(&v63, "initWithFrame:", a2, a3, a4, a5);
  v46 = *&v45[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer];
  epoch = kCMTimeZero.epoch;
  v48 = v45;
  aBlock = kCMTimeZero.value;
  v58 = *&kCMTimeZero.timescale;
  v59 = epoch;
  [v46 seekToTime:&aBlock];
  v49 = [v48 layer];
  [v49 addSublayer:*&v48[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer]];

  v50 = objc_opt_self();
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  v61 = sub_100030BD8;
  v62 = v51;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100019340;
  v60 = &unk_100104840;
  v52 = _Block_copy(&aBlock);
  v53 = v48;

  [v50 animateWithDuration:v52 animations:0.15];
  _Block_release(v52);
  sub_100030C10();

  v42(v56, v32);
  return v53;
}

id sub_10003078C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProxMovieLoopPlayer();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  [*&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer] setBounds:{*&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 8], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 16], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 24]}];
  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v0 layer];
  [v3 setCornerRadius:0.0];

  v4 = *&v0[v1];
  v5 = [v0 layer];
  [v5 bounds];

  v6 = [v0 layer];
  [v6 bounds];

  nullsub_1(v7);
  [v4 setPosition:?];

  return [*&v0[v1] setVideoGravity:AVLayerVideoGravityResizeAspectFill];
}

id sub_1000309B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxMovieLoopPlayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProxMovieLoopPlayer()
{
  result = qword_10011D728;
  if (!qword_10011D728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030AF0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100030BA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100030C10()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v15 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryAmbient mode:AVAudioSessionModeDefault options:1 error:&v15];

  v3 = v15;
  if (v2 && (v4 = v15, v5 = [v0 sharedInstance], v15 = 0, v6 = objc_msgSend(v5, "setActive:withOptions:error:", 1, 0, &v15), v5, v3 = v15, v6))
  {

    v7 = v3;
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_100123040);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to set audio session category: %@", v12, 0xCu);
      sub_100030EA8(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100030EA8(uint64_t a1)
{
  v2 = sub_100008438(&unk_10011D820, &qword_1000D7280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100030F10()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_player;
  *(v0 + v1) = [objc_allocWithZone(AVPlayer) initWithPlayerItem:0];
  v2 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  v3 = [objc_opt_self() playerLayerWithPlayer:0];
  [v3 setOpacity:0.0];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer;
  v5 = [objc_allocWithZone(AVQueuePlayer) init];
  [v5 setMuted:1];
  [v5 setAllowsExternalPlayback:0];

  *(v0 + v4) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100031038()
{
  result = qword_10011D738;
  if (!qword_10011D738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D738);
  }

  return result;
}

uint64_t sub_100031084()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D740);
  v1 = sub_10000A570(v0, qword_10011D740);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100031174(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_1000311C0()
{
  v0 = type metadata accessor for BatteryIconStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  *v7 = 1120403456;
  *(v7 + 2) = 1;
  v8 = enum case for BatteryIconStyle.BatteryChargeType.DEOC(_:);
  v9 = type metadata accessor for BatteryIconStyle.BatteryChargeType();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  (*(v1 + 104))(v7, enum case for BatteryIconStyle.charging(_:), v0);
  (*(v1 + 16))(v5, v7, v0);
  v10 = objc_allocWithZone(type metadata accessor for ModernBatteryIcon());
  v11 = ModernBatteryIcon.init(_:darkMode:)();
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  result = (*(v1 + 8))(v7, v0);
  qword_10011D758 = v11;
  return result;
}

uint64_t sub_100031388()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011D7B0, &qword_1000D72F0);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  __chkstk_darwin(v2);
  v48 = &v46 - v4;
  v5 = sub_100008438(&qword_10011D7B8, &qword_1000D72F8);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v51 = &v46 - v7;
  [v0 setModalInPresentation:1];
  v8 = [objc_opt_self() boldButton];
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v56._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x80000001000DD4E0;
  v12.value._object = 0x80000001000DBB60;
  v12.value._countAndFlagsBits = 0xD000000000000010;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v56);

  v14 = String._bridgeToObjectiveC()();

  [v8 setTitle:v14 forState:0];

  sub_1000084D4(0, &qword_10011D7C0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v8 addAction:v15 forControlEvents:64];

  v16 = [v1 buttonTray];
  v47 = v8;
  [v16 addButton:v8];

  type metadata accessor for HeadphoneProxFeatureManager();
  v17 = static HeadphoneProxFeatureManager.shared.getter();
  v18 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_btAddress];
  v19 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_btAddress + 8];
  v20 = String.uppercased()();
  v21 = [objc_opt_self() linkButton];
  v22 = [v9 mainBundle];
  v57._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000025;
  v23._object = 0x80000001000DD500;
  v24.value._object = 0x80000001000DBB60;
  v24.value._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v57);

  v26 = String._bridgeToObjectiveC()();

  [v21 setTitle:v26 forState:0];

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v20;

  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v21 addAction:v29 forControlEvents:64];

  v54 = v17;
  if (*(dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter() + 16))
  {
    sub_1000CD118(v20._countAndFlagsBits, v20._object);
    v31 = v30;

    if (v31)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v32 = HeadphoneProxFeatureManager.syncFetchAudioAADevice(_:)();
  if (v32)
  {

LABEL_7:
    v33 = [v1 buttonTray];
    [v33 addButton:v21];
  }

  type metadata accessor for Headphone_Manager();
  v34 = static Headphone_Manager.shared.getter();
  v35 = v48;
  dispatch thunk of Headphone_Manager.$connectedHeadphones.getter();

  v36 = v50;
  v37 = Published.Publisher.didSet.getter();
  (*(v49 + 8))(v35, v36);
  v55 = v37;
  sub_100008438(&qword_10011D7C8, &qword_1000D7300);
  sub_10001C3D8(&qword_10011D7D0, &qword_10011D7C8, &qword_1000D7300);
  sub_100032CF8();
  v38 = v51;
  Publisher<>.removeDuplicates()();

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v20;
  v41 = v47;
  *(v40 + 40) = v47;
  *(v40 + 48) = v21;
  sub_10001C3D8(&unk_10011D7F0, &qword_10011D7B8, &qword_1000D72F8);
  v42 = v41;
  v43 = v21;
  v44 = v53;
  Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v38, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_100031AC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter);
    v2 = Strong;
    swift_unknownObjectRetain();

    if (v1)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_100047C68();
        swift_unknownObjectRelease();
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter);
    v6 = v4;
    swift_unknownObjectRetain();

    if (v5)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (v8)
        {
          sub_1000A0430();
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_100031BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v17._object = 0x80000001000DD530;
    v17._countAndFlagsBits = 0xD000000000000066;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a3;
    v18._object = a4;
    String.append(_:)(v18);
    URL.init(string:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_10000E950(v9, &qword_10011CF08, &unk_1000D7310);
      if (qword_10011C620 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000A570(v19, qword_10011D740);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "obcUpSell: deep link failed!", v22, 2u);
      }

      goto LABEL_12;
    }

    (*(v11 + 32))(v14, v9, v10);
    sub_100008438(&qword_10011D810, &unk_1000D7D20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D66A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v24;
    *(inited + 48) = 1;
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v25;
    *(inited + 72) = 1;
    v26 = sub_1000A3764(inited);
    swift_setDeallocating();
    sub_100008438(&qword_10011D818, qword_1000D7320);
    swift_arrayDestroy();
    v27 = [objc_opt_self() defaultWorkspace];
    if (!v27)
    {
      (*(v11 + 8))(v14, v10);

      goto LABEL_12;
    }

    v29 = v27;
    URL._bridgeToObjectiveC()(v28);
    v31 = v30;
    sub_100047958(v26);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v44[0] = 0;
    v33 = [v29 openSensitiveURL:v31 withOptions:isa error:v44];

    if (v33)
    {
      v34 = *(v11 + 8);
      v35 = v44[0];
      v34(v14, v10);
LABEL_12:

      return;
    }

    v36 = v44[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C620 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A570(v37, qword_10011D740);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = _convertErrorToNSError(_:)();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "HeadphoneOptimizedBatteryCharingViewController: Failed to open URL with LaunchServices: %@", v40, 0xCu);
      sub_10000E950(v41, &unk_10011D820, &qword_1000D7280);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
  }
}

void sub_1000321C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for Headphone_Manager();
    v10 = static Headphone_Manager.shared.getter();
    v36 = sub_100008480();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v12;
    v14 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

    if (*(v14 + 16))
    {
      sub_1000CD118(v11, v13);
      v16 = v15;
    }

    else
    {

      v16 = 0;
    }

    v17 = v9;
    v18 = [v17 buttonTray:&type metadata for String];
    v19 = [v18 allButtons];

    sub_1000084D4(0, &unk_10011D800, OBTrayButton_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      if (v21 != 1)
      {

        if (v21 == 2)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v23 = v17;
LABEL_29:

LABEL_30:
        return;
      }

      if (v21 != 2)
      {

LABEL_25:
        if (qword_10011C620 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000A570(v33, qword_10011D740);
        v23 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v23, v34, "Should never reach here!", v35, 2u);
        }

        goto LABEL_29;
      }
    }

    if (qword_10011C620 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011D740);
    v23 = v17;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v37 = a6;
      v26 = swift_slowAlloc();
      *v26 = 67109376;
      *(v26 + 4) = v16 & 1;
      *(v26 + 8) = 2048;
      v27 = [v23 buttonTray];
      v28 = [v27 allButtons];

      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (v29 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v37;

      *(v26 + 10) = v30;

      _os_log_impl(&_mh_execute_header, v24, v25, "HeadphoneOptimizedBatteryCharingViewController connection changed, connected:%{BOOL}d buttons: %ld", v26, 0x12u);
    }

    else
    {

      v24 = v23;
    }

    v31 = [v23 buttonTray];
    [v31 removeAllButtons];

    v32 = [v23 buttonTray];
    [v32 addButton:a5];

    if (v16)
    {
      v17 = [v23 buttonTray];

      [v17 addButton:a6];
    }

    else
    {
      v17 = v23;
    }

    goto LABEL_29;
  }
}

id sub_100032740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneOptimizedBatteryCharingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100032818()
{
  if (qword_10011C628 != -1)
  {
    swift_once();
  }

  v1 = qword_10011D758;

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:{0.0, 0.0, 60.0, 60.0}];
}

uint64_t sub_100032C2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100032C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032C6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032CAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100032CF8()
{
  result = qword_10011D7D8;
  if (!qword_10011D7D8)
  {
    sub_10000A408(&qword_10011D7E0, &qword_1000D7308);
    sub_100032D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7D8);
  }

  return result;
}

unint64_t sub_100032D7C()
{
  result = qword_10011D7E8;
  if (!qword_10011D7E8)
  {
    type metadata accessor for HeadphoneDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7E8);
  }

  return result;
}

uint64_t sub_100032DD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032E34()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D830);
  v1 = sub_10000A570(v0, qword_10011D830);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100032EFC(uint64_t *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v44 - v8;
  __chkstk_darwin(v7);
  v11 = v44 - v10;
  sub_1000B34D8(a1);
  v12 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction;
  if (*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction])
  {
    [v1 removeAction:?];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1000145EC(v14 + 16, aBlock);
    swift_unknownObjectRelease();
    v15 = v48;
    if (v48)
    {
      v16 = sub_10000E7E4(aBlock, v48);
      v44[1] = v44;
      v17 = *(v15 - 1);
      v46 = v12;
      v18 = v17;
      v19 = *(v17 + 64);
      __chkstk_darwin(v16);
      v45 = v4;
      v21 = (v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v21);
      sub_10001465C(aBlock);
      v44[0] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v11;
      v23 = *v21;
      v24 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v23 + v24, v9);
      (*(v18 + 8))(v21, v15);
      sub_10000E828(v9, v22);
      v25 = a1[6];
      v26 = a1[7];
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = v22;
      v29 = v22;
      v30 = v44[0];
      sub_10000E390(v28, v44[0]);
      v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v32 = (v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_10000E828(v30, v33 + v31);
      *(v33 + v32) = v27;

      v34 = String._bridgeToObjectiveC()();
      v49 = sub_1000338B0;
      v50 = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C034;
      v48 = &unk_1001049C0;
      v35 = _Block_copy(aBlock);
      v36 = [objc_opt_self() actionWithTitle:v34 style:1 handler:v35];

      _Block_release(v35);

      v37 = *&v1[v46];
      *&v1[v46] = v36;
      v38 = v36;

      v39 = [v1 addAction:v38];
      sub_10000E8F4(v29);
      return;
    }

    sub_10001465C(aBlock);
  }

  if (qword_10011C630 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000A570(v40, qword_10011D830);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "HeadphoneNotYoursViewController: Headphone Model is nil, exiting", v43, 2u);
  }
}

void sub_1000333D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  if (*(a2 + *(v3 + 136)) == 8223 && *(a2 + *(v3 + 188)) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_unknownObjectWeakLoadStrong();

      if (v6)
      {
        sub_1000B626C();
LABEL_9:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        sub_1000B90EC(0);
        goto LABEL_9;
      }
    }
  }
}

uint64_t type metadata accessor for USBHeadphoneNotYoursViewController()
{
  result = qword_10011D870;
  if (!qword_10011D870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000335A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335D8()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {

    v6 = *(v5 + 24);

    v7 = *(v5 + 56);

    v8 = *(v5 + 72);

    v9 = *(v5 + 96);

    v10 = *(v5 + 104);
  }

  if (*(v5 + 112))
  {

    v11 = *(v5 + 120);
  }

  v12 = *(v5 + 128);

  v13 = *(v5 + 152);

  v14 = v1[12];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v5 + v1[15] + 8);

  v19 = (v5 + v1[16]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100022640(*v19, v20);
  }

  v21 = *(v5 + v1[19] + 8);

  v22 = *(v5 + v1[20] + 8);

  v23 = *(v5 + v1[37]);

  v24 = v1[38];
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  v27 = v5 + v1[45];
  v28 = *(v27 + 8);
  if (v28 != 255)
  {
    sub_10001C2AC(*v27, v28 & 1);
  }

  v29 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v30 = *(v5 + v1[49]);

  v31 = *(v0 + v29);

  return _swift_deallocObject(v0, v29 + 8, v2 | 7);
}

void sub_1000338B0(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000333D4(a1, v1 + v4);
}

uint64_t sub_10003394C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100033964()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123040);
  sub_10000A570(v0, qword_100123040);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000339E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123058);
  sub_10000A570(v0, qword_100123058);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100035388(char a1)
{
  result = 0x45554E49544E4F43;
  switch(a1)
  {
    case 1:
      result = 0x574F4E5F544F4ELL;
      break;
    case 2:
      result = 1162760004;
      break;
    case 3:
      result = 1346980691;
      break;
    case 4:
      result = 0x4C5F50555F544553;
      break;
    case 5:
      result = 0x494147415F595254;
      break;
    case 6:
      result = 0x5455425F444C4F48;
      break;
    case 7:
      result = 0x455341435F504154;
      break;
    case 8:
      result = 0x5443454E4E4F43;
      break;
    case 9:
    case 10:
    case 32:
    case 48:
    case 57:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x53444F50524941;
      break;
    case 13:
    case 34:
    case 44:
    case 90:
    case 113:
    case 114:
    case 119:
    case 122:
    case -122:
    case -78:
      result = 0xD00000000000001CLL;
      break;
    case 14:
    case 123:
    case -125:
    case -102:
    case -87:
      result = 0xD00000000000001FLL;
      break;
    case 15:
    case 79:
    case -91:
      result = 0xD00000000000002DLL;
      break;
    case 16:
    case 19:
    case 59:
    case -117:
    case -100:
    case -80:
      result = 0xD000000000000021;
      break;
    case 17:
    case 105:
    case -124:
    case -94:
    case -86:
      result = 0xD000000000000024;
      break;
    case 18:
    case 109:
    case -96:
    case -93:
    case -81:
      result = 0xD000000000000027;
      break;
    case 20:
    case 46:
    case 81:
      result = 0xD000000000000030;
      break;
    case 21:
      result = 0x45434E554F4E4E41;
      break;
    case 22:
    case 26:
    case 93:
    case 96:
    case 121:
      result = 0xD000000000000016;
      break;
    case 23:
    case 120:
    case -111:
    case -79:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x4E5255545F43424FLL;
      break;
    case 25:
      result = 0x4542414C5F43424FLL;
      break;
    case 27:
    case 71:
    case 92:
    case 97:
    case 118:
    case -123:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0x5249415F5446454CLL;
      break;
    case 29:
      result = 0x49415F5448474952;
      break;
    case 30:
      result = 0x474E494752414843;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x43415F4F49445541;
      break;
    case 35:
      result = 0x55415F4552414853;
      break;
    case 36:
      result = 0x524148535F574F4ELL;
      break;
    case 37:
    case -112:
      result = 0xD000000000000014;
      break;
    case 38:
      result = 0x454E4E4F43534944;
      break;
    case 39:
      result = 0x454E4E4F43534944;
      break;
    case 40:
      result = 0x495443454E4E4F43;
      break;
    case 41:
    case 124:
    case -118:
    case -84:
      result = 0xD00000000000001DLL;
      break;
    case 42:
    case 94:
    case 95:
    case 125:
    case -113:
      result = 0xD000000000000015;
      break;
    case 43:
    case 54:
    case 116:
    case -101:
      result = 0xD00000000000001ELL;
      break;
    case 45:
    case 55:
    case -89:
      result = 0xD000000000000022;
      break;
    case 47:
    case -109:
    case -104:
    case -82:
      result = 0xD000000000000029;
      break;
    case 49:
      result = 0xD00000000000001BLL;
      break;
    case 50:
    case 99:
    case 127:
    case -127:
    case -90:
      result = 0xD000000000000018;
      break;
    case 51:
    case 69:
    case 88:
    case 98:
    case 126:
      result = 0xD000000000000017;
      break;
    case 52:
    case 70:
    case 110:
    case -128:
    case -119:
    case -114:
    case -103:
    case -85:
      result = 0xD00000000000001ALL;
      break;
    case 53:
      result = 0xD00000000000001BLL;
      break;
    case 56:
      result = 0x4C4C41435F444E45;
      break;
    case 58:
    case 72:
    case -121:
    case -108:
    case -99:
    case -88:
      result = 0xD000000000000020;
      break;
    case 60:
    case 68:
      result = 0x4C41435F4554554DLL;
      break;
    case 61:
    case 67:
    case 89:
      result = 0xD000000000000012;
      break;
    case 62:
      result = 0xD00000000000001BLL;
      break;
    case 63:
      result = 0xD00000000000001BLL;
      break;
    case 64:
      result = 0xD00000000000001BLL;
      break;
    case 65:
      result = 0xD00000000000001BLL;
      break;
    case 66:
      result = 0xD00000000000001BLL;
      break;
    case 73:
    case 74:
    case 112:
    case 117:
    case -98:
      result = 0xD000000000000023;
      break;
    case 75:
    case -116:
    case -110:
    case -105:
    case -83:
      result = 0xD000000000000026;
      break;
    case 76:
    case 101:
      result = 0xD00000000000002ELL;
      break;
    case 77:
      result = 0xD000000000000031;
      break;
    case 78:
    case -107:
    case -95:
      result = 0xD00000000000002ALL;
      break;
    case 80:
      result = 0xD00000000000002CLL;
      break;
    case 82:
    case 84:
    case 100:
      result = 0xD000000000000033;
      break;
    case 83:
      result = 0xD000000000000032;
      break;
    case 85:
      result = 0xD000000000000036;
      break;
    case 86:
      result = 0xD00000000000003ELL;
      break;
    case 87:
      result = 0xD000000000000035;
      break;
    case 91:
      result = 0xD00000000000001BLL;
      break;
    case 102:
    case 106:
    case 111:
    case -120:
      result = 0xD000000000000025;
      break;
    case 103:
    case 104:
    case 107:
    case 108:
    case -106:
    case -97:
      result = 0xD000000000000028;
      break;
    case 115:
      result = 0xD00000000000001BLL;
      break;
    case -126:
      result = 0xD00000000000001BLL;
      break;
    case -115:
      result = 0xD00000000000001BLL;
      break;
    case -92:
      result = 0xD00000000000003BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000364D8(uint64_t a1, char a2)
{
  v4 = sub_100035388(a2);
  v5 = v3;
  if (v4 == 0xD000000000000013 && 0x80000001000DECA0 == v3)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
LABEL_9:
      v19 = [objc_opt_self() mainBundle];
      v27._object = 0xE000000000000000;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._countAndFlagsBits = v4;
      v21._object = v5;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v27._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v27);

      countAndFlagsBits = String.init(format:arguments:)();

      return countAndFlagsBits;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  sub_10000E9C8(a1 + 32, &v24);
  sub_100008438(&unk_10011D880, &qword_1000D7378);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v24 = 0xD000000000000010;
  v25 = 0x80000001000DEEB0;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v9 = v24;
  v8 = v25;
  v10 = String.init(format:arguments:)();
  v12 = v11;

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() bundleWithIdentifier:v13];

  if (v14)
  {
    v26._object = 0xE000000000000000;
    v15._countAndFlagsBits = v10;
    v15._object = v12;
    v16.value._countAndFlagsBits = v9;
    v16.value._object = v8;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v26)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000367D4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D890);
  v1 = sub_10000A570(v0, qword_10011D890);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10003689C(void *a1)
{
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_type] = 17;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingItem] = a1;
  v3 = objc_allocWithZone(PRXCardContentView);
  v4 = a1;
  v5 = [v3 init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HeadphoneMarketingUpsellViewController();
  v6 = objc_msgSendSuper2(&v9, "initWithContentView:", v5);

  v7 = v6;
  sub_1000369E0();

  return v7;
}

void sub_1000369E0()
{
  v1 = v0;
  type metadata accessor for AMSMarketingOffersClient();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  v3 = sub_10009C3A4();
  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(AMSUIMarketingItemViewController) initWithMarketingItem:*(v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingItem) bag:v3];
  [v5 setDelegate:v1];
  [v5 setAnonymousMetrics:1];
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];

  [v5 setAccount:v7];
  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011D890);
  v9 = v5;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = [v9 metricsOverlay];
    if (v14)
    {
      v15 = v14;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100008438(&qword_10011D958, qword_1000D73F0);
    v16 = String.init<A>(reflecting:)();
    v18 = sub_100078978(v16, v17, aBlock);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "HeadphoneMarketingUpsellViewController: Creating AMSUIMarketingItemViewController with metrics= %s", v12, 0xCu);
    sub_10000EA94(v13);
  }

  v19 = [v9 preload];
  aBlock[4] = sub_100036D54;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100036FC0;
  aBlock[3] = &unk_100104A28;
  v20 = _Block_copy(aBlock);
  [v19 addFinishBlock:v20];
  swift_unknownObjectRelease();
  _Block_release(v20);

  v21 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController) = v9;
}

void sub_100036D54(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10011C648 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011D890);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v8 = String.init<A>(describing:)();
      v10 = sub_100078978(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "HeadphoneMarketingUpsellViewController: view controller preload error: %s", v6, 0xCu);
      sub_10000EA94(v7);
    }

    else
    {
    }
  }

  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011D890);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "HeadphoneMarketingUpsellViewController: view controller preload complete: %{BOOL}d", v14, 8u);
  }
}

void sub_100036FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100037038()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    [v0 addChildViewController:v2];
    v36 = v3;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v0 contentView];
    [v4 addSubview:v36];

    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = [v0 contentView];
    [v7 cardStyle];

    v8 = [v0 traitCollection];
    [v8 prx_cardSizeClass];

    PRXCardPreferredSize();
    if (v6 == 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 * 1.1;
    }

    v11 = [v0 contentView];
    v12 = [v11 mainContentGuide];

    v13 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D5C80;
    v15 = [v0 contentView];
    v16 = [v15 heightAnchor];

    v17 = [v16 constraintEqualToConstant:v10];
    *(v14 + 32) = v17;
    v18 = [v36 heightAnchor];
    v19 = [v18 constraintEqualToConstant:v10];

    *(v14 + 40) = v19;
    v20 = [v36 topAnchor];
    v21 = [v12 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v14 + 48) = v22;
    v23 = [v36 leadingAnchor];
    v24 = [v12 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v14 + 56) = v25;
    v26 = [v36 trailingAnchor];
    v27 = [v12 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v14 + 64) = v28;
    v29 = [v36 bottomAnchor];

    v30 = [v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v14 + 72) = v31;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    [v2 didMoveToParentViewController:v0];
  }

  else
  {
    if (qword_10011C648 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000A570(v33, qword_10011D890);
    v36 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v36, v34, "HeadphoneMarketingUpsellViewController: Marketing controller was not initilized properly", v35, 2u);
    }
  }
}

id sub_100037594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneMarketingUpsellViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100037658(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a3;
  swift_errorRetain();
  sub_100008438(&qword_10011D950, &unk_1000D88C0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011D890);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;

    sub_100008438(&qword_10011D958, qword_1000D73F0);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_100078978(v6, v8, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "HeadphoneMarketingUpsellViewController: delegate didResolveWith called %s with error:%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  [a1 willMoveToParentViewController:0];
  v17 = [a1 view];
  [v17 removeFromSuperview];

  v18 = [v4 presentingViewController];
  [v18 removeFromParentViewController];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B736C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000379B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000379CC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D980);
  v1 = sub_10000A570(v0, qword_10011D980);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100037A94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadphoneModel(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  v140.receiver = v1;
  v140.super_class = ObjectType;
  objc_msgSendSuper2(&v140, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    sub_1000145EC(v16 + 16, &v137);
    swift_unknownObjectRelease();
    v17 = v139;
    if (v139)
    {
      v18 = sub_10000E7E4(&v137, v139);
      v19 = *(v17 - 8);
      v20 = *(v19 + 64);
      __chkstk_darwin(v18);
      v135 = v4;
      v22 = (&v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v22);
      sub_10001465C(&v137);
      v23 = *v22;
      v136 = v3;
      v24 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v25 = v23 + v24;
      v26 = v136;
      sub_10000E390(v25, v12);
      v27 = v22;
      v28 = v135;
      (*(v19 + 8))(v27, v17);
      sub_10000E828(v12, v14);
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v29 = *(v14 + 18);
      v30 = *(v14 + 19);
      v31 = *(v28 + 104);
      v132 = enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:);
      v133 = v28 + 104;
      v131 = v31;
      v31(v7);
      v32 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v34 = v33;

      (*(v28 + 8))(v7, v26);
      if (v32)
      {
        v127 = v34;
        v128 = v32;
        v35 = sub_1000220A4();
        v134 = v30;
        if (v35)
        {
          v36 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
          sub_100021B8C();
          v38 = v37;
          v39 = [objc_allocWithZone(UIImageView) initWithImage:v37];
          v40 = [objc_opt_self() systemBlueColor];
          [v39 setTintColor:v40];

          v41 = v39;
          [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v41 setContentMode:1];

          v42 = sub_100022750(v29, v30);
          v44 = v43;

          sub_100022750(v29, v30);
          v46 = v45;
          v48 = v47;

          v49 = v46;
          v30 = v134;
          sub_100092F4C(v41, v42, v44, v49, v48);
        }

        v50 = sub_1000216CC(v29, v30);
        v130 = v29;
        if (v50)
        {
          v51 = [objc_opt_self() currentDevice];
          v52 = [v51 userInterfaceIdiom];

          v53 = 1145131081;
          if (!v52)
          {
            v53 = 0x454E4F485049;
          }

          v126 = v53;
          v54 = 0xE400000000000000;
          if (!v52)
          {
            v54 = 0xE600000000000000;
          }

          v125 = v54;
          v129 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
          sub_100021944();
          v56 = v55;
          v57 = [objc_allocWithZone(UIImageView) initWithImage:v55];
          v58 = [objc_opt_self() systemBlueColor];
          [v57 setTintColor:v58];

          v59 = v57;
          [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v59 setContentMode:1];

          v60 = objc_opt_self();
          v61 = [v60 mainBundle];
          v141._object = 0xE000000000000000;
          v62._countAndFlagsBits = 0xD000000000000020;
          v62._object = 0x80000001000DDE20;
          v26 = v136;
          v63.value._object = 0x80000001000DC8A0;
          v63.value._countAndFlagsBits = 0xD000000000000011;
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          v141._countAndFlagsBits = 0;
          v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v141);
          countAndFlagsBits = v65._countAndFlagsBits;

          v137 = 0;
          v138 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v137 = 0xD000000000000024;
          v138 = 0x80000001000DF160;
          v66._countAndFlagsBits = v126;
          v66._object = v125;
          String.append(_:)(v66);

          v67 = v137;
          v68 = v138;
          v69 = [v60 mainBundle];
          v142._object = 0xE000000000000000;
          v70.value._object = 0x80000001000DC8A0;
          v71._countAndFlagsBits = v67;
          v71._object = v68;
          v70.value._countAndFlagsBits = 0xD000000000000011;
          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          v142._countAndFlagsBits = 0;
          v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, v70, v69, v72, v142);
          v30 = v134;

          sub_100092F4C(v59, countAndFlagsBits, v65._object, v73._countAndFlagsBits, v73._object);

          v29 = v130;
        }

        v129 = v14;
        if (sub_1000216B0(v29, v30))
        {
          v126 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
          sub_100021A68();
          v75 = v74;
          v76 = [objc_allocWithZone(UIImageView) initWithImage:v74];
          v77 = [objc_opt_self() systemBlueColor];
          [v76 setTintColor:v77];

          v78 = v76;
          [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v78 setContentMode:1];

          v79 = objc_opt_self();
          v80 = [v79 mainBundle];
          v143._object = 0xE000000000000000;
          v81._countAndFlagsBits = 0xD000000000000026;
          v81._object = 0x80000001000DDD90;
          v82.value._object = 0x80000001000DC8A0;
          v82.value._countAndFlagsBits = 0xD000000000000011;
          v83._countAndFlagsBits = 0;
          v83._object = 0xE000000000000000;
          v143._countAndFlagsBits = 0;
          v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v82, v80, v83, v143);

          v85 = [v79 mainBundle];
          v144._object = 0xE000000000000000;
          v86._countAndFlagsBits = 0xD000000000000034;
          v86._object = 0x80000001000DF120;
          v26 = v136;
          v87.value._object = 0x80000001000DC8A0;
          v87.value._countAndFlagsBits = 0xD000000000000011;
          v88._countAndFlagsBits = 0;
          v88._object = 0xE000000000000000;
          v144._countAndFlagsBits = 0;
          v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, v87, v85, v88, v144);

          sub_100092F4C(v78, v84._countAndFlagsBits, v84._object, v89._countAndFlagsBits, v89._object);
        }

        v90 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
        v91 = sub_100092C00();
        v92 = [v1 contentView];
        v93 = v91;
        [v92 addSubview:v93];

        v94 = [v1 contentView];
        v95 = [v94 mainContentGuide];

        v136 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1000D6000;
        v97 = [v93 topAnchor];

        v98 = [v95 topAnchor];
        v99 = [v97 constraintEqualToAnchor:v98];

        *(v96 + 32) = v99;
        v100 = [v93 bottomAnchor];

        v101 = [v95 bottomAnchor];
        v102 = [v100 constraintLessThanOrEqualToAnchor:v101];

        *(v96 + 40) = v102;
        v103 = [v93 leadingAnchor];

        v104 = [v95 leadingAnchor];
        v105 = [v103 constraintEqualToAnchor:v104];

        *(v96 + 48) = v105;
        v106 = [v93 trailingAnchor];

        v107 = [v95 trailingAnchor];
        v108 = [v106 constraintEqualToAnchor:v107];

        *(v96 + 56) = v108;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v136 activateConstraints:isa];

        v110 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_headphoneProxFeatureManager];
        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v111 = *(v135 + 72);
        v112 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1000D5250;
        v131(v113 + v112, v132, v26);

        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        v114 = v129;
      }

      else
      {
        if (qword_10011C650 != -1)
        {
          swift_once();
        }

        v119 = type metadata accessor for Logger();
        sub_10000A570(v119, qword_10011D980);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&_mh_execute_header, v120, v121, "Yodel: HeadphoneYodelFeaturesViewController Payload is nil, exiting", v122, 2u);
        }

        v114 = v14;
      }

      sub_10000E8F4(v114);
      return;
    }

    sub_10001465C(&v137);
  }

  if (qword_10011C650 != -1)
  {
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  sub_10000A570(v115, qword_10011D980);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "Yodel: HeadphoneYodelFeaturesViewController Headphone Model is nil, exiting", v118, 2u);
  }
}

void sub_100038940(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_1000145EC(v11 + 16, &aBlock);
    swift_unknownObjectRelease();
    v12 = v47;
    if (v47)
    {
      v13 = sub_10000E7E4(&aBlock, v47);
      v14 = *(v12 - 1);
      v15 = *(v14 + 64);
      __chkstk_darwin(v13);
      v17 = (&aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v17);
      sub_10001465C(&aBlock);
      v18 = *v17;
      v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v18 + v19, v7);
      (*(v14 + 8))(v17, v12);
      sub_10000E828(v7, v9);
      sub_100038F14(a1);
      v20 = String._bridgeToObjectiveC()();

      [v1 setTitle:v20];

      v21 = &off_1000D5000;
      if (sub_1000216CC(*(v9 + 18), *(v9 + 19)))
      {
        v22 = a1[4];
        v23 = a1[5];
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v25 = String._bridgeToObjectiveC()();
        v48 = sub_1000396C8;
        v49 = v24;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10000C034;
        v47 = &unk_100104AE0;
        v26 = _Block_copy(&aBlock);
        v27 = [objc_opt_self() actionWithTitle:v25 style:0 handler:v26];

        _Block_release(v26);

        v28 = [v1 addAction:v27];

        v21 = &off_1000D5000;
        v29 = a1[6];
        v30 = a1[7];
      }

      else
      {
        v35 = [objc_opt_self() mainBundle];
        v50._object = 0xE000000000000000;
        v36._countAndFlagsBits = 0xD000000000000016;
        v36._object = 0x80000001000DF0C0;
        v37.value._object = 0x80000001000DC8A0;
        v37.value._countAndFlagsBits = 0xD000000000000011;
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        v50._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v50);
      }

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v40 = String._bridgeToObjectiveC()();

      v48 = sub_1000396A8;
      v49 = v39;
      aBlock = _NSConcreteStackBlock;
      v45 = *(v21 + 78);
      v46 = sub_10000C034;
      v47 = &unk_100104AB8;
      v41 = _Block_copy(&aBlock);
      v42 = [objc_opt_self() actionWithTitle:v40 style:1 handler:v41];

      _Block_release(v41);

      v43 = [v1 addAction:v42];

      sub_10000E8F4(v9);
      return;
    }

    sub_10001465C(&aBlock);
  }

  if (qword_10011C650 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000A570(v31, qword_10011D980);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Yodel: HeadphoneYodelFeaturesViewController Headphone Model is nil, exiting", v34, 2u);
  }
}

void sub_100039410()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000CE398();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100039484()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B5D54(0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100039670()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000396B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000396D8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D9E0);
  v1 = sub_10000A570(v0, qword_10011D9E0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000397A0()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100039800();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100039800()
{
  if (qword_10011C6F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100123198;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [objc_opt_self() systemBlueColor];
    [v3 setTintColor:v4];

    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentMode:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_100039954()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_1000397A0();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_100039A80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = &v27 - v5;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidLoad");
  [v1 setDismissalType:1];
  v6 = [v1 contentView];
  v7 = sub_100039954();
  [v6 addSubview:v7];

  v8 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset];
  v9 = [v1 contentView];
  v10 = [v9 mainContentGuide];

  [v8 pinToOtherWithLayoutGuide:v10];
  v11 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_featureManager];
  v12 = &v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model];
  swift_beginAccess();
  v13 = type metadata accessor for HeadphoneModel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v27 = v14 + 48;
  v28 = v15;
  result = v15(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v12 + 144);
    v17 = *(v12 + 152);
    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v19 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000D5250;
    (*(v20 + 104))(v23 + v22, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v19);

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

    v24 = v29;
    sub_10000E88C(v12, v29, &qword_10011EBD0, &unk_1000D5EE0);
    result = v28(v24, 1, v13);
    if (result != 1)
    {
      type metadata accessor for HeadphoneYodelHearingProtectionViewController();
      v25 = &v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter];
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v24, Strong, *(v25 + 1));
      swift_unknownObjectRelease();
      return sub_10000E8F4(v24);
    }
  }

  __break(1u);
  return result;
}

void sub_100039ECC()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for HeadphoneModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v68 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    sub_10000E88C(v20 + 16, &aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v21 = v80;
    if (v80)
    {
      v72 = v6;
      v73 = v3;
      v74 = v2;
      v22 = sub_10000E7E4(&aBlock, v80);
      v75 = v11;
      v76 = v18;
      v23 = *(v21 - 1);
      v24 = *(v23 + 64);
      __chkstk_darwin(v22);
      v26 = (&v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v26);
      sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v27 = *v26;
      v28 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v27 + v28, v16);
      (*(v23 + 8))(v26, v21);
      v29 = v76;
      sub_10000E828(v16, v76);
      sub_10000E390(v29, v10);
      v30 = v12;
      v31 = v75;
      (*(v12 + 56))(v10, 0, 1, v75);
      v32 = v1 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
      swift_beginAccess();
      sub_100013144(v10, v32);
      swift_endAccess();
      sub_10003A7E4();
      v33 = String._bridgeToObjectiveC()();

      [v1 setTitle:v33];

      sub_10003AA58();
      v34 = String._bridgeToObjectiveC()();

      [v1 setSubtitle:v34];

      v69 = objc_opt_self();
      v35 = [v69 mainBundle];
      v83._object = 0xE000000000000000;
      v36._countAndFlagsBits = 0xD000000000000018;
      v36._object = 0x80000001000DF1F0;
      v70 = "YODEL_WHATS_NEW_LSR_SUBTITLE";
      v37.value._object = 0x80000001000DC8A0;
      v37.value._countAndFlagsBits = 0xD000000000000011;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v83._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v83);

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v40 = String._bridgeToObjectiveC()();

      v81 = sub_10003B170;
      v82 = v39;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_10000C034;
      v80 = &unk_100104B70;
      v41 = _Block_copy(&aBlock);
      v42 = objc_opt_self();
      v71 = [v42 actionWithTitle:v40 style:0 handler:v41];

      _Block_release(v41);

      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      if ((*(v30 + 48))(v32, 1, v31) == 1)
      {
        __break(1u);
      }

      else
      {
        if (*(v32 + 152))
        {
          v43 = *(v32 + 144);
          v44 = *(v32 + 152);
        }

        v46 = v72;
        v45 = v73;
        v47 = v74;
        (*(v73 + 104))(v72, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v74);

        v48 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
        v50 = v49;

        (*(v45 + 8))(v46, v47);
        if (v48 && (v48, v51 = [v50 hearingProtectionRegionStatus], v50, v51 == 2))
        {
          v52 = "SWITCH_MODE_SKIP_BUTTON";
          v53 = 0xD000000000000023;
        }

        else
        {
          v52 = "YODEL_SWITCH_MODE_BUTTON";
          v53 = 0xD000000000000027;
        }

        v54 = [v69 mainBundle];
        v84._object = 0xE000000000000000;
        v55._object = (v52 | 0x8000000000000000);
        v56.value._object = (v70 | 0x8000000000000000);
        v55._countAndFlagsBits = v53;
        v56.value._countAndFlagsBits = 0xD000000000000011;
        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        v84._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v84);

        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v59 = String._bridgeToObjectiveC()();

        v81 = sub_10003B190;
        v82 = v58;
        aBlock = _NSConcreteStackBlock;
        v78 = 1107296256;
        v79 = sub_10000C034;
        v80 = &unk_100104B98;
        v60 = _Block_copy(&aBlock);
        v61 = [v42 actionWithTitle:v59 style:1 handler:v60];

        _Block_release(v60);

        v62 = v71;

        v63 = [v1 addAction:v61];
        sub_10000E8F4(v76);
      }

      return;
    }

    sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C658 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_10000A570(v64, qword_10011D9E0);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Hearing Protection: Headphone Model is nil, exiting", v67, 2u);
  }
}

uint64_t sub_10003A7E4()
{
  v1 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v6 = v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v7 = type metadata accessor for HeadphoneModel(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 144);
    v10 = *(v6 + 152);
    (*(v2 + 104))(v5, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v1);

    v11 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
    v13 = v12;

    (*(v2 + 8))(v5, v1);
    if (v11 && (v11, v14 = [v13 hearingProtectionRegionStatus], v13, v14 == 2))
    {
      v15 = "YODEL_LSR_SWITCH_MODE_TITLE";
      v16 = 0xD000000000000017;
    }

    else
    {
      v15 = "YODEL_SWITCH_MODE_SUBTITLE";
      v16 = 0xD00000000000001BLL;
    }

    v17 = [objc_opt_self() mainBundle];
    v23._object = 0xE000000000000000;
    v18._object = (v15 | 0x8000000000000000);
    v19.value._object = 0x80000001000DC8A0;
    v18._countAndFlagsBits = v16;
    v19.value._countAndFlagsBits = 0xD000000000000011;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_10003AA58()
{
  v1 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v6 = v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v7 = type metadata accessor for HeadphoneModel(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 144);
    v10 = *(v6 + 152);
    (*(v2 + 104))(v5, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v1);

    v11 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
    v13 = v12;

    (*(v2 + 8))(v5, v1);
    if (v11 && (v11, v14 = [v13 hearingProtectionRegionStatus], v13, v14 == 2))
    {
      v15 = "YODEL_LSR_SWITCH_MODE_SUBTITLE";
      v16 = 0xD00000000000001ALL;
    }

    else
    {
      v15 = "CH_MODE_SKIP_BUTTON";
      v16 = 0xD00000000000001ELL;
    }

    v17 = [objc_opt_self() mainBundle];
    v23._object = 0xE000000000000000;
    v18._object = (v15 | 0x8000000000000000);
    v19.value._object = 0x80000001000DC8A0;
    v18._countAndFlagsBits = v16;
    v19.value._countAndFlagsBits = 0xD000000000000011;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_10003ACCC()
{
  v0 = [objc_allocWithZone(AADeviceConfig) init];
  [v0 setListeningModeOffAllowed:2];
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v2 = Strong;
  v3 = Strong + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v4 = type metadata accessor for HeadphoneModel(0);
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (result != 1)
  {
    v7 = *(v3 + 144);
    v6 = *(v3 + 152);

    if (v6)
    {
LABEL_5:

      HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();
    }

LABEL_4:

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10003AE58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000BAE28();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10003AECC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000BAE28();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneYodelHearingSwitchListeningModeViewController()
{
  result = qword_10011DA38;
  if (!qword_10011DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B068()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10003B138()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10003B1A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_featureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset] = 0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_type] = 34;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t getEnumTagSinglePayload for HeadphoneViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003B400()
{
  result = qword_10011DA48;
  if (!qword_10011DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DA48);
  }

  return result;
}

uint64_t sub_10003B454()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DA50);
  v1 = sub_10000A570(v0, qword_10011DA50);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10003B588()
{
  v1 = v0;
  v64 = [objc_allocWithZone(ACAccountStore) init];
  v2 = [v64 aa_primaryAppleAccount];
  if (!v2)
  {
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011DA50);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No iCloud account.", v13, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (Strong)
      {
        sub_1000481B8();
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v3 = v2;
  v63 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v2 grandSlamAccount:0 accountStore:v64];
  v4 = [v63 profilePictureForAccountOwner];
  v5 = [v3 username];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo);
  v16 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 8);
  v17 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 16);
  v18 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 32);
  *v15 = v7;
  v15[1] = v9;
  v15[2] = v4;
  v15[3] = 0;
  v15[4] = 0;
  v62 = v4;

  v19 = [objc_opt_self() sharedInstance];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v3 accountPropertyForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v67 = 0u;
    v69 = 0u;
  }

  v70 = *v67;
  v71 = v69;
  if (!*(&v69 + 1))
  {
    sub_10000E950(&v70, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A570(v27, qword_10011DA50);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "altDSID not available", v30, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v31)
      {
        sub_1000481B8();
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_31;
  }

  v22 = String._bridgeToObjectiveC()();

  v23 = [v19 authKitAccountWithAltDSID:v22];

  if (!v23)
  {
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A570(v32, qword_10011DA50);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No AppleID account", v35, 2u);
    }

LABEL_31:
LABEL_32:

    return;
  }

  v24 = [v19 additionalInfoForAccount:v23];
  if (v24)
  {
    v25 = v24;
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v26 = 0;
  }

  v60 = [v19 phoneAsAppleIDForAccount:v23];
  if (qword_10011C660 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000A570(v36, qword_10011DA50);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v61 = v23;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v70 = v59;
    *v39 = 136315394;
    v67[0] = v26;

    sub_100008438(&qword_10011DAA8, &qword_1000D7610);
    v40 = String.init<A>(reflecting:)();
    v42 = sub_100078978(v40, v41, &v70);

    *(v39 + 4) = v42;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v37, v38, "Additional account info: %s, MAKO: %{BOOL}d", v39, 0x12u);
    sub_10000EA94(v59);
  }

  if (!v26 || !*(v26 + 16))
  {
    goto LABEL_51;
  }

  v43 = sub_1000CD118(0x6D754E656E6F6870, 0xEC00000073726562);
  if ((v44 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_10003CE5C(*(v26 + 56) + 32 * v43, &v70);

  sub_1000084D4(0, &qword_10011DAB0, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v70 = v49;
      *v48 = 136315138;
      sub_100008438(&qword_10011DAA8, &qword_1000D7610);
      v50 = String.init<A>(reflecting:)();
      v52 = sub_100078978(v50, v51, &v70);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to decode phone number from: %s", v48, 0xCu);
      sub_10000EA94(v49);
    }

    else
    {
    }

    goto LABEL_32;
  }

  v45 = v67[0];
  if ([v67[0] firstObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v67 = 0u;
    v69 = 0u;
  }

  v70 = *v67;
  v71 = v69;
  if (!*(&v69 + 1))
  {
LABEL_67:

    sub_10000E950(&v70, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_51;
  }

  sub_1000084D4(0, &qword_10011DAB8, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v68[0] = 0x6D754E656E6F6870;
  v68[1] = 0xEB00000000726562;
  v53 = [v65 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v53)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v68 = 0u;
    v69 = 0u;
  }

  v70 = *v68;
  v71 = v69;
  if (!*(&v69 + 1))
  {

    goto LABEL_67;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  if (v60)
  {

LABEL_50:

    goto LABEL_51;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v70 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_100078978(v65, v66, &v70);
    _os_log_impl(&_mh_execute_header, v54, v55, "Phone number: %s", v56, 0xCu);
    sub_10000EA94(v57);
  }

  v58 = v15[4];
  v15[3] = v65;
  v15[4] = v66;
}

void sub_10003C0E0(void *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v77 = a1;
  if (a1[11])
  {
    v6 = a1[10];
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v1 setBottomTrayTitle:v7];

  sub_10003B588();
  v8 = [objc_allocWithZone(UIImageView) init];
  v78 = v1;
  v9 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo];
  v10 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 16];
  v11 = v10;
  if (!v10)
  {
    v12 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() systemImageNamed:v12];
  }

  v13 = v10;
  [v8 setImage:v11];

  v76 = v8;
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *(v9 + 1);
  v15 = *(v9 + 4);
  v74 = *(v9 + 3);
  if (v14)
  {
    v16 = *v9;
  }

  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSForegroundColorAttributeName;
  v18 = objc_opt_self();

  v19 = NSForegroundColorAttributeName;
  swift_bridgeObjectRetain_n();
  v73 = v19;
  v20 = [v18 labelColor];
  v21 = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 64) = v21;
  *(inited + 40) = v20;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000E950(inited + 32, &qword_10011C900, &unk_1000D6750);
  v22 = objc_allocWithZone(NSMutableAttributedString);
  v23 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  if (v14)
  {

    if (v15)
    {
      v26 = objc_allocWithZone(NSAttributedString);
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 initWithString:v27];

      [v25 appendAttributedString:v28];
    }
  }

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1000D5250;
  *(v29 + 32) = v73;
  v30 = [v18 secondaryLabelColor];
  *(v29 + 64) = v21;
  *(v29 + 40) = v30;
  sub_1000A3410(v29);
  swift_setDeallocating();
  sub_10000E950(v29 + 32, &qword_10011C900, &unk_1000D6750);
  v31 = objc_allocWithZone(NSAttributedString);
  v32 = String._bridgeToObjectiveC()();

  v33 = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = [v31 initWithString:v32 attributes:v33];

  [v25 appendAttributedString:v34];
  v35 = [objc_allocWithZone(UILabel) init];
  [v35 setAttributedText:v25];
  v36 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v35 setFont:v36];

  [v35 setTextAlignment:1];
  v37 = v35;
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v78 contentView];
  [v38 addSubview:v76];

  v39 = [v78 contentView];
  [v39 addSubview:v37];

  v40 = [v78 contentView];
  v41 = [v40 mainContentGuide];

  v75 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000D6930;
  v43 = [v76 widthAnchor];
  v44 = [v43 constraintEqualToConstant:80.0];

  *(v42 + 32) = v44;
  v45 = [v76 heightAnchor];
  v46 = [v45 constraintEqualToConstant:80.0];

  *(v42 + 40) = v46;
  v47 = [v76 topAnchor];
  v48 = [v41 topAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48];

  *(v42 + 48) = v49;
  v50 = [v76 centerXAnchor];
  v51 = [v41 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v42 + 56) = v52;
  v53 = [v37 topAnchor];
  v54 = [v76 bottomAnchor];

  v55 = [v53 constraintEqualToAnchor:v54 constant:10.0];
  *(v42 + 64) = v55;
  v56 = [v37 leadingAnchor];
  v57 = [v41 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v42 + 72) = v58;
  v59 = [v37 trailingAnchor];
  v60 = [v41 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v42 + 80) = v61;
  v62 = [v37 bottomAnchor];

  v63 = [v41 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v42 + 88) = v64;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v75 activateConstraints:v65];

  v66 = v77[4];
  v67 = v77[5];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v69 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10003CE3C;
  aBlock[5] = v68;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_100104CB8;
  v70 = _Block_copy(aBlock);
  v71 = [objc_opt_self() actionWithTitle:v69 style:0 handler:v70];

  _Block_release(v70);

  v72 = [v78 addAction:v71];
}