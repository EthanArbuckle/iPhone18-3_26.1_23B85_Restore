uint64_t start(int a1, char **a2)
{
  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.Main", "", buf, 2u);
  }

  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.FirstTab", "", v14, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[VUITVAppLauncher sharedInstance];
  [v7 preWarm:0];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_autoreleasePoolPop(v6);
  v12 = UIApplicationMain(a1, a2, v11, v9);

  return v12;
}

uint64_t type metadata accessor for SceneDelegate()
{
  result = qword_100023828;
  if (!qword_100023828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002354()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100002554(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(*(sub_1000096E4(&qword_100023270, &qword_100018CC0) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v82 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v87 = &v82 - v15;
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v86 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v90 = v21;
    *v20 = 136315138;
    v22 = [v16 session];
    v82 = v10;
    v23 = v3;
    v24 = a2;
    v25 = v22;
    v26 = [v22 persistentIdentifier];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v27;
    a2 = v24;
    v3 = v23;
    v10 = v82;
    v31 = sub_100002D7C(v30, v29, &v90);

    *(v20 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "scene:willConnectTo:options: %s", v20, 0xCu);
    sub_100002FB0(v21);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = objc_allocWithZone(UIWindow);
    v35 = v16;
    v36 = [v34 initWithWindowScene:v33];
    v37 = objc_opt_self();
    v38 = [v37 sharedInstance];
    [v38 setMainWindow:v36];

    v39 = [v37 sharedInstance];
    [v39 applicationDidFinishLaunchingWithOptions:0];
  }

  v40 = [a2 userActivities];
  sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
  sub_100003054(&qword_100023478, &qword_100023470, NSUserActivity_ptr);
  v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = sub_1000030A4(v41);

  if (v42)
  {
    v43 = [v42 webpageURL];
    if (v43)
    {
      v44 = a2;
      v45 = v43;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = [v42 _sourceApplication];
      v47 = &_swiftEmptyDictionarySingleton;
      if (v46)
      {
        v48 = v46;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
        v91 = &type metadata for String;
        *&v90 = v49;
        *(&v90 + 1) = v51;
        sub_10000ECC0(&v90, v89);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = &_swiftEmptyDictionarySingleton;
        sub_10000E27C(v89, v52, v54, isUniquelyReferenced_nonNull_native);

        v47 = v88;
      }

      v56 = v84;
      v57 = [v42 referrerURL];
      if (v57)
      {
        v58 = v57;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = 0;
      }

      else
      {
        v59 = 1;
      }

      a2 = v44;
      v60 = v86;
      (*(v86 + 56))(v56, v59, 1, v10);
      v61 = v85;
      sub_10000EE18(v56, v85);
      if ((*(v60 + 48))(v61, 1, v10))
      {
        sub_10000EE88(v61, &qword_100023270, &qword_100018CC0);
      }

      else
      {
        v62 = v83;
        (*(v60 + 16))(v83, v61, v10);
        sub_10000EE88(v61, &qword_100023270, &qword_100018CC0);
        v63 = URL.absoluteString.getter();
        v65 = v64;
        (*(v60 + 8))(v62, v10);
        sub_1000096E4(&qword_100023480, &qword_100018CC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100018A90;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v67;
        *(inited + 48) = v63;
        *(inited + 56) = v65;
        v68 = sub_10000E980(inited);
        swift_setDeallocating();
        sub_10000EE88(inited + 32, &qword_100023488, &qword_100018CD0);
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
        v91 = sub_1000096E4(&qword_100023490, &qword_100018CD8);
        *&v90 = v68;
        sub_10000ECC0(&v90, v89);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v47;
        sub_10000E27C(v89, v69, v71, v72);
      }

      v73 = [objc_opt_self() sharedInstance];
      v74 = v87;
      URL._bridgeToObjectiveC()(v75);
      v77 = v76;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v73 openURL:v77 options:isa];

      (*(v60 + 8))(v74, v10);
    }

    else
    {
    }
  }

  v79 = [a2 URLContexts];
  sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
  sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
  v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  (*((swift_isaMask & *v3) + 0xA0))(v80);
}

uint64_t sub_100002D7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002E48(v11, 0, 0, 1, a1, a2);
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
    sub_100002F54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002FB0(v11);
  return v7;
}

unint64_t sub_100002E48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C194(a5, a6);
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

uint64_t sub_100002F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002FB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000300C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003054(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000300C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030A4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000031C0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000031C0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10000E75C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000031C0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1000031C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000031CC(uint64_t a1)
{
  v112 = type metadata accessor for URL();
  v2 = *(v112 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v112);
  v111 = v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
    sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v125;
    v5 = v126;
    v6 = v127;
    v7 = v128;
    v8 = v129;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v109[1] = v6;
  v12 = (v6 + 64) >> 6;
  v110 = (v2 + 8);
  v120 = UIApplicationOpenURLOptionsSourceApplicationKey;
  v119 = UIApplicationOpenURLOptionsAnnotationKey;
  v117 = UIApplicationOpenURLOptionsEventAttributionKey;
  v118 = UIApplicationOpenURLOptionsOpenInPlaceKey;
  v113 = a1;
  v114 = v5;
  v115 = v12;
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      return sub_100003D44();
    }

    *&v122[0] = v18;
    sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v17 = v123;
    v15 = v7;
    v16 = v8;
    if (!v123)
    {
      return sub_100003D44();
    }

LABEL_19:
    v19 = v120;
    v20 = [v17 options];
    v21 = [v20 sourceApplication];

    if (!v21)
    {
      v34 = _swiftEmptyDictionarySingleton;
      v35 = sub_10000D864(v19);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v122[0] = _swiftEmptyDictionarySingleton;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10000E438();
          v34 = *&v122[0];
        }

        sub_10000ECC0((v34[7] + 32 * v37), &v123);
        sub_10000E0B4(v37, v34);
      }

      else
      {

        v123 = 0u;
        v124 = 0u;
      }

      sub_10000EE88(&v123, &qword_1000232D0, &unk_100018AA0);
      goto LABEL_36;
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(&v124 + 1) = &type metadata for String;
    *&v123 = v22;
    *(&v123 + 1) = v24;
    sub_10000ECC0(&v123, v122);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v121 = _swiftEmptyDictionarySingleton;
    v26 = sub_10000D864(v19);
    v28 = _swiftEmptyDictionarySingleton[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_86;
    }

    v32 = v27;
    if (_swiftEmptyDictionarySingleton[3] >= v31)
    {
      if ((v25 & 1) == 0)
      {
        v40 = v26;
        sub_10000E438();
        v26 = v40;
        v34 = v121;
        if (v32)
        {
LABEL_30:
          v39 = (v34[7] + 32 * v26);
          sub_100002FB0(v39);
          sub_10000ECC0(v122, v39);

          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_10000DB2C(v31, v25);
      v26 = sub_10000D864(v19);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_93;
      }
    }

    v34 = v121;
    if (v32)
    {
      goto LABEL_30;
    }

LABEL_34:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + 8 * v26) = v19;
    sub_10000ECC0(v122, (v34[7] + 32 * v26));
    v41 = v34[2];
    v30 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v30)
    {
      goto LABEL_90;
    }

    v34[2] = v42;
LABEL_36:
    v43 = v119;
    v44 = [v17 options];
    v45 = [v44 annotation];

    if (!v45)
    {
      v54 = sub_10000D864(v43);
      if (v55)
      {
        v56 = v54;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *&v122[0] = v34;
        if (!v57)
        {
          sub_10000E438();
          v34 = *&v122[0];
        }

        sub_10000ECC0((v34[7] + 32 * v56), &v123);
        sub_10000E0B4(v56, v34);
      }

      else
      {

        v123 = 0u;
        v124 = 0u;
      }

      sub_10000EE88(&v123, &qword_1000232D0, &unk_100018AA0);
      goto LABEL_53;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000ECC0(&v123, v122);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v34;
    v47 = sub_10000D864(v43);
    v49 = v34[2];
    v50 = (v48 & 1) == 0;
    v30 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (v30)
    {
      goto LABEL_87;
    }

    v52 = v48;
    if (v34[3] >= v51)
    {
      if ((v46 & 1) == 0)
      {
        v59 = v47;
        sub_10000E438();
        v47 = v59;
        v34 = v121;
        if (v52)
        {
LABEL_47:
          v58 = (v34[7] + 32 * v47);
          sub_100002FB0(v58);
          sub_10000ECC0(v122, v58);

          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_10000DB2C(v51, v46);
      v47 = sub_10000D864(v43);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_93;
      }
    }

    v34 = v121;
    if (v52)
    {
      goto LABEL_47;
    }

LABEL_51:
    v34[(v47 >> 6) + 8] |= 1 << v47;
    *(v34[6] + 8 * v47) = v43;
    sub_10000ECC0(v122, (v34[7] + 32 * v47));
    v60 = v34[2];
    v30 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v30)
    {
      goto LABEL_91;
    }

    v34[2] = v61;
LABEL_53:
    v62 = [v17 options];
    v63 = [v62 openInPlace];

    *(&v124 + 1) = &type metadata for Bool;
    LOBYTE(v123) = v63;
    sub_10000ECC0(&v123, v122);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v34;
    v65 = v118;
    v66 = sub_10000D864(v118);
    v68 = v34[2];
    v69 = (v67 & 1) == 0;
    v30 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v30)
    {
      goto LABEL_85;
    }

    v71 = v67;
    if (v34[3] < v70)
    {
      sub_10000DB2C(v70, v64);
      v66 = sub_10000D864(v65);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_93;
      }

LABEL_58:
      v73 = v121;
      if (v71)
      {
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (v64)
    {
      goto LABEL_58;
    }

    v75 = v66;
    sub_10000E438();
    v66 = v75;
    v73 = v121;
    if (v71)
    {
LABEL_59:
      v74 = (v73[7] + 32 * v66);
      sub_100002FB0(v74);
      sub_10000ECC0(v122, v74);
      goto LABEL_63;
    }

LABEL_61:
    v73[(v66 >> 6) + 8] |= 1 << v66;
    *(v73[6] + 8 * v66) = v65;
    sub_10000ECC0(v122, (v73[7] + 32 * v66));
    v76 = v73[2];
    v30 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v30)
    {
      goto LABEL_89;
    }

    v73[2] = v77;
    v78 = v65;
LABEL_63:
    v79 = v117;
    v80 = [v17 options];
    v81 = [v80 eventAttribution];

    if (v81)
    {
      *(&v124 + 1) = sub_10000300C(0, &qword_1000232E0, UIEventAttribution_ptr);
      *&v123 = v81;
      sub_10000ECC0(&v123, v122);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v73;
      v84 = sub_10000D864(v79);
      v85 = v73[2];
      v86 = (v83 & 1) == 0;
      v87 = v85 + v86;
      if (__OFADD__(v85, v86))
      {
        goto LABEL_88;
      }

      v88 = v83;
      if (v73[3] >= v87)
      {
        if ((v82 & 1) == 0)
        {
          sub_10000E438();
        }
      }

      else
      {
        sub_10000DB2C(v87, v82);
        v89 = sub_10000D864(v79);
        if ((v88 & 1) != (v90 & 1))
        {
          goto LABEL_93;
        }

        v84 = v89;
      }

      a1 = v113;
      v95 = v121;
      if (v88)
      {
        v96 = (v121[7] + 32 * v84);
        sub_100002FB0(v96);
        sub_10000ECC0(v122, v96);
      }

      else
      {
        v121[(v84 >> 6) + 8] |= 1 << v84;
        *(v95[6] + 8 * v84) = v79;
        sub_10000ECC0(v122, (v95[7] + 32 * v84));
        v97 = v95[2];
        v30 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v30)
        {
          goto LABEL_92;
        }

        v95[2] = v98;
      }
    }

    else
    {
      v91 = sub_10000D864(v79);
      if (v92)
      {
        v93 = v91;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *&v122[0] = v73;
        if (!v94)
        {
          sub_10000E438();
          v73 = *&v122[0];
        }

        sub_10000ECC0((v73[7] + 32 * v93), &v123);
        sub_10000E0B4(v93, v73);
      }

      else
      {

        v123 = 0u;
        v124 = 0u;
      }

      sub_10000EE88(&v123, &qword_1000232D0, &unk_100018AA0);
    }

    v99 = *(v116 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate);
    if (v99 && ([*(v116 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate) respondsToSelector:"application:openURL:options:"] & 1) != 0)
    {
      v100 = [objc_opt_self() sharedApplication];
      v101 = [v17 URL];
      v102 = v111;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v103);
      v105 = v104;
      type metadata accessor for OpenURLOptionsKey();
      sub_10000ED20(&qword_1000232D8);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v99 application:v100 openURL:v105 options:isa];

      v107 = v102;
      a1 = v113;
      (*v110)(v107, v112);
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v5 = v114;
    v12 = v115;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      return sub_100003D44();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      return sub_100003D44();
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  type metadata accessor for OpenURLOptionsKey();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100003DB4(void *a1, const char *a2)
{
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v3 session];
    v8 = [v7 persistentIdentifier];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100002D7C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0xCu);
    sub_100002FB0(v6);
  }
}

void sub_100004050(id a1)
{
  qword_1000235C0 = [[ATAPPTController alloc] _init];

  _objc_release_x1();
}

void sub_100004584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000459C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL sub_100004888(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

BOOL sub_10000492C(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:1 tabBarController:v7 scrollViewBlock:&stru_10001CE48];

  return v8;
}

BOOL sub_1000049E8(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CE88];

  return v8;
}

UIScrollView *__cdecl sub_100004A90(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 view];

  v4 = [ATAPPTUtilities findScrollViewInView:v3 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v4;
}

BOOL sub_100004B24(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CEC8];

  return v8;
}

UIScrollView *__cdecl sub_100004BCC(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 childViewControllers];

  v4 = [v3 firstObject];

  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  v7 = [v6 view];
  v8 = [ATAPPTUtilities findScrollViewInView:v7 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v8;
}

BOOL sub_100004CAC(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CF08];

  return v8;
}

UIScrollView *__cdecl sub_100004D54(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 childViewControllers];

  v4 = [v3 firstObject];

  v5 = [v4 viewControllers];
  v6 = [v5 lastObject];

  v7 = [v6 view];
  v8 = [ATAPPTUtilities findScrollViewInView:v7 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v8;
}

BOOL sub_100004E34(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  +[ATAPPTUtilities resetNumScrollViewFound];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:1 tabBarController:v7 scrollViewBlock:&stru_10001CF48];

  return v8;
}

BOOL sub_100004EE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = VUITabBarItemIdentifierKeyPPTStack;
  [ATAPPTUtilities selectTabWithTitle:VUITabBarItemIdentifierKeyPPTStack inTabBarController:v6];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v8 inTabBarController:v6 totalChildren:1];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  }

  v11 = [ATAPPTUtilities performScrollViewTest:v7 testOptions:0 scrollAxis:1 tabBarController:v6 scrollViewBlock:&stru_10001CF68];

  return v11;
}

BOOL sub_100004FE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = VUITabBarItemIdentifierKeyPPTStack;
  [ATAPPTUtilities selectTabWithTitle:VUITabBarItemIdentifierKeyPPTStack inTabBarController:v6];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v8 inTabBarController:v6 totalChildren:1];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  }

  v11 = [ATAPPTUtilities performScrollViewTest:v7 testOptions:0 scrollAxis:1 tabBarController:v6 scrollViewBlock:&stru_10001CFB0];

  return v11;
}

BOOL sub_1000050F8(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTSports;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

BOOL sub_10000519C(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTShowProduct;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

void sub_100005418(id *a1)
{
  if (([a1[4] hasPrefix:@"Scroll"] & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005600;
    block[3] = &unk_10001D018;
    v10 = a1[5];
    v11 = a1[4];
    dispatch_sync(&_dispatch_main_q, block);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000560C;
  v5[3] = &unk_10001D090;
  objc_copyWeak(&v8, a1 + 7);
  v6 = a1[4];
  v7 = a1[5];
  [a1[6] setApplicationLoadCompletion:v5];
  os_unfair_lock_lock(a1[6] + 3);
  v2 = a1[6];
  v3 = *(v2 + 8);
  os_unfair_lock_unlock(v2 + 3);
  if ((v3 & 1) == 0)
  {
    usleep(0x7A120u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005A24;
  v4[3] = &unk_10001D0B8;
  v4[4] = a1[6];
  dispatch_sync(&_dispatch_main_q, v4);

  objc_destroyWeak(&v8);
}

void sub_10000560C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056E8;
  block[3] = &unk_10001D090;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(v3, block);

  objc_destroyWeak(&v7);
}

void sub_1000056E8(id *a1)
{
  v2 = +[ATAPPTUtilities prepareForPPT];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005920;
  v20 = sub_10000594C;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained testsManifest];
  v5 = [v4 allKeys];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005954;
  v12[3] = &unk_10001D040;
  v13 = a1[4];
  v14 = &v16;
  objc_copyWeak(&v15, a1 + 6);
  [v5 enumerateObjectsUsingBlock:v12];
  v6 = v17[5];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, a1[5], v2, a1[4]);
  }

  else
  {
    v7 = 0;
  }

  if (([a1[4] hasPrefix:@"Scroll"] & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000059FC;
    v8[3] = &unk_10001D068;
    v11 = v7;
    v9 = a1[5];
    v10 = a1[4];
    dispatch_sync(&_dispatch_main_q, v8);
  }

  objc_destroyWeak(&v15);

  _Block_object_dispose(&v16, 8);
}

void sub_1000058F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100005920(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100005954(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([*(a1 + 32) hasPrefix:?])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained testsManifest];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

id sub_1000059FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 finishedTest:v4 waitForCommit:? extraResults:?];
  }

  else
  {
    return [v3 failedTest:v4];
  }
}

void sub_100005A24(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationLoadCompletion];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setApplicationLoadCompletion:0];
    v3[2](v3);
    v2 = v3;
  }
}

void sub_1000069C4(id a1)
{
  qword_1000235D0 = os_log_create("com.apple.tv", "ATAPPTUtilities");

  _objc_release_x1();
}

void sub_100006A4C(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_1000235E0;
  qword_1000235E0 = v1;

  [qword_1000235E0 setMaxConcurrentOperationCount:1];
  v3 = qword_1000235E0;

  [v3 setQualityOfService:17];
}

void sub_100006F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006F3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006F54(uint64_t a1)
{
  v2 = [*(a1 + 48) _topViewControllerInTabBarController:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(a1 + 48);
    v6 = [objc_opt_class() topMostController];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    _objc_release_x1();
  }
}

uint64_t sub_100006FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 40));
  }

  else
  {
    [*(a1 + 56) _findScrollViewInViewController:*(*(*(a1 + 48) + 8) + 40)];
  }
  v3 = ;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100007060(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007130;
  v6[3] = &unk_10001D1D8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 _performScrollTest:v5 iterations:10 delta:v3 length:v4 scrollAxis:v1 extraResultsBlock:&stru_10001D1B0 completionBlock:v6];
}

void sub_100007138(void *a1)
{
  if (a1[6] == 1 && ([*(*(a1[5] + 8) + 40) _contentScrollsAlongXAxis] & 1) == 0)
  {
    [*(*(a1[5] + 8) + 40) _setContentScrollsAlongXAxis:1];
  }

  v2 = [[RPTScrollViewTestParameters alloc] initWithTestName:a1[4] scrollView:*(*(a1[5] + 8) + 40) completionHandler:0];
  [RPTTestRunner runTestWithParameters:v2];
}

void sub_1000072D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000072EC(uint64_t a1)
{
  v2 = +[UIWindow keyWindow];
  v3 = [v2 rootViewController];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v7 = [*(*(*(a1 + 32) + 8) + 40) navigationController];
  v6 = [v7 popToRootViewControllerAnimated:0];
}

void sub_1000077C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000077E8(uint64_t a1)
{
  [*(a1 + 32) tabBarItems];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = v25 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = VUITabBarItemKeyIdentifier;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) vui_stringForKey:{v6, v22}];
        if ([v8 isEqualToString:*(a1 + 40)])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;

          goto LABEL_11;
        }

        ++*(*(*(a1 + 56) + 8) + 24);
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = +[ATAPPTUtilities testLog];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138412546;
      v27 = v12;
      v28 = 2048;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found '%@' at index %lu", buf, 0x16u);
    }

    [*(a1 + 32) setSelectedIndex:*(*(*(a1 + 56) + 8) + 24)];
    v14 = [*(a1 + 32) viewControllers];
    v11 = [v14 objectAtIndex:*(*(*(a1 + 56) + 8) + 24)];

    v15 = [*(a1 + 32) delegate];
    [v15 tabBarController:*(a1 + 32) didSelectViewController:v11];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000128A0(a1, v11, v16, v17, v18, v19, v20, v21);
  }
}

int64_t sub_100007F8C(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    [v4 frame];
    v8 = v7;
    [v6 frame];
    v10 = v9;

    if (v8 > v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL +[ATAPPTUtilities _blockExecutionInTabBarController:documentRef:totalChildren:](id a1, SEL a2, id a3, id a4, unint64_t a5)
{
  v7 = a3;
  v8 = a4;
  v29 = v7;
  [v7 tabBarItems];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v9 = v39 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v30 = 0;
    v11 = *v39;
    v12 = VUITabBarItemKeyIdentifier;
    while (2)
    {
      v13 = 0;
      v14 = v30;
      v30 += v10;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v38 + 1) + 8 * v13) vui_stringForKey:v12];
        v16 = [v15 isEqualToString:v8];

        if (v16)
        {
          v30 = v14;
          goto LABEL_12;
        }

        ++v14;
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_12:

  v17 = [v29 viewControllers];
  v28 = [v17 count];

  if (v30 < v28)
  {
    v18 = [v29 viewControllers];
    v26 = [v18 objectAtIndex:v30];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v26;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 viewControllers];
    if ([v20 count] >= a5)
    {
LABEL_20:
    }

    else
    {
      v21 = 11;
      while (1)
      {

        if (!--v21)
        {
          break;
        }

        usleep(0xC350u);
        v20 = [v19 viewControllers];
        if ([v20 count] >= a5)
        {
          goto LABEL_20;
        }
      }
    }

    v22 = [v19 viewControllers];
    v23 = [v22 lastObject];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    while (1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000083C8;
      block[3] = &unk_10001D2E0;
      v33 = &v34;
      v24 = v23;
      v32 = v24;
      dispatch_sync(&_dispatch_main_q, block);
      if (*(v35 + 24) != 1)
      {
        break;
      }

      usleep(0xC350u);
    }

    _Block_object_dispose(&v34, 8);
  }

  return v30 < v28;
}

void sub_1000083A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000083C8(uint64_t a1)
{
  result = [*(a1 + 32) vui_ppt_isLoading];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100008838(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 text];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

uint64_t sub_100008FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 textLabels];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) text];
          v11 = [v10 isEqualToString:*(a1 + 32)];

          if (v11)
          {
            v12 = 1;
            goto LABEL_13;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100009230(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 performSelector:"textContentView"];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 performSelector:"text"];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000093F0(uint64_t a1, void *a2)
{
  v3 = [a2 currentTitle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10000956C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100009588()
{
  v0 = sub_1000096E4(&qword_1000230F0, &qword_100018820);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_1000096E4(&qword_1000230F8, &qword_100018828);
  sub_100009828();
  AssistiveAccess.init(content:)();
  sub_100009A38(&qword_100023140, &qword_1000230F0, &qword_100018820);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000096E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000972C@<X0>(uint64_t a1@<X8>)
{
  ClarityUIRootView.init()();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_1000096E4(&qword_100023110, &qword_100018830) + 36));
  v4 = *(sub_1000096E4(&qword_100023128, &qword_100018838) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = static Color.black.getter();
  v8 = swift_getKeyPath();
  result = sub_1000096E4(&qword_1000230F8, &qword_100018828);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

unint64_t sub_100009828()
{
  result = qword_100023100;
  if (!qword_100023100)
  {
    sub_1000098E0(&qword_1000230F8, &qword_100018828);
    sub_100009928();
    sub_100009A38(&qword_100023130, &qword_100023138, qword_100018840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023100);
  }

  return result;
}

uint64_t sub_1000098E0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100009928()
{
  result = qword_100023108;
  if (!qword_100023108)
  {
    sub_1000098E0(&qword_100023110, &qword_100018830);
    sub_1000099E0();
    sub_100009A38(&qword_100023120, &qword_100023128, &qword_100018838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023108);
  }

  return result;
}

unint64_t sub_1000099E0()
{
  result = qword_100023118;
  if (!qword_100023118)
  {
    type metadata accessor for ClarityUIRootView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023118);
  }

  return result;
}

uint64_t sub_100009A38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000098E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009AA4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

id sub_100009BF0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100009C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100009C98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009CCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100009CF8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

void sub_100009D24(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v10 = a1;
  v4 = [v3 windows];
  sub_100009EC4();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v8 = [objc_opt_self() sharedInstance];
    [v8 setMainWindow:v7];

    v9 = v8;
    goto LABEL_11;
  }

  v9 = v10;
LABEL_11:
}

unint64_t sub_100009EC4()
{
  result = qword_1000231D0;
  if (!qword_1000231D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000231D0);
  }

  return result;
}

uint64_t sub_100009F60(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  v11 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v25 - v13;
  v15 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - v17;
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for String.IntentInputOptions();
  v25[2] = 0;
  v25[3] = 0;
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = type metadata accessor for IntentDialog();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  (*(v3 + 104))(v6, enum case for InputConnectionBehavior.default(_:), v2);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_10000A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v52 = a1;
  v60 = type metadata accessor for InputConnectionBehavior();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v60);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v37 - v18;
  v20 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v37 - v22;
  v24 = type metadata accessor for LocalizedStringResource();
  v61 = v24;
  v44 = *(v24 - 8);
  v25 = v44;
  v26 = *(v44 + 64);
  __chkstk_darwin(v24);
  v41 = sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v42 = *(v25 + 56);
  v55 = v25 + 56;
  v42(v23, 1, 1, v24);
  v54 = type metadata accessor for String.IntentInputOptions();
  v62 = 0;
  v63 = 0;
  v27 = *(v54 - 8);
  v59 = *(v27 + 56);
  v53 = v27 + 56;
  v59(v19, 1, 1, v54);
  v57 = type metadata accessor for IntentDialog();
  v28 = *(v57 - 8);
  v56 = *(v28 + 56);
  v58 = v28 + 56;
  v56(v15, 1, 1, v57);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v38 = *(v8 + 104);
  v39 = v8 + 104;
  v40 = enum case for InputConnectionBehavior.default(_:);
  v30 = v60;
  v38(v11, enum case for InputConnectionBehavior.default(_:), v60);
  v43 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();

  LocalizedStringResource.init(stringLiteral:)();
  v31 = v42;
  v42(v23, 1, 1, v61);
  v62 = 0;
  v63 = 0;
  v59(v19, 1, 1, v54);
  v56(v15, 1, 1, v57);
  v32 = v29;
  v33 = v38;
  v38(v11, v32, v30);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();

  LocalizedStringResource.init(stringLiteral:)();
  v31(v23, 1, 1, v61);
  v62 = 0;
  v63 = 0;
  v59(v19, 1, 1, v54);
  v56(v15, 1, 1, v57);
  v33(v11, v40, v60);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v62 = v45;
  v63 = v46;

  v34 = v43;
  IntentParameter.wrappedValue.setter();
  v62 = v47;
  v63 = v48;
  IntentParameter.wrappedValue.setter();
  v62 = v49;
  v63 = v50;
  IntentParameter.wrappedValue.setter();
  v35 = type metadata accessor for IntentMediaItem();
  (*(*(v35 - 8) + 8))(v51, v35);
  (*(v44 + 8))(v52, v61);

  return v34;
}

uint64_t sub_10000A92C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CEEC(v0, qword_100023DC8);
  sub_10000CA90(v0, qword_100023DC8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t (*sub_10000AA38())()
{
  if (qword_100023690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CA90(v0, qword_100023DC8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10000AACC()
{
  v0 = type metadata accessor for IntentDescription();
  sub_10000CEEC(v0, qword_100023DE0);
  sub_10000CA90(v0, qword_100023DE0);
  return IntentDescription.init(stringLiteral:)();
}

uint64_t sub_10000AB68(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_10000CA90(v4, a3);
}

uint64_t sub_10000AC00@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000CA90(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_10000ACEC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = sub_10000CA90(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*sub_10000ADD8())()
{
  if (qword_100023698[0] != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  sub_10000CA90(v0, qword_100023DE0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000AE7C()
{
  swift_beginAccess();
  v0 = *aPurchaseintent_0;

  return v0;
}

uint64_t sub_10000AED0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPurchaseintent_0 = a1;
  *&aPurchaseintent_0[8] = a2;
}

uint64_t (*sub_10000AFB8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

uint64_t (*sub_10000B084(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000B0F8;
}

uint64_t (*sub_10000B154(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

void sub_10000B1C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10000B238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a2;
  v4[35] = a4;
  v4[33] = a1;
  v5 = type metadata accessor for Logger();
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = *(*(sub_1000096E4(&qword_100023270, &qword_100018CC0) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return _swift_task_switch(sub_10000B358, 0, 0);
}

uint64_t sub_10000B938()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  if (v3)
  {
    v4 = sub_10000BB38;
  }

  else
  {
    v5 = *(v1 + 352);

    v4 = sub_10000BA50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000BA50()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);

  v3 = *(v0 + 336);
  v4 = *(v0 + 264);
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  sub_10000CAC8();
  static IntentResult.result<A>(value:)();
  sub_10000CBA4(v3);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 304);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000BB38()
{
  v34 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[44];
  v5 = v0[38];
  swift_willThrow();

  Logger.init(subsystem:category:)();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[48];
  v10 = v0[44];
  v11 = v0[45];
  if (v8)
  {
    v32 = v0[45];
    v12 = v0[43];
    v13 = v0[37];
    v31 = v0[38];
    v14 = v0[36];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = sub_100002D7C(v12, v10, &v33);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to deep link to %s", v15, 0xCu);
    sub_100002FB0(v16);

    v32(v31, v14);
  }

  else
  {
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[36];
    v21 = v0[44];

    v11(v18, v20);
  }

  v22 = v0[42];
  v23 = v0[33];
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  sub_10000CAC8();
  static IntentResult.result<A>(value:)();
  sub_10000CBA4(v22);
  v25 = v0[41];
  v24 = v0[42];
  v27 = v0[39];
  v26 = v0[40];
  v28 = v0[38];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10000BDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000CEA8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000096E4(&qword_1000232B8, &unk_100018A80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000BEB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100023690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000CA90(v2, qword_100023DC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10000BF88(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C038;

  return sub_10000B238(a1, v4, v6, v5);
}

uint64_t sub_10000C038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000C12C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C564();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10000C158(uint64_t a1)
{
  v2 = sub_10000CD40();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_10000C194(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C1E0(a1, a2);
  sub_10000C310(&off_10001D448);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C1E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000C3FC(v5, 0);
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
        v7 = sub_10000C3FC(v10, 0);
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

uint64_t sub_10000C310(uint64_t result)
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

  result = sub_10000C470(result, v12, 1, v3);
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

void *sub_10000C3FC(uint64_t a1, uint64_t a2)
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

  sub_1000096E4(&qword_1000232B0, &unk_100018CF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000096E4(&qword_1000232B0, &unk_100018CF0);
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

uint64_t sub_10000C564()
{
  v46 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v46 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v46);
  v44 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v35 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v18 = *(v16 + 56);
  v36 = v16 + 56;
  v38 = v18;
  v18(v14, 1, 1, v15);
  v19 = type metadata accessor for String.IntentInputOptions();
  v47 = 0;
  v48 = 0;
  v20 = *(v19 - 8);
  v45 = *(v20 + 56);
  v34 = v20 + 56;
  v32 = v19;
  v45(v10, 1, 1, v19);
  v42 = type metadata accessor for IntentDialog();
  v21 = *(v42 - 8);
  v41 = *(v21 + 56);
  v43 = v21 + 56;
  v22 = v6;
  v41(v6, 1, 1, v42);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v31 = *(v0 + 104);
  v39 = v0 + 104;
  v23 = v46;
  v31(v44);
  v24 = v22;
  v37 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v35;
  v38(v14, 1, 1, v35);
  v47 = 0;
  v48 = 0;
  v45(v10, 1, 1, v19);
  v26 = v24;
  v41(v24, 1, 1, v42);
  v27 = v44;
  v28 = v23;
  v29 = v31;
  (v31)(v44, v40, v28);
  v33 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v38(v14, 1, 1, v25);
  v47 = 0;
  v48 = 0;
  v45(v10, 1, 1, v32);
  v41(v26, 1, 1, v42);
  (v29)(v27, v40, v46);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v37;
}

uint64_t sub_10000CA90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000CAC8()
{
  result = qword_100023278;
  if (!qword_100023278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023278);
  }

  return result;
}

uint64_t sub_10000CB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CBA4(uint64_t a1)
{
  v2 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CC10()
{
  result = qword_100023288;
  if (!qword_100023288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023288);
  }

  return result;
}

unint64_t sub_10000CC68()
{
  result = qword_100023290;
  if (!qword_100023290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023290);
  }

  return result;
}

unint64_t sub_10000CD40()
{
  result = qword_100023298;
  if (!qword_100023298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023298);
  }

  return result;
}

__n128 sub_10000CD94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000CDA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000CDF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000CE40()
{
  result = qword_1000232A0;
  if (!qword_1000232A0)
  {
    sub_1000098E0(&qword_1000232A8, &qword_100018A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000232A0);
  }

  return result;
}

void *sub_10000CEA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10000CEEC(uint64_t a1, uint64_t *a2)
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

id sub_10000CF88()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_10000D18C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1000096E4(&unk_100023460, &qword_100018CB8);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

id sub_10000D304()
{
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  *&v0[v1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000D3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D490(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D508(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D588@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000D5CC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000D608()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D65C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000D6D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10000D758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000D7A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000D7CC(uint64_t a1)
{
  v2 = sub_10000ED20(&qword_1000232D8);
  v3 = sub_10000ED20(&qword_1000233F0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10000D864(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000D970(a1, v4);
}

unint64_t sub_10000D8F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000DA74(a1, a2, v6);
}

unint64_t sub_10000D970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000DA74(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000DB2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000096E4(&qword_1000233F8, &unk_100018CA8);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_10000ECC0(v23, v38);
      }

      else
      {
        sub_100002F54(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_10000ECC0(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000DDFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000096E4(&qword_100023498, &qword_100018CE0);
  v36 = a2;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000ECC0(v25, v37);
      }

      else
      {
        sub_100002F54(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000ECC0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_10000E0B4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v12 = v11;
      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_10000E27C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000D8F8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000E5B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000DDFC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000D8F8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100002FB0(v23);

    return sub_10000ECC0(a1, v23);
  }

  else
  {
    sub_10000E3CC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10000E3CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000ECC0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10000E438()
{
  v1 = v0;
  sub_1000096E4(&qword_1000233F8, &unk_100018CA8);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100002F54(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000ECC0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_10000E5B8()
{
  v1 = v0;
  sub_1000096E4(&qword_100023498, &qword_100018CE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100002F54(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000ECC0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_10000E75C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
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

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_10000E980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000096E4(&qword_1000234A0, &qword_100018CE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000D8F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_10000EA94(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = [v3 activityType];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100002D7C(v9, v11, v16);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "AppleTVAppDelegate continueUserActivity -- restorationHandler activityType %s", v6, 0xCu);
    sub_100002FB0(v7);
  }

  v13 = *(v2 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate);
  if (v13)
  {
    if ([*(v2 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate) respondsToSelector:"application:continueUserActivity:restorationHandler:"])
    {
      v14 = [objc_opt_self() sharedApplication];
      v16[4] = nullsub_1;
      v16[5] = 0;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10000D18C;
      v16[3] = &unk_10001D570;
      v15 = _Block_copy(v16);
      [v13 application:v14 continueUserActivity:v3 restorationHandler:v15];

      _Block_release(v15);
    }
  }
}

_OWORD *sub_10000ECC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for OpenURLOptionsKey()
{
  if (!qword_1000233D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000233D0);
    }
  }
}

uint64_t sub_10000ED20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EE88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000096E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EEEC(uint64_t a1)
{
  v29 = a1;
  v1 = sub_1000096E4(&qword_1000234F0, &qword_100018E88);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v25 - v4;
  v30 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v30 - 8);
  v7 = v6[8];
  __chkstk_darwin(v30);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000096E4(&qword_1000234F8, &qword_100018E90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10001097C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x64616F6C6E776F44;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 544106784;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v28 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v27 = v6[13];
  v14 = v30;
  v27(v9);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v15 = v6[1];
  v25[1] = v6 + 1;
  v26 = v15;
  v15(v9, v14);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v33 + 8);
  v33 += 8;
  v25[0] = v17;
  v17(v5, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20656B614DLL;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x80000001000157B0;
  v19._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  (v27)(v9, v28, v14);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v9, v14);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v25[0])(v5, v32);
  sub_1000096E4(&qword_100023500, &unk_100018E98);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100018D00;
  *(v22 + 32) = v31;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_10000F368@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000B050();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000F3D0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100018D10;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10000F4C0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10001097C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  sub_1000096E4(&qword_1000234C8, &qword_100018DE8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018A90;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10000F630@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000AF84();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000F678(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];

  return a5(v5, v6, v7, v8);
}

uint64_t sub_10000F6E0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100018D10;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10000F7B4(uint64_t a1)
{
  v61 = sub_1000096E4(&qword_1000234D8, &qword_100018E20);
  v64 = *(v61 - 8);
  v2 = *(v64 + 64);
  __chkstk_darwin(v61);
  v60 = &v47 - v3;
  v63 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v63);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000096E4(&qword_1000234E0, &qword_100018E28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v52 = sub_10000CD40();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6573616863727550;
  v10._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v11 = sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v56 = a1;
  v57 = v11;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 544106784;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v4;
  v54 = *(v4 + 104);
  v55 = v4 + 104;
  v15 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v59 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v16 = v63;
  v54(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v53 = *(v14 + 8);
  v62 = v14 + 8;
  v53(v7, v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v60;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58 = *(v64 + 8);
  v64 += 8;
  v19 = v18;
  v20 = v61;
  v58(v19, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 544830786;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 544106784;
  v22._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v51 = v7;
  v23 = v15;
  v24 = v63;
  v25 = v54;
  (v54)(v7, v23, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26 = v53;
  v53(v7, v24);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v60;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v28, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6573616863727550;
  v29._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 544106784;
  v30._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v51;
  v32 = v63;
  (v25)(v51, v59, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v31, v32);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v60;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v58;
  v58(v34, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x2065687420797542;
  v36._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544106784;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v51;
  v40 = v63;
  (v54)(v51, v59, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v53(v39, v40);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v34, v61);
  sub_1000096E4(&qword_1000234E8, &qword_100018E30);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100018D20;
  v44 = v49;
  *(v43 + 32) = v50;
  *(v43 + 40) = v44;
  *(v43 + 48) = v48;
  *(v43 + 56) = v42;
  v45 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v45;
}

uint64_t sub_100010040()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100018D20;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100010150()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10000CD40();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  sub_1000096E4(&qword_1000234C8, &qword_100018DE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018D00;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10001034C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018D00;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1000103F0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100010440(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];

  return a5(v5, v6, v7, v8, v9);
}

uint64_t sub_1000104B8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018D00;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t *sub_10001057C()
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  return &qword_100023E00;
}

uint64_t sub_1000105CC()
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100010644(uint64_t a1)
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_100023E00 = a1;
}

uint64_t (*sub_1000106C4())()
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100010750()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100011210(v3);
  v17 = v6;
  sub_10001097C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v7 = static _AssistantIntent.Builder.buildExpression(_:)();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v16 = sub_100009F10();
  v17 = v9;
  v18 = v10;
  sub_10000CD40();
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v11 = static _AssistantIntent.Builder.buildExpression(_:)();
  v8(v5, v0);
  sub_1000096E4(&qword_1000234B0, "F\v");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100018D00;
  *(v12 + 32) = v7;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v13;
}

unint64_t sub_10001097C()
{
  result = qword_1000234A8;
  if (!qword_1000234A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234A8);
  }

  return result;
}

unint64_t sub_1000109D0()
{
  result = qword_1000234B8;
  if (!qword_1000234B8)
  {
    sub_1000098E0(&qword_1000234C0, &qword_100018DB8);
    sub_10000CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234B8);
  }

  return result;
}

uint64_t sub_100010A54()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CEEC(v0, qword_100023E08);
  sub_10000CA90(v0, qword_100023E08);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t (*sub_100010B60())()
{
  if (qword_100023C00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CA90(v0, qword_100023E08);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100010BF4()
{
  v0 = type metadata accessor for IntentDescription();
  sub_10000CEEC(v0, qword_100023E20);
  sub_10000CA90(v0, qword_100023E20);
  return IntentDescription.init(stringLiteral:)();
}

uint64_t (*sub_100010D00())()
{
  if (qword_100023C08[0] != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  sub_10000CA90(v0, qword_100023E20);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_100010D94(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

uint64_t (*sub_100010E08(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000B0F8;
}

uint64_t sub_100010E8C()
{
  swift_beginAccess();
  v0 = *aDownloadintent_0;

  return v0;
}

uint64_t sub_100010EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aDownloadintent_0 = a1;
  *&aDownloadintent_0[8] = a2;
}

uint64_t sub_100010F94(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011054, 0, 0);
}

uint64_t sub_100011054()
{
  if (TVAppFeature.isEnabled.getter())
  {
    v0[7] = 0;
    v1 = v0[9];
    v0[8] = 0xE000000000000000;
    sub_10000CAC8();
  }

  else
  {
    v2 = v0[12];
    swift_beginAccess();

    Logger.init(subsystem:category:)();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Feature flag disabled", v5, 2u);
    }

    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];

    (*(v7 + 8))(v6, v8);
    v0[5] = 0xD000000000000019;
    v0[6] = 0x80000001000154F0;
    sub_10000CAC8();
  }

  static IntentResult.result<A>(value:)();
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100011218()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  v9 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v18 + 56))(v16, 1, 1, v17);
  v20 = type metadata accessor for String.IntentInputOptions();
  v23[0] = 0;
  v23[1] = 0;
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100011540()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  v9 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v18 + 56))(v16, 1, 1, v17);
  v20 = type metadata accessor for String.IntentInputOptions();
  v23[0] = 0;
  v23[1] = 0;
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100011878@<X0>(uint64_t a1@<X8>)
{
  if (qword_100023C00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000CA90(v2, qword_100023E08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100011938(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000C038;

  return sub_100010F94(a1);
}

uint64_t sub_1000119D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011A34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000119F8(uint64_t a1)
{
  v2 = sub_10001097C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011A34()
{
  v33 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v33 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v33);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000096E4(&qword_100023250, &qword_100018918);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v27 - v6;
  v8 = sub_1000096E4(&qword_100023258, &qword_100018920);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_1000096E4(&qword_100023260, &qword_100018928);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v27 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v38 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v36 = sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v19 = *(v17 + 56);
  v37 = v17 + 56;
  v39 = v19;
  v19(v15, 1, 1, v16);
  v20 = type metadata accessor for String.IntentInputOptions();
  v40 = 0;
  v41 = 0;
  v21 = *(v20 - 8);
  v34 = *(v21 + 56);
  v35 = v21 + 56;
  v34(v11, 1, 1, v20);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(v22 - 8);
  v31 = *(v23 + 56);
  v32 = v23 + 56;
  v31(v7, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v0 + 104);
  v27[1] = v0 + 104;
  v28 = v24;
  v25 = v33;
  v24(v3);
  v30 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v39(v15, 1, 1, v38);
  v40 = 0;
  v41 = 0;
  v34(v11, 1, 1, v20);
  v31(v7, 1, 1, v22);
  v28(v3, v29, v25);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v30;
}

unint64_t sub_100011E54()
{
  result = qword_100023518;
  if (!qword_100023518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023518);
  }

  return result;
}

unint64_t sub_100011EAC()
{
  result = qword_100023520;
  if (!qword_100023520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023520);
  }

  return result;
}

__n128 sub_100011F84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100011F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100011FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10001203C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100023D98 = result;
  return result;
}

uint64_t sub_1000121C4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ColorResource();
  sub_10000CEEC(v3, a2);
  sub_10000CA90(v3, a2);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v4 = qword_100023D98;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1000122E0()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000CEEC(v0, qword_100023E80);
  sub_10000CA90(v0, qword_100023E80);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v1 = qword_100023D98;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000123F8()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000CEEC(v0, qword_100023E98);
  sub_10000CA90(v0, qword_100023E98);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v1 = qword_100023D98;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000124D8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_10000CA90(v4, a3);
}

uint64_t sub_100012570@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000CA90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void sub_10001266C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already have a previous completion handler for %@.  Calling it now", &v2, 0xCu);
}

void sub_1000126E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already have a previous AR completion handler for %@.  Calling it now", &v2, 0xCu);
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}