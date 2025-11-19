uint64_t sub_100001880()
{
  v1 = [v0 type];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 1;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 1;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v19 & 1;
}

uint64_t sub_100001A0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100001E80();
}

uint64_t sub_100001A9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000078C0(&qword_100020D38, &qword_100017000) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000079FC(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009E48(v11, &qword_100020D38, &qword_100017000);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100009E48(a3, &qword_100020D38, &qword_100017000);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009E48(a3, &qword_100020D38, &qword_100017000);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100001E80()
{
  v1[95] = v0;
  v2 = *(*(sub_1000078C0(&qword_100020DA0, &qword_100017070) - 8) + 64) + 15;
  v1[96] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[97] = v3;
  v4 = *(v3 - 8);
  v1[98] = v4;
  v5 = *(v4 + 64) + 15;
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();

  return _swift_task_switch(sub_100001F9C, 0, 0);
}

uint64_t sub_100001F9C()
{
  v114 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 824) = sub_100008A68(v1, qword_100021CC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "NotifyWhenFoundNotificationService: Handling new Notify When Found notification", v4, 2u);
  }

  v5 = *(v0 + 760);

  v6 = [*(v5 + 104) content];
  [v6 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009CB4(0, &qword_100021050, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "NotifyWhenFoundNotificationService: No UNMutableNotificationContent", v24, 2u);
    }

    v25 = *(v0 + 760);

    v26 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v27 = String._bridgeToObjectiveC()();
    [v26 setBody:v27];

    v28 = *(v25 + 120);
    (*(v25 + 112))(v26);
    goto LABEL_13;
  }

  v7 = *(v0 + 752);
  *(v0 + 832) = v7;
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v111 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v113[0] = v12;
    *v11 = 136315138;
    v13 = [v8 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_1000141AC(v14, v16, v113);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "NotifyWhenFoundNotificationService: Extracting payload dictionary from: %s", v11, 0xCu);
    sub_100008A1C(v12);
  }

  v18 = *(v0 + 760);
  v19 = [*(v18 + 96) userInfo];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_100004790(v20);

  if (!v21)
  {
    v29 = v111;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113[0] = v112;
      *v32 = 136315138;
      v33 = [v29 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Dictionary.description.getter();
      v36 = v35;

      v37 = sub_1000141AC(v34, v36, v113);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "NotifyWhenFoundNotificationService: Could not get payload dictionary from: %s", v32, 0xCu);
      sub_100008A1C(v112);
    }

    v38 = *(v0 + 760);
    v40 = *(v38 + 112);
    v39 = *(v38 + 120);
    v41 = *(v18 + 96);
    v40();

    goto LABEL_17;
  }

  sub_100004A6C(v0 + 80);
  v110 = v18;

  v49 = *(v0 + 160);
  *(v0 + 312) = *(v0 + 144);
  *(v0 + 328) = v49;
  v50 = *(v0 + 128);
  *(v0 + 280) = *(v0 + 112);
  *(v0 + 296) = v50;
  *(v0 + 408) = *(v0 + 240);
  v51 = *(v0 + 224);
  *(v0 + 376) = *(v0 + 208);
  *(v0 + 392) = v51;
  v52 = *(v0 + 192);
  *(v0 + 344) = *(v0 + 176);
  *(v0 + 360) = v52;
  v53 = *(v0 + 96);
  *(v0 + 248) = *(v0 + 80);
  *(v0 + 264) = v53;
  if (*(v0 + 304) && (v54 = *(v0 + 288)) != 0 && v54[2])
  {
    countAndFlagsBits = v54[4];
    object = v54[5];
  }

  else
  {
    v57 = *(v0 + 760);
    v58 = *(v57 + 64);
    v59 = *(v57 + 72);
    v60 = [objc_opt_self() mainBundle];
    v116._object = 0x8000000100017C50;
    v61._countAndFlagsBits = v58;
    v61._object = v59;
    v62.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v62.value._object = 0xEB00000000656C62;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v116._countAndFlagsBits = 0xD000000000000018;
    v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v116);
    countAndFlagsBits = v64._countAndFlagsBits;
    object = v64._object;
  }

  *(v0 + 856) = object;
  *(v0 + 848) = countAndFlagsBits;
  *(v0 + 840) = 0x8000000100017C50;
  v65 = *(v0 + 760);
  v66 = *(v65 + 48);
  *(v0 + 864) = v66;
  v67 = *(v65 + 56);
  *(v0 + 872) = v67;
  v68 = objc_opt_self();
  *(v0 + 880) = v68;
  v69 = [v68 mainBundle];
  v117._object = 0x8000000100017C50;
  v70._countAndFlagsBits = v66;
  v70._object = v67;
  v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71.value._object = 0xEB00000000656C62;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v117._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v117);

  *(v0 + 888) = sub_1000078C0(&qword_100020DA8, &qword_100017078);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100016F10;
  *(v73 + 56) = &type metadata for String;
  v74 = sub_100008D38();
  *(v0 + 896) = v74;
  *(v73 + 64) = v74;
  *(v73 + 32) = countAndFlagsBits;
  *(v73 + 40) = object;

  String.init(format:_:)();

  v75 = String._bridgeToObjectiveC()();

  [v111 setBody:v75];

  v76 = v111;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    *(v79 + 4) = v76;
    *v80 = v76;
    v81 = v76;
    _os_log_impl(&_mh_execute_header, v77, v78, "NotifyWhenFoundNotificationService: Content after updating with fallback data: %@.", v79, 0xCu);
    sub_100009E48(v80, &qword_100020D60, &qword_100017050);
  }

  v82 = v110;
  v83 = *(v110 + 96);
  *(v110 + 96) = v76;
  v26 = v76;

  if (!*(v0 + 408))
  {

    sub_100008D8C(v0 + 248);
    goto LABEL_31;
  }

  v84 = *(v0 + 784);
  v85 = *(v0 + 776);
  v86 = *(v0 + 768);
  v87 = *(v0 + 400);
  v88 = *(v0 + 408);

  sub_100008D8C(v0 + 248);
  UUID.init(uuidString:)();

  if ((*(v84 + 48))(v86, 1, v85) == 1)
  {
    v89 = *(v0 + 768);

    sub_100009E48(v89, &qword_100020DA0, &qword_100017070);
    v82 = v110;
LABEL_31:
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "NotifyWhenFoundNotificationService: No subscription identifier. Nothing else to do.", v92, 2u);
    }

    v93 = *(v0 + 760);

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v113[0] = v97;
      *v96 = 136315138;
      v98 = [*(v82 + 96) body];
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = sub_1000141AC(v99, v101, v113);

      *(v96 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v94, v95, "NotifyWhenFoundNotificationService: Completing with fallback data from server %s", v96, 0xCu);
      sub_100008A1C(v97);
    }

    v103 = *(v0 + 760);
    v105 = *(v103 + 112);
    v104 = *(v103 + 120);
    v106 = *(v82 + 96);
    v105();

LABEL_13:
LABEL_17:
    v42 = *(v0 + 816);
    v43 = *(v0 + 808);
    v44 = *(v0 + 800);
    v45 = *(v0 + 792);
    v46 = *(v0 + 768);

    v47 = *(v0 + 8);

    return v47();
  }

  (*(*(v0 + 784) + 32))(*(v0 + 816), *(v0 + 768), *(v0 + 776));
  v107 = swift_task_alloc();
  *(v0 + 904) = v107;
  *v107 = v0;
  v107[1] = sub_100002C28;
  v108 = *(v0 + 816);
  v109 = *(v0 + 760);

  return sub_1000056C8(v108);
}

uint64_t sub_100002C28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 904);
  v6 = *v2;
  *(v3 + 912) = a1;
  *(v3 + 920) = a2;

  return _swift_task_switch(sub_100002D2C, 0, 0);
}

uint64_t sub_100002D2C()
{
  v1 = *(v0 + 912);
  if (v1)
  {
    v2 = *(v0 + 760);
    *(v0 + 928) = swift_allocObject();
    swift_weakInit();
    if (sub_100001880())
    {
      v3 = *(v0 + 808);
      v4 = *(v0 + 784);
      v5 = *(v0 + 776);
      v6 = *(*(v0 + 760) + 88);
      *(v0 + 936) = v6;
      v7 = v6;
      v8 = [v1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 944) = isa;
      v10 = *(v4 + 8);
      *(v0 + 952) = v10;
      *(v0 + 960) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v3, v5);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 1032;
      *(v0 + 24) = sub_10000363C;
      v11 = swift_continuation_init();
      *(v0 + 472) = sub_1000078C0(&qword_100020DB8, &qword_100017088);
      *(v0 + 416) = _NSConcreteStackBlock;
      *(v0 + 424) = 1107296256;
      *(v0 + 432) = sub_10000566C;
      *(v0 + 440) = &unk_10001CE18;
      *(v0 + 448) = v11;
      [v7 postedLocalNotifyWhenFoundNotificationForUUID:isa completion:v0 + 416];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v87 = *(v0 + 920);
      v27 = *(v0 + 912);
      v28 = *(v0 + 832);
      v29 = *(v0 + 808);
      v30 = *(v0 + 800);
      v31 = *(v0 + 784);
      v32 = *(v0 + 776);
      v33 = [v27 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      v34 = *(v31 + 8);
      *(v0 + 968) = v34;
      *(v0 + 976) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34(v29, v32);
      v35 = String._bridgeToObjectiveC()();

      [v28 setTargetContentIdentifier:v35];

      *(v0 + 720) = 0xD000000000000010;
      *(v0 + 728) = 0x8000000100017950;
      AnyHashable.init<A>(_:)();
      v36 = [v27 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = UUID.uuidString.getter();
      v39 = v38;
      v34(v30, v32);
      *(v0 + 616) = &type metadata for String;
      *(v0 + 592) = v37;
      *(v0 + 600) = v39;
      v40 = [v28 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009CA4((v0 + 592), (v0 + 688));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000FDF8((v0 + 688), v0 + 480, isUniquelyReferenced_nonNull_native);
      sub_100008E18(v0 + 480);
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v28 setUserInfo:v42];

      if (v87)
      {
        v43 = *(v0 + 920);
        v44 = *(v0 + 832);
        v45 = *(v0 + 792);
        v46 = *(v0 + 776);
        *(v0 + 736) = 0x65644970756F7267;
        *(v0 + 744) = 0xEF7265696669746ELL;
        v47 = v43;
        AnyHashable.init<A>(_:)();
        v48 = [v47 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = UUID.uuidString.getter();
        v51 = v50;
        v34(v45, v46);
        *(v0 + 648) = &type metadata for String;
        *(v0 + 624) = v49;
        *(v0 + 632) = v51;
        v52 = [v44 userInfo];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100009CA4((v0 + 624), (v0 + 656));
        v53 = swift_isUniquelyReferenced_nonNull_native();
        sub_10000FDF8((v0 + 656), v0 + 520, v53);
        sub_100008E18(v0 + 520);
        v54 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v44 setUserInfo:v54];
      }

      v55 = sub_100008E6C(*(v0 + 912), *(v0 + 920), *(v0 + 848), *(v0 + 856));
      v57 = v56;

      *(v0 + 984) = v55;
      *(v0 + 992) = v57;
      if (sub_100001880())
      {
        v58 = *(v0 + 832);
        v59 = String._bridgeToObjectiveC()();
        [v58 setTitle:v59];
      }

      v60 = *(v0 + 896);
      v61 = *(v0 + 888);
      v62 = *(v0 + 872);
      v63 = *(v0 + 864);
      v64 = *(v0 + 840);
      v65 = *(v0 + 832);
      v88 = *(v0 + 824);
      v66 = [*(v0 + 880) mainBundle];
      v90._object = v64;
      v67.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v67.value._object = 0xEB00000000656C62;
      v90._countAndFlagsBits = 0xD000000000000018;
      v68._countAndFlagsBits = v63;
      v68._object = v62;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v67, v66, v69, v90);

      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100016F10;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = v60;
      *(v70 + 32) = v55;
      *(v70 + 40) = v57;

      String.init(format:_:)();

      v71 = String._bridgeToObjectiveC()();

      [v65 setBody:v71];

      v72 = v65;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 832);
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        *(v76 + 4) = v75;
        *v77 = v75;
        v78 = v75;
        _os_log_impl(&_mh_execute_header, v73, v74, "NotifyWhenFoundNotificationService: Content after updating with beacon data: %@.", v76, 0xCu);
        sub_100009E48(v77, &qword_100020D60, &qword_100017050);
      }

      v79 = *(v0 + 912);
      v80 = *(v0 + 832);
      v81 = *(v0 + 760);

      v82 = *(v81 + 96);
      *(v81 + 96) = v80;
      v83 = v80;

      v84 = swift_task_alloc();
      *(v0 + 1000) = v84;
      *v84 = v0;
      v84[1] = sub_100003F2C;
      v85 = *(v0 + 760);

      return sub_1000062E8(v79);
    }
  }

  else
  {
    v12 = *(v0 + 856);
    v13 = *(v0 + 832);
    v14 = *(v0 + 816);
    v15 = *(v0 + 784);
    v16 = *(v0 + 776);
    v17 = *(v0 + 760);

    v19 = *(v17 + 112);
    v18 = *(v17 + 120);
    v20 = *(v17 + 96);
    v19();

    (*(v15 + 8))(v14, v16);
    v21 = *(v0 + 816);
    v22 = *(v0 + 808);
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 768);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10000363C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000371C, 0, 0);
}

uint64_t sub_10000371C()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 1032);

  if (v2 == 1)
  {
    v3 = *(v0 + 856);
    v4 = *(v0 + 824);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "NotifyWhenFoundNotificationService: Local notification was already posted, returning empty content.", v7, 2u);
    }

    v8 = *(v0 + 960);
    v9 = *(v0 + 952);
    v10 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = *(v0 + 832);
    v14 = *(v0 + 816);
    v15 = *(v0 + 776);

    v16 = [objc_allocWithZone(UNMutableNotificationContent) init];
    sub_100004ED8(v16, v12, v10);

    v9(v14, v15);
    v17 = *(v0 + 816);
    v18 = *(v0 + 808);
    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 768);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v83 = *(v0 + 920);
    v24 = *(v0 + 912);
    v25 = *(v0 + 832);
    v26 = *(v0 + 808);
    v27 = *(v0 + 800);
    v28 = *(v0 + 784);
    v29 = *(v0 + 776);
    v30 = [v24 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    v31 = *(v28 + 8);
    *(v0 + 968) = v31;
    *(v0 + 976) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v29);
    v32 = String._bridgeToObjectiveC()();

    [v25 setTargetContentIdentifier:v32];

    *(v0 + 720) = 0xD000000000000010;
    *(v0 + 728) = 0x8000000100017950;
    AnyHashable.init<A>(_:)();
    v33 = [v24 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = UUID.uuidString.getter();
    v36 = v35;
    v31(v27, v29);
    *(v0 + 616) = &type metadata for String;
    *(v0 + 592) = v34;
    *(v0 + 600) = v36;
    v37 = [v25 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009CA4((v0 + 592), (v0 + 688));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000FDF8((v0 + 688), v0 + 480, isUniquelyReferenced_nonNull_native);
    sub_100008E18(v0 + 480);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v25 setUserInfo:isa];

    if (v83)
    {
      v40 = *(v0 + 920);
      v41 = *(v0 + 832);
      v42 = *(v0 + 792);
      v43 = *(v0 + 776);
      *(v0 + 736) = 0x65644970756F7267;
      *(v0 + 744) = 0xEF7265696669746ELL;
      v44 = v40;
      AnyHashable.init<A>(_:)();
      v45 = [v44 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = UUID.uuidString.getter();
      v48 = v47;
      v31(v42, v43);
      *(v0 + 648) = &type metadata for String;
      *(v0 + 624) = v46;
      *(v0 + 632) = v48;
      v49 = [v41 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009CA4((v0 + 624), (v0 + 656));
      v50 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000FDF8((v0 + 656), v0 + 520, v50);
      sub_100008E18(v0 + 520);
      v51 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v41 setUserInfo:v51];
    }

    v52 = sub_100008E6C(*(v0 + 912), *(v0 + 920), *(v0 + 848), *(v0 + 856));
    v54 = v53;

    *(v0 + 984) = v52;
    *(v0 + 992) = v54;
    if (sub_100001880())
    {
      v55 = *(v0 + 832);
      v56 = String._bridgeToObjectiveC()();
      [v55 setTitle:v56];
    }

    v57 = *(v0 + 896);
    v58 = *(v0 + 888);
    v59 = *(v0 + 872);
    v60 = *(v0 + 864);
    v61 = *(v0 + 840);
    v62 = *(v0 + 832);
    v84 = *(v0 + 824);
    v63 = [*(v0 + 880) mainBundle];
    v86._object = v61;
    v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v64.value._object = 0xEB00000000656C62;
    v86._countAndFlagsBits = 0xD000000000000018;
    v65._countAndFlagsBits = v60;
    v65._object = v59;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v64, v63, v66, v86);

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100016F10;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v57;
    *(v67 + 32) = v52;
    *(v67 + 40) = v54;

    String.init(format:_:)();

    v68 = String._bridgeToObjectiveC()();

    [v62 setBody:v68];

    v69 = v62;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 832);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      *(v73 + 4) = v72;
      *v74 = v72;
      v75 = v72;
      _os_log_impl(&_mh_execute_header, v70, v71, "NotifyWhenFoundNotificationService: Content after updating with beacon data: %@.", v73, 0xCu);
      sub_100009E48(v74, &qword_100020D60, &qword_100017050);
    }

    v76 = *(v0 + 912);
    v77 = *(v0 + 832);
    v78 = *(v0 + 760);

    v79 = *(v78 + 96);
    *(v78 + 96) = v77;
    v80 = v77;

    v81 = swift_task_alloc();
    *(v0 + 1000) = v81;
    *v81 = v0;
    v81[1] = sub_100003F2C;
    v82 = *(v0 + 760);

    return sub_1000062E8(v76);
  }
}

uint64_t sub_100003F2C(uint64_t a1)
{
  v2 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_10000402C, 0, 0);
}

uint64_t sub_10000402C()
{
  v1 = v0[126];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[127] = v2;
    *v2 = v0;
    v2[1] = sub_1000041D4;

    return sub_100009438(v1);
  }

  else
  {
    v4 = v0[124];
    v20 = v0[122];
    v5 = v0[121];
    v6 = v0[116];
    v7 = v0[115];
    v8 = v0[114];
    v9 = v0[104];
    v10 = v0[102];
    v11 = v0[97];
    v12 = v0[95];

    v13 = *(v12 + 96);
    sub_100004ED8(v13, v8, v6);

    v5(v10, v11);
    v14 = v0[102];
    v15 = v0[101];
    v16 = v0[100];
    v17 = v0[99];
    v18 = v0[96];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000041D4(uint64_t a1)
{
  v2 = *(*v1 + 1016);
  v4 = *v1;
  *(*v1 + 1024) = a1;

  return _swift_task_switch(sub_1000042D4, 0, 0);
}

uint64_t sub_1000042D4()
{
  v1 = *(v0 + 1024);
  if (!v1)
  {
    v1 = *(v0 + 1008);
LABEL_7:

    v21 = *(v0 + 992);
    v74 = *(v0 + 976);
    v22 = *(v0 + 968);
    v23 = *(v0 + 928);
    v24 = *(v0 + 920);
    v25 = *(v0 + 912);
    v26 = *(v0 + 832);
    v27 = *(v0 + 816);
    v28 = *(v0 + 776);
    v29 = *(v0 + 760);

    v30 = *(v29 + 96);
    sub_100004ED8(v30, v25, v23);

    v22(v27, v28);
    goto LABEL_12;
  }

  v2 = [*(v0 + 1024) name];
  if (!v2)
  {

    goto LABEL_7;
  }

  v73 = v1;
  v3 = *(v0 + 912);
  v4 = v2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_100001880();
  v9 = *(v0 + 992);
  if (v8)
  {
    v70 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 840);
    v13 = *(v0 + 760);

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = [v11 mainBundle];
    v76._object = v12;
    v17._countAndFlagsBits = v14;
    v17._object = v15;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v76);

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100016F10;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v70;
    *(v20 + 32) = v5;
    *(v20 + 40) = v7;
  }

  else
  {
    v71 = *(v0 + 984);
    v31 = *(v0 + 896);
    v32 = *(v0 + 888);
    v33 = *(v0 + 840);
    v34 = *(v0 + 760);
    v35 = *(v34 + 32);
    v36 = *(v34 + 40);
    v37 = [*(v0 + 880) mainBundle];
    v77._object = v33;
    v38._countAndFlagsBits = v35;
    v38._object = v36;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v77._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v77);

    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100016F20;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v31;
    *(v41 + 32) = v71;
    *(v41 + 40) = v9;
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v31;
    *(v41 + 72) = v5;
    *(v41 + 80) = v7;
  }

  String.init(format:_:)();
  v42 = *(v0 + 832);
  v43 = *(v0 + 824);

  v44 = String._bridgeToObjectiveC()();

  [v42 setBody:v44];

  v45 = v42;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 832);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v48;
    *v50 = v48;
    v51 = v48;
    _os_log_impl(&_mh_execute_header, v46, v47, "NotifyWhenFoundNotificationService: Content after updating with location data: %@.", v49, 0xCu);
    sub_100009E48(v50, &qword_100020D60, &qword_100017050);
  }

  v52 = *(v0 + 1008);
  v69 = *(v0 + 968);
  v72 = *(v0 + 976);
  v53 = *(v0 + 928);
  v68 = *(v0 + 920);
  v54 = *(v0 + 912);
  v55 = *(v0 + 832);
  v56 = *(v0 + 816);
  v57 = *(v0 + 776);
  v58 = *(v0 + 760);

  v59 = *(v58 + 96);
  *(v58 + 96) = v55;
  v60 = v55;

  sub_100004ED8(v60, v54, v53);

  v69(v56, v57);
LABEL_12:
  v61 = *(v0 + 816);
  v62 = *(v0 + 808);
  v63 = *(v0 + 800);
  v64 = *(v0 + 792);
  v65 = *(v0 + 768);

  v66 = *(v0 + 8);

  return v66();
}

unint64_t sub_100004790(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000078C0(&qword_100020DF0, &qword_1000170A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100009DEC(*(a1 + 48) + 40 * v14, v29);
        sub_1000089B8(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100009DEC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000089B8(v27 + 8, v22);
        sub_100009E48(v26, &qword_100020DF8, qword_1000170A8);
        v23 = v20;
        sub_100009CA4(v22, v24);
        v15 = v23;
        sub_100009CA4(v24, v25);
        sub_100009CA4(v25, &v23);
        result = sub_1000148B4(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100008A1C(v12);
          result = sub_100009CA4(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100009CA4(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100009E48(v26, &qword_100020DF8, qword_1000170A8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100004A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v37[0] = 0;
  v5 = [v3 dataWithJSONObject:isa options:0 error:v37];

  v6 = *&v37[0];
  v7 = &NotifyWhenFoundNotificationService;
  if (v5)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100009D44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v1)
    {
      sub_100009D98(v8, v10);

      v32 = v37[9];
      *(a1 + 128) = v37[8];
      *(a1 + 144) = v32;
      *(a1 + 160) = v38;
      v33 = v37[5];
      *(a1 + 64) = v37[4];
      *(a1 + 80) = v33;
      v34 = v37[7];
      *(a1 + 96) = v37[6];
      *(a1 + 112) = v34;
      v35 = v37[1];
      *a1 = v37[0];
      *(a1 + 16) = v35;
      v36 = v37[3];
      *(a1 + 32) = v37[2];
      *(a1 + 48) = v36;
      return result;
    }

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008A68(v14, qword_100021CC8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v37[0] = v18;
      *v17 = 136315138;
      swift_errorRetain();
      sub_1000078C0(&qword_100020DC8, &qword_100017098);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000141AC(v19, v20, v37);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Excption decoding data - %s", v17, 0xCu);
      sub_100008A1C(v18);

      v7 = &NotifyWhenFoundNotificationService;
    }

    swift_willThrow();
    sub_100009D98(v8, v10);
  }

  else
  {
    v22 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (v7[41].base_props != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008A68(v23, qword_100021CC8);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v37[0] = v27;
    *v26 = 136315138;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v28 = String.init<A>(describing:)();
    v30 = sub_1000141AC(v28, v29, v37);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Excption serializing data - %s", v26, 0xCu);
    sub_100008A1C(v27);
  }

  return swift_willThrow();
}

void sub_100004ED8(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008A68(v11, qword_100021CC8);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    v19 = [v12 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = sub_1000141AC(v20, v22, aBlock);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "NotifyWhenFoundNotificationService: Disabling NWF on beacon: %s", v16, 0xCu);
    sub_100008A1C(v18);
    a1 = v34;

    a3 = v35;
  }

  v24 = objc_opt_self();
  v25 = [v12 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  v27 = [v24 disableNotifyWhenFound:isa];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = *(Strong + 80);

    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a3;
    aBlock[4] = sub_100009D3C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009EDC;
    aBlock[3] = &unk_10001CE90;
    v31 = _Block_copy(aBlock);
    v32 = a1;

    [v29 executeCommand:v27 completion:v31];

    _Block_release(v31);
    v27 = v29;
  }
}

uint64_t sub_1000052BC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008A68(v11, qword_100021CC8);
    v4 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, v12, "NotifyWhenFoundNotificationService: Disabling NWF completed successfully", v13, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A68(v3, qword_100021CC8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000141AC(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "NotifyWhenFoundNotificationService: Disabling NWF completed with error - %s", v6, 0xCu);
    sub_100008A1C(v7);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008A68(v14, qword_100021CC8);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "NotifyWhenFoundNotificationService: Showing final alert: %@", v18, 0xCu);
    sub_100009E48(v19, &qword_100020D60, &qword_100017050);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = *(result + 112);
    v22 = *(result + 120);

    v23(v15);
  }

  return result;
}

uint64_t sub_10000566C(uint64_t a1, char a2)
{
  v3 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000056C8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for UUID();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000057B8, 0, 0);
}

uint64_t sub_1000057B8()
{
  v27 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_100008A68(v5, qword_100021CC8);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[22];
  v11 = v0[23];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315138;
    sub_100008CF4(&qword_100020D98);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000141AC(v14, v16, &v26);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "NotifyWhenFoundNotificationService: Looking for beacon matching subscription: %s", v13, 0xCu);
    sub_100008A1C(v25);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v19 = v0[20];
  v20 = *(v0[21] + 88);
  v0[33] = v20;
  v21 = v20;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[34] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100005AC4;
  v23 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020D90, &qword_100017068);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100006274;
  v0[13] = &unk_10001CDC8;
  v0[14] = v23;
  [v21 notificationBeaconForSubscriptionId:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005AC4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100005BA4, 0, 0);
}

uint64_t sub_100005BA4()
{
  v93 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  if (!v2)
  {
    v5(*(v0 + 192), v8, v7);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 256);
    v38 = *(v0 + 184);
    v37 = *(v0 + 192);
    v39 = *(v0 + 176);
    if (v35)
    {
      v40 = swift_slowAlloc();
      v86 = v36;
      v41 = swift_slowAlloc();
      v92 = v41;
      *v40 = 136315138;
      sub_100008CF4(&qword_100020D98);
      v91 = v3;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v86(v37, v39);
      v45 = sub_1000141AC(v42, v44, &v92);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v33, v34, "NotifyWhenFoundNotificationService: No beacon found for subscription uuid - %s.", v40, 0xCu);
      sub_100008A1C(v41);

      v2 = 0;
    }

    else
    {

      v36(v37, v39);
    }

    v3 = 0;
    goto LABEL_13;
  }

  v5(*(v0 + 216), v8, v7);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 256);
  v14 = *(v0 + 216);
  if (v12)
  {
    v85 = v11;
    v15 = *(v0 + 208);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v81 = *(v0 + 216);
    v18 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v18 = 136315650;
    log = v10;
    v19 = [v9 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98);
    v88 = v2;
    v90 = v3;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v13(v15, v17);
    v23 = sub_1000141AC(v20, v22, &v92);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = [v9 type];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_1000141AC(v25, v27, &v92);
    v2 = v88;

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v3 = v90;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v13(v81, v17);
    v32 = sub_1000141AC(v29, v31, &v92);

    *(v18 + 24) = v32;
    _os_log_impl(&_mh_execute_header, log, v85, "NotifyWhenFoundNotificationService: Found beacon %s of type %s for subscription: %s", v18, 0x20u);
    swift_arrayDestroy();

    if (!v90)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v47 = *(v0 + 176);
    v46 = *(v0 + 184);

    v13(v14, v47);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v48 = *(v0 + 248);
  v49 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 200), *(v0 + 160), *(v0 + 176));
  v50 = v3;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 256);
  if (v53)
  {
    v87 = v52;
    v55 = *(v0 + 208);
    v56 = *(v0 + 176);
    v82 = *(v0 + 184);
    loga = *(v0 + 200);
    v57 = v50;
    v89 = v50;
    v58 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v58 = 136315394;
    v59 = [v57 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98);
    v80 = v51;
    v60 = v2;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v54(v55, v56);
    v64 = v61;
    v2 = v60;
    v65 = sub_1000141AC(v64, v63, &v92);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2080;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v54(loga, v56);
    v69 = sub_1000141AC(v66, v68, &v92);

    *(v58 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v80, v87, "NotifyWhenFoundNotificationService: Found beacon group %s for subscription: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v70 = *(v0 + 200);
    v71 = *(v0 + 176);
    v72 = *(v0 + 184);

    v54(v70, v71);
  }

LABEL_13:
  v74 = *(v0 + 216);
  v73 = *(v0 + 224);
  v76 = *(v0 + 200);
  v75 = *(v0 + 208);
  v77 = *(v0 + 192);

  v78 = *(v0 + 8);

  return v78(v2, v3);
}

uint64_t sub_100006274(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100008CB0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return _swift_continuation_resume(v6);
}

uint64_t sub_1000062E8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Date();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100006404, 0, 0);
}

uint64_t sub_100006404()
{
  v1 = v0[20];
  v2 = *(v0[21] + 80);
  v0[28] = v2;
  sub_1000078C0(&qword_100020D40, &qword_100017030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016F30;
  *(v3 + 32) = v1;
  sub_100009CB4(0, &qword_100020D48, SPBeacon_ptr);
  v4 = v2;
  v5 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000065B4;
  v7 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020D50, &qword_100017038);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100006FA8;
  v0[13] = &unk_10001CD00;
  v0[14] = v7;
  [v4 locationsForBeacons:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000065B4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100006694, 0, 0);
}

uint64_t sub_100006694()
{
  v71 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  v5 = [v3 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v4 + 16) && (v6 = sub_1000147D8(*(v0 + 216)), (v7 & 1) != 0))
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(*(v4 + 56) + 8 * v6);
    *(v0 + 240) = v14;
    v15 = *(v9 + 8);
    v16 = v14;
    v15(v8, v11);

    v17 = v16;
    [v17 latitude];
    v19 = v18;
    [v17 longitude];
    v21 = v20;
    v22 = objc_allocWithZone(CLLocation);
    [v17 horizontalAccuracy];
    v24 = v23;
    v25 = [v17 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
    v27 = [v22 initWithCoordinate:isa altitude:v19 horizontalAccuracy:v21 verticalAccuracy:-1.0 timestamp:{v24, -1.0}];
    *(v0 + 248) = v27;

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 160);
    v29 = type metadata accessor for Logger();
    *(v0 + 256) = sub_100008A68(v29, qword_100021CC8);
    v30 = v28;
    v31 = v27;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 160);
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = v34;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1000141AC(v38, v40, &v70);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      v42 = v31;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_1000141AC(v44, v46, &v70);

      *(v35 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v32, v33, "NotifyWhenFoundNotificationService: Latest unshifted location for %s is %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    v48 = swift_task_alloc();
    *(v0 + 264) = v48;
    *v48 = v0;
    v48[1] = sub_100006C64;

    return sub_10000706C();
  }

  else
  {
    v51 = *(v0 + 208);
    v50 = *(v0 + 216);
    v52 = *(v0 + 200);

    (*(v51 + 8))(v50, v52);
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 160);
    v54 = type metadata accessor for Logger();
    sub_100008A68(v54, qword_100021CC8);
    v55 = v53;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 160);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v59 = 136315138;
      v61 = v58;
      v62 = [v61 description];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_1000141AC(v63, v65, &v70);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "NotifyWhenFoundNotificationService: Unable to fetch latest location for %s.", v59, 0xCu);
      sub_100008A1C(v60);
    }

    v67 = *(v0 + 216);
    v68 = *(v0 + 192);

    v69 = *(v0 + 8);

    return v69(0);
  }
}

uint64_t sub_100006C64(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100006D64, 0, 0);
}

uint64_t sub_100006D64()
{
  v29 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 160);
  v3 = *(v0 + 272);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v27 = *(v0 + 248);
    v25 = *(v0 + 272);
    v26 = *(v0 + 240);
    v7 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = v7;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000141AC(v11, v13, &v28);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v0 + 152) = v25;
    v15 = v3;
    sub_1000078C0(&qword_100020D58, &qword_100017048);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000141AC(v16, v17, &v28);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "NotifyWhenFoundNotificationService: Latest shifted location for %s is %s.", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 248);
  }

  v20 = *(v0 + 272);
  v21 = *(v0 + 216);
  v22 = *(v0 + 192);

  v23 = *(v0 + 8);

  return v23(v20);
}

uint64_t sub_100006FA8(uint64_t a1)
{
  v1 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  type metadata accessor for UUID();
  sub_100009CB4(0, &qword_100020D80, SPBeaconLocation_ptr);
  sub_100008CF4(&qword_100020D88);
  **(*(v1 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10000708C()
{
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100008A68(v2, qword_100021CC8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "NotifyWhenFoundNotificationService: Shifting Location: %@", v7, 0xCu);
    sub_100009E48(v8, &qword_100020D60, &qword_100017050);
  }

  v10 = *(v0 + 24);

  [v10 coordinate];
  v12 = v11;
  [v10 coordinate];
  v14 = v13;
  v15 = [objc_opt_self() isLocationShiftRequiredForCoordinate:{v12, v13}];
  v16 = v10;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  if (v15)
  {
    if (v19)
    {
      v20 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "NotifyWhenFoundNotificationService: Location shifting is required for %@.", v21, 0xCu);
      sub_100009E48(v22, &qword_100020D60, &qword_100017050);
    }

    v24 = *(v0 + 24);

    v25 = swift_task_alloc();
    *(v0 + 32) = v25;
    v25[2] = v12;
    v25[3] = v14;
    *(v25 + 4) = v24;
    v26 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v27 = swift_task_alloc();
    *(v0 + 40) = v27;
    v28 = sub_1000078C0(&qword_100020D58, &qword_100017048);
    *v27 = v0;
    v27[1] = sub_1000074D0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000014, 0x8000000100017B80, sub_100008AA0, v25, v28);
  }

  else
  {
    v29 = *(v0 + 24);
    if (v19)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "NotifyWhenFoundNotificationService: Location shifting not required for %@.", v30, 0xCu);
      sub_100009E48(v31, &qword_100020D60, &qword_100017050);
    }

    v35 = *(v0 + 8);
    v33 = *(v0 + 24);

    return v35(v29);
  }
}

uint64_t sub_1000074D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000075E8, 0, 0);
}

uint64_t sub_100007600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100009CB4(0, &qword_100020DD0, CLPlacemark_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000076F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 120);

  return v0;
}

uint64_t sub_100007750()
{
  sub_1000076F0();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1000077B4()
{
  v1 = (*(*(sub_1000078C0(&qword_100020D38, &qword_100017000) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_100001B90(0, 0, v3, &unk_100017010, v6);
}

uint64_t sub_1000078C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007908()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100001A9C;

  return sub_100001A0C();
}

uint64_t sub_1000079FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100007A6C(uint64_t a1, void *a2, double a3, double a4)
{
  v32 = a1;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000078C0(&qword_100020D68, &qword_100017058);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v30 - v14;
  v34 = [objc_allocWithZone(GEOLocationShifter) init];
  [a2 horizontalAccuracy];
  v17 = v16;
  v31 = *(v12 + 16);
  v31(v15, a1, v11);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v30 = *(v12 + 32);
  v30(v19 + v18, v15, v11);
  v42 = sub_100008AB0;
  v43 = v19;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000081FC;
  v41 = &unk_10001CD50;
  v33 = _Block_copy(&aBlock);
  v20 = a2;

  v31(v15, v32, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v30(v21 + v18, v15, v11);
  v42 = sub_100008C30;
  v43 = v21;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100009EDC;
  v41 = &unk_10001CDA0;
  v22 = _Block_copy(&aBlock);
  v23 = v20;

  sub_100009CB4(0, &qword_100020D70, OS_dispatch_queue_ptr);
  v25 = v35;
  v24 = v36;
  v26 = v37;
  (*(v36 + 104))(v35, enum case for DispatchQoS.QoSClass.default(_:), v37);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v24 + 8))(v25, v26);
  v29 = v33;
  v28 = v34;
  [v34 shiftCoordinate:v33 accuracy:0 withCompletionHandler:v22 mustGoToNetworkCallback:v27 errorHandler:a3 callbackQueue:{a4, v17}];

  _Block_release(v22);
  _Block_release(v29);
}

uint64_t sub_100007E58(void *a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 altitude];
  v14 = v13;
  [a1 verticalAccuracy];
  v16 = v15;
  [a1 course];
  v18 = v17;
  [a1 speed];
  v20 = v19;
  v21 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithCoordinate:isa altitude:a2 horizontalAccuracy:a3 verticalAccuracy:v14 course:a4 speed:v16 timestamp:{v18, v20}];

  (*(v9 + 8))(v12, v8);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008A68(v25, qword_100021CC8);
  v26 = a1;
  v27 = v24;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = [v26 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000141AC(v32, v34, &v43);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = [v27 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_1000141AC(v37, v39, &v43);

    *(v30 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "NotifyWhenFoundNotificationService: Shifted Location from %s to %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v27;
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000081FC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

uint64_t sub_100008268(uint64_t a1, void *a2)
{
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A68(v3, qword_100021CC8);
  v4 = a2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    swift_errorRetain();
    sub_1000078C0(&qword_100020D78, &qword_100017060);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000141AC(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "NotifyWhenFoundNotificationService: Failed to shift location %@ - Error: %s", v7, 0x16u);
    sub_100009E48(v8, &qword_100020D60, &qword_100017050);

    sub_100008A1C(v9);
  }

  v15 = 0;
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  return CheckedContinuation.resume(returning:)();
}

void sub_100008474(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100008528(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008620;

  return v7(a1);
}

uint64_t sub_100008620()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008718()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008750(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009ED0;

  return sub_100008528(a1, v5);
}

uint64_t sub_100008808(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001A9C;

  return sub_100008528(a1, v5);
}

void *sub_1000088C0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0xD000000000000016;
  v3[3] = 0x8000000100017AC0;
  v3[4] = 0xD000000000000018;
  v3[5] = 0x8000000100017AE0;
  v3[6] = 0xD000000000000021;
  v3[7] = 0x8000000100017B00;
  v3[8] = 0xD000000000000026;
  v3[9] = 0x8000000100017B30;
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;

  v3[12] = [a1 content];
  v3[11] = [objc_allocWithZone(SPBeaconManager) init];
  v3[10] = [objc_allocWithZone(SPOwnerSession) init];
  return v3;
}

uint64_t sub_1000089B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008A1C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008A68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008AB0(double a1, double a2, double a3)
{
  v7 = *(*(sub_1000078C0(&qword_100020D68, &qword_100017058) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_100007E58(v8, a1, a2, a3);
}

uint64_t sub_100008B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008B60()
{
  v1 = sub_1000078C0(&qword_100020D68, &qword_100017058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008C30(uint64_t a1)
{
  v3 = *(*(sub_1000078C0(&qword_100020D68, &qword_100017058) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100008268(a1, v4);
}

void *sub_100008CB0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008CF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008D38()
{
  result = qword_100020DB0;
  if (!qword_100020DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020DB0);
  }

  return result;
}

uint64_t sub_100008DE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008E6C(__objc2_class_ro *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin();
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v13 = [v12 beaconMap];
    sub_100009CB4(0, &qword_100020DD8, SPPairingState_ptr);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);

    if (v15 == 1)
    {
      v16 = [v12 name];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      a1 = v11;
      if ((v19 & 0x2000000000000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_7:
      if ((v17 & 0xFFFFFFFFFFFFLL) != 0)
      {
        return v17;
      }

      goto LABEL_8;
    }

    a1 = v11;
    v35 = [(__objc2_class_ro *)v11 accessoryProductInfo];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 layoutTemplate];

      if (v37)
      {
        sub_100009CB4(0, &qword_100020DE0, SPAccessoryLayoutTemplate_ptr);
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = a3;
        v59 = a4;
        v57 = v12;
        if (v38 >> 62)
        {
          v39 = _CocoaArrayWrapper.endIndex.getter();
          if (v39)
          {
LABEL_17:
            v40 = 0;
            a4 = v38 & 0xC000000000000001;
            a3 = v38 & 0xFFFFFFFFFFFFFF8;
            a1 = &NotifyWhenFoundNotificationService;
            while (1)
            {
              if (a4)
              {
                v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                v41 = *(v38 + 8 * v40 + 32);
              }

              v42 = v41;
              v43 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                break;
              }

              v44 = [v41 partIdentifier];
              if ([(__objc2_class_ro *)v11 partIdentifier]== v44)
              {

                v45 = [v42 partName];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v47;

                a3 = v58;
                a4 = v59;
                a1 = v11;
                v12 = v57;
                v49 = &NotifyWhenFoundNotificationService;
                goto LABEL_33;
              }

              ++v40;
              if (v43 == v39)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39)
          {
            goto LABEL_17;
          }
        }

LABEL_31:

        a3 = v58;
        a4 = v59;
        a1 = v11;
        v12 = v57;
      }
    }

    v49 = &NotifyWhenFoundNotificationService;
    v45 = [(__objc2_class_ro *)a1 name:v57];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v50;
LABEL_33:

    v51 = [v12 v49[26].ivar_lyt];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v63 = v52;
    v64 = v54;
    v55._countAndFlagsBits = 2108704;
    v55._object = 0xE300000000000000;
    String.append(_:)(v55);
    v56._countAndFlagsBits = v46;
    v56._object = v48;
    String.append(_:)(v56);

    v17 = v63;
    v19 = v64;
    if ((v64 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = [(__objc2_class_ro *)a1 name];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v21;

    if ((v19 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if ((v19 & 0xF00000000000000) != 0)
  {
    return v17;
  }

LABEL_8:

  if (qword_100020BC8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008A68(v22, qword_100021CC8);
  v23 = a1;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = [(__objc2_class_ro *)v23 identifier];
    v28 = v60;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98);
    v29 = v62;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v61 + 8))(v28, v29);
    v33 = sub_1000141AC(v30, v32, &v63);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1000141AC(a3, a4, &v63);
    _os_log_impl(&_mh_execute_header, v24, v25, "NotifyWhenFoundNotificationService: Beacon name for %s is empty, using fallback name %s.", v26, 0x16u);
    swift_arrayDestroy();
  }

  return a3;
}

uint64_t sub_100009458()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(CLGeocoder) init];
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000095A0;
  v3 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020DC0, &qword_100017090);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100007600;
  v0[13] = &unk_10001CE40;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000095A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100009AB8;
  }

  else
  {
    v3 = sub_1000096B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000096B0()
{
  v44 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = v0[18];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
LABEL_6:
      v3 = v2;

      if (qword_100020BC8 != -1)
      {
        swift_once();
      }

      v4 = v0[19];
      v5 = type metadata accessor for Logger();
      sub_100008A68(v5, qword_100021CC8);
      v6 = v4;
      v7 = v3;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      v10 = os_log_type_enabled(v8, v9);
      v11 = v0[20];
      if (v10)
      {
        v12 = v0[19];
        v42 = v0[20];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *v13 = 136315394;
        v15 = v12;
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = sub_1000141AC(v17, v19, &v43);

        *(v13 + 4) = v20;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v7;
        *v14 = v7;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "NotifyWhenFoundNotificationService: Reverse-geocoding result for %s is %@.", v13, 0x16u);
        sub_100009E48(v14, &qword_100020D60, &qword_100017050);

        sub_100008A1C(v41);

        v11 = v42;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_100020BC8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v23 = v0[19];
  v24 = type metadata accessor for Logger();
  sub_100008A68(v24, qword_100021CC8);
  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[20];
  if (v28)
  {
    v30 = v0[19];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315138;
    v33 = v30;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_1000141AC(v35, v37, &v43);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "NotifyWhenFoundNotificationService: No reverse-geocoding results found for %s.", v31, 0xCu);
    sub_100008A1C(v32);
  }

  v7 = 0;
LABEL_18:
  v39 = v0[1];

  return v39(v7);
}

uint64_t sub_100009AB8()
{
  v17 = v0;
  v1 = v0[21];
  swift_willThrow();
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  sub_100008A68(v3, qword_100021CC8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[20];
  v7 = v0[21];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v0[10] = v7;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000141AC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "NotifyWhenFoundNotificationService: Reverse-geocoding failed with error %s.", v9, 0xCu);
    sub_100008A1C(v10);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

_OWORD *sub_100009CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009CB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100009CFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009D44()
{
  result = qword_100020DE8;
  if (!qword_100020DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020DE8);
  }

  return result;
}

uint64_t sub_100009D98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000078C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100009EE0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7565409;
    v7 = 0x7472656C61;
    v8 = 0x736772612D636F6CLL;
    if (a1 != 3)
    {
      v8 = 0x6469646E65697266;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x49555570756F7267;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6553646E65697266;
    v4 = 0x6E6F697461636F6CLL;
    if (a1 != 6)
    {
      v4 = 0x6552646E65697266;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10000A070(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x79656B2D636F6CLL;
    }

    else
    {
      v3 = 2036625250;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736772612D636F6CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001000179C0;
  }

  else
  {
    v3 = 0x2D7972616D6D7573;
    v4 = 0xEB00000000677261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x79656B2D636F6CLL;
    }

    else
    {
      v6 = 2036625250;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x736772612D636F6CLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001000179C0;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000677261;
    if (v3 != 0x2D7972616D6D7573)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10000A21C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F4C796150666D66;
    }

    else
    {
      v4 = 7565409;
    }

    if (v2)
    {
      v3 = 0xEA00000000006461;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x70416E49776F6873;
    v3 = 0xEE007472656C4170;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  else
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F4C796150666D66;
    }

    else
    {
      v9 = 7565409;
    }

    if (a2)
    {
      v8 = 0xEA00000000006461;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7107189;
    if (a2 != 3)
    {
      v6 = 0x696669746E656469;
      v5 = 0xEA00000000007265;
    }

    if (a2 == 2)
    {
      v7 = 0x70416E49776F6873;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEE007472656C4170;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10000A3C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79726F6765746163;
    }

    else
    {
      v4 = 0x646E756F73;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567646162;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x79726F6765746163;
  if (a2 != 2)
  {
    v7 = 0x646E756F73;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6567646162;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t PushPayload.payload.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PushPayload.url.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t PushPayload.identifier.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

Swift::Int sub_10000A604()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000A6F0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000A7C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000A8B0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B594(*a1);
  *a2 = result;
  return result;
}

void sub_10000A8E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7565409;
  v5 = 0xEE007472656C4170;
  v6 = 0x70416E49776F6873;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4C796150666D66;
    v3 = 0xEA00000000006461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10000A988()
{
  v1 = *v0;
  v2 = 7565409;
  v3 = 0x70416E49776F6873;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4C796150666D66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000AA2C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B594(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000AA6C(uint64_t a1)
{
  v2 = sub_10000C748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000AAA8(uint64_t a1)
{
  v2 = sub_10000C748();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushPayload.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000B5E0(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PushAPSData.badge.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t PushAPSData.category.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PushAPSData.sound.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

Swift::Int sub_10000ABE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AC94()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000AD34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000ADE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BA24(*a1);
  *a2 = result;
  return result;
}

void sub_10000AE14(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472656C61;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (*v1 != 2)
  {
    v5 = 0x646E756F73;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567646162;
    v2 = 0xE500000000000000;
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

uint64_t sub_10000AE84()
{
  v1 = 0x7472656C61;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x646E756F73;
  }

  if (*v0)
  {
    v1 = 0x6567646162;
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

unint64_t sub_10000AEF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BA24(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000AF24(uint64_t a1)
{
  v2 = sub_10000C608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000AF60(uint64_t a1)
{
  v2 = sub_10000C608();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushAPSData.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000BA70(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PushAlert.body.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushAlert.locKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PushAlert.summaryArg.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

Swift::Int sub_10000B09C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000B184()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000B258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000B33C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BDBC(*a1);
  *a2 = result;
  return result;
}

void sub_10000B36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036625250;
  v5 = 0xE800000000000000;
  v6 = 0x736772612D636F6CLL;
  v7 = 0x80000001000179C0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x2D7972616D6D7573;
    v7 = 0xEB00000000677261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79656B2D636F6CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10000B410()
{
  v1 = *v0;
  v2 = 2036625250;
  v3 = 0x736772612D636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x2D7972616D6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79656B2D636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000B4B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BDBC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000B4D8(uint64_t a1)
{
  v2 = sub_10000C488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B514(uint64_t a1)
{
  v2 = sub_10000C488();

  return CodingKey.debugDescription.getter(a1, v2);
}

double PushAlert.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000BE08(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_10000B594(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CAB0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000B5E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000078C0(&qword_100020E40, &qword_100017330);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v33 = a1;
  sub_100008CB0(a1, v10);
  sub_10000C748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(v33);
  }

  v12 = v6;
  v67 = 0;
  sub_10000C79C();
  v13 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v62 = v55;
  v63 = v56;
  v64 = v57;
  v58 = v51;
  v59 = v52;
  v60 = v53;
  v61 = v54;
  LOBYTE(v45[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v32 + 1) = v15;
  v16 = v14;
  LOBYTE(v45[0]) = 2;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *&v32 = v16;
  LOBYTE(v45[0]) = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v31 = v17;
  v66 = 4;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v21;
  (*(v12 + 8))(v9, v13);
  v38 = v62;
  v39 = v63;
  v40 = v64;
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  v23 = v32;
  v41 = v32;
  v24 = v65;
  LOBYTE(v42) = v65;
  *(&v42 + 1) = v31;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  v44 = v22;
  sub_10000C7F0(&v34, v45);
  sub_100008A1C(v33);
  v45[4] = v62;
  v45[5] = v63;
  v45[6] = v64;
  v45[0] = v58;
  v45[1] = v59;
  v45[2] = v60;
  v45[3] = v61;
  v45[7] = v23;
  v46 = v24;
  v47 = v31;
  v48 = v19;
  v49 = v20;
  v50 = v22;
  result = sub_100008D8C(v45);
  v26 = v43;
  *(a2 + 128) = v42;
  *(a2 + 144) = v26;
  *(a2 + 160) = v44;
  v27 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v27;
  v28 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v28;
  v29 = v35;
  *a2 = v34;
  *(a2 + 16) = v29;
  v30 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v30;
  return result;
}

uint64_t sub_10000B9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100020E00, &qword_100017110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BA24(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CB48, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000BA70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = sub_1000078C0(&qword_100020E28, &qword_100017328);
  v5 = *(v56 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = a1[4];
  sub_100008CB0(a1, a1[3]);
  sub_10000C608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(a1);
  }

  v10 = v5;
  v46 = 0;
  sub_10000C65C();
  v11 = v56;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v47;
  v53 = v48;
  v54 = v49;
  v55 = v50;
  LOBYTE(v38[0]) = 1;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v51 = v12 & 1;
  LOBYTE(v38[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v29 = v13;
  v45 = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = *(v10 + 8);
  v28 = v16;
  v19 = v18;
  v17(v8, v11);
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v34 = v55;
  v20 = v29;
  v21 = v30;
  *&v35 = v30;
  v22 = v51;
  BYTE8(v35) = v51;
  *&v36 = v29;
  *(&v36 + 1) = v15;
  *&v37 = v28;
  *(&v37 + 1) = v19;
  sub_10000A528(&v31, v38);
  sub_100008A1C(a1);
  v38[0] = v52;
  v38[1] = v53;
  v38[2] = v54;
  v38[3] = v55;
  v39 = v21;
  v40 = v22;
  v41 = v20;
  v42 = v15;
  v43 = v28;
  v44 = v19;
  result = sub_10000C718(v38);
  v24 = v36;
  a2[4] = v35;
  a2[5] = v24;
  a2[6] = v37;
  v25 = v32;
  *a2 = v31;
  a2[1] = v25;
  v26 = v34;
  a2[2] = v33;
  a2[3] = v26;
  return result;
}

unint64_t sub_10000BDBC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBC8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000BE08@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000078C0(&qword_100020E08, &qword_100017318);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_100008CB0(a1, a1[3]);
  sub_10000C488();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v32 = v11;
  LOBYTE(v38[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v15;
  v29 = v14;
  v31 = v13;
  sub_1000078C0(&qword_100020E18, &qword_100017320);
  LOBYTE(v34) = 2;
  v30 = sub_10000C4DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v38[0];
  LOBYTE(v34) = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v38[0];
  v39 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v31;
  v18 = v16;
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  v21 = v32;
  *&v34 = v32;
  *(&v34 + 1) = v17;
  v22 = v29;
  *&v35 = v29;
  *(&v35 + 1) = v33;
  v23 = v28;
  *&v36 = v28;
  *(&v36 + 1) = v30;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  sub_10000C5A0(&v34, v38);
  sub_100008A1C(a1);
  v38[0] = v21;
  v38[1] = v17;
  v38[2] = v22;
  v38[3] = v33;
  v38[4] = v23;
  v38[5] = v30;
  v38[6] = v18;
  v38[7] = v20;
  result = sub_10000C5D8(v38);
  v25 = v35;
  *a2 = v34;
  a2[1] = v25;
  v26 = v37;
  a2[2] = v36;
  a2[3] = v26;
  return result;
}

uint64_t sub_10000C1E0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10000C1F8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10000C234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C2F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10000C318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C3CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000C488()
{
  result = qword_100020E10;
  if (!qword_100020E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E10);
  }

  return result;
}

unint64_t sub_10000C4DC()
{
  result = qword_100020E20;
  if (!qword_100020E20)
  {
    sub_10000C558(&qword_100020E18, &qword_100017320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E20);
  }

  return result;
}

uint64_t sub_10000C558(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000C608()
{
  result = qword_100020E30;
  if (!qword_100020E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E30);
  }

  return result;
}

unint64_t sub_10000C65C()
{
  result = qword_100020E38;
  if (!qword_100020E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E38);
  }

  return result;
}

uint64_t sub_10000C6B0(uint64_t a1)
{
  v2 = sub_1000078C0(&qword_100020E00, &qword_100017110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000C748()
{
  result = qword_100020E48;
  if (!qword_100020E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E48);
  }

  return result;
}

unint64_t sub_10000C79C()
{
  result = qword_100020E50;
  if (!qword_100020E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushAPSData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushAPSData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000C9B4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10000CA44(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000CB08()
{
  result = qword_100020E58;
  if (!qword_100020E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E58);
  }

  return result;
}

unint64_t sub_10000CB60()
{
  result = qword_100020E60;
  if (!qword_100020E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E60);
  }

  return result;
}

unint64_t sub_10000CBB8()
{
  result = qword_100020E68;
  if (!qword_100020E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E68);
  }

  return result;
}

unint64_t sub_10000CC10()
{
  result = qword_100020E70;
  if (!qword_100020E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E70);
  }

  return result;
}

unint64_t sub_10000CC68()
{
  result = qword_100020E78;
  if (!qword_100020E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E78);
  }

  return result;
}

unint64_t sub_10000CCC0()
{
  result = qword_100020E80;
  if (!qword_100020E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E80);
  }

  return result;
}

unint64_t sub_10000CD18()
{
  result = qword_100020E88;
  if (!qword_100020E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E88);
  }

  return result;
}

unint64_t sub_10000CD70()
{
  result = qword_100020E90;
  if (!qword_100020E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E90);
  }

  return result;
}

unint64_t sub_10000CDC8()
{
  result = qword_100020E98;
  if (!qword_100020E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E98);
  }

  return result;
}

uint64_t sub_10000CE30()
{
  sub_10000D61C();
  sub_1000078C0(&qword_100020DA8, &qword_100017078);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100016F10;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008D38();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x8000000100017CC0;
  result = NSPredicate.init(format:_:)();
  static String.emailPredicate = result;
  return result;
}

uint64_t *String.emailPredicate.unsafeMutableAddressor()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  return &static String.emailPredicate;
}

id static String.emailPredicate.getter()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v1 = static String.emailPredicate;

  return v1;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v21 - v11;
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  CharacterSet.init(charactersIn:)();
  static CharacterSet.decimalDigits.getter();
  CharacterSet.formUnion(_:)();
  static CharacterSet.controlCharacters.getter();
  CharacterSet.formUnion(_:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  static CharacterSet.whitespacesAndNewlines.getter();
  CharacterSet.formUnion(_:)();
  v15(v9, v4);
  v21[0] = a1;
  v21[1] = a2;
  sub_10000D1C4();
  v21[0] = StringProtocol.components(separatedBy:)();
  sub_1000078C0(&qword_100020E18, &qword_100017320);
  sub_10000D218();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v15(v12, v4);
  v15(v14, v4);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v19 != 0;
}

unint64_t sub_10000D1C4()
{
  result = qword_100020EA0;
  if (!qword_100020EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EA0);
  }

  return result;
}

unint64_t sub_10000D218()
{
  result = qword_100020EA8;
  if (!qword_100020EA8)
  {
    sub_10000C558(&qword_100020E18, &qword_100017320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EA8);
  }

  return result;
}

id String.isEmail.getter()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v0 = static String.emailPredicate;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 evaluateWithObject:v1];

  return v2;
}

uint64_t String.sanitized.getter(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x3A6F746C69616DLL;
  v4._object = 0xE700000000000000;
  v5 = String.hasPrefix(_:)(v4);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000D56C(v6, a1, a2);

    a1 = static String._fromSubstring(_:)();
    a2 = v7;
  }

  v8._countAndFlagsBits = 980182388;
  v8._object = 0xE400000000000000;
  if (String.hasPrefix(_:)(v8))
  {
    v9 = String.count.getter();
    sub_10000D56C(v9, a1, a2);

    a1 = static String._fromSubstring(_:)();
  }

  return a1;
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = String.hasPrefix(_:)(a1);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000D56C(v6, v4, v3);

    v4 = static String._fromSubstring(_:)();
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_10000D56C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10000D61C()
{
  result = qword_100020EB0;
  if (!qword_100020EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020EB0);
  }

  return result;
}

BOOL sub_10000D668(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();
  v10 = sub_10000DB90(a1, a2, v8);
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 1;
  }

  if (v10 != a1 || v12 != a2)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v15 & 1) == 0;
  }

  return 0;
}

id sub_10000D824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v5);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "init");
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DB90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  v11 = HIBYTE(a2) & 0xF;
  v34 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v26[1] = v3;
    v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v8 + 16);
    v14 = (v8 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v31[0] = v34;
          v31[1] = v28;
          v16 = v31 + v12;
        }

        else
        {
          v15 = v27;
          if ((v34 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = (v15 + v12);
        }

        v19 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v21 = (__clz(v19 ^ 0xFF) - 24);
        if (v21 <= 2)
        {
          if (v21 != 1)
          {
            v22 = v16[1] & 0x3F | ((v19 & 0x1F) << 6);
            v18 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v18 = 1;
          goto LABEL_15;
        }

        if (v21 == 3)
        {
          v23 = ((v19 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3Fu;
          v18 = 3;
        }

        else
        {
          v24 = ((v19 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3Fu;
          v18 = 4;
        }
      }

LABEL_15:
      (*v13)(v10, v30, v6);
      v20 = CharacterSet.contains(_:)();
      (*v14)(v10, v6);
      if (v20)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v12 += v18;
      if (v12 >= v29)
      {
        return v32;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DE14()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_10000DF50(uint64_t a1)
{
  sub_10000DE14();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();

  v4 = CFPhoneNumberCreate();

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v7 = String;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

uint64_t sub_10000E040(uint64_t a1)
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v2 = static String.emailPredicate;
  v3 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 evaluateWithObject:v3];

  if (v2)
  {
  }

  else
  {
    a1 = sub_10000DF50(a1);
    v5 = v4;

    v6._countAndFlagsBits = 43;
    v6._object = 0xE100000000000000;
    v7 = String.hasPrefix(_:)(v6);

    if (!v7 && String.count.getter() >= 2)
    {
      v8._countAndFlagsBits = a1;
      v8._object = v5;
      String.append(_:)(v8);

      return 43;
    }
  }

  return a1;
}

uint64_t sub_10000E170(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  v9._countAndFlagsBits = 0x2D232A29282BLL;
  v9._object = 0xE600000000000000;
  CharacterSet.insert(charactersIn:)(v9);
  v29 = a1;
  v30 = a2;
  sub_10000D1C4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  if (v10)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
    v29 = a1;
    v30 = a2;
    v13 = String.Index.utf16Offset<A>(in:)();
    result = String.count.getter();
    v15 = result - v13;
    if (__OFSUB__(result, v13))
    {
      __break(1u);
      return result;
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v16 substringWithRange:{v13, v15}];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v18;
  }

  v19 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v19 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v28 = v4;
    sub_10000DE14();
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();

    v22 = CFPhoneNumberCreate();

    if (v22)
    {
      v23 = v22;
      String = CFPhoneNumberCreateString();
      v25 = v28;
      if (String)
      {
        v26 = String;

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v5 + 8))(v8, v25);
      }

      else
      {
        (*(v5 + 8))(v8, v28);
      }
    }

    else
    {
      (*(v5 + 8))(v8, v28);
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }

  return v11;
}

void sub_10000E458()
{
  v1 = v0;
  v2 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v30 - v4;
  v6 = [*(v0 + 16) userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = 0x6F4C796150666D66;
  v32 = 0xEA00000000006461;
  AnyHashable.init<A>(_:)();
  if (*(v7 + 16) && (v8 = sub_100014870(v33), (v9 & 1) != 0))
  {
    sub_1000089B8(*(v7 + 56) + 32 * v8, v34);
    sub_100008E18(v33);

    if (swift_dynamicCast())
    {
      v10 = v31;
      v11 = v32;
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v1;
      v13[5] = v10;
      v13[6] = v11;

      sub_100001B90(0, 0, v5, &unk_100017820, v13);

      return;
    }
  }

  else
  {

    sub_100008E18(v33);
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008A68(v14, qword_100021CC8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FenceNotificationContentService: No subscription identifier. Nothing else to do.", v17, 2u);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136315138;
    v22 = [*(v1 + 16) body];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_1000141AC(v23, v25, v33);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "FenceNotificationContentService: Completing with best attempt %s", v20, 0xCu);
    sub_100008A1C(v21);
  }

  v28 = *(v1 + 32);
  v27 = *(v1 + 40);
  v29 = *(v1 + 16);
  v28();
}

uint64_t sub_10000E830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100001A9C;

  return sub_10000E8DC(a5, a6);
}

uint64_t sub_10000E8DC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = *(*(sub_1000078C0(&unk_100021040, &unk_1000177F0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v3[37] = v5;
  v6 = *(v5 - 8);
  v3[38] = v6;
  v7 = *(v6 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for DecodedLocationNotification();
  v3[41] = v8;
  v9 = *(v8 - 8);
  v3[42] = v9;
  v10 = *(v9 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return _swift_task_switch(sub_10000EA78, 0, 0);
}

uint64_t sub_10000EA78()
{
  v1 = v0;
  v2 = *(v0[35] + 24);
  v3 = async function pointer to Session.decryptNotification(encryptedPayload:)[1];
  v4 = swift_task_alloc();
  v1[45] = v4;
  *v4 = v1;
  v4[1] = sub_10000EB50;
  v5 = v1[44];
  v6 = v1[33];
  v7 = v1[34];

  return Session.decryptNotification(encryptedPayload:)(v5, v6, v7);
}

uint64_t sub_10000EB50()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_10000F4CC;
  }

  else
  {
    v3 = sub_10000EC90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000EC90()
{
  v95 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  DecodedLocationNotification.handle.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100009E48(*(v0 + 288), &unk_100021040, &unk_1000177F0);
LABEL_9:
    v21 = *(v0 + 352);
    v22 = objc_opt_self();
    v23 = DecodedLocationNotification.location.getter();
    *(v0 + 232) = v23;
    sub_1000078C0(&qword_100020D58, &qword_100017048);
    v24 = Optional._bridgeToObjectiveC()();

    *(v0 + 240) = 0;
    v25 = [v22 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v0 + 240];
    swift_unknownObjectRelease();
    v26 = *(v0 + 240);
    if (v25)
    {
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v28;
      v93 = v27;
    }

    else
    {
      v29 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v91 = 0xF000000000000000;
      v93 = 0;
    }

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    v33 = *(v0 + 328);
    v32 = *(v0 + 336);
    v34 = type metadata accessor for Logger();
    sub_100008A68(v34, qword_100021CC8);
    (*(v32 + 16))(v31, v30, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 336);
    v38 = *(v0 + 344);
    v40 = *(v0 + 328);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94 = v42;
      *v41 = 136315138;
      *(v0 + 256) = DecodedLocationNotification.location.getter();
      v43 = String.init<A>(describing:)();
      v45 = v44;
      v89 = *(v39 + 8);
      v89(v38, v40);
      v46 = sub_1000141AC(v43, v45, &v94);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "FenceNotificationContentService: Successfully replaced payload with location: %s.", v41, 0xCu);
      sub_100008A1C(v42);
    }

    else
    {

      v89 = *(v39 + 8);
      v89(v38, v40);
    }

    v47 = *(v0 + 280);
    [*(v47 + 16) mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000F830();
    if (swift_dynamicCast())
    {
      v48 = *(v0 + 248);
      *(v0 + 208) = 0x6E6F697461636F6CLL;
      *(v0 + 216) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (v91 >> 60 == 15)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(v0 + 104) = 0;
        v52 = v93;
      }

      else
      {
        v51 = &type metadata for Data;
        v52 = v93;
        v49 = v93;
        v50 = v91;
      }

      *(v0 + 88) = v49;
      *(v0 + 96) = v50;
      *(v0 + 112) = v51;
      sub_10000F890(v52, v91);
      v62 = [v48 userInfo];
      v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (v91 >> 60 == 15)
      {
        sub_100009E48(v0 + 88, &qword_100021058, &qword_100017800);
        sub_10000F8F8(v0 + 16, (v0 + 120));
        sub_100009E48(v0 + 120, &qword_100021058, &qword_100017800);
      }

      else
      {
        sub_100009CA4((v0 + 88), (v0 + 152));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v63;
        sub_10000FDF8((v0 + 152), v0 + 16, isUniquelyReferenced_nonNull_native);
      }

      sub_100008E18(v0 + 16);
      v65 = *(v0 + 352);
      v67 = *(v0 + 328);
      v66 = *(v0 + 336);
      v68 = *(v0 + 280);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v48 setUserInfo:isa];
      sub_10000F87C(v93, v91);

      v70 = *(v47 + 16);
      *(v47 + 16) = v48;
      v71 = v48;

      v72 = *(v68 + 40);
      (*(v68 + 32))(v71);

      v60 = v65;
      v61 = v67;
    }

    else
    {
      v53 = *(v0 + 352);
      v54 = *(v0 + 328);
      v55 = *(v0 + 336);
      v56 = *(v0 + 280);
      sub_10000F87C(v93, v91);
      v58 = *(v56 + 32);
      v57 = *(v56 + 40);
      v59 = *(v47 + 16);
      v58();

      v60 = v53;
      v61 = v54;
    }

    v89(v60, v61);
    goto LABEL_29;
  }

  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 288), *(v0 + 296));
  if ((sub_100010274() & 1) == 0)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    goto LABEL_9;
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = type metadata accessor for Logger();
  sub_100008A68(v9, qword_100021CC8);
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v94 = v17;
    *v16 = 136315138;
    v90 = Handle.identifier.getter();
    v19 = v18;
    v92 = *(v14 + 8);
    v92(v13, v15);
    v20 = sub_1000141AC(v90, v19, &v94);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "FenceNotificationContentService: Handle %s is on block list, ignoring!", v16, 0xCu);
    sub_100008A1C(v17);
  }

  else
  {

    v92 = *(v14 + 8);
    v92(v13, v15);
  }

  v73 = *(v0 + 352);
  v74 = *(v0 + 328);
  v75 = *(v0 + 336);
  v76 = *(v0 + 320);
  v77 = *(v0 + 296);
  v78 = *(v0 + 280);
  v80 = *(v78 + 32);
  v79 = *(v78 + 40);
  v81 = [objc_allocWithZone(UNNotificationContent) init];
  v80();

  v92(v76, v77);
  (*(v75 + 8))(v73, v74);
LABEL_29:
  v83 = *(v0 + 344);
  v82 = *(v0 + 352);
  v85 = *(v0 + 312);
  v84 = *(v0 + 320);
  v86 = *(v0 + 288);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_10000F4CC()
{
  v27 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = type metadata accessor for Logger();
  sub_100008A68(v2, qword_100021CC8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[25];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000141AC(v11, v12, &v26);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "FenceNotificationContentService: Failed to fetch data for payload, error: %s.", v6, 0xCu);
    sub_100008A1C(v7);
  }

  v14 = v0[46];
  v15 = v0[35];
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  v18 = *(v15 + 16);
  v17(v18);

  v20 = v0[43];
  v19 = v0[44];
  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[36];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10000F6FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

id sub_10000F7D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFSessionDelegateTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000F830()
{
  result = qword_100021050;
  if (!qword_100021050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021050);
  }

  return result;
}

uint64_t sub_10000F87C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009D98(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F890(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8A4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F8A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_10000F8F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100014870(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000FFC0();
      v11 = v13;
    }

    sub_100008E18(*(v11 + 48) + 40 * v8);
    sub_100009CA4((*(v11 + 56) + 32 * v8), a2);
    sub_10000FC54(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10000F99C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000078C0(&unk_100021060, &unk_100017808);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100009CA4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100009DEC(v24, &v37);
        sub_1000089B8(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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
      result = sub_100009CA4(v36, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10000FC54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100009DEC(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100008E18(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000FDF8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100014870(a2);
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
      sub_10000FFC0();
      goto LABEL_7;
    }

    sub_10000F99C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100014870(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100009DEC(a2, v22);
      return sub_10000FF44(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  sub_100008A1C(v17);

  return sub_100009CA4(a1, v17);
}

_OWORD *sub_10000FF44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100009CA4(a3, (a4[7] + 32 * a1));
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

void *sub_10000FFC0()
{
  v1 = v0;
  sub_1000078C0(&unk_100021060, &unk_100017808);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_100009DEC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000089B8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100009CA4(v22, (*(v4 + 56) + v17));
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

uint64_t sub_100010164()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000101AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001A9C;

  return sub_10000E830(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010274()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  Handle.identifier.getter();
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v9 = static String.emailPredicate;
  v10 = String._bridgeToObjectiveC()();

  LODWORD(v9) = [v9 evaluateWithObject:v10];

  v11 = Handle.identifier.getter();
  if (v9)
  {
    v13 = String._bridgeToObjectiveC()();

    result = CMFItemCreateWithEmailAddress();
    if (result)
    {
      v15 = result;
      v16 = qword_100020BC8;
      swift_unknownObjectRetain_n();
      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100008A68(v17, qword_100021CC8);
      (*(v2 + 16))(v8, v0, v1);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v20 = 136315394;
        v21 = Handle.identifier.getter();
        v22 = v1;
        v24 = v23;
        (*(v2 + 8))(v8, v22);
        v25 = sub_1000141AC(v21, v24, &v50);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2080;
        v49 = v15;
        swift_unknownObjectRetain();
        v26 = String.init<A>(describing:)();
        v28 = sub_1000141AC(v26, v27, &v50);

        *(v20 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "FMFHandle+Blocklist: Handle %s is an email: %s", v20, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v2 + 8))(v8, v1);
      }

LABEL_16:
      IsItemBlocked = CMFBlockListIsItemBlocked();
      swift_unknownObjectRelease_n();
      return IsItemBlocked != 0;
    }

    __break(1u);
  }

  else
  {
    sub_10000E170(v11, v12);

    v29 = String._bridgeToObjectiveC()();

    v30 = CFPhoneNumberCreate();
    result = CMFItemCreateWithPhoneNumber();
    if (result)
    {
      v31 = result;
      v32 = qword_100020BC8;
      swift_unknownObjectRetain_n();
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100008A68(v33, qword_100021CC8);
      (*(v2 + 16))(v6, v0, v1);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v48 = v29;
        v37 = v36;
        v38 = swift_slowAlloc();
        v47 = v30;
        v50 = v38;
        *v37 = 136315394;
        v39 = Handle.identifier.getter();
        v41 = v40;
        (*(v2 + 8))(v6, v1);
        v42 = sub_1000141AC(v39, v41, &v50);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        v49 = v31;
        swift_unknownObjectRetain();
        v43 = String.init<A>(describing:)();
        v45 = sub_1000141AC(v43, v44, &v50);

        *(v37 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v34, v35, "FMFHandle+Blocklist: Handle %s is a phone number: %s", v37, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v2 + 8))(v6, v1);
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001084C()
{
  v0 = type metadata accessor for Logger();
  sub_100010898(v0, qword_100021CC8);
  sub_100008A68(v0, qword_100021CC8);
  return Logger.init()();
}

uint64_t *sub_100010898(uint64_t a1, uint64_t *a2)
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

void sub_100010988()
{
  v1 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A68(v2, qword_100021CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NotificationService: serviceExtensionTimeWillExpire", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler + 8);
    v8 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
    swift_beginAccess();
    sub_100010ED4(v1 + v8, &v18);
    v9 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      v10 = v20;
      v11 = sub_100008CB0(&v18, *(&v19 + 1));
      v12 = *(v9 - 8);
      v13 = *(v12 + 64);
      __chkstk_darwin(v11);
      v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v15);

      sub_100009E48(&v18, &qword_100021108, &qword_1000178A8);
      v16 = (*(v10 + 8))(v9, v10);
      (*(v12 + 8))(v15, v9);
      v6(v16);
      sub_100010F44(v6);

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      swift_beginAccess();
      sub_100010E64(&v18, v1 + v8);
      swift_endAccess();
    }

    else
    {
      sub_100009E48(&v18, &qword_100021108, &qword_1000178A8);
    }
  }
}

id sub_100010C80()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
  swift_beginAccess();
  sub_100010E64(v4, v0 + v1);
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NotificationService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100010E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100021108, &qword_1000178A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100021108, &qword_1000178A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010F44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100010F7C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v60 = a2;
  v5 = type metadata accessor for ClientOrigin();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RequestOrigin();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v61 = swift_allocObject();
  v61[2] = a3;
  _Block_copy(a3);
  v12 = [a1 content];
  v13 = [v12 categoryIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = v14 == 0x45434E45464F4547 && v16 == 0xE800000000000000;
  if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v18 = type metadata accessor for FenceNotificationContentService();
    v19 = swift_allocObject();
    (*(v6 + 104))(v9, enum case for ClientOrigin.findMyApp(_:), v5);
    RequestOrigin.init(_:)();
    v20 = type metadata accessor for Session();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v19[3] = Session.init(_:)();
    v19[4] = sub_100011A64;
    v19[5] = v61;

    v19[2] = [a1 content];
    v66 = v18;
    v67 = &off_10001D220;
    v65[0] = v19;
LABEL_7:
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008A68(v23, qword_100021CC8);
    sub_1000119FC(v65, v64);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v63 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2080;
      sub_1000119FC(v64, v62);
      v30 = v24;
      sub_1000078C0(&qword_100021110, &qword_1000178B0);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      sub_100008A1C(v64);
      v34 = sub_1000141AC(v31, v33, &v63);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "NotificationService: Handling request: %@ using %s", v27, 0x16u);
      sub_100009E48(v28, &qword_100020D60, &qword_100017050);

      sub_100008A1C(v29);
    }

    else
    {

      sub_100008A1C(v64);
    }

    v35 = v66;
    v36 = v67;
    sub_100008CB0(v65, v66);
    (v36[4])(v35, v36);
    sub_1000119FC(v65, v64);
    v37 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
    v38 = v60;
    swift_beginAccess();
    sub_100010E64(v64, v38 + v37);
    swift_endAccess();
    sub_100008A1C(v65);

    return;
  }

  if (v14 == 0x465F594649544F4ELL && v16 == 0xEC000000444E554FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    found = type metadata accessor for NotifyWhenFoundNotificationService();
    swift_allocObject();
    v40 = v61;

    v41 = a1;
    v42 = sub_1000088C0(v41, sub_100011A64, v40);

    v66 = found;
    v67 = &off_10001CC60;
    v65[0] = v42;
    goto LABEL_7;
  }

  if (v14 == 0x4F4C5F524546464FLL && v16 == 0xEE004E4F49544143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 0x525F455449564E49 && v16 == 0xEF45534E4F505345)
  {

LABEL_23:
    v43 = type metadata accessor for LocationSharingContentService();
    v44 = swift_allocObject();
    type metadata accessor for Session();
    (*(v6 + 104))(v9, enum case for ClientOrigin.findMyApp(_:), v5);
    v45 = static Session.sharedSession(origin:)();
    (*(v6 + 8))(v9, v5);
    v44[3] = v45;
    v44[4] = sub_100011A64;
    v44[5] = v61;

    v44[2] = [a1 content];
    v66 = v43;
    v67 = &off_10001D2C0;
    v65[0] = v44;
    goto LABEL_7;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_23;
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100008A68(v47, qword_100021CC8);
  v48 = a1;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65[0] = v52;
    *v51 = 136315138;
    v53 = [v48 content];
    v54 = [v53 categoryIdentifier];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_1000141AC(v55, v57, v65);

    *(v51 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "NotificationService: Unknown category: %s, using provided content.", v51, 0xCu);
    sub_100008A1C(v52);
  }

  v61 = [v48 content];
  (a3)[2](a3, v61);

  v59 = v61;
}

uint64_t sub_10001182C(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008A68(v7, qword_100021CC8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "NotificationService: didReceiveNotification", v10, 2u);
  }

  v11 = (a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  v12 = *(a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  v13 = *(a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler + 8);
  *v11 = sub_1000119E8;
  v11[1] = v6;

  sub_100010F44(v12);
  _Block_copy(a3);
  sub_100010F7C(a1, a2, a3);
  _Block_release(a3);
}

uint64_t sub_1000119B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000119FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100011AF8();
}

uint64_t sub_100011AF8()
{
  v1[31] = v0;
  v2 = *(*(sub_1000078C0(&unk_100021040, &unk_1000177F0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[33] = v3;
  v4 = *(v3 - 8);
  v1[34] = v4;
  v5 = *(v4 + 64) + 15;
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v1[36] = v6;
  v7 = *(v6 - 8);
  v1[37] = v7;
  v8 = *(v7 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return _swift_task_switch(sub_100011CAC, 0, 0);
}

uint64_t sub_100011CAC()
{
  v35 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100015E38(&qword_1000211F8, &type metadata accessor for Feature.FindMy);
  v2 = sub_100014148(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.fencesMigration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100008A1C(v0 + 2);
  if (My)
  {
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v3 = v0[31];
    v4 = type metadata accessor for Logger();
    v0[47] = sub_100008A68(v4, qword_100021CC8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[31];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315138;
      v10 = [*(v7 + 16) userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = Dictionary.description.getter();
      v13 = v12;

      v14 = sub_1000141AC(v11, v13, &v34);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "LocationSharingContentService: Handling: %s", v8, 0xCu);
      sub_100008A1C(v9);
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "LocationSharingContentService: Requesting force refresh", v17, 2u);
    }

    v18 = v0[31];

    v0[48] = *(v18 + 24);
    v19 = async function pointer to Session.forceRefreshClient()[1];
    v20 = swift_task_alloc();
    v0[49] = v20;
    *v20 = v0;
    v20[1] = sub_1000120BC;

    return Session.forceRefreshClient()();
  }

  else
  {
    v22 = v0[45];
    v21 = v0[46];
    v24 = v0[43];
    v23 = v0[44];
    v26 = v0[41];
    v25 = v0[42];
    v28 = v0[39];
    v27 = v0[40];
    v29 = v0[38];
    v30 = v0[35];
    v33 = v0[32];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1000120BC()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_100013634;
  }

  else
  {
    v3 = sub_1000121D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000121D0()
{
  v1 = v0[47];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationSharingContentService: Force refresh completed", v4, 2u);
  }

  v5 = v0[31];

  v6 = [*(v5 + 16) userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v0[24] = 7565409;
  v0[25] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_100014870((v0 + 7)), (v9 & 1) == 0))
  {

    sub_100008E18((v0 + 7));
    goto LABEL_12;
  }

  sub_1000089B8(*(v7 + 56) + 32 * v8, (v0 + 12));
  sub_100008E18((v0 + 7));

  sub_1000078C0(&qword_100021200, &qword_100017950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v16 = v0[47];
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_15:
      v21 = v0[31];

      v23 = *(v21 + 32);
      v22 = *(v21 + 40);
      v24 = *(v5 + 16);
      v23();

      v26 = v0[45];
      v25 = v0[46];
      v28 = v0[43];
      v27 = v0[44];
      v30 = v0[41];
      v29 = v0[42];
      v32 = v0[39];
      v31 = v0[40];
      v33 = v0[38];
      v34 = v0[35];
      v46 = v0[32];

      v35 = v0[1];

      return v35();
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "LocationSharingContentService: No aps dict detected, returning default content.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

    goto LABEL_15;
  }

  v10 = v0[30];
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v12 = sub_1000148B4(0x6469646E65697266, 0xE800000000000000);
  if ((v13 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_19;
  }

  sub_1000089B8(*(v10 + 56) + 32 * v12, (v0 + 16));
  v14 = swift_dynamicCast();
  v11 = v0[28];
  if (v14)
  {
    v15 = v0[29];
  }

  else
  {
    v11 = 0;
    v15 = 0;
  }

LABEL_20:
  v0[51] = v11;
  v0[52] = v15;
  if (*(v10 + 16) && (v37 = sub_1000148B4(0x6552646E65697266, 0xEF64497473657571), (v38 & 1) != 0))
  {
    sub_1000089B8(*(v10 + 56) + 32 * v37, (v0 + 20));

    v39 = swift_dynamicCast();
    v40 = v0[26];
    v41 = v0[27];
    if (!v39)
    {
      v40 = 0;
      v41 = 0;
    }
  }

  else
  {

    v40 = 0;
    v41 = 0;
  }

  v0[53] = v40;
  v0[54] = v41;
  if (!(v15 | v41))
  {
    v42 = v0[47];
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "LocationSharingContentService: No friend identifier detected, returning default content.";
    goto LABEL_14;
  }

  v43 = async function pointer to Session.friendsWithPendingOffers()[1];
  v44 = swift_task_alloc();
  v0[55] = v44;
  *v44 = v0;
  v44[1] = sub_100012674;
  v45 = v0[48];

  return Session.friendsWithPendingOffers()();
}

uint64_t sub_100012674(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_100013824;
  }

  else
  {
    v5 = sub_100012788;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012788()
{
  v1 = v0[56];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[37];
    v4 = v0[34];
    sub_100015AA0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v20 = *(v4 + 56);
    v21 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[46];
      v9 = v0[35];
      v10 = v0[33];
      v21(v9, v6, v10);
      Friend.handle.getter();
      (*v7)(v9, v10);
      v12 = *(&_swiftEmptyArrayStorage + 2);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v11 >> 1)
      {
        sub_100015AA0(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[46];
      v14 = v0[36];
      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v6 += v20;
      --v2;
    }

    while (v2);
  }

  v15 = v0[56];

  v0[58] = sub_100015C98(&_swiftEmptyArrayStorage);

  v16 = async function pointer to Session.friendsSharingLocationsWithMe()[1];
  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_100012994;
  v18 = v0[48];

  return Session.friendsSharingLocationsWithMe()();
}

uint64_t sub_100012994(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v7 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v5 = sub_100013A28;
  }

  else
  {
    v5 = sub_100012AA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012AA8()
{
  v149 = v0;
  v1 = v0[60];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[37];
    v4 = v0[34];
    v148 = &_swiftEmptyArrayStorage;
    sub_100015AA0(0, v2, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v140 = *(v4 + 56);
    v142 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[45];
      v10 = v0[35];
      v11 = v0[33];
      v142(v10, v7, v11);
      Friend.handle.getter();
      (*v8)(v10, v11);
      v148 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100015AA0(v12 > 1, v13 + 1, 1);
        v5 = v148;
      }

      v14 = v0[45];
      v15 = v0[36];
      v5[2] = v13 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v140;
      --v2;
    }

    while (v2);
    v16 = v0[60];
  }

  else
  {
    v17 = v0[60];

    v5 = &_swiftEmptyArrayStorage;
  }

  v18 = v0[58];
  v19 = v0[47];
  v20 = sub_100015C98(v5);

  v21 = sub_100013C38(v20, v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[36];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v148 = v26;
    *v25 = 136315138;
    sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
    v27 = Set.description.getter();
    v29 = sub_1000141AC(v27, v28, &v148);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "LocationSharingContentService: Found handles: %s", v25, 0xCu);
    sub_100008A1C(v26);
  }

  v137 = v0[54];
  log = v0[52];
  v30 = v0[37];
  v31 = v21 + 56;
  v32 = -1;
  v33 = -1 << *(v21 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v21 + 56);
  v35 = (63 - v33) >> 6;
  v36 = (v30 + 16);
  v141 = (v30 + 8);
  v143 = (v30 + 32);
  v145 = v21;

  v38 = 0;
  while (v34)
  {
LABEL_20:
    v41 = v0[42];
    v40 = v0[43];
    v42 = v0[36];
    (*(v30 + 16))(v40, *(v145 + 48) + *(v30 + 72) * (__clz(__rbit64(v34)) | (v38 << 6)), v42);
    v43 = *(v30 + 32);
    v43(v41, v40, v42);
    v44 = Handle.serverID.getter();
    v46 = v0[52];
    if (v45)
    {
      if (v46)
      {
        if (v45 == v46 && v44 == v0[51])
        {
LABEL_39:

LABEL_40:

LABEL_41:

          v43(v0[32], v0[42], v0[36]);
          v54 = 0;
          v36 = (v30 + 16);
LABEL_42:
          v55 = v0;
          v56 = v0[37];
          v57 = v55[36];
          v58 = v55[32];
          (*(v56 + 56))(v58, v54, 1, v57);

          if ((*(v56 + 48))(v58, 1, v57) == 1)
          {
            v59 = v55[31];
            sub_100009E48(v55[32], &unk_100021040, &unk_1000177F0);
            v61 = *(v59 + 32);
            v60 = *(v59 + 40);
            v62 = *(v59 + 16);
            v61();
          }

          else
          {
            (*v143)(v55[44], v55[32], v55[36]);
            v63 = sub_100010274();
            v64 = *v36;
            v65 = v55[47];
            v66 = v55[44];
            v67 = v55[36];
            v68 = v55;
            if (v63)
            {
              v64(v55[41], v66, v67);
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();
              v71 = os_log_type_enabled(v69, v70);
              v72 = v55[41];
              v73 = v55[36];
              if (v71)
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                v148 = v75;
                *v74 = 136315138;
                v76 = Handle.identifier.getter();
                v78 = v77;
                v79 = v73;
                v80 = *v141;
                (*v141)(v72, v79);
                v81 = sub_1000141AC(v76, v78, &v148);

                *(v74 + 4) = v81;
                _os_log_impl(&_mh_execute_header, v69, v70, "LocationSharingContentService: Handle %s is on block list, ignoring!", v74, 0xCu);
                sub_100008A1C(v75);
              }

              else
              {

                v92 = v73;
                v80 = *v141;
                (*v141)(v72, v92);
              }

              v93 = v68[44];
              v94 = v68[36];
              v95 = v68[31];
              v55 = v68;
              v97 = *(v95 + 32);
              v96 = *(v95 + 40);
              v98 = [objc_allocWithZone(UNNotificationContent) init];
              v97();

              v80(v93, v94);
            }

            else
            {
              v64(v55[40], v66, v67);
              v82 = Logger.logObject.getter();
              v83 = static os_log_type_t.default.getter();
              v84 = os_log_type_enabled(v82, v83);
              v85 = v55[40];
              v86 = v55[36];
              if (v84)
              {
                v87 = swift_slowAlloc();
                v88 = swift_slowAlloc();
                v148 = v88;
                *v87 = 136315138;
                v144 = Handle.identifier.getter();
                v90 = v89;
                v146 = *v141;
                (*v141)(v85, v86);
                v91 = sub_1000141AC(v144, v90, &v148);

                *(v87 + 4) = v91;
                _os_log_impl(&_mh_execute_header, v82, v83, "LocationSharingContentService: Handle %s is **not** on block list, proceeding with alert.", v87, 0xCu);
                sub_100008A1C(v88);
              }

              else
              {

                v146 = *v141;
                (*v141)(v85, v86);
              }

              v99 = v55[47];
              v100 = v55[44];
              v101 = v55[38];
              v102 = v55[36];
              v64(v55[39], v100, v102);
              v64(v101, v100, v102);
              v103 = Logger.logObject.getter();
              v104 = static os_log_type_t.default.getter();
              v105 = os_log_type_enabled(v103, v104);
              v107 = v55[38];
              v106 = v55[39];
              v108 = v55[36];
              if (v105)
              {
                v139 = v104;
                v109 = swift_slowAlloc();
                v148 = swift_slowAlloc();
                *v109 = 136315394;
                v110 = Handle.identifier.getter();
                v112 = v111;
                v113 = v146;
                v146(v106, v108);
                v114 = sub_1000141AC(v110, v112, &v148);

                *(v109 + 4) = v114;
                *(v109 + 12) = 2080;
                v115 = Handle.serverID.getter();
                if (v116)
                {
                  v117 = v115;
                }

                else
                {
                  v117 = 0x3E6C696E3CLL;
                }

                if (v116)
                {
                  v118 = v116;
                }

                else
                {
                  v118 = 0xE500000000000000;
                }

                v146(v107, v108);
                v119 = sub_1000141AC(v117, v118, &v148);

                *(v109 + 14) = v119;
                _os_log_impl(&_mh_execute_header, v103, v139, "LocationSharingContentService: Found friend with handle %s aka %s", v109, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v113 = v146;
                v146(v107, v108);
                v146(v106, v108);
              }

              v120 = v68[44];
              v121 = v68[36];
              v122 = v68[31];
              v55 = v68;
              v124 = *(v122 + 32);
              v123 = *(v122 + 40);
              v125 = *(v122 + 16);
              v124();

              v113(v120, v121);
            }
          }

          v127 = v55[45];
          v126 = v55[46];
          v129 = v55[43];
          v128 = v55[44];
          v131 = v55[41];
          v130 = v55[42];
          v133 = v55[39];
          v132 = v55[40];
          v134 = v55[38];
          v135 = v55[35];
          v147 = v55[32];

          v136 = v55[1];

          return v136();
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else if (!v46)
    {
LABEL_29:

      goto LABEL_41;
    }

    v49 = v0[42];
    v50 = Handle.serverID.getter();
    v52 = v0[54];
    if (v51)
    {
      if (v52)
      {
        if (v51 == v52 && v50 == v0[53])
        {
          goto LABEL_39;
        }

        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v53)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else if (!v52)
    {
      goto LABEL_29;
    }

    v34 &= v34 - 1;
    result = (*v141)(v0[42], v0[36]);
    v36 = (v30 + 16);
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v35)
    {

      v54 = 1;
      goto LABEL_42;
    }

    v34 = *(v31 + 8 * v39);
    ++v38;
    if (v34)
    {
      v38 = v39;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013634()
{
  v1 = v0[50];
  v2 = v0[47];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v5, 0xCu);
    sub_100009E48(v6, &qword_100020D60, &qword_100017050);
  }

  v8 = v0[31];

  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v11 = *(v8 + 16);
  v10();

  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[41];
  v16 = v0[42];
  v19 = v0[39];
  v18 = v0[40];
  v20 = v0[38];
  v21 = v0[35];
  v24 = v0[32];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100013824()
{
  v1 = v0[54];
  v2 = v0[52];

  v3 = v0[57];
  v4 = v0[47];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v7, 0xCu);
    sub_100009E48(v8, &qword_100020D60, &qword_100017050);
  }

  v10 = v0[31];

  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v10 + 16);
  v12();

  v15 = v0[45];
  v14 = v0[46];
  v17 = v0[43];
  v16 = v0[44];
  v19 = v0[41];
  v18 = v0[42];
  v21 = v0[39];
  v20 = v0[40];
  v22 = v0[38];
  v23 = v0[35];
  v26 = v0[32];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100013A28()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[52];

  v4 = v0[61];
  v5 = v0[47];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v8, 0xCu);
    sub_100009E48(v9, &qword_100020D60, &qword_100017050);
  }

  v11 = v0[31];

  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  v14 = *(v11 + 16);
  v13();

  v16 = v0[45];
  v15 = v0[46];
  v18 = v0[43];
  v17 = v0[44];
  v20 = v0[41];
  v19 = v0[42];
  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[38];
  v24 = v0[35];
  v27 = v0[32];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100013C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v26 - v11;
  result = __chkstk_darwin(v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_100014C6C(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013E78()
{
  v1 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_100001B90(0, 0, v4, &unk_100017948, v7);
}

uint64_t sub_100013F84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013FC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100001A9C;

  return sub_100011A68();
}

uint64_t sub_100014078(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000140EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000141AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t *sub_100014148(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000141AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014278(v11, 0, 0, 1, a1, a2);
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
    sub_1000089B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008A1C(v11);
  return v7;
}

unint64_t sub_100014278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014384(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100014384(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000143D0(a1, a2);
  sub_100014500(&off_10001CA88);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000143D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000145EC(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000145EC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100014500(uint64_t result)
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

  result = sub_100014660(result, v12, 1, v3);
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

void *sub_1000145EC(uint64_t a1, uint64_t a2)
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

  sub_1000078C0(&qword_100021210, &qword_100017958);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014660(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000078C0(&qword_100021210, &qword_100017958);
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

_BYTE **sub_100014754(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100014764(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1000147D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100015E38(&qword_100020D88, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10001492C(a1, v5);
}

unint64_t sub_100014870(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100014AEC(a1, v4);
}

unint64_t sub_1000148B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100014BB4(a1, a2, v6);
}

unint64_t sub_10001492C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100015E38(&unk_100021230, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100014AEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100009DEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008E18(v8);
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

unint64_t sub_100014BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100014C6C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100015E38(&qword_100021218, &type metadata accessor for Handle);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000152A8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100014F4C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Handle();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000078C0(&qword_100021220, &qword_100017960);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000152A8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100014F4C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10001554C();
      goto LABEL_12;
    }

    sub_100015784(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100015E38(&qword_100021218, &type metadata accessor for Handle);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10001554C()
{
  v1 = v0;
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078C0(&qword_100021220, &qword_100017960);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100015784(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Handle();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000078C0(&qword_100021220, &qword_100017960);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

size_t sub_100015AA0(size_t a1, int64_t a2, char a3)
{
  result = sub_100015AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100015AC0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000078C0(&qword_100021228, &qword_100017968);
  v10 = *(type metadata accessor for Handle() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Handle() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100015C98(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100014C6C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100015E38(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}