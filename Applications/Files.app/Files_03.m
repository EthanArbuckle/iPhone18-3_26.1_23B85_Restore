void sub_10004F004(void *a1)
{
  v2 = type metadata accessor for DOCUserActivityIdentifier();
  v117 = *(v2 - 8);
  v118 = v2;
  v3 = *(v117 + 64);
  __chkstk_darwin(v2);
  v116 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v122 = *(v5 - 8);
  v123 = v5;
  v6 = *(v122 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v113 - v11;
  v13 = __chkstk_darwin(v10);
  v115 = &v113 - v14;
  v15 = __chkstk_darwin(v13);
  v119 = &v113 - v16;
  __chkstk_darwin(v15);
  v18 = &v113 - v17;
  static Logger.Application.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = &off_100091000;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v126);
    *(v23 + 12) = 2080;
    v24 = [v19 activityType];
    v114 = v12;
    v25 = v24;
    v26 = v9;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v27;
    v9 = v26;
    v31 = v123;
    v32 = sub_100005D28(v30, v29, &v126);

    *(v23 + 14) = v32;
    v33 = v122;
    v12 = v114;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: continue activity: %s", v23, 0x16u);
    swift_arrayDestroy();

    v34 = *(v33 + 8);
    v35 = v18;
    v36 = v31;
    v22 = &off_100091000;
  }

  else
  {

    v36 = v123;
    v34 = *(v122 + 8);
    v35 = v18;
  }

  v120 = v34;
  v34(v35, v36);
  v37 = [v19 v22[452]];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v37) = static DOCUserActivityIdentifier.identifierSupportsRestoration(_:)();

  if (v37)
  {
    type metadata accessor for DOCUserActivityController();
    v38 = swift_allocObject();
    v39 = v121;
    *(v38 + 16) = v121;
    *(v38 + 24) = v19;
    v40 = v19;
    v41 = v39;
    static DOCUserActivityController.fetchURLFrom(activity:completion:)();

    return;
  }

  v42 = [objc_opt_self() intentFromActivity:v19];
  if (!v42)
  {
    v61 = v22[452];
    v119 = v19;
    v62 = [v19 v61];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = v116;
    v67 = v117;
    v68 = v118;
    (*(v117 + 104))(v116, enum case for DOCUserActivityIdentifier.folderDrag(_:), v118);
    v69 = DOCUserActivityIdentifier.rawValue.getter();
    v71 = v70;
    (*(v67 + 8))(v66, v68);
    if (v63 == v69 && v65 == v71)
    {

LABEL_14:
      v9 = v115;
      static Logger.Application.getter();
      v73 = v119;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v76 = 136315394;
        *(v76 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v126);
        *(v76 + 12) = 2080;
        v77 = [v73 activityType];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v81 = sub_100005D28(v78, v80, &v126);

        *(v76 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v74, v75, "%s: Continue folder drop activity: %s", v76, 0x16u);
        swift_arrayDestroy();
      }

LABEL_17:
      v120(v9, v123);
      return;
    }

    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v72)
    {
      goto LABEL_14;
    }

    v82 = v119;
    v83 = [v119 activityType];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
    {
    }

    else
    {
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v88 & 1) == 0)
      {
        return;
      }
    }

    static Logger.Application.getter();
    v89 = v82;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();

    v92 = os_log_type_enabled(v90, v91);
    v119 = v89;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v126 = v118;
      *v93 = 136315394;
      *(v93 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v126);
      *(v93 + 12) = 2080;
      v94 = [v89 activityType];
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      v98 = sub_100005D28(v95, v97, &v126);
      v99 = v120;

      *(v93 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s: Continue Spotlight search activity: %s", v93, 0x16u);
      swift_arrayDestroy();

      v99(v12, v123);
    }

    else
    {

      v120(v12, v123);
    }

    v100 = *&v121[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v100)
    {
      v101 = v100;
      v102 = [v119 userInfo];
      if (v102)
      {
        v103 = v102;
        v104 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v105;
        AnyHashable.init<A>(_:)();
        if (*(v104 + 16) && (v106 = sub_10000A60C(&v126), (v107 & 1) != 0))
        {
          sub_100005CC8(*(v104 + 56) + 32 * v106, &v127);
          sub_10000A774(&v126);

          if (*(&v128 + 1))
          {
            if (swift_dynamicCast())
            {
              v108 = [v101 effectiveFullBrowser];
              DOCFullDocumentManagerViewController.search(forQuery:completion:)();

              return;
            }

            goto LABEL_36;
          }
        }

        else
        {

          sub_10000A774(&v126);
          v127 = 0u;
          v128 = 0u;
        }
      }

      else
      {

        v127 = 0u;
        v128 = 0u;
      }

      sub_100005A04(&v127, &qword_100093498, &qword_100074430);
    }

LABEL_36:
    static Logger.Application.getter();
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v126 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v126);
      _os_log_impl(&_mh_execute_header, v109, v110, "%s: Unable to continue activity since main view controller not set, of search query string not is nil", v111, 0xCu);
      sub_100034948(v112);
    }

    goto LABEL_17;
  }

  v43 = v42;
  v44 = v119;
  static Logger.Application.getter();
  v45 = v19;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v126);
    *(v48 + 12) = 2080;
    *&v127 = [v45 interaction];
    sub_10000DB4C(&qword_100093C70, &qword_100074488);
    v49 = String.init<A>(describing:)();
    v51 = sub_100005D28(v49, v50, &v126);

    *(v48 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v46, v47, "%s: Handle Shortcuts open folder action: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  v120(v44, v123);
  v52 = type metadata accessor for DOCOpenLocationIntentActionResolver();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = v43;
  DOCOpenLocationIntentActionResolver.init(with:)();
  v56 = swift_allocObject();
  v57 = v121;
  *(v56 + 16) = v121;
  v58 = v57;
  dispatch thunk of DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler.setter();
  *(swift_allocObject() + 16) = v58;
  v59 = v58;
  dispatch thunk of DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler.setter();
  *(swift_allocObject() + 16) = v59;
  v60 = v59;
  dispatch thunk of DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler.setter();
  dispatch thunk of DOCOpenLocationIntentActionResolver.startResolving()();
}

uint64_t sub_10004FD50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = v2;
    v10 = v9;
    v16 = swift_slowAlloc();
    v18 = v16;
    *v10 = 136315394;
    *(v10 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075E80, &v18);
    *(v10 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v11 = Set.description.getter();
    v13 = sub_100005D28(v11, v12, &v18);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s URLContexts: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v17);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return sub_1000373C0(a1);
}

uint64_t sub_10004FFAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v6;
    v14 = v13;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v14 = 136315394;
    *(v14 + 4) = sub_100005D28(0xD000000000000032, 0x8000000100075E40, &v30);
    *(v14 + 12) = 2080;
    v15 = v10;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v12;
    v18 = v10;
    v19 = a3;
    v20 = v17;
    v27 = v5;
    v22 = v21;

    v23 = sub_100005D28(v20, v22, &v30);

    *(v14 + 14) = v23;
    a3 = v19;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, v11, v26, "%s shortcutItem: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v9, v27);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_100039484(v10);
  return (*(a3 + 16))(a3, 1);
}

uint64_t sub_100050238()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075C80, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s [App Shortcut] begin creating app shortcuts", v7, 0xCu);
    sub_100034948(v8);
  }

  (*(v1 + 8))(v4, v0);
  return sub_100036E30(sub_100036BDC, 0);
}

void *sub_1000503F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093C00, &unk_100074450);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000505E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[2] = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v2;
    v28[1] = v16;
    v31 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100005D28(0xD00000000000002FLL, 0x8000000100075560, &v31);
    *(v15 + 12) = 2080;
    v17 = Array.description.getter();
    v28[0] = v8;
    v19 = v7;
    v20 = v5;
    v21 = v4;
    v22 = sub_100005D28(v17, v18, &v31);

    *(v15 + 14) = v22;
    v4 = v21;
    v5 = v20;
    v7 = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: URLs: %s", v15, 0x16u);
    swift_arrayDestroy();
    v2 = v29;

    (*(v30 + 8))(v11, v28[0]);
  }

  else
  {

    (*(v30 + 8))(v11, v8);
  }

  v23 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
  v24 = *&v2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController];
  if (v24)
  {
    *&v24[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v24 = *&v2[v23];
  }

  *&v2[v23] = 0;

  if (*(a1 + 16) == 1)
  {
    v25 = *(v5 + 80);
    (*(v5 + 16))(v7, a1 + ((v25 + 32) & ~v25), v4);
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    (*(v5 + 32))(v26 + ((v25 + 24) & ~v25), v7, v4);
    v27 = v2;
    DOCRunInMainThread(_:)();
  }
}

uint64_t sub_100050984()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_10003A72C(v2, 0, 0, 1, 1u);
}

void sub_1000509F8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  sub_1000448B4(a1, a2, v6, v7, v8);
}

uint64_t sub_100050A8C(unint64_t a1, void *a2, int a3)
{
  v89 = a3;
  v6 = type metadata accessor for Logger();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v82 - v12;
  __chkstk_darwin(v11);
  v15 = &v82 - v14;
  v16 = type metadata accessor for DOCUserActivityIdentifier();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v21 = *(a1 + 32);
      }

      v22 = v21;
      v23 = a2;
      if (!a2)
      {
        v23 = v21;
      }

      v90 = v22;
      v24 = objc_opt_self();
      v94 = 0;
      v25 = a2;
      v91 = v23;
      v26 = [v24 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v94];
      v27 = v94;
      if (v26)
      {
        v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v28;

        v29 = *(v3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
        if (v29)
        {
          v30 = [v29 configuration];
        }

        else
        {
          v30 = [objc_opt_self() configurationForImportingDocumentContentTypes:0 mode:1];
        }

        v32 = v30;
        v94 = 0;
        v33 = v32;
        v34 = [v24 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:&v94];
        v35 = v94;
        if (v34)
        {
          v85 = v33;
          v86 = v15;
          v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v3;
          v37 = v36;
          v39 = v38;

          (*(v17 + 104))(v20, enum case for DOCUserActivityIdentifier.quickLook(_:), v16);
          DOCUserActivityIdentifier.rawValue.getter();
          (*(v17 + 8))(v20, v16);
          v40 = objc_allocWithZone(NSUserActivity);
          v41 = String._bridgeToObjectiveC()();

          v42 = [v40 initWithActivityType:v41];

          sub_10000DB4C(&qword_100093A28, qword_100074AD0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000736D0;
          *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
          *(inited + 40) = v44;
          *(inited + 48) = 0xD00000000000001ELL;
          *(inited + 56) = 0x8000000100075680;
          sub_10004CDFC(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v42 setRequiredUserInfoKeys:isa];

          sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
          v46 = swift_initStackObject();
          *(v46 + 16) = xmmword_100073FF0;
          v94 = DOCUserActivityDOCNodeKey.getter();
          v95 = v47;
          AnyHashable.init<A>(_:)();
          *(v46 + 96) = &type metadata for Data;
          v48 = v87;
          v49 = v88;
          *(v46 + 72) = v87;
          *(v46 + 80) = v49;
          v94 = 0xD00000000000001ELL;
          v95 = 0x8000000100075680;
          sub_10000AEE8(v48, v49);
          AnyHashable.init<A>(_:)();
          *(v46 + 168) = &type metadata for Data;
          *(v46 + 144) = v37;
          *(v46 + 152) = v39;
          v94 = 0xD000000000000019;
          v95 = 0x80000001000756A0;
          v83 = v39;
          v84 = v37;
          sub_10000AEE8(v37, v39);
          AnyHashable.init<A>(_:)();
          *(v46 + 240) = &type metadata for Bool;
          *(v46 + 216) = v89 & 1;
          sub_10004CBBC(v46);
          swift_setDeallocating();
          sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
          swift_arrayDestroy();
          v50 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v42 addUserInfoEntriesFromDictionary:v50];

          v51 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
          v97 = type metadata accessor for UIWindowSceneProminentPlacement();
          v98 = sub_10004DC20(&unk_100094250, &type metadata accessor for UIWindowSceneProminentPlacement);
          sub_10000AE7C(&v94);
          static UIWindowScenePlacement<>._largeProminentPlacement()();
          UIWindowSceneActivationRequestOptions.placement.setter();
          v52 = *(v82 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
          v53 = v51;
          if (v52)
          {
            v52 = [v52 windowScene];
          }

          [v51 setRequestingScene:v52];

          sub_100002B84(0, &unk_100093BC0, UIWindowSceneActivationConfiguration_ptr);
          v62 = v42;
          v100.value.super.super.isa = 0;
          v100.is_nil = 0;
          v63.super.isa = UIWindowSceneActivationConfiguration.init(userActivity:options:preview:)(v62, v100, v101).super.isa;
          [(objc_class *)v63.super.isa setOptions:v51];
          static Logger.Application.getter();
          v64 = v90;
          v65 = v62;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v68 = 138412546;
            *(v68 + 4) = v64;
            *(v68 + 12) = 2112;
            *(v68 + 14) = v65;
            *v69 = v64;
            v69[1] = v65;
            v70 = v64;
            v71 = v65;
            _os_log_impl(&_mh_execute_header, v66, v67, "Requesting new Quick Look scene creation for item: %@ with activation activity: %@", v68, 0x16u);
            sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
            swift_arrayDestroy();
          }

          (*(v92 + 8))(v86, v93);
          v72 = [objc_opt_self() sharedApplication];
          v73 = swift_allocObject();
          v74 = v91;
          *(v73 + 16) = v91;
          v98 = sub_100051CBC;
          v99 = v73;
          v94 = _NSConcreteStackBlock;
          v95 = 1107296256;
          v96 = sub_100045D24;
          v97 = &unk_10008E808;
          v75 = _Block_copy(&v94);
          v76 = v63.super.isa;
          v77 = v74;

          [v72 _requestSceneSessionActivationWithConfiguration:v76 errorHandler:v75];

          _Block_release(v75);
          sub_10000A0F8(v84, v83);

          return sub_10000A0F8(v87, v88);
        }

        v54 = v35;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10000A0F8(v87, v88);
      }

      else
      {
        v31 = v27;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      static Logger.Application.getter();
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v57 = 136315394;
        *(v57 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v94);
        *(v57 + 12) = 2080;
        swift_getErrorValue();
        v58 = Error.localizedDescription.getter();
        v60 = sub_100005D28(v58, v59, &v94);

        *(v57 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v55, v56, "%s: Failed to encode FPItem in to data. Error: %s", v57, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v92 + 8))(v10, v93);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  static Logger.Application.getter();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v94 = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v94);
    _os_log_impl(&_mh_execute_header, v78, v79, "%s: items was empty.", v80, 0xCu);
    sub_100034948(v81);
  }

  return (*(v92 + 8))(v13, v93);
}

uint64_t sub_100051664(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = swift_allocObject();
  *(v48 + 16) = &_swiftEmptyArrayStorage;
  Current = CFAbsoluteTimeGetCurrent();
  v15 = dispatch_group_create();
  static Logger.Application.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = a1 >> 62;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, aBlock);
    *(v19 + 12) = 2048;
    if (v18)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v16, v17, "%s start preparing items from: %ld nodes", v19, 0x16u);
    sub_100034948(v20);
  }

  else
  {
  }

  (*(v10 + 8))(v13, v9);
  v47 = a1;
  if (v18)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = 0;
    v24 = v47 & 0xC000000000000001;
    v25 = v47 & 0xFFFFFFFFFFFFFF8;
    while (v24)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_16;
      }

LABEL_12:
      dispatch_group_enter(v15);
      swift_getObjectType();
      v28 = swift_allocObject();
      v28[2] = v15;
      v28[3] = v26;
      v28[4] = v48;
      v29 = v15;
      swift_unknownObjectRetain();

      DOCNode.fpfs_fetchFPItem(completion:)();
      swift_unknownObjectRelease();

      ++v23;
      if (v27 == i)
      {
        goto LABEL_19;
      }
    }

    if (v23 >= *(v25 + 16))
    {
      goto LABEL_17;
    }

    v26 = *(v47 + 8 * v23 + 32);
    swift_unknownObjectRetain();
    v27 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  v31[2] = Current;
  v32 = v39;
  v33 = v40;
  *(v31 + 3) = v48;
  *(v31 + 4) = v32;
  *(v31 + 5) = v33;
  aBlock[4] = sub_100051C9C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E790;
  v34 = _Block_copy(aBlock);

  v35 = v41;
  static DispatchQoS.unspecified.getter();
  v49 = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
  v36 = v43;
  v37 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v34);

  (*(v45 + 8))(v36, v37);
  (*(v42 + 8))(v35, v44);
}

void sub_100051CDC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10003EC28(v2, v3);
}

uint64_t sub_100051D48()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051E50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_100051FC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000520A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_100052120(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100044198(a1, v4);
}

void sub_1000521B0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 25);
  v9 = *(v2 + 32);
  v10 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_10003B160(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100052248()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052340()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100052418(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1000524E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100009C94(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10004B1B8(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_100009C94(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10004B460();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1000526E4()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 isFilesApp];

  if (!v3)
  {
    v6 = &enum case for ScanningError.appNotSupported(_:);
    goto LABEL_5;
  }

  v4 = [v1 configuration];
  v5 = [v4 isPickerUI];

  if (v5)
  {
    v6 = &enum case for ScanningError.pickerNotSupported(_:);
LABEL_5:
    v7 = type metadata accessor for ScanningError();
    sub_10005D97C(&qword_100093F08, &type metadata accessor for ScanningError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *v6, v7);
    return swift_willThrow();
  }

  type metadata accessor for DOCDocumentScannerUtil();
  if ((static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    v6 = &enum case for ScanningError.documentCameraNotSupported(_:);
    goto LABEL_5;
  }

  return static DOCDocumentScannerUtil.presentScanner(on:)();
}

void sub_100052884(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 currentLocationTitle];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

BOOL sub_10005293C(void *a1, uint64_t *a2)
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

void *sub_10005296C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100052998@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100052A70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10005F3F4(a1);

  *a2 = v3;
  return result;
}

void sub_100052AB0(int a1, void *a2)
{
  v52 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v48 - v10;
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  static Logger.Application.getter();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = v8;
    v18 = v17;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v18 = 136315394;
    *(v18 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v18 + 12) = 2080;
    v53 = *&v14[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v19 = v53;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100005D28(v20, v21, aBlock);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "[Interaction] %s %s", v18, 0x16u);
    swift_arrayDestroy();

    v8 = v51;
  }

  v23 = *(v4 + 8);
  v23(v13, v3);
  v24 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v25 = *&v14[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v25)
  {
    v26 = v25;
    static Logger.Application.getter();
    v27 = v14;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = v23;
      v31 = v30;
      v32 = swift_slowAlloc();
      v51 = v26;
      aBlock[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v31 + 12) = 2080;
      v53 = *&v14[v24];
      v33 = v53;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v34 = String.init<A>(describing:)();
      v36 = sub_100005D28(v34, v35, aBlock);
      v49 = v11;
      v37 = v3;
      v38 = v36;

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "[Interaction] %s calling dismiss on: %s", v31, 0x16u);
      swift_arrayDestroy();
      v26 = v51;

      v50(v49, v37);
    }

    else
    {

      v23(v11, v3);
    }

    v46 = *&v14[v24];
    *&v14[v24] = 0;

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F368;
    v47 = _Block_copy(aBlock);

    [v26 dismissViewControllerAnimated:v52 & 1 completion:v47];
    _Block_release(v47);
  }

  else
  {
    static Logger.Application.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v3;
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v41 = 136315138;
      *(v41 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "[Interaction] %s no current preview controller, calling completion immediately", v41, 0xCu);
      sub_100034948(v43);

      v44 = v8;
      v45 = v42;
    }

    else
    {

      v44 = v8;
      v45 = v3;
    }

    v23(v44, v45);
  }
}

void sub_100053084(int a1, void (*a2)(uint64_t), uint64_t a3)
{
  v64 = a2;
  v62 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  __chkstk_darwin(v11);
  v15 = (&v58 - v14);
  static Logger.Application.getter();
  v16 = v3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v63 = a3;
    v21 = v20;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v21 = 136315394;
    *(v21 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v21 + 12) = 2080;
    v65 = *&v16[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v22 = v65;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v23 = String.init<A>(describing:)();
    v25 = sub_100005D28(v23, v24, aBlock);
    v60 = v15;
    v26 = v18;
    v27 = v10;
    v28 = v16;
    v29 = v13;
    v30 = v6;
    v31 = v5;
    v32 = v25;
    p_ivars = (&QuickLookSceneDelegate + 48);

    *(v21 + 14) = v32;
    v5 = v31;
    v6 = v30;
    v13 = v29;
    v16 = v28;
    v10 = v27;
    _os_log_impl(&_mh_execute_header, v17, v26, "[Interaction] %s %s", v21, 0x16u);
    swift_arrayDestroy();

    a3 = v63;

    v33 = *(v6 + 8);
    v33(v60, v5);
  }

  else
  {

    v33 = *(v6 + 8);
    v33(v15, v5);
  }

  v34 = p_ivars[420];
  v35 = *(v34 + v16);
  if (v35)
  {
    v60 = v33;
    v61 = v6;
    v36 = v35;
    static Logger.Application.getter();
    v37 = v16;
    v38 = v16;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v63 = a3;
      v42 = v41;
      aBlock[0] = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v42 + 12) = 2080;
      v65 = *(v34 + v37);
      v43 = v65;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v44 = String.init<A>(describing:)();
      v59 = v5;
      v46 = sub_100005D28(v44, v45, aBlock);

      *(v42 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "[Interaction] %s calling dismiss on: %s", v42, 0x16u);
      swift_arrayDestroy();

      a3 = v63;

      v47 = v13;
      v48 = v59;
    }

    else
    {

      v47 = v13;
      v48 = v5;
    }

    v60(v47, v48);
    v56 = *(v34 + v37);
    *(v34 + v37) = 0;

    aBlock[4] = v64;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F2A0;
    v57 = _Block_copy(aBlock);

    [v36 dismissViewControllerAnimated:v62 & 1 completion:v57];
    _Block_release(v57);
  }

  else
  {
    static Logger.Application.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v33;
      v52 = swift_slowAlloc();
      v53 = v5;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "[Interaction] %s no current preview controller, calling completion immediately", v52, 0xCu);
      sub_100034948(v54);

      v55 = v51(v10, v53);
    }

    else
    {

      v55 = (v33)(v10, v5);
    }

    v64(v55);
  }
}

uint64_t sub_1000536A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for Logger();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for DOCBrowserHistoryShiftDirection();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v10 = type metadata accessor for NavigationDirection();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = *(*(sub_10000DB4C(&qword_100093FC8, &qword_100074698) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v14 = type metadata accessor for DOCBrowserHistoryShiftAmount();
  v3[27] = v14;
  v15 = *(v14 - 8);
  v3[28] = v15;
  v16 = *(v15 + 64) + 15;
  v3[29] = swift_task_alloc();
  v17 = type metadata accessor for DOCNavigationBar.Style();
  v3[30] = v17;
  v18 = *(v17 - 8);
  v3[31] = v18;
  v19 = *(v18 + 64) + 15;
  v3[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[33] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100053958, v21, v20);
}

uint64_t sub_100053958()
{
  v87 = v0;
  v1 = v0[33];
  v2 = v0[14];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v24 = type metadata accessor for DOCLinkDeferredLocalizedError();
    sub_10005D97C(&qword_100093FD0, &type metadata accessor for DOCLinkDeferredLocalizedError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for DOCLinkDeferredLocalizedError.actionNotSupported(_:), v24);
    swift_willThrow();
LABEL_10:
    v28 = v0[32];
    v29 = v0[29];
    v31 = v0[25];
    v30 = v0[26];
    v32 = v0[24];
    v34 = v0[20];
    v33 = v0[21];
    v35 = v0[17];

    v36 = v0[1];
    goto LABEL_11;
  }

  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = Strong;
  v8 = [v7 traitCollection];
  UITraitCollection.preferredNavigationBarStyle.getter();

  LOBYTE(v8) = DOCNavigationBar.Style.hasHistoryButtons.getter();
  (*(v5 + 8))(v4, v6);
  if ((v8 & 1) == 0)
  {

LABEL_9:
    v26 = type metadata accessor for DOCLinkDeferredLocalizedError();
    sub_10005D97C(&qword_100093FD0, &type metadata accessor for DOCLinkDeferredLocalizedError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for DOCLinkDeferredLocalizedError.actionNotSupported(_:), v26);
    swift_willThrow();

    goto LABEL_10;
  }

  v9 = [v7 presentedViewController];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();

    if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[13];
  (*(v0[28] + 104))(v0[29], enum case for DOCBrowserHistoryShiftAmount.one(_:), v0[27]);
  v18 = *(v16 + 56);
  v18(v11, 1, 1, v15);
  NavigateHistoryIntent.direction.getter();
  v19 = (*(v13 + 88))(v12, v14);
  if (v19 == enum case for NavigationDirection.back(_:))
  {
    v20 = v0[26];
    v21 = v0[18];
    v22 = v0[19];
    sub_100005A04(v20, &qword_100093FC8, &qword_100074698);
    v23 = &enum case for DOCBrowserHistoryShiftDirection.backward(_:);
LABEL_16:
    (*(v22 + 104))(v20, *v23, v21);
    v18(v20, 0, 1, v21);
    goto LABEL_18;
  }

  if (v19 == enum case for NavigationDirection.forward(_:))
  {
    v20 = v0[26];
    v21 = v0[18];
    v22 = v0[19];
    sub_100005A04(v20, &qword_100093FC8, &qword_100074698);
    v23 = &enum case for DOCBrowserHistoryShiftDirection.forward(_:);
    goto LABEL_16;
  }

  v39 = v0[23];
  v38 = v0[24];
  v40 = v0[22];
  v41 = v0[13];
  v0[5] = v40;
  sub_10000AE7C(v0 + 2);
  NavigateHistoryIntent.direction.getter();
  doc_warnUnrecognizedEnumValueEncountered(_:)();
  sub_100034948(v0 + 2);
  (*(v39 + 8))(v38, v40);
LABEL_18:
  v42 = v0[25];
  v43 = v0[18];
  v44 = v0[19];
  sub_100034850(v0[26], v42, &qword_100093FC8, &qword_100074698);
  v45 = *(v44 + 48);
  if (v45(v42, 1, v43) == 1)
  {
    sub_100005A04(v0[25], &qword_100093FC8, &qword_100074698);
LABEL_23:
    v58 = v0[17];
    static Logger.UI.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[26];
      v62 = v0[18];
      v63 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v63 = 136315394;
      *(v63 + 4) = sub_100005D28(0xD00000000000001ELL, 0x80000001000761E0, v86);
      *(v63 + 12) = 2080;
      swift_beginAccess();
      if (v45(v61, 1, v62))
      {
        v64 = 0xE200000000000000;
        v65 = 28526;
      }

      else
      {
        v70 = v0[19];
        v69 = v0[20];
        v71 = v0[18];
        (*(v70 + 16))(v69, v0[26], v71);
        v84 = DOCBrowserHistoryShiftDirection.description.getter();
        v64 = v72;
        (*(v70 + 8))(v69, v71);
        v65 = v84;
      }

      v73 = v0[16];
      v85 = v0[17];
      v74 = v0[15];
      v75 = sub_100005D28(v65, v64, v86);

      *(v63 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s Cannot perform navigation shift action with %s direction", v63, 0x16u);
      swift_arrayDestroy();

      (*(v73 + 8))(v85, v74);
    }

    else
    {
      v67 = v0[16];
      v66 = v0[17];
      v68 = v0[15];

      (*(v67 + 8))(v66, v68);
    }

    v76 = v0[12];
    v76[3] = sub_10000DB4C(&qword_100093FD8, &qword_1000746A0);
    v76[4] = sub_10005DFD4();
    sub_10000AE7C(v76);
    static IntentResult.result<>()();

    goto LABEL_30;
  }

  v46 = v0[29];
  (*(v0[19] + 32))(v0[21], v0[25], v0[18]);
  v47 = v7;
  v48 = [v47 effectiveFullBrowser];
  LOBYTE(v46) = DOCFullDocumentManagerViewController.canPerformHistoryShift(direction:amount:)();

  if ((v46 & 1) == 0)
  {
    v55 = v0[21];
    v56 = v0[18];
    v57 = v0[19];

    (*(v57 + 8))(v55, v56);
    goto LABEL_23;
  }

  v49 = v0[29];
  v50 = v0[21];
  v51 = v0[18];
  v52 = v0[19];
  v53 = v0[12];
  v54 = [v47 effectiveFullBrowser];

  DOCFullDocumentManagerViewController.performHistoryShift(direction:amount:)();
  v53[3] = sub_10000DB4C(&qword_100093FD8, &qword_1000746A0);
  v53[4] = sub_10005DFD4();
  sub_10000AE7C(v53);
  static IntentResult.result<>()();

  (*(v52 + 8))(v50, v51);
LABEL_30:
  v77 = v0[32];
  v78 = v0[26];
  v80 = v0[24];
  v79 = v0[25];
  v82 = v0[20];
  v81 = v0[21];
  v83 = v0[17];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_100005A04(v78, &qword_100093FC8, &qword_100074698);

  v36 = v0[1];
LABEL_11:

  return v36();
}

uint64_t sub_1000541CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_100054268, v5, v4);
}

uint64_t sub_100054268()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = [Strong effectiveFullBrowser];
    v0[12] = v4;
    v3[3] = sub_10000DB4C(&qword_100093FB8, &qword_100074680);
    v3[4] = swift_getOpaqueTypeConformance2();
    v5 = sub_10000AE7C(v3);
    v6 = async function pointer to SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_100054478;
    v8 = v0[6];

    return SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(v5, v4);
  }

  else
  {
    v9 = v0[8];

    v10 = type metadata accessor for DOCAppIntentsGenericError();
    sub_10005D97C(&qword_100093FA8, &type metadata accessor for DOCAppIntentsGenericError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DOCAppIntentsGenericError.performIntentError(_:), v10);
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100054478()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_100054604;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_100054594;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100054594()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100054604()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  sub_10005DED8(v3);
  v4 = *(v0 + 112);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10005468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_100054728, v5, v4);
}

uint64_t sub_100054728()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = [Strong effectiveFullBrowser];
    v0[12] = v4;
    v3[3] = sub_10000DB4C(&qword_100093FB0, &qword_100074678);
    v3[4] = swift_getOpaqueTypeConformance2();
    v5 = sub_10000AE7C(v3);
    v6 = async function pointer to SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_100054938;
    v8 = v0[6];

    return SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(v5, v4);
  }

  else
  {
    v9 = v0[8];

    v10 = type metadata accessor for DOCAppIntentsGenericError();
    sub_10005D97C(&qword_100093FA8, &type metadata accessor for DOCAppIntentsGenericError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DOCAppIntentsGenericError.performIntentError(_:), v10);
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100054938()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_10005FFF4;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_10005FFEC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100054A54(void *a1)
{
  v1 = [a1 effectiveFullBrowser];
  [v1 dismissSearch];

  return sub_100054AB0();
}

uint64_t sub_100054AB0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  return sub_1000526E4();
}

void sub_100054CE4(uint64_t a1, int a2, uint64_t a3)
{
  v51 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v49 = v9;
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100093F68, &qword_100074640);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v45 - v19;
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  v50 = v3;
  v23 = *(v3 + OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController);
  if (!v23 || ![v23 currentPreviewItem])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v32 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v52;
    (*(v7 + 16))(v52, a1, v6);
    v38 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    (*(v7 + 32))(v40 + v38, v37, v6);
    v41 = v40 + v39;
    *v41 = a3;
    *(v41 + 8) = v51 & 1;
    aBlock[4] = sub_10005D8C4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001D16C;
    aBlock[3] = &unk_10008F1D8;
    v42 = _Block_copy(aBlock);

    [v32 fetchItemForURL:v35 completionHandler:v42];
    _Block_release(v42);

    return;
  }

  v46 = a3;
  v47 = a1;
  v25 = [v24 previewItemURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v7 + 56);
    v27(v22, 0, 1, v6);
  }

  else
  {
    v27 = *(v7 + 56);
    v27(v22, 1, 1, v6);
  }

  (*(v7 + 16))(v20, v47, v6);
  v27(v20, 0, 1, v6);
  v28 = *(v10 + 48);
  sub_100034850(v22, v13, &qword_100093F50, &qword_100074090);
  sub_100034850(v20, &v13[v28], &qword_100093F50, &qword_100074090);
  v29 = *(v7 + 48);
  if (v29(v13, 1, v6) == 1)
  {
    swift_unknownObjectRelease();
    sub_100005A04(v20, &qword_100093F50, &qword_100074090);
    sub_100005A04(v22, &qword_100093F50, &qword_100074090);
    if (v29(&v13[v28], 1, v6) == 1)
    {
      sub_100005A04(v13, &qword_100093F50, &qword_100074090);
      return;
    }

    goto LABEL_13;
  }

  v30 = v28;
  v31 = v48;
  sub_100034850(v13, v48, &qword_100093F50, &qword_100074090);
  v45 = v30;
  if (v29(&v13[v30], 1, v6) == 1)
  {
    swift_unknownObjectRelease();
    sub_100005A04(v20, &qword_100093F50, &qword_100074090);
    sub_100005A04(v22, &qword_100093F50, &qword_100074090);
    (*(v7 + 8))(v31, v6);
LABEL_13:
    sub_100005A04(v13, &qword_100093F68, &qword_100074640);
    a3 = v46;
    a1 = v47;
    goto LABEL_14;
  }

  v43 = v52;
  (*(v7 + 32))(v52, &v13[v45], v6);
  sub_10005D97C(&qword_100093F70, &type metadata accessor for URL);
  LODWORD(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  swift_unknownObjectRelease();
  v44 = *(v7 + 8);
  v44(v43, v6);
  sub_100005A04(v20, &qword_100093F50, &qword_100074090);
  sub_100005A04(v22, &qword_100093F50, &qword_100074090);
  v44(v48, v6);
  sub_100005A04(v13, &qword_100093F50, &qword_100074090);
  a3 = v46;
  a1 = v47;
  if ((v45 & 1) == 0)
  {
    goto LABEL_14;
  }
}

void sub_1000553A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v66 = a6;
  v68 = a4;
  v8 = type metadata accessor for URL();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v65 = v10;
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000DB4C(&qword_100093F68, &qword_100074640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v15 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v59 - v21;
  __chkstk_darwin(v20);
  v24 = &v59 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = *(Strong + OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController);
    v64 = v26;
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = [v27 currentPreviewItem];
    if (!v28)
    {
      goto LABEL_24;
    }

    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (!v30)
    {
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = v69;
      v49 = v67;
      (*(v69 + 16))(v67, v68, v8);
      v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
      v51 = (v50 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = a1;
      v53 = (v50 + v65 + 23) & 0xFFFFFFFFFFFFFFF8;
      v54 = a5;
      v55 = swift_allocObject();
      *(v55 + 16) = v47;
      v56 = v49;
      v26 = v64;
      (*(v48 + 32))(v55 + v50, v56, v8);
      v57 = v55 + v51;
      *v57 = v54;
      *(v57 + 8) = v66 & 1;
      *(v55 + v53) = v52;

      v58 = v52;

      DOCRunInMainThread(_:)();

      goto LABEL_25;
    }

    v63 = v29;
    v59 = v30;
    v60 = a5;
    v31 = [v30 previewItemURL];
    v61 = a1;
    if (v31)
    {
      v32 = v31;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = v69;
    v35 = *(v69 + 56);
    v35(v24, v33, 1, v8);
    (*(v34 + 16))(v22, v68, v8);
    v35(v22, 0, 1, v8);
    v36 = *(v11 + 48);
    sub_100034850(v24, v14, &qword_100093F50, &qword_100074090);
    v62 = v36;
    sub_100034850(v22, &v14[v36], &qword_100093F50, &qword_100074090);
    v37 = *(v34 + 48);
    if (v37(v14, 1, v8) == 1)
    {
      sub_100005A04(v22, &qword_100093F50, &qword_100074090);
      sub_100005A04(v24, &qword_100093F50, &qword_100074090);
      if (v37(&v14[v62], 1, v8) == 1)
      {
        sub_100005A04(v14, &qword_100093F50, &qword_100074090);
LABEL_19:
        swift_unknownObjectRelease();
LABEL_25:

        return;
      }
    }

    else
    {
      sub_100034850(v14, v19, &qword_100093F50, &qword_100074090);
      v38 = v62;
      if (v37(&v14[v62], 1, v8) != 1)
      {
        v43 = v69;
        v44 = v67;
        (*(v69 + 32))(v67, &v14[v38], v8);
        sub_10005D97C(&qword_100093F70, &type metadata accessor for URL);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *(v43 + 8);
        v46(v44, v8);
        sub_100005A04(v22, &qword_100093F50, &qword_100074090);
        sub_100005A04(v24, &qword_100093F50, &qword_100074090);
        v46(v19, v8);
        v26 = v64;
        sub_100005A04(v14, &qword_100093F50, &qword_100074090);
        a1 = v61;
        if (v45)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      sub_100005A04(v22, &qword_100093F50, &qword_100074090);
      sub_100005A04(v24, &qword_100093F50, &qword_100074090);
      (*(v69 + 8))(v19, v8);
    }

    sub_100005A04(v14, &qword_100093F68, &qword_100074640);
    a1 = v61;
LABEL_14:
    v39 = [v59 fpItem];
    if (!v39)
    {
      swift_unknownObjectRelease();
      a5 = v60;
      if (!a1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v40 = v39;
    if (a1)
    {
      sub_100002B84(0, &qword_100093F78, FPItem_ptr);
      v41 = a1;
      v42 = static NSObject.== infix(_:_:)();

      swift_unknownObjectRelease();
      a5 = v60;
      if (v42)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    a5 = v60;
    goto LABEL_23;
  }
}

void sub_100055A90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = a4;
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v15, v12, v9);
    *(v17 + v16) = v14;
    v18 = v17 + v22;
    *v18 = a3;
    *(v18 + 8) = v23 & 1;
    *(v17 + ((v16 + 31) & 0xFFFFFFFFFFFFFFF8)) = a5;
    v19 = a5;
    v20 = v14;

    sub_100053084(0, sub_10005DA68, v17);
  }
}

void sub_100055C6C(uint64_t a1, char *a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v14 = objc_opt_self();
    v15 = a5;
    v27 = a3;
    v28 = v15;
    v29 = [v14 defaultPermission];
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v16, v13, v10);
    v19 = a2;
    *(v18 + v17) = a2;
    v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = v28;
    *v20 = v27;
    *(v20 + 8) = a4 & 1;
    *(v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8)) = v21;
    aBlock[4] = sub_10005DBD8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F278;
    v22 = _Block_copy(aBlock);

    v23 = v21;
    v24 = v19;

    v25 = v29;
    [v29 adoptPersonaFromNode:v23 andPerformBlock:v22];
    _Block_release(v22);
  }

  else
  {

    sub_100055F10(0, a1, a2, a3, a4 & 1);
  }
}

void sub_100055F10(void *a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  v87 = a5;
  v83 = a2;
  v84 = a4;
  v86 = a3;
  v6 = type metadata accessor for DOCPreviewRouter.InAppContext();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  __chkstk_darwin(v6);
  v88 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v78 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DOCPreviewSource();
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  __chkstk_darwin(v23);
  v26 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (&v78 - v26);
  if (a1)
  {
    sub_10000DB4C(&qword_100093F90, &qword_100074650);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000742D0;
    *(v28 + 32) = a1;
  }

  else
  {
    v78 = v22;
    v79 = v19;
    v80 = v18;
    v81 = (&v78 - v26);
    v82 = v23;
    v29 = v83;
    URL._bridgeToObjectiveC()(v26);
    v31 = v30;
    v32 = [objc_opt_self() fiNodeFromURL:v30];

    if (!v32)
    {
      v66 = v78;
      static Logger.UI.getter();
      v67 = v14;
      v68 = v66;
      (*(v67 + 16))(v17, v29, v13);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v91[0] = v72;
        *v71 = 136315138;
        sub_10005D97C(&unk_1000937B0, &type metadata accessor for URL);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v17;
        v76 = v75;
        (*(v67 + 8))(v74, v13);
        v77 = sub_100005D28(v73, v76, v91);

        *(v71 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unable to present Quick Look for %s", v71, 0xCu);
        sub_100034948(v72);
      }

      else
      {

        (*(v67 + 8))(v17, v13);
      }

      (*(v79 + 8))(v68, v80);
      return;
    }

    sub_10000DB4C(&qword_100093F90, &qword_100074650);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000742D0;
    *(v28 + 32) = v32;
    v27 = v81;
    v23 = v82;
  }

  *v27 = v28;
  v33 = v85;
  (*(v85 + 104))(v27, enum case for DOCPreviewSource.nodes(_:), v23);
  v34 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v35 = a1;
  v36 = DOCPreviewController.init()();
  (*(v33 + 16))(v12, v27, v23);
  v37 = v23;
  (*(v33 + 56))(v12, 0, 1, v23);
  dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();
  sub_100005A04(v12, &unk_100093F80, &qword_100074648);
  v38 = v86;
  [v36 setDelegate:v86];
  v39 = [v38 effectiveFullBrowser];
  v40 = [v39 documentManager];

  dispatch thunk of DOCPreviewController.editingDelegate.setter();
  v41 = [v38 effectiveFullBrowser];
  v42 = [v41 configuration];

  dispatch thunk of DOCPreviewController.configuration.setter();
  v43 = [v38 effectiveFullBrowser];
  v44 = [v43 actionManager];

  dispatch thunk of DOCPreviewController.actionManager.setter();
  v45 = v36;
  v46 = [v45 userActivity];
  if (!v46)
  {
    v47 = *&v38[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
    v48 = *&v38[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier + 8];
    v49 = objc_allocWithZone(NSUserActivity);
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 initWithActivityType:v50];

    [v45 setUserActivity:v51];
    v46 = v51;
  }

  v52 = [v45 userActivity];
  v53 = v88;
  if (v52)
  {
    if (v84)
    {
      v54.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v54.super.isa = 0;
    }

    [v52 setUserInfo:v54.super.isa];
  }

  v55 = v45;
  [v55 setAlwaysDisplayPreviewItemTitle:1];
  type metadata accessor for DOCPreviewRouter();
  static DOCPreviewRouter.shared.getter();
  v56 = v38;
  DOCPreviewRouter.InAppContext.init(animated:presentingVC:)();
  dispatch thunk of DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)();
  if (DOCPreviewRouter.presentsInExternalApp.getter())
  {

    (*(v89 + 8))(v53, v90);
    (*(v33 + 8))(v27, v37);
  }

  else
  {
    v57 = *&v56[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    *&v56[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = v55;

    sub_100005BC0(v91);
    v58 = v92;
    if (v92)
    {
      v59 = v93;
      sub_100006C6C(v91, v92);
      (*(v59 + 32))(v58, v59);
      sub_100034948(v91);
    }

    else
    {
      sub_100005A04(v91, &unk_100093F30, &unk_1000745C8);
    }

    sub_100005BC0(v91);
    v60 = v92;
    if (v92)
    {
      v61 = v93;
      sub_100006C6C(v91, v92);
      (*(v61 + 24))(v60, v61);
      sub_100034948(v91);
    }

    else
    {
      sub_100005A04(v91, &unk_100093F30, &unk_1000745C8);
    }

    sub_100005BC0(v91);
    v62 = v92;
    if (v92)
    {
      v63 = v93;
      sub_100006C6C(v91, v92);
      (*(v63 + 40))(v62, v63);
      sub_100034948(v91);
    }

    else
    {
      sub_100005A04(v91, &unk_100093F30, &unk_1000745C8);
    }

    v91[0] = v55;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    (*(v89 + 8))(v53, v90);
    (*(v33 + 8))(v27, v37);

    v65 = *&v56[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
    *&v56[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = v64;
  }
}

uint64_t sub_100056938()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100005BC0(v12);

    v2 = v13;
    if (v13)
    {
      v3 = v14;
      sub_100006C6C(v12, v13);
      (*(v3 + 32))(v2, v3);
      sub_100034948(v12);
    }

    else
    {
      sub_100005A04(v12, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_100005BC0(v12);

    v6 = v13;
    if (v13)
    {
      v7 = v14;
      sub_100006C6C(v12, v13);
      (*(v7 + 24))(v6, v7);
      sub_100034948(v12);
    }

    else
    {
      sub_100005A04(v12, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_100005BC0(v12);

    v10 = v13;
    if (v13)
    {
      v11 = v14;
      sub_100006C6C(v12, v13);
      (*(v11 + 40))(v10, v11);
      return sub_100034948(v12);
    }

    else
    {
      return sub_100005A04(v12, &unk_100093F30, &unk_1000745C8);
    }
  }

  return result;
}

uint64_t sub_100056B0C(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v51 = a5;
  v55 = a4;
  v52 = a2;
  v53 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v50 = &v50 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v50 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() supportsQuickLookInSharedWindow];
  sub_100034850(a1, v22, &qword_100093F50, &qword_100074090);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100005A04(v22, &qword_100093F50, &qword_100074090);
    static Logger.Application.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "[Interaction] Attempted to quick look a nil url. Ignoring", v30, 2u);
    }

    return (*(v57 + 8))(v11, v56);
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    if (v53)
    {
      static Logger.Application.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v24;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v58);
        _os_log_impl(&_mh_execute_header, v32, v33, "[Interaction] %s openInWindow: true", v35, 0xCu);
        sub_100034948(v36);

        v24 = v34;
      }

      (*(v57 + 8))(v18, v56);
      sub_1000591C0(v27, v55 & 1);
    }

    else
    {
      v37 = v54;
      if (v55)
      {
        static Logger.Application.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = v24;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v58 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v58);
          _os_log_impl(&_mh_execute_header, v38, v39, "[Interaction] %s sharedPreview: true", v41, 0xCu);
          sub_100034948(v42);

          v24 = v40;
        }

        (*(v57 + 8))(v16, v56);
        v43 = v37;
        sub_10005C6C4(0, v43, v43, v52 & 1);
      }

      else
      {
        v44 = v50;
        static Logger.Application.getter();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = v24;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v58 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v58);
          _os_log_impl(&_mh_execute_header, v45, v46, "[Interaction] %s preview", v48, 0xCu);
          sub_100034948(v49);

          v24 = v47;
        }

        (*(v57 + 8))(v44, v56);
        sub_100054CE4(v27, v52 & 1, v51);
      }
    }

    return (*(v24 + 8))(v27, v23);
  }
}

void sub_10005717C(void *a1)
{
  v2 = type metadata accessor for DOCPreviewRouter.InAppContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCPreviewController();
  v7 = [a1 configuration];
  v8 = [v7 sceneIdentifier];

  v9 = static DOCPreviewController.sharedController(for:)();
  if (v9)
  {
    [v9 setDelegate:a1];
    v10 = [a1 effectiveFullBrowser];
    v11 = [v10 documentManager];

    dispatch thunk of DOCPreviewController.editingDelegate.setter();
    v12 = [a1 effectiveFullBrowser];
    v13 = [v12 configuration];

    dispatch thunk of DOCPreviewController.configuration.setter();
    v14 = [a1 effectiveFullBrowser];
    v15 = [v14 actionManager];

    dispatch thunk of DOCPreviewController.actionManager.setter();
    v16 = a1;
    DOCPreviewRouter.InAppContext.init(animated:presentingVC:)();
    type metadata accessor for DOCPreviewRouter();
    static DOCPreviewRouter.shared.getter();
    *(swift_allocObject() + 16) = v16;
    v17 = v16;
    dispatch thunk of DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)();

    if (DOCPreviewRouter.presentsInExternalApp.getter())
    {
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v18 = *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
      *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = v9;
      v19 = v9;

      sub_100005BC0(v32);
      v20 = v33;
      if (v33)
      {
        v21 = v34;
        sub_100006C6C(v32, v33);
        (*(v21 + 32))(v20, v21);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      sub_100005BC0(v32);
      v22 = v33;
      if (v33)
      {
        v23 = v34;
        sub_100006C6C(v32, v33);
        (*(v23 + 24))(v22, v23);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      sub_100005BC0(v32);
      v24 = v33;
      if (v33)
      {
        v25 = v34;
        sub_100006C6C(v32, v33);
        (*(v25 + 40))(v24, v25);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      v32[0] = v19;
      swift_getKeyPath();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v29 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*(v3 + 8))(v6, v2);

      v30 = *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
      *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = v29;
    }
  }
}

void sub_10005766C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10005D8BC;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100002DB0;
  v6[3] = &unk_10008F188;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 performAfterCATransactionCommits:v4];
  _Block_release(v4);
}

uint64_t sub_100057754(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:DOCQLPreviewFinishLoadingNotificationName object:a1];

  sub_100005BC0(v10);
  v3 = v11;
  if (v11)
  {
    v4 = v12;
    sub_100006C6C(v10, v11);
    (*(v4 + 32))(v3, v4);
    sub_100034948(v10);
  }

  else
  {
    sub_100005A04(v10, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v10);
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    sub_100006C6C(v10, v11);
    (*(v6 + 24))(v5, v6);
    sub_100034948(v10);
  }

  else
  {
    sub_100005A04(v10, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v10);
  v7 = v11;
  if (!v11)
  {
    return sub_100005A04(v10, &unk_100093F30, &unk_1000745C8);
  }

  v8 = v12;
  sub_100006C6C(v10, v11);
  (*(v8 + 40))(v7, v8);
  return sub_100034948(v10);
}

uint64_t sub_100057900(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a2;
  v6 = sub_10000DB4C(&qword_100093F58, &qword_100074630);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v61 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  static Logger.Application.getter();
  v19 = *(v7 + 16);
  v20 = v70;
  v70 = v6;
  v66 = v19;
  v19(v12, v20, v6);

  v21 = v18;
  v22 = Logger.logObject.getter();
  LODWORD(v6) = static os_log_type_t.info.getter();
  v68 = a3;

  v69 = v6;
  if (os_log_type_enabled(v22, v6))
  {
    v62 = v22;
    v63 = v17;
    v64 = v14;
    v65 = v13;
    v23 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v73[0] = v61;
    *v23 = 136316162;
    *(v23 + 4) = sub_100005D28(0xD000000000000022, 0x80000001000761B0, v73);
    *(v23 + 12) = 2080;
    v24 = v21;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100005D28(v26, v28, v73);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = v70;
    v66(v67, v12, v70);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    (*(v7 + 8))(v12, v30);
    v34 = sub_100005D28(v31, v33, v73);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      v37 = [Strong isBeingPresented];
    }

    else
    {
      v37 = 2;
    }

    v72 = v37;
    sub_10000DB4C(&qword_100093F60, &qword_100074638);
    v38 = String.init<A>(describing:)();
    v40 = sub_100005D28(v38, v39, v73);

    *(v23 + 34) = v40;
    *(v23 + 42) = 2080;
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 isBeingDismissed];
    }

    else
    {
      v43 = 2;
    }

    v44 = v64;
    v72 = v43;
    v45 = String.init<A>(describing:)();
    v47 = sub_100005D28(v45, v46, v73);

    *(v23 + 44) = v47;
    v48 = v62;
    _os_log_impl(&_mh_execute_header, v62, v69, "[Interaction] %s shared Quick Look currentPreviewItemIndex itemChangeObserver observed object: %s change: %s QLVC isBeingPresented: %s isBeingDismissed: %s", v23, 0x34u);
    swift_arrayDestroy();

    (*(v44 + 8))(v63, v65);
  }

  else
  {

    (*(v7 + 8))(v12, v70);
    (*(v14 + 8))(v17, v13);
  }

  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    sub_100005BC0(v73);

    v51 = v74;
    if (v74)
    {
      v52 = v75;
      sub_100006C6C(v73, v74);
      (*(v52 + 32))(v51, v52);
      sub_100034948(v73);
    }

    else
    {
      sub_100005A04(v73, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = v53;
    sub_100005BC0(v73);

    v55 = v74;
    if (v74)
    {
      v56 = v75;
      sub_100006C6C(v73, v74);
      (*(v56 + 24))(v55, v56);
      sub_100034948(v73);
    }

    else
    {
      sub_100005A04(v73, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = result;
    sub_100005BC0(v73);

    v59 = v74;
    if (v74)
    {
      v60 = v75;
      sub_100006C6C(v73, v74);
      (*(v60 + 40))(v59, v60);
      return sub_100034948(v73);
    }

    else
    {
      return sub_100005A04(v73, &unk_100093F30, &unk_1000745C8);
    }
  }

  return result;
}

void sub_100057FE0(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      static Logger.UI.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (opened in an other app)", v17, 2u);
      }

      (*(v6 + 8))(v9, v5);
      type metadata accessor for DOCInteractionManager();
      v18 = [v14 configuration];
      v19 = [v18 sceneIdentifier];

      v20 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
    }

    else
    {
      (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
      v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v22 = swift_allocObject();
      (*(v11 + 32))(v22 + v21, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v23 = v14;
      DOCRunInMainThread(_:)();
    }
  }
}

void sub_1000582D4(uint64_t a1, void *a2)
{
  v83 = a1;
  v84 = a2;
  v2 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v79 - v4;
  v6 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v79 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v79 - v17;
  v19 = __chkstk_darwin(v16);
  v79 = &v79 - v20;
  __chkstk_darwin(v19);
  v22 = &v79 - v21;
  static Logger.UI.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "[Interaction] update scene activation conditions", v25, 2u);
  }

  v26 = *(v11 + 8);
  v81 = v11 + 8;
  v82 = v10;
  v80 = v26;
  v26(v22, v10);
  v27 = objc_opt_self();
  if ([v27 supportsQuickLookInSharedWindow] && (v28 = objc_msgSend(objc_opt_self(), "sharedApplication"), v29 = objc_msgSend(v28, "supportsMultipleScenes"), v28, v29) && (v30 = sub_10006254C()) != 0)
  {
    v31 = v30;
    if ([v30 delegate])
    {
      type metadata accessor for QuickLookSceneDelegate();
      if (swift_dynamicCastClass())
      {
        sub_10000DB4C(&unk_100093C40, "&+");
        v32 = v31;
        v33 = type metadata accessor for URL();
        v34 = *(v33 - 8);
        v35 = *(v34 + 72);
        v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_100073FE0;
        (*(v34 + 16))(v37 + v36, v83, v33);
        sub_100065908(v37);
        swift_setDeallocating();
        (*(v34 + 8))(v37 + v36, v33);
        swift_deallocClassInstance();
        v38 = v84;
        v39 = [v84 viewIfLoaded];
        v40 = [v39 window];

        v41 = [v40 windowScene];
        sub_1000620FC(v32, v41);

        type metadata accessor for DOCInteractionManager();
        v42 = [v38 configuration];
        v43 = [v42 sceneIdentifier];

        v44 = static DOCInteractionManager.sharedManager(for:)();
        dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

        v45 = v79;
        static Logger.UI.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing window scene) ", v48, 2u);
        }

        swift_unknownObjectRelease();
        v49 = v45;
        v50 = v82;
LABEL_16:
        v80(v49, v50);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v51 = [objc_opt_self() sharedApplication];
    v52 = [v51 supportsMultipleScenes];

    if (v52)
    {
      sub_10005A36C(v83);
      if (v53)
      {
        v54 = v53;
        v55 = v84;
        v56 = [v84 viewIfLoaded];
        v57 = [v56 window];

        v58 = [v57 windowScene];
        sub_1000620FC(v54, v58);

        type metadata accessor for DOCInteractionManager();
        v59 = [v55 configuration];
        v60 = [v59 sceneIdentifier];

        v61 = static DOCInteractionManager.sharedManager(for:)();
        dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

        static Logger.UI.getter();
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v82;
        if (v64)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing scene)", v66, 2u);
        }

        v49 = v18;
        v50 = v65;
        goto LABEL_16;
      }
    }

    v67 = [v84 viewIfLoaded];
    v68 = [v67 window];

    v69 = [v68 windowScene];
    v70 = v82;
    if (v69 && (URL.contentType.getter(), v71 = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(), v69, sub_100005A04(v9, &qword_100093BF0, &qword_100074440), (v71 & 1) != 0))
    {
      v72 = [v27 supportsQuickLookInSharedWindow];
      v73 = 1;
    }

    else
    {
      v73 = 0;
      v72 = 1;
    }

    static Logger.UI.getter();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "[Interaction] Opening in Quick Look", v76, 2u);
    }

    v80(v15, v70);
    v77 = type metadata accessor for URL();
    v78 = *(v77 - 8);
    (*(v78 + 16))(v5, v83, v77);
    (*(v78 + 56))(v5, 0, 1, v77);
    sub_100056B0C(v5, 1, v73, v72, 0);
    sub_100005A04(v5, &qword_100093F50, &qword_100074090);
  }
}

void sub_100058BE4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      type metadata accessor for DOCInteractionManager();
      v15 = [v14 configuration];
      v16 = [v15 sceneIdentifier];

      v17 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

      static Logger.UI.getter();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickImportedURLs: (opened in an other app)", v20, 2u);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
      v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      (*(v11 + 32))(v22 + v21, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      v23 = v14;
      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t sub_100058EE4(void *a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = [a1 viewIfLoaded];
  v13 = [v12 window];

  v14 = [v13 windowScene];
  if (v14)
  {
    URL.contentType.getter();
    v15 = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)();

    sub_100005A04(v11, &qword_100093BF0, &qword_100074440);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() supportsQuickLookInSharedWindow];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a2, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  sub_100056B0C(v7, 1, v15 & 1, v16, 0);
  return sub_100005A04(v7, &qword_100093F50, &qword_100074090);
}

uint64_t sub_100059134(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for URL();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_1000591C0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100005BC0(v18);
  if (v19)
  {
    sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
    type metadata accessor for BrowserSceneDelegate();
    if (swift_dynamicCast())
    {
      v10 = v17;
      type metadata accessor for DOCInteractionManager();
      v11 = [v2 configuration];
      v12 = [v11 sceneIdentifier];

      v13 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

      static Logger.UI.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing scene)", v16, 2u);
      }

      (*(v6 + 8))(v9, v5);
      sub_10003D920(a1, a2 & 1);
    }
  }

  else
  {
    sub_100005A04(v18, &unk_100093F30, &unk_1000745C8);
  }
}

uint64_t sub_1000593F8(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v35 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v12 = 136315650;
    *(v12 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100076190, &v36);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    *(v12 + 22) = 2080;
    v14 = v8;
    sub_100005BC0(v37);
    v15 = v38;
    if (v38)
    {
      v16 = v39;
      sub_100006C6C(v37, v38);
      v17 = (*(v16 + 8))(v15, v16);
      v15 = v18;
      sub_100034948(v37);
    }

    else
    {
      sub_100005A04(v37, &unk_100093F30, &unk_1000745C8);
      v17 = 0;
    }

    v37[0] = v17;
    v37[1] = v15;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100005D28(v19, v20, &v36);

    *(v12 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Interaction] %s controller: %@ scene: %s", v12, 0x20u);
    sub_100005A04(v13, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    (*(v4 + 8))(v7, v35);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  type metadata accessor for DOCInteractionManager();
  v22 = [v9 configuration];
  v23 = [v22 sceneIdentifier];

  v24 = static DOCInteractionManager.sharedManager(for:)();
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

  v25 = *&v9[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
  *&v9[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;

  v26 = *&v9[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  *&v9[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;

  sub_100005BC0(v37);
  v27 = v38;
  if (v38)
  {
    v28 = v39;
    sub_100006C6C(v37, v38);
    (*(v28 + 32))(v27, v28);
    sub_100034948(v37);
  }

  else
  {
    sub_100005A04(v37, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v37);
  v29 = v38;
  if (v38)
  {
    v30 = v39;
    sub_100006C6C(v37, v38);
    (*(v30 + 24))(v29, v30);
    sub_100034948(v37);
  }

  else
  {
    sub_100005A04(v37, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v37);
  v31 = v38;
  if (!v38)
  {
    return sub_100005A04(v37, &unk_100093F30, &unk_1000745C8);
  }

  v32 = v39;
  sub_100006C6C(v37, v38);
  (*(v32 + 40))(v31, v32);
  return sub_100034948(v37);
}

id sub_100059D9C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  if (a1)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for DRIMainViewController();
  v7 = objc_msgSendSuper2(&v9, "initForOpeningFilesWithContentTypes:", v6.super.isa);

  return v7;
}

id sub_100059F00(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DRIMainViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10005A06C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DRIMainViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005A36C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v97 = &v87 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v87 - v10;
  __chkstk_darwin(v9);
  v13 = &v87 - v12;
  v14 = type metadata accessor for URL();
  v114[3] = v14;
  v114[4] = &off_10008EFC0;
  v15 = sub_10000AE7C(v114);
  v16 = *(*(v14 - 8) + 16);
  v94 = v15;
  v16(v15, a1, v14);
  static Logger.Application.getter();
  sub_100034994(v114, v115);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v98 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *&v108 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100076230, &v108);
    *(v20 + 12) = 2080;
    sub_100006C6C(v115, v116);
    v111[0] = URL.absoluteString.getter();
    v111[1] = v21;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100034948(v115);
    v25 = sub_100005D28(v22, v24, &v108);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s identifier: %s", v20, 0x16u);
    swift_arrayDestroy();

    v101 = *(v3 + 8);
    v101(v13, v2);
  }

  else
  {

    v101 = *(v3 + 8);
    v101(v13, v2);
    sub_100034948(v115);
  }

  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 connectedScenes];

  v28 = sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_10005FD68();
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v102 = v2;
  v103 = v28;
  if ((v29 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v29 = v115[0];
    v31 = v115[1];
    v32 = v115[2];
    v33 = v116;
    v34 = v117;
  }

  else
  {
    v33 = 0;
    v35 = -1 << *(v29 + 32);
    v31 = v29 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v29 + 56);
  }

  v99 = v32;
  v38 = (v32 + 64) >> 6;
  v39 = v3 + 8;
  v96 = "ntManager.qlActivity";
  *&v30 = 136315394;
  v95 = v30;
  if ((v29 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v40 = __CocoaSet.Iterator.next()();
  if (v40)
  {
    *&v108 = v40;
    swift_dynamicCast();
    v41 = v111[0];
    v42 = v33;
    v43 = v34;
    if (v111[0])
    {
      while (1)
      {
        v46 = [v41 delegate];
        if (!v46)
        {
          break;
        }

        v104 = v33;
        v105 = v46;
        sub_10000DB4C(&qword_100093F48, qword_1000745E8);
        sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v110 = 0;
          v108 = 0u;
          v109 = 0u;
LABEL_27:

LABEL_28:
          sub_100005A04(&v108, &unk_100093F30, &unk_1000745C8);
          v33 = v42;
          v34 = v43;
          if (v29 < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }

        if (!*(&v109 + 1))
        {
          goto LABEL_27;
        }

        v100 = v29;
        sub_1000349F8(&v108, v111);
        v47 = v112;
        v48 = v113;
        sub_100006C6C(v111, v112);
        v49 = (*(v48 + 8))(v47, v48);
        if (v50)
        {
          v51 = v50;
          v93 = v49;
          v52 = v97;
          static Logger.Application.getter();
          sub_100034994(v114, &v108);
          v53 = Logger.logObject.getter();
          v91 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v53, v91))
          {
            v54 = swift_slowAlloc();
            v88 = v53;
            v55 = v54;
            v89 = swift_slowAlloc();
            v107 = v89;
            *v55 = v95;
            *(v55 + 4) = sub_100005D28(0xD000000000000018, v96 | 0x8000000000000000, &v107);
            *(v55 + 12) = 2080;
            sub_100006C6C(&v108, *(&v109 + 1));
            v105 = URL.absoluteString.getter();
            v106 = v56;
            sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
            v57 = String.init<A>(describing:)();
            v90 = v39;
            v59 = v58;
            sub_100034948(&v108);
            v60 = sub_100005D28(v57, v59, &v107);

            *(v55 + 14) = v60;
            v61 = v88;
            _os_log_impl(&_mh_execute_header, v88, v91, "%s scene identifier: %s", v55, 0x16u);
            swift_arrayDestroy();
            v39 = v90;

            v101(v97, v102);
          }

          else
          {

            v101(v52, v102);
            sub_100034948(&v108);
          }

          if (URL.absoluteString.getter() == v93 && v51 == v62)
          {

LABEL_41:
            v90 = v39;
            v73 = v92;
            static Logger.Application.getter();
            sub_100034994(v114, &v108);
            v74 = v41;
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v107 = v103;
              *v77 = 136315906;
              *(v77 + 4) = sub_100005D28(0xD000000000000018, v96 | 0x8000000000000000, &v107);
              *(v77 + 12) = 2080;
              sub_100006C6C(&v108, *(&v109 + 1));
              LODWORD(v98) = v76;
              v105 = URL.absoluteString.getter();
              v106 = v79;
              sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
              v80 = String.init<A>(describing:)();
              v82 = v81;
              sub_100034948(&v108);
              v83 = sub_100005D28(v80, v82, &v107);

              *(v77 + 14) = v83;
              *(v77 + 22) = 2112;
              *(v77 + 24) = v74;
              *v78 = v41;
              *(v77 + 32) = 2080;
              v105 = [v74 delegate];
              sub_10000DB4C(&qword_100094000, qword_1000746A8);
              v84 = String.init<A>(describing:)();
              v86 = sub_100005D28(v84, v85, &v107);

              *(v77 + 34) = v86;
              _os_log_impl(&_mh_execute_header, v75, v98, "%s SUCCESS for identifier: %s windowScene: %@ delegate: %s", v77, 0x2Au);
              sub_100005A04(v78, &qword_1000937D0, &unk_1000743F0);

              swift_arrayDestroy();

              sub_100052240();

              v101(v73, v102);
            }

            else
            {
              sub_100052240();

              v101(v73, v102);
              sub_100034948(&v108);
            }

            sub_100034948(v111);
            goto LABEL_39;
          }

          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v63)
          {
            goto LABEL_41;
          }
        }

        sub_100034948(v111);
        v33 = v42;
        v34 = v43;
        v29 = v100;
        if (v100 < 0)
        {
          goto LABEL_11;
        }

LABEL_14:
        v44 = v33;
        v45 = v34;
        v42 = v33;
        if (!v34)
        {
          while (1)
          {
            v42 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v42 >= v38)
            {
              goto LABEL_36;
            }

            v45 = *(v31 + 8 * v42);
            ++v44;
            if (v45)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return;
        }

LABEL_18:
        v43 = (v45 - 1) & v45;
        v41 = *(*(v29 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v45)))));
        if (!v41)
        {
          goto LABEL_36;
        }
      }

      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      goto LABEL_28;
    }
  }

LABEL_36:
  sub_100052240();
  v64 = v98;
  static Logger.Application.getter();
  sub_100034994(v114, v111);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v67 = v95;
    *(v67 + 4) = sub_100005D28(0xD000000000000018, v96 | 0x8000000000000000, &v105);
    *(v67 + 12) = 2080;
    sub_100006C6C(v111, v112);
    *&v108 = URL.absoluteString.getter();
    *(&v108 + 1) = v68;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v69 = String.init<A>(describing:)();
    v71 = v70;
    sub_100034948(v111);
    v72 = sub_100005D28(v69, v71, &v105);

    *(v67 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "%s No existing scene for %s", v67, 0x16u);
    swift_arrayDestroy();

    v101(v64, v102);
  }

  else
  {

    v101(v64, v102);
    sub_100034948(v111);
  }

LABEL_39:
  sub_100034948(v114);
}

void sub_10005B100(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v107 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v113 = &v102[-v8];
  v9 = __chkstk_darwin(v7);
  v11 = &v102[-v10];
  __chkstk_darwin(v9);
  v13 = &v102[-v12];
  v130[3] = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
  v130[4] = &off_10008EFB0;
  v130[0] = a1;
  v110 = a1;
  static Logger.Application.getter();
  sub_100034994(v130, v131);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v119 = v2;
  v114 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *&v124 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100076230, &v124);
    *(v17 + 12) = 2080;
    v18 = [*sub_100006C6C(v131 v132)];
    v19 = FPItemID.identifierString.getter();
    v21 = v20;

    v127[0] = v19;
    v127[1] = v21;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100034948(v131);
    v25 = sub_100005D28(v22, v24, &v124);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s identifier: %s", v17, 0x16u);
    swift_arrayDestroy();

    v118 = *(v3 + 8);
    v118(v13, v119);
  }

  else
  {

    v118 = *(v3 + 8);
    v118(v13, v2);
    sub_100034948(v131);
  }

  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 connectedScenes];

  v28 = sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_10005FD68();
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v120 = v28;
  if ((v29 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v29 = v131[0];
    v31 = v131[1];
    v32 = v131[2];
    v33 = v132;
    v34 = v133;
  }

  else
  {
    v33 = 0;
    v35 = -1 << *(v29 + 32);
    v31 = v29 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v29 + 56);
  }

  v115 = v32;
  v38 = (v32 + 64) >> 6;
  v117 = v3 + 8;
  v112 = "ntManager.qlActivity";
  *&v30 = 136315394;
  v111 = v30;
  v39 = v33;
  while (v29 < 0)
  {
    v45 = __CocoaSet.Iterator.next()();
    if (!v45 || (*&v124 = v45, swift_dynamicCast(), v44 = v127[0], v42 = v39, v43 = v34, !v127[0]))
    {
LABEL_37:
      sub_100052240();
      v73 = v114;
      static Logger.Application.getter();
      sub_100034994(v130, v127);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v76 = v111;
        *(v76 + 4) = sub_100005D28(0xD000000000000018, v112 | 0x8000000000000000, &v121);
        *(v76 + 12) = 2080;
        v77 = [*sub_100006C6C(v127 v128)];
        v78 = FPItemID.identifierString.getter();
        v80 = v79;

        *&v124 = v78;
        *(&v124 + 1) = v80;
        sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
        v81 = String.init<A>(describing:)();
        v83 = v82;
        sub_100034948(v127);
        v84 = sub_100005D28(v81, v83, &v121);

        *(v76 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v74, v75, "%s No existing scene for %s", v76, 0x16u);
        swift_arrayDestroy();

        v118(v73, v119);
      }

      else
      {

        v118(v73, v119);
        sub_100034948(v127);
      }

      goto LABEL_40;
    }

LABEL_20:
    v46 = [v44 delegate];
    if (!v46)
    {

      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      goto LABEL_29;
    }

    v121 = v46;
    sub_10000DB4C(&qword_100093F48, qword_1000745E8);
    sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
LABEL_28:

LABEL_29:
      sub_100005A04(&v124, &unk_100093F30, &unk_1000745C8);
      goto LABEL_30;
    }

    if (!*(&v125 + 1))
    {
      goto LABEL_28;
    }

    v116 = v29;
    sub_1000349F8(&v124, v127);
    v47 = v128;
    v48 = v129;
    sub_100006C6C(v127, v128);
    v49 = (*(v48 + 8))(v47, v48);
    v109 = v50;
    if (v50)
    {
      v108 = v49;
      v51 = v113;
      static Logger.Application.getter();
      sub_100034994(v130, &v124);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      v54 = os_log_type_enabled(v52, v53);
      v106 = v39;
      if (v54)
      {
        v55 = swift_slowAlloc();
        v104 = v52;
        v56 = v55;
        v105 = swift_slowAlloc();
        v123 = v105;
        *v56 = v111;
        *(v56 + 4) = sub_100005D28(0xD000000000000018, v112 | 0x8000000000000000, &v123);
        *(v56 + 12) = 2080;
        v57 = [*sub_100006C6C(&v124 *(&v125 + 1))];
        v58 = FPItemID.identifierString.getter();
        v103 = v53;
        v59 = v58;
        v61 = v60;

        v121 = v59;
        v122 = v61;
        sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
        v62 = String.init<A>(describing:)();
        v64 = v63;
        sub_100034948(&v124);
        v65 = sub_100005D28(v62, v64, &v123);

        *(v56 + 14) = v65;
        v66 = &off_100091000;
        v67 = v104;
        _os_log_impl(&_mh_execute_header, v104, v103, "%s scene identifier: %s", v56, 0x16u);
        swift_arrayDestroy();

        v118(v113, v119);
      }

      else
      {

        v118(v51, v119);
        sub_100034948(&v124);
        v66 = &off_100091000;
      }

      v29 = v116;
      v68 = [v110 v66[388]];
      v69 = FPItemID.identifierString.getter();
      v71 = v70;

      if (v69 == v108 && v109 == v71)
      {

LABEL_42:
        v85 = v107;
        static Logger.Application.getter();
        sub_100034994(v130, &v124);
        v86 = v44;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v123 = v120;
          *v89 = 136315906;
          *(v89 + 4) = sub_100005D28(0xD000000000000018, v112 | 0x8000000000000000, &v123);
          *(v89 + 12) = 2080;
          v90 = [*sub_100006C6C(&v124 *(&v125 + 1))];
          v91 = FPItemID.identifierString.getter();
          LODWORD(v114) = v88;
          v93 = v92;

          v121 = v91;
          v122 = v93;
          sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
          v94 = String.init<A>(describing:)();
          v96 = v95;
          sub_100034948(&v124);
          v97 = sub_100005D28(v94, v96, &v123);

          *(v89 + 14) = v97;
          *(v89 + 22) = 2112;
          *(v89 + 24) = v86;
          v98 = v113;
          *v113 = v44;
          *(v89 + 32) = 2080;
          v121 = [v86 delegate];
          sub_10000DB4C(&qword_100094000, qword_1000746A8);
          v99 = String.init<A>(describing:)();
          v101 = sub_100005D28(v99, v100, &v123);

          *(v89 + 34) = v101;
          _os_log_impl(&_mh_execute_header, v87, v114, "%s SUCCESS for identifier: %s windowScene: %@ delegate: %s", v89, 0x2Au);
          sub_100005A04(v98, &qword_1000937D0, &unk_1000743F0);

          swift_arrayDestroy();

          sub_100052240();

          v118(v85, v119);
        }

        else
        {
          sub_100052240();

          v118(v85, v119);
          sub_100034948(&v124);
        }

        sub_100034948(v127);
LABEL_40:
        sub_100034948(v130);
        return;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v72)
      {
        goto LABEL_42;
      }

      sub_100034948(v127);
LABEL_30:
      v39 = v42;
      v34 = v43;
    }

    else
    {

      sub_100034948(v127);
      v39 = v42;
      v34 = v43;
      v29 = v116;
    }
  }

  v40 = v39;
  v41 = v34;
  v42 = v39;
  if (v34)
  {
LABEL_16:
    v43 = (v41 - 1) & v41;
    v44 = *(*(v29 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
    if (!v44)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      goto LABEL_37;
    }

    v41 = *(v31 + 8 * v42);
    ++v40;
    if (v41)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10005BF68(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v71 = a1;
  v11 = type metadata accessor for Logger();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v70 = &v64 - v17;
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v68 = a4;
  *(v20 + 32) = a5;
  LODWORD(v69) = a6;
  *(v20 + 40) = a6;
  v67 = a3;

  static Logger.Application.getter();
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v66 = a5;
    v26 = v25;
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v26 = 136315394;
    *(v26 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
    *(v26 + 12) = 2080;
    v73 = *&v21[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v27 = v73;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v28 = String.init<A>(describing:)();
    v64 = v22;
    v30 = sub_100005D28(v28, v29, &aBlock);
    v31 = v72;

    *(v26 + 14) = v30;
    v32 = v64;
    _os_log_impl(&_mh_execute_header, v64, v23, "[Interaction] %s %s", v26, 0x16u);
    swift_arrayDestroy();

    a5 = v66;

    v33 = v31;
    p_ivars = (&QuickLookSceneDelegate + 48);
  }

  else
  {

    v33 = v72;
  }

  v34 = *(v33 + 8);
  v34(v19, v11);
  v35 = p_ivars[420];
  v36 = *(v35 + v21);
  if (v36)
  {
    v37 = v36;
    v38 = v70;
    static Logger.Application.getter();
    v39 = v21;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v68 = v11;
      v43 = v42;
      aBlock = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
      *(v43 + 12) = 2080;
      v73 = *(v35 + v21);
      v44 = v73;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v45 = String.init<A>(describing:)();
      v67 = v34;
      v47 = sub_100005D28(v45, v46, &aBlock);
      v69 = v37;
      v48 = v21;
      v49 = v38;
      v50 = v47;

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "[Interaction] %s calling dismiss on: %s", v43, 0x16u);
      swift_arrayDestroy();

      v51 = v49;
      v21 = v48;
      v37 = v69;
      v67(v51, v68);
    }

    else
    {

      v34(v38, v11);
    }

    v59 = *(v35 + v21);
    *(v35 + v21) = 0;

    v78 = sub_10005FDE4;
    v79 = v20;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100002DB0;
    v77 = &unk_10008F520;
    v60 = _Block_copy(&aBlock);

    [v37 dismissViewControllerAnimated:v71 & 1 completion:v60];
  }

  else
  {
    static Logger.Application.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
      _os_log_impl(&_mh_execute_header, v52, v53, "[Interaction] %s no current preview controller, calling completion immediately", v54, 0xCu);
      sub_100034948(v55);
    }

    v34(v15, v11);
    v56 = v67;
    if (*(v67 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8))
    {
      v57 = *(v67 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName);
      v58 = *(v67 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8);

      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    v61 = swift_allocObject();
    v62 = v68;
    *(v61 + 16) = v56;
    *(v61 + 24) = v62;
    *(v61 + 32) = a5;
    *(v61 + 40) = v69;
    v78 = sub_10005FE50;
    v79 = v61;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100002DB0;
    v77 = &unk_10008F4F8;
    v60 = _Block_copy(&aBlock);
    v63 = v56;

    [v63 finishedTest:v37 waitForCommit:1 extraResults:0 withTeardownBlock:v60];
  }

  _Block_release(v60);
}

void sub_10005C6C4(int a1, void *a2, void *a3, int a4)
{
  v61 = a1;
  v7 = type metadata accessor for Logger();
  v62 = *(v7 - 1);
  v8 = *(v62 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - v13;
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  LODWORD(v60) = a4;
  *(v17 + 24) = a4;
  v59 = a3;
  static Logger.Application.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v58 = v14;
    v23 = v22;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v23 = 136315394;
    *(v23 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v23 + 12) = 2080;
    v63 = *&v18[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v24 = v63;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v25 = String.init<A>(describing:)();
    v27 = v11;
    v28 = v17;
    v29 = v7;
    v30 = sub_100005D28(v25, v26, aBlock);

    *(v23 + 14) = v30;
    v7 = v29;
    v17 = v28;
    v31 = v62;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Interaction] %s %s", v23, 0x16u);
    swift_arrayDestroy();

    v14 = v58;

    v32 = v31;
    v11 = v27;
    p_ivars = (&QuickLookSceneDelegate + 48);
  }

  else
  {

    v32 = v62;
  }

  v33 = *(v32 + 8);
  (v33)(v16, v7);
  v34 = p_ivars[420];
  v35 = *(v34 + v18);
  if (v35)
  {
    v36 = v35;
    static Logger.Application.getter();
    v37 = v18;
    v38 = v18;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v60 = v36;
      v42 = v41;
      v43 = swift_slowAlloc();
      v59 = v7;
      aBlock[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v42 + 12) = 2080;
      v63 = *(v34 + v37);
      v44 = v63;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v45 = String.init<A>(describing:)();
      v47 = sub_100005D28(v45, v46, aBlock);
      v58 = v33;
      v48 = v14;
      v49 = v47;

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "[Interaction] %s calling dismiss on: %s", v42, 0x16u);
      swift_arrayDestroy();

      v36 = v60;

      (v58)(v48, v59);
    }

    else
    {

      (v33)(v14, v7);
    }

    v54 = *(v34 + v37);
    *(v34 + v37) = 0;

    aBlock[4] = sub_10005D894;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F098;
    v55 = _Block_copy(aBlock);

    [v36 dismissViewControllerAnimated:v61 & 1 completion:v55];
    _Block_release(v55);
  }

  else
  {
    static Logger.Application.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v50, v51, "[Interaction] %s no current preview controller, calling completion immediately", v52, 0xCu);
      sub_100034948(v53);
    }

    (v33)(v11, v7);
    sub_10005717C(v59);
  }
}

void sub_10005CCFC(int a1, void *a2, void *a3)
{
  v62 = a1;
  v5 = type metadata accessor for Logger();
  isa = v5[-1].isa;
  v7 = isa[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v57[-v12];
  __chkstk_darwin(v11);
  v15 = &v57[-v14];
  v63 = swift_allocObject();
  *(v63 + 16) = a3;
  v61 = a3;
  static Logger.Application.getter();
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v59 = v17;
    v20 = v19;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v20 = 136315394;
    *(v20 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v20 + 12) = 2080;
    v64 = *&v16[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v21 = v64;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v22 = String.init<A>(describing:)();
    v58 = v18;
    v24 = v16;
    v25 = v13;
    v26 = isa;
    v27 = v5;
    v28 = sub_100005D28(v22, v23, aBlock);

    *(v20 + 14) = v28;
    v5 = v27;
    isa = v26;
    v13 = v25;
    v16 = v24;
    v29 = v59;
    _os_log_impl(&_mh_execute_header, v59, v58, "[Interaction] %s %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = isa[1];
  v30(v15, v5);
  v31 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v32 = *&v16[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v32)
  {
    v61 = isa;
    v33 = v32;
    static Logger.Application.getter();
    v34 = v16;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v60 = v33;
      v38 = v37;
      aBlock[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v38 + 12) = 2080;
      v64 = *&v16[v31];
      v39 = v64;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v40 = String.init<A>(describing:)();
      v42 = sub_100005D28(v40, v41, aBlock);
      v59 = v5;
      v43 = v42;

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "[Interaction] %s calling dismiss on: %s", v38, 0x16u);
      swift_arrayDestroy();

      v33 = v60;

      v44 = v13;
      v45 = v59;
    }

    else
    {

      v44 = v13;
      v45 = v5;
    }

    v30(v44, v45);
    v54 = *&v16[v31];
    *&v16[v31] = 0;

    aBlock[4] = sub_10005FFF8;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F048;
    v55 = _Block_copy(aBlock);

    [v33 dismissViewControllerAnimated:v62 & 1 completion:v55];
    _Block_release(v55);
  }

  else
  {
    static Logger.Application.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v10;
      v49 = swift_slowAlloc();
      v50 = v5;
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v49 = 136315138;
      *(v49 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v46, v47, "[Interaction] %s no current preview controller, calling completion immediately", v49, 0xCu);
      sub_100034948(v51);

      v52 = v48;
      v53 = v50;
    }

    else
    {

      v52 = v10;
      v53 = v5;
    }

    v30(v52, v53);
    v56 = [v61 effectiveFullBrowser];
    [v56 dismissSearch];

    sub_100054AB0();
  }
}

void sub_10005D364(uint64_t a1, char a2, int a3, char *a4, void *a5)
{
  v38 = a3;
  v39 = type metadata accessor for Logger();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v39);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v37[-v14];
  v40 = swift_allocObject();
  *(v40 + 16) = a5;
  if (a2)
  {
    v16 = a5;
  }

  else
  {
    v17 = a5;
    if (a1)
    {
      v18 = v17;
      v19 = [a4 presentedViewController];
      if (v19)
      {
        v20 = v19;
        sub_100002B84(0, &unk_100093F18, VNDocumentCameraViewController_ptr);
        v21 = [v20 isKindOfClass:swift_getObjCClassFromMetadata()];

        if (v21)
        {
          static Logger.Application.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v24 = 136315394;
            *(v24 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &aBlock);
            *(v24 + 12) = 2080;
            v41 = a1;
            v25 = String.init<A>(describing:)();
            v27 = sub_100005D28(v25, v26, &aBlock);

            *(v24 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v22, v23, "%s options: %s satisfied. Document scanner already present. Skipping dismissal", v24, 0x16u);
            swift_arrayDestroy();
          }

          (*(v9 + 8))(v15, v39);
          v28 = [v18 effectiveFullBrowser];
          [v28 dismissSearch];

          sub_100054AB0();
          goto LABEL_14;
        }
      }
    }
  }

  static Logger.Application.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &v41);
    *(v31 + 12) = 2080;
    aBlock = a1;
    LOBYTE(v43) = a2 & 1;
    sub_10000DB4C(&qword_100093F10, &unk_1000745B0);
    v32 = String.init<A>(describing:)();
    v34 = sub_100005D28(v32, v33, &v41);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s options: %s empty or not satisfied. Dismissing presented view controllers", v31, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v13, v39);
  if (*&a4[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController])
  {
    v35 = a5;
    sub_10005CCFC(v38 & 1, a4, v35);

    return;
  }

  v46 = sub_10005D88C;
  v47 = v40;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100002DB0;
  v45 = &unk_10008EFF8;
  v36 = _Block_copy(&aBlock);

  [a4 dismissAllPresentedViewControllers:v38 & 1 completion:v36];
  _Block_release(v36);

LABEL_14:
}

void sub_10005D8C4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1000553A8(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_10005D97C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005D9C4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v5 + 8);

  sub_100055A90(v4, v0 + v2, v6, v8, v7);
}

void sub_10005DA68()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v0 + v4);
  v9 = *(v6 + 8);

  sub_100055C6C(v0 + v2, v5, v7, v9, v8);
}

uint64_t sub_10005DB14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_10005DBD8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v0 + v4);
  v9 = *(v6 + 8);

  sub_100055F10(v8, v0 + v2, v5, v7, v9);
}

uint64_t sub_10005DC8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005DD38;

  return sub_1000541CC(a1, a2, v2);
}

uint64_t sub_10005DD38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005DE2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000B1A0;

  return sub_10005468C(a1, a2, v2);
}

uint64_t *sub_10005DED8(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_10005DF28(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000B1A0;

  return sub_1000536A0(a1, a2, v2);
}

unint64_t sub_10005DFD4()
{
  result = qword_100093FE0;
  if (!qword_100093FE0)
  {
    sub_10000DB94(&qword_100093FD8, &qword_1000746A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093FE0);
  }

  return result;
}

void sub_10005E038(int a1, void *a2, void *a3, void *a4)
{
  v68 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - v14;
  __chkstk_darwin(v13);
  v17 = &v64 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v69 = v18;
  v67 = a3;
  v66 = a4;
  static Logger.Application.getter();
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  p_ivars = &QuickLookSceneDelegate.ivars;
  v70 = v8;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v24 = 136315394;
    *(v24 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v24 + 12) = 2080;
    v71 = *&v19[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v25 = v71;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v26 = String.init<A>(describing:)();
    v28 = v19;
    v29 = v15;
    v30 = v12;
    v31 = sub_100005D28(v26, v27, aBlock);

    *(v24 + 14) = v31;
    v12 = v30;
    v15 = v29;
    v19 = v28;
    p_ivars = (&QuickLookSceneDelegate + 48);
    _os_log_impl(&_mh_execute_header, v20, v21, "[Interaction] %s %s", v24, 0x16u);
    swift_arrayDestroy();

    v8 = v70;
  }

  v32 = *(v8 + 8);
  v32(v17, v7);
  v33 = p_ivars[420];
  v34 = *(v33 + v19);
  if (v34)
  {
    v35 = v34;
    static Logger.Application.getter();
    v36 = v19;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67 = v35;
      aBlock[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v39 + 12) = 2080;
      v71 = *(v33 + v19);
      v41 = v71;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v42 = String.init<A>(describing:)();
      v44 = sub_100005D28(v42, v43, aBlock);
      v66 = v7;
      v45 = v44;

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "[Interaction] %s calling dismiss on: %s", v39, 0x16u);
      swift_arrayDestroy();
      v35 = v67;

      v46 = v15;
      v47 = v66;
    }

    else
    {

      v46 = v15;
      v47 = v7;
    }

    v32(v46, v47);
    v56 = *(v33 + v19);
    *(v33 + v19) = 0;

    aBlock[4] = sub_10005FFF0;
    aBlock[5] = v69;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F408;
    v57 = _Block_copy(aBlock);

    [v35 dismissViewControllerAnimated:v68 & 1 completion:v57];
    _Block_release(v57);
  }

  else
  {
    static Logger.Application.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v12;
      v51 = swift_slowAlloc();
      v52 = v7;
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v51 = 136315138;
      *(v51 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "[Interaction] %s no current preview controller, calling completion immediately", v51, 0xCu);
      sub_100034948(v53);

      v54 = v50;
      v55 = v52;
    }

    else
    {

      v54 = v12;
      v55 = v7;
    }

    v32(v54, v55);
    v58 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
    v59 = v67;
    v60 = *&v67[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v60)
    {
      v61 = [v60 effectiveFullBrowser];
      [v61 dismissSearch];

      v62 = *(v59 + v58);
      if (v62)
      {
        v63 = [v62 effectiveFullBrowser];
        [v63 setEditing:0 animated:0];
      }
    }

    sub_1000397D4(v66, v59);
  }
}

void sub_10005E6EC(uint64_t a1, char a2, int a3, char *a4, void *a5, void *a6)
{
  v61 = a4;
  v59 = a3;
  v10 = type metadata accessor for Logger();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v62 = a6;
  if (a2)
  {
    v18 = a1;
    v19 = a5;
    v20 = v62;
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v23 = a5;
    v24 = v62;
    v58 = v23;
    v57 = v24;
    v18 = a1;
    if (a1)
    {
      v25 = [v61 presentedViewController];
      if (v25)
      {
        v26 = v25;
        sub_100002B84(0, &unk_100093F18, VNDocumentCameraViewController_ptr);
        v27 = [v26 isKindOfClass:swift_getObjCClassFromMetadata()];

        if (v27)
        {
          static Logger.Application.getter();
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v30 = 136315394;
            *(v30 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &aBlock);
            *(v30 + 12) = 2080;
            v63 = a1;
            v31 = String.init<A>(describing:)();
            v33 = sub_100005D28(v31, v32, &aBlock);

            *(v30 + 14) = v33;
            _os_log_impl(&_mh_execute_header, v28, v29, "%s options: %s satisfied. Document scanner already present. Skipping dismissal", v30, 0x16u);
            swift_arrayDestroy();
          }

          (*(v60 + 8))(v16, v10);
          v50 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
          v51 = v58;
          v52 = *&v58[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
          if (v52)
          {
            v53 = [v52 effectiveFullBrowser];
            [v53 dismissSearch];

            v54 = *&v51[v50];
            if (v54)
            {
              v55 = [v54 effectiveFullBrowser];
              [v55 setEditing:0 animated:0];
            }
          }

          sub_1000397D4(v57, v51);

          goto LABEL_14;
        }
      }
    }
  }

  static Logger.Application.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v17;
    v63 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &v63);
    *(v36 + 12) = 2080;
    aBlock = v18;
    LOBYTE(v65) = a2 & 1;
    sub_10000DB4C(&qword_100093F10, &unk_1000745B0);
    v38 = String.init<A>(describing:)();
    v40 = sub_100005D28(v38, v39, &v63);
    v41 = v60;
    v42 = a5;
    v43 = v10;
    v44 = v40;

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s options: %s empty or not satisfied. Dismissing presented view controllers", v36, 0x16u);
    swift_arrayDestroy();
    v17 = v58;

    v45 = v43;
    a5 = v42;
    (*(v41 + 8))(v14, v45);
  }

  else
  {

    (*(v60 + 8))(v14, v10);
  }

  v46 = v61;
  if (!*&v61[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController])
  {
    v68 = sub_10005FDD0;
    v69 = v17;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100002DB0;
    v67 = &unk_10008F3B8;
    v49 = _Block_copy(&aBlock);

    [v46 dismissAllPresentedViewControllers:v59 & 1 completion:v49];
    _Block_release(v49);

LABEL_14:

    goto LABEL_15;
  }

  v47 = a5;
  v48 = v62;
  sub_10005E038(v59 & 1, v46, v47, v48);

LABEL_15:
}

void sub_10005ED10(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = __chkstk_darwin(v9);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v65 = &v61 - v15;
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v19 = a3;

  static Logger.Application.getter();
  v20 = a2;
  v21 = Logger.logObject.getter();
  LODWORD(a2) = static os_log_type_t.debug.getter();

  LODWORD(v64) = a2;
  v22 = os_log_type_enabled(v21, a2);
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v67 = v9;
    v24 = v23;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v24 = 136315394;
    *(v24 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v24 + 12) = 2080;
    v68 = *&v20[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v25 = v68;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v26 = String.init<A>(describing:)();
    v28 = v20;
    v29 = sub_100005D28(v26, v27, aBlock);

    *(v24 + 14) = v29;
    v20 = v28;
    _os_log_impl(&_mh_execute_header, v21, v64, "[Interaction] %s %s", v24, 0x16u);
    swift_arrayDestroy();

    v9 = v67;
  }

  v30 = *(v10 + 1);
  v30(v17, v9);
  v31 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v32 = *&v20[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v32)
  {
    v64 = v30;
    v33 = v32;
    v34 = v65;
    static Logger.Application.getter();
    v35 = v20;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v67 = v9;
      v39 = v38;
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v39 = 136315394;
      *(v39 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v39 + 12) = 2080;
      v68 = *&v20[v31];
      v40 = v68;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v41 = String.init<A>(describing:)();
      v62 = v10;
      v43 = v33;
      v44 = v20;
      v45 = sub_100005D28(v41, v42, aBlock);

      *(v39 + 14) = v45;
      v20 = v44;
      v33 = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "[Interaction] %s calling dismiss on: %s", v39, 0x16u);
      swift_arrayDestroy();

      v46 = v34;
      v47 = v67;
    }

    else
    {

      v46 = v34;
      v47 = v9;
    }

    v64(v46, v47);
    v54 = *&v20[v31];
    *&v20[v31] = 0;

    aBlock[4] = sub_10005FDD8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F480;
    v55 = _Block_copy(aBlock);

    [v33 dismissViewControllerAnimated:v66 & 1 completion:v55];
    _Block_release(v55);
  }

  else
  {
    v48 = v63;
    static Logger.Application.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v64 = v30;
      v52 = v51;
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "[Interaction] %s no current preview controller, calling completion immediately", v52, 0xCu);
      sub_100034948(v53);

      v64(v48, v9);
    }

    else
    {

      v30(v48, v9);
    }

    v56 = v62;
    v57 = *&v62[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v57)
    {
      v58 = swift_allocObject();
      v58[2] = a4;
      v58[3] = a5;
      v58[4] = v56;
      v59 = v56;

      v60 = v57;
      DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
    }
  }
}

uint64_t sub_10005F3F4(uint64_t a1)
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

uint64_t sub_10005F42C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = &v42 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v42 - v17;
  if (*(a1 + 16))
  {
    v49 = v4;
    v51 = v18;
    v52 = v10;
    v20 = *(v10 + 16);
    v21 = *(v10 + 80);
    v46 = v5;
    v47 = ~v21;
    v50 = v21;
    v20(&v42 - v17, a1 + ((v21 + 32) & ~v21), v9);
    static Logger.UI.getter();
    v48 = v20;
    v20(v15, v19, v9);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = v24;
      v43 = swift_slowAlloc();
      v53 = v43;
      *v24 = 136315138;
      sub_10005D97C(&unk_1000937B0, &type metadata accessor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v2;
      v27 = v26;
      v28 = *(v52 + 8);
      v45 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = v15;
      v30 = v28;
      v28(v29, v9);
      v31 = sub_100005D28(v25, v27, &v53);
      v2 = v44;

      v32 = v42;
      *(v42 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "[Interaction] documentBrowser:didPickDocumentsAt: %s", v32, 0xCu);
      sub_100034948(v43);

      v33 = v52;
    }

    else
    {

      v33 = v52;
      v34 = *(v52 + 8);
      v45 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35 = v15;
      v30 = v34;
      v34(v35, v9);
    }

    (*(v46 + 8))(v8, v49);
    v36 = objc_opt_self();
    v37 = [v2 configuration];
    [v36 supportsQuickLookInsteadOfOpen:v37];

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = v51;
    v48(v51, v19, v9);
    v40 = (v50 + 24) & v47;
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    (*(v33 + 32))(v41 + v40, v39, v9);

    static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();

    v30(v19, v9);
  }

  return result;
}

uint64_t sub_10005F8E8(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  if (*(a1 + 16))
  {
    v7 = *(v4 + 80);
    v8 = objc_opt_self();
    v9 = [v1 configuration];
    v12[3] = [v8 supportsQuickLookInsteadOfOpen:v9];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((v7 + 32) & ~v7), v3);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    (*(v4 + 32))(v11 + ((v7 + 24) & ~v7), v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();
  }

  return result;
}

id sub_10005FAD0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DRIMainViewController();
  return objc_msgSendSuper2(&v7, "initWithConfiguration:", a1);
}

uint64_t sub_10005FBD8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100058EE4(v2, v3);
}

uint64_t sub_10005FC54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

void sub_10005FCDC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000582D4(v0 + v2, v3);
}

unint64_t sub_10005FD68()
{
  result = qword_100093FF8;
  if (!qword_100093FF8)
  {
    sub_100002B84(255, &qword_100093FF0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093FF8);
  }

  return result;
}

uint64_t sub_10005FDF4(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

unint64_t sub_10005FE74()
{
  result = qword_100094008;
  if (!qword_100094008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094008);
  }

  return result;
}

unint64_t sub_10005FECC()
{
  result = qword_100094010;
  if (!qword_100094010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094010);
  }

  return result;
}

unint64_t sub_10005FF24()
{
  result = qword_100094018;
  if (!qword_100094018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094018);
  }

  return result;
}

unint64_t sub_10005FF7C()
{
  result = qword_100094020;
  if (!qword_100094020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094020);
  }

  return result;
}

void sub_10006001C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v20 = &_swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
    sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v19[1];
    v4 = v19[2];
    v5 = v19[3];
    v6 = v19[4];
    v7 = v19[5];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));

    v6 = 0;
  }

  while ((v3 & 0x8000000000000000) != 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v18 = v16, sub_100002B84(0, &qword_100093FF0, UIScene_ptr), swift_dynamicCast(), v15 = v19[0], v13 = v6, v14 = v7, !v19[0]))
    {
LABEL_22:
      sub_100052240();
      return;
    }

LABEL_18:
    v19[0] = v15;
    sub_100060FDC(v19, &v18);
    if (v2)
    {

      sub_100052240();

      return;
    }

    if (v18)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v6 = v13;
    v7 = v14;
  }

  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1000602D4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_100061BA4(&enum case for DOCUserActivityIdentifier.folderDrag(_:));
  if (v2)
  {
    v3 = v2;
    v4 = [v2 userInfo];
    if (v4)
    {
      v5 = v4;
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      DOCUserActivityDOCNodeKey.getter();
      AnyHashable.init<A>(_:)();
      if (*(v6 + 16) && (v7 = sub_10000A60C(&v11), (v8 & 1) != 0))
      {
        sub_100005CC8(*(v6 + 56) + 32 * v7, &v13);
        sub_10000A774(&v11);

        if (*(&v14 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v9 = v11;
          sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
          sub_10000DB4C(&qword_100093C18, &qword_100074468);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_1000736D0;
          *(v10 + 32) = sub_100002B84(0, &qword_100093BE8, FINode_ptr);
          *(v10 + 40) = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
          static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
          sub_10000A0F8(v9, *(&v9 + 1));

          sub_10006208C(&v11, &v13);
          if (*(&v14 + 1))
          {
            if (swift_dynamicCast())
            {
              sub_100005A04(&v11, &qword_100093498, &qword_100074430);
              return;
            }
          }

          else
          {
            sub_100005A04(&v13, &qword_100093498, &qword_100074430);
          }

          v13 = v11;
          v14 = v12;
          if (*(&v12 + 1))
          {
            swift_dynamicCast();
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000A774(&v11);
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {

      v13 = 0u;
      v14 = 0u;
    }

    sub_100005A04(&v13, &qword_100093498, &qword_100074430);
  }
}

void sub_1000607C8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_100061BA4(&enum case for DOCUserActivityIdentifier.location(_:));
  if (v2)
  {
    v3 = v2;
    v4 = [v2 userInfo];
    if (v4)
    {
      v5 = v4;
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      DOCUserActivityLocationKey.getter();
      AnyHashable.init<A>(_:)();
      if (*(v6 + 16) && (v7 = sub_10000A60C(v21), (v8 & 1) != 0))
      {
        sub_100005CC8(*(v6 + 56) + 32 * v7, &v22);
        sub_10000A774(v21);

        if (*(&v23 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v10 = v21[0];
          v9 = v21[1];
          sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
          sub_10000DB4C(&qword_100093C18, &qword_100074468);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_100073FE0;
          *(v11 + 32) = sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
          v12 = v10;
          static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
          v14 = v9;

          if (v21[3])
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              sub_10000A0F8(v10, v9);
              return;
            }

            v15 = v22;
            v16 = [v3 userInfo];
            if (v16)
            {
              v17 = v16;
              v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              DOCUserActivityTagNameKey.getter();
              AnyHashable.init<A>(_:)();
              if (*(v18 + 16))
              {
                v19 = sub_10000A60C(v21);
                if (v20)
                {
                  sub_100005CC8(*(v18 + 56) + 32 * v19, &v22);

                  sub_10000A0F8(v12, v14);
                  sub_10000A774(v21);

                  if (*(&v23 + 1))
                  {
                    swift_dynamicCast();
                    return;
                  }

                  goto LABEL_27;
                }
              }

              sub_10000A0F8(v12, v14);

              sub_10000A774(v21);
            }

            else
            {

              sub_10000A0F8(v12, v9);
            }

            v22 = 0u;
            v23 = 0u;
LABEL_27:
            sub_100005A04(&v22, &qword_100093498, &qword_100074430);
            return;
          }

          sub_10000A0F8(v10, v9);
          v13 = v21;
          goto LABEL_11;
        }
      }

      else
      {

        sub_10000A774(v21);
        v22 = 0u;
        v23 = 0u;
      }
    }

    else
    {

      v22 = 0u;
      v23 = 0u;
    }

    v13 = &v22;
LABEL_11:
    sub_100005A04(v13, &qword_100093498, &qword_100074430);
  }
}

uint64_t sub_100060DAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = a1;
    v21 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    swift_errorRetain();
    sub_10000DB4C(&unk_100093B40, qword_100074410);
    v16 = String.init<A>(describing:)();
    v18 = sub_100005D28(v16, v17, &v21);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to activate scene from requesting scene: %@ error: %s", v12, 0x16u);
    sub_100005A04(v13, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v14);
  }

  return (*(v5 + 8))(v8, v4);
}

id sub_100060FDC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = [v9 delegate];
  if (!result)
  {
    goto LABEL_7;
  }

  type metadata accessor for QuickLookSceneDelegate();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = v11, *(v11 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene) != 1))
  {
    result = swift_unknownObjectRelease();
LABEL_7:
    *a2 = 0;
    return result;
  }

  v27 = v5;
  static Logger.Application.getter();
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v26 = v14;
  v28 = v13;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136315394;
    v16 = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, &v29);
    v24 = v15;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    swift_unknownObjectRetain();
    v17 = [v12 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v28;
    v20 = v19;
    swift_unknownObjectRelease();

    v21 = sub_100005D28(v23, v20, &v29);

    v22 = v24;
    *(v24 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v18, v26, "%s found existing shared scene: %s", v22, 0x16u);
    swift_arrayDestroy();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v27 + 8))(v8, v4);
  *a2 = v9;
  return v9;
}

uint64_t sub_1000612D0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = [v0 userInfo];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = DOCUserActivityDOCNodeKey.getter();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10000A60C(&v12), (v7 & 1) == 0))
  {

    sub_10000A774(&v12);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v5 + 56) + 32 * v6, &v14);
  sub_10000A774(&v12);

  if (!*(&v15 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = v12;
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000736D0;
  *(v9 + 32) = sub_100002B84(0, &qword_100093BE8, FINode_ptr);
  *(v9 + 40) = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  sub_10000A0F8(v8, *(&v8 + 1));

  sub_10006208C(&v12, &v14);
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100005A04(&v12, &qword_100093498, &qword_100074430);
      return v11;
    }
  }

  else
  {
    sub_100005A04(&v14, &qword_100093498, &qword_100074430);
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_100005A04(&v14, &qword_100093498, &qword_100074430);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

  return 0;
}

uint64_t sub_100061778()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = [v0 userInfo];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10000A60C(v13), (v7 & 1) == 0))
  {

    sub_10000A774(v13);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v5 + 56) + 32 * v6, &v14);
  sub_10000A774(v13);

  if (!*(&v15 + 1))
  {
LABEL_9:
    v11 = &v14;
LABEL_10:
    sub_100005A04(v11, &qword_100093498, &qword_100074430);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = v13[0];
  v9 = v13[1];
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100073FE0;
  *(v10 + 32) = sub_100002B84(0, &qword_100094090, DOCConfiguration_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  sub_10000A0F8(v8, v9);
  if (!v13[3])
  {
    v11 = v13;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void sub_100061BA4(unsigned int *a1)
{
  v3 = v1;
  v45 = type metadata accessor for DOCUserActivityIdentifier();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v3 userActivities];
  v8 = sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
  sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v9;
  v38 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v49;
    v10 = v50;
    v11 = v51;
    v12 = v52;
    v13 = v53;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v12 = 0;
  }

  v36 = v11;
  v17 = (v11 + 64) >> 6;
  v43 = *a1;
  v41 = (v4 + 8);
  v42 = (v4 + 104);
  v40 = v10;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = __CocoaSet.Iterator.next()();
  if (v18 && (v47 = v18, swift_dynamicCast(), v19 = v48, v20 = v12, v21 = v13, v48))
  {
    while (1)
    {
      v39 = v12;
      v24 = v9;
      v46 = v19;
      v25 = [v19 activityType];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v30 = v44;
      v29 = v45;
      (*v42)(v44, v43, v45);
      v31 = DOCUserActivityIdentifier.rawValue.getter();
      v33 = v32;
      (*v41)(v30, v29);
      if (v26 == v31 && v28 == v33)
      {

        goto LABEL_25;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = v24;
      v10 = v40;
      if (v35)
      {
        goto LABEL_25;
      }

      v12 = v20;
      v13 = v21;
      if (v9 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v22 = v12;
      v23 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_15:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_25;
      }

      v23 = *(v10 + 8 * v20);
      ++v22;
      if (v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    sub_100052240();
  }
}

uint64_t sub_100061F48()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v8 = 0xD000000000000019;
  *(&v8 + 1) = 0x80000001000756A0;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10000A60C(v7), (v5 & 1) == 0))
  {

    sub_10000A774(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v3 + 56) + 32 * v4, &v8);
  sub_10000A774(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_100005A04(&v8, &qword_100093498, &qword_100074430);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return 0;
}

uint64_t sub_10006208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000620FC(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a2;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v13 = 136315650;
    *(v13 + 4) = sub_100005D28(0xD000000000000022, 0x8000000100076340, aBlock);
    *(v13 + 12) = 2080;
    v14 = v10;
    v15 = [v14 description];
    v40 = v5;
    v16 = a2;
    v17 = v15;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v12;
    v19 = v10;
    v20 = v9;
    v21 = v18;
    v39 = v4;
    v23 = v22;

    v24 = v21;
    v9 = v20;
    v10 = v19;
    v25 = sub_100005D28(v24, v23, aBlock);

    *(v13 + 14) = v25;
    *(v13 + 22) = 2080;
    v42 = v16;
    v26 = v9;
    sub_10000DB4C(&unk_1000940A0, &qword_1000748D0);
    v27 = String.init<A>(describing:)();
    v29 = sub_100005D28(v27, v28, aBlock);

    *(v13 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v38, "%s scene: %s requestingScene: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v40 + 8))(v8, v39);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v30 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  [v30 setRequestingScene:v9];
  v44 = type metadata accessor for _UIWindowScenePreservedPlacement();
  v45 = sub_1000629EC();
  sub_10000AE7C(aBlock);
  _UIWindowScenePreservedPlacement.init()();
  UIWindowSceneActivationRequestOptions.placement.setter();
  v31 = [objc_opt_self() sharedApplication];
  v32 = [v10 session];
  v33 = swift_allocObject();
  *(v33 + 16) = v10;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_100062A44;
  *(v34 + 24) = v33;
  v45 = sub_100062A4C;
  v46 = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000639C4;
  v44 = &unk_10008F5C0;
  v35 = _Block_copy(aBlock);
  v36 = v10;

  [v31 requestSceneSessionActivation:v32 userActivity:0 options:v30 errorHandler:v35];
  _Block_release(v35);
}

uint64_t sub_10006254C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v29 - v6;
  static Logger.Application.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_100034948(v11);
  }

  v12 = *(v1 + 8);
  v12(v7, v0);
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 connectedScenes];

  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006001C(v15);
  v17 = v16;

  v18 = v17 >> 62;
  if (v17 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_11;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_11;
  }

  static Logger.Application.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v29[1] = v1;
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, v30);
    *(v21 + 12) = 2048;
    v29[0] = v12;
    if (v18)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 14) = v22;

    *(v21 + 22) = 2080;
    v23 = Array.description.getter();
    v25 = sub_100005D28(v23, v24, v30);

    *(v21 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s found %ld scenes. There should only be 1. Scenes: %s", v21, 0x20u);
    swift_arrayDestroy();

    (v29[0])(v5, v0);
  }

  else
  {

    v12(v5, v0);
  }

LABEL_11:
  if (!v18)
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v17 + 32);
LABEL_16:
    v28 = v27;

    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000629EC()
{
  result = qword_100094098;
  if (!qword_100094098)
  {
    type metadata accessor for _UIWindowScenePreservedPlacement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094098);
  }

  return result;
}

uint64_t sub_100062A4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100062A74(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_100009B68(0, v2 & ~(v2 >> 63), 0);
    v37 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_100063068(v39, v40, v41, v1, &unk_1000941A0, UISceneSession_ptr);
        v13 = v12;
        v14 = [v12 persistentIdentifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_100009B68((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_10000DB4C(&unk_1000941B0, &unk_1000748F0);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_1000639B8(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_1000639B8(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_1000639B8(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_100062DEC(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v7, "buildMenuWithBuilder:", a1);
  sub_100002B84(0, &qword_1000941C8, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [objc_allocWithZone(DOCKeyCommandController) init];
    [v6 buildWithBuilder:a1];
  }
}

id sub_100063024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100063068(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100002B84(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100002B84(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_100063280()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v48 - v6;
  v8 = [objc_opt_self() sharedApplication];
  static Logger.StateStore.getter();
  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v51 = v1;
  v52 = v0;
  v49 = v5;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100005D28(0xD00000000000002ELL, 0x80000001000763F0, v57);
    *(v13 + 12) = 2080;
    v14 = [v9 openSessions];
    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Set.description.getter();
    v17 = v16;

    v18 = sub_100005D28(v15, v17, v57);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v13, 0x16u);
    swift_arrayDestroy();

    v50 = *(v51 + 8);
    v50(v7, v52);
  }

  else
  {

    v50 = *(v1 + 8);
    v50(v7, v0);
  }

  v54 = v9;
  v19 = [v9 connectedScenes];
  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009970(v20, v57);
  v22 = v57[0];
  v21 = v57[1];
  v23 = v59;
  v24 = v60;
  v53 = v58;
  v25 = (v58 + 64) >> 6;
  while (v22 < 0)
  {
    v32 = __CocoaSet.Iterator.next()();
    if (!v32 || (v55 = v32, swift_dynamicCast(), v31 = v56[0], v29 = v23, v30 = v24, !v56[0]))
    {
LABEL_21:

      sub_100052240();
      return;
    }

LABEL_18:
    if (![v31 delegate])
    {
      goto LABEL_7;
    }

    type metadata accessor for BrowserSceneDelegate();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v26 = *(v33 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v26)
      {
        v34 = v26;
        v35 = [v34 configuration];
        swift_unknownObjectRelease();

        sub_100052240();
        v36 = v54;
        v37 = [v54 openSessions];
        sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
        sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
        v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100062A74(v38);

        v39 = v49;
        static Logger.StateStore.getter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v56[0] = swift_slowAlloc();
          *v42 = 136315394;
          *(v42 + 4) = sub_100005D28(0xD00000000000002ELL, 0x80000001000763F0, v56);
          *(v42 + 12) = 2080;
          v43 = Array.description.getter();
          v45 = sub_100005D28(v43, v44, v56);

          *(v42 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: purging application state excluding openSessionIdentifiers: %s", v42, 0x16u);
          swift_arrayDestroy();
        }

        v50(v39, v52);
        v46 = [objc_opt_self() sharedStore];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v46 purgeApplicationStateExcludingIdentifiers:isa configuration:v35];

        return;
      }

      swift_unknownObjectRelease();
LABEL_7:

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_8:
    v23 = v29;
    v24 = v30;
  }

  v27 = v23;
  v28 = v24;
  v29 = v23;
  if (v24)
  {
LABEL_14:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v22 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_21;
    }

    v28 = *(v21 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1000639B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1000639C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100063A44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

void sub_100063AE4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v197 = a3;
  v195 = a2;
  v6 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v185 = &v179[-v8];
  v9 = type metadata accessor for DOCPreviewSource();
  v192 = *(v9 - 8);
  v193 = v9;
  v10 = *(v192 + 64);
  v11 = __chkstk_darwin(v9);
  v181 = &v179[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v186 = &v179[-v13];
  v201 = type metadata accessor for Logger();
  v14 = *(v201 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v201);
  v18 = &v179[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v179[-v20];
  v22 = __chkstk_darwin(v19);
  v184 = &v179[-v23];
  v24 = __chkstk_darwin(v22);
  v182 = &v179[-v25];
  v26 = __chkstk_darwin(v24);
  v189 = &v179[-v27];
  v28 = __chkstk_darwin(v26);
  v188 = &v179[-v29];
  __chkstk_darwin(v28);
  v200 = &v179[-v30];
  v31 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v32 = DOCPreviewController.init()();
  sub_100002CFC(&qword_100094240, type metadata accessor for QuickLookSceneDelegate);
  swift_unknownObjectRetain();
  dispatch thunk of DOCPreviewController.editingDelegate.setter();
  sub_100002CFC(&qword_100094248, type metadata accessor for QuickLookSceneDelegate);
  swift_unknownObjectRetain();
  dispatch thunk of DOCPreviewController.visibilityDelegate.setter();
  dispatch thunk of DOCPreviewController.publishesUserActivity.setter();
  v33 = *&v3[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
  v196 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController;
  *&v3[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController] = v32;
  v34 = v32;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    static Logger.Application.getter();
    v64 = a1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = v14;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v202[0] = v69;
      *v68 = 136315138;
      swift_getObjectType();
      v70 = _typeName(_:qualified:)();
      v72 = sub_100005D28(v70, v71, v202);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "Denying creation of quicklook window / scene.  Unexpected scene type received: %s)", v68, 0xCu);
      sub_100034948(v69);

      (*(v67 + 8))(v18, v201);
    }

    else
    {

      (*(v14 + 8))(v18, v201);
    }

    return;
  }

  v36 = v35;
  v183 = v21;
  v37 = objc_allocWithZone(UIWindowSceneActivationRequestOptions);
  v38 = a1;
  v39 = [v37 init];
  v202[3] = type metadata accessor for UIWindowSceneProminentPlacement();
  v202[4] = sub_100002CFC(&unk_100094250, &type metadata accessor for UIWindowSceneProminentPlacement);
  sub_10000AE7C(v202);
  static UIWindowScenePlacement<>._largeProminentPlacement()();
  UIWindowSceneActivationRequestOptions.placement.setter();

  v40 = [objc_allocWithZone(UIWindow) initWithWindowScene:v36];
  v41 = *&v4[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window];
  v190 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window;
  *&v4[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window] = v40;
  v42 = v40;

  if (v42)
  {
    [v42 setRootViewController:v34];
  }

  v43 = v200;
  static Logger.Application.getter();
  v44 = v4;
  v199 = v34;
  v45 = v38;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v191 = v44;

  v194 = v45;
  v48 = os_log_type_enabled(v46, v47);
  v187 = v14;
  v198 = v4;
  if (v48)
  {
    v180 = v47;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v202[0] = swift_slowAlloc();
    *v49 = 136316162;
    *(v49 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
    *(v49 + 12) = 2080;
    v51 = [v36 session];
    v52 = [v51 persistentIdentifier];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_100005D28(v53, v55, v202);

    *(v49 + 14) = v56;
    *(v49 + 22) = 2112;
    *(v49 + 24) = v36;
    *v50 = v36;
    *(v49 + 32) = 2112;
    v57 = *&v4[v190];
    if (!v57)
    {

      __break(1u);
      return;
    }

    v58 = v194;
    v59 = v57;
    v60 = v199;

    *(v49 + 34) = v59;
    *(v49 + 42) = 2112;
    *(v49 + 44) = v60;
    v50[1] = v57;
    v50[2] = v32;
    v61 = v60;
    _os_log_impl(&_mh_execute_header, v46, v180, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v49, 0x34u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v62 = *(v187 + 8);
    v63 = v200;
  }

  else
  {

    v62 = *(v14 + 8);
    v63 = v43;
  }

  v200 = v62;
  (v62)(v63, v201);
  v73 = v195;
  v74 = [v195 stateRestorationActivity];
  v75 = v191;
  if (v74)
  {
    v76 = v74;
    v77 = v188;
    static Logger.Application.getter();
    v78 = v76;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v202[0] = v83;
      *v81 = 136315394;
      *(v81 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
      *(v81 + 12) = 2112;
      *(v81 + 14) = v78;
      *v82 = v76;
      v84 = v78;
      _os_log_impl(&_mh_execute_header, v79, v80, "%s: stateRestorationActivity: %@", v81, 0x16u);
      sub_100005A04(v82, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v83);
      v75 = v191;
    }

    (v200)(v77, v201);
    v86 = v192;
    v85 = v193;
    v87 = v189;
    v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene] = sub_100061F48() & 1;
    if (sub_1000612D0())
    {
      swift_getObjectType();
      v88 = DOCNode.fpfs_syncFetchFPItem()();
      if (v88)
      {
        v89 = v88;
        sub_10000DB4C(&qword_100093F90, &qword_100074650);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1000742D0;
        *(v90 + 32) = v89;
        v91 = v186;
        *v186 = v90;
        (*(v86 + 104))(v91, enum case for DOCPreviewSource.nodes(_:), v85);
        v92 = *&v198[v196];
        if (v92)
        {
          v93 = v185;
          (*(v86 + 16))(v185, v91, v85);
          (*(v86 + 56))(v93, 0, 1, v85);
          v94 = v89;
          v95 = v92;
          dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

          swift_unknownObjectRelease();
          sub_100005A04(v93, &unk_100093F80, &qword_100074648);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v86 + 8))(v91, v85);
LABEL_29:
        v116 = v183;
LABEL_30:
        v117 = v198;
        v118 = v190;
        [*&v198[v190] makeKeyAndVisible];
        v119 = *&v117[v118];
        if (v119)
        {
          v120 = objc_allocWithZone(DOCAppearance);
          v121 = v119;
          v122 = [v120 init];
          [v121 setAppearance:v122];
        }

        sub_10006511C();
        sub_100065320();
        sub_1000612C4();
        if (v123 && (v124 = v123, v125 = sub_100061778(), v124, v125))
        {
          v126 = v125;
        }

        else
        {
          v126 = [objc_allocWithZone(DOCConfiguration) init];
          static Logger.Application.getter();
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v202[0] = v130;
            *v129 = 136315138;
            *(v129 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
            _os_log_impl(&_mh_execute_header, v127, v128, "%s: couldn't fetch configuration from UserActivity. Keep going with DOCConfiguration() but things might act weirdly", v129, 0xCu);
            sub_100034948(v130);
          }

          (v200)(v116, v201);
        }

        v131 = [objc_opt_self() defaultPermission];
        v132 = [v131 userActionForConfiguration:v126];

        v133 = [v126 hostIdentifier];
        v134 = v198;
        if (!v133)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v133 = String._bridgeToObjectiveC()();
        }

        v135 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v132 hostIdentifier:v133];

        type metadata accessor for DOCHierarchyController();
        v136 = v135;
        v137 = v126;
        v138 = DOCHierarchyController.__allocating_init(configuration:sourceObserver:minParentLocations:)();
        v139 = objc_allocWithZone(type metadata accessor for DOCDocumentManager());
        v140 = v136;
        v141 = v138;
        v142 = DOCDocumentManager.init(configuration:sourceObserver:hierarchyController:)();
        v143 = *&v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager];
        *&v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager] = v142;

        v144 = v196;
        v145 = *&v134[v196];
        if (v145 && (v146 = v137, v147 = v145, dispatch thunk of DOCPreviewController.configuration.setter(), v147, (v148 = *&v134[v144]) != 0))
        {
          v202[0] = *&v134[v144];
          swift_getKeyPath();
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v149 = v148;
          v150 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
        }

        else
        {

          v150 = 0;
        }

        v151 = *&v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookPreviewItemObserver];
        *&v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookPreviewItemObserver] = v150;

        return;
      }

      swift_unknownObjectRelease();
    }

    static Logger.Application.getter();
    v109 = v78;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v202[0] = v114;
      *v112 = 136446466;
      *(v112 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
      *(v112 + 12) = 2112;
      *(v112 + 14) = v109;
      *v113 = v76;
      v115 = v109;
      _os_log_impl(&_mh_execute_header, v110, v111, "%{public}s: stateRestorationActivity contained no restorable state: %@", v112, 0x16u);
      sub_100005A04(v113, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v114);
    }

    else
    {
    }

    (v200)(v87, v201);
    goto LABEL_29;
  }

  v96 = v197;
  sub_1000612C4();
  if (v97)
  {
    v98 = v97;
    v99 = sub_1000612D0();
    if (v99)
    {
      v100 = v99;
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1000742D0;
      *(v101 + 32) = v100;

      v102 = v182;
      static Logger.Application.getter();

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v202[0] = swift_slowAlloc();
        *v105 = 136446466;
        *(v105 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
        *(v105 + 12) = 2082;
        sub_10000DB4C(&unk_100093BB0, &qword_100074428);
        v106 = Array.description.getter();
        v108 = sub_100005D28(v106, v107, v202);

        *(v105 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v103, v104, "%{public}s: Restore from quick look items: %{public}s", v105, 0x16u);
        swift_arrayDestroy();
      }

      (v200)(v102, v201);
      sub_1000612C4();
      if (v161)
      {
        v162 = v161;
        v163 = sub_100061F48();

        v75[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene] = v163 & 1;
      }

      v164 = &_swiftEmptyArrayStorage;
      v202[0] = &_swiftEmptyArrayStorage;
      v165 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v165)
      {
        v166 = 0;
        do
        {
          v167 = v166;
          while (1)
          {
            if ((v101 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v166 = v167 + 1;
              if (__OFADD__(v167, 1))
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (v167 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v168 = *(v101 + 8 * v167 + 32);
              swift_unknownObjectRetain();
              v166 = v167 + 1;
              if (__OFADD__(v167, 1))
              {
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v167;
            if (v166 == v165)
            {
              goto LABEL_66;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v169 = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v164 = v202[0];
        }

        while (v166 != v165);
      }

LABEL_66:

      if (v164 >> 62)
      {
LABEL_73:

        sub_10000DB4C(&unk_100093BB0, &qword_100074428);
        v170 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v170 = v164;
      }

      v116 = v183;
      v172 = v192;
      v171 = v193;

      v173 = v181;
      *v181 = v170;
      (*(v172 + 104))(v173, enum case for DOCPreviewSource.nodes(_:), v171);
      v174 = *&v198[v196];
      if (v174)
      {
        v175 = v185;
        (*(v172 + 16))(v185, v173, v171);
        (*(v172 + 56))(v175, 0, 1, v171);
        v176 = v174;
        v177 = v173;
        v178 = v176;
        dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

        sub_100005A04(v175, &unk_100093F80, &qword_100074648);
        (*(v172 + 8))(v177, v171);
      }

      else
      {
        (*(v172 + 8))(v173, v171);
      }

      goto LABEL_30;
    }
  }

  v152 = v184;
  static Logger.Application.getter();
  v153 = v96;
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v202[0] = v158;
    *v156 = 136315394;
    *(v156 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v202);
    *(v156 + 12) = 2112;
    *(v156 + 14) = v153;
    *v157 = v153;
    v159 = v153;
    _os_log_impl(&_mh_execute_header, v154, v155, "%s: Unexpected scene connection options: %@", v156, 0x16u);
    sub_100005A04(v157, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v158);
  }

  (v200)(v152, v201);
  v160 = [objc_opt_self() sharedApplication];
  [v160 requestSceneSessionDestruction:v73 options:0 errorHandler:0];
}

void sub_10006511C()
{
  v1 = _DocumentManagerBundle();
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v15._object = 0x8000000100076530;
  v3._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0x6F4C206B63697551;
  v5._object = 0x8000000100076510;
  v15._countAndFlagsBits = 0xD000000000000025;
  v5._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0xEA00000000006B6FLL;
  DOCLocalizedString(_:tableName:bundle:value:comment:)(v5, v3, v2, v4, v15);

  v6 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v6)
  {
    v7 = [v6 windowScene];
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
      if (v9)
      {
        v10 = [v9 currentPreviewItem];
        if (v10)
        {
          v11 = v10;
          if ([v10 respondsToSelector:"previewItemTitle"])
          {
            v12 = [v11 previewItemTitle];
            swift_unknownObjectRelease();
            if (!v12)
            {
              v13 = 0;
              goto LABEL_14;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      v13 = String._bridgeToObjectiveC()();
LABEL_14:

      [v8 setTitle:v13];

      return;
    }
  }
}

void sub_100065320()
{
  v1 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = aBlock - v7;
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v0[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
  if (v16)
  {
    v17 = v16;
    v18 = [v17 currentPreviewItem];
    if (v18)
    {
      v19 = [v18 previewItemURL];
      swift_unknownObjectRelease();
      if (v19)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = *(v12 + 56);
        v20(v8, 0, 1, v11);
      }

      else
      {
        v20 = *(v12 + 56);
        v20(v8, 1, 1, v11);
      }

      sub_10000B2A8(v8, v10);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {

        (*(v12 + 32))(v15, v10, v11);
        (*(v12 + 16))(v5, v15, v11);
        v20(v5, 0, 1, v11);
        sub_100066EB8(v5, v0);

        sub_100005A04(v5, &qword_100093F50, &qword_100074090);
        (*(v12 + 8))(v15, v11);
        return;
      }
    }

    else
    {
      v20 = *(v12 + 56);
      v20(v10, 1, 1, v11);
    }

    sub_100005A04(v10, &qword_100093F50, &qword_100074090);
    v21 = [v17 currentPreviewItem];

    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 fpItem];
        if (v23)
        {
          v24 = v23;
          v25 = [objc_opt_self() defaultManager];
          v26 = swift_allocObject();
          *(v26 + 16) = v0;
          aBlock[4] = sub_100068D70;
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000526E0;
          aBlock[3] = &unk_10008F700;
          v27 = _Block_copy(aBlock);
          v28 = v0;

          [v25 fetchURLForItem:v24 completionHandler:v27];

          _Block_release(v27);
          swift_unknownObjectRelease();

          return;
        }
      }

      swift_unknownObjectRelease();
    }

    v20(v5, 1, 1, v11);
    sub_100066EB8(v5, v0);
  }

  else
  {
    (*(v12 + 56))(v5, 1, 1, v11);
    sub_100066EB8(v5, v0);
  }

  sub_100005A04(v5, &qword_100093F50, &qword_100074090);
}

void sub_1000657F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10006511C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100065320();
  }
}

uint64_t sub_100065908(uint64_t a1)
{
  v73 = type metadata accessor for Logger();
  v2 = *(v73 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v73);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v59 - v8;
  v62 = type metadata accessor for DOCPreviewSource();
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v62);
  v60 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v80 = &_swiftEmptyArrayStorage;
  v18 = *(a1 + 16);
  if (v18)
  {
    v71 = v15;
    v78 = objc_opt_self();
    v21 = *(v12 + 16);
    v20 = v12 + 16;
    v19 = v21;
    v22 = (a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
    v23 = *(v20 + 56);
    v75 = (v20 - 8);
    v76 = v23;
    v70 = (v2 + 8);
    v74 = &_swiftEmptyArrayStorage;
    *&v24 = 136315650;
    v65 = v24;
    v77 = v21;
    v66 = v5;
    v72 = v20;
    v64 = v17;
    v21(v17, v22, v11);
    while (1)
    {
      v26 = [v78 defaultManager];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v81 = 0;
      v30 = [v26 itemForURL:v28 error:&v81];

      if (v30)
      {
        v31 = v81;
        v32 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v75)(v17, v11);
        v74 = v80;
      }

      else
      {
        v33 = v81;
        v34 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.Application.getter();
        v35 = v17;
        v36 = v71;
        v19(v71, v35, v11);
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v81 = v69;
          *v39 = v65;
          *(v39 + 4) = sub_100005D28(0x28734C5255746573, 0xEE00293A736C7275, &v81);
          *(v39 + 12) = 2080;
          sub_100002CFC(&unk_1000937B0, &type metadata accessor for URL);
          v68 = v38;
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          v43 = *v75;
          v67 = v37;
          v43(v36, v11);
          v44 = sub_100005D28(v40, v42, &v81);

          *(v39 + 14) = v44;
          *(v39 + 22) = 2080;
          v79 = v34;
          swift_errorRetain();
          sub_10000DB4C(&qword_1000937C0, &unk_100074070);
          v45 = String.init<A>(describing:)();
          v47 = sub_100005D28(v45, v46, &v81);

          *(v39 + 24) = v47;
          v48 = v67;
          _os_log_impl(&_mh_execute_header, v67, v68, "%s: couldn't fetch item for url. URL %s error %s", v39, 0x20u);
          swift_arrayDestroy();

          v5 = v66;

          (*v70)(v5, v73);
          v17 = v64;
          v43(v64, v11);
        }

        else
        {

          v25 = *v75;
          (*v75)(v36, v11);
          (*v70)(v5, v73);
          v25(v35, v11);
          v17 = v35;
        }
      }

      v19 = v77;
      v22 += v76;
      if (!--v18)
      {
        break;
      }

      v77(v17, v22, v11);
    }
  }

  else
  {
    v74 = &_swiftEmptyArrayStorage;
  }

  v50 = v74;
  v51 = v62;
  if (v74 >> 62)
  {

    sub_10000DB4C(&unk_100093BB0, &qword_100074428);
    v52 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v52 = v50;
  }

  v53 = v61;
  v54 = v60;

  *v54 = v52;
  (*(v53 + 104))(v54, enum case for DOCPreviewSource.nodes(_:), v51);
  v55 = *(v63 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (v55)
  {
    v56 = v59;
    (*(v53 + 16))(v59, v54, v51);
    (*(v53 + 56))(v56, 0, 1, v51);
    v57 = v55;
    dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

    sub_100005A04(v56, &unk_100093F80, &qword_100074648);
  }

  return (*(v53 + 8))(v54, v51);
}

void sub_100066138(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v20);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: scene: %@", v12, 0x16u);
    sub_100005A04(v13, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v14);
  }

  (*(v5 + 8))(v8, v4);
  v16 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager) = 0;

  v17 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window) = 0;

  v18 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController) = 0;
}

id sub_100066608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickLookSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for QuickLookSceneDelegate()
{
  result = qword_100094228;
  if (!qword_100094228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100066714()
{
  sub_1000055A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000667BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager);
  if (v1)
  {
    v2 = v1;
    DOCDocumentManager.previewController(_:import:nextTo:completion:)();
  }
}

uint64_t sub_100066868()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
  swift_beginAccess();
  sub_100068D00(v0 + v18, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v17, v9, v10);
    v23 = URL.absoluteString.getter();
    (*(v11 + 8))(v17, v10);
    return v23;
  }

  sub_100005A04(v9, &qword_100093F50, &qword_100074090);
  v19 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (!v19)
  {
    return 0;
  }

  v20 = [v19 currentPreviewItem];
  if (!v20)
  {
    return 0;
  }

  v21 = [v20 previewItemURL];
  if (!v21)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      swift_unknownObjectRetain();
      v26 = [v25 fpItem];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 itemID];
        v23 = FPItemID.identifierString.getter();
        swift_unknownObjectRelease_n();

        return v23;
      }

      swift_unknownObjectRelease();
    }

    static Logger.UI.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No ID to return", v31, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v22 = v21;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = URL.absoluteString.getter();
  swift_unknownObjectRelease();
  (*(v11 + 8))(v15, v10);
  return v23;
}

uint64_t sub_100066C7C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_100005D28(0xD000000000000020, 0x80000001000764E0, &v18);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2112;
    v14 = v8;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    v12[1] = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s requestSceneSessionDestruction for scene: %@ failed with error: %@", v11, 0x20u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    sub_100034948(v13);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100066EB8(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - v13;
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v60 = type metadata accessor for Logger();
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v60);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v61 = a1;
  sub_100068D00(a1, v16);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v62 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v57 = v4;
    v25 = v14;
    v26 = v24;
    v27 = swift_slowAlloc();
    v58 = v3;
    v64[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075500, v64);
    *(v26 + 12) = 2080;
    sub_100068D00(v16, v25);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_100005A04(v16, &qword_100093F50, &qword_100074090);
    v31 = sub_100005D28(v28, v30, v64);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s identifier: %s", v26, 0x16u);
    swift_arrayDestroy();
    v3 = v58;

    v4 = v57;
  }

  else
  {

    sub_100005A04(v16, &qword_100093F50, &qword_100074090);
  }

  (*(v17 + 8))(v20, v60);
  sub_100068D00(v61, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_100005A04(v11, &qword_100093F50, &qword_100074090);
    v32 = [objc_opt_self() predicateWithValue:0];
    v33 = v62;
    (*(v4 + 56))(v62, 1, 1, v3);
    v34 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
    v35 = v63;
    swift_beginAccess();
    v36 = v35 + v34;
    v37 = v33;
  }

  else
  {
    v38 = v4;
    v39 = *(v4 + 32);
    v40 = v59;
    v39(v59, v11, v3);
    v41 = URL.absoluteString.getter();
    v43 = v42;
    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    v44 = v3;
    sub_10000DB4C(&unk_100093B10, qword_1000749B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100073FE0;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000061E8();
    *(v45 + 32) = v41;
    *(v45 + 40) = v43;
    v32 = NSPredicate.init(format:_:)();
    v46 = v62;
    v39(v62, v40, v44);
    (*(v38 + 56))(v46, 0, 1, v44);
    v47 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
    v35 = v63;
    swift_beginAccess();
    v36 = v35 + v47;
    v37 = v46;
  }

  sub_1000091C8(v37, v36);
  swift_endAccess();
  v48 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window;
  v49 = *(v35 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v49)
  {
    v50 = [v49 windowScene];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 activationConditions];

      [v52 setCanActivateForTargetContentIdentifierPredicate:v32];
    }

    v53 = *(v35 + v48);
    if (v53)
    {
      v54 = [v53 windowScene];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 activationConditions];

        [v56 setPrefersToActivateForTargetContentIdentifierPredicate:v32];
        v32 = v56;
      }
    }
  }
}

uint64_t sub_1000674E0(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v24 - v15;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  sub_100068D00(a1, v16);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v25;
  sub_10000B2A8(v16, v19 + v18);
  aBlock[4] = sub_100068D78;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008F750;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100002CFC(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v27 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v26);
}

void sub_1000678C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 windowScene];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 session];
      v5 = sub_100067980();
      [v4 setStateRestorationActivity:v5];
    }
  }
}

id sub_100067980()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCUserActivityIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v12 currentPreviewItem];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = [v15 fpItem]) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v78 = v14;
  v79 = v12;
  v76 = v0;
  v17 = v16;
  (*(v7 + 104))(v10, enum case for DOCUserActivityIdentifier.quickLook(_:), v6);
  DOCUserActivityIdentifier.rawValue.getter();
  (*(v7 + 8))(v10, v6);
  v18 = objc_allocWithZone(NSUserActivity);
  v19 = String._bridgeToObjectiveC()();

  v80 = [v18 initWithActivityType:v19];

  v20 = objc_opt_self();
  *&v86[0] = 0;
  v77 = v17;
  v21 = [v20 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v86];
  v22 = *&v86[0];
  if (!v21)
  {
    v54 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v86[0] = v76;
      *v57 = 136315394;
      *(v57 + 4) = sub_100005D28(0xD00000000000001ELL, 0x8000000100075490, v86);
      *(v57 + 12) = 2080;
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v60 = sub_100005D28(v58, v59, v86);

      *(v57 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v55, v56, "%s: Failed to encode FPItem in to data. Error: %s", v57, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v5, v1);
    return v80;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v80)
  {
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v75 = xmmword_1000736D0;
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
    *(inited + 40) = v27;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000756A0;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v29 = v80;
    [v80 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v30 = swift_initStackObject();
    *(v30 + 16) = v75;
    *&v86[0] = DOCUserActivityDOCNodeKey.getter();
    *(&v86[0] + 1) = v31;
    AnyHashable.init<A>(_:)();
    *(v30 + 96) = &type metadata for Data;
    *(v30 + 72) = v23;
    *(v30 + 80) = v25;
    *&v86[0] = 0xD000000000000019;
    *(&v86[0] + 1) = 0x80000001000756A0;
    sub_10000AEE8(v23, v25);
    AnyHashable.init<A>(_:)();
    v32 = *(v76 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene);
    *(v30 + 168) = &type metadata for Bool;
    *(v30 + 144) = v32;
    sub_10004CBBC(v30);
    swift_setDeallocating();
    sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
    swift_arrayDestroy();
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 addUserInfoEntriesFromDictionary:v33];
  }

  v76 = v23;
  v34 = v79;
  v35 = [v79 userActivity];
  if (!v35 || (v36 = v35, v37 = [v35 userInfo], v36, !v37))
  {
    swift_unknownObjectRelease();
    sub_10000A0F8(v76, v25);

    return v80;
  }

  v74 = v25;
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = 1 << *(v38 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v38 + 64);
  v42 = (v39 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  *&v75 = &_swiftEmptyArrayStorage;
  while (v41)
  {
LABEL_18:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    sub_10000A718(*(v38 + 48) + 40 * (v45 | (v43 << 6)), v86);
    v81 = v86[0];
    v82 = v86[1];
    v83 = v87;
    if (swift_dynamicCast())
    {
      v46 = v85;
      if (v85)
      {
        v73 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v75 = sub_100006CC4(0, *(v75 + 16) + 1, 1, v75);
        }

        v48 = *(v75 + 16);
        v47 = *(v75 + 24);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v71 = *(v75 + 16);
          v72 = v48 + 1;
          v52 = sub_100006CC4((v47 > 1), v48 + 1, 1, v75);
          v48 = v71;
          v49 = v72;
          *&v75 = v52;
        }

        v50 = v75;
        *(v75 + 16) = v49;
        v51 = v50 + 16 * v48;
        *(v51 + 32) = v73;
        *(v51 + 40) = v46;
      }
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v38 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_18;
    }
  }

  if (!v80)
  {

    sub_10000A0F8(v76, v74);

    swift_unknownObjectRelease();

    return 0;
  }

  v61 = [v80 requiredUserInfoKeys];
  v62 = v79;
  v63 = v74;
  if (v61)
  {
    v64 = v61;
    v65 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *&v86[0] = v65;
    sub_10004CF64(v75);

    if (*&v86[0])
    {
      v66.super.isa = Set._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v66.super.isa = 0;
    }

    [v80 setRequiredUserInfoKeys:v66.super.isa];
  }

  else
  {

    [v80 setRequiredUserInfoKeys:0];
  }

  sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_100073FE0;
  *&v86[0] = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
  *(&v86[0] + 1) = v68;
  AnyHashable.init<A>(_:)();
  *(v67 + 96) = sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
  *(v67 + 72) = v38;
  sub_10004CBBC(v67);
  swift_setDeallocating();
  sub_100005A04(v67 + 32, &qword_100093A38, &qword_1000743B8);
  v69 = Dictionary._bridgeToObjectiveC()().super.isa;

  v70 = v80;
  [v80 addUserInfoEntriesFromDictionary:v69];

  sub_10000A0F8(v76, v63);
  swift_unknownObjectRelease();

  return v70;
}

uint64_t sub_100068434(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: userActivity: %@", v10, 0x16u);
    sub_100005A04(v11, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v12);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100068630()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075E80, &v13);
    *(v7 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100068DF0();
    v8 = Set.description.getter();
    v10 = sub_100005D28(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: openURLContexts: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_100068848()
{
  v1 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = &qword_100094000;
  if (os_log_type_enabled(v11, v12))
  {
    v35 = v5;
    v36 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100005D28(0xD000000000000020, 0x80000001000764E0, &v37);
    *(v14 + 12) = 2080;
    aBlock = sub_100066868();
    v39 = v16;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005D28(v17, v18, &v37);
    v13 = &qword_100094000;

    *(v14 + 14) = v19;
    *(v14 + 22) = 2112;
    v20 = *&v10[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window];
    if (v20)
    {
      v20 = [v20 windowScene];
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v35;
    *(v14 + 24) = v20;
    *v15 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s sceneIdentifier: %s scene: %@ setting clearing currentDocumentIdentifier state", v14, 0x20u);
    sub_100005A04(v15, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    (*(v6 + 8))(v9, v22);
    v4 = v36;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = *&v10[v13[60]];
  if (v23)
  {
    v24 = [v23 windowScene];
    if (v24)
    {
      v25 = v24;
      v26 = [objc_opt_self() sharedApplication];
      v27 = [v25 session];
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      v42 = sub_100068CF8;
      v43 = v28;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_1000639C4;
      v41 = &unk_10008F6B0;
      v29 = _Block_copy(&aBlock);
      v30 = v25;

      [v26 requestSceneSessionDestruction:v27 options:0 errorHandler:v29];

      _Block_release(v29);
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
      v32 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
      swift_beginAccess();
      sub_1000091C8(v4, &v10[v32]);
      swift_endAccess();
      v33 = *&v10[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
      *&v10[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController] = 0;
    }
  }
}

uint64_t sub_100068D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100068D78()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100066EB8(v3, v2);
}

unint64_t sub_100068DF0()
{
  result = qword_100093C28;
  if (!qword_100093C28)
  {
    sub_100002B84(255, &qword_100093C20, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093C28);
  }

  return result;
}

uint64_t sub_1000691FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10006928C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCPinchZoomTestParameters();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100069338(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  [a1 pinchOpenWithStartPoint:v3 endPoint:v4 duration:{v5, v6, 1.0}];
  [a1 advanceTime:0.5];

  return [a1 pinchCloseWithStartPoint:v5 endPoint:v6 duration:{v3, v4, 1.0}];
}

uint64_t sub_1000693EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_1000695C0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for URL();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v25 = &_swiftEmptyArrayStorage;
  sub_10006CB10(0, v10, 0);
  v11 = v25;
  v18 = v6 + 32;
  for (i = (a3 + 56); ; i += 4)
  {
    v13 = *(i - 1);
    v14 = *i;
    v22 = *(i - 3);
    v23 = v13;
    v24 = v14;

    v20(&v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v25 = v11;
    v16 = v11[2];
    v15 = v11[3];
    if (v16 >= v15 >> 1)
    {
      sub_10006CB10(v15 > 1, v16 + 1, 1);
      v11 = v25;
    }

    v11[2] = v16 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, v19);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100069794(uint64_t a1, void *a2)
{
  v40 = a2;
  v3 = type metadata accessor for URLComponents();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&unk_100094440, &qword_100074AC8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for DeepLinkComponents.Scheme();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = objc_allocWithZone(NSURLComponents);
  v39 = a1;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20 resolvingAgainstBaseURL:0];

  if (!v22)
  {
    goto LABEL_6;
  }

  v23 = [v22 scheme];
  if (!v23)
  {

LABEL_6:
    v26 = [v40 options];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = sub_10003A72C(v39, v26, 1, 1, 1u);
      swift_unknownObjectRelease();
    }

    else
    {

      v27 = 0;
    }

    return v27 & 1;
  }

  v24 = v23;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkComponents.Scheme.init(rawValue:)();
  v25 = v38;
  if ((*(v38 + 48))(v10, 1, v11) == 1)
  {

    sub_100005A04(v10, &unk_100094440, &qword_100074AC8);
    goto LABEL_6;
  }

  (*(v25 + 32))(v17, v10, v11);
  (*(v25 + 16))(v15, v17, v11);
  v28 = (*(v25 + 88))(v15, v11);
  if (v28 == enum case for DeepLinkComponents.Scheme.file(_:))
  {

    v29 = [v40 options];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = sub_10003A72C(v39, v29, 1, 1, 1u);

      swift_unknownObjectRelease();
    }

    else
    {

      v27 = 0;
    }

    (*(v38 + 8))(v17, v11);
    return v27 & 1;
  }

  if (v28 == enum case for DeepLinkComponents.Scheme.shareddocuments(_:))
  {

    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_10006B60C(v6, v40);

    (*(v37 + 8))(v6, v3);
    (*(v25 + 8))(v17, v11);
    return v27 & 1;
  }

  if (v28 == enum case for DeepLinkComponents.Scheme.smb(_:))
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      URL._bridgeToObjectiveC()(v31);
      v34 = v33;
      [v32 showConnectToServer:v33];

      v22 = v34;
    }

    (*(v25 + 8))(v17, v11);
    v27 = 1;
    return v27 & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100069CC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100069D68, v5, v4);
}

uint64_t sub_100069D68()
{
  v1 = v0[2];
  URLQueryItem.value.getter();
  if (v2 && (v3 = static DOCNamedLocation.from(location:)(), v5 = v4, , (v5 & 1) == 0))
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v0[9] = static MainActor.shared.getter();
    v12 = swift_task_alloc();
    v0[10] = v12;
    v12[2] = v10;
    v12[3] = v3;
    v12[4] = v11;
    v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_100069EE8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v6 = v0[6];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100069EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_10006A070;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_10006A00C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10006A00C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}