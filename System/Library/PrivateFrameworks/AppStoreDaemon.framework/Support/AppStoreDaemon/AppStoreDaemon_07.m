uint64_t sub_1000F6564(uint64_t a1, uint64_t a2)
{
  sub_100085D40(&unk_10059D038);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100434780;
  *(v4 + 32) = xmmword_1004364F0;
  *(v4 + 48) = -40;
  sub_100085D40(&qword_10059C4A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100436500;
  v14 = a1;
  v15 = a2;
  v6 = @"bundle_id";

  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 value:v7 comparisonType:{1, v14, v15}];
  swift_unknownObjectRelease();

  *(v5 + 32) = v8;
  v9 = objc_opt_self();
  v10 = @"IFNULL(app_install.phase, 10)";
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 doesNotContainPredicateWithProperty:v10 values:isa];

  *(v5 + 40) = v12;
  return v5;
}

uint64_t sub_1000F66F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000F6718, 0, 0);
}

uint64_t sub_1000F6718()
{
  v1 = sub_1000F6564(v0[2], v0[3]);
  sub_1000E0D28(v1);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() predicateMatchingAllPredicates:isa];
  v0[4] = v3;

  sub_100085D40(&unk_10059DCD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100436510;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 56) = v6;
  *(v4 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 72) = v7;
  *(v4 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 88) = v8;
  *(v4 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 104) = v9;
  objc_opt_self();
  v0[5] = sub_1003C27BC();
  v10 = swift_allocObject();
  v0[6] = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v4;
  v11 = v3;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1000F6928;

  return (sub_1001B8490)(sub_1000F6BC0, v10);
}

uint64_t sub_1000F6928(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 40);
  if (v1)
  {

    v7 = sub_1000F6B00;
  }

  else
  {

    *(v5 + 64) = a1;
    v7 = sub_1000F6A98;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000F6A98()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F6B00()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000F6B64(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1000F6BDC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000F6C00, 0, 0);
}

uint64_t sub_1000F6C00()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 16) databaseID];
  objc_opt_self();
  *(v0 + 32) = sub_1003C27BC();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = sub_1000F8668;
  *(v5 + 24) = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1000F6D5C;

  return sub_1000DA674(sub_1000E22A0, v5);
}

uint64_t sub_1000F6D5C()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_1000F8948;
  }

  else
  {

    v4 = sub_1000F6EC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F6EC0()
{
  if (sub_10023E604(*(v0 + 16), @"bootstrapped") == 2)
  {
    objc_opt_self();
    v1 = sub_1002C0D84();
    sub_1002C13BC(v1, 0x2000);
  }

  else
  {
    objc_opt_self();
    v2 = sub_1002856D4();
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];

    v1 = [v5 ams_DSID];
    sub_1002870A8(v2, v3, v1, 1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000F7020(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000F7134, 0, 0);
}

uint64_t sub_1000F7134()
{
  v1 = [*(v0 + 32) identity];
  v2 = [v1 bundleID];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1000F7260;

  return sub_1000F66F8(v3, v5);
}

uint64_t sub_1000F7260(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000F73AC, 0, 0);
}

uint64_t sub_1000F73AC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v3 = sub_1000F7870;
LABEL_3:
    v2[1] = v3;
    v4 = *(v0 + 40);
    v5 = *(v0 + 144);

    return sub_1000F6BDC(v1, v5, v4);
  }

  if ([*(v0 + 32) conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
  {
    v7 = *(v0 + 32);
    *(v0 + 24) = 0;
    if ([v7 appAssetPromiseResponsibleClientWithError:v0 + 24] == 1)
    {
      v8 = *(v0 + 32);
      objc_opt_self();
      v9 = sub_1002856D4();
      v10 = sub_100286400(v9);

      v11 = sub_100083E50(v8, v10);
      *(v0 + 128) = v11;
      v1 = v11;

      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v3 = sub_1000F7B8C;
      goto LABEL_3;
    }
  }

  v12 = *(v0 + 40);
  static Logger.restore.getter();
  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 40);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Prioritizing active restore coordinator which App Store is not responsible", v17, 0xCu);
    sub_100005518(v18, &unk_10059C250);
  }

  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = *(v0 + 32);

  (*(v21 + 8))(v20, v22);
  *(v0 + 16) = 0;
  v24 = [v23 prioritizeWithError:v0 + 16];
  v25 = *(v0 + 16);
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v27 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000F7870()
{

  return _swift_task_switch(sub_1000F7998, 0, 0);
}

uint64_t sub_1000F7998()
{
  v1 = v0[14];
  v2 = v0[5];
  static Logger.restore.getter();
  v3 = v2;
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = sub_100408EB0(v8);
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Found active restore with logKey: %@", v10, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  (*(v0[7] + 8))(v0[11], v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000F7B8C()
{

  return _swift_task_switch(sub_1000F7CB4, 0, 0);
}

uint64_t sub_1000F7CB4()
{
  v1 = v0[5];
  static Logger.restore.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Displaying job started dialog", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);

    v9 = v0[16];
  }

  else
  {
    v9 = v3;
    v3 = v0[16];
  }

  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];

  (*(v12 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

void sub_1000F7E78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(IXApplicationIdentity);
  v5 = String._bridgeToObjectiveC()();
  v12 = [v4 initWithBundleIdentifier:v5];

  if (v12)
  {
    v6 = [objc_allocWithZone(IXUninstallOptions) init];
    if (v6)
    {
      v7 = v6;
      [v6 setWaitForDeletion:0];
      [v7 setRequestUserConfirmation:0];
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = a3;
      aBlock[4] = sub_1000F87A8;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F384C;
      aBlock[3] = &unk_10050D830;
      v10 = _Block_copy(aBlock);
      v11 = a3;

      [v8 uninstallAppWithIdentity:v12 options:v7 completion:v10];
      _Block_release(v10);
    }

    else
    {
    }
  }
}

void *sub_1000F8038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(IXApplicationIdentity);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleID:v9];

  v11 = objc_opt_self();
  v31 = 0;
  v12 = [v11 existingCoordinatorForAppWithIdentity:v10 error:&v31];
  v13 = v31;
  if (v12)
  {
    v14 = v12;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    v16 = v13;
    if (v15)
    {
      static Logger.restore.getter();
      v17 = v14;
      v18 = a3;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v19, v20))
      {

        v19 = v17;
        v10 = v17;
LABEL_13:

        (*(v5 + 8))(v7, v4);
        return v15;
      }

      v30 = v5;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v18;
      v29 = v22;
      *v22 = v18;
      *(v21 + 12) = 1024;
      v23 = v18;
      if ([v15 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
      {
        v31 = 0;
        v24 = [v15 appAssetPromiseResponsibleClientWithError:&v31];

        if (v24 == 1)
        {
          v25 = 1;
LABEL_12:
          v5 = v30;
          *(v21 + 14) = v25;

          _os_log_impl(&_mh_execute_header, v19, v20, "%@ Found existing restore with App Store responsible: %{BOOL}d", v21, 0x12u);
          sub_100005518(v29, &unk_10059C250);

          goto LABEL_13;
        }
      }

      else
      {
      }

      v25 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v26 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v15;
}

uint64_t sub_1000F8384()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1000F3AC0(v2, v3);
}

uint64_t sub_1000F8438(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FeatureFlag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  if ([v10 deviceIsAppleTV])
  {
    return 0;
  }

  if ([v10 deviceIsAudioAccessory])
  {
    return 0;
  }

  (*(v7 + 104))(v9, enum case for FeatureFlag.activeRestore(_:), v6);
  v11 = asd_isFeatureEnabled(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  result = sub_1000F8038(a1, a2, a3);
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1000F859C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100085384;

  return sub_1000F32E8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000F8680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100086B9C;

  return sub_1000F3CE0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000F87B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000F87D0()
{
  v1 = *(sub_100085D40(&unk_10059D0B0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1000F579C(v2, v3);
}

uint64_t sub_1000F8840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F8888(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F88F0()
{
  result = qword_10059D110;
  if (!qword_10059D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D110);
  }

  return result;
}

id *sub_1000F8954()
{
  v0 = [objc_allocWithZone(TaskQueue) init];
  v1 = String._bridgeToObjectiveC()();
  sub_100284CC0(v0, v1);

  result = sub_100284D08(v0, 25);
  qword_1005AB0F8 = v0;
  return result;
}

uint64_t sub_1000F8B00()
{
  v1[36] = v0;
  v2 = sub_100085D40(&qword_10059C3F8);
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v1[40] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[41] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8CF8, 0, 0);
}

uint64_t sub_1000F8CF8()
{
  v171 = v0;
  v1 = v0[36];
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[54];
  v8 = v0[42];
  v7 = v0[43];
  if (v5)
  {
    v9 = v0[36];
    v168 = v0[54];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v170[0] = v12;
    *v10 = 138412546;
    v13 = *(v9 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    v14 = v9 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID;
    v15 = *(v9 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID);
    v16 = *(v14 + 8);
    v17 = v13;
    *(v10 + 14) = sub_1001AD0D8(v15, v16, v170);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Starting pre-installed app update authorization task for %{public}s", v10, 0x16u);
    sub_100005518(v11, &unk_10059C250);

    sub_100005A00(v12);

    v18 = *(v7 + 8);
    v18(v168, v8);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[55] = v18;
  if (![objc_opt_self() isAutomaticUpdateAuthorizationEnabled])
  {
    v67 = v0[36];
    static Logger.updates.getter();
    v68 = v67;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = v0[36];
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      v74 = *(v71 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v72 + 4) = v74;
      *v73 = v74;
      v75 = v74;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%@] Automatic update authorization is not enabled.", v72, 0xCu);
      sub_100005518(v73, &unk_10059C250);
    }

    v76 = v0[46];
    v77 = v0[42];

    v18(v76, v77);
    type metadata accessor for ASDError(0);
    v0[22] = 1300;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_23;
  }

  objc_opt_self();
  if (!sub_10030B504() || !sub_10030B58C())
  {
    v78 = v0[36];
    static Logger.updates.getter();
    v79 = v78;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = v0[36];
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      v85 = *(v82 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v83 + 4) = v85;
      *v84 = v85;
      v86 = v85;
      _os_log_impl(&_mh_execute_header, v80, v81, "[%@] Device restrictions prohibit app updates", v83, 0xCu);
      sub_100005518(v84, &unk_10059C250);
    }

    v87 = v0[47];
    v88 = v0[42];

    v18(v87, v88);
    type metadata accessor for ASDError(0);
    v0[26] = 1300;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_23:
    swift_willThrow();
    goto LABEL_24;
  }

  v19 = (v0[36] + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID);
  v21 = *v19;
  v20 = v19[1];
  objc_allocWithZone(LSApplicationRecord);

  v22 = sub_1001914DC(v21, v20, 0);
  v0[56] = v22;
  v0[57] = 0;
  v23 = v22;
  if (sub_10040C694(v22))
  {
    v24 = [v23 iTunesMetadata];
    v25 = [v24 storeItemIdentifier];

    if (v25)
    {
      if ((sub_1000FAD2C() & 1) == 0)
      {

        goto LABEL_28;
      }

      if ([*(v0[36] + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_processHandle) isValid])
      {
        v26 = sub_1000FAFE8();
        v27 = v0[36];
        if (v26)
        {
          static Logger.updates.getter();
          v28 = v27;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = v0[36];
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *v32 = 138412290;
            v34 = *(v31 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
            *(v32 + 4) = v34;
            *v33 = v34;
            v35 = v34;
            _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Requesting pre-installed app update authorization", v32, 0xCu);
            sub_100005518(v33, &unk_10059C250);
          }

          v36 = v0[53];
          v38 = v0[42];
          v37 = v0[43];
          v166 = v0[39];
          v162 = v0[37];
          v164 = v0[38];
          v161 = v0[36];

          v0[58] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v18(v36, v38);
          String.LocalizationValue.init(stringLiteral:)();
          String.init(appStoreDaemonLocalized:comment:)();
          v0[59] = v39;
          v40 = String._bridgeToObjectiveC()();
          v41 = String._bridgeToObjectiveC()();
          v42 = objc_opt_self();
          v43 = [v42 actionWithTitle:v40 identifier:v41];
          v0[60] = v43;

          String.LocalizationValue.init(stringLiteral:)();
          String.init(appStoreDaemonLocalized:comment:)();
          v44 = String._bridgeToObjectiveC()();

          v45 = String._bridgeToObjectiveC()();
          v46 = [v42 actionWithTitle:v44 identifier:v45];
          v0[61] = v46;

          [v46 setStyle:2];
          v47 = [v23 localizedName];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v0[62] = v50;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v51._object = 0x800000010044EF90;
          v51._countAndFlagsBits = 0xD000000000000024;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
          v52._countAndFlagsBits = v48;
          v52._object = v50;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v52);
          v53._countAndFlagsBits = 0;
          v53._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(appStoreDaemonLocalized:comment:)();
          String.LocalizationValue.init(stringLiteral:)();
          String.init(appStoreDaemonLocalized:comment:)();
          v54 = objc_allocWithZone(AMSDialogRequest);
          v55 = String._bridgeToObjectiveC()();

          v56 = String._bridgeToObjectiveC()();

          v57 = [v54 initWithTitle:v55 message:v56];
          v0[63] = v57;

          sub_100085D40(&qword_10059C4A0);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100436500;
          *(v58 + 32) = v43;
          *(v58 + 40) = v46;
          sub_10009FAD4(0, &qword_10059D168);
          v59 = v43;
          v60 = v46;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v57 setButtonActions:isa];

          [v57 setDefaultAction:v59];
          v0[64] = *(v161 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);

          v62 = String._bridgeToObjectiveC()();

          [v57 setLogKey:v62];

          [v57 setStyle:1];
          v63 = [objc_opt_self() defaultCenter];
          [v63 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

          v64 = [objc_allocWithZone(_ASDSystemAlertDialogTask) initWithRequest:v57];
          v0[65] = v64;
          v65 = [v64 present];
          v0[66] = v65;
          v0[2] = v0;
          v0[7] = v0 + 35;
          v0[3] = sub_1000FA41C;
          swift_continuation_init();
          v0[17] = v162;
          v66 = sub_100005F38(v0 + 14);
          sub_10009FAD4(0, &qword_10059C400);
          sub_100085D40(&unk_10059DE80);
          CheckedContinuation.init(continuation:function:)();
          (*(v164 + 32))(v66, v166, v162);
          v0[10] = _NSConcreteStackBlock;
          v0[11] = 1107296256;
          v0[12] = sub_10010B5D4;
          v0[13] = &unk_10050D9B0;
          [v65 resultWithCompletion:?];
          (*(v164 + 8))(v66, v162);

          return _swift_continuation_await(v0 + 2);
        }

        static Logger.updates.getter();
        v150 = v27;
        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v151, v152))
        {
          v153 = v0[36];
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *v154 = 138543362;
          v156 = *(v153 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
          *(v154 + 4) = v156;
          *v155 = v156;
          v157 = v156;
          _os_log_impl(&_mh_execute_header, v151, v152, "[%{public}@] App hasn't launched enough times", v154, 0xCu);
          sub_100005518(v155, &unk_10059C250);
        }

        v158 = v0[51];
        v159 = v0[42];

        v18(v158, v159);
        type metadata accessor for ASDError(0);
        v0[34] = 1300;
        sub_1000EF17C(_swiftEmptyArrayStorage);
        sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
        _BridgedStoredNSError.init(_:userInfo:)();
      }

      else
      {
        v139 = v0[36];
        static Logger.updates.getter();
        v140 = v139;
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = v0[36];
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *v144 = 138412290;
          v146 = *(v143 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
          *(v144 + 4) = v146;
          *v145 = v146;
          v147 = v146;
          _os_log_impl(&_mh_execute_header, v141, v142, "[%@] App is no longer running", v144, 0xCu);
          sub_100005518(v145, &unk_10059C250);
        }

        v148 = v0[50];
        v149 = v0[42];

        v18(v148, v149);
        type metadata accessor for ASDError(0);
        v0[32] = 1300;
        sub_1000EF17C(_swiftEmptyArrayStorage);
        sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
        _BridgedStoredNSError.init(_:userInfo:)();
      }
    }

    else
    {
      v128 = v0[36];
      static Logger.updates.getter();
      v129 = v128;
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = v0[36];
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        v135 = *(v132 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
        *(v133 + 4) = v135;
        *v134 = v135;
        v136 = v135;
        _os_log_impl(&_mh_execute_header, v130, v131, "[%@] This app doesn't require authorization for pre-installed apps - No item ID", v133, 0xCu);
        sub_100005518(v134, &unk_10059C250);
      }

      v137 = v0[49];
      v138 = v0[42];

      v18(v137, v138);
      type metadata accessor for ASDError(0);
      v0[30] = 1300;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
    }
  }

  else
  {
    v117 = v0[36];
    static Logger.updates.getter();
    v118 = v117;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = v0[36];
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v122 = 138412290;
      v124 = *(v121 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v122 + 4) = v124;
      *v123 = v124;
      v125 = v124;
      _os_log_impl(&_mh_execute_header, v119, v120, "[%@] This app doesn't require authorization for pre-installed apps", v122, 0xCu);
      sub_100005518(v123, &unk_10059C250);
    }

    v126 = v0[48];
    v127 = v0[42];

    v18(v126, v127);
    type metadata accessor for ASDError(0);
    v0[28] = 1300;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000FBCA8(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  swift_willThrow();

LABEL_24:
  type metadata accessor for Code(0);
  v0[23] = 0;
  swift_errorRetain();
  sub_1000FBCA8(&qword_10059BA68, type metadata accessor for Code);
  v89 = static _ErrorCodeProtocol.~= infix(_:_:)();

  v90 = v0[36];
  if ((v89 & 1) == 0)
  {
    static Logger.updates.getter();
    v103 = v90;
    swift_errorRetain();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    v106 = os_log_type_enabled(v104, v105);
    v108 = v0[43];
    v107 = v0[44];
    v109 = v0[42];
    if (v106)
    {
      v169 = v0[44];
      v110 = v0[36];
      v111 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v170[0] = v165;
      *v111 = 138412546;
      v112 = *(v110 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v111 + 4) = v112;
      *v163 = v112;
      *(v111 + 12) = 2082;
      swift_getErrorValue();
      v167 = v109;
      v113 = v112;
      v114 = Error.localizedDescription.getter();
      v116 = sub_1001AD0D8(v114, v115, v170);

      *(v111 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v104, v105, "[%@] Finished pre-installed app update authorization task with error: %{public}s", v111, 0x16u);
      sub_100005518(v163, &unk_10059C250);

      sub_100005A00(v165);

      (*(v108 + 8))(v169, v167);
    }

    else
    {

      (*(v108 + 8))(v107, v109);
    }

    swift_willThrow();

    v102 = v0[1];
    goto LABEL_33;
  }

  static Logger.updates.getter();
  v91 = v90;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = v0[36];
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    v97 = *(v94 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
    *(v95 + 4) = v97;
    *v96 = v97;
    v98 = v97;
    _os_log_impl(&_mh_execute_header, v92, v93, "[%@] Dialog request ended with unknown error; potential dismiss by user by trying to return to home screen", v95, 0xCu);
    sub_100005518(v96, &unk_10059C250);
  }

  v99 = v0[45];
  v100 = v0[42];
  v101 = v0[43];

  (*(v101 + 8))(v99, v100);
LABEL_28:

  v102 = v0[1];
LABEL_33:

  return v102();
}

uint64_t sub_1000FA41C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {

    v2 = sub_1000FA7FC;
  }

  else
  {
    v2 = sub_1000FA540;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000FA540()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  sub_1000FB214(v2, 28271, 0xE200000000000000, v3);
  if (!v1)
  {
    v4 = *(v0 + 288);

    static Logger.updates.getter();
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 512);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Finished pre-installed app update authorization task", v9, 0xCu);
      sub_100005518(v10, &unk_10059C250);

      v12 = (v0 + 520);
      v13 = (v0 + 480);
      v21 = *(v0 + 488);
      v22 = *(v0 + 448);
    }

    else
    {
      v13 = (v0 + 520);
      v12 = (v0 + 488);
      v21 = v2;
      v22 = v6;
      v6 = *(v0 + 480);
      v2 = *(v0 + 448);
    }

    v14 = *v12;
    v15 = *v13;
    v16 = *(v0 + 504);
    v17 = *(v0 + 440);
    v18 = *(v0 + 416);
    v19 = *(v0 + 336);

    v17(v18, v19);

    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t sub_1000FA7FC()
{
  v40 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[56];
  swift_willThrow();

  type metadata accessor for Code(0);
  v0[23] = 0;
  swift_errorRetain();
  sub_1000FBCA8(&qword_10059BA68, type metadata accessor for Code);
  LOBYTE(v1) = static _ErrorCodeProtocol.~= infix(_:_:)();

  v7 = v0[36];
  if (v1)
  {

    static Logger.updates.getter();
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[36];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v11 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Dialog request ended with unknown error; potential dismiss by user by trying to return to home screen", v12, 0xCu);
      sub_100005518(v13, &unk_10059C250);
    }

    v16 = v0[45];
    v17 = v0[42];
    v18 = v0[43];

    (*(v18 + 8))(v16, v17);

    v19 = v0[1];
  }

  else
  {
    static Logger.updates.getter();
    v20 = v7;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[43];
    v24 = v0[44];
    v26 = v0[42];
    if (v23)
    {
      v38 = v0[44];
      v27 = v0[36];
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v28 = 138412546;
      v37 = v26;
      v29 = *(v27 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey);
      *(v28 + 4) = v29;
      *v35 = v29;
      *(v28 + 12) = 2082;
      swift_getErrorValue();
      v30 = v29;
      v31 = Error.localizedDescription.getter();
      v33 = sub_1001AD0D8(v31, v32, &v39);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Finished pre-installed app update authorization task with error: %{public}s", v28, 0x16u);
      sub_100005518(v35, &unk_10059C250);

      sub_100005A00(v36);

      (*(v25 + 8))(v38, v37);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1000FAD2C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1003D3F18(v6, @"AutomaticUpdateAuthorizations");
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *&v1[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID + 8];
  *&v21[0] = *&v1[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID];
  *(&v21[0] + 1) = v10;

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = sub_1000EE7C4(v22), (v12 & 1) == 0))
  {

    sub_1000B5BDC(v22);
    memset(v21, 0, sizeof(v21));
    sub_100005518(v21, &unk_10059CC50);
    return 1;
  }

  sub_10009F6D0(*(v9 + 56) + 32 * v11, v21);
  sub_1000B5BDC(v22);

  sub_100005518(v21, &unk_10059CC50);
  static Logger.updates.getter();
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = *&v13[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey];
    *(v16 + 4) = v18;
    *v17 = v18;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%@] This app has already provided an authorization response for automatic updates", v16, 0xCu);
    sub_100005518(v17, &unk_10059C250);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

unint64_t sub_1000FAFE8()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_1003D3F18(v1, v2);

  if (!v3 || (v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_100172EF8(v4), result = , !v5))
  {
    v5 = sub_1000EF17C(_swiftEmptyArrayStorage);
  }

  v7 = *(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID);
  v8 = *(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID + 8);
  v9 = *(v5 + 16);
  if (v9)
  {
    result = sub_1000EE808(*(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID), *(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID + 8));
    if ((v10 & 1) != 0 && (sub_10009F6D0(*(v5 + 56) + 32 * result, &v17), result = swift_dynamicCast(), result))
    {
      v9 = *&v16[0];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    if (v11 <= 2)
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v18 = sub_10009FAD4(0, &qword_10059CBB0);
      *&v17 = isa;
      sub_1000828A8(&v17, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001B3A08(v16, v7, v8, isUniquelyReferenced_nonNull_native);
      v14 = Dictionary._bridgeToObjectiveC()().super.isa;
      v15 = String._bridgeToObjectiveC()();
      sub_1003D4024(v1, v14, v15);
    }

    else
    {
    }

    return v11 > 2;
  }

  return result;
}

void sub_1000FB214(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = type metadata accessor for Logger();
  v8 = *(v33 - 8);
  v9 = __chkstk_darwin(v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = [a1 selectedActionIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == a2 && v17 == a3)
  {

    goto LABEL_9;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_9:
    static Logger.updates.getter();
    v27 = a4;
    v21 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v29 = 138543362;
    v30 = *&v27[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey];
    *(v29 + 4) = v30;
    *v24 = v30;
    v31 = v30;
    _os_log_impl(&_mh_execute_header, v21, v28, "[%{public}@] Enabling automatic updates", v29, 0xCu);
    goto LABEL_11;
  }

  static Logger.updates.getter();
  v20 = a4;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v21, v22))
  {
    v13 = v11;
    goto LABEL_14;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *v23 = 138543362;
  v25 = *&v20[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey];
  *(v23 + 4) = v25;
  *v24 = v25;
  v26 = v25;
  _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}@] Disabling automatic updates", v23, 0xCu);
  v13 = v11;
LABEL_11:
  sub_100005518(v24, &unk_10059C250);

LABEL_14:

  (*(v8 + 8))(v13, v33);
  sub_1000FB534();
}

void sub_1000FB534()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = CFPreferencesCopyAppValue(@"AutomaticUpdateAuthorizations", v1);

  if (!v2 || (*&v17 = v2, sub_100085D40(&unk_10059DC90), (swift_dynamicCast() & 1) == 0))
  {
    sub_1000EF17C(_swiftEmptyArrayStorage);
  }

  v3 = *(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID);
  v4 = *(v0 + OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID + 8);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v18 = sub_10009FAD4(0, &qword_10059CBB0);
  *&v17 = isa;
  sub_1000828A8(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B3A08(v16, v3, v4, isUniquelyReferenced_nonNull_native);
  v7 = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(@"AutomaticUpdateAuthorizations", v7, v8);

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = CFPreferencesCopyAppValue(v9, v10);

  if (v11)
  {
    *&v17 = v11;
    sub_100085D40(&unk_10059DC90);
    if (swift_dynamicCast())
    {
      sub_10016D4C4(v3, v4, &v17);
      sub_100005518(&v17, &unk_10059CC50);
      v12 = String._bridgeToObjectiveC()();
      v13 = Dictionary._bridgeToObjectiveC()().super.isa;

      v14 = String._bridgeToObjectiveC()();
      CFPreferencesSetAppValue(v12, v13, v14);
    }
  }

  v15 = String._bridgeToObjectiveC()();
  CFPreferencesAppSynchronize(v15);
}

uint64_t sub_1000FB998(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_1000F8B00();
}

uint64_t sub_1000FBBB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_1000FB998(v2, v3);
}

uint64_t sub_1000FBC5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1000FBCA8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000FBD08(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = &v7[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_bundleID];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v7[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_completion];
  *v14 = a5;
  *(v14 + 1) = a6;
  v41 = type metadata accessor for LogKey();
  v15 = objc_allocWithZone(v41);
  *&v15[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v16 = &v15[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v16 = 0;
  v16[1] = 0;
  swift_bridgeObjectRetain_n();

  v17 = a3;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v48 = sub_1000FBC5C;
  v49 = 0;
  v50 = sub_1001C08F0;
  v51 = 0;
  v52 = sub_1001C08F4;
  v53 = 0;
  sub_100085D40(&unk_10059F910);
  sub_1000FBFF4();
  sub_100003B3C();
  v22 = Sequence<>.joined(separator:)();
  v24 = v23;

  v46 = 0;
  v47 = 0xE000000000000000;
  v25._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v19;
  v27._object = v21;
  String.append(_:)(v27);

  v28 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v28 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = 47;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = 0xE100000000000000;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  v32._countAndFlagsBits = v22;
  v32._object = v24;
  String.append(_:)(v32);

  v33 = v47;
  v34 = &v15[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v34 = v46;
  v34[1] = v33;
  *&v15[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v15[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v45.receiver = v15;
  v45.super_class = v41;
  v35 = objc_msgSendSuper2(&v45, "init");
  v36 = v35;
  if (*&v35[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v37 = v35;
    v38 = sub_1000052DC();
  }

  *&v7[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_logKey] = v36;
  *&v7[OBJC_IVAR____TtC9appstored38PreinstalledAppUpdateAuthorizationTask_processHandle] = a4;
  v44.receiver = v7;
  v44.super_class = ObjectType;
  v39 = a4;
  return objc_msgSendSuper2(&v44, "init");
}

unint64_t sub_1000FBFF4()
{
  result = qword_10059D170;
  if (!qword_10059D170)
  {
    sub_10009F7F8(&unk_10059F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D170);
  }

  return result;
}

void sub_1000FC058(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.updates.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "cleanupAfterUninstalledApps(withBundleIDs:)", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = "_UPDATES_AUTH_MESSAGE";
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = CFPreferencesCopyAppValue(v10, v11);

    if (!v12 || (*&v40 = v12, sub_100085D40(&unk_10059DC90), (swift_dynamicCast() & 1) == 0))
    {
      v43 = 0;
    }

    v13 = String._bridgeToObjectiveC()();
    v37 = @"AutomaticUpdateAuthorizations";
    v14 = CFPreferencesCopyAppValue(@"AutomaticUpdateAuthorizations", v13);

    v38 = "Account for bag load";
    if (!v14 || (*&v40 = v14, sub_100085D40(&unk_10059DC90), (swift_dynamicCast() & 1) == 0))
    {
      v42 = 0;
    }

    v15 = 0;
    v16 = 0;
    v17 = (a1 + 40);
    while (1)
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      if (!v43)
      {
        break;
      }

      v20 = sub_1000EE808(v19, v18);
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v43;
      v39 = v43;
      v43 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001B0F98();
        v24 = v39;
      }

      sub_1000828A8((*(v24 + 56) + 32 * v22), &v40);
      sub_1001B2828(v22, v24);
      v43 = v24;

      v16 = 1;
LABEL_21:
      sub_100005518(&v40, &unk_10059CC50);
      if (v42)
      {
        v25 = sub_1000EE808(v19, v18);
        v27 = v26;

        if (v27)
        {
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v29 = v42;
          v39 = v42;
          v42 = 0x8000000000000000;
          if (!v28)
          {
            sub_1001B0F98();
            v29 = v39;
          }

          sub_1000828A8((*(v29 + 56) + 32 * v25), &v40);
          sub_1001B2828(v25, v29);
          v42 = v29;

          v15 = 1;
          goto LABEL_13;
        }
      }

      else
      {
      }

      v40 = 0u;
      v41 = 0u;
LABEL_13:
      sub_100005518(&v40, &unk_10059CC50);
      v17 += 2;
      if (!--v9)
      {
        if (v43 && !*(v43 + 16))
        {
          v43 = 0;
        }

        if (v42 && !*(v42 + 16))
        {
          v42 = 0;

          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_32:
          v30 = String._bridgeToObjectiveC()();
          if (v43)
          {

            v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v31.super.isa = 0;
          }

          v32 = String._bridgeToObjectiveC()();
          CFPreferencesSetAppValue(v30, v31.super.isa, v32);

          swift_unknownObjectRelease();
          if (v15)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_32;
          }

LABEL_35:
          if ((v15 & 1) == 0)
          {
LABEL_44:

            return;
          }

LABEL_39:
          if (v42)
          {

            v33.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v33.super.isa = 0;
          }

          v34 = String._bridgeToObjectiveC()();
          CFPreferencesSetAppValue(v37, v33.super.isa, v34);
          swift_unknownObjectRelease();
        }

        v35 = String._bridgeToObjectiveC()();
        CFPreferencesAppSynchronize(v35);

        goto LABEL_44;
      }
    }

LABEL_20:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_21;
  }
}

uint64_t sub_1000FC898(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for RepairRequest();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000FC958, 0, 0);
}

uint64_t sub_1000FC958()
{
  v1 = sub_1003D0F60(*(v0 + 32));
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 72) = v4;
    *(v0 + 80) = v6;
    if ((*(v2 + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_fairPlayStatus) & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {

      RepairRequest.init(bundleID:isBackground:reason:)();
      type metadata accessor for AppLibrary();
      *(v0 + 88) = static AppLibrary.current.getter();
      v8 = swift_task_alloc();
      *(v0 + 96) = v8;
      *v8 = v0;
      v8[1] = sub_1000FCB0C;
      v7 = *(v0 + 64);
    }

    return AppLibrary.handleRepairRequest(_:)(v7);
  }

  else
  {
    type metadata accessor for ASDError(0);
    *(v0 + 24) = 650;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000FCB0C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1000FCD38;
  }

  else
  {
    v2 = sub_1000FCC50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FCC50()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_100085D40(&unk_10059DCD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100434480;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  (*(v4 + 8))(v3, v5);
  *(v6 + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairedBundleIDs) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FCD38()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FCF3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000FD000;

  return sub_1000FC898(v6);
}

uint64_t sub_1000FD000()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id sub_1000FD1CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALDApplicationRepair();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FD294()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1000FCF3C(v2, v3, v4);
}

id sub_1000FD3A4(uint64_t a1, int a2, unint64_t a3)
{
  v19 = a3;
  HIDWORD(v17) = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085D40(&qword_10059EB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100434770;
  v20 = 0x64695F79726F7473;
  v21 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v20 = 0xD000000000000016;
  v21 = 0x800000010044DF70;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Int64;
  *(inited + 144) = a1;
  v20 = 0xD000000000000010;
  v21 = 0x800000010044DF90;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = BYTE4(v17);
  v20 = 0xD000000000000011;
  v21 = 0x800000010044DFB0;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 0;
  sub_1000EF040(inited);
  swift_setDeallocating();
  sub_100085D40(&unk_10059CDF0);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(v18);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithPropertyValues:isa];

  v15 = v14;
  sub_1000FD674(v19);

  return v15;
}

uint64_t sub_1000FD674(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000FD9F0())
  {

    v11 = sub_1000FDAC0();
    sub_100154A50(a1);
    return sub_1000FDE24(v11);
  }

  else
  {
    static Logger.skanner.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Story is not sampled", v9, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1000FD7F0(char a1)
{
  v13 = &type metadata for Bool;
  v12[0] = a1;
  sub_1000FE388(v12, v10);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100005B60(v10, v11);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    sub_100005A00(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  sub_10023E000(v1, v7, v8);
  swift_unknownObjectRelease();

  return sub_100005518(v12, &unk_10059CC50);
}

uint64_t sub_1000FD9F0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_10023E0F8(v0, v1);

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000828A8(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100085D40(&unk_10059CC50);
  return swift_dynamicCast() & v4;
}

void *sub_1000FDAC0()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10023E0F8(v0, v2);

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000828A8(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_100085D40(&unk_10059CC50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v10;
  if (v10 >> 60 == 15)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v9;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100085D40(&qword_10059E4F0);
  sub_1000FE40C(&qword_10059D2C8, &qword_10059D2D0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000A7F1C(v5, v4);

  return *&v8[0];
}

uint64_t sub_1000FDE24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *&v18 = a1;
  sub_100085D40(&qword_10059E4F0);
  sub_1000FE40C(&qword_10059D2B8, &qword_10059D2C0);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = &type metadata for Data;
    *&v18 = v5;
    *(&v18 + 1) = v7;
  }

  sub_1000FE388(&v18, v16);
  v8 = v17;
  if (v17)
  {
    v9 = sub_100005B60(v16, v17);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    sub_1000FE3F8(v5, v7);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, v8);
    sub_100005A00(v16);
  }

  else
  {
    sub_1000FE3F8(v5, v7);
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  sub_10023E000(v2, v13, v14);
  swift_unknownObjectRelease();

  sub_1000A7F1C(v5, v7);
  return sub_100005518(&v18, &unk_10059CC50);
}

uint64_t sub_1000FE388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&unk_10059CC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE3F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100088C88(a1, a2);
  }

  return a1;
}

uint64_t sub_1000FE40C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(&qword_10059E4F0);
    sub_1000FE494(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FE494(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SkannerEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000FE4D8()
{
  sub_1001747A4(0, 5, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_1001747A4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 0x64695F79726F7473;
  v4[5] = 0xE800000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_1001747A4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0xD000000000000016;
  v7[5] = 0x800000010044DF70;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1001747A4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v9];
  v11[4] = 0xD000000000000010;
  v11[5] = 0x800000010044DF90;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_1001747A4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  v14[4] = 0xD000000000000011;
  v14[5] = 0x800000010044DFB0;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1001747A4((v15 > 1), v16 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  strcpy(v17 + 32, "pending_events");
  v17[47] = -18;
  return result;
}

id sub_1000FE914()
{
  result = [objc_allocWithZone(type metadata accessor for StoreKitExternalGateway()) init];
  qword_1005AB100 = result;
  return result;
}

uint64_t sub_1000FE9A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_100172EF8(a1);
  if (v15 && (sub_100100430(v15, v37), (v16 = v38) != 0))
  {
    v34[1] = v7;
    v35 = a2;
    v34[0] = v3;
    v17 = v40;
    v18 = v39;
    v19 = v37[0];
    v20 = v37[1];
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v36[0] = v19;
    v36[1] = v20;
    v36[2] = v16;
    v36[3] = v18;
    v36[4] = v17;
    sub_100100810();
    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v27 = v26;

    v41[0] = v20;
    v41[1] = v16;
    sub_1000BC3E4(v41);
    v42 = v17;
    sub_100005518(&v42, &qword_10059D308);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v34[0];
    v31 = v35;
    v29[4] = v34[0];
    v29[5] = v31;
    v29[6] = a3;
    v29[7] = v25;
    v29[8] = v27;
    v32 = v30;

    sub_10019F02C(0, 0, v14, &unk_100436798, v29);
  }

  else
  {
    static Logger.storeKit.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1001AD0D8(a2, a3, v36);
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to extract token family information from %s buy response", v23, 0xCu);
      sub_100005A00(v24);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000FEEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v9 = sub_100085D40(&unk_10059DC70);
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000FEFF4, 0, 0);
}

uint64_t sub_1000FEFF4()
{
  v21 = v0;
  static Logger.storeKit.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  if (v3)
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001AD0D8(v8, v7, &v20);
    _os_log_impl(&_mh_execute_header, v1, v2, "Handing off external purchase token family info for %s", v9, 0xCu);
    sub_100005A00(v10);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[29] = v11;
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[22];
  v19 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[30] = isa;
  v16 = String._bridgeToObjectiveC()();
  v0[31] = v16;
  v0[2] = v0;
  v0[3] = sub_1000FF2E0;
  swift_continuation_init();
  v0[17] = v14;
  v17 = sub_100005F38(v0 + 14);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v12 + 32))(v17, v13, v14);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100147F5C;
  v0[13] = &unk_10050DAA0;
  [v19 handleNewTokenFamily:isa bundleID:v16 withReply:?];
  (*(v12 + 8))(v17, v14);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000FF2E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1000FF470;
  }

  else
  {
    v2 = sub_1000FF3F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FF3F0()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FF470()
{
  v18 = v0;
  v1 = v0[31];
  v2 = v0[30];
  swift_willThrow();

  static Logger.storeKit.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[25];
  if (v5)
  {
    v15 = v0[27];
    v16 = v0[29];
    v10 = v0[18];
    v9 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1001AD0D8(v10, v9, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to hand off new token family for %s", v11, 0xCu);
    sub_100005A00(v12);

    v16(v15, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000FF754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100085D40(&qword_10059D330);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100005B60(a1, a1[3]);
  sub_100100B34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000FF8E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7079546E656B6F74;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x800000010044BE80;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7079546E656B6F74;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0x800000010044BE80;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000FF998()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FFA24()
{
  String.hash(into:)();
}

Swift::Int sub_1000FFA9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FFB24@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100508C28, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000FFB84(unint64_t *a1@<X8>)
{
  v2 = 0x800000010044BE80;
  v3 = 0xD000000000000015;
  if (*v1)
  {
    v3 = 0x7079546E656B6F74;
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000FFBCC()
{
  if (*v0)
  {
    return 0x7079546E656B6F74;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1000FFC10@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100508C28, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000FFC74(uint64_t a1)
{
  v2 = sub_100100B34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FFCB0(uint64_t a1)
{
  v2 = sub_100100B34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FFD0C(void *a1)
{
  v3 = v1;
  v5 = sub_100085D40(&qword_10059D310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100005B60(a1, a1[3]);
  sub_100100A08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (*(*(v3 + 32) + 16))
    {
      v11 = *(v3 + 32);
      v10[15] = 3;
      sub_100085D40(&qword_10059D308);
      sub_100100A5C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000FFF34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10010001C()
{
  String.hash(into:)();
}

Swift::Int sub_1001000F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001001D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100100EF8(*a1);
  *a2 = result;
  return result;
}

void sub_100100204(unint64_t *a1@<X8>)
{
  v2 = 0xEE006E656B6F5465;
  v3 = 0x7669746341736168;
  v4 = 0x800000010044BEC0;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0x746E456E656B6F74;
    v4 = 0xEC00000073656972;
  }

  if (*v1)
  {
    v3 = 0x6D61466E656B6F74;
    v2 = 0xED00006449796C69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1001002A8()
{
  v1 = 0x7669746341736168;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746E456E656B6F74;
  }

  if (*v0)
  {
    v1 = 0x6D61466E656B6F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100100348@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100100EF8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10010037C(uint64_t a1)
{
  v2 = sub_100100A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001003B8(uint64_t a1)
{
  v2 = sub_100100A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100100430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_1000EE808(0x6D61466E656B6F74, 0xED00006449796C69);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10009F6D0(*(a1 + 56) + 32 * v4, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v30;
  if (!*(a1 + 16) || (v7 = v29, v8 = sub_1000EE808(0xD000000000000013, 0x800000010044BEC0), (v9 & 1) == 0) || (sub_10009F6D0(*(a1 + 56) + 32 * v8, v31), (swift_dynamicCast() & 1) == 0))
  {

LABEL_13:

    v17 = 0;
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v10 = v29;
  if (*(a1 + 16) && (v11 = sub_1000EE808(0x746E456E656B6F74, 0xEC00000073656972), (v12 & 1) != 0))
  {
    sub_10009F6D0(*(a1 + 56) + 32 * v11, v31);

    sub_100085D40(&unk_10059EB00);
    result = swift_dynamicCast();
    if (result)
    {
      v14 = v29;
      v15 = v29[2];
      if (!v15)
      {
LABEL_11:
        v16 = _swiftEmptyArrayStorage;
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_18:
  v18 = 0;
  v16 = _swiftEmptyArrayStorage;
  do
  {
    v19 = v18;
    while (1)
    {
      if (v19 >= v14[2])
      {
        __break(1u);
        return result;
      }

      v20 = v14[v19 + 4];
      if (*(v20 + 16))
      {
        break;
      }

LABEL_21:
      if (v15 == ++v19)
      {
        goto LABEL_12;
      }
    }

    v21 = sub_1000EE808(0xD000000000000015, 0x800000010044BE80);
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_10009F6D0(*(v20 + 56) + 32 * v21, v31);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (!*(v20 + 16) || (v23 = sub_1000EE808(0x7079546E656B6F74, 0xE900000000000065), (v24 & 1) == 0))
    {

LABEL_20:

      goto LABEL_21;
    }

    sub_10009F6D0(*(v20 + 56) + 32 * v23, v31);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001ACB98(0, *(v16 + 2) + 1, 1, v16);
      v16 = result;
    }

    v26 = *(v16 + 2);
    v25 = *(v16 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1001ACB98((v25 > 1), v26 + 1, 1, v16);
      v27 = v26 + 1;
      v16 = result;
    }

    v18 = v19 + 1;
    *(v16 + 2) = v27;
    v28 = &v16[32 * v26];
    *(v28 + 4) = v29;
    *(v28 + 5) = v30;
    *(v28 + 6) = v29;
    *(v28 + 7) = v30;
  }

  while (v15 - 1 != v19);
LABEL_12:

  v17 = 1;
LABEL_14:
  *a2 = v17;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v10;
  a2[4] = v16;
  return result;
}

unint64_t sub_100100810()
{
  result = qword_10059D300;
  if (!qword_10059D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D300);
  }

  return result;
}

uint64_t sub_100100864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100085384;

  return sub_1000FEEBC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100100968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001009B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100100A08()
{
  result = qword_10059D318;
  if (!qword_10059D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D318);
  }

  return result;
}

unint64_t sub_100100A5C()
{
  result = qword_10059D320;
  if (!qword_10059D320)
  {
    sub_10009F7F8(&qword_10059D308);
    sub_100100AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D320);
  }

  return result;
}

unint64_t sub_100100AE0()
{
  result = qword_10059D328;
  if (!qword_10059D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D328);
  }

  return result;
}

unint64_t sub_100100B34()
{
  result = qword_10059D338;
  if (!qword_10059D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SkannerEvent.AdType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SkannerEvent.AdType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100100CEC()
{
  result = qword_10059D340;
  if (!qword_10059D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D340);
  }

  return result;
}

unint64_t sub_100100D44()
{
  result = qword_10059D348;
  if (!qword_10059D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D348);
  }

  return result;
}

unint64_t sub_100100D9C()
{
  result = qword_10059D350;
  if (!qword_10059D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D350);
  }

  return result;
}

unint64_t sub_100100DF4()
{
  result = qword_10059D358;
  if (!qword_10059D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D358);
  }

  return result;
}

unint64_t sub_100100E4C()
{
  result = qword_10059D360;
  if (!qword_10059D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D360);
  }

  return result;
}

unint64_t sub_100100EA4()
{
  result = qword_10059D368;
  if (!qword_10059D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D368);
  }

  return result;
}

unint64_t sub_100100EF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100508C78, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100100F44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100103864(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100101074(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = 0xE900000000000064;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9appstored10ASEMetrics_enqueueTransactionID];
  *v8 = 0xD000000000000025;
  *(v8 + 1) = 0x800000010044F3F0;
  v9 = &v3[OBJC_IVAR____TtC9appstored10ASEMetrics_flushTransactionID];
  *v9 = 0xD000000000000023;
  *(v9 + 1) = 0x800000010044F420;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v6 = 0xE900000000000065;
      v10 = 0x72696673736F7243;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v6 = 0xE300000000000000;
      v10 = 5590596;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      v10 = 0x65726F7473707041;
LABEL_10:
      v11 = a2[3];
      v12 = a2[4];
      sub_100005B60(a2, v11);
      v13 = sub_1000C4BB0(v11, v12);
      v14 = objc_allocWithZone(AMSMetrics);
      v15 = String._bridgeToObjectiveC()();

      v16 = [v14 initWithContainerID:v15 bag:v13];

      swift_unknownObjectRelease();
      *&v3[OBJC_IVAR____TtC9appstored10ASEMetrics_amsMetrics] = v16;
      [v16 setFlushTimerEnabled:0];
      v17 = &v3[OBJC_IVAR____TtC9appstored10ASEMetrics_shortName];
      *v17 = v10;
      v17[1] = v6;
      v20.receiver = v3;
      v20.super_class = ObjectType;
      v18 = objc_msgSendSuper2(&v20, "init");
      sub_100005A00(a2);
      return v18;
    }

    if (a1 == 1)
    {
      v6 = 0xE600000000000000;
      v10 = 0x656461637241;
      goto LABEL_10;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1001012A4(uint64_t a1, char a2)
{
  *(v3 + 289) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = sub_100085D40(&qword_10059D3B8);
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 184) = v5;
  *(v3 + 192) = *(v5 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1001013E8, 0, 0);
}

uint64_t sub_1001013E8()
{
  v41 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v0[19];
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = v0[19];
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_3:
      v3 = objc_opt_self();
      v0[28] = v3;
      v4 = &v2[OBJC_IVAR____TtC9appstored10ASEMetrics_enqueueTransactionID];
      v0[29] = *&v2[OBJC_IVAR____TtC9appstored10ASEMetrics_enqueueTransactionID];
      v0[30] = *(v4 + 1);
      v5 = String._bridgeToObjectiveC()();
      sub_1003204A0(v3, v5);

      static Logger.metrics.getter();
      v6 = v2;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[19];
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v40 = v11;
        *v10 = 136446466;
        *(v10 + 4) = sub_1001AD0D8(*(v9 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v9 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v40);
        *(v10 + 12) = 2048;
        if (v1 >> 62)
        {
          v12 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = v0[27];
        v18 = v0[23];
        v19 = v0[24];
        *(v10 + 14) = v12;

        _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Enqueueing %ld event(s)", v10, 0x16u);
        sub_100005A00(v11);

        v16 = *(v19 + 8);
        v16(v17, v18);
      }

      else
      {
        v13 = v0[27];
        v14 = v0[23];
        v15 = v0[24];

        v16 = *(v15 + 8);
        v16(v13, v14);
      }

      v0[31] = v16;
      v21 = v0[21];
      v20 = v0[22];
      v22 = v0[20];
      v23 = *(v0[19] + OBJC_IVAR____TtC9appstored10ASEMetrics_amsMetrics);
      sub_10009FAD4(0, &qword_10059D3C0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v25 = [v23 promiseForEnqueueingEvents:isa];
      v0[32] = v25;

      v0[2] = v0;
      v0[7] = v0 + 36;
      v0[3] = sub_100101948;
      swift_continuation_init();
      v0[17] = v22;
      v26 = sub_100005F38(v0 + 14);
      sub_100085D40(&unk_10059DE80);
      CheckedContinuation.init(continuation:function:)();
      (*(v21 + 32))(v26, v20, v22);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1001A0AD0;
      v0[13] = &unk_10050DCF0;
      [v25 resultWithTimeout:v0 + 10 completion:120.0];
      (*(v21 + 8))(v26, v22);

      return _swift_continuation_await(v0 + 2);
    }
  }

  static Logger.metrics.getter();
  v28 = v2;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[26];
  v33 = v0[23];
  v34 = v0[24];
  if (v31)
  {
    v35 = v0[19];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_1001AD0D8(*(v35 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v35 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v40);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] No AMSMetricsEvents to enqueue", v36, 0xCu);
    sub_100005A00(v37);
  }

  (*(v34 + 8))(v32, v33);

  v38 = v0[1];

  return v38();
}

uint64_t sub_100101948()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100101D44;
  }

  else
  {
    v2 = sub_100101A58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100101A58()
{
  if (*(v0 + 289) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_100101B80;

    return sub_100102684();
  }

  else
  {

    v3 = *(v0 + 224);
    v4 = String._bridgeToObjectiveC()();
    sub_1003205AC(v3, v4);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100101B80()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100101FAC;
  }

  else
  {
    v2 = sub_100101C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100101C94()
{
  v1 = *(v0 + 224);
  v2 = String._bridgeToObjectiveC()();
  sub_1003205AC(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100101D44()
{
  v23 = v0;
  swift_willThrow();
  v1 = v0[19];
  static Logger.metrics.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[25];
  v9 = v0[23];
  if (v5)
  {
    v21 = v0[31];
    v10 = v0[19];
    v20 = v0[25];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v9;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1001AD0D8(*(v10 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v10 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v22);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Failed to enqueue events due to error: %{public}@", v11, 0x16u);
    sub_100086A24(v12);

    sub_100005A00(v13);

    v21(v20, v19);
  }

  else
  {

    v7(v8, v9);
  }

  v15 = v0[28];
  v16 = String._bridgeToObjectiveC()();
  sub_1003205AC(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100101FAC()
{
  v23 = v0;
  v1 = v0[19];
  static Logger.metrics.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[25];
  v9 = v0[23];
  if (v5)
  {
    v21 = v0[31];
    v10 = v0[19];
    v20 = v0[25];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v9;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1001AD0D8(*(v10 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v10 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v22);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Failed to enqueue events due to error: %{public}@", v11, 0x16u);
    sub_100086A24(v12);

    sub_100005A00(v13);

    v21(v20, v19);
  }

  else
  {

    v7(v8, v9);
  }

  v15 = v0[28];
  v16 = String._bridgeToObjectiveC()();
  sub_1003205AC(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10010239C(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return _swift_task_switch(sub_10010242C, 0, 0);
}

uint64_t sub_10010242C()
{
  v1 = *(v0 + 16);
  sub_100085D40(&qword_10059C4A0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_100435310;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100102510;
  v5 = *(v0 + 56);

  return sub_1001012A4(v2, v5);
}

uint64_t sub_100102510()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100102684()
{
  v1[19] = v0;
  v2 = sub_100085D40(&qword_10059D3C8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001027B8, 0, 0);
}

uint64_t sub_1001027B8()
{
  v23 = v0;
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[27] = v2;
  v3 = &v1[OBJC_IVAR____TtC9appstored10ASEMetrics_flushTransactionID];
  v0[28] = *&v1[OBJC_IVAR____TtC9appstored10ASEMetrics_flushTransactionID];
  v0[29] = *(v3 + 1);
  v4 = String._bridgeToObjectiveC()();
  sub_1003204A0(v2, v4);

  static Logger.metrics.getter();
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v12 = v0[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1001AD0D8(*(v12 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v12 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v22);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Flushing events", v13, 0xCu);
    sub_100005A00(v14);
  }

  v15 = *(v11 + 8);
  v15(v9, v10);
  v0[30] = v15;
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[20];
  v19 = [*(v0[19] + OBJC_IVAR____TtC9appstored10ASEMetrics_amsMetrics) flush];
  v0[31] = v19;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100102AF8;
  swift_continuation_init();
  v0[17] = v18;
  v20 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059CBB0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v17 + 32))(v20, v16, v18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10010319C;
  v0[13] = &unk_10050DD18;
  [v19 resultWithTimeout:120.0 completion:?];
  (*(v17 + 8))(v20, v18);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100102AF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100102E4C;
  }

  else
  {
    v2 = sub_100102C08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100102C08()
{
  v25 = v0;
  v2 = v0[18];
  v1 = v0[19];
  static Logger.metrics.getter();
  v3 = v1;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[25];
  v11 = v0[23];
  if (v7)
  {
    v23 = v0[30];
    v12 = v0[19];
    v22 = v0[25];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v11;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_1001AD0D8(*(v12 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName), *(v12 + OBJC_IVAR____TtC9appstored10ASEMetrics_shortName + 8), &v24);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v4;
    *v14 = v4;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Flushed %@ event(s)", v13, 0x16u);
    sub_100086A24(v14);

    sub_100005A00(v15);

    v23(v22, v21);
  }

  else
  {

    v9(v10, v11);
  }

  v17 = v0[27];
  v18 = String._bridgeToObjectiveC()();
  sub_1003205AC(v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100102E4C()
{
  v1 = v0[31];
  v2 = v0[27];
  swift_willThrow();

  v3 = String._bridgeToObjectiveC()();
  sub_1003205AC(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001030AC(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_10009FAD4(0, &qword_10059D3C0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000DEF3C;

  return sub_1001012A4(v7, a2);
}

void sub_10010319C(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059D3C8);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059D3C8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001033C0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_100102684();
}

uint64_t sub_100103560()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1001033C0(v2, v3);
}

uint64_t sub_10010360C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1001030AC(v2, v3, v5, v4);
}

uint64_t sub_1001036D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100085384;

  return sub_10010239C(v2, v3, v5, v4);
}

unint64_t sub_1001037A8()
{
  result = qword_10059D3D0;
  if (!qword_10059D3D0)
  {
    sub_10009F7F8(&qword_10059D3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D3D0);
  }

  return result;
}

unint64_t sub_100103810()
{
  result = qword_10059D3E0;
  if (!qword_10059D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D3E0);
  }

  return result;
}

unint64_t sub_100103864(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

id sub_10010387C()
{
  result = [objc_allocWithZone(type metadata accessor for AppInstallMetrics()) init];
  qword_1005AB108 = result;
  return result;
}

uint64_t sub_100103908@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppInstallType();
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 1) <= 0x15u && ((0x3BFE7Du >> (a1 - 1)))
  {
    v8 = **(&off_10050DFB8 + (a1 - 1));
    v9 = *(v5 + 104);
    v13 = v5;
    v9(v7, v8, v4);
    (*(v13 + 32))(a2, v7, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4);
  }
}

char *sub_100103A8C()
{
  v0 = type metadata accessor for AnyValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of Bag.subscript.getter();
  if (!v4)
  {
    return &off_100508D38;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v20 = v7;
    v8 = *(v6 + 64);
    v19[1] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v10 = *(v6 + 56);
    v11 = (v6 - 8);
    v12 = _swiftEmptyArrayStorage;
    v19[2] = v6;
    v7(v3, v9, v0);
    while (1)
    {
      v13 = AnyValue.int.getter();
      v15 = v14;
      (*v11)(v3, v0);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001ACCA4(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_1001ACCA4((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        *&v12[8 * v17 + 32] = v13;
      }

      v9 += v10;
      if (!--v5)
      {
        break;
      }

      v20(v3, v9, v0);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

char *sub_100103C9C()
{
  v0 = type metadata accessor for AnyValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of Bag.subscript.getter();
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v20 = v7;
    v8 = *(v6 + 64);
    v19[1] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v10 = *(v6 + 56);
    v11 = (v6 - 8);
    v12 = _swiftEmptyArrayStorage;
    v19[2] = v6;
    v7(v3, v9, v0);
    while (1)
    {
      v13 = AnyValue.int.getter();
      v15 = v14;
      (*v11)(v3, v0);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001ACCA4(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_1001ACCA4((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        *&v12[8 * v17 + 32] = v13;
      }

      v9 += v10;
      if (!--v5)
      {
        break;
      }

      v20(v3, v9, v0);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_100103EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Logger();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100103F78, 0, 0);
}

uint64_t sub_100103F78()
{
  v23 = v0;
  v1 = v0[2];
  static Logger.appUsage.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  if (v5)
  {
    v10 = v0[3];
    v9 = v0[4];
    v21 = v0[9];
    v11 = v0[2];
    v20 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2082;
    v15 = v11;
    *(v12 + 14) = sub_1001AD0D8(v10, v9, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "[AppInstallMetrics/%@][%{public}s] Sending app install event", v12, 0x16u);
    sub_100005518(v13, &unk_10059C250);

    sub_100005A00(v14);

    v16 = *(v7 + 8);
    v16(v21, v20);
  }

  else
  {

    v16 = *(v7 + 8);
    v16(v6, v8);
  }

  v0[10] = v16;
  type metadata accessor for AppInstallationMetricsClient();
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1001041B0;
  v18 = v0[5];

  return static AppInstallationMetricsClient.addInstall(_:)(v18);
}

uint64_t sub_1001041B0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100104304, 0, 0);
  }
}

uint64_t sub_100104304()
{
  v21 = v0;
  v1 = v0[2];
  static Logger.appUsage.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v9 = v0[3];
    v17 = v0[4];
    v19 = v0[10];
    v10 = v0[2];
    v18 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    v14 = v10;
    *(v11 + 14) = sub_1001AD0D8(v9, v17, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "[AppInstallMetrics/%@][%{public}s] Sent app install event", v11, 0x16u);
    sub_100005518(v12, &unk_10059C250);

    sub_100005A00(v13);

    v19(v18, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001046C4(int a1, uint64_t a2, uint64_t a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v6[5] = v15;
  v6[6] = v13;
  v16 = a4;
  v17 = a6;
  v18 = swift_task_alloc();
  v6[7] = v18;
  *v18 = v6;
  v18[1] = sub_1001047FC;

  return (sub_100104ADC)(v11, v13, a2, a3, v15, v16);
}

uint64_t sub_1001047FC(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100104A04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100085384;

  return sub_1001046C4(v2, v7, v3, v4, v5, v6);
}

uint64_t sub_100104ADC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 200) = a2;
  *(v6 + 208) = a4;
  *(v6 + 793) = a3;
  *(v6 + 192) = a1;
  sub_100085D40(&qword_10059C3E0);
  *(v6 + 232) = swift_task_alloc();
  v7 = type metadata accessor for AppInstallationEvent();
  *(v6 + 240) = v7;
  v8 = *(v7 - 8);
  *(v6 + 248) = v8;
  *(v6 + 256) = *(v8 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v9 = type metadata accessor for AppInstallationEligibility();
  *(v6 + 280) = v9;
  *(v6 + 288) = *(v9 - 8);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 312) = v10;
  *(v6 + 320) = *(v10 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v6 + 344) = v11;
  *(v6 + 352) = *(v11 - 8);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  v12 = type metadata accessor for AccountIdentity();
  *(v6 + 448) = v12;
  v13 = *(v12 - 8);
  *(v6 + 456) = v13;
  *(v6 + 464) = *(v13 + 64);
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v14 = type metadata accessor for AppInstallType();
  *(v6 + 488) = v14;
  *(v6 + 496) = *(v14 - 8);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  sub_100085D40(&qword_10059D410);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  v15 = type metadata accessor for BagService.PermittedDataOrigin();
  *(v6 + 560) = v15;
  *(v6 + 568) = *(v15 - 8);
  *(v6 + 576) = swift_task_alloc();
  v16 = type metadata accessor for AccountClientIdentifier();
  *(v6 + 584) = v16;
  *(v6 + 592) = *(v16 - 8);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  v17 = type metadata accessor for ClientInfo();
  *(v6 + 616) = v17;
  *(v6 + 624) = *(v17 - 8);
  *(v6 + 632) = swift_task_alloc();

  return _swift_task_switch(sub_100104FF8, 0, 0);
}

uint64_t sub_100104FF8()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[80] = sub_1000D6694(v1);
  (*(v2 + 8))(v1, v3);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_100105194;
  v9 = v0[72];

  return sub_1000C5300((v0 + 2), 0, 0, v9);
}

uint64_t sub_100105194()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100105304, 0, 0);
}

id sub_100105304()
{
  v126 = v0;
  v1 = v0;
  sub_100005B60(v0 + 2, v0[5]);
  if ((dispatch thunk of Bag.subscript.getter() & 1) == 0)
  {
    v28 = v0[28];
    static Logger.appUsage.getter();
    v29 = v28;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v1[44];
    v33 = v1[45];
    v35 = v1[43];
    if (v32)
    {
      v123 = v1[45];
      v36 = v1[28];
      v38 = v1[24];
      v37 = v1[25];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v120 = v1;
      v41 = swift_slowAlloc();
      v125[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v36;
      *v40 = v36;
      *(v39 + 12) = 2082;
      v42 = v36;
      *(v39 + 14) = sub_1001AD0D8(v38, v37, v125);
      v43 = "[AppInstallMetrics/%@][%{public}s] Skipping app install event due to reporting being disabled in bag";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v30, v31, v43, v39, 0x16u);
      sub_100005518(v40, &unk_10059C250);

      sub_100005A00(v41);
      v1 = v120;

      (*(v34 + 8))(v123, v35);
      goto LABEL_12;
    }

LABEL_11:

    (*(v34 + 8))(v33, v35);
    goto LABEL_12;
  }

  v2 = objc_allocWithZone(ApplicationProxy);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithBundleID:v3];
  v0[82] = v4;

  if (!v4)
  {
    v44 = v0[28];
    static Logger.appUsage.getter();
    v45 = v44;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v30, v31);
    v33 = v1[46];
    v35 = v1[43];
    v34 = v1[44];
    if (v46)
    {
      v123 = v1[46];
      v47 = v1[28];
      v49 = v1[24];
      v48 = v1[25];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v120 = v1;
      v41 = swift_slowAlloc();
      v125[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v47;
      *v40 = v47;
      *(v39 + 12) = 2082;
      v50 = v47;
      *(v39 + 14) = sub_1001AD0D8(v49, v48, v125);
      v43 = "[AppInstallMetrics/%@][%{public}s] Skipping app install event due to proxy lookup failure";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = v0[69];
  v6 = v0[68];
  v8 = v1[61];
  v7 = v1[62];
  sub_100103908(*(v1 + 793), v1[69]);
  sub_100108C94(v5, v6);
  if ((*(v7 + 48))(v6, 1, v8) != 1)
  {
    v121 = v1;
    (*(v1[62] + 32))(v1[67], v1[68], v1[61]);
    v124 = v4;
    if (sub_1003D1560(v4))
    {
      goto LABEL_27;
    }

    v53 = *(v1[62] + 104);
    v53(v121[66], enum case for AppInstallType.upp(_:), v121[61]);
    sub_100108D04();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v121[10] == v121[12] && v121[11] == v121[13])
    {
      v54 = 1;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v55 = *(v121[62] + 8);
    v55(v121[66], v121[61]);

    if (v54)
    {
      goto LABEL_27;
    }

    v53(v121[65], enum case for AppInstallType.tvProviderBuy(_:), v121[61]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v56 = v121[65];
    v57 = v121[61];
    if (v121[14] == v121[16] && v121[15] == v121[17])
    {
      v58 = v121[65];
      v59 = v121[61];
    }

    else
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v55(v56, v57);

      if (v117)
      {
        goto LABEL_27;
      }

      v53(v121[64], enum case for AppInstallType.tvProviderUpdate(_:), v121[61]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v85 = v121[64];
      v86 = v121[61];
      if (v121[18] != v121[20] || v121[19] != v121[21])
      {
        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v55(v85, v86);

        if ((v87 & 1) == 0)
        {
          v62 = v124;
          v88 = sub_1003D2234(v124);
          if (v88)
          {
            v89 = v88;
            v1 = v121;
          }

          else
          {
            v90 = sub_1003D2360(v124);
            v1 = v121;
            if (!v90)
            {
              goto LABEL_46;
            }

            v89 = v90;
          }

          result = [objc_opt_self() defaultStore];
          if (result)
          {
            v60 = result;
            v61 = [result ams_iTunesAccountWithDSID:v89];

LABEL_29:
            v1[83] = v61;

            if (v61)
            {
              v63 = v61;
              v64 = [v63 ams_DSID];
              if (v64)
              {
                v65 = v64;
                v1[84] = [v64 longLongValue];

                v66 = [v63 identifier];
                if (v66)
                {
                  v125[0] = 0;
                  v125[1] = 0;
                  v67 = v66;
                  static String._conditionallyBridgeFromObjectiveC(_:result:)();

                  v1[85] = 0;
                  v1[86] = 0;
                }
              }

              v68 = v1[28];
              static Logger.appUsage.getter();
              v69 = v68;

              v70 = Logger.logObject.getter();
              v71 = static os_log_type_t.default.getter();

              v72 = os_log_type_enabled(v70, v71);
              v73 = v1[69];
              v74 = v1[67];
              v75 = v1[61];
              v76 = v1[62];
              v77 = v1[44];
              v114 = v1[43];
              v118 = v1[49];
              if (v72)
              {
                v78 = v121[28];
                v108 = v73;
                v111 = v63;
                v79 = v121[25];
                v80 = v121[24];
                v105 = v74;
                v81 = swift_slowAlloc();
                v104 = v75;
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v125[0] = v83;
                *v81 = 138412546;
                *(v81 + 4) = v78;
                *v82 = v78;
                *(v81 + 12) = 2082;
                v84 = v78;
                v1 = v121;
                *(v81 + 14) = sub_1001AD0D8(v80, v79, v125);
                _os_log_impl(&_mh_execute_header, v70, v71, "[AppInstallMetrics/%@][%{public}s] Skipping because we could not determine the account identifier", v81, 0x16u);
                sub_100005518(v82, &unk_10059C250);

                sub_100005A00(v83);

                (*(v77 + 8))(v118, v114);
                (*(v76 + 8))(v105, v104);
                sub_100005518(v108, &qword_10059D410);
                goto LABEL_12;
              }

              (*(v77 + 8))(v118, v114);
LABEL_49:
              (*(v76 + 8))(v74, v75);
              sub_100005518(v73, &qword_10059D410);
              goto LABEL_12;
            }

LABEL_46:
            v91 = v1[28];
            static Logger.appUsage.getter();
            v92 = v91;

            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();

            v95 = os_log_type_enabled(v93, v94);
            v73 = v1[69];
            v74 = v1[67];
            v75 = v1[61];
            v76 = v1[62];
            v96 = v1[48];
            v97 = v1[44];
            v122 = v1[43];
            if (v95)
            {
              v115 = v1[48];
              v119 = v1[69];
              v98 = v1[28];
              v99 = v1[24];
              v106 = v1[25];
              v112 = v1[67];
              v100 = swift_slowAlloc();
              v109 = v75;
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v125[0] = v102;
              *v100 = 138412546;
              *(v100 + 4) = v98;
              *v101 = v98;
              *(v100 + 12) = 2082;
              v103 = v98;
              *(v100 + 14) = sub_1001AD0D8(v99, v106, v125);
              _os_log_impl(&_mh_execute_header, v93, v94, "[AppInstallMetrics/%@][%{public}s] Skipping because we could not determine the account", v100, 0x16u);
              sub_100005518(v101, &unk_10059C250);

              sub_100005A00(v102);

              (*(v97 + 8))(v115, v122);
              (*(v76 + 8))(v112, v109);
              sub_100005518(v119, &qword_10059D410);
              goto LABEL_12;
            }

            (*(v97 + 8))(v96, v122);
            goto LABEL_49;
          }

LABEL_51:
          __break(1u);
          return result;
        }

LABEL_27:
        result = [objc_opt_self() defaultStore];
        if (result)
        {
          v60 = result;
          v61 = [result ams_activeiTunesAccount];
          v1 = v121;
          v62 = v124;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_51;
      }

      v58 = v121[64];
      v59 = v121[61];
    }

    v55(v58, v59);

    goto LABEL_27;
  }

  v9 = v1[28];
  sub_100005518(v1[68], &qword_10059D410);
  static Logger.appUsage.getter();
  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[69];
  v15 = v1[47];
  v17 = v1[43];
  v16 = v1[44];
  if (v13)
  {
    v113 = v1[47];
    v116 = v1[43];
    v18 = v1[28];
    v107 = *(v1 + 793);
    v19 = v1[24];
    v20 = v1[25];
    v21 = swift_slowAlloc();
    v110 = v14;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v21 = 138412802;
    *(v21 + 4) = v18;
    *v22 = v18;
    v125[0] = v23;
    *(v21 + 12) = 2082;
    v24 = v18;
    *(v21 + 14) = sub_1001AD0D8(v19, v20, v125);
    *(v21 + 22) = 2082;
    *(v1 + 792) = v107;
    type metadata accessor for AppInstallType(0);
    v25 = String.init<A>(describing:)();
    v27 = sub_1001AD0D8(v25, v26, v125);

    *(v21 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v11, v12, "[AppInstallMetrics/%@][%{public}s] Skipping unsupported installType: %{public}s)", v21, 0x20u);
    sub_100005518(v22, &unk_10059C250);

    swift_arrayDestroy();

    (*(v16 + 8))(v113, v116);
    sub_100005518(v110, &qword_10059D410);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    sub_100005518(v14, &qword_10059D410);
  }

LABEL_12:
  sub_100005A00((v1 + 2));

  v51 = v1[1];

  return v51(0);
}

uint64_t sub_100107364(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[91] = a2;

  return _swift_task_switch(sub_100107488, 0, 0);
}

uint64_t sub_100107488()
{
  v127 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 64);

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    v6 = sub_1001704B4(v3, v4);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 224);
  static Logger.appUsage.getter();

  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v107 = *(v0 + 696);
    v111 = *(v0 + 352);
    v115 = *(v0 + 344);
    v118 = *(v0 + 440);
    v13 = *(v0 + 224);
    v14 = *(v0 + 192);
    v103 = *(v0 + 200);
    v122 = v8;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    *v15 = 138413058;
    *(v15 + 4) = v13;
    *v16 = v13;
    *(v15 + 12) = 2082;
    v17 = v13;
    *(v15 + 14) = sub_1001AD0D8(v14, v103, v126);
    *(v15 + 22) = 2048;
    *(v15 + 24) = v107;
    *(v15 + 32) = 2080;
    v18 = sub_1001AD0D8(v3, v4, v126);

    *(v15 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[AppInstallMetrics/%@][%{public}s] storefront: %ld billingStorefront: %s", v15, 0x2Au);
    sub_100005518(v16, &unk_10059C250);

    swift_arrayDestroy();

    v8 = v122;

    v19 = *(v111 + 8);
    v19(v118, v115);
  }

  else
  {
    v20 = *(v0 + 440);
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  *(v0 + 744) = v8;
  *(v0 + 736) = v19;
  sub_100005B60((v0 + 16), *(v0 + 40));
  v23 = dispatch thunk of Bag.subscript.getter();
  v24 = *(v0 + 480);
  if (v23)
  {
    v25 = *(v0 + 472);
    v26 = *(v0 + 448);
    v27 = *(v0 + 456);
    type metadata accessor for AccountCachedServerData();
    v28 = static AccountCachedServerData.shared.getter();
    *(v0 + 752) = v28;
    (*(v27 + 16))(v25, v24, v26);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v0 + 760) = v30;
    *(v30 + 16) = v28;
    *(v30 + 24) = 10;
    (*(v27 + 32))(v30 + v29, v25, v26);
    v31 = v28;
    v32 = swift_task_alloc();
    *(v0 + 768) = v32;
    *v32 = v0;
    v32[1] = sub_1001081DC;
    v33 = *(v0 + 224);

    return sub_100194A44(v33, 0, sub_100108E68, v30);
  }

  else
  {
    (*(*(v0 + 456) + 8))(*(v0 + 480), *(v0 + 448));
    v35 = *(v0 + 744);
    v36 = *(v0 + 736);
    sub_100005B60((v0 + 16), *(v0 + 40));
    v37 = sub_100103A8C();
    sub_100005B60((v0 + 16), *(v0 + 40));
    v38 = sub_100103C9C();
    if (v38)
    {
      sub_100154CA4(v38);
    }

    v40 = *(v37 + 2);
    v41 = (v37 + 32);
    v42 = 32;
    v43 = v40;
    do
    {
      if (!v43)
      {
        if (v35)
        {
          while (v40)
          {
            v45 = *v41++;
            --v40;
            if (v45 == v35)
            {
              goto LABEL_30;
            }
          }
        }

        v51 = *(v0 + 224);

        static Logger.appUsage.getter();
        v52 = v51;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 664);
        v57 = *(v0 + 552);
        v58 = *(v0 + 536);
        v59 = *(v0 + 488);
        v60 = *(v0 + 496);
        v119 = *(v0 + 344);
        v123 = *(v0 + 416);
        if (v55)
        {
          v112 = *(v0 + 552);
          v61 = *(v0 + 224);
          v91 = *(v0 + 192);
          v94 = *(v0 + 200);
          v97 = *(v0 + 656);
          v108 = v36;
          v62 = swift_slowAlloc();
          v104 = v58;
          v63 = swift_slowAlloc();
          v100 = v59;
          v64 = swift_slowAlloc();
          v126[0] = v64;
          *v62 = 138412546;
          *(v62 + 4) = v61;
          *v63 = v61;
          *(v62 + 12) = 2082;
          v65 = v61;
          *(v62 + 14) = sub_1001AD0D8(v91, v94, v126);
          _os_log_impl(&_mh_execute_header, v53, v54, "[AppInstallMetrics/%@][%{public}s] Skipping", v62, 0x16u);
          sub_100005518(v63, &unk_10059C250);

          sub_100005A00(v64);

          v108(v123, v119);
          (*(v60 + 8))(v104, v100);
          v66 = v112;
        }

        else
        {

          v36(v123, v119);
          (*(v60 + 8))(v58, v59);
          v66 = v57;
        }

        sub_100005518(v66, &qword_10059D410);

        v125 = 0;
        goto LABEL_42;
      }

      v44 = *&v37[v42];
      v42 += 8;
      --v43;
    }

    while (v44 != *(v0 + 696));
LABEL_30:
    v46 = sub_1003D2888(*(v0 + 656), v39);
    if (v46)
    {
      v47 = v46;
      v48 = [v46 sourceApp];

      if (v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v49 = sub_1003D1570(*(v0 + 656));
    v50 = *(v0 + 656);
    if (v49)
    {
      sub_1003D2C94(v50);
    }

    else
    {
      sub_1003D2F7C(v50);
    }

    v85 = *(v0 + 696);
    v67 = *(v0 + 656);
    v116 = *(v0 + 504);
    v120 = *(v0 + 536);
    v109 = *(v0 + 496);
    v113 = *(v0 + 488);
    v95 = *(v0 + 336);
    v98 = *(v0 + 320);
    v101 = *(v0 + 312);
    v105 = *(v0 + 328);
    v68 = *(v0 + 304);
    v69 = *(v0 + 288);
    v89 = *(v0 + 280);
    v92 = *(v0 + 296);
    static Date.now.getter();
    v124 = sub_1003D0F1C(v67);
    v70 = [objc_opt_self() productVersion];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    objc_opt_self();
    v71 = sub_10030ABD4();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 176) = v35;
    dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 184) = v85;
    dispatch thunk of CustomStringConvertible.description.getter();
    AppInstallationEligibility.init(accountID:accountIdentifier:billingStorefront:storefront:eligible:)();
    AppInstallationEligibility.billingCountryCode.setter();
    (*(v69 + 16))(v92, v68, v89);
    (*(v98 + 16))(v105, v95, v101);
    result = (*(v109 + 16))(v116, v120, v113);
    if ((v124 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v87 = *(v0 + 656);
    v88 = *(v0 + 664);
    v117 = *(v0 + 536);
    v121 = *(v0 + 552);
    v110 = *(v0 + 496);
    v114 = *(v0 + 488);
    v102 = *(v0 + 312);
    v106 = *(v0 + 336);
    v96 = *(v0 + 304);
    v99 = *(v0 + 320);
    v90 = *(v0 + 288);
    v93 = *(v0 + 280);
    v72 = *(v0 + 272);
    v73 = *(v0 + 248);
    v82 = *(v0 + 240);
    v83 = *(v0 + 264);
    v81 = *(v0 + 232);
    v86 = *(v0 + 224);
    v74 = *(v0 + 200);
    v80 = *(v0 + 192);

    v84 = v72;
    AppInstallationEvent.init(bundleID:eligibility:externalVersionID:installDate:installType:isBeta:itemID:osVersion:platform:source:token:webDomain:)();
    v75 = type metadata accessor for TaskPriority();
    v125 = 1;
    (*(*(v75 - 8) + 56))(v81, 1, 1, v75);
    (*(v73 + 16))(v83, v72, v82);
    v76 = (*(v73 + 80) + 56) & ~*(v73 + 80);
    v77 = swift_allocObject();
    *(v77 + 2) = 0;
    *(v77 + 3) = 0;
    *(v77 + 4) = v86;
    *(v77 + 5) = v80;
    *(v77 + 6) = v74;
    (*(v73 + 32))(&v77[v76], v83, v82);
    v78 = v86;

    sub_1001401B8(0, 0, v81, &unk_100436CD0, v77);

    (*(v73 + 8))(v84, v82);
    (*(v90 + 8))(v96, v93);
    (*(v99 + 8))(v106, v102);
    (*(v110 + 8))(v117, v114);
    sub_100005518(v121, &qword_10059D410);

LABEL_42:
    sub_100005A00(v0 + 16);

    v79 = *(v0 + 8);

    return v79(v125);
  }
}

uint64_t sub_1001081DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = a2;

  return _swift_task_switch(sub_100108300, 0, 0);
}

uint64_t sub_100108300()
{
  v88 = v0;

  (*(*(v0 + 456) + 8))(*(v0 + 480), *(v0 + 448));
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  sub_100005B60((v0 + 16), *(v0 + 40));
  v3 = sub_100103A8C();
  sub_100005B60((v0 + 16), *(v0 + 40));
  v4 = sub_100103C9C();
  if (v4)
  {
    sub_100154CA4(v4);
  }

  v6 = *(v3 + 2);
  v7 = (v3 + 32);
  v8 = 32;
  v9 = v6;
  do
  {
    if (!v9)
    {
      if (v1)
      {
        while (v6)
        {
          v11 = *v7++;
          --v6;
          if (v11 == v1)
          {
            goto LABEL_10;
          }
        }
      }

      v17 = *(v0 + 224);

      static Logger.appUsage.getter();
      v18 = v17;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 664);
      v23 = *(v0 + 552);
      v24 = *(v0 + 536);
      v25 = *(v0 + 488);
      v26 = *(v0 + 496);
      v82 = *(v0 + 344);
      v84 = *(v0 + 416);
      if (v21)
      {
        v78 = *(v0 + 552);
        v27 = *(v0 + 224);
        v60 = *(v0 + 192);
        v63 = *(v0 + 200);
        v66 = *(v0 + 656);
        v75 = v2;
        v28 = swift_slowAlloc();
        v72 = v24;
        v29 = swift_slowAlloc();
        v69 = v25;
        v30 = swift_slowAlloc();
        v87 = v30;
        *v28 = 138412546;
        *(v28 + 4) = v27;
        *v29 = v27;
        *(v28 + 12) = 2082;
        v31 = v27;
        *(v28 + 14) = sub_1001AD0D8(v60, v63, &v87);
        _os_log_impl(&_mh_execute_header, v19, v20, "[AppInstallMetrics/%@][%{public}s] Skipping", v28, 0x16u);
        sub_100005518(v29, &unk_10059C250);

        sub_100005A00(v30);

        v75(v84, v82);
        (*(v26 + 8))(v72, v69);
        v32 = v78;
      }

      else
      {

        v2(v84, v82);
        (*(v26 + 8))(v24, v25);
        v32 = v23;
      }

      sub_100005518(v32, &qword_10059D410);

      v86 = 0;
      goto LABEL_22;
    }

    v10 = *&v3[v8];
    v8 += 8;
    --v9;
  }

  while (v10 != *(v0 + 696));
LABEL_10:
  v12 = sub_1003D2888(*(v0 + 656), v5);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 sourceApp];

    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v15 = sub_1003D1570(*(v0 + 656));
  v16 = *(v0 + 656);
  if (v15)
  {
    sub_1003D2C94(v16);
  }

  else
  {
    sub_1003D2F7C(v16);
  }

  v52 = *(v0 + 696);
  v33 = *(v0 + 656);
  v76 = *(v0 + 504);
  v79 = *(v0 + 536);
  v70 = *(v0 + 496);
  v73 = *(v0 + 488);
  v67 = *(v0 + 328);
  v34 = *(v0 + 320);
  v61 = *(v0 + 336);
  v64 = *(v0 + 312);
  v35 = *(v0 + 304);
  v36 = *(v0 + 288);
  v56 = *(v0 + 280);
  v58 = *(v0 + 296);
  static Date.now.getter();
  v85 = sub_1003D0F1C(v33);
  v37 = [objc_opt_self() productVersion];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  objc_opt_self();
  v38 = sub_10030ABD4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 176) = v1;
  dispatch thunk of CustomStringConvertible.description.getter();
  *(v0 + 184) = v52;
  dispatch thunk of CustomStringConvertible.description.getter();
  AppInstallationEligibility.init(accountID:accountIdentifier:billingStorefront:storefront:eligible:)();
  AppInstallationEligibility.billingCountryCode.setter();
  (*(v36 + 16))(v58, v35, v56);
  (*(v34 + 16))(v67, v61, v64);
  result = (*(v70 + 16))(v76, v79, v73);
  if ((v85 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v55 = *(v0 + 656);
  v57 = *(v0 + 664);
  v81 = *(v0 + 536);
  v83 = *(v0 + 552);
  v77 = *(v0 + 496);
  v80 = *(v0 + 488);
  v74 = *(v0 + 336);
  v68 = *(v0 + 320);
  v71 = *(v0 + 312);
  v59 = *(v0 + 288);
  v62 = *(v0 + 280);
  v65 = *(v0 + 304);
  v40 = *(v0 + 272);
  v41 = *(v0 + 248);
  v42 = *(v0 + 232);
  v50 = *(v0 + 240);
  v51 = *(v0 + 264);
  v54 = *(v0 + 224);
  v43 = *(v0 + 200);
  v44 = *(v0 + 192);

  v53 = v40;
  AppInstallationEvent.init(bundleID:eligibility:externalVersionID:installDate:installType:isBeta:itemID:osVersion:platform:source:token:webDomain:)();
  v45 = type metadata accessor for TaskPriority();
  v86 = 1;
  (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
  (*(v41 + 16))(v51, v40, v50);
  v46 = (*(v41 + 80) + 56) & ~*(v41 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = v54;
  *(v47 + 5) = v44;
  *(v47 + 6) = v43;
  (*(v41 + 32))(&v47[v46], v51, v50);
  v48 = v54;

  sub_1001401B8(0, 0, v42, &unk_100436CD0, v47);

  (*(v41 + 8))(v53, v50);
  (*(v59 + 8))(v65, v62);
  (*(v68 + 8))(v74, v71);
  (*(v77 + 8))(v81, v80);
  sub_100005518(v83, &qword_10059D410);

LABEL_22:
  sub_100005A00(v0 + 16);

  v49 = *(v0 + 8);

  return v49(v86);
}

uint64_t sub_100108C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100108D04()
{
  result = qword_10059D418;
  if (!qword_10059D418)
  {
    type metadata accessor for AppInstallType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D418);
  }

  return result;
}

uint64_t sub_100108D5C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppInstallationEvent() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100085384;

  return sub_100103EA8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100108E6C()
{
  v1 = type metadata accessor for AccountIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100108F30()
{
  type metadata accessor for AccountIdentity();

  return sub_100193D9C();
}

id sub_100108FA8()
{
  v0 = type metadata accessor for ContinuousClock();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetReloadOnNetworkReachableActivity(0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = &v5[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_backoff];
  static Clock<>.continuous.getter();
  v7 = sub_100085D40(&qword_10059D468);
  *&v6[v7[12]] = 0;
  v8 = v7[13];
  v9 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  *v6 = xmmword_100436CE0;
  *(v6 + 1) = xmmword_100436CF0;
  *(v6 + 4) = 0;
  (*(v1 + 32))(&v6[v7[11]], v3, v0);
  *&v5[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_activity] = 0;
  v11.receiver = v5;
  v11.super_class = v4;
  result = objc_msgSendSuper2(&v11, "init");
  qword_1005AB110 = result;
  return result;
}

id sub_100109154()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = &v5[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_backoff];
  static Clock<>.continuous.getter();
  v7 = sub_100085D40(&qword_10059D468);
  *&v6[v7[12]] = 0;
  v8 = v7[13];
  v9 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  *v6 = xmmword_100436CE0;
  *(v6 + 1) = xmmword_100436CF0;
  *(v6 + 4) = 0;
  (*(v2 + 32))(&v6[v7[11]], v4, v1);
  *&v5[OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_activity] = 0;
  v11.receiver = v5;
  v11.super_class = v0;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1001094C8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  sub_100085D40(&qword_10059D478);
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_100109584, a2, 0);
}

uint64_t sub_100109584()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_10010A210(v2);

  sub_100005518(v2, &qword_10059D478);
  v1[2](v1);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void sub_100109674()
{
  v1 = v0;
  v2 = sub_100085D40(&unk_10059D480);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  empty = xpc_dictionary_create_empty();
  v6 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  v7 = Duration.components.getter();
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_DELAY, v7);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_GRACE_PERIOD, 2);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  sub_1000044A4(v1, v4, &unk_10059D480);
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_100005518(v4, &unk_10059D480);
  }

  else
  {
    v10 = NWEndpoint.nw.getter();
    (*(v9 + 8))(v4, v8);
    if (v10)
    {
      v11 = XPC_ACTIVITY_NETWORK_TRANSFER_ENDPOINT;
      if (!XPC_ACTIVITY_NETWORK_TRANSFER_ENDPOINT)
      {
LABEL_13:
        __break(1u);
        return;
      }

      v12 = nw_endpoint_copy_dictionary();
      xpc_dictionary_set_value(empty, v11, v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  if (!*(v1 + *(v6 + 20)))
  {
    return;
  }

  v13 = XPC_ACTIVITY_NETWORK_TRANSFER_PARAMETERS;
  if (!XPC_ACTIVITY_NETWORK_TRANSFER_PARAMETERS)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  NWParameters.nw.getter();
  v14 = nw_parameters_copy_dictionary();
  swift_unknownObjectRelease();
  xpc_dictionary_set_value(empty, v13, v14);

  swift_unknownObjectRelease();
}

uint64_t sub_100109908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_100085D40(&unk_10059D480);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  if (!a1)
  {
    v21 = type metadata accessor for NWEndpoint();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  NWEndpoint.init(_:)();
  if (a2)
  {
LABEL_3:
    type metadata accessor for NWParameters();
    swift_unknownObjectRetain();
    a2 = NWParameters.__allocating_init(_:)();
  }

LABEL_4:
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_1000044A4(v15, v13, &unk_10059D480);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  sub_10009E1C4(v13, v19 + v17, &unk_10059D480);
  *(v19 + v18) = a2;

  sub_10019F02C(0, 0, v8, &unk_100436DC8, v19);

  return sub_100005518(v15, &unk_10059D480);
}

uint64_t sub_100109BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_100085D40(&qword_10059D478);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100109C70, a4, 0);
}

uint64_t sub_100109C70()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_1000044A4(v0[6], v1, &unk_10059D480);
  swift_beginAccess();
  v3 = sub_100109E2C();
  v5 = v4;
  swift_endAccess();
  v6 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  *(v1 + *(v6 + 20)) = v2;
  v7 = (v1 + *(v6 + 24));
  *v7 = v3;
  v7[1] = v5;
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);

  sub_10010A210(v1);
  sub_100005518(v1, &qword_10059D478);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100109E2C()
{
  v1 = v0;
  v2 = sub_100085D40(&qword_10059D490);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_100085D40(&qword_10059D468);
  type metadata accessor for ContinuousClock();
  sub_10010B3A0(&qword_10059D460, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  v13 = *(v12 + 52);
  sub_1000044A4(v0 + v13, v4, &qword_10059D490);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005518(v4, &qword_10059D490);
    v14 = v0 + v13;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_10010B3A0(&qword_10059D498, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.duration(to:)();
    v15 = static Duration.< infix(_:_:)();
    result = (*(v6 + 8))(v9, v5);
    if (v15)
    {
      goto LABEL_6;
    }

    *(v1 + *(v12 + 48)) = 0;
    v14 = v1 + v13;
  }

  sub_100005518(v14, &qword_10059D490);
  (*(v6 + 16))(v1 + v13, v11, v5);
  result = (*(v6 + 56))(v1 + v13, 0, 1, v5);
LABEL_6:
  v17 = *(v12 + 48);
  v18 = *(v1 + v17);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20 >= 9)
    {
      v20 = 9;
    }

    *(v1 + v17) = v20;
    v21 = *(v1 + 16);
    if (v21 >= v20)
    {
      v23 = static Duration.zero.getter();
      (*(v6 + 8))(v11, v5);
      return v23;
    }

    v24 = *(v1 + 24);
    v19 = __OFSUB__(v20, v21);
    v22 = v20 - v21;
    if (!v19)
    {
      if (!__OFSUB__(v22, 1))
      {
        dispatch thunk of static DurationProtocol.* infix(_:_:)();
        (*(v6 + 8))(v11, v5);
        return v25;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_10010A210(uint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for Logger();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v41 = &v39 - v7;
  __chkstk_darwin(v6);
  v40 = &v39 - v8;
  v9 = sub_100085D40(&qword_10059D478);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_activity);
  if (v20)
  {
    sub_1000044A4(v42, v15, &qword_10059D478);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      swift_unknownObjectRetain();
      sub_100005518(v15, &qword_10059D478);
      v21 = v41;
      static Logger.activity.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Activity was already set up.", v24, 2u);
      }

      swift_unknownObjectRelease();
      (*(v43 + 8))(v21, v44);
    }

    else
    {
      sub_10010AFF8(v15, v19);
      swift_unknownObjectRetain();
      v34 = v40;
      static Logger.activity.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Modifying criteria of scheduled activity.", v37, 2u);
      }

      (*(v43 + 8))(v34, v44);
      sub_100109674();
      xpc_activity_set_criteria(v20, v38);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_10010B05C(v19);
    }
  }

  else
  {
    v25 = v42;
    v26 = v1;
    static Logger.activity.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Registering activity", v29, 2u);
    }

    (*(v43 + 8))(v5, v44);
    if ("com.apple.appstored.WidgetReload")
    {
      v30 = v26;
      sub_1000044A4(v25, v13, &qword_10059D478);
      v31 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      sub_10009E1C4(v13, v32 + v31, &qword_10059D478);
      aBlock[4] = sub_10010B0B8;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000AD588;
      aBlock[3] = &unk_10050E090;
      v33 = _Block_copy(aBlock);

      xpc_activity_register("com.apple.appstored.WidgetReload", XPC_ACTIVITY_CHECK_IN, v33);
      _Block_release(v33);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10010A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100085D40(&qword_10059D478);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1000044A4(a3, v9, &qword_10059D478);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;
  sub_10009E1C4(v9, v15 + v14, &qword_10059D478);
  swift_unknownObjectRetain();

  sub_10019F02C(0, 0, v12, &unk_100436DB8, v15);
}

uint64_t sub_10010A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10010A9CC, a4, 0);
}

uint64_t sub_10010A9CC()
{
  sub_10010AA30(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

const char *sub_10010AA30(_xpc_activity_s *a1, uint64_t a2)
{
  v5 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100085D40(&qword_10059D470);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  state = xpc_activity_get_state(a1);
  if (state != 2)
  {
    v13 = 0;
    if (state)
    {
LABEL_10:
      *(v2 + OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_activity) = v13;
      return swift_unknownObjectRelease();
    }

    v14 = xpc_activity_copy_criteria(a1);
    sub_1000044A4(a2, v11, &qword_10059D478);
    if ((*(v6 + 48))(v11, 1, v5) != 1)
    {
      swift_unknownObjectRelease();
      sub_10010AFF8(v11, v8);
      sub_100109674();
      xpc_activity_set_criteria(a1, v16);
      swift_unknownObjectRelease();
      sub_10010B05C(v8);
      goto LABEL_9;
    }

    if (v14)
    {
      swift_unknownObjectRelease();
LABEL_9:
      swift_unknownObjectRetain();
      v13 = a1;
      goto LABEL_10;
    }

    xpc_activity_set_completion_status();
    result = "com.apple.appstored.WidgetReload";
    if (!"com.apple.appstored.WidgetReload")
    {
      __break(1u);
      goto LABEL_13;
    }

LABEL_7:
    xpc_activity_unregister("com.apple.appstored.WidgetReload");
    v13 = 0;
    goto LABEL_10;
  }

  sub_1000E59CC(0xD000000000000011, 0x800000010044F6D0);
  xpc_activity_set_completion_status();
  result = "com.apple.appstored.WidgetReload";
  if ("com.apple.appstored.WidgetReload")
  {
    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10010AE0C()
{
  sub_100005518(v0 + OBJC_IVAR____TtC9appstored38WidgetReloadOnNetworkReachableActivity_backoff, &qword_10059D468);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10010AE94()
{
  sub_10010AF38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10010AF38()
{
  if (!qword_10059D458)
  {
    type metadata accessor for ContinuousClock();
    sub_10010B3A0(&qword_10059D460, &type metadata accessor for ContinuousClock);
    v0 = type metadata accessor for Backoff();
    if (!v1)
    {
      atomic_store(v0, &qword_10059D458);
    }
  }
}

uint64_t sub_10010AFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010B05C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetReloadOnNetworkReachableActivity.Criteria(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010B0B8(uint64_t a1)
{
  v3 = *(sub_100085D40(&qword_10059D478) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10010A7BC(a1, v4, v5);
}

uint64_t sub_10010B138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010B150(uint64_t a1)
{
  v4 = *(sub_100085D40(&qword_10059D478) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100085384;

  return sub_10010A9A8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10010B260(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100085D40(&unk_10059D480) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100086B9C;

  return sub_100109BCC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_10010B3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010B3E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1001094C8(v2, v3);
}

void sub_10010B4BC()
{
  sub_10010B580(319, &qword_10059D508, &type metadata accessor for NWEndpoint);
  if (v0 <= 0x3F)
  {
    sub_10010B580(319, &unk_10059D510, &type metadata accessor for NWParameters);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010B580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10010B5D4(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059C3F8);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059C3F8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_10010B824(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output];
  *v8 = 0;
  *(v8 + 1) = 2;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v9 = &v7[OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input];
  *v9 = a1;
  v9[8] = a2;
  v9[9] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10010B93C()
{
  v1[8] = v0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for AccountClientIdentifier();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for ClientInfo();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10010BB48, 0, 0);
}

uint64_t sub_10010BB48()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input);
  v0[22] = v1;
  if (*(v1 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_clientID + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v10 = objc_opt_self();
  v0[23] = sub_100227688(v10, v2);

  static AccountClientIdentifier.production.getter();
  (*(v8 + 16))(v7, v6, v9);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v8 + 8))(v6, v9);
  v0[24] = sub_1000D6694(v3);
  (*(v4 + 8))(v3, v5);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_10010BD7C;
  v12 = v0[14];

  return sub_1000C5300((v0 + 2), 0, 0, v12);
}

uint64_t sub_10010BD7C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10010BF20, 0, 0);
}

uint64_t sub_10010BF20()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_100005B60((v0 + 16), v2);
  v4 = sub_1000C56C0(v2, v1, v3);
  *(v0 + 208) = v4;
  sub_100005A00(v0 + 16);
  objc_opt_self();
  v5 = sub_10032C390();
  *(v0 + 56) = 0;
  v6 = sub_10032C7CC(v5);
  *(v0 + 216) = v6;

  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = *(v0 + 176);
    v9 = objc_allocWithZone(ExpensiveNetworkEvaluator);
    v10 = v7;
    v11 = v6;
    v12 = sub_10020FCFC(v9, v11);
    *(v0 + 224) = v12;
    v13 = sub_10020FD94(v12, v8, v4);
    v14 = [v11 isRoaming];

    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_10010C45C;
    v16 = *(v0 + 184);
    v17 = v14;
    v18 = v13;
LABEL_8:

    return sub_10010CB34(v17, v18, v16);
  }

  v19 = *(v0 + 64);
  v20 = v7;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static Logger.purchase.getter();
  v21 = v19;
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 176);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    v27 = *(v24 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
    *(v25 + 4) = v27;
    *v26 = v27;
    *(v25 + 12) = 2114;
    swift_errorRetain();
    v28 = v27;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v29;
    v26[1] = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Unable to evaluate cellular download: %{public}@", v25, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  *(v0 + 248) = 4;
  if (sub_10010E404(0))
  {
    v30 = *(v0 + 208);
    v31 = *(v0 + 176);
    v32 = [objc_allocWithZone(LowDataNetworkEvaluator) init];
    *(v0 + 256) = v32;
    v33 = sub_100220028(v32, v31, v30);
    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    *v34 = v0;
    v34[1] = sub_10010C858;
    v16 = *(v0 + 184);
    v17 = 2;
    v18 = v33;
    goto LABEL_8;
  }

  if ([*(v0 + 184) isExpensive] && !sub_10010E42C(*(v0 + 248)))
  {

    swift_unknownObjectRelease();
    v38 = 0;
  }

  else
  {
    v36 = *(v0 + 208);
    v37 = [*(v0 + 184) isConstrained];

    swift_unknownObjectRelease();
    if (v37)
    {
      v38 = sub_10010E42C(0);
    }

    else
    {
      v38 = 1;
    }
  }

  v39 = *(v0 + 248);
  v40 = *(v0 + 64);
  if (sub_10010E418(v39))
  {
    v41 = 60;
  }

  else
  {
    v41 = 62;
  }

  v42 = v40 + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  os_unfair_lock_lock(v42);
  *(v42 + 8) = v38;
  *(v42 + 16) = 0;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  os_unfair_lock_unlock(v42);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10010C45C(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10010C588, 0, 0);
}

uint64_t sub_10010C588()
{
  v1 = *(v0 + 240);
  v2 = sub_10010E43C(v1);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  if (v2)
  {
    v5 = [*(v0 + 184) isConstrained];

    if (!v5)
    {
      v1 = 0;
    }
  }

  else
  {

    v1 = 0;
  }

  *(v0 + 248) = *(v0 + 240);
  if (sub_10010E404(v1))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 176);
    v8 = [objc_allocWithZone(LowDataNetworkEvaluator) init];
    *(v0 + 256) = v8;
    v9 = sub_100220028(v8, v7, v6);
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_10010C858;
    v11 = *(v0 + 184);

    return sub_10010CB34(2, v9, v11);
  }

  else
  {
    if ([*(v0 + 184) isExpensive] && !sub_10010E42C(*(v0 + 248)))
    {

      swift_unknownObjectRelease();
      v15 = 0;
    }

    else
    {
      v13 = *(v0 + 208);
      v14 = [*(v0 + 184) isConstrained];

      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = sub_10010E42C(v1);
      }

      else
      {
        v15 = 1;
      }
    }

    v16 = *(v0 + 248);
    v17 = *(v0 + 64);
    if (sub_10010E418(v16))
    {
      v18 = 60;
    }

    else
    {
      v18 = 62;
    }

    v19 = v17 + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
    os_unfair_lock_lock(v19);
    *(v19 + 8) = v15;
    *(v19 + 16) = v1;
    *(v19 + 24) = v16;
    *(v19 + 32) = v18;
    os_unfair_lock_unlock(v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10010C858(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_10010C984, 0, 0);
}

uint64_t sub_10010C984()
{
  v1 = *(v0 + 272);
  if ([*(v0 + 184) isExpensive] && !sub_10010E42C(*(v0 + 248)))
  {

    swift_unknownObjectRelease();
    v4 = 0;
  }

  else
  {
    v2 = *(v0 + 208);
    v3 = [*(v0 + 184) isConstrained];

    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sub_10010E42C(v1);
    }

    else
    {
      v4 = 1;
    }
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 64);
  if (sub_10010E418(v5))
  {
    v7 = 60;
  }

  else
  {
    v7 = 62;
  }

  v8 = v6 + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  os_unfair_lock_lock(v8);
  *(v8 + 8) = v4;
  *(v8 + 16) = v1;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  os_unfair_lock_unlock(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10010CB34(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  *(v4 + 152) = a2;
  *(v4 + 336) = a1;
  v5 = sub_100085D40(&qword_10059C3F8);
  *(v4 + 176) = v5;
  *(v4 + 184) = *(v5 - 8);
  *(v4 + 192) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 200) = v6;
  *(v4 + 208) = *(v6 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10010CCD0, 0, 0);
}

uint64_t sub_10010CCD0()
{
  v1 = v0;
  if (*(v0 + 152) != 4)
  {
    v14 = *(v0 + 168);
    static Logger.purchase.getter();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v1 + 168);
      v19 = *(v1 + 152);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      v22 = *(*(v18 + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input) + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v19;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Already have a result we can proceed with: %ld", v20, 0x16u);
      sub_100086A24(v21);
    }

    v24 = *(v1 + 224);
    v25 = *(v1 + 200);
    v26 = *(v1 + 208);

    (*(v26 + 8))(v24, v25);
    v27 = *(v1 + 152);
    goto LABEL_56;
  }

  v2 = *(v0 + 168);
  v3 = &v2[OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input];
  if (v2[OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input + 8])
  {
    static Logger.purchase.getter();
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(*v3 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Suppressing dialogs as requested", v7, 0xCu);
      sub_100086A24(v8);
    }

    v11 = *(v1 + 232);
    v12 = *(v1 + 200);
    v13 = *(v1 + 208);

    (*(v13 + 8))(v11, v12);
    goto LABEL_55;
  }

  v28 = *(v1 + 336);
  v29 = *v3;
  *(v1 + 296) = *v3;
  if (v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_isAutomatic])
  {
    if (v28 == 2)
    {
      static Logger.purchase.getter();
      v30 = v2;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v1 + 168);
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412546;
        v37 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
        *(v35 + 4) = v37;
        *v36 = v37;
        *(v35 + 12) = 2048;
        v38 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
        v39 = v37;

        if (v38 < 0)
        {
          v40 = -1;
        }

        else
        {
          v40 = v38;
        }

        *(v35 + 14) = v40;

        _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Download of size %{bytes}ld requires unconstrained network, but not prompting for automatic download.", v35, 0x16u);
        sub_100086A24(v36);
      }

      else
      {
      }

      v77 = *(v1 + 240);
    }

    else
    {
      static Logger.purchase.getter();
      v54 = v2;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v1 + 168);
      if (v57)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412546;
        v61 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
        *(v59 + 4) = v61;
        *v60 = v61;
        *(v59 + 12) = 2048;
        v62 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
        v63 = v61;

        if (v62 < 0)
        {
          v64 = -1;
        }

        else
        {
          v64 = v62;
        }

        *(v59 + 14) = v64;

        _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Download of size %{bytes}ld exceeds cellular limit, but not prompting for automatic download.", v59, 0x16u);
        sub_100086A24(v60);
      }

      else
      {
      }

      v77 = *(v1 + 248);
    }

LABEL_54:
    (*(*(v1 + 208) + 8))(v77, *(v1 + 200));
LABEL_55:
    v27 = 4;
LABEL_56:
    v106 = v27;

    v103 = *(v1 + 8);

    return v103(v106);
  }

  v41 = *(v1 + 160);
  if (v28 == 2)
  {
    if (([v41 isConstrained] & 1) == 0)
    {
      v42 = *(v1 + 168);
      static Logger.purchase.getter();
      v43 = v42;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v1 + 168);
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412546;
        v50 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
        *(v48 + 4) = v50;
        *v49 = v50;
        *(v48 + 12) = 2048;
        v51 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
        v52 = v50;

        if (v51 < 0)
        {
          v53 = -1;
        }

        else
        {
          v53 = v51;
        }

        *(v48 + 14) = v53;

        _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Download of size %{bytes}ld exceeds limit, but not prompting for unconstrained network.", v48, 0x16u);
        sub_100086A24(v49);
      }

      else
      {
      }

      v77 = *(v1 + 280);
      goto LABEL_54;
    }
  }

  else if (([v41 isExpensiveOrCellular] & 1) == 0)
  {
    v78 = *(v1 + 168);
    static Logger.purchase.getter();
    v79 = v78;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v1 + 168);
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412546;
      v86 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
      *(v84 + 4) = v86;
      *v85 = v86;
      *(v84 + 12) = 2048;
      v87 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
      v88 = v86;

      if (v87 < 0)
      {
        v89 = -1;
      }

      else
      {
        v89 = v87;
      }

      *(v84 + 14) = v89;

      _os_log_impl(&_mh_execute_header, v80, v81, "[%@] Download of size %{bytes}ld exceeds limit, but not prompting for inexpensive network.", v84, 0x16u);
      sub_100086A24(v85);
    }

    else
    {
    }

    v77 = *(v1 + 288);
    goto LABEL_54;
  }

  v65 = *(v1 + 168);
  static Logger.purchase.getter();
  v66 = v65;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v1 + 168);
  if (v69)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412546;
    v73 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
    *(v71 + 4) = v73;
    *v72 = v73;
    *(v71 + 12) = 2048;
    v74 = *&v29[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
    v75 = v73;

    if (v74 < 0)
    {
      v76 = -1;
    }

    else
    {
      v76 = v74;
    }

    *(v71 + 14) = v76;

    _os_log_impl(&_mh_execute_header, v67, v68, "[%@] Download of size %{bytes}ld exceeds limit, asking how to proceed.", v71, 0x16u);
    sub_100086A24(v72);
  }

  else
  {
  }

  v90 = *(v1 + 272);
  v91 = *(v1 + 200);
  v92 = *(v1 + 208);
  v93 = *(v92 + 8);
  *(v1 + 304) = v93;
  *(v1 + 312) = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v93(v90, v91);
  if (v28 == 2)
  {
    v94 = objc_opt_self();
    v95 = sub_100384CC4(v94, v29);
  }

  else
  {
    v96 = *(v1 + 336);
    v97 = objc_opt_self();
    v95 = sub_1003BF604(v97, v29, v96 & 1, v3[9]);
  }

  v98 = *(v1 + 184);
  v99 = *(v1 + 192);
  v100 = *(v1 + 176);
  v101 = v95;
  *(v1 + 320) = v101;
  v105 = objc_opt_self();
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_10010D7B8;
  swift_continuation_init();
  *(v1 + 136) = v100;
  v102 = sub_100005F38((v1 + 112));
  sub_10010E44C();
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v98 + 32))(v102, v99, v100);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10010B5D4;
  *(v1 + 104) = &unk_10050E308;
  sub_1003124D4(v105, v101, (v1 + 80));
  (*(v98 + 8))(v102, v100);

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_10010D7B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_10010DC2C;
  }

  else
  {
    v2 = sub_10010D8C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010D8C8()
{
  v1 = v0[18];
  v2 = [v1 selectedActionIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = v0 + 32;
      v10 = v0[21];
      static Logger.purchase.getter();
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v0[37];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = *(v14 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
        *(v15 + 4) = v17;
        *v16 = v17;
        v18 = v17;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%@] We were asked to download later.", v15, 0xCu);
        v19 = 2;
LABEL_11:
        v34 = v19;
        sub_100086A24(v16);

        goto LABEL_15;
      }

      v27 = 2;
      goto LABEL_14;
    }
  }

  v9 = v0 + 33;
  v20 = v0[21];
  static Logger.purchase.getter();
  v21 = v20;
  v12 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v22))
  {
    v23 = v0[37];
    v24 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v24 = 138412290;
    v25 = *(v23 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
    *(v24 + 4) = v25;
    *v16 = v25;
    v26 = v25;
    _os_log_impl(&_mh_execute_header, v12, v22, "[%@] We were asked to download now.", v24, 0xCu);
    v19 = 1;
    goto LABEL_11;
  }

  v27 = 1;
LABEL_14:
  v34 = v27;
LABEL_15:
  v28 = v0[40];
  v29 = v0[38];
  v30 = *v9;
  v31 = v0[25];

  v29(v30, v31);

  v32 = v0[1];

  return v32(v34);
}

uint64_t sub_10010DC2C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 168);
  swift_willThrow();

  static Logger.purchase.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@] Error delivering dialog request: %{public}@", v7, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 304))(*(v0 + 216), *(v0 + 200));

  v12 = *(v0 + 8);

  return v12(4);
}

uint64_t sub_10010DFEC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_10010B93C();
}

uint64_t sub_10010E204(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010E258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010E2AC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10010E2C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010E308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010E358()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_10010DFEC(v2, v3);
}

BOOL sub_10010E404(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 3) >= 2;
  }

  else
  {
    v1 = 0;
  }

  return !v1;
}

unint64_t sub_10010E44C()
{
  result = qword_10059C400;
  if (!qword_10059C400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059C400);
  }

  return result;
}

uint64_t sub_10010E630(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  type metadata accessor for TestFlightExtensionSyncActivityManager();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10010E6DC;

  return sub_10010E8CC();
}

uint64_t sub_10010E6DC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10010E7DC, 0, 0);
}

uint64_t sub_10010E7DC()
{
  v1 = v0[2];
  qword_10059D590 = v0[4];

  v1[2](v1);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10010E8CC()
{
  v1[8] = v0;
  v2 = type metadata accessor for AccountClientIdentifier();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for ClientInfo();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  sub_100085D40(&qword_10059CBC0);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v1[18] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10010EAE4, 0, 0);
}

uint64_t sub_10010EAE4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[8];
  sub_10011093C();
  (*(v2 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v0[7] = _swiftEmptyArrayStorage;
  sub_100110988(&qword_10059D7B8, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100085D40(&qword_10059D7C0);
  sub_1001109D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 16) = v5;
  v6 = OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_bagServiceObservationToken;
  v7 = type metadata accessor for BagService.ObservationToken();
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  *(v4 + OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_delegate) = 0;
  *(v4 + OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_syncActivity) = 0;
  *(v4 + 24) = sub_1003E4DB4(objc_allocWithZone(TestFlightServiceHost), v5);
  type metadata accessor for TestFlightExtensionSyncActivityManager();
  sub_100110988(&qword_10059D7A8, type metadata accessor for TestFlightExtensionSyncActivityManager);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010ED34, v9, v8);
}

uint64_t sub_10010ED34()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v19 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = type metadata accessor for TestFlightExtensionSyncActivityManager.Delegate();
  v9 = objc_allocWithZone(v8);
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 40) = v9;
  *(v0 + 48) = v8;

  v10 = objc_msgSendSuper2((v0 + 40), "init");
  v11 = *(v7 + OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_delegate);
  *(v7 + OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_delegate) = v10;
  v12 = v10;

  v13 = *(v7 + 24);
  sub_1003E7974(v13, v12);

  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v19);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v19);
  v14 = sub_1000D6694(v2);
  (*(v3 + 8))(v2, v20);
  v15 = swift_allocObject();
  swift_weakInit();

  sub_1000CA5F8(sub_100110A34, v15, v21);

  v16 = OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_bagServiceObservationToken;
  swift_beginAccess();
  sub_100110A3C(v21, v7 + v16);
  swift_endAccess();
  v17 = swift_task_alloc();
  *(v1 + 184) = v17;
  *v17 = v1;
  v17[1] = sub_10010EFE8;

  return sub_10010FB48();
}

uint64_t sub_10010EFE8()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 64);

  return v2(v3);
}

uint64_t sub_10010F1D8(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1000056D0(a1, v9);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1000056B8(v9, (v8 + 5));
    sub_10019F02C(0, 0, v4, &unk_100436FB0, v8);
  }

  return result;
}

uint64_t sub_10010F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10010F340, 0, 0);
}

uint64_t sub_10010F340()
{
  v1 = v0[3];
  v2 = v1[3];
  v0[4] = v2;
  v0[5] = v1[4];
  v0[6] = sub_100005B60(v1, v2);
  type metadata accessor for TestFlightExtensionSyncActivityManager();
  sub_100110988(&qword_10059D7A8, type metadata accessor for TestFlightExtensionSyncActivityManager);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010F410, v4, v3);
}

uint64_t sub_10010F410()
{
  sub_100110450(v0[6], v0[2], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10010F478()
{
  v1 = v0;
  v2 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v2 - 8);
  v34 = &v29 - v3;
  v35 = type metadata accessor for BagService();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountClientIdentifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ClientInfo();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100085D40(&qword_10059CBC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for BagService.ObservationToken();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v36 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_bagServiceObservationToken;
  swift_beginAccess();
  sub_100110820(v1 + v21, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100005518(v17, &qword_10059CBC0);
  }

  else
  {
    (*(v19 + 32))(v36, v17, v18);
    static AccountClientIdentifier.production.getter();
    (*(v6 + 16))(v9, v11, v5);
    ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
    (*(v6 + 8))(v11, v5);
    v22 = sub_1000D6694(v14);
    (*(v31 + 8))(v14, v32);
    v23 = v34;
    sub_1000C5C88(v34);
    v25 = v33;
    v26 = v35;
    (*(v33 + 56))(v23, 0, 1, v35);
    v27 = v30;
    (*(v25 + 32))(v30, v23, v26);
    v28 = v36;
    BagService.removeChangeObserver(withToken:)();

    (*(v25 + 8))(v27, v26);
    (*(v19 + 8))(v28, v18);
  }

  sub_100005518(v1 + v21, &qword_10059CBC0);
  return v1;
}

uint64_t sub_10010F9F0()
{
  sub_10010F478();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestFlightExtensionSyncActivityManager()
{
  result = qword_10059D600;
  if (!qword_10059D600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010FA9C()
{
  sub_10011011C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10010FB48()
{
  v1[7] = v0;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for AccountClientIdentifier();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for ClientInfo();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  type metadata accessor for TestFlightExtensionSyncActivityManager();
  v1[18] = sub_100110988(&qword_10059D7A8, type metadata accessor for TestFlightExtensionSyncActivityManager);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v6;
  v1[20] = v5;

  return _swift_task_switch(sub_10010FD24, v6, v5);
}

uint64_t sub_10010FD24()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v11 = v0[7];
  v12 = v0[18];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[21] = sub_1000D6694(v1);
  (*(v3 + 8))(v1, v2);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_10010FEB8;
  v9 = v0[10];

  return sub_1000C5300((v0 + 2), v11, v12, v9);
}

uint64_t sub_10010FEB8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 160);
  v7 = *(v1 + 152);

  return _swift_task_switch(sub_100110054, v7, v6);
}

uint64_t sub_100110054()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_100005B60(v0 + 2, v3);
  sub_100110450(v4, v1, v3, v2);
  sub_100005A00((v0 + 2));

  v5 = v0[1];

  return v5();
}

void sub_10011011C()
{
  if (!qword_10059D610)
  {
    type metadata accessor for BagService.ObservationToken();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10059D610);
    }
  }
}

uint64_t sub_100110174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100085384;

  return sub_10010FB48();
}

uint64_t sub_10011039C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100085384;

  return sub_100110174();
}

id sub_100110450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, a3);
  v15 = sub_1000D0A24(@"testflight-extension/sync-interval-minutes", a3, a4);
  if (v16)
  {
    v17 = 480;
  }

  else
  {
    v17 = v15;
  }

  v18 = sub_1000D0A24(@"testflight-extension/sync-grace-period-minutes", a3, a4);
  v20 = 240;
  if ((v19 & 1) == 0)
  {
    v20 = v18;
  }

  v43 = v20;
  v21 = OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_syncActivity;
  v22 = *(a2 + OBJC_IVAR____TtC9appstored38TestFlightExtensionSyncActivityManager_syncActivity);
  if (v22)
  {
    if (*&v22[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncIntervalMinutes] == v17 && *&v22[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncGracePeriodMinutes] == v17)
    {
      return (*(v12 + 8))(v14, a3);
    }

    v41 = v17;
    v40 = v22;
    static Logger.testFlightExtension.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Resetting activity for TestFlight extension due to changed intervals", v25, 2u);
    }

    (*(v42 + 8))(v11, v8);
    objc_opt_self();
    result = sub_1001DA8BC();
    if (!result)
    {
      goto LABEL_17;
    }

    v27 = result;
    v28 = v40;
    v29 = String._bridgeToObjectiveC()();
    sub_1001DCA80(v27, v28, v29);

    v30 = *(a2 + v21);
    *(a2 + v21) = 0;

    v17 = v41;
    if (*(a2 + v21))
    {
      return (*(v12 + 8))(v14, a3);
    }
  }

  v31 = *(a2 + 24);
  v32 = objc_allocWithZone(type metadata accessor for TestFlightExtensionSyncActivity());
  v33 = v31;
  v34 = sub_100145C44(v33, v17, v43);
  v35 = *(a2 + v21);
  *(a2 + v21) = v34;
  v36 = v34;

  objc_opt_self();
  result = sub_1001DA8BC();
  if (result)
  {
    v37 = result;
    v38 = v36;
    v39 = String._bridgeToObjectiveC()();
    sub_1001DB1E8(v37, v38, v39);

    return (*(v12 + 8))(v14, a3);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100110820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110890()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100086B9C;

  return sub_10010E630(v2);
}

unint64_t sub_10011093C()
{
  result = qword_10059D7B0;
  if (!qword_10059D7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059D7B0);
  }

  return result;
}

uint64_t sub_100110988(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001109D0()
{
  result = qword_10059D7C8;
  if (!qword_10059D7C8)
  {
    sub_10009F7F8(&qword_10059D7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D7C8);
  }

  return result;
}

uint64_t sub_100110A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110AAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_10010F320(a1, v4, v5, v6, (v1 + 5));
}

void *sub_100110B6C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_100116A78(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100116A78(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_100110D80()
{
  result = [objc_allocWithZone(type metadata accessor for LaunchHistory()) init];
  qword_1005AB128 = result;
  return result;
}

uint64_t sub_100110E0C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v3 = sub_10036C90C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100116EE0;
  *(v5 + 24) = v4;
  v8[4] = sub_100116F44;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001116BC;
  v8[3] = &unk_10050E678;
  v6 = _Block_copy(v8);

  [v3 modifyUsingTransaction:v6];

  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100110F94(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 1;
  }

  v27 = objc_opt_self();
  v26 = objc_opt_self();
  sub_10009FAD4(0, &qword_10059D860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v31 = 0;
  v30 = v3 - 1;
  for (i = (a2 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;
    sub_100085D40(&unk_10059DC80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100436FD0;
    aBlock = v7;
    v33 = v6;
    swift_bridgeObjectRetain_n();
    v9 = @"bundle_id";
    v10 = [v27 predicateWithProperty:v9 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();

    v11 = sub_10009FAD4(0, &unk_10059C480);
    *(v8 + 56) = v11;
    *(v8 + 32) = v10;
    aBlock = v7;
    v33 = v6;
    swift_bridgeObjectRetain_n();
    v12 = @"containing_bundle_id";
    v13 = [v27 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();

    *(v8 + 88) = v11;
    *(v8 + 64) = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v26 predicateMatchingAnyPredicates:isa];

    v16 = [a1 connection];
    v17 = sub_1002D3F5C(ObjCClassFromMetadata, v16, v15);

    v18 = [v24 defaultProperties];
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = v7;
    v19[4] = v6;
    v19[5] = a3;
    v20 = a1;
    sub_100006F8C(v31);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_100116EE8;
    *(v21 + 24) = v19;
    v36 = sub_100116EF4;
    v37 = v21;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100111628;
    v35 = &unk_10050E6F0;
    v22 = _Block_copy(&aBlock);

    [v17 enumeratePersistentIDsAndProperties:v18 usingBlock:v22];

    _Block_release(v22);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      break;
    }

    if (!v30)
    {

      return 1;
    }

    --v30;
    v31 = sub_100116EE8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001113BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a5 connection];
  v16 = [objc_allocWithZone(LaunchEventEntity) initWithPersistentID:a1 onConnection:v15];

  [v16 deleteFromDatabase];
  static Logger.appUsage.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = a6;
    v29 = v20;
    *v19 = 136446466;
    v21 = _typeName(_:qualified:)();
    v23 = sub_1001AD0D8(v21, v22, &v29);
    v28 = v11;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1001AD0D8(v27, a7, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s][%{public}s] Removed launch history", v19, 0x16u);
    swift_arrayDestroy();

    return (*(v12 + 8))(v14, v28);
  }

  else
  {

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100111628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(a2, v9, a4, a5);
}

uint64_t sub_1001116BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_100111764(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10009FAD4(0, &qword_10059D860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [a1 connection];
  v11 = sub_1002D3F5C(ObjCClassFromMetadata, v10, 0);

  v12 = [objc_opt_self() defaultProperties];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100116E24;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100116ED8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011C6BC;
  aBlock[3] = &unk_10050E600;
  v16 = _Block_copy(aBlock);

  [v11 enumerateMemoryEntitiesWithProperties:v12 usingBlock:v16];

  _Block_release(v16);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

id sub_100111A24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  result = sub_10038ADA4(v11);
  if (result)
  {
    v13 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = DateInterval.contains(_:)();
    result = (*(v8 + 8))(v10, v7);
    if (v14)
    {
      v15 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100111CC0(void *a1)
{
  v71 = a1;
  v64[1] = swift_getObjectType();
  v2 = type metadata accessor for DateInterval();
  v64[0] = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v64 - v6;
  v8 = type metadata accessor for Logger();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = v64 - v12;
  v13 = type metadata accessor for Date();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v64 - v18;
  __chkstk_darwin(v17);
  v21 = v64 - v20;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v23 = v22;
  v68 = v1;
  v24 = &v1[OBJC_IVAR____TtC9appstored13LaunchHistory_lockedThing];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC9appstored13LaunchHistory_lockedThing]);
  v25 = v24[1];
  os_unfair_lock_unlock(v24);
  if (v25 == 0.0)
  {
    objc_opt_self();
    v26 = sub_10036C90C();
    v27 = sub_10036CA34(v26);

    if (v27)
    {
      result = sub_1003D3D04(v27);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v29 = result;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v31 = v30;
      (*(v69 + 8))(v19, v70);
      os_unfair_lock_lock(v24);
      *(v24 + 1) = v31;
      os_unfair_lock_unlock(v24);
    }
  }

  os_unfair_lock_lock(v24);
  v32 = v24[1];
  os_unfair_lock_unlock(v24);
  if (v32 == COERCE_DOUBLE(1) || (os_unfair_lock_lock(v24), v33 = v24[1], os_unfair_lock_unlock(v24), v23 - v33 > 300.0))
  {
    os_unfair_lock_lock(v24);
    v34 = v24[1];
    os_unfair_lock_unlock(v24);
    if (v34 <= 0.0)
    {
      static Logger.appUsage.getter();
      v48 = v71;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72 = v53;
        *v51 = 136446466;
        v54 = _typeName(_:qualified:)();
        v56 = sub_1001AD0D8(v54, v55, &v72);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2112;
        *(v51 + 14) = v48;
        *v52 = v48;
        v57 = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s/%@] Refreshing launch history events for initial sync", v51, 0x16u);
        sub_100005518(v52, &unk_10059C250);

        sub_100005A00(v53);
      }

      (*(v66 + 8))(v11, v67);
    }

    else
    {
      v35 = v65;
      static Logger.appUsage.getter();
      v36 = v71;
      v37 = v68;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72 = v42;
        *v40 = 136446722;
        v43 = _typeName(_:qualified:)();
        v45 = sub_1001AD0D8(v43, v44, &v72);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v36;
        *v41 = v36;
        *(v40 + 22) = 2048;
        v46 = v36;
        os_unfair_lock_lock(v24);
        v47 = v24[1];
        os_unfair_lock_unlock(v24);
        *(v40 + 24) = v23 - v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}s/%@] Refreshing launch history events after %f seconds", v40, 0x20u);
        sub_100005518(v41, &unk_10059C250);

        sub_100005A00(v42);

        (*(v66 + 8))(v65, v67);
      }

      else
      {

        (*(v66 + 8))(v35, v67);
      }
    }

    v58 = sub_10011242C(v71);
  }

  else
  {
    (*(v69 + 16))(v16, v21, v70, v23 - v33);
    DateInterval.init(start:duration:)();
    v59 = v64[0];
    v60 = *(v64[0] + 16);
    v60(v5, v7, v2);
    v61 = type metadata accessor for LaunchSyncResult();
    v62 = objc_allocWithZone(v61);
    v60(&v62[OBJC_IVAR____TtC9appstored16LaunchSyncResult_dateInterval], v5, v2);
    *&v62[OBJC_IVAR____TtC9appstored16LaunchSyncResult_updateCount] = 0;
    *&v62[OBJC_IVAR____TtC9appstored16LaunchSyncResult_error] = 0;
    v73.receiver = v62;
    v73.super_class = v61;
    v58 = objc_msgSendSuper2(&v73, "init");
    v63 = *(v59 + 8);
    v63(v5, v2);
    v63(v7, v2);
  }

  (*(v69 + 8))(v21, v70);
  return v58;
}

uint64_t sub_10011242C(void *a1)
{
  v109 = a1;
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DateInterval();
  v99 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v91 - v5);
  v7 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v107 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v91 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v91 - v18;
  __chkstk_darwin(v17);
  v110 = &v91 - v20;
  v123 = 0;
  v21 = swift_allocObject();
  v106 = v21;
  *(v21 + 16) = 0;
  v94 = v21 + 16;
  v113 = objc_opt_self();
  v22 = sub_10036C90C();
  v23 = sub_10036CA34(v22);

  v24 = v23;
  if (!v23)
  {
    v24 = [objc_allocWithZone(LaunchEventSyncMetadata) init];
  }

  v101 = v24;
  v25 = sub_1003D3D04(v24);
  v104 = v19;
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v16;
    v28 = *(v11 + 32);
    v28(v9, v19, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v29 = v110;
    v28(v110, v9, v10);
    v30 = v29;
    v19 = v104;
    v16 = v27;
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v30 = v110;
    static Date.distantPast.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100005518(v9, &qword_10059CB40);
    }
  }

  v105 = v16;
  static Date.now.getter();
  v31 = *(v11 + 16);
  v93 = v11 + 16;
  v92 = v31;
  v31(v19, v30, v10);
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  v32 = v109;
  v122 = sub_100113074(v109, v6, 1);
  v33 = [objc_allocWithZone(type metadata accessor for Intents()) init];
  sub_10018A99C(v6, v32);
  v35 = v34;

  if (v35)
  {
    sub_100154D90(v35);
  }

  aBlock = sub_100116984(v103);
  sub_1001155CC(&aBlock);
  v102 = 0;
  isUniquelyReferenced_nonNull_native = aBlock;
  if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v37 = *(aBlock + 16);
LABEL_12:
  v95 = v11;
  v96 = v10;
  v97 = v6;
  v98 = v4;
  v100 = v1;
  if (v37)
  {
    v11 = 0;
    v114 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v6 = &_swiftEmptyDictionarySingleton;
    v10 = ObjectType;
    v1 = v113;
    v112 = v37;
    while (1)
    {
      if (v114)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(isUniquelyReferenced_nonNull_native + 16))
        {
          goto LABEL_46;
        }

        v40 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
      }

      v4 = v40;
      v41 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v37 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_12;
      }

      v42 = sub_10038AF64(v40);
      if (!v42)
      {
        v42 = sub_10038AD6C(v4);
        if (!v42)
        {

          goto LABEL_17;
        }
      }

      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v6[2])
      {
        sub_1000EE808(v44, v46);
        if (v47)
        {

          goto LABEL_16;
        }
      }

      v48 = v6;
      v6 = isUniquelyReferenced_nonNull_native;
      v4 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v48;
      v10 = sub_1000EE808(v44, v46);
      v50 = v48[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_45;
      }

      v1 = v49;
      if (v48[3] >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v6;
          if ((v49 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1001B18C8();
          isUniquelyReferenced_nonNull_native = v6;
          if ((v1 & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        sub_1001AF238(v52, isUniquelyReferenced_nonNull_native);
        v53 = sub_1000EE808(v44, v46);
        if ((v1 & 1) != (v54 & 1))
        {
          goto LABEL_51;
        }

        v10 = v53;
        isUniquelyReferenced_nonNull_native = v6;
        if ((v1 & 1) == 0)
        {
LABEL_35:
          v6 = aBlock;
          *(aBlock + 8 * (v10 >> 6) + 64) |= 1 << v10;
          v55 = (v6[6] + 16 * v10);
          *v55 = v44;
          v55[1] = v46;
          *(v6[7] + 8 * v10) = v4;

          v56 = v6[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_47;
          }

          v6[2] = v58;
          goto LABEL_15;
        }
      }

      v6 = aBlock;
      v38 = *(aBlock + 56);
      v39 = *(v38 + 8 * v10);
      *(v38 + 8 * v10) = v4;

LABEL_15:
      v10 = ObjectType;
LABEL_16:
      v37 = v112;
      v1 = v113;
LABEL_17:
      ++v11;
      if (v41 == v37)
      {
        goto LABEL_41;
      }
    }
  }

  v6 = &_swiftEmptyDictionarySingleton;
  v10 = ObjectType;
LABEL_41:

  v59 = sub_100110B6C(v6);

  v60 = sub_10036C90C();
  v61 = swift_allocObject();
  v62 = v106;
  v61[2] = v59;
  v61[3] = v62;
  v63 = v109;
  v61[4] = v109;
  v61[5] = &v123;
  v61[6] = v10;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_100116A18;
  *(v64 + 24) = v61;
  v114 = v61;
  v120 = sub_100116A28;
  v121 = v64;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_1001116BC;
  v119 = &unk_10050E498;
  v65 = _Block_copy(&aBlock);

  v66 = v10;
  v67 = v63;

  [v60 modifyUsingTransaction:v65];

  _Block_release(v65);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if (v60)
  {
    __break(1u);
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v69 = v101;
    sub_10023E000(v101, isa, @"last_duet_sync");

    v70 = sub_10036C90C();
    v71 = swift_allocObject();
    v71[2] = v69;
    v71[3] = v67;
    v71[4] = v66;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_100116A6C;
    *(v72 + 24) = v71;
    v120 = sub_100116F44;
    v121 = v72;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1001116BC;
    v119 = &unk_10050E510;
    v73 = _Block_copy(&aBlock);
    v74 = v67;
    v75 = v69;

    [v70 modifyUsingTransaction:v73];

    _Block_release(v73);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v77 = v76;
      v78 = v108 + OBJC_IVAR____TtC9appstored13LaunchHistory_lockedThing;
      os_unfair_lock_lock((v108 + OBJC_IVAR____TtC9appstored13LaunchHistory_lockedThing));
      *(v78 + 8) = v77;
      os_unfair_lock_unlock(v78);
      v112 = v75;
      v79 = v96;
      v92(v104, v110, v96);
      static Date.distantFuture.getter();
      v113 = v71;
      v80 = v98;
      DateInterval.init(start:end:)();
      swift_beginAccess();
      v81 = *(v106 + 16);
      v82 = v123;
      v83 = type metadata accessor for LaunchSyncResult();
      v84 = objc_allocWithZone(v83);
      v85 = v99;
      v86 = v100;
      (*(v99 + 16))(&v84[OBJC_IVAR____TtC9appstored16LaunchSyncResult_dateInterval], v80, v100);
      *&v84[OBJC_IVAR____TtC9appstored16LaunchSyncResult_updateCount] = v81;
      *&v84[OBJC_IVAR____TtC9appstored16LaunchSyncResult_error] = v82;
      swift_errorRetain();
      v115.receiver = v84;
      v115.super_class = v83;
      v87 = objc_msgSendSuper2(&v115, "init");

      v88 = *(v85 + 8);
      v88(v80, v86);
      v88(v97, v86);
      v89 = *(v95 + 8);
      v89(v105, v79);
      v89(v110, v79);

      return v87;
    }
  }

  __break(1u);
LABEL_51:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

char *sub_100113074(void *a1, void *a2, int a3)
{
  v210 = a3;
  v215 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_100085D40(&qword_10059CB40);
  v5 = __chkstk_darwin(v4 - 8);
  v192 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v193 = &v184 - v7;
  v205 = type metadata accessor for Date();
  v204 = *(v205 - 8);
  v214 = v204;
  v8 = __chkstk_darwin(v205);
  v187 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v186 = &v184 - v11;
  v12 = __chkstk_darwin(v10);
  v188 = &v184 - v13;
  v14 = __chkstk_darwin(v12);
  v189 = &v184 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v184 - v17;
  v19 = __chkstk_darwin(v16);
  v207 = (&v184 - v20);
  __chkstk_darwin(v19);
  v206 = &v184 - v21;
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v184 - v27;
  v29 = type metadata accessor for Logger();
  v217 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v208 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v200 = &v184 - v33;
  v34 = __chkstk_darwin(v32);
  v201 = &v184 - v35;
  __chkstk_darwin(v34);
  v37 = &v184 - v36;
  v219 = _swiftEmptyArrayStorage;
  static Logger.appUsage.getter();
  v211 = v23;
  v38 = *(v23 + 2);
  v38(v28, a2, v22);
  v213 = v26;
  v216 = a2;
  v38(v26, a2, v22);
  v39 = v215;
  v215 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v212 = v39;
  v209 = v29;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v197 = v44;
    v203 = swift_slowAlloc();
    v220 = v203;
    *v43 = 136446978;
    v45 = _typeName(_:qualified:)();
    LODWORD(v202) = v41;
    v47 = sub_1001AD0D8(v45, v46, &v220);
    v198 = v40;
    v48 = v47;

    *(v43 + 4) = v48;
    *(v43 + 12) = 2112;
    *(v43 + 14) = v39;
    *v44 = v39;
    *(v43 + 22) = 2048;
    v49 = v39;
    v50 = v206;
    DateInterval.start.getter();
    Date.timeIntervalSince1970.getter();
    v52 = trunc(v51);
    if (v52 >= 9.22337204e18 || v52 <= -9.22337204e18)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v54 = v51;
    }

    v55 = v214[1];
    v56 = v205;
    v55(v50, v205);
    v57 = *(v211 + 1);
    v57(v28, v22);
    *(v43 + 24) = v54;
    *(v43 + 32) = 2048;
    v58 = v207;
    v211 = v18;
    v59 = v213;
    DateInterval.end.getter();
    Date.timeIntervalSince1970.getter();
    v61 = trunc(v60);
    if (v61 >= 9.22337204e18 || v61 <= -9.22337204e18)
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v63 = v60;
    }

    v55(v58, v56);
    v64 = v59;
    v18 = v211;
    v57(v64, v22);
    *(v43 + 34) = v63;
    v65 = v198;
    _os_log_impl(&_mh_execute_header, v198, v202, "[%{public}s/%@] Looking for launch events from startDate: %{time_t}ld endDate: %{time_t}ld", v43, 0x2Au);
    sub_100005518(v197, &unk_10059C250);

    sub_100005A00(v203);

    v66 = *(v217 + 8);
    v67 = v215;
    v68 = v209;
  }

  else
  {
    v69 = *(v211 + 1);
    v69(v213, v22);
    v69(v28, v22);

    v66 = *(v217 + 8);
    v67 = v215;
    v68 = v29;
  }

  v206 = v66;
  (v66)(v67, v68);
  v70 = objc_opt_self();
  v71 = sub_10036E4EC();
  v218 = &_swiftEmptySetSingleton;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v74 = v214 + 1;
  v73 = v214[1];
  v75 = v205;
  v73(v18, v205);
  DateInterval.end.getter();
  v76 = Date._bridgeToObjectiveC()().super.isa;
  v214 = v74;
  v211 = v73;
  v73(v18, v75);
  v220 = 0;
  v77 = sub_10036DFAC(v70, v71, isa, v76, 0, &v220);

  v78 = v220;
  if (v77)
  {
    sub_10009FAD4(0, &qword_10059D858);
    v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v78;

    if (v79 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v83 = 0;
      v215 = (v79 & 0xC000000000000001);
      v198 = (v79 & 0xFFFFFFFFFFFFFF8);
      v197 = (v79 + 32);
      v204 += 7;
      v203 = (v217 + 8);
      v213 = _swiftEmptyArrayStorage;
      *&v81 = 136447234;
      v184 = v81;
      *&v81 = 136446722;
      v185 = v81;
      v208 = v79;
      v207 = i;
      while (1)
      {
        if (v215)
        {
          v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v83 >= v198[2].isa)
          {
            goto LABEL_71;
          }

          v84 = v197[v83];
        }

        v85 = v84;
        v86 = __OFADD__(v83, 1);
        v83 = (v83 + 1);
        if (v86)
        {
          break;
        }

        v87 = sub_10036B560(v84);
        if (v87)
        {
          v88 = v87;
          v216 = v85;
          v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;
          if (v210 & 1) != 0 && (v91 = v218, v218[2]) && (Hasher.init(_seed:)(), String.hash(into:)(), v92 = Hasher._finalize()(), v93 = v217, v94 = -1 << *(v91 + 32), v95 = v92 & ~v94, ((*(v91 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v95)))
          {
            v96 = ~v94;
            while (1)
            {
              v97 = (v91[6] + 16 * v95);
              if (*v97 == v93 && v97[1] == v90)
              {
                break;
              }

              v99 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v93 = v217;
              if (v99)
              {
                break;
              }

              v95 = (v95 + 1) & v96;
              if (((*(v91 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v95) & 1) == 0)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:
            v100 = v216;
            v101 = sub_10036B56C(v216) - 4;
            if (v101 >= 3)
            {

              v112 = v201;
              static Logger.appUsage.getter();
              v113 = v212;
              v114 = v212;

              v115 = Logger.logObject.getter();
              v116 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v202 = swift_slowAlloc();
                v220 = v202;
                *v117 = v185;
                v119 = _typeName(_:qualified:)();
                v121 = sub_1001AD0D8(v119, v120, &v220);
                v75 = v205;

                *(v117 + 4) = v121;
                *(v117 + 12) = 2112;
                *(v117 + 14) = v114;
                *v118 = v113;
                *(v117 + 22) = 2082;
                v122 = v114;
                v123 = sub_1001AD0D8(v217, v90, &v220);

                *(v117 + 24) = v123;
                _os_log_impl(&_mh_execute_header, v115, v116, "[%{public}s/%@] [%{public}s) Unsupported source stream", v117, 0x20u);
                sub_100005518(v118, &unk_10059C250);

                swift_arrayDestroy();

                v124 = v201;
              }

              else
              {

                v124 = v112;
              }

              (v206)(v124, v209);
            }

            else
            {
              LODWORD(v202) = v101;
              v102 = sub_1002CCA54(v100);
              if (v102)
              {
                v103 = v193;
                v104 = v102;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v105 = *v204;
                (*v204)(v103, 0, 1, v75);
                sub_100005518(v103, &qword_10059CB40);
                v220 = 0;
                v221 = 0xE000000000000000;
                v106 = sub_1002CCA54(v100);
                if (!v106)
                {
                  goto LABEL_76;
                }

                v107 = v106;
                v108 = v189;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                sub_10008B538();
                v109._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v109);

                (v211)(v108, v75);
                v111 = v220;
                v110 = v221;
                v100 = v216;
              }

              else
              {
                v105 = *v204;
                v125 = v193;
                (*v204)(v193, 1, 1, v75);
                sub_100005518(v125, &qword_10059CB40);
                v110 = 0xE200000000000000;
                v111 = 16718;
              }

              v213 = v110;
              v126 = sub_1001FBB74(v100);
              v196 = v111;
              if (v126)
              {
                v127 = v192;
                v128 = v126;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v105(v127, 0, 1, v75);
                sub_100005518(v127, &qword_10059CB40);
                v220 = 0;
                v221 = 0xE000000000000000;
                v129 = sub_1001FBB74(v100);
                if (!v129)
                {
                  goto LABEL_77;
                }

                v130 = v129;
                v131 = v188;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                sub_10008B538();
                v132._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v132);

                (v211)(v131, v75);
                v133 = v220;
                v134 = v221;
              }

              else
              {
                v135 = v192;
                v105(v192, 1, 1, v75);
                sub_100005518(v135, &qword_10059CB40);
                v134 = 0xE200000000000000;
                v133 = 16718;
              }

              v195 = v133;
              v136 = v200;
              static Logger.appUsage.getter();
              v137 = v212;

              v138 = v213;

              v139 = Logger.logObject.getter();
              v140 = static os_log_type_t.default.getter();

              v194 = v140;
              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                v142 = swift_slowAlloc();
                v190 = v139;
                v143 = v142;
                v191 = swift_slowAlloc();
                v220 = v191;
                *v141 = v184;
                v144 = _typeName(_:qualified:)();
                v146 = sub_1001AD0D8(v144, v145, &v220);

                *(v141 + 4) = v146;
                v147 = v209;
                *(v141 + 12) = 2112;
                *(v141 + 14) = v137;
                *v143 = v212;
                *(v141 + 22) = 2082;
                v148 = v137;
                *(v141 + 24) = sub_1001AD0D8(v217, v90, &v220);
                *(v141 + 32) = 2082;
                *(v141 + 34) = sub_1001AD0D8(v196, v138, &v220);
                *(v141 + 42) = 2082;
                *(v141 + 44) = sub_1001AD0D8(v195, v134, &v220);
                v149 = v190;
                _os_log_impl(&_mh_execute_header, v190, v194, "[%{public}s/%@] [%{public}s] Found app launch usage with startDate: %{public}s endDate: %{public}s", v141, 0x34u);
                sub_100005518(v143, &unk_10059C250);

                swift_arrayDestroy();

                v150 = v200;
                v151 = v147;
              }

              else
              {

                v150 = v136;
                v151 = v209;
              }

              (v206)(v150, v151);
              v152 = v216;
              v153 = sub_10038AA5C(objc_allocWithZone(LaunchEvent), (v202 + 5));
              v75 = v205;
              if (!v153)
              {

                __break(1u);
LABEL_76:

                __break(1u);
LABEL_77:

                __break(1u);
              }

              v154 = v153;

              sub_10038B29C(v154, v88);

              v155 = sub_10036B814(v152);
              sub_10038B2B0(v154, v155);

              v156 = sub_1002CCA54(v152);
              if (v156)
              {
                v157 = v186;
                v158 = v156;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v159.super.isa = Date._bridgeToObjectiveC()().super.isa;
                v160 = v157;
                v152 = v216;
                (v211)(v160, v75);
              }

              else
              {
                v159.super.isa = 0;
              }

              sub_10038B2D8(v154, v159.super.isa);

              v161 = sub_1001FBB74(v152);
              if (v161)
              {
                v162 = v187;
                v163 = v161;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v164.super.isa = Date._bridgeToObjectiveC()().super.isa;
                v165 = v162;
                v152 = v216;
                (v211)(v165, v75);
              }

              else
              {
                v164.super.isa = 0;
              }

              sub_10038B2C4(v154, v164.super.isa);

              v166 = sub_1001FBC2C(v152);
              sub_10038B2EC(v154, v166);
              v167 = v154;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v213 = v219;
              sub_100175394(&v220, v217, v90);
            }
          }

          v79 = v208;
          i = v207;
          if (v83 == v207)
          {
            goto LABEL_74;
          }
        }

        else
        {

          if (v83 == i)
          {
            goto LABEL_74;
          }
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    v213 = _swiftEmptyArrayStorage;
LABEL_74:

    return v213;
  }

  else
  {
    v168 = v220;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v169 = v208;
    static Logger.appUsage.getter();
    v170 = v212;
    swift_errorRetain();
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      *v173 = 136446722;
      v175 = _typeName(_:qualified:)();
      v177 = sub_1001AD0D8(v175, v176, &v220);

      *(v173 + 4) = v177;
      *(v173 + 12) = 2112;
      *(v173 + 14) = v170;
      *v174 = v170;
      *(v173 + 22) = 2082;
      swift_getErrorValue();
      v178 = v170;
      v179 = Error.localizedDescription.getter();
      v181 = sub_1001AD0D8(v179, v180, &v220);

      *(v173 + 24) = v181;
      _os_log_impl(&_mh_execute_header, v171, v172, "[%{public}s/%@] Error accessing Biome launches: %{public}s", v173, 0x20u);
      sub_100005518(v174, &unk_10059C250);

      swift_arrayDestroy();

      v182 = v208;
    }

    else
    {

      v182 = v169;
    }

    (v206)(v182, v209);
    return _swiftEmptyArrayStorage;
  }
}

BOOL sub_1001146B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v56 = a6;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  sub_10009FAD4(0, &qword_10059D850);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v58[0] = 0;
  v18 = sub_1003F1928(a1, isa);

  if (!v18)
  {
    v55 = v11;
    v35 = v58[0];
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a5 = v36;
    swift_errorRetain();

    static Logger.appUsage.getter();
    v37 = a4;
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v38, v39))
    {

      v33 = *(v55 + 8);
      v34 = v14;
      v50 = v10;
      goto LABEL_9;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58[0] = v53;
    *v40 = 136446722;
    v42 = _typeName(_:qualified:)();
    v44 = sub_1001AD0D8(v42, v43, v58);
    v54 = 0;
    v45 = v44;

    *(v40 + 4) = v45;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v37;
    *(v40 + 22) = 2082;
    swift_getErrorValue();
    v56 = v10;
    v46 = v37;
    v47 = Error.localizedDescription.getter();
    v49 = sub_1001AD0D8(v47, v48, v58);

    *(v40 + 24) = v49;
    v18 = v54;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}s/%@] Launch history import failed with error: %{public}s", v40, 0x20u);
    sub_100005518(v41, &unk_10059C250);

    swift_arrayDestroy();

    v33 = *(v55 + 8);
    v34 = v14;
LABEL_6:
    v50 = v56;
LABEL_9:
    v33(v34, v50);
    return v18 != 0;
  }

  v19 = v58[0];
  v20 = [v18 count];
  swift_beginAccess();
  *(a3 + 16) = v20;
  static Logger.appUsage.getter();
  swift_retain_n();
  v21 = a4;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55 = v11;
    v26 = v25;
    v54 = swift_slowAlloc();
    v57 = v54;
    *v24 = 136446722;
    v27 = _typeName(_:qualified:)();
    v56 = v10;
    v29 = v18;
    v30 = sub_1001AD0D8(v27, v28, &v57);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v21;
    *v26 = v21;
    *(v24 + 22) = 2048;
    swift_beginAccess();
    v31 = *(a3 + 16);
    v32 = v21;

    *(v24 + 24) = v31;
    v18 = v29;

    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s/%@] Launch history import resulted in %ld updated event(s)", v24, 0x20u);
    sub_100005518(v26, &unk_10059C250);

    sub_100005A00(v54);

    v33 = *(v55 + 8);
    v34 = v16;
    goto LABEL_6;
  }

  (*(v11 + 8))(v16, v10);
  return v18 != 0;
}