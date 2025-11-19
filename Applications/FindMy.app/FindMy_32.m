uint64_t sub_10035D4D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6, const char *a7)
{
  v27 = a7;
  v28 = a6;
  v26 = a3;
  v11 = type metadata accessor for FMFActionStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  (*(v12 + 16))(v14, a1, v11);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = a5;
    v30 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100005B4C(v26, a4, &v30);
    *(v18 + 12) = 2048;
    v20 = FMFActionStatus.rawValue.getter();
    (*(v12 + 8))(v14, v11);
    *(v18 + 14) = v20;
    *(v18 + 22) = 2080;
    v29 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, &v30);

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, v27, v18, 0x20u);
    swift_arrayDestroy();
    a5 = v25;
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  return a5();
}

uint64_t sub_10035D7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5, const char *a6)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_100005B4C(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, a5, v11, 0xCu);
      sub_100006060(v12);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, a6, v21, 2u);
    }
  }

  return a3(v16);
}

uint64_t sub_10035DA0C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t (*a6)(void))
{
  v22 = a6;
  v9 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FMFLocationAlert();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  sub_1000BD790(a2, a3, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &unk_1006BEF80);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100005B4C(a2, a3, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: could not retrieve locationAlert with id", v19, 0xCu);
      sub_100006060(v20);
    }

    return v22();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    a4(v15);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10035DD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v30 = a6;
  v11 = type metadata accessor for FMFActionStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  (*(v12 + 16))(v14, a1, v11);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a5;
    v19 = v18;
    v28 = swift_slowAlloc();
    v32 = a4;
    v33 = v28;
    *v19 = 136315650;
    v31 = a3;

    sub_10007EBC0(&qword_1006AF8F0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100005B4C(v20, v21, &v33);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2048;
    v23 = FMFActionStatus.rawValue.getter();
    (*(v12 + 8))(v14, v11);
    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v31 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v24 = String.init<A>(describing:)();
    v26 = sub_100005B4C(v24, v25, &v33);

    *(v19 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Mute completed for: %s, status: %ld, error: %s", v19, 0x20u);
    swift_arrayDestroy();

    a5 = v29;
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  return a5();
}

void sub_10035E03C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v178 = &v167 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersonNameComponents();
  v11 = *(v10 - 8);
  v174 = v10;
  v175 = v11;
  v12 = __chkstk_darwin(v10);
  v172 = (&v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v173 = &v167 - v15;
  __chkstk_darwin(v14);
  v176 = &v167 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v177 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v171 = v7;
    v22 = v6;
    v23 = v21;
    v24 = swift_slowAlloc();
    *&aBlock = v24;
    *v23 = 136315138;
    v25 = Dictionary.description.getter();
    v27 = a1;
    v28 = sub_100005B4C(v25, v26, &aBlock);

    *(v23 + 4) = v28;
    a1 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMAppDelegate: handlePush for - %s", v23, 0xCu);
    sub_100006060(v24);

    v6 = v22;
    v7 = v171;
  }

  v183 = 7565409;
  v184 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v29 = sub_10004CC50(&aBlock), (v30 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_48;
  }

  sub_100006004(*(a1 + 56) + 32 * v29, v185);
  sub_10004CDB8(&aBlock);
  sub_10007EBC0(&qword_1006BC918);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v31 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v78))
    {
LABEL_52:

      return;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "FMAppDelegate: Could not parse apsInfo";
    goto LABEL_50;
  }

  v31 = v183;
  v183 = 0x79726F6765746163;
  v184 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!v31[2].isa || (v32 = sub_10004CC50(&aBlock), (v33 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_54;
  }

  sub_100006004(v31[7].isa + 32 * v32, v185);
  sub_10004CDB8(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v34 = 0;
    v35 = 0;
    goto LABEL_55;
  }

  v34 = v183;
  v35 = v184;
  if ((v183 != 0x4F4C5F524546464FLL || v184 != 0xEE004E4F49544143) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v34 == 0x465F594649544F4ELL && v35 == 0xEC000000444E554FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&_mh_execute_header, v119, v120, "FMAppDelegate: Selecting the devices tab", v121, 2u);
      }

      sub_100360EF0(a1);
      return;
    }

LABEL_55:
    strcpy(v185, "showInAppAlert");
    HIBYTE(v185[0]) = -18;
    AnyHashable.init<A>(_:)();
    if (!*(a1 + 16) || (v81 = sub_10004CC50(&aBlock), (v82 & 1) == 0))
    {
      sub_10004CDB8(&aBlock);

      memset(v185, 0, 32);
      sub_100012DF0(v185, &unk_1006B8740);
      goto LABEL_82;
    }

    sub_100006004(*(a1 + 56) + 32 * v81, v185);
    sub_10004CDB8(&aBlock);
    sub_100012DF0(v185, &unk_1006B8740);
    v183 = 0x7472656C61;
    v184 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (v31[2].isa && (v83 = sub_10004CC50(&aBlock), (v84 & 1) != 0))
    {
      sub_100006004(v31[7].isa + 32 * v83, v185);
      sub_10004CDB8(&aBlock);
      if (swift_dynamicCast())
      {
        v176 = v35;
        v85 = a1;

LABEL_69:
        v89 = objc_opt_self();
        v90 = String._bridgeToObjectiveC()();

        [v89 showSimpleAlertWithTitle:v90 message:0];

        a1 = v85;
        v35 = v176;
        goto LABEL_82;
      }
    }

    else
    {
      sub_10004CDB8(&aBlock);
    }

    v183 = 0x7472656C61;
    v184 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (v31[2].isa && (v86 = sub_10004CC50(&aBlock), (v87 & 1) != 0))
    {
      sub_100006004(v31[7].isa + 32 * v86, v185);
      sub_10004CDB8(&aBlock);
      sub_10007EBC0(&unk_1006BC940);
      if (swift_dynamicCast())
      {
        v176 = v35;
        v85 = a1;
        if (*(v183 + 16))
        {
          sub_10000726C(2036625250, 0xE400000000000000);
          if (v88)
          {

            goto LABEL_69;
          }
        }

        v35 = v176;
      }
    }

    else
    {
      sub_10004CDB8(&aBlock);
    }

    v183 = 0x7472656C61;
    v184 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (v31[2].isa && (v91 = sub_10004CC50(&aBlock), (v92 & 1) != 0))
    {
      sub_100006004(v31[7].isa + 32 * v91, v185);
      sub_10004CDB8(&aBlock);

      sub_10007EBC0(&qword_1006BC910);
      if (swift_dynamicCast())
      {
        v93 = v183;
        if (*(v183 + 16) && (v94 = sub_10000726C(0x79656B2D636F6CLL, 0xE700000000000000), (v95 & 1) != 0) && (sub_100006004(*(v93 + 56) + 32 * v94, &aBlock), (swift_dynamicCast() & 1) != 0))
        {
          v175 = v34;
          v96 = v6;
          if (*(v93 + 16) && (v97 = sub_10000726C(0x736772612D636F6CLL, 0xE800000000000000), (v98 & 1) != 0))
          {
            sub_100006004(*(v93 + 56) + 32 * v97, &aBlock);

            sub_10007EBC0(&qword_1006C0C10);
            if (swift_dynamicCast())
            {
              v176 = v35;
              v85 = a1;
              v99 = *&v185[0];
              v100 = objc_opt_self();
              v101 = String._bridgeToObjectiveC()();

              sub_10052A850(v99);

              isa = Array._bridgeToObjectiveC()().super.isa;

              v103 = [v100 localizedUserNotificationStringForKey:v101 arguments:isa];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v6 = v96;
              v34 = v175;
              goto LABEL_69;
            }
          }

          else
          {
          }

          v34 = v175;
        }

        else
        {
        }
      }
    }

    else
    {

      sub_10004CDB8(&aBlock);
    }

LABEL_82:
    v183 = 0x6567646162;
    v184 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v104 = sub_10004CC50(&aBlock), (v105 & 1) != 0))
    {
      sub_100006004(*(a1 + 56) + 32 * v104, v185);
      sub_10004CDB8(&aBlock);
      if (swift_dynamicCast())
      {
        v106 = v183;
        if (qword_1006AEC80 != -1)
        {
          swift_once();
        }

        v107 = off_1006BE550;
        *(*(off_1006BE550 + 2) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber) = v106;
        v108 = [objc_opt_self() sharedApplication];
        [v108 setApplicationIconBadgeNumber:*(v107[2] + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber)];
      }
    }

    else
    {
      sub_10004CDB8(&aBlock);
    }

    v183 = 7107189;
    v184 = 0xE300000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v109 = sub_10004CC50(&aBlock), (v110 & 1) != 0))
    {
      sub_100006004(*(a1 + 56) + 32 * v109, v185);
      sub_10004CDB8(&aBlock);
      if (swift_dynamicCast())
      {
        v111 = v178;
        URL.init(string:)();

        if ((*(v7 + 48))(v111, 1, v6) == 1)
        {
          sub_100012DF0(v111, &unk_1006B0120);
        }

        else
        {
          v118 = v177;
          (*(v7 + 32))(v177, v111, v6);
          if (qword_1006AEC80 != -1)
          {
            swift_once();
          }

          aBlock = 0u;
          v180 = 0u;
          sub_100111350(v118, &aBlock);
          sub_100012DF0(&aBlock, &unk_1006B8740);
          (*(v7 + 8))(v118, v6);
        }
      }
    }

    else
    {
      sub_10004CDB8(&aBlock);
    }

    v31 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v31, v112))
    {

      goto LABEL_52;
    }

    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v185[0] = v114;
    *v113 = 136315138;
    *&aBlock = v34;
    *(&aBlock + 1) = v35;
    sub_10007EBC0(&qword_1006AF8F0);
    v115 = String.init<A>(describing:)();
    v117 = sub_100005B4C(v115, v116, v185);

    *(v113 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v31, v112, "FMAppDelegate: Unhandled notification category - %s", v113, 0xCu);
    sub_100006060(v114);

    goto LABEL_51;
  }

  v36 = sub_1003E1AD0();
  if (!v36)
  {

    v31 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v78))
    {
      goto LABEL_52;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "FMAppDelegate: No view controller to present";
LABEL_50:
    _os_log_impl(&_mh_execute_header, v31, v78, v80, v79, 2u);
LABEL_51:

    goto LABEL_52;
  }

  v37 = v36;
  v183 = 0x7472656C61;
  v184 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!v31[2].isa || (v38 = sub_10004CC50(&aBlock), (v39 & 1) == 0))
  {

    sub_10004CDB8(&aBlock);
LABEL_114:
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v122, v123))
    {
LABEL_117:

      return;
    }

    v124 = swift_slowAlloc();
    *v124 = 0;
    v125 = "FMAppDelegate: Insufficient loc-args";
LABEL_116:
    _os_log_impl(&_mh_execute_header, v122, v123, v125, v124, 2u);

    goto LABEL_117;
  }

  sub_100006004(v31[7].isa + 32 * v38, v185);
  sub_10004CDB8(&aBlock);
  sub_10007EBC0(&qword_1006BC910);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_113;
  }

  v40 = v183;
  if (!*(v183 + 16))
  {
    goto LABEL_112;
  }

  v41 = sub_10000726C(0x736772612D636F6CLL, 0xE800000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_112;
  }

  sub_100006004(*(v40 + 56) + 32 * v41, &aBlock);

  sub_10007EBC0(&qword_1006C0C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_113:

    goto LABEL_114;
  }

  v178 = v2;
  v43 = *&v185[0];
  if (*(*&v185[0] + 16) < 3uLL)
  {
LABEL_112:

    goto LABEL_113;
  }

  v183 = 0x6469646E65697266;
  v184 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!v31[2].isa || (v44 = sub_10004CC50(&aBlock), (v45 & 1) == 0))
  {

    sub_10004CDB8(&aBlock);
LABEL_122:
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v122, v123))
    {
      goto LABEL_117;
    }

    v124 = swift_slowAlloc();
    *v124 = 0;
    v125 = "FMAppDelegate: No Friend id";
    goto LABEL_116;
  }

  sub_100006004(v31[7].isa + 32 * v44, v185);
  sub_10004CDB8(&aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_122;
  }

  if (v43[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_140;
  }

  v169 = v183;
  v168 = v184;
  v46 = v43[9];
  v171 = v43[8];
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();

  v170 = FMFContactsDataController.init(isSnapshotMode:)();

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v177 = v46;

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_100005B4C(v171, v177, &aBlock);
    _os_log_impl(&_mh_execute_header, v47, v48, "FMAppDelegate: handlePush friend email- %s", v49, 0xCu);
    sub_100006060(v50);
  }

  v51 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();
  if (v51)
  {
    v52 = v51;

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v52;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "FMAppDelegate: handlePush using contact - %@", v56, 0xCu);
      sub_100012DF0(v57, &unk_1006AF760);
    }

    PersonNameComponents.init()();
    v172 = CNContactNicknameKey;
    if ([v53 isKeyAvailable:?])
    {
      v59 = [v53 nickname];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.nickname.setter();
    }

    if ([v53 isKeyAvailable:CNContactGivenNameKey])
    {
      v60 = [v53 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.setter();
    }

    if ([v53 isKeyAvailable:CNContactFamilyNameKey])
    {
      v61 = [v53 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.familyName.setter();
    }

    v62 = objc_opt_self();
    v63 = v176;
    v64 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v65 = [v62 localizedStringFromPersonNameComponents:v64 style:2 options:0];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = *(v175 + 8);
    v175 += 8;
    v69(v63, v174);

    v70 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v70 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      PersonNameComponents.init()();
      if ([v53 isKeyAvailable:v172])
      {
        v71 = [v53 nickname];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.nickname.setter();
      }

      if ([v53 isKeyAvailable:CNContactGivenNameKey])
      {
        v72 = [v53 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
      }

      if ([v53 isKeyAvailable:CNContactFamilyNameKey])
      {
        v73 = [v53 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.familyName.setter();
      }

      v74 = v173;
      v75 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v76 = [v62 localizedStringFromPersonNameComponents:v75 style:2 options:0];

      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v77;

      v69(v74, v174);
    }

    else
    {
      if (String.isEmail.getter())
      {

        v176 = v169;
        v167 = v140;
        goto LABEL_135;
      }

      v176 = sub_100123238(v169);
      v167 = v141;
    }

LABEL_135:
    v142 = objc_opt_self();
    v143 = [v142 mainBundle];
    v186._object = 0x8000000100592D20;
    v144._object = 0x8000000100592D00;
    v186._countAndFlagsBits = 0xD00000000000002BLL;
    v144._countAndFlagsBits = 0xD000000000000019;
    v145._countAndFlagsBits = 0;
    v145._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v144, 0, v143, v145, v186);

    sub_10007EBC0(&unk_1006B20B0);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_100552220;
    *(v146 + 56) = &type metadata for String;
    *(v146 + 64) = sub_10008EE84();
    v147 = v167;
    *(v146 + 32) = v176;
    *(v146 + 40) = v147;
    String.init(format:_:)();

    v148 = [objc_opt_self() sharedInstance];
    v149 = [v142 mainBundle];
    v187._object = 0x8000000100592D70;
    v150._countAndFlagsBits = 0xD00000000000001ALL;
    v150._object = 0x8000000100592D50;
    v187._countAndFlagsBits = 0xD00000000000002CLL;
    v151._countAndFlagsBits = 0;
    v151._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v150, 0, v149, v151, v187);

    v152 = String._bridgeToObjectiveC()();

    v153 = String._bridgeToObjectiveC()();

    v154 = swift_allocObject();
    v155 = v178;
    swift_unknownObjectWeakInit();
    v156 = swift_allocObject();
    v157 = v171;
    v156[2] = v154;
    v156[3] = v157;
    v156[4] = v177;
    v181 = sub_10036DEE8;
    v182 = v156;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v180 = sub_10043454C;
    *(&v180 + 1) = &unk_100638BE8;
    v158 = _Block_copy(&aBlock);

    v159 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v160 = swift_allocObject();
    v161 = v169;
    v160[2] = v159;
    v160[3] = v161;
    v160[4] = v168;
    v181 = sub_10036DF34;
    v182 = v160;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v180 = sub_100004AE4;
    *(&v180 + 1) = &unk_100638C38;
    v162 = _Block_copy(&aBlock);

    LOBYTE(v166) = 0;
    v163 = [v148 showOfferAlertInViewController:v37 withTitle:v152 message:v153 popoverAnchoredAtView:0 orAnchoredOnBarButtonItem:0 withCompletion:v158 cancelHandler:v162 showAlert:v166];
    _Block_release(v162);
    _Block_release(v158);

    v164 = OBJC_IVAR____TtC6FindMy13FMAppDelegate_alertQueue;
    swift_beginAccess();
    v31 = v163;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v155[v164] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v155[v164] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_136:
      v165 = v178;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      if ((v165[OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert] & 1) == 0)
      {
        sub_100357FD0();
      }

      goto LABEL_52;
    }

LABEL_140:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_136;
  }

  v126 = v43[2];
  if (v126)
  {
    if (v126 != 1)
    {

      PersonNameComponents.init()();
      PersonNameComponents.givenName.setter();
      PersonNameComponents.familyName.setter();
      v127 = objc_opt_self();
      v128 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v129 = [v127 localizedStringFromPersonNameComponents:v128 style:0 options:0];

      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v130;

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v133 = 136315394;
        v135 = v43[4];
        v134 = v43[5];

        v136 = sub_100005B4C(v135, v134, &aBlock);

        *(v133 + 4) = v136;
        *(v133 + 12) = 2080;
        v137 = v43[6];
        v138 = v43[7];

        v139 = sub_100005B4C(v137, v138, &aBlock);

        *(v133 + 14) = v139;
        _os_log_impl(&_mh_execute_header, v131, v132, "FMAppDelegate: handlePush using push arguments - %s - %s", v133, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v175 + 8))(v172, v174);
      goto LABEL_135;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10035FE00(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_10035FEAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FriendshipExpiration();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert] = 0;
  }

  if (a1 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v8 + 104))(v14, **(&off_100638DF0 + a1), v7);
    (*(v8 + 32))(v16, v14, v7);
    sub_10007EBC0(&unk_1006AF770);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100552220;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    (*(v8 + 16))(v11, v16, v7);
    type metadata accessor for FMFShareLocationAction();
    swift_allocObject();

    v19 = FMFShareLocationAction.init(handles:friendId:duration:)();
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {

      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;

      sub_1000FB600(v19, sub_10036DFC0, v21);
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      sub_100357FD0();
    }

    else
    {
    }

    return (*(v8 + 8))(v16, v7);
  }

  return result;
}

void sub_10036022C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for FMFActionStatus();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    (*(v9 + 16))(v14, a1, v8);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v18 = 136315650;
      *(v18 + 4) = sub_100005B4C(a3, a4, &v35);
      *(v18 + 12) = 2080;
      v33 = 0;
      v34 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v19 = v33;
      v20 = v34;
      (*(v9 + 8))(v14, v8);
      v21 = sub_100005B4C(v19, v20, &v35);

      *(v18 + 14) = v21;
      *(v18 + 22) = 2080;
      v33 = a2;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100005B4C(v22, v23, &v35);

      *(v18 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMAppDelegate: Error offering shares to %s %s %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    (*(v9 + 16))(v12, a1, v8);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_100005B4C(a3, a4, &v35);
      *(v28 + 12) = 2080;
      v33 = 0;
      v34 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v29 = v33;
      v30 = v34;
      (*(v9 + 8))(v12, v8);
      v31 = sub_100005B4C(v29, v30, &v35);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMAppDelegate: Offered shares to %s %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

void sub_100360720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert] = 0;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_10:
    sub_100012DF0(v7, &qword_1006B0050);
    goto LABEL_12;
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v25 = off_1006BE550;

  sub_1000BD300(a2, a3, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_10;
  }

  v24 = *(v9 + 32);
  v24(v14, v7, v8);
  v17 = *(v9 + 16);
  v17(v12, v14, v8);
  type metadata accessor for FMFNotNowAction();
  swift_allocObject();
  v18 = FMFNotNowAction.init(friend:)();
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {

    v25 = v18;
    v17(v12, v14, v8);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    v24((v21 + v20), v12, v8);

    sub_1000FB600(v25, sub_10036DF40, v21);
  }

  (*(v9 + 8))(v14, v8);
LABEL_12:
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_100357FD0();
  }
}

void sub_100360AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMFActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  (*(v11 + 16))(v13, a3, v10);
  (*(v7 + 16))(v9, a1, v6);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v16;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = 0;
    *v18 = 136315650;
    v36 = 0xE000000000000000;
    v37 = v19;
    _print_unlocked<A, B>(_:_:)();
    v32 = v15;
    v20 = v6;
    v21 = a2;
    v23 = v35;
    v22 = v36;
    (*(v11 + 8))(v13, v10);
    v24 = sub_100005B4C(v23, v22, &v37);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v35 = 0;
    v36 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v25 = v35;
    v26 = v36;
    (*(v7 + 8))(v9, v20);
    v27 = sub_100005B4C(v25, v26, &v37);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2080;
    v35 = v21;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v28 = String.init<A>(describing:)();
    v30 = sub_100005B4C(v28, v29, &v37);

    *(v18 + 24) = v30;
    v31 = v32;
    _os_log_impl(&_mh_execute_header, v32, v33, "Not Now Action completed for: %s, status: %s, error: %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_100360EF0(uint64_t a1)
{
  v2 = v1;
  v144 = type metadata accessor for FMSelectedSection();
  v4 = __chkstk_darwin(v144);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v120 - v7;
  v9 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v9 - 8);
  v128 = &v120 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v137 = *(v11 - 8);
  v138 = v11;
  __chkstk_darwin(v11);
  v134 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for DispatchQoS();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DispatchTime();
  v133 = *(v140 - 8);
  v14 = __chkstk_darwin(v140);
  v130 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v131 = &v120 - v16;
  v17 = sub_10007EBC0(&unk_1006B0120);
  v18 = __chkstk_darwin(v17 - 8);
  v126 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v139 = (&v120 - v20);
  v21 = type metadata accessor for URL();
  v142 = *(v21 - 8);
  v143 = v21;
  v22 = *(v142 + 64);
  v23 = __chkstk_darwin(v21);
  v127 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v129 = &v120 - v25;
  __chkstk_darwin(v24);
  v141 = &v120 - v26;
  v27 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v120 - v28;
  v30 = type metadata accessor for FMIPDevice();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = 0xD000000000000010;
  v152 = 0x800000010058C550;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v125 = v2, v34 = sub_10004CC50(&aBlock), (v35 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_12;
  }

  sub_100006004(*(a1 + 56) + 32 * v34, v153);
  sub_10004CDB8(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "FMAppDelegate: No replaced identifier falling back to device", v45, 2u);
    }

    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v46 = *(off_1006BE550 + 7);
    goto LABEL_19;
  }

  v36 = v152;
  v124 = v151;
  v151 = 0x65644970756F7267;
  v152 = 0xEF7265696669746ELL;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v37 = sub_10004CC50(&aBlock), (v38 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_21;
  }

  sub_100006004(*(a1 + 56) + 32 * v37, v153);
  sub_10004CDB8(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v123 = 0xE000000000000000;
    goto LABEL_22;
  }

  v39 = v151;
  v121 = v152;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v122 = v39;
  v40 = v39;
  v41 = v121;
  sub_1000E5180(v40, v121, v29);

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {

    sub_100012DF0(v29, &unk_1006BBCE0);
    goto LABEL_21;
  }

  (*(v31 + 32))(v33, v29, v30);
  v104 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
  (*(v31 + 8))(v33, v30);
  if (v104)
  {

    v105 = v124;
    v123 = v36;
  }

  else
  {
    v105 = 0;
    v123 = 0xE000000000000000;
  }

  v50 = v41;
  v49 = v122;
  v48 = v105;
LABEL_22:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100005B14(v51, qword_1006D4630);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  LODWORD(v122) = v53;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v121 = v50;
    v55 = v54;
    v120 = swift_slowAlloc();
    aBlock = v120;
    *v55 = 136315138;

    v56 = sub_100005B4C(v124, v36, &aBlock);

    *(v55 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v52, v122, "FMAppDelegate: Processing Notify When Found Notification for: %s", v55, 0xCu);
    sub_100006060(v120);

    v50 = v121;

    if (v50)
    {
LABEL_26:
      aBlock = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      aBlock = 0xD00000000000001ALL;
      v146 = 0x8000000100592C80;
      v57._countAndFlagsBits = v49;
      v57._object = v50;
      String.append(_:)(v57);

      v58._countAndFlagsBits = 0x3D64497472617026;
      v58._object = 0xE800000000000000;
      String.append(_:)(v58);
      v59._countAndFlagsBits = v48;
      v59._object = v123;
      String.append(_:)(v59);

      v60._countAndFlagsBits = 0x69746F6E3D706F26;
      v60._object = 0xEA00000000007966;
      String.append(_:)(v60);
      v61 = v139;
      URL.init(string:)();

      v63 = v142;
      v62 = v143;
      if ((*(v142 + 48))(v61, 1, v143) == 1)
      {

        sub_100012DF0(v61, &unk_1006B0120);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          v67 = "FMAppDelegate: Invalid URL for Device Notify When Found Notification";
LABEL_41:
          _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);

          goto LABEL_42;
        }

        goto LABEL_42;
      }

      v144 = *(v63 + 32);
      v144(v141, v61, v62);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        aBlock = v78;
        *v77 = 136315138;
        v79 = sub_100005B4C(v124, v36, &aBlock);

        *(v77 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v75, v76, "FMAppDelegate: Handle Notify When Found Notification for device: %s", v77, 0xCu);
        sub_100006060(v78);
      }

      else
      {
      }

      sub_10000905C(0, &qword_1006AEDC0);
      v128 = static OS_dispatch_queue.main.getter();
      v85 = v130;
      static DispatchTime.now()();
      v86 = v131;
      + infix(_:_:)();
      v139 = *(v133 + 8);
      v139(v85, v140);
      v87 = v142;
      v88 = v129;
      v89 = v143;
      (*(v142 + 16))(v129, v141, v143);
      v90 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v91 = swift_allocObject();
      v92 = v125;
      *(v91 + 16) = v125;
      v144((v91 + v90), v88, v89);
      v149 = sub_10036E184;
      v150 = v91;
      aBlock = _NSConcreteStackBlock;
      v146 = 1107296256;
      v147 = sub_100004AE4;
      v148 = &unk_100638D28;
      v93 = _Block_copy(&aBlock);
      v94 = v92;

      v95 = v132;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v96 = v134;
      v97 = v138;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v98 = v128;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v93);

      (*(v137 + 8))(v96, v97);
      (*(v135 + 8))(v95, v136);
      v139(v86, v140);
      (*(v87 + 8))(v141, v89);
      return;
    }
  }

  else
  {

    if (v50)
    {
      goto LABEL_26;
    }
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v68 = off_1006BE550;

  v69 = v128;
  sub_1000E5FF8(v124, v36, v128);

  v70 = type metadata accessor for FMIPItem();
  v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
  sub_100012DF0(v69, &qword_1006B07D0);
  if (v71 == 1)
  {

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "FMAppDelegate: No replaced identifier falling back to device", v74, 2u);
    }

    v46 = v68[7];
LABEL_19:
    swift_storeEnumTagMultiPayload();
    v47 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v46 + v47, v6);
    swift_beginAccess();

    sub_100058530(v8, v46 + v47);
    swift_endAccess();
    sub_100058594(v6);

    sub_10005D4E4(v6);
    sub_10005D4E4(v8);
    return;
  }

  aBlock = 0;
  v146 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  aBlock = 0xD000000000000018;
  v146 = 0x8000000100592CA0;
  v80._countAndFlagsBits = v124;
  v80._object = v36;
  String.append(_:)(v80);
  v81._countAndFlagsBits = 0x69746F6E3D706F26;
  v81._object = 0xEA00000000007966;
  String.append(_:)(v81);
  v82 = v126;
  URL.init(string:)();

  v84 = v142;
  v83 = v143;
  if ((*(v142 + 48))(v82, 1, v143) == 1)
  {

    sub_100012DF0(v82, &unk_1006B0120);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "FMAppDelegate: Invalid URL for Item Notify When Found Notification";
      goto LABEL_41;
    }

LABEL_42:

    return;
  }

  v144 = *(v84 + 32);
  v144(v127, v82, v83);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock = v102;
    *v101 = 136315138;
    v103 = sub_100005B4C(v124, v36, &aBlock);

    *(v101 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v99, v100, "FMAppDelegate: Handle Notify When Found Notification for item: %s", v101, 0xCu);
    sub_100006060(v102);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v139 = static OS_dispatch_queue.main.getter();
  v106 = v130;
  static DispatchTime.now()();
  v107 = v131;
  + infix(_:_:)();
  v141 = *(v133 + 8);
  (v141)(v106, v140);
  v108 = v142;
  v109 = v143;
  v110 = v129;
  (*(v142 + 16))(v129, v127, v143);
  v111 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v112 = swift_allocObject();
  v113 = v125;
  *(v112 + 16) = v125;
  v144((v112 + v111), v110, v109);
  v149 = sub_10036E184;
  v150 = v112;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_100004AE4;
  v148 = &unk_100638CD8;
  v114 = _Block_copy(&aBlock);
  v115 = v113;

  v116 = v132;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v117 = v134;
  v118 = v138;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v119 = v139;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v114);

  (*(v137 + 8))(v117, v118);
  (*(v135 + 8))(v116, v136);
  (v141)(v107, v140);
  (*(v108 + 8))(v127, v109);
}

unint64_t sub_100362454(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007EBC0(&qword_1006B1B00);
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10004CD5C(*(a1 + 48) + 40 * v12, v27);
        sub_100006004(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10004CD5C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100006004(v25 + 8, v20);
        sub_100012DF0(v24, &unk_1006BC930);
        v21 = v18;
        sub_1000072E4(v20, v22);
        v13 = v21;
        sub_1000072E4(v22, v23);
        sub_1000072E4(v23, &v21);
        result = sub_10000726C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100006060(v10);
          result = sub_1000072E4(&v21, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v13;
          result = sub_1000072E4(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100012DF0(v24, &unk_1006BC930);

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

uint64_t sub_100362730(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
    v2 = a2;
  }

  memset(v5, 0, sizeof(v5));
  sub_100111350(v2, v5);
  return sub_100012DF0(v5, &unk_1006B8740);
}

void sub_1003627C4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FMIPUnknownItem();
  v61 = *(v63 - 8);
  v10 = __chkstk_darwin(v63);
  v57 = v11;
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v53 - v12;
  v13 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v70 = type metadata accessor for UUID();
  v16 = *(v70 - 8);
  __chkstk_darwin(v70);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100005B14(v19, qword_1006D4630);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v55 = v20;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMAppDelegate: processUTNotification refreshing unknown beacons", v23, 2u);
  }

  UUID.init(uuidString:)();
  if ((*(v16 + 48))(v15, 1, v70) == 1)
  {
    sub_100012DF0(v15, &unk_1006B20C0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100005B4C(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "FMAppDelegate: processUTNotification invalid UUID: %s", v26, 0xCu);
      sub_100006060(v27);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v15, v70);
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v28 = FMIPManager.unknownItems.getter();
    __chkstk_darwin(v28);
    *(&v53 - 2) = v18;
    v30 = sub_100104884(sub_10017014C, (&v53 - 4), v29);
    if (*(v30 + 16))
    {
      v55 = v18;
      v31 = v61;
      v32 = *(v61 + 80);
      v33 = *(v61 + 16);
      v34 = v69;
      v35 = v63;
      v33(v69, v30 + ((v32 + 32) & ~v32), v63);

      sub_10000905C(0, &qword_1006AEDC0);
      v54 = static OS_dispatch_queue.main.getter();
      v36 = v58;
      v33(v58, v34, v35);
      v37 = (v32 + 40) & ~v32;
      v38 = swift_allocObject();
      v39 = v60;
      *(v38 + 2) = v59;
      *(v38 + 3) = v39;
      v40 = v56;
      *(v38 + 4) = v56;
      (*(v31 + 32))(&v38[v37], v36, v35);
      aBlock[4] = sub_10036ACB0;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100638710;
      v41 = _Block_copy(aBlock);

      v42 = v40;

      v43 = v62;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v44 = v65;
      v45 = v68;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v46 = v54;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);

      (*(v67 + 8))(v44, v45);
      (*(v64 + 8))(v43, v66);
      (*(v31 + 8))(v69, v35);
      (*(v16 + 8))(v55, v70);
    }

    else
    {

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = a1;
        v52 = v50;
        aBlock[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_100005B4C(v51, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v47, v48, "FMAppDelegate: processUTNotification no beacon found with UUID: %s", v49, 0xCu);
        sub_100006060(v52);
      }

      (*(v16 + 8))(v18, v70);
    }
  }
}

uint64_t sub_100363090(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMSelectedSection();
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  if (a1 == 0xD00000000000002ELL && 0x800000010057C270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v16 = *(off_1006BE550 + 7);
    v17 = type metadata accessor for FMSelectionPendingAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
    v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();

    sub_1000BBF40(v15, v16 + v18, &unk_1006B8DD0);
    swift_endAccess();
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100005B4C(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v20, v21, "FMAppDelegate: processUTNotification selecting section %s", v23, 0xCu);
    sub_100006060(v24);

    v10 = v30;
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v25 = *(off_1006BE550 + 7);
  v26 = type metadata accessor for FMIPUnknownItem();
  (*(*(v26 - 8) + 16))(v12, a4, v26);
  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v25 + v27, v10);
  swift_beginAccess();

  sub_100058530(v12, v25 + v27);
  swift_endAccess();
  sub_100058594(v10);

  sub_10005D4E4(v10);
  return sub_10005D4E4(v12);
}

void sub_1003634E8(void *a1, uint64_t a2)
{
  v49 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v48);
  v12 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v15 = FMIPManager.unknownItems.getter();
  __chkstk_darwin(v15);
  *(&v44 - 2) = a2;
  v17 = sub_100104884(sub_10036E18C, (&v44 - 4), v16);
  if (*(v17 + 16))
  {
    v18 = *(v9 + 80);
    v47 = v3;
    v19 = *(v9 + 16);
    v20 = v17 + ((v18 + 32) & ~v18);
    v21 = v14;
    v22 = v14;
    v45 = v14;
    v23 = v48;
    v19(v22, v20, v48);

    sub_10000905C(0, &qword_1006AEDC0);
    v24 = static OS_dispatch_queue.main.getter();
    v19(v12, v21, v23);
    v25 = (v18 + 16) & ~v18;
    v26 = swift_allocObject();
    (*(v9 + 32))(v26 + v25, v12, v23);
    v27 = v49;
    *(v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
    aBlock[4] = sub_10036AD7C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100638788;
    v28 = _Block_copy(aBlock);
    v29 = v27;

    v30 = v50;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v31 = v52;
    v32 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v54 + 8))(v31, v32);
    (*(v51 + 8))(v30, v53);
    (*(v9 + 8))(v45, v23);
  }

  else
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v35 = v46;
    v34 = v47;
    (*(v46 + 16))(v8, a2, v47);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      sub_10036AE08(&qword_1006B7830, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v35 + 8))(v8, v34);
      v43 = sub_100005B4C(v40, v42, aBlock);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "FMAppDelegate: processUTPlaySoundNotification no beacon found with UUID: %s", v38, 0xCu);
      sub_100006060(v39);
    }

    else
    {

      (*(v35 + 8))(v8, v34);
    }
  }
}

uint64_t sub_100363BF8(uint64_t a1)
{
  v30 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FMIPUnknownItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v29 = *(v8 + 16);
  v29(v10, a1, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v4;
    v17 = v16;
    v31[0] = v16;
    *v15 = 136315138;
    v18 = FMIPUnknownItem.debugDescription.getter();
    v26 = v6;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_100005B4C(v18, v20, v31);
    v6 = v26;

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMAppDelegate: processUTPlaySoundNotification selecting item %s", v15, 0xCu);
    sub_100006060(v17);
    v4 = v28;

    a1 = v27;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v22 = *(off_1006BE550 + 7);
  (v29)(v6, a1);
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v22 + v23, v4);
  swift_beginAccess();

  sub_100058530(v6, v22 + v23);
  swift_endAccess();
  sub_100058594(v4);

  sub_10005D4E4(v4);
  return sub_10005D4E4(v6);
}

void sub_100363FC4(char a1, const char *a2, const char *a3)
{
  if (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = v5;
      v8 = oslog;
      v9 = a2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v7, v9, v6, 2u);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = v12;
      v8 = oslog;
      v9 = a3;
      goto LABEL_10;
    }
  }
}

uint64_t sub_100364148(uint64_t a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v67 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v66 = type metadata accessor for FMIPItem();
  v68 = *(v66 - 8);
  v13 = *(v68 + 64);
  v14 = __chkstk_darwin(v66);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v51 - v15;
  v16 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for FMIPBeaconShare();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v55 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v69 = a2;
  sub_100110904(sub_10036AF90, v67, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_100012DF0(v18, &unk_1006C0240);
  }

  v54 = v4;
  v53 = *(v20 + 32);
  v53(v24, v18, v19);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  FMIPBeaconShare.beaconIdentifier.getter();
  v26 = UUID.uuidString.getter();
  v67 = v24;
  v28 = v27;
  (*(v63 + 8))(v9, v64);
  sub_1000E5FF8(v26, v28, v12);

  v29 = v68;
  if ((*(v68 + 48))(v12, 1, v66) == 1)
  {
    (*(v20 + 8))(v67, v19);
    return sub_100012DF0(v12, &qword_1006B07D0);
  }

  else
  {
    v63 = *(v29 + 32);
    v52 = v19;
    v30 = v20;
    v31 = v65;
    (v63)();
    sub_10000905C(0, &qword_1006AEDC0);
    v64 = static OS_dispatch_queue.main.getter();
    v32 = v30;
    v33 = *(v30 + 16);
    v34 = v55;
    v33(v55, v67, v19);
    v35 = v68;
    v36 = v56;
    v37 = v66;
    (*(v68 + 16))(v56, v31, v66);
    v38 = v32;
    v39 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v40 = (v21 + *(v35 + 80) + v39) & ~*(v35 + 80);
    v41 = swift_allocObject();
    v42 = v57;
    *(v41 + 16) = v57;
    v43 = v34;
    v44 = v52;
    v53((v41 + v39), v43, v52);
    (v63)(v41 + v40, v36, v37);
    aBlock[4] = sub_10036AFB0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006388F0;
    v45 = _Block_copy(aBlock);
    v46 = v42;

    v47 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v48 = v60;
    v49 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = v64;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v62 + 8))(v48, v49);
    (*(v59 + 8))(v47, v61);
    (*(v68 + 8))(v65, v37);
    return (*(v38 + 8))(v67, v44);
  }
}

void sub_100364970(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v87 = a4;
  v76 = a3;
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DispatchQoS();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v90 = v8;
  v91 = v9;
  v10 = __chkstk_darwin(v8);
  v89 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v72 - v15;
  v85 = type metadata accessor for FMIPItem();
  v88 = *(v85 - 8);
  v17 = *(v88 + 64);
  v18 = __chkstk_darwin(v85);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = &v72 - v19;
  v20 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v20 - 8);
  v22 = &v72 - v21;
  v23 = type metadata accessor for FMIPBeaconShare();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v83 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v86 = a2;
  v92 = a2;
  sub_100110904(sub_10036E1A8, a1, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100012DF0(v22, &unk_1006C0240);
    v29 = v90;
  }

  else
  {
    v30 = *(v24 + 32);
    v75 = v23;
    v73 = v30;
    v30(v28, v22, v23);
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    FMIPBeaconShare.beaconIdentifier.getter();
    v31 = UUID.uuidString.getter();
    v33 = v32;
    v34 = v13;
    v29 = v90;
    (*(v91 + 1))(v34, v90);
    sub_1000E5FF8(v31, v33, v16);

    v35 = v88;
    v36 = v85;
    if ((*(v88 + 48))(v16, 1, v85) != 1)
    {
      v89 = *(v35 + 32);
      v54 = v24;
      v55 = v84;
      v89();
      sub_10000905C(0, &qword_1006AEDC0);
      v56 = v36;
      v90 = static OS_dispatch_queue.main.getter();
      v57 = v54;
      v72 = v54;
      (*(v54 + 16))(v83, v28, v75);
      v58 = *(v35 + 16);
      v91 = v28;
      v59 = v74;
      v60 = v56;
      v58(v74, v55, v56);
      v61 = (*(v57 + 80) + 24) & ~*(v57 + 80);
      v62 = (v25 + *(v35 + 80) + v61) & ~*(v35 + 80);
      v63 = swift_allocObject();
      v64 = v76;
      *(v63 + 16) = v76;
      v65 = v75;
      v73(v63 + v61, v83, v75);
      (v89)(v63 + v62, v59, v60);
      aBlock[4] = sub_10036B1B0;
      aBlock[5] = v63;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100638968;
      v66 = _Block_copy(aBlock);
      v67 = v64;

      v68 = v77;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v69 = v79;
      v70 = v82;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v71 = v90;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v66);

      (*(v81 + 8))(v69, v70);
      (*(v78 + 8))(v68, v80);
      (*(v88 + 8))(v84, v60);
      (*(v72 + 8))(v91, v65);
      return;
    }

    (*(v24 + 8))(v28, v75);
    sub_100012DF0(v16, &qword_1006B07D0);
  }

  v37 = v91;
  v38 = v89;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100005B14(v39, qword_1006D4CD8);
  (*(v37 + 2))(v38, v86, v29);
  v40 = v87;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = v29;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v43 = 136315394;
    sub_10036AE08(&qword_1006B7830, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v38;
    v50 = v49;
    (*(v37 + 1))(v48, v44);
    v51 = sub_100005B4C(v47, v50, aBlock);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2112;
    v52 = [v40 notification];
    v53 = [v52 request];

    *(v43 + 14) = v53;
    *v45 = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, "FMAppDelegate: No shares that match identifier %s in request %@", v43, 0x16u);
    sub_100012DF0(v45, &unk_1006AF760);

    sub_100006060(v46);
  }

  else
  {

    (*(v37 + 1))(v38, v29);
  }
}

uint64_t sub_100365434()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.identifier.getter();
  v4 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100365520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21[-v11];
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v13 = off_1006BE550;
  v14 = *(off_1006BE550 + 7);

  FMIPBeaconShare.identifier.getter();
  v15 = type metadata accessor for FMSelectionPendingAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_1000BBF40(v12, v14 + v16, &unk_1006B8DD0);
  swift_endAccess();

  v17 = v13[7];
  v18 = type metadata accessor for FMIPItem();
  (*(*(v18 - 8) + 16))(v9, a3, v18);
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v17 + v19, v7);
  swift_beginAccess();

  sub_100058530(v9, v17 + v19);
  swift_endAccess();
  sub_100058594(v7);

  sub_10005D4E4(v7);
  return sub_10005D4E4(v9);
}

void sub_1003657E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v42 = a5;
  v43 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v44 = a3;
  sub_1000E5FF8(a3, a4, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100012DF0(v12, &qword_1006B07D0);
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4CD8);

    v21 = v42;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v44;
    if (v24)
    {
      v26 = a4;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v27 = 136315394;
      *(v27 + 4) = sub_100005B4C(v25, v26, aBlock);
      *(v27 + 12) = 2112;
      v30 = [v21 notification];
      v31 = [v30 request];

      *(v27 + 14) = v31;
      *v28 = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMAppDelegate: No item that matches identifier %s in request %@", v27, 0x16u);
      sub_100012DF0(v28, &unk_1006AF760);

      sub_100006060(v29);
    }
  }

  else
  {
    v44 = v7;
    v32 = *(v14 + 32);
    v32(v19, v12, v13);
    sub_10000905C(0, &qword_1006AEDC0);
    v42 = static OS_dispatch_queue.main.getter();
    (*(v14 + 16))(v17, v19, v13);
    v33 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v34 = swift_allocObject();
    v35 = v43;
    *(v34 + 16) = v43;
    v32((v34 + v33), v17, v13);
    aBlock[4] = sub_10036B290;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006389E0;
    v36 = _Block_copy(aBlock);
    v37 = v35;

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v39 = v47;
    v40 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v42;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
    (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_100365E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v11 = *(off_1006BE550 + 7);
  v12 = a3(0);
  (*(*(v12 - 8) + 16))(v10, a2, v12);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v11 + v13, v8);
  swift_beginAccess();

  sub_100058530(v10, v11 + v13);
  swift_endAccess();
  sub_100058594(v8);

  sub_10005D4E4(v8);
  return sub_10005D4E4(v10);
}

uint64_t sub_10036603C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for FMFSatelliteLocationNotificationEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v9;
    v32[0] = v15;
    *v14 = 136446466;
    ObjectType = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920);
    v16 = String.init<A>(describing:)();
    v18 = sub_100005B4C(v16, v17, v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100005B4C(0xD00000000000003CLL, 0x8000000100592E00, v32);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    v9 = v30;
  }

  My = type metadata accessor for Feature.FindMy();
  v32[3] = My;
  v32[4] = sub_10036AE08(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v20 = sub_100008FC0(v32);
  (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v32);
  if (My)
  {
    v21 = [a1 request];
    v22 = [v21 content];

    v23 = [v22 categoryIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == 0xD00000000000002FLL && 0x800000010057C630 == v26)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        return (*(a3 + 16))(a3, 7);
      }
    }

    FMFSatelliteLocationNotificationEvent.init(notificationPresentedToUser:notificationTapped:)();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    FMIPManager.enqueue(satelliteLocationNotificationEvent:)();
    (*(v7 + 8))(v9, v6);
  }

  return (*(a3 + 16))(a3, 7);
}

void sub_1003664A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v9 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v9 - 8);
  v46 = &v44 - v10;
  v11 = type metadata accessor for FMSelectedSection();
  v12 = __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = type metadata accessor for FMFFriend();
  v48 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100362454(a1);
  if (v23)
  {
    v24 = v23;
    v45 = a5;
    if (a2 == 0xD000000000000017 && 0x800000010057C4A0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0xD000000000000017 && 0x800000010057C530 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0xD00000000000001ALL && 0x800000010057C4E0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      if (*(v24 + 16))
      {
        v29 = sub_10000726C(0x6553646E65697266, 0xEE00644972657672);
        if (v30)
        {
          sub_100006004(*(v24 + 56) + 32 * v29, v51);

          if ((swift_dynamicCast() & 1) == 0)
          {
            return;
          }

          v32 = v49;
          v31 = v50;
          if (qword_1006AEC80 != -1)
          {
            swift_once();
          }

          v33 = off_1006BE550;

          sub_1000BD300(v32, v31, v19);

          v34 = v48;
          if ((v48[6].isa)(v19, 1, v20) == 1)
          {
            sub_100012DF0(v19, &qword_1006B0050);
            return;
          }

          (v34[4].isa)(v22, v19, v20);
          v35 = v33[7];
          (v34[2].isa)(v16, v22, v20);
          swift_storeEnumTagMultiPayload();
          v36 = v34;
          v37 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100062074(v35 + v37, v14);
          swift_beginAccess();

          sub_100058530(v16, v35 + v37);
          swift_endAccess();
          sub_100058594(v14);

          sub_10005D4E4(v14);
          sub_10005D4E4(v16);
          v38 = v33[7];
          v39 = type metadata accessor for FMSelectionPendingAction(0);
          v40 = v46;
          swift_storeEnumTagMultiPayload();
          (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
          v41 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
          swift_beginAccess();

          sub_1000BBF40(v40, v38 + v41, &unk_1006B8DD0);
          swift_endAccess();

          (v36[1].isa)(v22, v20);
          v42 = (v33[7] + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo);
          swift_beginAccess();
          v43 = v45;
          *v42 = v47;
          v42[1] = v43;
        }
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    v48 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v48, v26, "FMAppDelegate: Handle Geofence Receive Notification", v27, 2u);
    }

    v28 = v48;
  }
}

uint64_t sub_100366B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32[-1] - v10;
  v12 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v12 - 8);
  v14 = &v32[-1] - v13;
  v15 = type metadata accessor for FMFFriend();
  v31 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v18 = &v32[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0xD000000000000017 || 0x800000010057C530 != a3)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0 && (a2 != 0xD00000000000001ALL || 0x800000010057C4E0 != a3))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        strcpy(v32, "friendServerId");
        HIBYTE(v32[1]) = -18;
        AnyHashable.init<A>(_:)();
        v19 = &off_1006AE000;
        p_vtable = _TtC6FindMy22FMCameraAccessDetector.vtable;
        if (*(a1 + 16) && (v21 = sub_10004CC50(v33), (v22 & 1) != 0))
        {
          sub_100006004(*(a1 + 56) + 32 * v21, v34);
          sub_10004CDB8(v33);
          if (swift_dynamicCast())
          {
            v23 = v32[0];
            v24 = v32[1];
            if (qword_1006AEC80 != -1)
            {
              swift_once();
            }

            v25 = off_1006BE550;

            sub_1000BD300(v23, v24, v14);

            v26 = v31;
            if ((*(v31 + 48))(v14, 1, v15) != 1)
            {
              (*(v26 + 32))(v18, v14, v15);
              v29 = v25[7];
              (*(v26 + 16))(v11, v18, v15);
              swift_storeEnumTagMultiPayload();
              v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
              swift_beginAccess();
              sub_100062074(v29 + v30, v9);
              swift_beginAccess();

              sub_100058530(v11, v29 + v30);
              swift_endAccess();
              sub_100058594(v9);

              sub_10005D4E4(v9);
              sub_10005D4E4(v11);
              return (*(v26 + 8))(v18, v15);
            }

            sub_100012DF0(v14, &qword_1006B0050);
            p_vtable = (_TtC6FindMy22FMCameraAccessDetector + 24);
            v19 = &off_1006AE000;
          }
        }

        else
        {
          sub_10004CDB8(v33);
        }

        if (v19[400] != -1)
        {
          swift_once();
        }

        v27 = *(p_vtable[170] + 7);
        swift_storeEnumTagMultiPayload();
        v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_100062074(v27 + v28, v9);
        swift_beginAccess();

        sub_100058530(v11, v27 + v28);
        swift_endAccess();
        sub_100058594(v9);

        sub_10005D4E4(v9);
        return sub_10005D4E4(v11);
      }
    }
  }

  return result;
}

void sub_100367088(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = [a1 notification];
  v13 = [v12 request];

  v14 = [v13 content];
  v15 = [v14 userInfo];

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v32[1] = 0x6564496572616873;
  v32[2] = 0xEF7265696669746ELL;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_10004CC50(v33), (v18 & 1) == 0))
  {

    sub_10004CDB8(v33);
    goto LABEL_7;
  }

  sub_100006004(*(v16 + 56) + 32 * v17, v34);
  sub_10004CDB8(v33);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4CD8);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [v20 notification];
      v26 = [v25 request];

      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMAppDelegate: Invalid share identifier provided in request: %@", v23, 0xCu);
      sub_100012DF0(v24, &unk_1006AF760);
    }

    return;
  }

  UUID.init(uuidString:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006B20C0);
    goto LABEL_7;
  }

  v27 = *(v6 + 32);
  v27(v11, v4, v5);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, v11, v5);
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  v27((v29 + v28), v9, v5);
  v30 = v32[0];
  *(v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32[0];

  v31 = v30;
  sub_1000E8790();

  (*(v6 + 8))(v11, v5);
}

void sub_1003675BC(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = [a1 notification];
  v13 = [v12 request];

  v14 = [v13 content];
  v15 = [v14 userInfo];

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = 0x6564496572616873;
  v37 = 0xEF7265696669746ELL;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_10004CC50(v38), (v18 & 1) == 0))
  {

    sub_10004CDB8(v38);
    goto LABEL_7;
  }

  sub_100006004(*(v16 + 56) + 32 * v17, v39);
  sub_10004CDB8(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4CD8);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [v20 notification];
      v26 = [v25 request];

      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMAppDelegate: Invalid share identifier provided in request: %@", v23, 0xCu);
      sub_100012DF0(v24, &unk_1006AF760);
    }

    return;
  }

  UUID.init(uuidString:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006B20C0);
    goto LABEL_7;
  }

  v34 = *(v6 + 32);
  v34(v11, v4, v5);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v33 = *(off_1006BE550 + 3);
  (*(v6 + 16))(v9, v11, v5);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v34((v29 + v27), v9, v5);
  v30 = v35;
  *(v29 + v28) = v35;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v31 = v30;
  v32 = a1;
  sub_1000E8790();

  (*(v6 + 8))(v11, v5);
}

void sub_100367B10(void *a1)
{
  v2 = v1;
  v4 = [a1 notification];
  v5 = [v4 request];

  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v9 = sub_10004CC50(v22), (v10 & 1) != 0))
  {
    sub_100006004(*(v8 + 56) + 32 * v9, v23);
    sub_10004CDB8(v22);

    if (swift_dynamicCast())
    {
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v11 = swift_allocObject();
      v11[2] = v2;
      v11[3] = 0xD000000000000010;
      v11[4] = 0x800000010058C550;
      v11[5] = a1;

      v12 = v2;
      v13 = a1;
      sub_1000E8790();

      return;
    }
  }

  else
  {

    sub_10004CDB8(v22);
  }

  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4CD8);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = [v15 notification];
    v21 = [v20 request];

    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMAppDelegate: Invalid beacon identifier provided in request: %@", v18, 0xCu);
    sub_100012DF0(v19, &unk_1006AF760);
  }
}

uint64_t sub_100367E68(void *a1, void *a2, void (**a3)(void))
{
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v362 = &v348 - v7;
  v361 = type metadata accessor for FMFFriend();
  v360 = *(v361 - 8);
  v8 = __chkstk_darwin(v361);
  v358 = &v348 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = v9;
  __chkstk_darwin(v8);
  v359 = &v348 - v10;
  v11 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v11 - 8);
  v363 = &v348 - v12;
  v366 = type metadata accessor for FMFSatelliteLocationNotificationEvent();
  v365 = *(v366 - 8);
  __chkstk_darwin(v366);
  v364 = &v348 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v374 = *(v14 - 8);
  v375 = v14;
  __chkstk_darwin(v14);
  v372 = &v348 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for DispatchQoS();
  v371 = *(v373 - 8);
  __chkstk_darwin(v373);
  v370 = &v348 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for FMSelectedSection();
  v17 = __chkstk_darwin(v367);
  v369 = &v348 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v368 = &v348 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v376 = a3;
  _Block_copy(a3);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100005B14(v21, qword_1006D4630);
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v378 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v379 = a1;
    aBlock = v28;
    *v27 = 136446466;
    v388[0] = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920);
    v29 = String.init<A>(describing:)();
    v31 = sub_100005B4C(v29, v30, &aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_100005B4C(0xD00000000000003BLL, 0x8000000100592C40, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    a1 = v379;
  }

  v32 = [a1 notification];
  v33 = [v32 request];

  v34 = [v33 content];
  v35 = [v34 userInfo];

  v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = a1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v379 = v20;
  v377 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v41 = 136315138;
    v43 = [v37 notification];
    v44 = [v43 request];

    v45 = [v44 content];
    v46 = [v45 categoryIdentifier];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = v47;
    v51 = v36;
    v52 = sub_100005B4C(v50, v49, &aBlock);

    *(v41 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "FMAppDelegate: didReceive usernotification category: %s", v41, 0xCu);
    sub_100006060(v42);
  }

  else
  {

    v51 = v36;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    v57 = Dictionary.description.getter();
    v59 = sub_100005B4C(v57, v58, &aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "FMAppDelegate: didReceive usernotification userInfos: %s", v55, 0xCu);
    sub_100006060(v56);
  }

  v60 = v379;
  v61 = v377;
  v62 = [v377 notification];
  v63 = [v62 request];

  v64 = [v63 content];
  v65 = [v64 categoryIdentifier];

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  if (v66 == 0xD000000000000012 && 0x80000001005929E0 == v68)
  {

LABEL_14:
    sub_1003581E8(v51);
LABEL_15:

    v376[2]();
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
    goto LABEL_14;
  }

  v71 = v51;
  v356 = v22;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v72 = off_1006BE550;
  v73 = *(off_1006BE550 + 2);
  v74 = swift_allocObject();
  v75 = v378;
  v74[2] = v61;
  v74[3] = v75;
  v74[4] = v71;
  v74[5] = sub_10036ABEC;
  v74[6] = v60;
  v76 = sub_10000905C(0, &qword_1006AEDC0);
  v77 = v75;
  v78 = v61;

  v79 = v73;

  v378 = v76;
  v80 = static OS_dispatch_queue.main.getter();
  sub_100421C3C(sub_10036ABF4, v74, v80);

  v81 = [v78 notification];
  v82 = [v81 request];

  v83 = [v82 content];
  v84 = [v83 categoryIdentifier];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  if (v85 == 0xD000000000000024 && 0x800000010057C330 == v87)
  {

LABEL_23:

    v89 = v72[2];
    v89[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v90 = v89;
    sub_10041E45C();

    v91 = [v78 notification];
    v92 = [v91 request];

    v93 = [v92 identifier];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v97 = [v78 actionIdentifier];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    sub_100359168(v94, v96, v98, v100);

    goto LABEL_15;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
    goto LABEL_23;
  }

  v101 = [v78 notification];
  v102 = [v101 request];

  v103 = [v102 content];
  v104 = [v103 categoryIdentifier];

  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;

  if (v105 == 0xD000000000000030 && 0x8000000100592A00 == v107)
  {

LABEL_28:
    sub_100359450(v71);
    goto LABEL_15;
  }

  v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v108)
  {
    goto LABEL_28;
  }

  v109 = [v78 notification];
  v110 = [v109 request];

  v111 = [v110 content];
  v112 = [v111 categoryIdentifier];

  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v114;

  if (v113 == 0xD00000000000001BLL && 0x8000000100592A40 == v115)
  {

LABEL_33:
    sub_1003599E4(v71);
    goto LABEL_15;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v116)
  {
    goto LABEL_33;
  }

  v117 = [v78 notification];
  v118 = [v117 request];

  v119 = [v118 content];
  v120 = [v119 categoryIdentifier];

  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v122;

  if (v121 == 0xD000000000000025 && 0x8000000100592A60 == v123)
  {

LABEL_38:
    sub_10035A364(v71);
    goto LABEL_15;
  }

  v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v124)
  {
    goto LABEL_38;
  }

  v125 = [v78 notification];
  v126 = [v125 request];

  v127 = [v126 content];
  v128 = [v127 categoryIdentifier];

  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v130;

  if (v129 == 0xD000000000000018 && 0x8000000100592A90 == v131)
  {

LABEL_43:
    sub_10035B140(v71);
    goto LABEL_15;
  }

  v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v132)
  {
    goto LABEL_43;
  }

  v354 = v72;
  v377 = v71;
  v133 = [v78 notification];
  v134 = [v133 request];

  v135 = [v134 content];
  v136 = [v135 categoryIdentifier];

  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = v138;

  v140 = 0xD000000000000010;
  v352 = 0xD000000000000010;
  if (v137 == 0xD000000000000010 && 0x800000010057C570 == v139)
  {

    v141 = v77;
LABEL_48:
    v143 = [v78 actionIdentifier];
    v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v145;

    v147 = [v78 notification];
    v148 = [v147 request];

    v149 = [v148 content];
    v150 = [v149 body];

    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;

    sub_1003664A8(v377, v144, v146, v151, v153);

    v140 = v352;

    goto LABEL_49;
  }

  v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v141 = v77;
  if (v142)
  {
    goto LABEL_48;
  }

LABEL_49:
  v154 = [v78 notification];
  v155 = [v154 request];

  v156 = [v155 content];
  v157 = [v156 categoryIdentifier];

  v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v160 = v159;

  if (v158 == v140 && 0x800000010057C590 == v160)
  {

    v161 = &selRef_initWithScrollView_edge_;
LABEL_53:
    v163 = [v78 actionIdentifier];
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v166 = v165;

    v167 = [v78 notification];
    v168 = [v167 v161[415]];

    v169 = [v168 content];
    sub_100366B88(v377, v164, v166);

    goto LABEL_54;
  }

  v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v161 = &selRef_initWithScrollView_edge_;
  if (v162)
  {
    goto LABEL_53;
  }

LABEL_54:
  v170 = [v78 notification];
  v171 = [v170 v161[415]];

  v172 = [v171 content];
  v173 = [v172 categoryIdentifier];

  v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v176 = v175;

  if (v174 == 0xD00000000000003ELL && 0x800000010057C5B0 == v176)
  {
    v177 = v377;
    v178 = v354;
  }

  else
  {
    v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v177 = v377;
    v178 = v354;
    if (v179)
    {
      goto LABEL_59;
    }

    v202 = [v78 notification];
    v203 = [v202 request];

    v204 = [v203 content];
    v205 = [v204 categoryIdentifier];

    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v208 = v207;

    if (v206 != 0xD00000000000003FLL || 0x800000010057C5F0 != v208)
    {
      v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v209 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

LABEL_59:
  v180 = v178[7];
  v181 = v368;
  swift_storeEnumTagMultiPayload();
  v182 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v183 = v369;
  sub_100062074(v180 + v182, v369);
  swift_beginAccess();

  sub_100058530(v181, v180 + v182);
  swift_endAccess();
  sub_100058594(v183);

  sub_10005D4E4(v183);
  sub_10005D4E4(v181);
LABEL_60:
  v184 = [v78 notification];
  v185 = [v184 request];

  v186 = [v185 content];
  v187 = [v186 categoryIdentifier];

  v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v190 = v189;

  if (v188 == 0xD00000000000003FLL && 0x8000000100592AB0 == v190)
  {
  }

  else
  {
    v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v191 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  sub_100367088(v78);
LABEL_65:
  v355 = v78;
  My = type metadata accessor for Feature.FindMy();
  v383 = My;
  v350 = sub_10036AE08(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v384 = v350;
  v193 = sub_100008FC0(&aBlock);
  v194 = *(*(My - 8) + 104);
  v351 = My;
  v349 = v194;
  v194(v193, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v353 = v141;
  if (My)
  {
    v195 = [v355 notification];
    v196 = [v195 request];

    v197 = [v196 content];
    v198 = [v197 categoryIdentifier];

    v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v201 = v200;

    if (v199 == 0xD000000000000033 && 0x8000000100592AF0 == v201)
    {
    }

    else
    {
      v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v210 & 1) == 0)
      {
LABEL_75:
        v211 = [v355 notification];
        v212 = [v211 request];

        v213 = [v212 content];
        v214 = [v213 categoryIdentifier];

        v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v217 = v216;

        if (v215 != 0xD000000000000038 || 0x8000000100592B30 != v217)
        {
          v218 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v218)
          {
LABEL_82:
            sub_100367B10(v355);
            goto LABEL_83;
          }

          v219 = [v355 notification];
          v220 = [v219 request];

          v221 = [v220 content];
          v222 = [v221 categoryIdentifier];

          v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v225 = v224;

          if (v223 != 0xD000000000000032 || 0x8000000100592B70 != v225)
          {
            v317 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v177 = v377;
            v178 = v354;
            if (v317)
            {
              goto LABEL_82;
            }

            v318 = [v355 notification];
            v319 = [v318 request];

            v320 = [v319 content];
            v321 = [v320 categoryIdentifier];

            v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v324 = v323;

            if (v322 != 0xD00000000000003FLL || 0x8000000100592BB0 != v324)
            {
              v325 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v177 = v377;
              v178 = v354;
              if (v325)
              {
                goto LABEL_82;
              }

              v326 = [v355 notification];
              v327 = [v326 request];

              v328 = [v327 content];
              v329 = [v328 categoryIdentifier];

              v330 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v332 = v331;

              if (v330 != 0xD000000000000040 || 0x8000000100592BF0 != v332)
              {
                v333 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v177 = v377;
                v178 = v354;
                if ((v333 & 1) == 0)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }
            }
          }

          v177 = v377;
          v178 = v354;
        }

        goto LABEL_82;
      }
    }

    sub_1003675BC(v355);
    goto LABEL_75;
  }

LABEL_83:
  v226 = [v355 notification];
  v227 = [v226 request];

  v228 = [v227 content];
  v229 = [v228 categoryIdentifier];

  v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v232 = v231;

  if (v230 == 0xD00000000000002DLL && 0x800000010057C660 == v232)
  {
  }

  else
  {
    v233 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v233 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  v386 = v352;
  v387 = 0x800000010058CDF0;
  AnyHashable.init<A>(_:)();
  if (v177[2] && (v234 = sub_10004CC50(&aBlock), (v235 & 1) != 0))
  {
    sub_100006004(v177[7] + 32 * v234, v388);
    sub_10004CDB8(&aBlock);
    if (swift_dynamicCast())
    {
      v236 = v386;
      v237 = v387;

      v238 = v362;
      sub_1000BD300(v236, v237, v362);

      if ((*(v360 + 48))(v238, 1, v361) != 1)
      {
        v334 = v360;
        v335 = *(v360 + 32);
        v336 = v359;
        v337 = v361;
        v335(v359, v362, v361);
        v362 = static OS_dispatch_queue.main.getter();
        v338 = v358;
        (*(v334 + 16))(v358, v336, v337);
        v339 = (*(v334 + 80) + 24) & ~*(v334 + 80);
        v340 = swift_allocObject();
        v341 = v353;
        *(v340 + 16) = v353;
        v335((v340 + v339), v338, v337);
        v384 = sub_10036AC5C;
        v385 = v340;
        aBlock = _NSConcreteStackBlock;
        v381 = 1107296256;
        v382 = sub_100004AE4;
        v383 = &unk_100638648;
        v342 = _Block_copy(&aBlock);
        v343 = v341;

        v344 = v370;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v345 = v372;
        v346 = v375;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v347 = v362;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v342);

        (*(v374 + 8))(v345, v346);
        (*(v371 + 8))(v344, v373);
        (*(v334 + 8))(v359, v337);
        goto LABEL_94;
      }

      sub_100012DF0(v362, &qword_1006B0050);
    }
  }

  else
  {
    sub_10004CDB8(&aBlock);
  }

  v239 = v353;
  v240 = static OS_dispatch_queue.main.getter();
  v241 = swift_allocObject();
  *(v241 + 16) = v239;
  v384 = sub_10036AC54;
  v385 = v241;
  aBlock = _NSConcreteStackBlock;
  v381 = 1107296256;
  v382 = sub_100004AE4;
  v383 = &unk_1006385F8;
  v242 = _Block_copy(&aBlock);
  v243 = v239;

  v244 = v370;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v245 = v372;
  v246 = v375;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v242);

  (*(v374 + 8))(v245, v246);
  (*(v371 + 8))(v244, v373);
LABEL_94:
  v177 = v377;
  v178 = v354;
LABEL_95:
  v247 = v351;
  v383 = v351;
  v384 = v350;
  v248 = sub_100008FC0(&aBlock);
  v349(v248, enum case for Feature.FindMy.fmNiftyCurve(_:), v247);
  LOBYTE(v247) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  if (v247)
  {
    v249 = [v355 notification];
    v250 = [v249 request];

    v251 = [v250 content];
    v252 = [v251 categoryIdentifier];

    v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v255 = v254;

    if (v253 == 0xD00000000000002FLL && 0x800000010057C630 == v255)
    {

LABEL_100:

      v257 = v364;
      FMFSatelliteLocationNotificationEvent.init(notificationPresentedToUser:notificationTapped:)();

      FMIPManager.enqueue(satelliteLocationNotificationEvent:)();

      v258 = Logger.logObject.getter();
      v259 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v258, v259))
      {
        v260 = swift_slowAlloc();
        *v260 = 0;
        _os_log_impl(&_mh_execute_header, v258, v259, "FMAppDelegate: Stewie got update location notification", v260, 2u);
      }

      v261 = v178[7];
      v262 = type metadata accessor for FMSelectionPendingAction(0);
      v263 = v363;
      swift_storeEnumTagMultiPayload();
      (*(*(v262 - 8) + 56))(v263, 0, 1, v262);
      v264 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      sub_1000BBF40(v263, v261 + v264, &unk_1006B8DD0);
      swift_endAccess();

      v265 = v178[7];
      v266 = v368;
      swift_storeEnumTagMultiPayload();
      v267 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v268 = v369;
      sub_100062074(v265 + v267, v369);
      swift_beginAccess();

      sub_100058530(v266, v265 + v267);
      swift_endAccess();
      sub_100058594(v268);

      sub_10005D4E4(v268);
      sub_10005D4E4(v266);
      v376[2]();
      (*(v365 + 8))(v257, v366);
    }

    v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v256)
    {
      goto LABEL_100;
    }
  }

  v386 = 7565409;
  v387 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!v177[2] || (v269 = sub_10004CC50(&aBlock), (v270 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_108;
  }

  sub_100006004(v177[7] + 32 * v269, v388);
  sub_10004CDB8(&aBlock);
  sub_10007EBC0(&qword_1006BC918);
  if (!swift_dynamicCast())
  {
LABEL_108:
    v271 = sub_1001546A4(_swiftEmptyArrayStorage);
    goto LABEL_109;
  }

  v271 = v386;
LABEL_109:
  v386 = 0x7472656C61;
  v387 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v271 + 16) || (v272 = sub_10004CC50(&aBlock), (v273 & 1) == 0))
  {
    sub_10004CDB8(&aBlock);
    goto LABEL_114;
  }

  sub_100006004(*(v271 + 56) + 32 * v272, v388);
  sub_10004CDB8(&aBlock);
  sub_10007EBC0(&qword_1006BC910);
  if (!swift_dynamicCast())
  {
LABEL_114:
    v274 = sub_1000070D4(_swiftEmptyArrayStorage);
    goto LABEL_115;
  }

  v274 = v386;
LABEL_115:
  if (*(v274 + 16) && (v275 = sub_10000726C(0x736772612D636F6CLL, 0xE800000000000000), (v276 & 1) != 0))
  {
    sub_100006004(*(v274 + 56) + 32 * v275, &aBlock);

    sub_10007EBC0(&qword_1006C0C10);
    if (swift_dynamicCast())
    {
      v277 = v388[0];
      goto LABEL_121;
    }
  }

  else
  {
  }

  v277 = _swiftEmptyArrayStorage;
LABEL_121:
  v278 = v377;
  v279 = v354;
  strcpy(v388, "friendServerId");
  HIBYTE(v388[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (v278[2] && (v280 = sub_10004CC50(&aBlock), (v281 & 1) != 0))
  {
    sub_100006004(v278[7] + 32 * v280, v388);
    sub_10004CDB8(&aBlock);
    v282 = swift_dynamicCast();
    v283 = v386;
    if (!v282)
    {
      v283 = 0;
    }

    v376 = v283;
    if (v282)
    {
      v284 = v387;
    }

    else
    {
      v284 = 0;
    }

    v369 = v284;
  }

  else
  {
    sub_10004CDB8(&aBlock);
    v376 = 0;
    v369 = 0;
  }

  if (v277[2] < 3uLL)
  {
    v368 = 0;
    v286 = 0;
  }

  else
  {
    v285 = v277[9];
    v368 = v277[8];
    v286 = v285;
  }

  strcpy(v388, "friendid");
  BYTE1(v388[1]) = 0;
  WORD1(v388[1]) = 0;
  HIDWORD(v388[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  if (*(v271 + 16) && (v287 = sub_10004CC50(&aBlock), (v288 & 1) != 0))
  {
    sub_100006004(*(v271 + 56) + 32 * v287, v388);
    sub_10004CDB8(&aBlock);
    v289 = swift_dynamicCast();
    v290 = v386;
    if (!v289)
    {
      v290 = 0;
    }

    v367 = v290;
    if (v289)
    {
      v291 = v387;
    }

    else
    {
      v291 = 0;
    }
  }

  else
  {
    sub_10004CDB8(&aBlock);
    v367 = 0;
    v291 = 0;
  }

  v388[0] = 0x6552646E65697266;
  v388[1] = 0xEF64497473657571;
  AnyHashable.init<A>(_:)();
  if (*(v271 + 16) && (v292 = sub_10004CC50(&aBlock), (v293 & 1) != 0))
  {
    sub_100006004(*(v271 + 56) + 32 * v292, v388);
    sub_10004CDB8(&aBlock);

    v294 = swift_dynamicCast();
    if (v294)
    {
      v295 = v386;
    }

    else
    {
      v295 = 0;
    }

    if (v294)
    {
      v296 = v387;
    }

    else
    {
      v296 = 0;
    }
  }

  else
  {

    sub_10004CDB8(&aBlock);
    v295 = 0;
    v296 = 0;
  }

  v388[0] = 0x6E6F697461636F6CLL;
  v388[1] = 0xEF64497472656C41;
  AnyHashable.init<A>(_:)();
  v297 = v377;
  if (*(v377 + 2) && (v298 = sub_10004CC50(&aBlock), (v299 & 1) != 0))
  {
    sub_100006004(v297[7] + 32 * v298, v388);
    sub_10004CDB8(&aBlock);
    v300 = swift_dynamicCast();
    if (v300)
    {
      v301 = v386;
    }

    else
    {
      v301 = 0;
    }

    if (v300)
    {
      v302 = v387;
    }

    else
    {
      v302 = 0;
    }
  }

  else
  {
    sub_10004CDB8(&aBlock);
    v301 = 0;
    v302 = 0;
  }

  v303 = *(v279[6] + 16);
  v304 = static OS_dispatch_queue.main.getter();
  v305 = swift_allocObject();
  v306 = v355;
  v307 = v368;
  v305[2] = v355;
  v305[3] = v307;
  v308 = v367;
  v305[4] = v286;
  v305[5] = v308;
  v309 = v376;
  v305[6] = v291;
  v305[7] = v309;
  v305[8] = v369;
  v305[9] = v295;
  v305[10] = v296;
  v305[11] = v301;
  v310 = v353;
  v305[12] = v302;
  v305[13] = v310;
  v305[14] = v377;
  v305[15] = sub_10036ABEC;
  v305[16] = v379;
  v384 = sub_10036AC0C;
  v385 = v305;
  aBlock = _NSConcreteStackBlock;
  v381 = 1107296256;
  v382 = sub_100004AE4;
  v383 = &unk_1006385A8;
  v311 = _Block_copy(&aBlock);
  v312 = v310;
  v313 = v306;

  v314 = v370;
  static DispatchQoS.unspecified.getter();
  v388[0] = _swiftEmptyArrayStorage;
  sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v315 = v372;
  v316 = v375;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v311);

  (*(v374 + 8))(v315, v316);
  (*(v371 + 8))(v314, v373);
}

uint64_t sub_10036ACB0()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100363090(v2, v3, v4, v5);
}

void sub_10036AD18()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1003634E8(v2, v3);
}

uint64_t sub_10036AD7C()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100363BF8(v2);
}

uint64_t sub_10036AE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036AE50(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10036AEF4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100364148(a1, v1 + v4, v5);
}

void sub_10036AFB8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100364970(a1, v1 + v4, v6, v7);
}

uint64_t sub_10036B060()
{
  v1 = type metadata accessor for FMIPBeaconShare();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10036B1B8()
{
  v1 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPItem() - 8);
  return sub_100365520(*(v0 + 16), v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

void sub_10036B330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v157 = a4;
  v156 = a3;
  v153 = a2;
  v163 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v163);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v138 - v8;
  v10 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v10 - 8);
  v155 = &v138 - v11;
  v12 = type metadata accessor for URL();
  v162 = *(v12 - 8);
  __chkstk_darwin(v12);
  v154 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v14 - 8);
  v150 = &v138 - v15;
  v147 = type metadata accessor for FMIPLocationType();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for FMIPLocation();
  v149 = *(v152 - 8);
  v17 = __chkstk_darwin(v152);
  v148 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v151 = &v138 - v19;
  v20 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v20 - 8);
  v164 = &v138 - v21;
  v22 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v22 - 8);
  v166 = &v138 - v23;
  v24 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v24 - 8);
  v167 = &v138 - v25;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v158 = v12;
  v26 = type metadata accessor for Logger();
  v27 = sub_100005B14(v26, qword_1006D4630);

  v165 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v30 + 4) = v32;
    v31->super.isa = v32.super.isa;
    _os_log_impl(&_mh_execute_header, v28, v29, "Processing tag separation notification with userInfos: %@", v30, 0xCu);
    sub_100012DF0(v31, &unk_1006AF760);
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v33 = off_1006BE550;
  v34 = *(off_1006BE550 + 7);
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v167;
  v161 = v35;
  v160 = v37;
  v159 = v36 + 56;
  (v37)(v167, 1, 1);
  v39 = v34 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v40 = type metadata accessor for FMPendingActionInfo(0);
  v41 = v40[7];

  sub_1000BBF40(v38, v39 + v41, &unk_1006B0000);
  swift_endAccess();

  v42 = v33[7];
  v43 = type metadata accessor for UUID();
  v44 = v166;
  (*(*(v43 - 8) + 56))(v166, 1, 1, v43);
  v45 = v42 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v46 = v40[6];

  sub_1000BBF40(v44, v45 + v46, &unk_1006B20C0);
  swift_endAccess();

  v47 = v33[7];
  v48 = type metadata accessor for FMIPSeparationLocation();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v51 = v164;
  v144 = v48;
  v143 = v50;
  v142 = v49 + 56;
  (v50)(v164, 1, 1);
  v52 = v47 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v53 = v40[5];

  v54 = v52 + v53;
  v55 = v33;
  sub_1000BBF40(v51, v54, &qword_1006BC990);
  swift_endAccess();

  v56 = v40;
  v57 = v33[7] + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  *(v57 + v40[8]) = 0;

  v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v169 = v58;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v59 = sub_10004CC50(&v170), (v60 & 1) != 0))
  {
    sub_100006004(*(a1 + 56) + 32 * v59, v174);
    sub_10004CDB8(&v170);
    v61 = sub_10007EBC0(&qword_1006C0C10);
    if (swift_dynamicCast())
    {
      v163 = v55;
      v62 = v168;
      v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v63;
      AnyHashable.init<A>(_:)();
      v64 = *(a1 + 16);
      v141 = v61;
      if (v64 && (v65 = sub_10004CC50(&v170), (v66 & 1) != 0))
      {
        sub_100006004(*(a1 + 56) + 32 * v65, v174);
        sub_10004CDB8(&v170);
        v67 = swift_dynamicCast();
        v68 = v158;
        v69 = v162;
        if (v67)
        {
          v71 = v168;
          v70 = v169;

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v140 = v62;
            v76 = v75;
            v170 = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_100005B4C(v71, v70, &v170);
            _os_log_impl(&_mh_execute_header, v72, v73, "FMAppDelegate: Pending Safe Location Identifier %s", v74, 0xCu);
            sub_100006060(v76);
            v62 = v140;
          }

          v77 = v163;
          v78 = *(v163 + 56);

          v79 = v166;
          UUID.init(uuidString:)();

          v80 = v78 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
          swift_beginAccess();
          sub_1000BBF40(v79, v80 + v40[6], &unk_1006B20C0);
          swift_endAccess();

          v81 = *(v77 + 56);

          v82 = [v153 date];
          v83 = v167;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v160(v83, 0, 1, v161);
          v84 = v81 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
          swift_beginAccess();
          v85 = v84 + v40[7];
          v86 = v83;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10004CDB8(&v170);
        v68 = v158;
        v69 = v162;
      }

      v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v92;
      AnyHashable.init<A>(_:)();
      if (*(a1 + 16) && (v93 = sub_10004CC50(&v170), (v94 & 1) != 0))
      {
        sub_100006004(*(a1 + 56) + 32 * v93, v174);
        sub_10004CDB8(&v170);
        if (swift_dynamicCast())
        {
          v140 = v62;
          v96 = v168;
          v95 = v169;
          sub_10000905C(0, &qword_1006BC998);
          sub_10000905C(0, &qword_1006BBCB0);
          v97 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
          if (v97)
          {
            v124 = v163;
            v125 = *(v163 + 56);
            v126 = v97;

            v127 = [v153 date];
            v128 = v167;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v160(v128, 0, 1, v161);
            v139 = v56;
            v129 = v125 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
            swift_beginAccess();
            sub_1000BBF40(v128, v129 + v56[7], &unk_1006B0000);
            swift_endAccess();

            (*(v146 + 104))(v145, enum case for FMIPLocationType.separationLocation(_:), v147);
            v130 = v126;
            v69 = v162;
            v166 = v130;
            v131 = v151;
            FMIPLocation.init(location:type:)();
            v132 = *(v124 + 56);
            v133 = v149;
            (*(v149 + 16))(v148, v131, v152);
            v134 = type metadata accessor for FMIPAddress();
            (*(*(v134 - 8) + 56))(v150, 1, 1, v134);

            v135 = [v153 date];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v160(v128, 0, 1, v161);
            v136 = v164;
            FMIPSeparationLocation.init(location:address:timestamp:)();
            sub_10000A858(v96, v95);

            (*(v133 + 8))(v151, v152);
            v143(v136, 0, 1, v144);
            v137 = v132 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
            swift_beginAccess();
            sub_1000BBF40(v136, v137 + v139[5], &qword_1006BC990);
            swift_endAccess();
            v62 = v140;
LABEL_29:
            v102 = 0xEC0000006E6F6974;
            v103 = 0x61636F4C65666173;

            if ((v156 != 0xD000000000000011 || 0x8000000100592DE0 != v157) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v103 = 0x6974617261706573;
              v102 = 0xEA00000000006E6FLL;
            }

            if (v62[2] < 2uLL)
            {
              v104 = 0;
            }

            else
            {

              v104 = v62;
            }

            v170 = 0;
            v171 = 0xE000000000000000;
            _StringGuts.grow(_:)(32);

            v170 = 0xD000000000000018;
            v171 = 0x8000000100592CA0;
            if (!v62[2])
            {
              __break(1u);
              return;
            }

            v105 = v62[4];
            v106 = v62[5];

            v107._countAndFlagsBits = v105;
            v107._object = v106;
            String.append(_:)(v107);

            v108._countAndFlagsBits = 1030778662;
            v108._object = 0xE400000000000000;
            String.append(_:)(v108);
            v109._countAndFlagsBits = v103;
            v109._object = v102;
            String.append(_:)(v109);

            v110 = v155;
            URL.init(string:)();

            if ((*(v69 + 48))(v110, 1, v68) == 1)
            {

              sub_100012DF0(v110, &unk_1006B0120);
              v111 = Logger.logObject.getter();
              v112 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                *v113 = 0;
                _os_log_impl(&_mh_execute_header, v111, v112, "FMAppDelegate: Invalid URL for Separation Notification", v113, 2u);
              }

              return;
            }

            (*(v69 + 32))(v154, v110, v68);

            v114 = Logger.logObject.getter();
            v115 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v170 = v117;
              *v116 = 136315138;
              v118 = Array.description.getter();
              v120 = v119;

              v121 = sub_100005B4C(v118, v120, &v170);

              *(v116 + 4) = v121;
              _os_log_impl(&_mh_execute_header, v114, v115, "FMAppDelegate: Handle Separation Notification %s", v116, 0xCu);
              sub_100006060(v117);

              if (v104)
              {
LABEL_43:
                v122 = v141;
LABEL_46:
                v170 = v104;
                v173 = v122;
                v123 = v154;
                sub_100111350(v154, &v170);
                (*(v69 + 8))(v123, v68);
                sub_100012DF0(&v170, &unk_1006B8740);
                return;
              }
            }

            else
            {

              if (v104)
              {
                goto LABEL_43;
              }
            }

            v122 = 0;
            v171 = 0;
            v172 = 0;
            goto LABEL_46;
          }

          sub_10000A858(v96, v95);
          v62 = v140;
        }
      }

      else
      {
        sub_10004CDB8(&v170);
      }

      v98 = *(v163 + 56);
      v99 = v167;
      v160(v167, 1, 1, v161);
      v100 = v98 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
      swift_beginAccess();
      v101 = v56[7];

      v85 = v100 + v101;
      v86 = v99;
LABEL_28:
      sub_1000BBF40(v86, v85, &unk_1006B0000);
      swift_endAccess();
      goto LABEL_29;
    }
  }

  else
  {
    sub_10004CDB8(&v170);
  }

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "FMAppDelegate: No beacon identifier falling back to items", v89, 2u);
  }

  v90 = v55[7];
  swift_storeEnumTagMultiPayload();
  v91 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v90 + v91, v7);
  swift_beginAccess();

  sub_100058530(v9, v90 + v91);
  swift_endAccess();
  sub_100058594(v7);

  sub_10005D4E4(v7);
  sub_10005D4E4(v9);
}

uint64_t sub_10036C79C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a1;
  v44 = a2;
  v7 = sub_10007EBC0(&unk_1006BC950);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_10007EBC0(&unk_1006B0010);
  __chkstk_darwin(v10 - 8);
  v49 = &v41 - v11;
  v12 = sub_10007EBC0(&unk_1006BC960);
  __chkstk_darwin(v12 - 8);
  v48 = &v41 - v13;
  v14 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v14 - 8);
  v47 = &v41 - v15;
  v16 = type metadata accessor for FMFLocationAlert();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v41 - v20;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v45 = *(v17 + 16);
  v45(v21, v51, v16);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = a5;
    v26 = v25;
    v42 = swift_slowAlloc();
    v52 = v42;
    *v26 = 136315394;
    v27 = FMFLocationAlert.debugDescription.getter();
    v41 = a3;
    v28 = v9;
    v30 = v29;
    (*(v17 + 8))(v21, v16);
    v31 = sub_100005B4C(v27, v30, &v52);
    v9 = v28;

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_100005B4C(v44, v41, &v52);
    _os_log_impl(&_mh_execute_header, v23, v24, "FMAppDelegate: Accept Geofence action for locationAlert: %s id: %s", v26, 0x16u);
    swift_arrayDestroy();

    a5 = v43;
  }

  else
  {

    (*(v17 + 8))(v21, v16);
  }

  v45(v46, v51, v16);
  v32 = type metadata accessor for FMFAddress();
  (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
  v33 = type metadata accessor for FMFLocationAlertTriggerType();
  (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
  v34 = type metadata accessor for FMFSchedule();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v35 = enum case for FMFLocationAlertAcceptanceStatus.accepted(_:);
  v36 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v9, v35, v36);
  (*(v37 + 56))(v9, 0, 1, v36);
  type metadata accessor for FMFUpdateLocationAlertAction();
  swift_allocObject();
  v38 = FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v50;
  *(v39 + 24) = a5;

  sub_1000FB600(v38, sub_10036E0EC, v39);
}

uint64_t sub_10036CE04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v33 = a4;
  v30 = a2;
  v7 = type metadata accessor for FMFLocationAlert();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v31 = *(v8 + 16);
  v31(v13, a1, v7);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v11;
    v18 = v17;
    v27 = swift_slowAlloc();
    v34 = v27;
    *v18 = 136315394;
    v19 = FMFLocationAlert.debugDescription.getter();
    v28 = a1;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_100005B4C(v19, v21, &v34);
    a1 = v28;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100005B4C(v30, a3, &v34);
    _os_log_impl(&_mh_execute_header, v15, v16, "FMAppDelegate: Decline Geofence action for locationAlert: %s id: %s", v18, 0x16u);
    swift_arrayDestroy();

    v11 = v29;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v31(v11, a1, v7);
  type metadata accessor for FMFRemoveLocationAlertAction();
  swift_allocObject();
  v23 = FMFRemoveLocationAlertAction.init(locationAlert:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;

  sub_1000FB600(v23, sub_10036E118, v24);
}

uint64_t sub_10036D19C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006B0120);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  v15 = String._bridgeToObjectiveC()();
  v42 = MGGetBoolAnswer();

  v16 = MAGetActivationState();
  strcpy(v45, "friendHandle");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v17 = sub_10004CC50(aBlock), (v18 & 1) != 0))
  {
    sub_100006004(*(a1 + 56) + 32 * v17, v46);
    sub_10004CDB8(aBlock);
    if (swift_dynamicCast())
    {
      v39 = v16;
      v20 = v45[0];
      v19 = v45[1];
      type metadata accessor for FMFContactsDataController();
      swift_allocObject();
      v21 = FMFContactsDataController.init(isSnapshotMode:)();
      v38[0] = v20;
      v38[1] = v19;
      v40 = v21;
      v22 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();
      v41 = v22;
      if (v22)
      {
        v23 = [v22 phoneNumbers];
        sub_10007EBC0(&unk_1006BC970);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_7;
          }
        }

        else
        {
          result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_7:
            if ((v24 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v26 = *(v24 + 32);
            }

            v27 = v26;

            v28 = [v27 value];

            v29 = [v28 stringValue];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

LABEL_17:
            if ((v42 & v39) == 1)
            {
              if (v31)
              {

                URLComponents.scheme.setter();
LABEL_22:
                URLComponents.host.setter();
                URLComponents.url.getter();
                sub_100007204(v10, v8, &unk_1006B0120);
                if ((*(v43 + 48))(v8, 1, v2) == 1)
                {

                  sub_100012DF0(v10, &unk_1006B0120);
                  (*(v12 + 8))(v14, v11);
                  return sub_100012DF0(v8, &unk_1006B0120);
                }

                v32 = v43;
                (*(v43 + 32))(v4, v8, v2);
                v33 = [objc_opt_self() sharedApplication];
                URL._bridgeToObjectiveC()(v34);
                v36 = v35;
                aBlock[4] = sub_100363F9C;
                aBlock[5] = 0;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_10037A044;
                aBlock[3] = &unk_100638DA0;
                v37 = _Block_copy(aBlock);
                [v33 openURL:v36 withCompletionHandler:v37];

                _Block_release(v37);

                (*(v32 + 8))(v4, v2);
                sub_100012DF0(v10, &unk_1006B0120);
                return (*(v12 + 8))(v14, v11);
              }
            }

            else
            {
            }

            URLComponents.scheme.setter();
            goto LABEL_22;
          }
        }
      }

      v31 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10004CDB8(aBlock);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10036D7D0(uint64_t a1)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v30 = type metadata accessor for URLQueryItem();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B0570);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  URLComponents.init(string:)();
  strcpy(v32, "friendHandle");
  HIBYTE(v32[6]) = 0;
  v32[7] = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v14 = sub_10004CC50(aBlock), (v15 & 1) != 0))
  {
    sub_100006004(*(a1 + 56) + 32 * v14, v32);
    sub_10004CDB8(aBlock);
    swift_dynamicCast();
  }

  else
  {
    sub_10004CDB8(aBlock);
  }

  URLQueryItem.init(name:value:)();

  v16 = *(v3 + 48);
  if (!v16(v13, 1, v2))
  {
    sub_10007EBC0(&unk_1006BC980);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100552220;
    (*(v8 + 16))(v18 + v17, v10, v30);
    URLComponents.queryItems.setter();
  }

  v19 = [objc_opt_self() sharedApplication];
  if (v16(v13, 1, v2))
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = 0;
  }

  else
  {
    v22 = v29;
    (*(v3 + 16))(v29, v13, v2);
    URLComponents.url.getter();
    (*(v3 + 8))(v22, v2);
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    v21 = 0;
    if ((*(v24 + 48))(v7, 1, v23) != 1)
    {
      URL._bridgeToObjectiveC()(v25);
      v21 = v26;
      (*(v24 + 8))(v7, v23);
    }
  }

  aBlock[4] = sub_100363FB0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10037A044;
  aBlock[3] = &unk_100638DC8;
  v27 = _Block_copy(aBlock);
  [v19 openURL:v21 withCompletionHandler:v27];
  _Block_release(v27);

  (*(v8 + 8))(v10, v30);
  return sub_100012DF0(v13, &qword_1006B0570);
}

uint64_t sub_10036DD50(void (*a1)(void))
{

  a1(*(v1 + 48));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10036DDB4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10036DEA8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10036DEF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10036DF40(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100360AF8(a1, a2, v6);
}

uint64_t sub_10036E020(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

unint64_t sub_10036E204(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  Substring.init<A>(_:)();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Substring.init<A>(_:)();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1004851A4(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = String.UTF8View._foreignDistance(from:to:)();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1004851A4(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1004851A4(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = String.UTF8View._foreignCount()();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        String.reserveCapacity(_:)(result);
LABEL_23:
        String.subscript.getter();
        sub_1000C52F8();
        String.append<A>(contentsOf:)();

        String.append<A>(contentsOf:)();
        sub_10036F184(a2, a5, a6);
        String.append<A>(contentsOf:)();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_10036E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField] = 0;
  v6 = &v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_characterLimit];
  *v6 = 0;
  v6[8] = 1;
  *&v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FMLabelTableViewCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

void sub_10036E6F8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField;
  v11 = *&v0[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField];
  if (v0[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled] == 1)
  {
    if (!v11)
    {
      v41 = v7;
      v42 = v2;
      v43 = v1;
      v44 = v6;
      if (qword_1006AEC40 != -1)
      {
        swift_once();
      }

      v12 = qword_1006D47C0;
      v13 = [objc_allocWithZone(UITextField) init];
      v14 = [objc_opt_self() preferredFontForTextStyle:v12];
      [v13 setFont:v14];

      [v13 setKeyboardType:0];
      [v13 setAutocorrectionType:1];
      [v13 setTextAlignment:4];
      [v13 setDelegate:v0];
      [v13 addTarget:v0 action:"textFieldDidChangeWithSender:" forControlEvents:0x20000];
      [v13 addTarget:v0 action:"returnKeyPressedWithSender:" forControlEvents:0x80000];
      v15 = v13;
      [v0 addSubview:v15];
      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_10007EBC0(&qword_1006AFC30);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100552EF0;
      v17 = [v15 centerYAnchor];
      v18 = [v0 centerYAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(v16 + 32) = v19;
      v20 = [v15 leadingAnchor];

      v21 = [v0 textLabel];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 leadingAnchor];

        v24 = [v20 constraintEqualToAnchor:v23];
        *(v16 + 40) = v24;
        v25 = [v15 trailingAnchor];

        v26 = [v0 textLabel];
        if (v26)
        {
          v27 = v26;
          v28 = objc_opt_self();
          v29 = [v27 trailingAnchor];

          v30 = [v25 constraintEqualToAnchor:v29];
          *(v16 + 48) = v30;
          sub_10000905C(0, &qword_1006B3A70);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v28 activateConstraints:isa];

          v32 = *&v0[v10];
          *&v0[v10] = v15;
          v33 = v15;

          sub_10000905C(0, &qword_1006AEDC0);
          v34 = static OS_dispatch_queue.main.getter();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          aBlock[4] = sub_10036F174;
          aBlock[5] = v35;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_100638E30;
          v36 = _Block_copy(aBlock);
          v37 = v33;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100037918();
          sub_10007EBC0(&unk_1006B0640);
          sub_100037970();
          v38 = v43;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v36);

          (*(v42 + 8))(v4, v38);
          (*(v41 + 8))(v9, v44);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v11)
  {
    v39 = v11;
    [v39 resignFirstResponder];
    [v39 removeFromSuperview];

    v40 = *&v0[v10];
    *&v0[v10] = 0;
  }
}

uint64_t sub_10036ED94(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String.characterCount.getter();

    v4 = v3 > 0;
  }

  else
  {
    v4 = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem);
    [v6 setEnabled:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_10036EF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (*(v5 + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_characterLimit + 8))
  {
    return 1;
  }

  v9 = *(v5 + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_characterLimit);
  v10 = [a1 text];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = Range<>.init(_:in:)();
  if (v17)
  {

    return 0;
  }

  else
  {
    sub_10036E204(v15, v16, a4, a5, v12, v14);

    v18 = String.count.getter();

    return v9 >= v18;
  }
}

id sub_10036F0D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLabelTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10036F184(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_10036F1D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText;
    v3 = *(Strong + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
    if (v3)
    {
      v4 = v3;
      sub_1003D506C(v4);

      v5 = *(v1 + v2);
      *(v1 + v2) = 0;
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_10036F4B4(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC6FindMy24FMSymbolBulletedListView_bulletViews];
  v22 = OBJC_IVAR____TtC6FindMy24FMSymbolBulletedListView_bulletViews;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_12:

    v10 = *(a1 + 16);
    if (v10)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = type metadata accessor for FMSymbolBulletedListItemView();
      v12 = (a1 + 64);
      do
      {
        v13 = *(v12 - 4);
        v14 = *(v12 - 3);
        v15 = *(v12 - 2);
        v16 = *(v12 - 1);
        v17 = *v12;
        v12 += 5;
        objc_allocWithZone(v11);
        v18 = v17;

        sub_100282B18(v13, v14, v15, v16, v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v10;
      }

      while (v10);
    }

    *&v22[v2] = _swiftEmptyArrayStorage;

    v4 = *&v22[v2];
    a1 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v2;

    if (!a1)
    {
      break;
    }

    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v19 = *(v4 + 8 * v2 + 32);
      }

      v20 = v19;
      v21 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      [v22 addArrangedSubview:v19];

      ++v2;
      if (v21 == a1)
      {
        goto LABEL_26;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_26:
}

id sub_10036F794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10036F8C8(void *a1)
{
  v1 = sub_100417638(a1);
  type metadata accessor for FMPhoneNumberTableViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = v1;
    v6 = [v4 mainBundle];
    v13._object = 0x8000000100590760;
    v7._object = 0x8000000100590730;
    v13._countAndFlagsBits = 0xD000000000000038;
    v7._countAndFlagsBits = 0xD000000000000026;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v13);

    *(v3 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText) = v9;

    v10 = *(v3 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel);
    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];

    sub_100092668();
  }

  return v1;
}

id sub_10036FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  sub_100123328(a4, a5, v15);

  (*(v13 + 8))(v15, v12);
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 updateTextField:a1 shouldChangeCharactersInRange:a2 replacementString:{a3, v17}];

  v19 = sub_100417D54();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 text];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (sub_100122BFC(v22, v24) || (v26._countAndFlagsBits = 12331, v26._object = 0xE200000000000000, String.hasPrefix(_:)(v26)) && String.count.getter() >= 4)
      {
        swift_bridgeObjectRelease_n();
        v25 = 1;
        goto LABEL_11;
      }

      v27._countAndFlagsBits = 48;
      v27._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v27))
      {
        v28 = String.count.getter();
        swift_bridgeObjectRelease_n();
        v25 = v28 > 2;
        goto LABEL_11;
      }

      swift_bridgeObjectRelease_n();
    }
  }

  v25 = 0;
LABEL_11:
  v29 = *(v6 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton);
  if (v29)
  {
    [v29 setEnabled:v25];
  }

  return v18;
}

id sub_10036FDBC()
{
  v1 = sub_100417D54();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      if (sub_100122BFC(v4, v6) || (v8._countAndFlagsBits = 12331, v8._object = 0xE200000000000000, String.hasPrefix(_:)(v8)) && String.count.getter() >= 4)
      {
        swift_bridgeObjectRelease_n();
        v7 = 1;
        goto LABEL_11;
      }

      v9._countAndFlagsBits = 48;
      v9._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v9))
      {
        v10 = String.count.getter();
        swift_bridgeObjectRelease_n();
        v7 = v10 > 2;
        goto LABEL_11;
      }

      swift_bridgeObjectRelease_n();
    }
  }

  v7 = 0;
LABEL_11:
  result = *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton);
  if (result)
  {

    return [result setEnabled:v7];
  }

  return result;
}

void sub_10036FF04()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v4 = &object - v3;
  v5 = type metadata accessor for FMLostModeTrackable();
  v6 = __chkstk_darwin(v5);
  v8 = &object - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &object - v10;
  __chkstk_darwin(v9);
  v13 = &object - v12;
  v14 = sub_100417D54();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v14 text];

  if (!v16)
  {
    return;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v18;
  v39 = v17;

  v19 = sub_100417D54();
  if (v19)
  {
    v20 = v19;
    [v19 resignFirstResponder];
  }

  v21 = [objc_opt_self() mainBundle];
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v40._object = 0x8000000100579A00;
  v23._object = 0x8000000100592F70;
  v22.value._object = 0x80000001005799E0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0xD000000000000018;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v40);
  object = v25._object;

  if (!*&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
  swift_beginAccess();
  sub_1001104A8(&v1[v26], v4);
  v27 = type metadata accessor for FMIPItem();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v4, 1, v27) == 1)
  {
LABEL_12:
    __break(1u);
    return;
  }

  (*(v28 + 32))(v13, v4, v27);
  swift_storeEnumTagMultiPayload();
  v29 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController());
  sub_1000970F8(v13, v11);
  *&v29[qword_1006B8820] = 0;
  *&v29[qword_1006D4360] = 0;
  v30 = &v29[qword_1006D4358];
  v31 = object;
  *v30 = v25._countAndFlagsBits;
  *(v30 + 1) = v31;
  v32 = v38;
  *(v30 + 2) = v39;
  *(v30 + 3) = v32;
  v30[64] = 0;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  sub_1000970F8(v11, v8);
  *&v29[qword_1006B3A80] = 0;
  sub_1000970F8(v8, &v29[qword_1006D3E00]);

  v34 = sub_1003C3E60(v33);
  sub_10009715C(v11);
  sub_10009715C(v8);
  sub_10009715C(v13);
  v35 = [v1 navigationController];
  if (v35)
  {
    v36 = v35;
    [v35 pushViewController:v34 animated:1];
  }
}

void sub_1003702DC()
{
  v0 = sub_100417D54();
  if (v0 && (v1 = v0, v2 = [v0 text], v1, v2) && (v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v5 = v4, v2, v6 = sub_100122BFC(v3, v5), , v6))
  {

    sub_10036FF04();
  }

  else
  {

    sub_100417EA8();
  }
}

id sub_1003704E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
  v12 = type metadata accessor for FMIPItem();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = String._bridgeToObjectiveC()();

LABEL_6:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:symbolName:contentLayout:", v13, v14, v15, a7);

  return v16;
}

id sub_100370848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMItemPhoneNumberViewController()
{
  result = qword_1006BCA40;
  if (!qword_1006BCA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003708E4()
{
  sub_1001D6088();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100370974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = objc_opt_self();
  v39 = v8;
  v9 = [v8 mainBundle];
  v43._object = 0x8000000100579A00;
  v10._countAndFlagsBits = 0xD00000000000001DLL;
  v10._object = 0x8000000100592F90;
  v11.value._object = 0x80000001005799E0;
  v38 = "CLEAR_TAGS_MESSAGE";
  v43._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v43);

  v13 = [v8 mainBundle];
  v44._object = 0x8000000100579A00;
  v14._countAndFlagsBits = 0xD000000000000027;
  v14._object = 0x8000000100592FB0;
  v15.value._object = 0x80000001005799E0;
  v44._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v44);

  v17 = objc_allocWithZone(v37[1]);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [v17 initWithTitle:v18 detailText:v19 icon:0 contentLayout:2];

  *&v20[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = a1;
  v21 = v20;

  v22 = &v21[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
  v23 = *&v21[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
  v24 = *&v21[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
  v25 = v41;
  *v22 = v40;
  *(v22 + 1) = v25;
  sub_100179FB0(v23, v24);
  v26 = type metadata accessor for FMIPItem();
  v27 = *(v26 - 8);
  v28 = v42;
  (*(v27 + 16))(v7, v42, v26);
  (*(v27 + 56))(v7, 0, 1, v26);
  v29 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
  swift_beginAccess();
  v30 = v21;
  sub_1000E211C(v7, &v21[v29]);
  swift_endAccess();

  v31 = [v39 mainBundle];
  v45._object = 0x8000000100579A00;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v32._object = 0x8000000100592FE0;
  v33.value._object = (v38 | 0x8000000000000000);
  v45._countAndFlagsBits = 0xD000000000000018;
  v33.value._countAndFlagsBits = 0xD000000000000013;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v45);

  sub_100418334(v35._countAndFlagsBits, v35._object);
  (*(v27 + 8))(v28, v26);
  return v30;
}

void sub_100370D24(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [a1 viewForKey:UITransitionContextToViewKey];
  if (!v5)
  {

LABEL_14:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v27, "FMCardPresentationTransition: Invalid presented view controller", v28, 2u);
    }

    goto LABEL_24;
  }

  v6 = v5;
  v7 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = v9;
      v11 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 view];

        if (v13)
        {
          sub_100375524(a1, v6);
          [v13 bounds];
          Width = CGRectGetWidth(v61);
          [v13 bounds];
          Height = CGRectGetHeight(v62);
          v57 = &type metadata for SolariumFeatureFlag;
          v58 = sub_10000BD04();
          v16 = isFeatureEnabled(_:)();
          sub_100006060(&aBlock);
          v17 = 0.0;
          v18 = 0.0;
          if (v16)
          {
            [v13 frame];
            v20 = v19;
            [v13 frame];
            v17 = v20;
          }

          [v6 setFrame:{v17, v18, Width, Height}];
          v21 = [a1 containerView];
          [v21 addSubview:v6];

          [v6 layoutIfNeeded];
          [v6 setFrame:{0.0, Height * 0.5, Width, Height}];
          v22 = OBJC_IVAR____TtC6FindMy16FMCardTransition_duration;
          v23 = *(v1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration);
          v24 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
          if (v23 == 0.0)
          {
            if (v24)
            {
              v25 = v24;
              [v24 viewWillDisappear:0];
            }

            sub_100371814(v8, v10, v13, v4);
            [a1 completeTransition:1];
          }

          else
          {
            v50 = v22;
            if (v24)
            {
              v32 = v24;
              [v24 viewWillDisappear:1];
            }

            osloga = swift_allocObject();
            osloga[2].isa = a1;
            swift_unknownObjectRetain();
            [v13 bounds];
            v33 = CGRectGetWidth(v63);
            [v13 bounds];
            v34 = CGRectGetHeight(v64);
            v35 = objc_opt_self();
            v36 = swift_allocObject();
            *(v36 + 2) = v8;
            *(v36 + 3) = v10;
            *(v36 + 4) = v4;
            v58 = sub_10026C50C;
            v59 = v36;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v56 = sub_100004AE4;
            v57 = &unk_100638EA8;
            v37 = _Block_copy(&aBlock);
            v51 = v8;
            v38 = v4;

            v39 = swift_allocObject();
            *(v39 + 16) = v13;
            v58 = sub_100371800;
            v59 = v39;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v56 = sub_10037A044;
            v57 = &unk_100638EF8;
            v40 = _Block_copy(&aBlock);
            v41 = v13;

            [v35 animateWithDuration:v37 animations:v40 completion:0.3];
            _Block_release(v40);
            _Block_release(v37);
            v42 = *(v1 + v50);
            v43 = swift_allocObject();
            *(v43 + 2) = v38;
            *(v43 + 3) = v41;
            v43[4] = v33;
            v43[5] = v34;
            v58 = sub_100371808;
            v59 = v43;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v56 = sub_100004AE4;
            v57 = &unk_100638F48;
            v44 = _Block_copy(&aBlock);
            v45 = v38;
            v46 = v41;

            v47 = swift_allocObject();
            *(v47 + 2) = v46;
            *(v47 + 3) = sub_1001A8698;
            *(v47 + 4) = osloga;
            v58 = sub_10026C370;
            v59 = v47;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v56 = sub_10037A044;
            v57 = &unk_100638F98;
            v48 = _Block_copy(&aBlock);
            v49 = v46;

            [v35 _animateUsingSpringWithDuration:0x20000 delay:v44 options:v48 mass:v42 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
            _Block_release(v48);
            _Block_release(v44);
          }

          return;
        }
      }
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v30, "FMCardPresentationTransition: Invalid presenting view controller", v31, 2u);
  }

LABEL_24:
}

void sub_100371588(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_10026C578;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100004AE4;
  v7[3] = &unk_100638FE8;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 animateWithDuration:v5 animations:0.1];
  _Block_release(v5);
}

void sub_100371678(void *a1, void *a2, double a3, double a4)
{
  v16 = &type metadata for SolariumFeatureFlag;
  v17 = sub_10000BD04();
  v8 = isFeatureEnabled(_:)();
  sub_100006060(v15);
  v9 = [a1 view];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      [a2 frame];
      v12 = v11;
      [a2 frame];
      v14 = v12;
LABEL_5:
      [v10 setFrame:{v14, v13, a3, a4}];

      return;
    }

    __break(1u);
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
    if (v9)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

id sub_1003717A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardPresentedCompactTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100371814(uint64_t a1, uint64_t a2, id a3, void *a4)
{
  [a3 bounds];
  Width = CGRectGetWidth(v18);
  [a3 bounds];
  Height = CGRectGetHeight(v19);
  v10 = [a4 view];
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(a1, a2, a4, ObjectType, a2);
  v16 = &type metadata for SolariumFeatureFlag;
  v17 = sub_10000BD04();
  LOBYTE(a4) = isFeatureEnabled(_:)();
  sub_100006060(v15);
  if (a4)
  {
    if (v10)
    {
      v12 = v10;
      [a3 frame];
      v14 = v13;
      [a3 frame];
      [v12 setFrame:v14];
    }
  }

  else if (v10)
  {
    [v10 setFrame:{0.0, 0.0, Width, Height}];
  }

  [a3 setAlpha:0.0];
  [a3 setHidden:1];
}

void sub_1003719CC(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, double a6, double a7, double a8)
{
  v48 = a3;
  v49 = a4;
  v50 = a2;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for FMIPUnknownItem();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v47 = v19;
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for FMIPConfigValue();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v44[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a6 < 9.22337204e18)
  {
    (*(v22 + 104))(v24, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v21);
    aBlock[6] = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v22 + 8))(v24, v21);
    v46 = v14;
    v45 = aBlock[0] < a6;
    v25 = *(v18 + 16);
    v26 = v50;
    v25(v20, v50, v17);
    v27 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
    swift_beginAccess();
    (*(v18 + 40))(&a1[v27], v20, v17);
    swift_endAccess();
    v28 = &a1[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_tempCoordinate];
    *v28 = a7;
    v28[1] = a8;
    *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = a6;
    v29 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v30 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v31 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
    v32 = v48;
    v33 = v49;
    *v29 = v48;
    v29[1] = v33;
    sub_10009186C(v32, v33);
    sub_100091880(v30, v31);
    a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v45;
    v34 = *&a1[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage];
    *&a1[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage] = a5;
    v35 = a5;

    sub_10000905C(0, &qword_1006AEDC0);
    v36 = static OS_dispatch_queue.main.getter();
    v25(v20, v26, v17);
    v37 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    (*(v18 + 32))(v38 + v37, v20, v17);
    aBlock[4] = sub_100372454;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100639038;
    v39 = _Block_copy(aBlock);
    v40 = a1;

    v41 = v51;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v42 = v53;
    v43 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v55 + 8))(v42, v43);
    (*(v52 + 8))(v41, v54);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100371F84(char *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 willChangeValueForKey:v2];

  v3 = FMIPUnknownItem.name.getter();
  v4 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v4 = v3;
  v4[1] = v5;

  v6 = String._bridgeToObjectiveC()();
  [a1 didChangeValueForKey:v6];
}

uint64_t sub_100372068()
{
  sub_10000905C(0, &qword_1006BC2B0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_1003720EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImage) init];
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

uint64_t sub_1003721C4(uint64_t a1)
{
  v2 = type metadata accessor for FMIPUnknownItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  FMIPUnknownItem.identifier.getter();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for FMAnnotationIdentifier();
  return swift_storeEnumTagMultiPayload();
}

void sub_100372300()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  v2 = type metadata accessor for FMIPUnknownItem();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_updateQueue);
}

id sub_100372388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUnknownItemAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100372454()
{
  type metadata accessor for FMIPUnknownItem();
  v1 = *(v0 + 16);

  sub_100371F84(v1);
}

UIFontTextStyle sub_1003724F0()
{
  qword_1006D47E8 = UIFontTextStyleBody;
  *&qword_1006D47F0 = xmmword_10055E560;
  unk_1006D4800 = xmmword_10055E570;
  return UIFontTextStyleBody;
}

void sub_100372524()
{
  v1 = v0[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEnabled];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView];
  v3 = [v2 superview];
  if (v1 == 1)
  {
    if (!v3)
    {
      if (qword_1006AEC48 != -1)
      {
        swift_once();
      }

      v4 = *&qword_1006D47F8;
      v5 = unk_1006D4800;
      if (v0[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEditable] == 1)
      {
        v6 = v0;
      }

      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      [v0 addSubview:v2];
      [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = objc_opt_self();
      sub_10007EBC0(&qword_1006AFC30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1005521F0;
      v9 = [v2 topAnchor];
      v10 = [v0 topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10 constant:v4];

      *(v8 + 32) = v11;
      v12 = [v2 leadingAnchor];
      v13 = [v0 leadingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:v5];

      *(v8 + 40) = v14;
      v15 = [v2 trailingAnchor];
      v16 = [v0 trailingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:-v5];

      *(v8 + 48) = v17;
      v18 = [v2 bottomAnchor];
      v19 = [v0 bottomAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:-v4];

      *(v8 + 56) = v20;
      sub_10002B27C();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints:isa];
      v3 = isa;
    }

    v22 = v0[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEditable];
    v23 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
    [*&v2[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView] setEditable:v22];
    v24 = *&v2[v23];
    v25 = objc_opt_self();
    v26 = v24;
    v27 = &selRef_labelColor;
    if (!v22)
    {
      v27 = &selRef_secondaryLabelColor;
    }

    v28 = [v25 *v27];
    [v26 setTextColor:v28];
  }

  else if (v3)
  {

    [v2 resignFirstResponder];

    [v2 removeFromSuperview];
  }
}

id sub_100372AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEnabled] = 0;
  v3[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEditable] = 1;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FMEditableMessageTableViewCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100372BD0(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEnabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEditable] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMEditableMessageTableViewCell();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_100372CB4()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_delegate;

  return sub_100093140(v1);
}

id sub_100372CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEditableMessageTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100372D98()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_stackView;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle;
  *&v0[v3] = [objc_allocWithZone(UISwitch) init];
  *&v0[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_isEnabled] = 1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMLostModeSummaryToggleView();
  v4 = objc_msgSendSuper2(&v10, "init");
  v5 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v5];

  sub_100372FB8();
  sub_10037324C();
  sub_10000905C(0, &qword_1006AF730);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = v4;
  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [*&v7[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle] addAction:v8 forControlEvents:{4096, 0, 0, 0, sub_100373C54, v6}];

  return v7;
}

void sub_100372FB8()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_stackView);
  [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) addSubview:v2];
  [v2 setAxis:0];
  [v2 setDistribution:0];
  [v2 setAlignment:3];
  [v2 setSpacing:1.17549435e-38];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label);
  [v2 addArrangedSubview:v4];
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle);
  [v2 addArrangedSubview:v5];
  [*(v0 + v1) setDirectionalLayoutMargins:{10.0, 16.0, 10.0, 16.0}];
  [v4 setNumberOfLines:0];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v6];

  v7 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v7];

  LODWORD(v8) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v10];
}

void sub_10037324C()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_stackView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle);
  *(inited + 48) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1005521F0;
  v17 = [v6 leadingAnchor];
  v18 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
  v19 = [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) layoutMarginsGuide];
  v20 = [v19 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v16 + 32) = v21;
  v22 = [v6 trailingAnchor];
  v23 = [*(v0 + v18) layoutMarginsGuide];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v16 + 40) = v25;
  v26 = [v6 topAnchor];
  v27 = [*(v0 + v18) layoutMarginsGuide];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v16 + 48) = v29;
  v30 = [v6 bottomAnchor];
  v31 = [*(v0 + v18) layoutMarginsGuide];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v16 + 56) = v33;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];
}

uint64_t sub_100373640(uint64_t a1, unint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  [*(a2 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle) isOn];
  v5 = *(v4 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView);
  type metadata accessor for FMLostModeSummaryToggleView();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = a2;
    goto LABEL_7;
  }

  v9 = *(v4 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = a2 | 0x8000000000000000;
LABEL_7:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = a2;
      sub_100319A10(v8);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

id sub_1003737CC()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_isEnabled;
  [v0 setUserInteractionEnabled:v0[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_isEnabled]];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label];
  v3 = v0[v1];
  v4 = objc_opt_self();
  v5 = &selRef_labelColor;
  if (!v3)
  {
    v5 = &selRef_secondaryLabelColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor:v6];

  v7 = [*&v0[OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter] layer];
  v8 = v7;
  LODWORD(v9) = 1058642330;
  if (v0[v1])
  {
    *&v9 = 1.0;
  }

  [v7 setOpacity:v9];

  v10 = *&v0[OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer];
  v11 = v0[v1];

  return [v10 setHidden:v11];
}

uint64_t sub_1003738EC()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_delegate;

  return sub_10005CD20(v1);
}

id sub_10037394C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeSummaryToggleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100373A10()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_stackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle;
  *(v0 + v3) = [objc_allocWithZone(UISwitch) init];
  *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_isEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100373B00()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle];
  [v2 setOn:objc_msgSend(v2 animated:{"isOn") ^ 1, 0}];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  [v2 isOn];
  v5 = *(v4 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView);
  type metadata accessor for FMLostModeSummaryToggleView();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = v1;
    goto LABEL_7;
  }

  v9 = *(v4 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = v1 | 0x8000000000000000;
LABEL_7:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v1;
      sub_100319A10(v8);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

char *sub_100373C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v55 = a3;
  v56 = a4;
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v7 = v51 - v6;
  v8 = objc_opt_self();
  v54 = v8;
  v9 = [v8 mainBundle];
  v59._object = 0x8000000100579A00;
  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x80000001005931E0;
  v11.value._object = 0x80000001005799E0;
  v53 = "CLEAR_TAGS_MESSAGE";
  v59._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v59);

  v13 = [v8 mainBundle];
  v60._object = 0x8000000100579A00;
  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x8000000100593200;
  v15.value._object = 0x80000001005799E0;
  v60._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v60);

  v17 = objc_allocWithZone(v51[1]);

  v18 = v52;
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();

  v21 = [v17 initWithTitle:v19 detailText:v20 icon:0 contentLayout:2];

  *&v21[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator] = a1;
  v22 = v21;

  v23 = &v22[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode];
  v24 = *&v22[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode];
  v25 = *&v22[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode + 8];
  v26 = v56;
  *v23 = v55;
  *(v23 + 1) = v26;
  sub_100179FB0(v24, v25);
  v27 = type metadata accessor for FMIPItem();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v7, v18, v27);
  (*(v28 + 56))(v7, 0, 1, v27);
  v29 = OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_item;
  swift_beginAccess();
  v30 = v22;
  sub_1000E211C(v7, &v22[v29]);
  swift_endAccess();

  v31 = [v54 mainBundle];
  v61._object = 0x8000000100579A00;
  v32._countAndFlagsBits = 0xD000000000000028;
  v32._object = 0x8000000100593230;
  v33.value._object = (v53 | 0x8000000000000000);
  v61._countAndFlagsBits = 0xD000000000000018;
  v33.value._countAndFlagsBits = 0xD000000000000013;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v61);

  sub_10034282C(v35._countAndFlagsBits, v35._object);
  v36 = sub_1003751C8();
  if (v36)
  {
    v37 = v36;
    v38 = [objc_opt_self() sharedInstance];
    v39 = [v38 phoneAsAppleIDForAccount:v37];

    if ((v39 & 1) == 0 && (v40 = [objc_allocWithZone(ACAccountStore) init], v41 = objc_msgSend(v40, "aa_primaryAppleAccount"), v40, v41) && (v42 = objc_msgSend(v41, "aa_primaryEmail"), v41, v42))
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v57 = v43;
      v58 = v45;
      v46 = String.init<A>(_:)();
      v48 = v47;

      (*(v28 + 8))(v18, v27);
      v49 = &v30[OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_primaryEmailAddress];
      *v49 = v46;
      v49[1] = v48;
    }

    else
    {
      (*(v28 + 8))(v18, v27);
    }
  }

  else
  {
    (*(v28 + 8))(v18, v27);
  }

  return v30;
}

id sub_100374228(void *a1)
{
  v2 = sub_100341E5C(a1);
  if (*(v1 + OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_primaryEmailAddress + 8))
  {
    type metadata accessor for FMEmailTableViewCell();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField);

      v5 = v4;
      v6 = String._bridgeToObjectiveC()();

      [v5 setText:v6];
    }
  }

  type metadata accessor for FMEmailTableViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = v2;
    v11 = [v9 mainBundle];
    v18._object = 0x8000000100592090;
    v12._object = 0x8000000100592060;
    v18._countAndFlagsBits = 0xD000000000000038;
    v12._countAndFlagsBits = 0xD000000000000026;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v18);

    *(v8 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText) = v14;

    v15 = *(v8 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel);
    v16 = String._bridgeToObjectiveC()();

    [v15 setText:v16];

    sub_1003C28F0();
  }

  return v2;
}

id sub_10037453C()
{
  v1 = sub_1003421A0();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_6:

      v4 = static String.emailPredicate.getter();
      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 evaluateWithObject:v5];
      swift_bridgeObjectRelease_n();

      goto LABEL_8;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_primaryEmailAddress + 8))
  {

    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:
  result = *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton);
  if (result)
  {

    return [result setEnabled:v6];
  }

  return result;
}

void sub_100374664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v32 = type metadata accessor for FMLostModeTrackable();
  v7 = __chkstk_darwin(v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - v11;
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = sub_1003421A0();
  if (v15)
  {
    v16 = v15;
    [v15 resignFirstResponder];
  }

  v17 = [objc_opt_self() mainBundle];
  v35._object = 0x8000000100579A00;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x80000001005931C0;
  v19.value._object = 0x80000001005799E0;
  v35._countAndFlagsBits = 0xD000000000000018;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v35);

  if (!*&v3[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator])
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_item;
  swift_beginAccess();
  sub_1001104A8(&v3[v22], v6);
  v23 = type metadata accessor for FMIPItem();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  (*(v24 + 32))(v14, v6, v23);
  swift_storeEnumTagMultiPayload();
  v25 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController());
  sub_1000970F8(v14, v12);
  *&v25[qword_1006B8820] = 0;
  *&v25[qword_1006D4360] = 0;
  v26 = &v25[qword_1006D4358];
  *v26 = v21;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v34;
  *(v26 + 4) = v33;
  *(v26 + 5) = v27;
  v26[64] = 0;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0;
  sub_1000970F8(v12, v9);
  *&v25[qword_1006B3A80] = 0;
  sub_1000970F8(v9, &v25[qword_1006D3E00]);

  v29 = sub_1003C3E60(v28);
  sub_10009715C(v12);
  sub_10009715C(v9);
  sub_10009715C(v14);
  v30 = [v3 navigationController];
  if (v30)
  {
    v31 = v30;
    [v30 pushViewController:v29 animated:1];
  }
}

void sub_100374A00()
{
  v0 = sub_1003421A0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 text];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = static String.emailPredicate.getter();
      v7 = [v6 evaluateWithObject:v2];

      if (v7)
      {
        sub_100374664(v3, v5);

        return;
      }
    }
  }

  sub_1003422F4();
}

void sub_100374B24()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1001428A4(0, 0);
    }
  }
}

id sub_100374C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_item;
  v12 = type metadata accessor for FMIPItem();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = &v7[OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_primaryEmailAddress];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = String._bridgeToObjectiveC()();

LABEL_6:
  v19.receiver = v7;
  v19.super_class = type metadata accessor for FMItemEmailViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:symbolName:contentLayout:", v14, v15, v16, a7);

  return v17;
}

id sub_100374E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_item;
  v11 = type metadata accessor for FMIPItem();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = &v6[OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_primaryEmailAddress];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v6;
  v17.super_class = type metadata accessor for FMItemEmailViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:icon:contentLayout:", v13, v14, a5, a6);

  return v15;
}

uint64_t sub_100375010()
{
  sub_10008228C(v0 + OBJC_IVAR____TtC6FindMy25FMItemEmailViewController_item);
}

id sub_100375054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemEmailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMItemEmailViewController()
{
  result = qword_1006BCBE0;
  if (!qword_1006BCBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100375130()
{
  sub_1001D6088();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1003751C8()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching AuthKit account", v3, 2u);
  }

  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_altDSID];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() sharedInstance];
      v9 = [v8 authKitAccountWithAltDSID:v7];

      result = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
    }
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "AuthKit account not found.", v13, 2u);
  }

  return 0;
}

id sub_1003754CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100375524(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_10007EBC0(&qword_1006AFC30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1005528C0;
    *(v5 + 32) = a2;
    v6 = type metadata accessor for FMPassthroughView();
    v7 = objc_allocWithZone(v6);
    v7[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] = 1;
    *&v7[OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews] = v5;
    v23.receiver = v7;
    v23.super_class = v6;
    swift_unknownObjectRetain();
    v8 = a2;
    v9 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v10 = [v4 containerView];
    v11 = [v10 superview];

    v12 = [v4 containerView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [v4 containerView];
    [v21 setFrame:{0.0, 0.0, 0.0, 0.0}];

    v22 = v9;
    [v4 _setContainerView:v22];
    [v11 addSubview:v22];
    [v22 setFrame:{v14, v16, v18, v20}];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100375738()
{
  v1 = type metadata accessor for FMPersonDetailViewModel(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v22._object = 0x800000010057B9B0;
  v10._countAndFlagsBits = 0xD000000000000032;
  v10._object = 0x800000010057B970;
  v22._countAndFlagsBits = 0xD000000000000044;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v22)._countAndFlagsBits;

  v13 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_viewModel;
  swift_beginAccess();
  sub_100007204(v0 + v13, v7, &qword_1006B3260);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100012DF0(v7, &qword_1006B3260);
  }

  else
  {
    sub_100379F0C(v7, v4, type metadata accessor for FMPersonDetailViewModel);
    sub_100012DF0(v7, &qword_1006B3260);
    v15 = *(v4 + 14);
    v14 = *(v4 + 15);

    sub_100379F74(v4, type metadata accessor for FMPersonDetailViewModel);
    if (v14)
    {

      v16 = [v8 mainBundle];
      v23._object = 0x800000010057BA30;
      v17._object = 0x800000010057BA00;
      v23._countAndFlagsBits = 0xD00000000000003CLL;
      v17._countAndFlagsBits = 0xD00000000000002ALL;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v23);

      sub_10007EBC0(&unk_1006B20B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100552220;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_10008EE84();
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      countAndFlagsBits = String.init(format:_:)();
    }
  }

  return countAndFlagsBits;
}

char *sub_100375A90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMPlatterIcon();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B3298);
  v8 = __chkstk_darwin(v7 - 8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  *&v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_fencesRow] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_viewModel;
  v13 = type metadata accessor for FMPersonDetailViewModel(0);
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyMe] = 0;
  v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyOther] = 0;
  v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_disabled] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_maxLocationAlerts] = a1;
  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v84._object = 0x8000000100588840;
  v16._countAndFlagsBits = 0xD000000000000022;
  v16._object = 0x8000000100588810;
  v84._countAndFlagsBits = 0xD000000000000034;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v84)._countAndFlagsBits;

  v75 = v4;
  swift_storeEnumTagMultiPayload();
  (*(v5 + 56))(v11, 0, 1, v4);
  v18 = [v14 mainBundle];
  v85._object = 0x8000000100593390;
  v19._countAndFlagsBits = 0xD000000000000027;
  v19._object = 0x8000000100593360;
  v85._countAndFlagsBits = 0xD000000000000039;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v85);

  v21 = [v14 mainBundle];
  v86._object = 0x800000010057ABB0;
  v22._countAndFlagsBits = 0xD000000000000029;
  v22._object = 0x80000001005933D0;
  v23.value._object = 0x800000010057AB90;
  v86._countAndFlagsBits = 0xD000000000000017;
  v23.value._countAndFlagsBits = 0xD000000000000012;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v86);

  v25 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *&v2[v25] = [objc_allocWithZone(UILabel) init];
  v26 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v2[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v2[v27] = [objc_allocWithZone(UIStackView) init];
  v28 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v2[v28] = [objc_allocWithZone(UIStackView) init];
  v29 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v30 = objc_opt_self();
  *&v2[v29] = [v30 buttonWithType:1];
  v31 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v2[v31] = [v30 buttonWithType:1];
  v32 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v2[v32] = [objc_allocWithZone(UIView) init];
  v33 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v2[v33] = [objc_allocWithZone(UIView) init];
  v34 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v2[v34] = [objc_allocWithZone(UIView) init];
  v35 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v36 = type metadata accessor for FMPlatterBackgroundView();
  v37 = objc_allocWithZone(v36);
  v37[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v83.receiver = v37;
  v83.super_class = v36;
  v38 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v2[v35] = v38;
  v39 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v2[v39] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v40 = &v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v41 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v82.receiver = v2;
  v82.super_class = v41;
  v42 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v43 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v44 = *&v42[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v45 = v42;
  v46 = v44;
  v47 = String._bridgeToObjectiveC()();

  [v46 setText:v47];

  [*&v42[v43] setAdjustsFontForContentSizeCategory:1];
  v48 = *&v42[v43];
  v49 = v76;
  v50 = v48;
  v51 = String._bridgeToObjectiveC()();
  [v50 setAccessibilityIdentifier:v51];

  sub_100007204(v11, v49, &qword_1006B3298);
  if ((*(v5 + 48))(v49, 1, v75) == 1)
  {
    sub_100012DF0(v49, &qword_1006B3298);
  }

  else
  {
    v52 = v73;
    sub_10015DA28(v49, v73);
    v80 = &type metadata for SolariumFeatureFlag;
    v81 = sub_10000BD04();
    v53 = isFeatureEnabled(_:)();
    sub_100006060(v79);
    if (v53)
    {
      v54 = sub_100438138(0);
      v56 = v55;
      v57 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v45[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v54];
      [*&v45[v57] setTintColor:v56];
      [*&v45[v57] setTintAdjustmentMode:1];
    }

    else
    {
      v54 = *&v45[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v56 = sub_10043B9F4(v52, 0);
      [v54 setImage:v56];
    }

    sub_100379F74(v52, type metadata accessor for FMPlatterIcon);
  }

  v58 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v59 = *&v45[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  v60 = String._bridgeToObjectiveC()();

  [v59 setTitle:v60 forState:0];

  v61 = *&v45[v58];
  v62 = String._bridgeToObjectiveC()();
  [v61 setAccessibilityIdentifier:v62];

  [*&v45[v58] setTintAdjustmentMode:1];
  v63 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  v64 = *&v45[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton];
  v65 = String._bridgeToObjectiveC()();

  [v64 setTitle:v65 forState:0];

  v66 = *&v45[v63];
  v67 = String._bridgeToObjectiveC()();
  [v66 setAccessibilityIdentifier:v67];

  (*((swift_isaMask & *v45) + 0x1E0))();
  sub_100455CF8();
  (*((swift_isaMask & *v45) + 0x1F8))();
  v68 = v45;
  v69 = String._bridgeToObjectiveC()();
  [v68 setAccessibilityIdentifier:v69];

  sub_100012DF0(v11, &qword_1006B3298);
  v80 = &type metadata for SolariumFeatureFlag;
  v81 = sub_10000BD04();
  LOBYTE(v63) = isFeatureEnabled(_:)();
  sub_100006060(v79);
  if (v63)
  {
    v70 = [v68 layer];
    [v70 setShouldRasterize:0];
  }

  return v68;
}

void sub_10037664C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v188 = &v174 - v3;
  v207 = sub_10007EBC0(&qword_1006BCC98);
  __chkstk_darwin(v207);
  v218 = &v174 - v4;
  v206 = sub_10007EBC0(&qword_1006BCCA0);
  __chkstk_darwin(v206);
  v217 = &v174 - v5;
  v6 = type metadata accessor for FMFLocationAlertTriggerType();
  v7 = *(v6 - 8);
  v229 = v6;
  v230 = v7;
  __chkstk_darwin(v6);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMLocationAlertRowViewModel(0);
  v228 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMPersonDetailViewModel(0);
  v187 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v16 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v174 - v17;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v222 = v12;
  v219 = v9;
  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  sub_100379F0C(a1, v18, type metadata accessor for FMPersonDetailViewModel);
  v190 = a1;
  sub_100379F0C(a1, v16, type metadata accessor for FMPersonDetailViewModel);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v231 = v227;
    *v22 = 134218242;
    v23 = *(*&v18[v13[28]] + 16);
    sub_100379F74(v18, type metadata accessor for FMPersonDetailViewModel);
    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    v24 = Array.description.getter();
    v26 = v25;
    sub_100379F74(v16, type metadata accessor for FMPersonDetailViewModel);
    v27 = sub_100005B4C(v24, v26, &v231);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMLocationAlertsView: <fence> update viewModel with %ld alerts. LocationAlerts: %s", v22, 0x16u);
    sub_100006060(v227);
  }

  else
  {
    sub_100379F74(v18, type metadata accessor for FMPersonDetailViewModel);

    sub_100379F74(v16, type metadata accessor for FMPersonDetailViewModel);
  }

  v28 = v220;
  sub_100378048();
  v29 = v190;
  v30 = *(v190 + v13[28]);
  v31 = *(v30 + 16);
  v32 = v229;
  if (!v31)
  {
    v169 = 0;
    goto LABEL_70;
  }

  v175 = v13;
  v215 = "handleFenceTapWithSender:";
  v214 = objc_opt_self();
  v33 = (*(v228 + 80) + 32) & ~*(v228 + 80);
  v174 = v30;
  v34 = v30 + v33;
  v213 = v230 + 16;
  v212 = *(v228 + 72);
  v205 = "LOCATION_ALERT_NOTIFY_OTHERS";
  v204 = 0x800000010057BAA0;
  v211 = (v230 + 88);
  v210 = enum case for FMFLocationAlertTriggerType.arriving(_:);
  v203 = enum case for FMFLocationAlertTriggerType.leaving(_:);
  v197 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
  v177 = "LOCATION_ALERT_MENU_TITLE";
  v202 = "LOCATION_ALERT_WHEN_I_AM_NOT_AT";
  v201 = 0x800000010057ABB0;
  v186 = "N_SOMEONE_IS_NOT_AT";
  v185 = "CATION_ALERT_REQUEST_SENT";
  v184 = "CATION_ALERT_PENDING_REQUEST";
  v183 = 0x8000000100593550;
  v176 = "HEN_SOMEONE_LEAVES_NEXT_TIME";
  v196 = "N_SOMEONE_LEAVES_EVERY_TIME";
  v195 = 0x8000000100593620;
  v189 = "HEN_SOMEONE_ARRIVES_NEXT_TIME";
  v221 = (v230 + 8);
  v182 = "N_SOMEONE_ARRIVES_EVERY_TIME";
  v181 = "CATION_ALERT_WHEN_I_AM_NOT_AT";
  v180 = 0x8000000100593720;
  v179 = "HEN_I_LEAVE_NEXT_TIME";
  v178 = 0x80000001005937B0;
  v194 = "HEN_I_LEAVE_EVERY_TIME";
  v200 = xmmword_100552220;
  v198 = xmmword_100552210;
  v193 = 0x8000000100593840;
  v192 = "HEN_I_ARRIVE_NEXT_TIME";
  v191 = 0x80000001005938D0;
  v199 = 0x800000010057A180;
  v35 = v219;
  v36 = v222;
  v216 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_fencesRow;
  v209 = v10;
  do
  {
    v227 = v34;
    v228 = v31;
    sub_100379F0C(v34, v36, type metadata accessor for FMLocationAlertRowViewModel);
    v37 = objc_allocWithZone(UITapGestureRecognizer);
    v226 = [v37 initWithTarget:v28 action:v215];
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v38 = *&qword_1006D4798;
    v39 = objc_allocWithZone(type metadata accessor for FMMultiSettingsStatusRowView());
    v40 = sub_1004EFC1C(1, v38);
    v41 = [v214 sharedApplication];
    v42 = [v41 preferredContentSizeCategory];

    v43 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v44 = *(v36 + 1);
    v45 = &v40[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_identifier];
    *v45 = *v36;
    *(v45 + 1) = v44;

    v46 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel;
    if (v43)
    {
      v47 = 0;
    }

    else
    {
      v47 = 2;
    }

    [*&v40[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_secondaryLabel] setNumberOfLines:{v47, v174}];
    v225 = OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel;
    [*&v40[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_statusLabel] setNumberOfLines:(v43 & 1) == 0];
    v230 = v40;
    v224 = v46;
    [*&v40[v46] setLineBreakMode:4];
    v48 = *v213;
    (*v213)(v35, &v36[v10[7]], v32);
    v49 = v36[v10[8]];
    if (v36[v10[9]] != 1)
    {
      v58 = v10[11];
      v59 = v10[12];
      v60 = v35;
      v61 = v36;
      v62 = v36[v58];
      v63 = v61[v59];
      v208 = objc_opt_self();
      v64 = [v208 mainBundle];
      v233._object = v204;
      v65._countAndFlagsBits = 0xD000000000000026;
      v65._object = (v205 | 0x8000000000000000);
      v233._countAndFlagsBits = 0xD000000000000038;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      v223 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v233);

      v67 = v207[12];
      v68 = v207[16];
      v69 = v207[20];
      v70 = v218;
      v48(v218, v60, v229);
      *(v70 + v67) = v49;
      *(v70 + v68) = v62;
      *(v70 + v69) = v63;
      v71 = v70;
      v72 = v229;
      v73 = (*v211)(v71, v229);
      if (v73 == v210)
      {
        if (v49)
        {
          if (v62)
          {
            if (v63)
            {
              goto LABEL_38;
            }

            v74 = v208;
            v75 = [v208 mainBundle];
            v76 = v201;
            v234._object = v201;
            v77._countAndFlagsBits = 0xD00000000000003CLL;
            v77._object = (v189 | 0x8000000000000000);
            v78 = v202;
            v79.value._object = (v202 | 0x8000000000000000);
            v234._countAndFlagsBits = 0xD000000000000017;
            v79.value._countAndFlagsBits = 0xD000000000000012;
            v80._countAndFlagsBits = 0;
            v80._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v77, v79, v75, v80, v234);

            v81 = [v74 mainBundle];
LABEL_53:
            v137 = v81;
            v242._object = v76;
            v138._countAndFlagsBits = 0xD00000000000002CLL;
            v138._object = (v185 | 0x8000000000000000);
            v139.value._object = (v78 | 0x8000000000000000);
            v242._countAndFlagsBits = 0xD000000000000017;
            v139.value._countAndFlagsBits = 0xD000000000000012;
            v140._countAndFlagsBits = 0;
            v140._object = 0xE000000000000000;
            v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, v139, v137, v140, v242);
            countAndFlagsBits = v141._countAndFlagsBits;
            object = v141._object;

            goto LABEL_54;
          }

          v100 = v208;
          v101 = [v208 mainBundle];
          v102 = v201;
          v236._object = v201;
          v103._countAndFlagsBits = 0xD00000000000003CLL;
          v103._object = (v189 | 0x8000000000000000);
          v104 = v202;
          v105.value._object = (v202 | 0x8000000000000000);
          v236._countAndFlagsBits = 0xD000000000000017;
          v105.value._countAndFlagsBits = 0xD000000000000012;
          v106._countAndFlagsBits = 0;
          v106._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v105, v101, v106, v236);

          v107 = v222;
          if (v63)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        v90 = [v208 mainBundle];
        v173 = v195;
        v91 = 0xD00000000000003BLL;
        v92 = v196 | 0x8000000000000000;
        v93 = 0xD00000000000004DLL;
      }

      else
      {
        if (v73 != v203)
        {
          if (v73 != v197)
          {
            goto LABEL_38;
          }

          if (v62)
          {
            if (v63)
            {
LABEL_38:
              sub_100012DF0(v218, &qword_1006BCC98);
              countAndFlagsBits = 0;
              object = 0;
              v98 = 0;
              v99 = 0;
              goto LABEL_56;
            }

            v132 = v208;
            v133 = [v208 mainBundle];
            v76 = v201;
            v241._object = v201;
            v134._countAndFlagsBits = 0xD000000000000033;
            v134._object = (v177 | 0x8000000000000000);
            v78 = v202;
            v135.value._object = (v202 | 0x8000000000000000);
            v241._countAndFlagsBits = 0xD000000000000017;
            v135.value._countAndFlagsBits = 0xD000000000000012;
            v136._countAndFlagsBits = 0;
            v136._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v134, v135, v133, v136, v241);

            v81 = [v132 mainBundle];
            goto LABEL_53;
          }

          v100 = v208;
          v123 = [v208 mainBundle];
          v102 = v201;
          v239._object = v201;
          v124._countAndFlagsBits = 0xD000000000000033;
          v124._object = (v177 | 0x8000000000000000);
          v104 = v202;
          v125.value._object = (v202 | 0x8000000000000000);
          v239._countAndFlagsBits = 0xD000000000000017;
          v125.value._countAndFlagsBits = 0xD000000000000012;
          v126._countAndFlagsBits = 0;
          v126._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v124, v125, v123, v126, v239);

          v107 = v222;
          if (v63)
          {
LABEL_50:
            v127 = [v100 mainBundle];
            v240._object = v102;
            v128._countAndFlagsBits = 0xD000000000000029;
            v128._object = (v186 | 0x8000000000000000);
            v129.value._object = (v104 | 0x8000000000000000);
            v240._countAndFlagsBits = 0xD000000000000017;
            v129.value._countAndFlagsBits = 0xD000000000000012;
            v130._countAndFlagsBits = 0;
            v130._object = 0xE000000000000000;
            v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, v129, v127, v130, v240);
            countAndFlagsBits = v131._countAndFlagsBits;
            object = v131._object;

LABEL_55:
            (*v221)(v218, v72);
            sub_10007EBC0(&unk_1006B20B0);
            v142 = swift_allocObject();
            *(v142 + 16) = v198;
            v143 = *(v107 + 4);
            v144 = *(v107 + 5);
            *(v142 + 56) = &type metadata for String;
            v145 = sub_10008EE84();
            *(v142 + 32) = v143;
            *(v142 + 40) = v144;
            v146 = *(v107 + 2);
            v147 = *(v107 + 3);
            *(v142 + 96) = &type metadata for String;
            *(v142 + 104) = v145;
            *(v142 + 64) = v145;
            *(v142 + 72) = v146;
            *(v142 + 80) = v147;

            v98 = String.init(format:_:)();
            v99 = v148;

            goto LABEL_56;
          }

LABEL_51:
          countAndFlagsBits = 0;
          object = 0;
          goto LABEL_55;
        }

        if (v49)
        {
          if (v62)
          {
            if (v63)
            {
              goto LABEL_38;
            }

            v85 = v208;
            v86 = [v208 mainBundle];
            v76 = v201;
            v235._object = v201;
            v87._countAndFlagsBits = 0xD00000000000003BLL;
            v87._object = (v176 | 0x8000000000000000);
            v78 = v202;
            v88.value._object = (v202 | 0x8000000000000000);
            v235._countAndFlagsBits = 0xD000000000000017;
            v88.value._countAndFlagsBits = 0xD000000000000012;
            v89._countAndFlagsBits = 0;
            v89._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v235);

            v81 = [v85 mainBundle];
            goto LABEL_53;
          }

          v100 = v208;
          v119 = [v208 mainBundle];
          v102 = v201;
          v238._object = v201;
          v120._countAndFlagsBits = 0xD00000000000003BLL;
          v120._object = (v176 | 0x8000000000000000);
          v104 = v202;
          v121.value._object = (v202 | 0x8000000000000000);
          v238._countAndFlagsBits = 0xD000000000000017;
          v121.value._countAndFlagsBits = 0xD000000000000012;
          v122._countAndFlagsBits = 0;
          v122._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v120, v121, v119, v122, v238);

          v107 = v222;
          if (v63)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        v90 = [v208 mainBundle];
        v173 = v183;
        v91 = 0xD00000000000003ALL;
        v92 = v184 | 0x8000000000000000;
        v93 = 0xD00000000000004CLL;
      }

      v118._countAndFlagsBits = 0;
      v118._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v91, 0, v90, v118, *&v93);

      countAndFlagsBits = 0;
      object = 0;
LABEL_54:
      v107 = v222;
      goto LABEL_55;
    }

    v223._countAndFlagsBits = sub_100375738();
    v223._object = v50;
    v51 = *(v206 + 48);
    v52 = v217;
    v48(v217, v35, v32);
    *(v52 + v51) = v49;
    v53 = (*v211)(v52, v32);
    if (v53 == v210)
    {
      v54 = [objc_opt_self() mainBundle];
      if (v49)
      {
        v172 = v191;
        v55 = 0xD000000000000035;
        v56 = v192 | 0x8000000000000000;
        v57 = 0xD000000000000047;
LABEL_42:
        v95 = 0;
        v94 = 0;
        goto LABEL_43;
      }

      v172 = v193;
      v55 = 0xD000000000000034;
      v84 = &v222;
LABEL_31:
      v56 = *(v84 - 32) | 0x8000000000000000;
      v57 = 0xD000000000000046;
      goto LABEL_42;
    }

    v82 = v202;
    v83 = v201;
    if (v53 == v203)
    {
      v54 = [objc_opt_self() mainBundle];
      if (!v49)
      {
        v172 = v180;
        v55 = 0xD000000000000033;
        v56 = v181 | 0x8000000000000000;
        v57 = 0xD000000000000045;
        goto LABEL_42;
      }

      v172 = v178;
      v55 = 0xD000000000000034;
      v84 = &v207;
      goto LABEL_31;
    }

    if (v53 == v197)
    {
      v54 = [objc_opt_self() mainBundle];
      v172 = v83;
      v55 = 0xD00000000000002DLL;
      v56 = v182 | 0x8000000000000000;
      v94 = v82 | 0x8000000000000000;
      v57 = 0xD000000000000017;
      v95 = 0xD000000000000012;
LABEL_43:
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v55, *&v95, v54, v108, *&v57);

      (*v221)(v217, v32);
      v231 = 0;
      v232 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v231 = 0xD000000000000012;
      v232 = v199;
      String.append(_:)(v109);
      v110 = v231;
      v111 = v232;
      v112 = [objc_opt_self() mainBundle];
      v237._object = v111;
      v113._countAndFlagsBits = 0;
      v113._object = 0xE000000000000000;
      v237._countAndFlagsBits = v110;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v109, 0, v112, v113, v237);

      sub_10007EBC0(&unk_1006B20B0);
      v114 = swift_allocObject();
      *(v114 + 16) = v200;
      v115 = *(v222 + 2);
      v116 = *(v222 + 3);
      *(v114 + 56) = &type metadata for String;
      *(v114 + 64) = sub_10008EE84();
      *(v114 + 32) = v115;
      *(v114 + 40) = v116;

      v98 = String.init(format:_:)();
      v99 = v117;

      countAndFlagsBits = 0;
      object = 0;
      goto LABEL_56;
    }

    sub_100012DF0(v217, &qword_1006BCCA0);
    countAndFlagsBits = 0;
    object = 0;
    v98 = 0;
    v99 = 0;
LABEL_56:
    v149 = v230;
    v150 = &v230[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
    v151 = v223._object;
    *v150 = v223._countAndFlagsBits;
    v150[1] = v151;

    v152 = *&v149[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_titleLabel];

    v153 = v152;
    v154 = String._bridgeToObjectiveC()();

    [v153 setText:v154];

    if (v99)
    {
      v155 = v98;
    }

    else
    {
      v155 = 0;
    }

    v156 = &v149[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_subtitle];
    if (v99)
    {
      v157 = v99;
    }

    else
    {
      v157 = 0xE000000000000000;
    }

    *v156 = v155;
    *(v156 + 1) = v157;

    v158 = *&v149[v224];

    v159 = v158;
    v160 = String._bridgeToObjectiveC()();

    [v159 setText:v160];

    v161 = &v149[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_status];
    *v161 = countAndFlagsBits;
    v161[1] = object;

    v162 = *&v149[v225];
    v163 = v162;
    if (object)
    {

      v164 = String._bridgeToObjectiveC()();
    }

    else
    {
      v164 = 0;
    }

    v35 = v219;
    v28 = v220;
    v36 = v222;
    v165 = v216;
    [v162 setText:v164];

    v166 = v230;
    v167 = v226;
    [v230 addGestureRecognizer:v226];
    swift_beginAccess();
    v168 = v166;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = v209;
    v32 = v229;
    if (*((*(v28 + v165) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + v165) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    (*v221)(v35, v32);
    sub_100379F74(v36, type metadata accessor for FMLocationAlertRowViewModel);
    v34 = v227 + v212;
    v31 = v228 - 1;
  }

  while (v228 != 1);
  v169 = *(v174 + 16);
  v29 = v190;
  v13 = v175;
LABEL_70:
  *(v28 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled) = v169 < *(v28 + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_maxLocationAlerts);
  [*(v28 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton) setEnabled:?];
  *(v28 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 0;
  sub_1004571E0();
  *(v28 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden) = (*(v29 + v13[29]) & 1) == 0;
  sub_1004571E0();
  *(v28 + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyMe) = *(v29 + v13[31]);
  *(v28 + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyOther) = *(v29 + v13[32]);
  v170 = v188;
  sub_100379F0C(v29, v188, type metadata accessor for FMPersonDetailViewModel);
  (*(v187 + 56))(v170, 0, 1, v13);
  v171 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_viewModel;
  swift_beginAccess();
  sub_100379FD4(v170, v28 + v171);
  swift_endAccess();
  sub_100377E2C();
  sub_100378680();
}

uint64_t sub_100377E2C()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_fencesRow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_bridgeObjectRetain_n();
  v10 = sub_1004EC0F4(v2);
  sub_100379008(&v10);

  v3 = v10;
  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v4 = *(v10 + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v6 addArrangedSubview:v7];
    }

    while (v4 != v5);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100377F68(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*a2 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
  if (v5[1])
  {
    v6 = v5[1];
    if (v3 != *v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
LABEL_10:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

uint64_t sub_100378048()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_fencesRow;
  swift_beginAccess();
  v9 = v1;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];
      [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView) removeArrangedSubview:v6];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *(v0 + v9) = _swiftEmptyArrayStorage;
}

uint64_t sub_10037825C(void *a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = a1;
  v6 = v1;
  while (1)
  {
    v7 = v6;
    v6 = [v6 nextResponder];

    if (!v6)
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      sub_1000C5474(sub_100379F04, v4, 0, 0);

      break;
    }
  }
}

void sub_10037836C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 view];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for FMMultiSettingsStatusRowView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_identifier + 8);
        if (v9 && (v10 = *(v8 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_identifier), swift_unknownObjectWeakLoadStrong()))
        {

          sub_10014052C(v10, v9);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1003784EC()
{
  v1 = v0;
  while (1)
  {
    v2 = v1;
    v13 = [v1 nextResponder];

    if (!v13)
    {
      break;
    }

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    v1 = v13;
    if (v3)
    {
      type metadata accessor for FMPersonDetailContentViewController();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = objc_allocWithZone(type metadata accessor for FMPauseNotificationsViewController());

        v8 = sub_1004114EC(v7);
        v9 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
        v10 = v8;
        v11 = sub_1000CC510(v10, 2);
        [v5 presentViewController:v11 animated:1 completion:0];

        v12 = v11;
      }

      else
      {
        v12 = v13;
      }

      return;
    }
  }
}

void sub_100378680()
{
  v1 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  sub_10000905C(0, &qword_1006AF730);
  sub_100375738();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  swift__string._object = 0x800000010057BAA0;
  v7._object = 0x800000010057BA70;
  swift__string._countAndFlagsBits = 0xD000000000000038;
  v7._countAndFlagsBits = 0xD000000000000026;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, swift__string);

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v26._rawValue = 0;
  v27 = v9;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12 = v11;
  if (v10[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyMe] == 1)
  {
    v13 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v31;
  }

  if (v10[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyOther] == 1)
  {
    v14 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v31;
  }

  v29 = &type metadata for SolariumFeatureFlag;
  v30 = sub_10000BD04();
  v15 = isFeatureEnabled(_:)();
  sub_100006060(v28);
  if (v15)
  {
    v16 = [v5 mainBundle];
    swift__stringa._object = 0x8000000100593430;
    v17._countAndFlagsBits = 0xD000000000000027;
    v17._object = 0x8000000100593400;
    swift__stringa._countAndFlagsBits = 0xD000000000000039;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, swift__stringa);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  if (v1 >> 62)
  {
    sub_10000905C(0, &unk_1006BAA80);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    preferredElementSize = v1;
  }

  sub_10000905C(0, &unk_1006AF720);
  v23._countAndFlagsBits = countAndFlagsBits;
  v23._object = object;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v26).super.super.isa;
  v25 = *&v10[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  [v25 setMenu:isa];
  [v25 setShowsMenuAsPrimaryAction:1];
  [v25 setShowsMenuFromSource:0];
}

void sub_100378B00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = v5;
  while (1)
  {
    v7 = v6;
    v6 = [v6 nextResponder];

    if (!v6)
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      v9 = v5;
      sub_1000C5474(a4, v8, 0, 0);

      return;
    }
  }
}

uint64_t sub_100378BF0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FMFLocationAlertTarget();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v8 + 104))(v10, *a3, v7);
    v12 = type metadata accessor for FMFLocationAlert();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_10013C018(v10, v6);
    swift_unknownObjectRelease();
    sub_100012DF0(v6, &unk_1006BEF80);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100378DAC()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_delegate);
  return sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_viewModel, &qword_1006B3260);
}

id sub_100378E00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLocationAlertsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLocationAlertsView()
{
  result = qword_1006BCC80;
  if (!qword_1006BCC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100378EEC()
{
  sub_100378FB0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100378FB0()
{
  if (!qword_1006BCC90)
  {
    type metadata accessor for FMPersonDetailViewModel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BCC90);
    }
  }
}

uint64_t sub_100379008(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
    v25 = v4;
LABEL_10:
    v28 = v9;
    v29 = v8;
    v13 = *(v26 + 8 * v9);
    v27 = v10;
    while (1)
    {
      if (*&v13[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8])
      {
        v14 = *&v13[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
        v15 = *&v13[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8];
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = *v10;
      v17 = (*v10 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
      if (v17[1])
      {
        v18 = v17[1];
        if (v14 != *v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0xE000000000000000;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 == v18)
      {

        v11 = v13;
        v12 = v16;

LABEL_9:
        v9 = v28 + 1;
        v10 = v27 + 8;
        v8 = v29 - 1;
        if (v28 + 1 == v25)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_10;
      }

LABEL_19:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v13;
      v21 = v16;

      if (v19)
      {
        v22 = *v10;
        v13 = *(v10 + 8);
        *v10 = v13;
        *(v10 + 8) = v22;
        v10 -= 8;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMMultiSettingsStatusRowView();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v30[1] = (v4 >> 1);
  sub_10037926C(v30, v32, v31, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

void sub_10037926C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v113 = v4;
      v92 = *(v4 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v4[16 * v92];
          v94 = *&v4[16 * v92 + 24];
          sub_100379A2C((*a3 + 8 * v93), (*a3 + 8 * *&v4[16 * v92 + 16]), (*a3 + 8 * v94), v7);
          if (v108)
          {
            goto LABEL_117;
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025EFD4(v4);
          }

          if (v92 - 2 >= *(v4 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v4[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v113 = v4;
          sub_10025EF48(v92 - 1);
          v4 = v113;
          v92 = *(v113 + 2);
          if (v92 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v4 = sub_10025EFD4(v4);
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v104 = v7;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_29;
    }

    v106 = v5;
    v9 = *a3;
    v112 = *(*a3 + 8 * (v6 + 1));
    v10 = v6;
    v111 = *(v9 + 8 * v6);
    v11 = v111;
    v12 = v112;
    v13 = v11;
    v109 = sub_100377F68(&v112, &v111);
    if (v108)
    {

      return;
    }

    v14 = v10 + 2;
    v97 = v10;
    v102 = 8 * v10;
    v4 = (v9 + 8 * v10 + 16);
    while (1)
    {
      v6 = v106;
      v7 = v104;
      if (v106 == v14)
      {
        break;
      }

      v18 = *v4;
      v19 = (*v4 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
      if (v19[1])
      {
        v20 = *v19;
        v21 = v19[1];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = *(v4 - 1);
      v23 = &v22[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
      if (*&v22[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8])
      {
        v24 = *(v23 + 1);
        if (v20 != *v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v24 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_7;
        }
      }

      if (v21 == v24)
      {
        v15 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      v16 = v18;
      v17 = v22;

      ++v14;
      v4 += 8;
      if ((v109 ^ v15))
      {
        v6 = v14 - 1;
        v7 = v104;
        break;
      }
    }

    v8 = v97;
    v25 = v102;
    if ((v109 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v6 < v97)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v97 < v6)
    {
      v26 = 8 * v6 - 8;
      v27 = v6;
      v28 = v97;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v30 = *(v29 + v25);
          *(v29 + v25) = *(v29 + v26);
          *(v29 + v26) = v30;
        }

        ++v28;
        v26 -= 8;
        v25 += 8;
      }

      while (v28 < v27);
    }

LABEL_29:
    v31 = a3[1];
    if (v6 >= v31)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_136;
    }

    if (v6 - v8 >= a4)
    {
LABEL_55:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
      }

      v47 = *(v7 + 2);
      v46 = *(v7 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v7 = sub_10008B8B8((v46 > 1), v47 + 1, 1, v7);
      }

      *(v7 + 2) = v48;
      v49 = &v7[16 * v47];
      *(v49 + 4) = v8;
      *(v49 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (!v47)
      {
LABEL_3:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v7[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v48)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = *&v7[16 * v88 + 32];
        v90 = *&v7[16 * v50 + 40];
        sub_100379A2C((*a3 + 8 * v89), (*a3 + 8 * *&v7[16 * v50 + 32]), (*a3 + 8 * v90), v4);
        if (v108)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v88 >= *(v7 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v7[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v113 = v7;
        sub_10025EF48(v50);
        v7 = v113;
        v48 = *(v113 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v7[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 < v31)
  {
    v31 = v8 + a4;
  }

  if (v31 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v31)
  {
    goto LABEL_55;
  }

  v100 = v31;
  v110 = *a3;
  v32 = *a3 + 8 * v6 - 8;
  v98 = v8;
  v33 = v8 - v6;
  while (2)
  {
    v107 = v6;
    v36 = *(v110 + 8 * v6);
    v101 = v33;
    v103 = v32;
LABEL_41:
    if (*&v36[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8])
    {
      v37 = *&v36[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
      v4 = *&v36[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8];
    }

    else
    {
      v37 = 0;
      v4 = 0xE000000000000000;
    }

    v38 = *v32;
    v39 = (*v32 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
    if (v39[1])
    {
      v40 = v39[1];
      if (v37 != *v39)
      {
        break;
      }
    }

    else
    {
      v40 = 0xE000000000000000;
      if (v37)
      {
        break;
      }
    }

    if (v4 == v40)
    {

      v34 = v36;
      v35 = v38;

LABEL_39:
      v6 = v107 + 1;
      v32 = v103 + 8;
      v33 = v101 - 1;
      if (v107 + 1 == v100)
      {
        v7 = v104;
        v6 = v100;
        v8 = v98;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v42 = v36;
  v43 = v38;

  if ((v41 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v110)
  {
    v44 = *v32;
    v36 = *(v32 + 8);
    *v32 = v36;
    *(v32 + 8) = v44;
    v32 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}