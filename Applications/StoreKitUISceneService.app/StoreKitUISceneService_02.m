id sub_10003599C()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100035ABC(void *a1)
{
  v3 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v3);
  v5 = *(v4 + 64);
  sub_10002FF34();
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100014A8C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10002FC5C();
  sub_100037C08();
  sub_1000346E4(a1, 1);
  if (sub_100012898(v8, 1, v9) == 1)
  {
    return sub_1000379F4(v8);
  }

  v16 = *(v12 + 32);
  v17 = sub_1000301E0();
  v18(v17);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  URL.path(percentEncoded:)(0);
  v20 = String._bridgeToObjectiveC()();

  v21 = [a1 bundleID];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v19 useConfigurationDirectory:v20 forBundleID:v21];

  return (*(v12 + 8))(v1, v9);
}

void sub_100035D78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v97 = a3;
  v98 = a4;
  v99 = a1;
  v100 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = sub_100014A8C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10002FC5C();
  sub_100037C08();
  v15 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v15);
  v17 = *(v16 + 64);
  sub_10002FF34();
  __chkstk_darwin(v18);
  v20 = v93 - v19;
  v21 = type metadata accessor for URL();
  v22 = sub_100014A8C(v21);
  v104 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10002FC38();
  v96 = v26;
  sub_10002FD18();
  __chkstk_darwin(v27);
  sub_10002FE54();
  v105 = v28;
  sub_10002FD18();
  __chkstk_darwin(v29);
  v103 = v93 - v30;
  v101 = *(v12 + 104);
  v101(v7, enum case for URL.DirectoryHint.checkFileSystem(_:), v9);
  sub_1000348AC(a5);
  v31 = *(v12 + 8);
  v32 = sub_1000301E0();
  v102 = v33;
  v33(v32);
  if (sub_100012898(v20, 1, v21) == 1)
  {
    sub_1000379F4(v20);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v34 = type metadata accessor for SKLogger();
    sub_1000128C0(v34, qword_1000E4560);
    sub_100037C34();

    sub_100037B40();
    v107 = 0xD00000000000001ELL;
    v108 = v35;
    v36 = [a5 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100037B9C();

    v37._countAndFlagsBits = sub_1000301E0();
    String.append(_:)(v37);

    v38 = static os_log_type_t.error.getter();

    v39 = Logger.logObject.getter();

    if (os_log_type_enabled(v39, v38))
    {
      sub_10002FF14();
      v40 = swift_slowAlloc();
      sub_10002FE48();
      v41 = swift_slowAlloc();
      v107 = v41;
      *v40 = 136446466;
      v43 = sub_100037CAC(v41, v42, &v107);
      v44 = sub_100037B8C(v43);
      v46 = sub_100037C94(v44, v45, &v107);

      *(v40 + 14) = v46;
      sub_100037B4C(&_mh_execute_header, v47, v48, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }
  }

  else
  {
    v93[1] = v5;
    v94 = a5;
    v95 = v6;
    (*(v104 + 32))(v103, v20, v21);
    v107 = 0x737465737341;
    v108 = 0xE600000000000000;
    v101(v7, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100012B58();
    URL.appending<A>(path:directoryHint:)();
    v49 = sub_1000301E0();
    v102(v49);
    v50 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    v107 = 0;
    v54 = [v50 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:&v107];

    v55 = v107;
    if (v54)
    {
      v56 = v104;
      v107 = v97;
      v108 = v98;
      v101(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
      v57 = v55;
      v58 = v96;
      v59 = v105;
      URL.appending<A>(path:directoryHint:)();
      v60 = sub_1000301E0();
      v102(v60);
      v61 = v95;
      Data.write(to:options:)();
      if (v61)
      {
        v62 = *(v56 + 8);
        v62(v58, v21);
        v62(v59, v21);
        v62(v103, v21);
      }

      else
      {
        v66 = v56 + 8;
        v65 = *(v56 + 8);
        v101 = v21;
        v102 = v65;
        (v65)(v58, v21);
        if (qword_1000D1AE8 != -1)
        {
          sub_10002FBAC();
          swift_once();
        }

        v67 = type metadata accessor for SKLogger();
        sub_1000128C0(v67, qword_1000E4560);
        sub_100037C34();

        sub_100037B40();
        v107 = 0xD00000000000001ELL;
        v108 = v68;
        v69 = v94;
        v70 = [v94 bundleID];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v74._countAndFlagsBits = v71;
        v74._object = v73;
        String.append(_:)(v74);
        v75 = v69;

        v76 = [v69 logKey];
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = static os_log_type_t.debug.getter();

        v80 = Logger.logObject.getter();

        LODWORD(v100) = v79;
        if (os_log_type_enabled(v80, v79))
        {
          sub_10002FF14();
          v81 = swift_slowAlloc();
          v95 = 0;
          v82 = v81;
          sub_10002FE48();
          v83 = swift_slowAlloc();
          v104 = v66;
          *v82 = 136446466;
          v106 = v83;
          v107 = 91;
          v108 = 0xE100000000000000;
          v84._countAndFlagsBits = v99;
          v84._object = v78;
          String.append(_:)(v84);
          v85._countAndFlagsBits = sub_100037BA8();
          String.append(_:)(v85);
          v86 = sub_1000847A8(v107, v108, &v106);

          *(v82 + 4) = v86;
          v75 = v94;
          *(v82 + 12) = 2082;
          v89 = sub_100037C94(v87, v88, &v106);

          *(v82 + 14) = v89;
          _os_log_impl(&_mh_execute_header, v80, v100, "%{public}s%{public}s", v82, 0x16u);
          swift_arrayDestroy();
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        v90 = v103;
        sub_100035ABC(v75);
        v92 = v101;
        v91 = v102;
        (v102)(v105, v101);
        (v91)(v90, v92);
      }
    }

    else
    {
      v63 = v107;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v64 = *(v104 + 8);
      v64(v105, v21);
      v64(v103, v21);
    }
  }
}

uint64_t sub_1000366E0(void *a1)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v4);
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  sub_100037C14();
  v8 = type metadata accessor for URL();
  v9 = sub_100014A8C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10002FC5C();
  sub_100037C08();
  sub_1000346E4(a1, 1);
  v14 = sub_100037C28();
  if (sub_100012898(v14, v15, v8) == 1)
  {
    sub_1000379F4(v1);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v16 = type metadata accessor for SKLogger();
    sub_1000128C0(v16, qword_1000E4560);
    sub_100037B6C();
    _StringGuts.grow(_:)(31);

    sub_100037B40();
    v98 = v17;
    v18 = [a1 bundleID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = v98;
    v24 = [a1 logKey];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = static os_log_type_t.error.getter();

    v29 = Logger.logObject.getter();

    if (os_log_type_enabled(v29, v28))
    {
      sub_10002FF14();
      v30 = swift_slowAlloc();
      sub_10002FE48();
      v31 = swift_slowAlloc();
      *v30 = 136446466;
      sub_100037B28(v31);
      v32._countAndFlagsBits = v25;
      v32._object = v27;
      String.append(_:)(v32);
      v33._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v33);
      v34 = sub_100037BB4();

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_1000847A8(0xD00000000000001DLL, v23, &v99);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
      sub_100037BEC();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }
  }

  else
  {
    (*(v11 + 32))(v2, v1, v8);
    v36 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v97 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v97];

    if (v40)
    {
      v41 = qword_1000D1AE8;
      v42 = v97;
      if (v41 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v43 = type metadata accessor for SKLogger();
      sub_1000128C0(v43, qword_1000E4560);
      sub_100037B6C();
      _StringGuts.grow(_:)(26);

      sub_100037B40();
      v97 = 0xD000000000000018;
      v98 = v44;
      v45 = &stru_1000CE000;
      v46 = [a1 bundleID];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51 = v98;
      v93 = v97;
      v52 = [a1 logKey];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = static os_log_type_t.debug.getter();

      v56 = Logger.logObject.getter();

      v92 = v55;
      if (os_log_type_enabled(v56, v55))
      {
        sub_10002FF14();
        v95 = v11;
        v57 = swift_slowAlloc();
        sub_10002FE48();
        v58 = swift_slowAlloc();
        *v57 = 136446466;
        sub_100037B28(v58);
        v59._countAndFlagsBits = v91;
        v59._object = v54;
        String.append(_:)(v59);
        v60._countAndFlagsBits = sub_100037BA8();
        String.append(_:)(v60);
        v61 = v2;
        v62 = sub_100037BB4();

        *(v57 + 4) = v62;
        v2 = v61;
        *(v57 + 12) = 2082;
        v63 = sub_1000847A8(v93, v51, &v99);

        *(v57 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v56, v92, "%{public}s%{public}s", v57, 0x16u);
        sub_100037BEC();
        v45 = &stru_1000CE000;
        sub_10002FCC8();

        v11 = v95;
        sub_10002FCC8();
      }

      else
      {
      }

      v89 = [objc_opt_self() shared];
      v90 = [a1 v45[145].attr];
      if (!v90)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = String._bridgeToObjectiveC()();
      }

      [v89 appRemovedWithBundleID:v90];

      return (*(v11 + 8))(v2, v8);
    }

    else
    {
      v94 = v2;
      v96 = v11;
      v65 = v97;
      v66 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v67 = type metadata accessor for SKLogger();
      sub_1000128C0(v67, qword_1000E4560);
      sub_100037B6C();
      _StringGuts.grow(_:)(37);
      v68._countAndFlagsBits = 0xD00000000000001FLL;
      v68._object = 0x800000010009FAB0;
      String.append(_:)(v68);
      v69 = [a1 bundleID];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73._countAndFlagsBits = v70;
      v73._object = v72;
      String.append(_:)(v73);

      v74._countAndFlagsBits = 8250;
      v74._object = 0xE200000000000000;
      String.append(_:)(v74);
      v99 = v66;
      sub_100012634(&qword_1000D1C80, &qword_1000935C0);
      _print_unlocked<A, B>(_:_:)();
      v76 = v97;
      v75 = v98;
      v77 = [a1 logKey];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = static os_log_type_t.error.getter();

      v82 = Logger.logObject.getter();

      if (os_log_type_enabled(v82, v81))
      {
        sub_10002FF14();
        v83 = swift_slowAlloc();
        sub_10002FE48();
        v84 = swift_slowAlloc();
        *v83 = 136446466;
        sub_100037B28(v84);
        v85._countAndFlagsBits = v78;
        v85._object = v80;
        String.append(_:)(v85);
        v86._countAndFlagsBits = sub_100037BA8();
        String.append(_:)(v86);
        v87 = sub_100037BB4();

        *(v83 + 4) = v87;
        *(v83 + 12) = 2082;
        v88 = sub_1000847A8(v76, v75, &v99);

        *(v83 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v82, v81, "%{public}s%{public}s", v83, 0x16u);
        sub_100037BEC();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      return (*(v96 + 8))(v94, v8);
    }
  }
}

void (*sub_100037018(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = sub_100014A8C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v13 = v12 - v11;
  v14 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v14);
  v16 = *(v15 + 64);
  sub_10002FF34();
  __chkstk_darwin(v17);
  sub_100037C14();
  v18 = type metadata accessor for URL();
  v19 = sub_100014A8C(v18);
  v75 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10002FC38();
  v71 = v23;
  sub_10002FD18();
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v70 = *(v8 + 104);
  v70(v13, enum case for URL.DirectoryHint.checkFileSystem(_:), v5);
  v73 = a1;
  v74 = a2;
  sub_100034760(a1, a2, v2);
  v27 = *(v8 + 8);
  v27(v13, v5);
  v28 = sub_100037C28();
  if (sub_100012898(v28, v29, v18) == 1)
  {
    sub_1000379F4(v2);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v30 = type metadata accessor for SKLogger();
    sub_1000128C0(v30, qword_1000E4560);
    sub_100037C54();

    sub_100037B40();
    sub_100037C74();
    v27 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v27))
    {
      sub_10002FF14();
      v32 = swift_slowAlloc();
      sub_10002FE48();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = 136446466;
      v35 = sub_100037CAC(v33, v34, &v76);
      v36 = sub_100037B8C(v35);
      v38 = sub_100037C94(v36, v37, &v76);

      *(v32 + 14) = v38;
      sub_100037B4C(&_mh_execute_header, v39, v40, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v78 = 513;
    sub_10007D238(&_swiftEmptyArrayStorage);
    sub_100020A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v41 = *(v75 + 32);
    v69 = v18;
    v41(v26, v2, v18);
    v42 = [objc_opt_self() defaultManager];
    v43 = sub_100039EF8();

    if (v43)
    {
      if ((v43 & 0x100) != 0)
      {
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v55;
        v70(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
        sub_100012B58();
        v56 = v71;
        URL.appending<A>(path:directoryHint:)();
        v27(v13, v5);

        v57 = v72;
        v58 = Data.init(contentsOf:options:)();
        if (v57)
        {
          v27 = (v75 + 8);
          v59 = *(v75 + 8);
          v60 = v56;
          v61 = v69;
          v59(v60, v69);
          v59(v26, v61);
        }

        else
        {
          v27 = v58;
          v65 = *(v75 + 8);
          v66 = v56;
          v67 = v69;
          v65(v66, v69);
          v65(v26, v67);
        }
      }

      else
      {
        v44 = v72;
        v45 = Data.init(contentsOf:options:)();
        if (!v44)
        {
          v27 = v45;
        }

        (*(v75 + 8))(v26, v69);
      }
    }

    else
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v46 = type metadata accessor for SKLogger();
      sub_1000128C0(v46, qword_1000E4560);
      sub_100037C54();

      sub_100037B40();
      sub_100037C74();
      v48 = v76;
      v47 = v77;
      v49 = static os_log_type_t.error.getter();

      v50 = Logger.logObject.getter();

      if (os_log_type_enabled(v50, v49))
      {
        sub_10002FF14();
        v51 = swift_slowAlloc();
        sub_10002FE48();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136446466;
        *(v51 + 4) = sub_100037CAC(v52, v53, &v76);
        *(v51 + 12) = 2082;
        v54 = sub_1000847A8(v48, v47, &v76);

        *(v51 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v50, v49, "%{public}s%{public}s", v51, 0x16u);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      v62 = v69;
      v63 = v75;
      type metadata accessor for ASDError(0);
      v78 = 513;
      v27 = sub_10007D238(&_swiftEmptyArrayStorage);
      sub_100020A24();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      (*(v63 + 8))(v26, v62);
    }
  }

  return v27;
}

uint64_t sub_100037984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000379F4(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037ACC(uint64_t a1)
{
  v2 = type metadata accessor for Client.Server(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037B28(uint64_t result)
{
  *(v1 - 112) = 91;
  *(v1 - 104) = 0xE100000000000000;
  *(v1 - 96) = result;
  return result;
}

void sub_100037B4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100037B7C()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_100037B8C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_100037BB4()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1000847A8(v2, v3, (v0 - 96));
}

uint64_t sub_100037BD0()
{

  return swift_arrayDestroy();
}

uint64_t sub_100037BEC()
{

  return swift_arrayDestroy();
}

void sub_100037C34()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(32);
}

void sub_100037C54()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
}

uint64_t sub_100037C94(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000847A8(v4, v3, a3);
}

uint64_t sub_100037CAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000847A8(0, 0xE000000000000000, a3);
}

uint64_t sub_100037CC4(uint64_t a1, uint64_t a2)
{

  return sub_10001267C(a1, a2, 1, v2);
}

unint64_t sub_100037CF0()
{
  result = qword_1000D2D60;
  if (!qword_1000D2D60)
  {
    sub_10001CEC4(&qword_1000D2D68, qword_100096378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D60);
  }

  return result;
}

uint64_t sub_100037D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67696C6674736574 && a2 == 0xEA00000000007468)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100037E78(char a1)
{
  if (!a1)
  {
    return 0x69746375646F7270;
  }

  if (a1 == 1)
  {
    return 0x786F62646E6173;
  }

  return 0x67696C6674736574;
}

uint64_t sub_100037EE0(void *a1, int a2)
{
  v44 = a2;
  v3 = sub_100012634(&qword_1000D2DB8, &qword_100096498);
  v4 = sub_100014A8C(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v41 = &v37 - v9;
  v10 = sub_100012634(&qword_1000D2DC0, &qword_1000964A0);
  v11 = sub_100014A8C(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  sub_10002FF34();
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = sub_100012634(&qword_1000D2DC8, &qword_1000964A8);
  sub_100014A8C(v18);
  v38 = v19;
  v21 = *(v20 + 64);
  sub_10002FF34();
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_100012634(&qword_1000D2DD0, &qword_1000964B0);
  sub_100014A8C(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_10002FF34();
  __chkstk_darwin(v30);
  v32 = &v37 - v31;
  v33 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100038A98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = (v27 + 8);
  if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_100038B40();
      sub_100039088();
      (*(v39 + 8))(v17, v40);
    }

    else
    {
      v47 = 2;
      sub_100038AEC();
      v35 = v41;
      sub_100039088();
      (*(v42 + 8))(v35, v43);
    }
  }

  else
  {
    v45 = 0;
    sub_100038B94();
    sub_100039088();
    (*(v38 + 8))(v24, v18);
  }

  return (*v34)(v32, v25);
}

uint64_t sub_100038200(uint64_t *a1)
{
  v72 = sub_100012634(&qword_1000D2D78, &qword_100096470);
  sub_100014A8C(v72);
  v70 = v2;
  v4 = *(v3 + 64);
  sub_10002FF34();
  __chkstk_darwin(v5);
  v68 = &v62 - v6;
  v69 = sub_100012634(&qword_1000D2D80, &qword_100096478);
  sub_100014A8C(v69);
  v67 = v7;
  v9 = *(v8 + 64);
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = sub_100012634(&qword_1000D2D88, &qword_100096480);
  sub_100014A8C(v13);
  v66 = v14;
  v16 = *(v15 + 64);
  sub_10002FF34();
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  v20 = sub_100012634(&qword_1000D2D90, &unk_100096488);
  sub_100014A8C(v20);
  v71 = v21;
  v23 = *(v22 + 64);
  sub_10002FF34();
  __chkstk_darwin(v24);
  v25 = a1[3];
  sub_100012980(a1, v25);
  sub_100038A98();
  v26 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_12;
  }

  v62 = v13;
  v63 = v19;
  v64 = v12;
  v65 = 0;
  v27 = v72;
  v73 = a1;
  v28 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004E288(v28, 0);
  v25 = v20;
  if (v31 == v32 >> 1)
  {
    goto LABEL_10;
  }

  if (v31 < (v32 >> 1))
  {
    v33 = v20;
    v34 = *(v30 + v31);
    v35 = sub_10004E284(v31 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v40 = v69;
    v41 = v70;
    if (v37 == v39 >> 1)
    {
      v25 = v34;
      if (v34)
      {
        v66 = v35;
        v42 = v65;
        if (v34 == 1)
        {
          v75 = 1;
          sub_100038B40();
          v43 = v64;
          sub_100039058();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v67 + 8))(v43, v40);
            v44 = sub_100039078();
            v45(v44);
LABEL_21:
            sub_100012A18(v73);
            return v25;
          }
        }

        else
        {
          LODWORD(v69) = v34;
          v76 = 2;
          sub_100038AEC();
          v25 = v68;
          sub_100039058();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v41 + 8))(v25, v27);
            v60 = sub_100039078();
            v61(v60);
            v25 = v69;
            goto LABEL_21;
          }
        }

        v56 = sub_100039078();
        v57(v56);
      }

      else
      {
        v74 = 0;
        sub_100038B94();
        v52 = v63;
        sub_100039058();
        v53 = v65;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v53)
        {
          swift_unknownObjectRelease();
          (*(v66 + 8))(v52, v62);
          v58 = sub_100039068();
          v59(v58, v33);
          goto LABEL_21;
        }

        v54 = sub_100039068();
        v55(v54, v33);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v25 = v33;
LABEL_10:
    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    v49 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
    *v48 = &type metadata for AccountType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_100039068();
    v51(v50, v25);
LABEL_11:
    a1 = v73;
LABEL_12:
    sub_100012A18(a1);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000387B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000387E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100037E70();
  *a1 = result;
  return result;
}

uint64_t sub_100038808(uint64_t a1)
{
  v2 = sub_100038A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038844(uint64_t a1)
{
  v2 = sub_100038A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038880(uint64_t a1)
{
  v2 = sub_100038B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000388BC(uint64_t a1)
{
  v2 = sub_100038B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000388F8(uint64_t a1)
{
  v2 = sub_100038B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038934(uint64_t a1)
{
  v2 = sub_100038B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038970(uint64_t a1)
{
  v2 = sub_100038AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000389AC(uint64_t a1)
{
  v2 = sub_100038AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000389E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100038200(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100038A44()
{
  result = qword_1000D2D70;
  if (!qword_1000D2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D70);
  }

  return result;
}

unint64_t sub_100038A98()
{
  result = qword_1000D2D98;
  if (!qword_1000D2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D98);
  }

  return result;
}

unint64_t sub_100038AEC()
{
  result = qword_1000D2DA0;
  if (!qword_1000D2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DA0);
  }

  return result;
}

unint64_t sub_100038B40()
{
  result = qword_1000D2DA8;
  if (!qword_1000D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DA8);
  }

  return result;
}

unint64_t sub_100038B94()
{
  result = qword_1000D2DB0;
  if (!qword_1000D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DB0);
  }

  return result;
}

_BYTE *sub_100038BF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100038CBCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100038D28()
{
  result = qword_1000D2DD8;
  if (!qword_1000D2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DD8);
  }

  return result;
}

unint64_t sub_100038D80()
{
  result = qword_1000D2DE0;
  if (!qword_1000D2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DE0);
  }

  return result;
}

unint64_t sub_100038DD8()
{
  result = qword_1000D2DE8;
  if (!qword_1000D2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DE8);
  }

  return result;
}

unint64_t sub_100038E30()
{
  result = qword_1000D2DF0;
  if (!qword_1000D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DF0);
  }

  return result;
}

unint64_t sub_100038E88()
{
  result = qword_1000D2DF8;
  if (!qword_1000D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DF8);
  }

  return result;
}

unint64_t sub_100038EE0()
{
  result = qword_1000D2E00;
  if (!qword_1000D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E00);
  }

  return result;
}

unint64_t sub_100038F38()
{
  result = qword_1000D2E08;
  if (!qword_1000D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E08);
  }

  return result;
}

unint64_t sub_100038F90()
{
  result = qword_1000D2E10;
  if (!qword_1000D2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E10);
  }

  return result;
}

unint64_t sub_100038FE8()
{
  result = qword_1000D2E18[0];
  if (!qword_1000D2E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D2E18);
  }

  return result;
}

uint64_t sub_100039088()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100039104()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100039134()
{
  sub_100039104();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000391A0()
{
  v0 = type metadata accessor for ProductRequest();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100039CCC(319, &unk_1000D2F90, &type metadata accessor for AsyncThrowingStream);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100039CCC(319, &qword_1000D2FA0, &type metadata accessor for AsyncThrowingStream.Continuation);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000392DC(uint64_t a1, uint64_t a2)
{
  sub_100039D48(a2);
  v4 = sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_100019360(v4);
  (*(v5 + 16))(a2, a1, v4);

  return sub_10001267C(a2, 0, 1, v4);
}

uint64_t sub_100039374(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&qword_1000D2FB8, &qword_100096948);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for SKLogger();
  v12 = sub_100019360(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    sub_1000128C0(v11, qword_1000E4560);
    v17 = &v3[qword_1000E4528];
    v18 = &v17[*(type metadata accessor for ProductRequest() + 36)];
    v19 = *v18;
    v20 = v18[1];
    v21 = static os_log_type_t.debug.getter();

    v22 = Logger.logObject.getter();

    if (os_log_type_enabled(v22, v21))
    {
      v23 = sub_100039EE0();
      v70 = sub_100039EC8();
      *v23 = 136446466;
      sub_100039E80();
      v24._countAndFlagsBits = v19;
      v24._object = v20;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 8285;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      v26 = sub_100039EAC();

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1000847A8(0xD00000000000001CLL, 0x800000010009FBD0, &v70);
      _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    v67 = 0;
    sub_100012634(&qword_1000D2FB0, &qword_100096940);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v60 = v10;
    v61 = v7;
    v62 = v6;
    sub_100019008(a1, a2);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v28 = sub_1000128C0(v11, qword_1000E4560);
    v29 = &v3[qword_1000E4528];
    v30 = &v29[*(type metadata accessor for ProductRequest() + 36)];
    v31 = *v30;
    v32 = v30[1];
    v33 = static os_log_type_t.debug.getter();

    v63 = v28;
    v34 = Logger.logObject.getter();

    v35 = os_log_type_enabled(v34, v33);
    v65 = a2;
    v66 = a1;
    v64 = v32;
    if (v35)
    {
      v59 = "Finished receiving responses";
      v36 = sub_100039EE0();
      v70 = sub_100039EC8();
      *v36 = 136446466;
      sub_100039E80();
      v37._countAndFlagsBits = v31;
      v37._object = v32;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 8285;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      v39 = v3;
      v40 = sub_100039EAC();

      *(v36 + 4) = v40;
      v3 = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_1000847A8(0xD000000000000019, v59 | 0x8000000000000000, &v70);
      _os_log_impl(&_mh_execute_header, v34, v33, "%{public}s%{public}s", v36, 0x16u);
      swift_arrayDestroy();
      a2 = v65;
      sub_100039E94();
      sub_100039E94();
    }

    v41 = type metadata accessor for PropertyListDecoder();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100039DB0();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v44 = v68;
    v59 = v67;
    v45 = v69;
    sub_100012C50(v63, v16);

    v46 = v3;
    v47 = Logger.logObject.getter();
    v48 = type metadata accessor for Logger();
    sub_100019360(v48);
    (*(v49 + 8))(v16);
    v50 = static os_log_type_t.default.getter();
    v63 = v45;

    v51 = os_log_type_enabled(v47, v50);
    v52 = v64;
    if (v51)
    {
      v53 = sub_100039EE0();
      v67 = sub_100039EC8();
      *v53 = 136446467;
      *(v53 + 4) = sub_1000847A8(v31, v52, &v67);
      *(v53 + 12) = 2081;
      if (v44)
      {
        v54 = v59;
      }

      else
      {
        v54 = 0xD000000000000011;
      }

      if (v44)
      {
        v55 = v44;
      }

      else
      {
        v55 = 0x800000010009FC30;
      }

      v56 = sub_1000847A8(v54, v55, &v67);

      *(v53 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v50, "[%{public}s] Decoded product response (%{private}s)", v53, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      a2 = v65;
      sub_100039E94();
    }

    v67 = v59;
    v68 = v44;
    v69 = v63;
    sub_100012634(&qword_1000D2FB0, &qword_100096940);
    v57 = v60;
    AsyncThrowingStream.Continuation.yield(_:)();

    sub_100019064(v66, a2);
    return (*(v61 + 8))(v57, v62);
  }
}

void sub_100039B1C(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v4 = a1;
    v5 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = a1;
    v7 = 0xF000000000000000;
  }

  sub_100039374(v3, v7);
  sub_100019064(v3, v7);
}

uint64_t sub_100039BF0(uint64_t a1)
{
  sub_100039E04(a1 + qword_1000E4528);
  v2 = qword_1000D2EA0;
  v3 = sub_100012634(&qword_1000D2FC8, &unk_100096950);
  sub_100019360(v3);
  (*(v4 + 8))(a1 + v2);
  v5 = qword_1000D2EA8;
  v6 = sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_100019360(v6);
  v8 = *(v7 + 8);

  return v8(a1 + v5);
}

void sub_100039CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_10001CEC4(&qword_1000D1C80, &qword_1000935C0);
    v7 = a3(a1, &type metadata for ProductResponse, v6, &protocol self-conformance witness table for Error);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100039D48(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D2FA8, &qword_100096938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039DB0()
{
  result = qword_1000D2FC0;
  if (!qword_1000D2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2FC0);
  }

  return result;
}

uint64_t sub_100039E04(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039E60()
{

  return swift_once();
}

uint64_t sub_100039E94()
{
}

uint64_t sub_100039EAC()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1000847A8(v2, v3, (v0 - 88));
}

uint64_t sub_100039EC8()
{

  return swift_slowAlloc();
}

uint64_t sub_100039EE0()
{

  return swift_slowAlloc();
}

uint64_t sub_100039EF8()
{
  v5 = 0;
  URL.path(percentEncoded:)(0);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_100039FAC()
{
  v0 = sub_100012634(&qword_1000D3160, &qword_100096A58);
  sub_100014A8C(v0);
  v2 = *(v1 + 64);
  sub_10002FF34();
  __chkstk_darwin();
  (*(v4 + 104))(&v6 - v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void sub_10003A098(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100012AD4(a1, v10);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_10004AE5C();
    sub_100048CD8(v10, a2, v5, v6, v7, v8, type metadata accessor for AMSBagKey);

    *v2 = v9;
  }

  else
  {
    sub_100049EA0(a1, &qword_1000D1D60, &qword_100093620);
    sub_1000485F0(v10);

    sub_100049EA0(v10, &qword_1000D1D60, &qword_100093620);
  }
}

uint64_t sub_10003A180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  if (sub_100012898(a1, 1, v10) == 1)
  {
    sub_100049EA0(a1, &qword_1000D3170, &qword_100096A80);
    sub_10004870C(v9);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_100049EA0(v9, &qword_1000D3170, &qword_100096A80);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_100048E24(v14, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    v19 = type metadata accessor for UUID();
    return (*(*(v19 - 8) + 8))(a2, v19);
  }
}

uint64_t sub_10003A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  sub_10002FD0C(v8);
  v10 = *(v9 + 64);
  sub_10002FF34();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for RemoteAlertConfiguration();
  v15 = sub_100019360(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100012898(a1, 1, v20) == 1)
  {
    sub_100049EA0(a1, &qword_1000D31B8, &qword_100096AE0);
    sub_1000488D4(a2, a3, v13);

    return sub_100049EA0(v13, &qword_1000D31B8, &qword_100096AE0);
  }

  else
  {
    sub_1000497D8(a1, v19);
    v22 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    sub_100049148(v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v25;
  }

  return result;
}

id sub_10003A524()
{
  String._bridgeToObjectiveC()();
  sub_10004AE2C();
  v1 = [swift_getObjCClassFromMetadata() contextWithBundleID:v0];

  return v1;
}

uint64_t sub_10003A580(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{

  v5 = swift_task_localValuePush();
  a3(&v7, v5);
  if (v3)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v7;
}

uint64_t sub_10003A608(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v4);
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10004B2A8(v10);
  sub_10004AE44();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  sub_10004AE44();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100096B48;
  v12[5] = v11;
  v13 = sub_10004B26C();
  sub_100048074(v13, v14, v9, v15, v16);
}

uint64_t sub_10003A6F4(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10003A720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003A6F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003A754()
{
  sub_100013A88();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  sub_10004ABB0(v1);

  return sub_10004223C();
}

uint64_t sub_10003A7DC()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = v3;
  sub_100019350();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v0;
  sub_100019340();
  *v9 = v8;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v8;
  sub_10004ABB0(v10);

  return sub_10003AE00(v2);
}

uint64_t sub_10003A8F0()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = *(v3 + 24);
  v5 = *v0;
  sub_100019340();
  *v6 = v5;

  sub_10004AC54();

  return v7(v2);
}

uint64_t sub_10003AA5C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10003AB0C;

  return sub_10003A754();
}

uint64_t sub_10003AB0C()
{
  sub_10001D674();
  v2 = v1;
  sub_10001937C();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  sub_100019340();
  *v8 = v7;

  v9 = v5[2];
  v10 = sub_10002FD24();
  v11(v10);
  _Block_release(v5);

  sub_100019370();

  return v12();
}

uint64_t sub_10003AC54()
{
  v2 = v0[3];
  v3 = v2 - 1;
  if ((v2 - 1) >= 3)
  {
    v0[2] = v2;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(&type metadata for objc_AccountManager.objc_AccountType, v0 + 2, &type metadata for objc_AccountManager.objc_AccountType, &type metadata for Int);
  }

  else
  {
    sub_100013A88();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    sub_10004ABB0(v4);

    return sub_10003AE00(v3);
  }
}

uint64_t sub_10003AD18()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = *(v3 + 32);
  v5 = *v0;
  sub_100019340();
  *v6 = v5;

  sub_10004AC54();

  return v7(v2);
}

uint64_t sub_10003AE14()
{
  sub_10004B2E8();
  sub_10001D70C();
  v1 = v0 + 464;
  v2 = *(v0 + 600);
  v3 = [objc_allocWithZone(ACAccountStore) init];
  *(v0 + 472) = v3;
  if (v2)
  {
    if (v2 == 2)
    {
      v4 = ACAccountTypeIdentifierIDMS;
      *(v0 + 480) = ACAccountTypeIdentifierIDMS;
      *(v0 + 144) = v0;
      *(v0 + 184) = v1;
      *(v0 + 152) = sub_10003B01C;
      v5 = swift_continuation_init();
      v6 = sub_100012634(&qword_1000D3188, &unk_100096AB8);
      *(v0 + 488) = v6;
      sub_10004AC84(v6);
      sub_10004AC6C(COERCE_DOUBLE(1107296256));
      *(v0 + 416) = v7;
      *(v0 + 424) = &unk_1000C02B0;
      *(v0 + 432) = v5;
      [v3 accountTypeWithIdentifier:v4 completion:v0 + 400];
      goto LABEL_7;
    }

    v8 = &ACAccountTypeIdentifieriTunesStoreSandbox;
  }

  else
  {
    v8 = &ACAccountTypeIdentifieriTunesStore;
  }

  v9 = *v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();
  *(v0 + 568) = v10;

  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_10003BB04;
  v11 = swift_continuation_init();
  v12 = sub_100012634(&qword_1000D3188, &unk_100096AB8);
  sub_10004AC84(v12);
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_100042724;
  *(v0 + 424) = &unk_1000C0260;
  *(v0 + 432) = v11;
  [v3 accountTypeWithIdentifier:v10 completion:v0 + 400];
LABEL_7:
  sub_10004B2FC();

  return _swift_continuation_await(v13);
}

uint64_t sub_10003B01C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 176);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B118()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  *(v0 + 504) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 464;
    *(v0 + 216) = sub_10003B25C;
    v4 = swift_continuation_init();
    v5 = sub_100012634(&qword_1000D3190, &qword_100096AC8);
    *(v0 + 512) = v5;
    sub_10004ACA4(v5);
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_1000C02D8;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {

    sub_10004A8FC();
    sub_10004B148();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_10003B25C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 240);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B358()
{
  sub_10004AE50();
  v1 = v0[58];
  v2 = v0[63];
  if (v1)
  {

    v3 = sub_100082B18(v1);
    v4 = v3;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        v2 = v0[63];
        v7 = v0[59];

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v3 = *(v1 + 8 * i + 32);
      }

      v6 = v3;
      v0[66] = v3;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return _swift_continuation_await(v3);
      }

      if ([v3 isActive])
      {
        break;
      }
    }

    v11 = v0[61];
    v12 = v0[59];

    v13 = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[67] = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[34] = v0;
    v0[39] = v0 + 58;
    v0[35] = sub_10003B558;
    swift_continuation_init();
    v0[57] = v11;
    sub_10004ACEC();
    sub_10004AC6C(COERCE_DOUBLE(1107296256));
    v0[52] = v14;
    v0[53] = &unk_1000C0300;
    v0[54] = v15;
    [v12 accountTypeWithIdentifier:v13 completion:v0 + 50];
    v3 = v0 + 34;

    return _swift_continuation_await(v3);
  }

  else
  {

LABEL_13:
    v8 = sub_10004A8FC();

    return v9(v8);
  }
}

uint64_t sub_10003B558()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 544) = *(v3 + 304);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B654()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);
  *(v0 + 552) = v2;

  v3 = *(v0 + 472);
  if (v2)
  {
    v4 = *(v0 + 512);
    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 464;
    *(v0 + 344) = sub_10003B794;
    swift_continuation_init();
    *(v0 + 456) = v4;
    sub_10004ACEC();
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v5;
    *(v0 + 424) = &unk_1000C0328;
    *(v0 + 432) = v6;
    [v3 accountsWithAccountType:v2 options:1 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {
    v9 = *(v0 + 504);

    sub_10004A8FC();
    sub_10004B148();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_10003B794()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 368);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10003B890()
{
  v1 = v0;
  v2 = *(v0 + 464);
  v3 = *(v0 + 552);
  if (v2)
  {

    v4 = sub_100082B18(v2);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        v19 = *(v1 + 552);
        v20 = *(v1 + 528);
        v21 = *(v1 + 504);

        goto LABEL_22;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v8 = v1;
      v9 = *(v1 + 528);
      v10 = sub_10002EF78(v6, &selRef_username);
      v12 = v11;
      v13 = sub_10002EF78(v9, &selRef_username);
      if (!v12)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_17;
      }

      if (v10 == v13 && v12 == v14)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);

LABEL_25:

        v24 = *(v1 + 552);

        goto LABEL_27;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);
        goto LABEL_25;
      }

LABEL_18:
      v1 = v8;
    }

    if (!v14)
    {
      v1 = v8;
      v25 = *(v8 + 552);
      v26 = *(v8 + 528);
      v27 = *(v8 + 504);

      goto LABEL_27;
    }

LABEL_17:

    goto LABEL_18;
  }

  v17 = *(v0 + 504);
  v18 = *(v0 + 472);

LABEL_22:
  v7 = 0;
LABEL_27:
  v28 = *(v1 + 8);

  v28(v7);
}

uint64_t sub_10003BB04()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003BC00()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 568);
  v2 = *(v0 + 464);
  *(v0 + 584) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 464;
    *(v0 + 88) = sub_10003BD40;
    v4 = swift_continuation_init();
    v5 = sub_100012634(&qword_1000D3190, &qword_100096AC8);
    sub_10004ACA4(v5);
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_1000C0288;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {

    sub_10004A8FC();
    sub_10004B148();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_10003BD40()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 112);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10003BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v11 = *(v10 + 464);

  if (v11)
  {
    v12 = sub_100082B18(v11);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {
LABEL_12:
        v17 = *(v10 + 584);

        goto LABEL_13;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v14 isActive])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 584);

LABEL_13:
    sub_10004AC54();
    sub_10004B1A8();

    v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_10003CBE8(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10003CC88;

  return sub_10003AC40(a1);
}

uint64_t sub_10003CC88()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100019340();
  *v7 = v6;

  v8 = v5[2];
  v9 = sub_10002FD24();
  v10(v9);
  _Block_release(v5);

  sub_100019370();

  return v11();
}

uint64_t sub_10003CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return sub_100019330();
}

uint64_t sub_10003CDB8()
{
  sub_10004AE50();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  sub_10004B028(v0[10]);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v4;
  v6[5] = v3;
  v7 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  sub_100012634(&qword_1000D31F0, &qword_100096C20);
  *v8 = v0;
  v8[1] = sub_10003CEF4;
  sub_10004AA00();
  sub_10004B1A8();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_10003CEF4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v9 + 104) = v0;

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10003D008()
{
  v1 = *(v0 + 32);
  sub_10004AC54();
  return v2();
}

uint64_t sub_10003D030()
{
  sub_100019370();
  v1 = *(v0 + 104);
  return v2();
}

uint64_t sub_10003D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10003D07C, 0, 0);
}

uint64_t sub_10003D07C()
{
  sub_100013A88();
  v1 = v0[3];
  if (sub_10002D1FC())
  {
    v2 = (v0[3] + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
    v4 = *v2;
    v3 = v2[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10003D1A4;
    v6 = v0[4];

    return sub_10003D400();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_10003D2C8;
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[4];
    v12 = sub_10004B228(v0[3]);

    return sub_10003E1DC(v12, 2, v13, v14, v15);
  }
}

uint64_t sub_10003D1A4()
{
  sub_100013A88();
  sub_10001937C();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_100019340();
  *v5 = v4;

  if (v0)
  {
    sub_100019370();

    return v6();
  }

  else
  {
    sub_1000193B4();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10003D2C8()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;

  if (v0)
  {
    sub_10001D6BC();

    return v11();
  }

  else
  {
    *(v5 + 72) = v3;
    sub_1000193B4();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_10003D400()
{
  sub_100013A88();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v4);
  v6 = *(v5 + 64) + 15;
  v0[22] = swift_task_alloc();
  v7 = sub_10004AD24();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10004ABC8();
  a23 = v27;
  a24 = v28;
  sub_10004AC60();
  a22 = v25;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v29 = type metadata accessor for SKLogger();
  v25[23] = sub_10004ADA8(v29, qword_1000E4560);
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v25[24] = qword_1000E4520;
  TaskLocal.get()();
  v31 = v25[2];
  v30 = v25[3];
  v32 = static os_log_type_t.default.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    a10 = "ith active account for ";
    sub_100039EE0();
    sub_10004AB40();
    sub_10004A7FC(4.8752e-34);
    a11 = v34;
    a12 = v35;
    a13 = v36;
    v37._countAndFlagsBits = v31;
    v37._object = v30;
    String.append(_:)(v37);
    sub_10004ADC0(v38);
    sub_1000847A8(a12, a13, &a11);
    sub_10004AEC0();
    sub_10004A7EC();
    *(v26 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A0680, &a11);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v26, 0x16u);
    sub_10004AA90();
    sub_10004A98C();
    sub_10004AA4C();
  }

  v40 = v25[19];
  v39 = v25[20];
  sub_100012BAC(0, &qword_1000D1D30, off_1000BD048);

  v41 = sub_10003A524();
  v25[25] = v41;
  v42 = [objc_opt_self() sharedInstance];
  v43 = [v42 getBoolValueForIdentifier:2 withContext:v41];

  if (v43)
  {
    TaskLocal.get()();
    v45 = v25[16];
    v44 = v25[17];
    static os_log_type_t.default.getter();
    sub_10004B0BC();
    Logger.logObject.getter();
    sub_10004AE2C();
    if (sub_10004B0A4())
    {
      v46 = sub_100039EE0();
      sub_100039EC8();
      *v46 = 136446466;
      sub_10004A980();
      a11 = v47;
      a12 = v48;
      a13 = v49;
      v50._countAndFlagsBits = v45;
      v50._object = v44;
      String.append(_:)(v50);
      sub_10004ADC0(v51);
      v52 = sub_1000847A8(a12, a13, &a11);

      *(v46 + 4) = v52;
      sub_10004B08C();
      *(v46 + 14) = sub_1000847A8(0xD000000000000051, 0x80000001000A0810, &a11);
      sub_10004AD34();
      sub_10004B1EC(v53, v54, v55, v56);
      sub_100037BEC();
      sub_10004AA4C();
      sub_10004AA1C();
    }

    v57 = v25[22];

    sub_10004AD98();
    sub_10004AAC8();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v68 = v25[21];
    v67 = v25[22];
    sub_100012BAC(0, &qword_1000D31F8, AMSDialogAction_ptr);
    v69 = sub_1000437AC(0x6C65636E6143, 0xE600000000000000, 2);
    v25[26] = v69;
    v70 = sub_100043828(19279, 0xE200000000000000, 19279, 0xE200000000000000);
    v25[27] = v70;
    v71 = objc_allocWithZone(AMSDialogRequest);
    v72 = sub_100047DB0(0xD00000000000001ALL, 0x80000001000A06B0, 0xD000000000000052, 0x80000001000A06D0);
    v25[28] = v72;
    [v72 setDefaultAction:v70];
    sub_100012634(&qword_1000D3200, &qword_100096C30);
    sub_10004AE44();
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100096960;
    *(v73 + 32) = v69;
    *(v73 + 40) = v70;
    v74 = v69;
    v75 = v70;
    sub_1000496A0(v73, v72);
    TaskLocal.get()();
    sub_100012318(v25[4], v25[5], v72, &selRef_setLogKey_);
    v76 = type metadata accessor for TaskPriority();
    sub_10004B2A8(v76);
    sub_10004AE44();
    v77 = swift_allocObject();
    v77[2] = 0;
    v77[3] = 0;
    v77[4] = v68;
    v77[5] = v72;
    swift_unknownObjectRetain();
    v78 = v72;
    v79 = sub_10004B26C();
    v25[29] = sub_10000D988(v79, v80, v67, v81, v77);
    v82 = async function pointer to Task.value.getter[1];
    v83 = swift_task_alloc();
    v25[30] = v83;
    v25[31] = sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    *v83 = v25;
    v83[1] = sub_10003D9F8;
    sub_10004AAC8();

    return Task.value.getter(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_10003D9F8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  sub_100019340();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003DAF0()
{
  v97 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v2 == 19279 && v1 == 0xE200000000000000;
  if (v3 || (v4 = v0[6], v5 = v0[7], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v6 = v0[23];
    v7 = v0[24];
    TaskLocal.get()();
    v9 = v0[14];
    v8 = v0[15];
    v10 = static os_log_type_t.default.getter();

    v11 = Logger.logObject.getter();

    v12 = os_log_type_enabled(v11, v10);
    v14 = v0[28];
    v13 = v0[29];
    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[25];
    if (v12)
    {
      v91 = v0[26];
      v18 = sub_100039EE0();
      sub_100039EC8();
      *v18 = 136446466;
      sub_10004A980();
      v94 = v19;
      v95 = v20;
      v96 = v21;
      v22._countAndFlagsBits = v9;
      v22._object = v8;
      String.append(_:)(v22);
      v24 = sub_10004ADC0(v23);
      v32 = sub_10004B15C(v24, v25, v26, v27, v28, v29, v30, v31, v83, "ted with action id: ", v15, v14, v91, v94, v95, v96);

      *(v18 + 4) = v32;
      sub_10004B08C();
      *(v18 + 14) = sub_1000847A8(0xD000000000000036, v85 | 0x8000000000000000, &v94);
      sub_10004B1EC(&_mh_execute_header, v11, v10, "%{public}s%{public}s");
      sub_100037BEC();
      sub_10004AA4C();
      sub_10004AA1C();
    }

    else
    {
      v33 = v0[29];
    }

    v34 = v0[22];

    sub_10004AD98();
  }

  else
  {
    v36 = v0[23];
    v37 = v0[24];
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v38._countAndFlagsBits = 0xD000000000000044;
    v38._object = 0x80000001000A0780;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v2;
    v39._object = v1;
    String.append(_:)(v39);

    TaskLocal.get()();
    v41 = v0[12];
    v40 = v0[13];
    static os_log_type_t.default.getter();
    sub_10004B0BC();

    Logger.logObject.getter();
    sub_10004AE2C();

    if (sub_10004B0A4())
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v94 = v42;
      v95 = v43;
      v96 = v44;
      v45 = sub_10004AED8();
      v46 = sub_10004ADC0(v45);
      sub_10004B15C(v46, v47, v48, v49, v50, v51, v52, v53, v83, v84, v86, v88, v90, v94, v95, v96);
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(0, 0xE000000000000000, &v94);
      sub_10004AF78();
      MEMORY[0xD000000000000044] = &v95;
      sub_10004AAE4(&_mh_execute_header, v54, v55, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_100039E94();
    }

    else
    {
    }

    sub_100018F34();
    v56 = sub_10004B1D4();
    sub_10004B204(v57, 11);
    v58 = v0[31];
    v59 = v0[23];
    v60 = v0[24];
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v61 = v96;
    v0[8] = v95;
    v0[9] = v61;
    v62._countAndFlagsBits = 0xD000000000000041;
    v62._object = 0x80000001000A0730;
    String.append(_:)(v62);
    v0[18] = v56;
    _print_unlocked<A, B>(_:_:)();
    v64 = v0[8];
    v63 = v0[9];
    TaskLocal.get()();
    v66 = v0[10];
    v65 = v0[11];
    v67 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10004B038();

    if (os_log_type_enabled(v59, v67))
    {
      sub_100039EE0();
      sub_10004AB78();
      sub_10004A8B4(4.8752e-34);
      v94 = v68;
      v95 = v69;
      v96 = v70;
      v71._countAndFlagsBits = v66;
      v71._object = v65;
      String.append(_:)(v71);
      v73 = sub_10004ADC0(v72);
      sub_10004B15C(v73, v74, v75, v76, v77, v78, v79, v80, v83, v84, v86, v88, v64, v94, v95, v96);
      sub_10004AEA8();
      *(v64 + 4) = v66;
      sub_10004AD40();
      sub_1000847A8(v93, v63, &v94);
      sub_10004B010();
      *(v64 + 14) = &v95;
      sub_10004AC38(&_mh_execute_header, v81, v67, "%{public}s%{public}s");
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();
    }

    else
    {
    }

    sub_10004B108();

    sub_100019370();
  }

  return v35();
}

uint64_t sub_10003E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_100019330();
}

uint64_t sub_10003E434()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003E51C()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID);
  v4 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID + 8);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_10003E5F0;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 120);
  sub_10004B148();

  return sub_100042860(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10003E5F0()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;
  v5[11] = v3;

  if (v0)
  {
    sub_10001D6BC();

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[12] = v13;
    *v13 = v9;
    v13[1] = sub_10003E74C;
    v14 = v5[8];

    return sub_10003F130(v3, v14);
  }
}

uint64_t sub_10003E74C()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10003E858()
{
  sub_10001D674();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = [v1 account];

  sub_10004AC54();

  return v4(v3);
}

uint64_t sub_10003E8E4()
{
  sub_100013A88();

  v1 = *(v0 + 104);
  sub_100019370();

  return v2();
}

uint64_t sub_10003E9F4(void *a1, int a2, uint64_t a3, int a4, void *aBlock)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  v14 = a1;
  swift_unknownObjectRetain();
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_10003EB0C;

  return sub_10003CD9C(v14, v8, v10, a3, v11, v13);
}

uint64_t sub_10003EB0C()
{
  sub_10004AE50();
  sub_10001D658();
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v2;
  sub_100019340();
  *v10 = v9;

  swift_unknownObjectRelease();

  v11 = v3[4];
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_1000216E0();

    v12 = sub_10001D614();
    v13(v12, 0, v1);

    _Block_release(v11);
  }

  else
  {
    v14 = sub_10001D614();
    v15(v14, v1, 0);
    _Block_release(v11);
  }

  sub_10001D6BC();

  return v16();
}

uint64_t sub_10003ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return sub_100019330();
}

uint64_t sub_10003ECEC()
{
  sub_10001D70C();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v1 = *(v0 + 56);
  sub_10004B028(*(v0 + 64));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 40);
  v3 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  sub_100012BAC(0, &qword_1000D2368, AMSAuthenticateResult_ptr);
  *v4 = v0;
  v4[1] = sub_10003EE20;
  sub_10004AA00();
  sub_10004B148();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_10003EE20()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v9 + 88) = v0;

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10003EF34()
{
  sub_100019370();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_10003EF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10003EFF8;

  return sub_10003F130(a2, a3);
}

uint64_t sub_10003EFF8()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;

  if (v0)
  {
    sub_10001D6BC();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_1000193B4();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_10003F130(uint64_t a1, uint64_t a2)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return sub_100019330();
}

uint64_t sub_10003F5E8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 448);
  *v2 = *v0;
  *(v1 + 456) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003F974()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_100019350();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  *(v3 + 496) = v7;
  *(v3 + 504) = v0;

  if (v0)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003FC74()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 520);
  *v2 = *v0;
  *(v1 + 528) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003FED0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 544);
  *v2 = *v0;
  *(v1 + 552) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100040468()
{
  sub_100013A88();
  v1 = *v0;
  sub_10004A7A8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  *(v2 + 576) = v5;
  if (v5)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100040918()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100040A14()
{
  sub_100013A88();

  v1 = *(v0 + 400);
  sub_10004AC54();

  return v2();
}

uint64_t sub_100040A74()
{
  sub_100013A88();
  v1 = *(v0 + 464);

  v2 = *(v0 + 504);
  sub_100019370();

  return v3();
}

uint64_t sub_100040AD8()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[55];
  swift_willThrow();

  v6 = v0[72];
  sub_100019370();
  sub_10004B148();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100040E44(void *a1, uint64_t a2, int a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100040F34;

  return sub_10003ECD4(v10, a2, v7, v9);
}

uint64_t sub_100040F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  sub_10001D658();
  v14 = v13[6];
  v15 = v13[5];
  v16 = v13[3];
  v17 = v13[2];
  v18 = *v12;
  sub_100019340();
  *v19 = v18;

  swift_unknownObjectRelease();

  v20 = v13[4];
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_1000216E0();

    v21 = sub_10001D614();
    v22(v21, 0, v11);

    _Block_release(v20);
  }

  else
  {
    v23 = sub_10001D614();
    v24(v23, v11, 0);
    _Block_release(v20);
  }

  sub_10001D6BC();
  sub_10004B1A8();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1000410D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return sub_100019330();
}

uint64_t sub_1000410E8()
{
  sub_10001D674();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v1 = v0[5];
  v2 = v0[4];
  sub_10004B028(v0[6]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  v4 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100041204;
  sub_10004AA00();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100041204()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v9 + 72) = v0;

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10004131C()
{
  sub_100019370();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_100041340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001D270;

  return sub_1000413D4();
}

uint64_t sub_1000413D4()
{
  sub_100013A88();
  v0[8] = v1;
  v2 = type metadata accessor for URL();
  v0[9] = v2;
  v3 = *(v2 - 8);
  v0[10] = v3;
  v4 = *(v3 + 64) + 15;
  v0[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  sub_10004ABB0(v5);

  return sub_10004223C();
}

uint64_t sub_1000414C0()
{
  sub_100013A88();
  v2 = v1;
  v3 = *v0;
  sub_100019350();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v0;
  sub_100019340();
  *v8 = v7;

  if (v2 == 2)
  {
    v9 = swift_task_alloc();
    *(v3 + 104) = v9;
    *v9 = v7;
    sub_10004ABB0(v9);

    return sub_10003AE00(2);
  }

  else
  {
    v11 = *(v3 + 88);

    sub_10004AD98();

    return v12();
  }
}

uint64_t sub_100041614()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000419E4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100041D00()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;
  *(v5 + 168) = v0;

  if (!v0)
  {
    v11 = *(v5 + 152);
  }

  sub_1000193B4();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100041E10()
{
  sub_100013A88();

  v1 = *(v0 + 88);

  sub_10004AD98();

  return v2();
}

uint64_t sub_100041E70()
{
  sub_100013A88();
  v1 = v0[19];
  v2 = v0[11];

  sub_100019370();
  v4 = v0[21];

  return v3();
}

id sub_100041F70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100041FA8(void *a1, int a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100042080;

  return sub_1000410D0(v8, v5, v7);
}

uint64_t sub_100042080()
{
  sub_10004B2E8();
  sub_10001D70C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_10001D614();
    v12(v11, v10);
  }

  else
  {
    v13 = sub_10001D614();
    v14(v13, 0);
  }

  _Block_release(v4[3]);
  sub_10001D6BC();
  sub_10004B2FC();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_10004223C()
{
  sub_100013A88();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for Client.Server(0);
  sub_10002FD0C(v2);
  v4 = *(v3 + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  v5 = sub_10004AD24();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100042414()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000424FC()
{
  sub_100013A88();
  v1 = v0[5];
  if (v1)
  {

    v2 = v0[3];

    sub_10004AC54();

    return v3(2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    sub_10004ABB0(v5);

    return sub_10003AE00(1);
  }
}

uint64_t sub_1000425C8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000426B0()
{
  sub_100013A88();
  v1 = *(v0 + 56);
  if (v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v0 + 24);

  sub_10004AC54();

  return v4(v2);
}

uint64_t sub_100042724(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100012980((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_100013908(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1000138FC(v5, a2);
  }
}

uint64_t sub_1000427AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100012980((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_100013908(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_100012BAC(0, &qword_1000D3198, ACAccount_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_1000138FC(v5, v8);
  }
}

uint64_t sub_100042860(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 144) = a2;
  *(v7 + 152) = a3;
  *(v7 + 251) = a1;
  return _swift_task_switch(sub_10004288C, 0, 0);
}

uint64_t sub_10004288C()
{
  sub_10004B290();
  sub_10004AE50();
  v1 = *(v0 + 251);
  v2 = [objc_opt_self() currentProcess];
  *(v0 + 192) = v2;
  v3 = *(&off_1000C05C8 + v1);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *v3;
  [v2 setAccountMediaType:v9];

  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  [v2 setBundleURL:v11];

  sub_100049724(v8, v5, v2);
  v13 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  *(v0 + 200) = v13;
  [v13 setClientInfo:v2];
  v14 = sub_10004B098();
  [v14 v15];
  if (v4)
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v13 setDebugReason:v18];

  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v19 = *(v0 + 251);
  *(v0 + 208) = qword_1000E4520;
  TaskLocal.get()();
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = String._bridgeToObjectiveC()();

  v23 = sub_10004B098();
  [v23 v24];

  if (v19 == 2)
  {
    [v13 setCanMakeAccountActive:0];
  }

  sub_10002EF78(v2, &selRef_proxyAppBundleID);
  if (v25)
  {
    String._bridgeToObjectiveC()();
    sub_1000216E0();
  }

  else
  {
    v21 = 0;
  }

  [v13 setProxyAppBundleID:v21];

  v26 = swift_task_alloc();
  *(v0 + 216) = v26;
  *v26 = v0;
  v26[1] = sub_100042AF0;
  v27 = *(v0 + 251);
  sub_10004B1A8();

  return sub_10003AE00(v28);
}

uint64_t sub_100042AF0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000430EC()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 240) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

id sub_100043750(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 options:a2];

  return v4;
}

id sub_1000437AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() actionWithTitle:v4 style:a3];

  return v5;
}

id sub_100043828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = String._bridgeToObjectiveC()();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 identifier:v6];

  return v7;
}

uint64_t sub_1000438D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return _swift_task_switch(sub_1000438F8, 0, 0);
}

uint64_t sub_1000438F8()
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004B21C();
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v3;
  v0[7] = v0 + 18;
  v0[3] = sub_100043A10;
  v4 = swift_continuation_init();
  v0[17] = sub_100012634(&qword_1000D2360, &qword_100094C80);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100043724;
  v0[13] = &unk_1000C0530;
  v0[14] = v4;
  [v2 handleDialogRequest:v1 completionHandler:v0 + 10];
  sub_10004B148();

  return _swift_continuation_await(v5);
}

uint64_t sub_100043A10()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100043B0C()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [v1 selectedActionIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  sub_10004AD98();
  sub_10004B148();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100043B9C()
{
  sub_10001D674();
  v1 = *(v0 + 176);
  swift_willThrow();
  sub_100019370();
  v3 = *(v0 + 176);

  return v2();
}

uint64_t *sub_100043C00(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void *sub_100043CB0()
{
  type metadata accessor for AccountNotificationObserver();
  v0 = swift_allocObject();
  result = sub_100043D5C();
  qword_1000E4530 = v0;
  return result;
}

NSString sub_100043CEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2FD0 = result;
  return result;
}

NSString sub_100043D24()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2FD8 = result;
  return result;
}

void *sub_100043D5C()
{
  v1 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v1);
  v3 = *(v2 + 64);
  sub_10002FF34();
  __chkstk_darwin();
  v5 = &v15 - v4;
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for TaskPriority();
  v6 = sub_10004B234();
  sub_10001267C(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  v11 = sub_10004B26C();
  sub_10006BA84(v11, v12, v5, v13, v10);

  return v0;
}

uint64_t sub_100043E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001D270;

  return sub_100044730();
}

uint64_t sub_100043ED4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100043F54()
{
  sub_100043ED4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100043F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_100043FBC, 0, 0);
}

uint64_t sub_100044120()
{
  sub_100013A88();
  v1 = *(v0 + 32);
  sub_100045270(*(v0 + 40), 0);
  sub_100019370();

  return v2();
}

uint64_t sub_1000441B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  v3 = sub_1000326AC();
  v4 = __chkstk_darwin(v3);
  sub_10003A580(v4, v5, a2);
}

uint64_t sub_100044284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for Notification();
  v8 = sub_100014A8C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v13 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v13);
  v15 = *(v14 + 64);
  sub_10002FF34();
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  type metadata accessor for TaskPriority();
  v19 = sub_10004B234();
  sub_10001267C(v19, v20, v21, v22);
  (*(v10 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v23 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  (*(v10 + 32))(&v24[v23], &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  v25 = sub_10004B26C();
  result = sub_10006BA84(v25, v26, v18, a3, v24);
  *v29 = result;
  return result;
}

uint64_t sub_10004442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10004444C, 0, 0);
}

uint64_t sub_1000445B0()
{
  sub_100013A88();
  v1 = *(v0 + 32);
  sub_100045270(*(v0 + 40), 1);
  sub_100019370();

  return v2();
}

uint64_t sub_100044624(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100014A8C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v12);

  v13 = *(v8 + 8);
  v14 = sub_10004B260();
  return v15(v14);
}

uint64_t sub_100044730()
{
  sub_100013A88();
  v1[2] = v0;
  v2 = type metadata accessor for SKLogger();
  v1[3] = v2;
  sub_10002FD0C(v2);
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  sub_10004ABB0(v5);

  return sub_10003AE00(0);
}

uint64_t sub_100044800()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100019340();
  *v7 = v6;
  *(v9 + 64) = v8;

  v10 = sub_10004AFB0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000448F8()
{
  v1 = v0[8];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[2];
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v7 = v0[6];
  v8 = sub_1000128C0(v0[3], qword_1000E4560);
  v0[9] = v8;
  sub_100012C50(v8, v7);
  sub_10004A90C();
  _StringGuts.grow(_:)(58);
  sub_10004AEFC();
  sub_10004ABE4();
  v9._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v9);
  v10 = *(v5 + 112);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[6];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[6];
  if (v19)
  {
    sub_100039EE0();
    v27 = sub_10004AAAC();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000300EC(v27);
    sub_10004ABBC();
    v21 = sub_10004AD8C();
    v24 = sub_1000847A8(v21, v22, v23);

    *(v15 + 14) = v24;
    sub_10004AE74(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100037BEC();
    sub_10004AA4C();
    sub_10004AB24();
  }

  else
  {
  }

  sub_1000498A0(v20);
  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  sub_10004ABB0(v25);

  return sub_10003AE00(1);
}

uint64_t sub_100044B60()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100019340();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = sub_10004AFB0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100044C58()
{
  v1 = v0[11];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  v8 = *(v7 + 120);
  *(v7 + 120) = v4;

  sub_100012C50(v5, v6);
  sub_10004A90C();
  _StringGuts.grow(_:)(66);
  sub_10004AEFC();
  sub_10004ABE4();
  v9._countAndFlagsBits = 0xD000000000000040;
  String.append(_:)(v9);
  v10 = *(v7 + 120);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[5];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[5];
  if (v19)
  {
    sub_100039EE0();
    v27 = sub_10004AAAC();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000300EC(v27);
    sub_10004ABBC();
    v21 = sub_10004AD8C();
    v24 = sub_1000847A8(v21, v22, v23);

    *(v15 + 14) = v24;
    sub_10004AE74(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100037BEC();
    sub_10004AA4C();
    sub_10004AB24();
  }

  else
  {
  }

  sub_1000498A0(v20);
  v25 = swift_task_alloc();
  v0[12] = v25;
  *v25 = v0;
  sub_10004ABB0(v25);

  return sub_10003AE00(2);
}

uint64_t sub_100044E94()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100019340();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = sub_10004AFB0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100044F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_10004AE8C();
  a21 = v23;
  a22 = v24;
  sub_10004ACE0();
  a20 = v22;
  v25 = v22[13];
  v26 = [v25 ams_DSID];
  if (v26)
  {

    v27 = v25;
    v28 = v22[13];
  }

  else
  {
    v28 = 0;
  }

  v29 = v22[9];
  v30 = v22[4];
  v31 = v22[2];
  v32 = *(v31 + 128);
  *(v31 + 128) = v28;

  sub_100012C50(v29, v30);
  sub_10004A90C();
  _StringGuts.grow(_:)(69);
  sub_10004AEFC();
  sub_10004ABE4();
  v33._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v33);
  v34 = *(v31 + 128);
  if (v34)
  {
    v35 = [v34 hashedDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  v39 = v22[4];
  v40._countAndFlagsBits = v36;
  v40._object = v38;
  String.append(_:)(v40);

  v42 = a10;
  v41 = a11;
  v43 = static os_log_type_t.default.getter();
  v44 = Logger.logObject.getter();
  v45 = os_log_type_enabled(v44, v43);
  v46 = v22[4];
  if (v45)
  {
    v47 = sub_100039EE0();
    v48 = sub_100039EC8();
    a10 = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_1000300EC(v48);
    sub_10004B08C();
    v49 = sub_1000847A8(v42, v41, &a10);

    *(v47 + 14) = v49;
    sub_10004AD34();
    sub_10004B1EC(v50, v51, v52, v53);
    sub_10004AA90();
    sub_10004A98C();
    sub_10004AA1C();
  }

  else
  {
  }

  sub_1000498A0(v46);
  v54 = [objc_opt_self() defaultCenter];
  v57 = v54;
  if (qword_1000D1AD8 != -1)
  {
    v54 = swift_once();
  }

  v58 = sub_10004B2C8(v54, v55, v22[2], v56, qword_1000D2FD0);
  if (qword_1000D1AE0 != -1)
  {
    v58 = swift_once();
  }

  v61 = v22[11];
  v62 = v22[8];
  v64 = v22[5];
  v63 = v22[6];
  v65 = v22[4];
  sub_10004B2C8(v58, v59, v22[2], v60, qword_1000D2FD8);

  sub_100019370();
  sub_100013A94();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_100045818(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100012634(&qword_1000D31D0, &qword_100096B00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10004977C(*(a1 + 48) + 40 * v10, __src);
    sub_100012908(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10004977C(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100012908(&__dst[40], v22);
    sub_100049EA0(__dst, &qword_1000D31D8, &qword_100096B08);
    v23 = v20;
    sub_100012AD4(v22, v24);
    v11 = v23;
    sub_100012AD4(v24, v25);
    sub_100012AD4(v25, &v23);
    result = sub_10007D370(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      sub_100012A18(v16);
      result = sub_100012AD4(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100012AD4(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_100049EA0(__dst, &qword_1000D31D8, &qword_100096B08);

  return 0;
}

void sub_100045AD0(uint64_t a1)
{
  v2 = v1;
  v95 = sub_100012634(&qword_1000D31C8, &unk_100096AF0);
  sub_100014A8C(v95);
  v85 = v4;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v94 = &v83 - v8;
  v93 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_100014A8C(v93);
  v96 = v9;
  v11 = *(v10 + 64);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v92 = &v83 - v13;
  if (qword_1000D1AE8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v14 = type metadata accessor for SKLogger();
    v15 = sub_1000128C0(v14, qword_1000E4560);
    sub_10004AFA0();
    _StringGuts.grow(_:)(31);
    v16._countAndFlagsBits = 0x676E696B63656843;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    LOBYTE(v103[0]) = a1;
    _print_unlocked<A, B>(_:_:)();
    sub_10004ABE4();
    v17._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v17);
    v18 = v98;
    v19 = v99;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728();
    }

    v91 = qword_1000E4520;
    TaskLocal.get()();
    v20 = v98;
    v21 = static os_log_type_t.default.getter();

    v90 = v15;
    v22 = Logger.logObject.getter();

    if (os_log_type_enabled(v22, v21))
    {
      sub_100039EE0();
      v97 = v2;
      v103[0] = sub_10004AAAC();
      sub_10004A7B8(4.8752e-34);
      v98 = v23;
      v99 = v24;
      v25._countAndFlagsBits = sub_10004AD8C();
      String.append(_:)(v25);
      (sub_10004ADC0)();
      sub_1000847A8(v98, v99, v103);
      sub_10004B050();
      *(v2 + 4) = v20;
      sub_10004ABBC();
      v26 = sub_1000847A8(v18, v19, v103);

      *(v2 + 14) = v26;
      sub_10004AE74(&_mh_execute_header, v22, v21, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100039E94();
      v2 = v97;
      sub_100039E94();
    }

    else
    {
    }

    v27 = v2[a1 + 14];
    v28 = **(&off_1000C05C8 + a1);
    v29 = v27;
    v30 = v28;
    v31 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v30];

    v32 = [v31 ams_activeiTunesAccount];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 ams_accountID];
      v35 = v34 ? v34 : v33;
      v36 = v34 ? v33 : 0;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    sub_100046444(v36, a1);
    v97 = v37;

    if ((sub_1000464B4(v27, v36, a1) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    if (!*(v2[17] + 16))
    {

      goto LABEL_24;
    }

    v83 = v31;
    v84 = v29;
    sub_10004AFA0();
    _StringGuts.grow(_:)(51);
    v38._countAndFlagsBits = 0x6E69796669746F4ELL;
    v38._object = 0xEA00000000002067;
    String.append(_:)(v38);
    v102 = *(v2[17] + 16);
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x656E657473696C20;
    v40._object = 0xEF20726F66207372;
    String.append(_:)(v40);
    LOBYTE(v102) = a1;
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 0xD000000000000016;
    v41._object = 0x80000001000A0090;
    String.append(_:)(v41);
    v42 = v98;
    v43 = v99;
    TaskLocal.get()();
    v44 = v99;
    v87 = v98;
    v45 = static os_log_type_t.default.getter();

    v46 = Logger.logObject.getter();

    LODWORD(v90) = v45;
    v47 = os_log_type_enabled(v46, v45);
    v88 = v36;
    v89 = a1;
    if (v47)
    {
      sub_100039EE0();
      v102 = sub_10004AAAC();
      sub_10004A7B8(4.8752e-34);
      v98 = v48;
      v99 = v49;
      v50._countAndFlagsBits = v87;
      v50._object = v44;
      String.append(_:)(v50);
      sub_10004ADC0(v51);
      sub_1000847A8(v98, v99, &v102);
      sub_10004B050();
      *(v2 + 4) = v45;
      sub_10004ABBC();
      v52 = sub_1000847A8(v42, v43, &v102);

      *(v2 + 14) = v52;
      sub_10004AE74(&_mh_execute_header, v46, v90, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    else
    {
    }

    TaskLocal.get()();
    v69 = v2[17];
    a1 = v69 + 64;
    v70 = 1 << *(v69 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v69 + 64);
    v73 = v99;
    v90 = v98;
    v91 = v69;
    v74 = (v70 + 63) >> 6;
    v86 = v96 + 8;
    v87 = v96 + 16;
    v75 = (v85 + 8);

    v2 = 0;
    v76 = v93;
    v77 = v94;
    while (v72)
    {
      v78 = v2;
LABEL_34:
      v79 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v80 = v92;
      v81 = v96;
      (*(v96 + 16))(v92, *(v91 + 56) + *(v96 + 72) * (v79 | (v78 << 6)), v76);
      LOBYTE(v98) = v89;
      v99 = v88;
      v100 = v90;
      v101 = v73;
      v82 = v97;

      AsyncStream.Continuation.yield(_:)();
      (*(v81 + 8))(v80, v76);
      (*v75)(v77, v95);
    }

    while (1)
    {
      v78 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v78 >= v74)
      {

        goto LABEL_37;
      }

      v72 = *(a1 + 8 * v78);
      v2 = (v2 + 1);
      if (v72)
      {
        v2 = v78;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    sub_100039E60();
  }

  sub_10004AFA0();
  _StringGuts.grow(_:)(25);
  LOBYTE(v103[0]) = a1;
  _print_unlocked<A, B>(_:_:)();
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x80000001000A0070;
  String.append(_:)(v53);
  TaskLocal.get()();
  v54 = v98;
  static os_log_type_t.default.getter();
  sub_10004B0BC();

  v55 = Logger.logObject.getter();

  if (!sub_10004B0A4())
  {

LABEL_24:
    return;
  }

  v56 = sub_100039EE0();
  v84 = v29;
  v57 = v56;
  v103[0] = sub_100039EC8();
  *v57 = 136446466;
  sub_10004A980();
  v98 = v58;
  v99 = v59;
  v60 = sub_10004AED8();
  sub_10004ADC0(v60);
  v61 = v99;
  sub_1000847A8(v98, v99, v103);
  sub_10004AEC0();
  *(v57 + 4) = v54;
  sub_10004B08C();
  v62 = sub_10004B260();
  sub_1000847A8(v62, v63, v64);
  sub_10004B358();
  *(v57 + 14) = v61;
  sub_10004AD34();
  sub_10004B1EC(v65, v66, v67, v68);
  sub_10004AA90();
  sub_10004A98C();
  sub_10004AA1C();

LABEL_37:
}

void sub_100046444(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = v2[15];
      v2[15] = a1;
    }

    else
    {
      v4 = v2[16];
      v2[16] = a1;
    }
  }

  else
  {
    v4 = v2[14];
    v2[14] = a1;
  }

  v3 = a1;
}

uint64_t sub_1000464B4(void *a1, void *a2, char a3)
{
  v6 = type metadata accessor for SKLogger();
  v7 = sub_100019360(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v94 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v94 - v17;
  __chkstk_darwin(v16);
  v20 = &v94 - v19;
  if (!a1)
  {
    if (a2)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60();
      }

      v25 = sub_1000128C0(v6, qword_1000E4560);
      sub_100012C50(v25, v20);
      sub_10004AD7C();
      _StringGuts.grow(_:)(46);
      sub_10004B278();
      sub_10004ADF4("v24@?0@NSArray8@NSError16");
      LOBYTE(v95) = a3;
      sub_10004B370();
      v26._countAndFlagsBits = 0xD000000000000018;
      v26._object = 0x800000010009FFD0;
      String.append(_:)(v26);
      v27 = [a2 hashedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10004B254();

      sub_10004B388();

      if (qword_1000D1AC8 != -1)
      {
        sub_10004A728();
      }

      TaskLocal.get()();
      v29 = v96;
      v28 = v97;
      v30 = static os_log_type_t.default.getter();
      v31 = Logger.logObject.getter();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = sub_100039EE0();
        sub_100039EC8();
        *v32 = 136446466;
        sub_10004A980();
        v35._countAndFlagsBits = sub_10004AA7C(v33, v34);
        v35._object = v28;
        String.append(_:)(v35);
        sub_10004ADC0();
        sub_10004AF50();
        sub_10004AEC0();
        *(v32 + 4) = v29;
        sub_10004B08C();
        v36 = sub_10004B260();
        sub_1000847A8(v36, v37, v38);
        sub_10004B358();
        *(v32 + 14) = v20;
        sub_10004AD34();
        sub_10004B1EC(v39, v40, v41, v42);
        sub_10004AA90();
        sub_10004A98C();
        sub_10004AA1C();
      }

      else
      {
      }

      v62 = v20;
      goto LABEL_59;
    }

    return 0;
  }

  if (!a2)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v43 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v43, v18);
    sub_10004AD7C();
    _StringGuts.grow(_:)(48);
    sub_10004B278();
    sub_10004ADF4("v24@?0@NSArray8@NSError16");
    LOBYTE(v95) = a3;
    sub_10004B370();
    v44._countAndFlagsBits = 0xD00000000000001ALL;
    v44._object = 0x800000010009FFF0;
    String.append(_:)(v44);
    v45 = [a1 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728();
    }

    TaskLocal.get()();
    v46 = v97;
    v47 = static os_log_type_t.default.getter();
    v48 = Logger.logObject.getter();
    if (os_log_type_enabled(v48, v47))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v51._countAndFlagsBits = sub_10004AA7C(v49, v50);
      v51._object = v46;
      String.append(_:)(v51);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      v52 = sub_10004B260();
      sub_1000847A8(v52, v53, v54);
      sub_10004B358();
      *(v20 + 14) = v18;
      sub_10004AAE4(&_mh_execute_header, v55, v56, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v62 = v18;
    goto LABEL_59;
  }

  v21 = [a1 ams_DSID];
  v22 = [a2 ams_DSID];
  v23 = v22;
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_28:

LABEL_29:
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v63 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v63, v15);
    sub_10004AD7C();
    _StringGuts.grow(_:)(40);
    sub_10004B278();
    sub_10004ABE4();
    v64._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v64);
    LOBYTE(v95) = a3;
    sub_10004B370();
    sub_10004ABE4();
    v65._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v65);
    v66 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    v68 = v96;
    v67 = v97;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728();
    }

    TaskLocal.get()();
    v69 = v97;
    v70 = static os_log_type_t.default.getter();
    v71 = Logger.logObject.getter();
    if (os_log_type_enabled(v71, v70))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v74._countAndFlagsBits = sub_10004AA7C(v72, v73);
      v74._object = v69;
      String.append(_:)(v74);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(v68, v67, &v95);
      sub_10004B358();
      *(v23 + 14) = v15;
      sub_10004AB94(&_mh_execute_header, v75, v70, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v62 = v15;
LABEL_59:
    sub_1000498A0(v62);
    return 1;
  }

  if (!v22)
  {
    v23 = v21;
    goto LABEL_28;
  }

  sub_100012BAC(0, &qword_1000D1D78, NSNumber_ptr);
  v24 = static NSObject.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  v57 = a3;
  v58 = **(&off_1000C05C8 + a3);
  v59 = [a1 ams_storefrontForMediaType:v58];

  if (v59)
  {
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v94 = 0;
    v61 = 0;
  }

  v76 = **(&off_1000C05C8 + a3);
  v77 = [a2 ams_storefrontForMediaType:v76];

  if (!v77)
  {
    if (!v61)
    {
      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  if (!v61)
  {
    if (!v79)
    {
      return 0;
    }

    goto LABEL_50;
  }

  if (!v79)
  {
    goto LABEL_50;
  }

  if (v94 != v57 || v61 != v79)
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v81)
    {
      return 0;
    }

LABEL_51:
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v82 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v82, v12);
    sub_10004AD7C();
    _StringGuts.grow(_:)(43);
    sub_10004B278();
    sub_10004ADF4("v24@?0@NSArray8@NSError16");
    LOBYTE(v95) = a3;
    sub_10004B370();
    v83._countAndFlagsBits = 0xD000000000000015;
    v83._object = 0x80000001000A0030;
    String.append(_:)(v83);
    v84 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    v86 = v96;
    v85 = v97;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728();
    }

    TaskLocal.get()();
    v87 = v97;
    v88 = static os_log_type_t.default.getter();
    v89 = Logger.logObject.getter();
    if (os_log_type_enabled(v89, v88))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v92._countAndFlagsBits = sub_10004AA7C(v90, v91);
      v92._object = v87;
      String.append(_:)(v92);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(v86, v85, &v95);
      sub_10004AF78();
      *(v57 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v89, v88, "%{public}s%{public}s", v57, 0x16u);
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v62 = v12;
    goto LABEL_59;
  }

  return 0;
}

__n128 sub_100046E60(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046E6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100046EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = (*(*(sub_100012634(&unk_1000D3EC0, &qword_100093590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10001267C(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v8, v4);

  sub_10006BA84(0, 0, v11, &unk_100096A78, v14);
}

uint64_t sub_1000470CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000470EC, a4, 0);
}

uint64_t sub_1000470EC()
{
  sub_100013A88();
  v1 = *(v0 + 16);
  sub_1000472D0(*(v0 + 24));
  sub_100019370();

  return v2();
}

uint64_t sub_100047144()
{
  v1 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_100014A8C(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_10004AFF0();
  v9(v8);
  v10 = sub_10004AFD0();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_100047200()
{
  sub_10004B2E8();
  sub_10001D70C();
  v0 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_10002FD0C(v0);
  v2 = *(v1 + 80);
  sub_10004AA38();
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_1000470CC(v6, v7, v8, v9, v10);
}

uint64_t sub_1000472D0(uint64_t a1)
{
  v32 = a1;
  v1 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v29 = &v28 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  UUID.init()();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SKLogger();
  sub_1000128C0(v12, qword_1000E4560);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v33 = 0xD00000000000001FLL;
  v34 = 0x800000010009FF20;
  sub_10004A628(&qword_1000D2878, &type metadata accessor for UUID);
  v13 = v4;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = v33;
  v16 = v34;
  v17 = static os_log_type_t.debug.getter();

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_1000847A8(0, 0xE000000000000000, &v33);
    *(v19 + 12) = 2082;
    v20 = sub_1000847A8(v15, v16, &v33);

    *(v19 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = *(v5 + 16);
  v21(v9, v11, v13);
  v22 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v23 = v29;
  (*(*(v22 - 8) + 16))(v29, v32, v22);
  sub_10001267C(v23, 0, 1, v22);
  v24 = v31;
  swift_beginAccess();
  sub_10003A180(v23, v9);
  swift_endAccess();
  v21(v9, v11, v13);
  v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v5 + 32))(v26 + v25, v9, v13);

  AsyncStream.Continuation.onTermination.setter();
  return (*(v5 + 8))(v11, v13);
}

uint64_t sub_10004775C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10001267C(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10006BA84(0, 0, v11, &unk_100096A90, v14);
}

uint64_t sub_100047918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100047938, a4, 0);
}

uint64_t sub_100047938()
{
  sub_100013A88();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100047990();
  sub_100019370();

  return v3();
}

uint64_t sub_100047990()
{
  v1 = v0;
  v2 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  v6 = *(v0 + 136);
  v7 = sub_100083444();
  if (v8)
  {
    v9 = v7;
    v10 = *(v1 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v1 + 136);
    v12 = *(v22 + 24);
    sub_100012634(&qword_1000D3178, &qword_100096A98);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = v22;
    v14 = *(v22 + 48);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v9, v15);
    v16 = *(v13 + 56);
    v17 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    (*(*(v17 - 8) + 32))(v5, v16 + *(*(v17 - 8) + 72) * v9, v17);
    sub_10004A628(&qword_1000D3180, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *(v1 + 136) = v13;
    v18 = v5;
    v19 = 0;
    v20 = v17;
  }

  else
  {
    v20 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v18 = v5;
    v19 = 1;
  }

  sub_10001267C(v18, v19, 1, v20);
  sub_100049EA0(v5, &qword_1000D3170, &qword_100096A80);
  return swift_endAccess();
}

uint64_t sub_100047BD0()
{
  v1 = type metadata accessor for UUID();
  sub_100014A8C(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = sub_10004AFF0();
  v8(v7);
  v9 = sub_10004AFD0();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_100047C78()
{
  sub_10004B248();
  v2 = type metadata accessor for UUID();
  sub_10002FD0C(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10004775C(v0, v4, v5);
}

id sub_100047CE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = String._bridgeToObjectiveC()();

LABEL_6:
  v13 = [v7 initWithDSID:a1 altDSID:v11 username:v12 options:a6];

  return v13;
}

id sub_100047DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

BOOL sub_100047E58(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100047EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001D5E0;

  return v7();
}

uint64_t sub_100047F8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001D5E0;

  return v8();
}

uint64_t sub_100048074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100049E30(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100012898(v12, 1, v13) == 1)
  {
    sub_100049EA0(v12, &unk_1000D3EC0, &qword_100093590);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100049EA0(a3, &unk_1000D3EC0, &qword_100093590);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100049EA0(a3, &unk_1000D3EC0, &qword_100093590);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100048340(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100048438;

  return v7(a1);
}

uint64_t sub_100048438()
{
  sub_100013A88();
  sub_10001937C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100019340();
  *v4 = v3;

  sub_10004AD98();

  return v5();
}

uint64_t sub_100048530()
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v0 = type metadata accessor for UUID();
  sub_10002FD0C(v0);
  v2 = *(v1 + 80);
  sub_10004AA38();
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_100047918(v6, v7, v8, v9, v10);
}

double sub_1000485F0@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100083AE0();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v10 = *(*v2 + 24);
    sub_100012634(&qword_1000D1CF8, &unk_1000935D0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

    sub_100012AD4((*(v12 + 56) + 32 * v7), a1);
    type metadata accessor for AMSBagKey(0);
    sub_10004A628(&qword_1000D1C48, type metadata accessor for AMSBagKey);
    _NativeDictionary._delete(at:)();
    *v2 = v12;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10004870C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100083444();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v10 = *(*v2 + 24);
    sub_100012634(&qword_1000D3178, &qword_100096A98);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(v19 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(v19 + 56);
    v14 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    (*(*(v14 - 8) + 32))(a1, v13 + *(*(v14 - 8) + 72) * v7, v14);
    sub_10004A628(&qword_1000D3180, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = v19;
    v15 = a1;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v15 = a1;
    v16 = 1;
  }

  return sub_10001267C(v15, v16, 1, v17);
}

uint64_t sub_1000488D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10007D370(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    v12 = *(*v4 + 24);
    sub_100012634(&qword_1000D31C0, &qword_100096AE8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v20 + 48) + 16 * v9 + 8);

    v14 = *(v20 + 56);
    v15 = type metadata accessor for RemoteAlertConfiguration();
    sub_1000497D8(v14 + *(*(v15 - 8) + 72) * v9, a3);
    _NativeDictionary._delete(at:)();
    *v4 = v20;
    v16 = a3;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = type metadata accessor for RemoteAlertConfiguration();
    v16 = a3;
    v17 = 1;
  }

  return sub_10001267C(v16, v17, 1, v18);
}

_OWORD *sub_100048A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007D370(a2, a3);
  sub_10004AA68(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_100012634(&qword_1000D1D90, &unk_100093630);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10))
  {
    v18 = *v5;
    sub_10007D370(a2, a3);
    sub_10004AFC0();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v5;
  if (v17)
  {
    sub_100012A18((*(v21 + 56) + 32 * v16));
    v22 = sub_10002FD24();

    return sub_100012AD4(v22, v23);
  }

  else
  {
    sub_1000492A4(v16, a2, a3, a1, v21);
  }
}

_OWORD *sub_100048B74(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100083350();
  sub_10004AA68(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_100012634(&qword_1000D31A0, &qword_100096AD0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    sub_100083350();
    sub_10004AFC0();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    sub_100012A18((v19[7] + 32 * v14));
    v20 = sub_10002FD24();

    return sub_100012AD4(v20, v21);
  }

  else
  {
    sub_10004977C(a2, v23);
    return sub_100049300(v14, v23, a1, v19);
  }
}

_OWORD *sub_100048CD8(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  sub_10004AA68(v16, v17);
  if (v20)
  {
    __break(1u);
LABEL_14:
    a7(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v18;
  v22 = v19;
  sub_100012634(a5, a6);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v15))
  {
    v23 = *v12;
    a4(a2);
    sub_10004AFC0();
    if (!v25)
    {
      goto LABEL_14;
    }

    v21 = v24;
  }

  v26 = *v12;
  if (v22)
  {
    sub_100012A18((*(v26 + 56) + 32 * v21));
    v27 = sub_10002FD24();

    return sub_100012AD4(v27, v28);
  }

  else
  {
    sub_10004937C(v21, a2, a1, v26);

    return a2;
  }
}

uint64_t sub_100048E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_100083444();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_100012634(&qword_1000D3178, &qword_100096A98);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_100083444();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    v25 = v24[7];
    v26 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v19;

    return v28(v30, a1, v29);
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    return sub_1000493D4(v19, v12, a1, v24);
  }
}

unint64_t sub_100049028(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000834D8();
  sub_10004AA68(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  sub_100012634(&qword_1000D31A8, &qword_100096AD8);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v7);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  result = sub_1000834D8();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + v13) = a1 & 1;
  }

  else
  {
    sub_1000495C4(v13, a2, a1 & 1, v18);

    return a2;
  }

  return result;
}

uint64_t sub_100049148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007D370(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100012634(&qword_1000D31C0, &qword_100096AE8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10007D370(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = v22 + *(*(type metadata accessor for RemoteAlertConfiguration() - 8) + 72) * v16;

    return sub_10004983C(a1, v23);
  }

  else
  {
    sub_100049608(v16, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000492A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10004B068(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_100012AD4(v11, (*(v7 + 56) + 32 * v6));
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

_OWORD *sub_100049300(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100012AD4(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_10004937C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10004B068(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  result = sub_100012AD4(v8, (*(v6 + 56) + 32 * v5));
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

uint64_t sub_1000493D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1000494D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_10004B000();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10004950C()
{
  sub_10001D674();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10004A854(v4);
  *v5 = v6;
  v5[1] = sub_10001D5E0;
  sub_10004A8A4();

  return sub_100043E44();
}

unint64_t sub_1000495C4(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100049608(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteAlertConfiguration();
  result = sub_1000497D8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1000496A0(uint64_t a1, void *a2)
{
  sub_100012BAC(0, &qword_1000D31F8, AMSDialogAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setButtonActions:isa];
}

void sub_100049724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setProxyAppBundleID:v4];
}

uint64_t sub_1000497D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000498A0(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004994C()
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v0 = type metadata accessor for Notification();
  sub_10002FD0C(v0);
  v2 = *(v1 + 80);
  sub_10004AA38();
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_10004442C(v6, v7, v8, v9, v10);
}

uint64_t sub_100049A44(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_100014A8C(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = *(v1 + 32);

  v9 = sub_10004AFF0();
  v10(v9);
  v11 = sub_10004AFD0();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_100049AFC()
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v0 = type metadata accessor for Notification();
  sub_10002FD0C(v0);
  v2 = *(v1 + 80);
  sub_10004AA38();
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_100043F9C(v6, v7, v8, v9, v10);
}

uint64_t sub_100049BBC()
{
  _Block_release(*(v0 + 32));
  sub_10004AE44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100049C00()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10001D6A0(v5);
  *v6 = v7;
  v6[1] = sub_10001D270;
  sub_10001D624();
  sub_10004B148();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100049CAC()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10001D6A0(v5);
  *v6 = v7;
  v6[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B148();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100049D54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_10004AE44();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100049D90()
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004AFE0();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100049E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100012634(a2, a3);
  sub_100019360(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100049EF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049F30()
{
  sub_10001D674();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  v6 = sub_10004A8A4();

  return v7(v6);
}

uint64_t sub_100049FD4()
{
  sub_100013A88();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;

  return sub_100041340();
}

uint64_t sub_10004A068()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004A0B8()
{
  sub_10004B2E8();
  sub_10001D70C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_10001D6A0(v6);
  *v7 = v8;
  v7[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B2FC();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10004A168()
{
  sub_10001D674();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  v6 = sub_10004A8A4();

  return sub_10003EF58(v6, v7, v1);
}

uint64_t sub_10004A200()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v16 = v10[6];
  v15 = v10[7];
  v17 = swift_task_alloc();
  v18 = sub_10001D6A0(v17);
  *v18 = v19;
  v18[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B1A8();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_10004A30C()
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004AFE0();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B148();

  return sub_10003D054(v3, v4, v5, v6, v7);
}

uint64_t sub_10004A3A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  sub_10004AE44();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10004A3E4()
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004AFE0();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  sub_10004A790();
  sub_10004B148();

  return sub_1000438D4(v3, v4, v5, v6, v7);
}

uint64_t sub_10004A478()
{
  _Block_release(*(v0 + 24));
  v1 = sub_10004B000();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004A4A8()
{
  sub_10001D674();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10001D6A0(v4);
  *v5 = v6;
  v5[1] = sub_10001D5E0;
  v7 = sub_10001D624();

  return v8(v7);
}

uint64_t sub_10004A54C()
{
  _Block_release(*(v0 + 24));
  v1 = sub_10004B000();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004A584()
{
  sub_10001D674();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10001D6A0(v4);
  *v5 = v6;
  v5[1] = sub_10001D5E0;
  v7 = sub_10001D624();

  return v8(v7);
}

uint64_t sub_10004A628(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004A684()
{
  result = qword_1000D3208;
  if (!qword_1000D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3208);
  }

  return result;
}

uint64_t sub_10004A728()
{

  return swift_once();
}

void sub_10004A80C()
{
  v1[20] = sub_100043724;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t sub_10004A834(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10004A87C(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v4 + 4) = v3;
  *(v4 + 12) = 2082;

  return sub_1000847A8(v1, v2, va);
}

uint64_t sub_10004A8C4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_100040918;

  return swift_continuation_init();
}

uint64_t sub_10004A91C()
{

  return _print_unlocked<A, B>(_:_:)();
}

void sub_10004A93C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10004A98C()
{
}

uint64_t sub_10004A9A8()
{

  return swift_slowAlloc();
}

uint64_t sub_10004A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_1000847A8(v13, v14, &a10);
}

uint64_t sub_10004AA1C()
{
}

void sub_10004AA38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_10004AA4C()
{
}

uint64_t sub_10004AA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 104) = a1;
  *(v4 - 96) = a2;
  *(v4 - 88) = v2;
  return v3;
}

uint64_t sub_10004AA90()
{

  return swift_arrayDestroy();
}

uint64_t sub_10004AAAC()
{

  return swift_slowAlloc();
}

void sub_10004AAE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10004AB04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10004AB24()
{
}

uint64_t sub_10004AB40()
{

  return swift_slowAlloc();
}

uint64_t sub_10004AB5C()
{

  return swift_slowAlloc();
}

uint64_t sub_10004AB78()
{

  return swift_slowAlloc();
}

void sub_10004AB94(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10004ABF0()
{
}

uint64_t sub_10004AC1C()
{

  return swift_arrayDestroy();
}

void sub_10004AC38(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10004AC84(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10004ACA4(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10004AD98()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10004AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return sub_1000847A8(v12, v13, &a9);
}

uint64_t sub_10004AE2C()
{
}

void sub_10004AE74(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10004AEA8()
{
}

uint64_t sub_10004AEC0()
{
}

BOOL sub_10004AF08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004AF20()
{
}

uint64_t sub_10004AF50()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  return sub_1000847A8(v2, v3, (v0 - 104));
}

uint64_t sub_10004AF78()
{
}

void sub_10004AFE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_10004B010()
{
}

uint64_t sub_10004B038()
{
}

uint64_t sub_10004B050()
{
}

BOOL sub_10004B0A4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B0BC()
{
}

uint64_t sub_10004B0D4()
{
  v2 = *(v0 + 600);

  return type metadata accessor for SKLogger();
}

uint64_t sub_10004B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000847A8(v10, v9, &a9);
}

uint64_t sub_10004B108()
{
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[22];

  return swift_willThrow();
}

uint64_t sub_10004B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return sub_1000847A8(v17, v18, &a14);
}

BOOL sub_10004B178()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B190()
{
}

uint64_t sub_10004B1D4()
{

  return swift_allocError();
}

void sub_10004B1EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10004B204@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void sub_10004B278()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t sub_10004B2A8(uint64_t a1)
{

  return sub_10001267C(v1, 1, 1, a1);
}

id sub_10004B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 1272);

  return [v5 v9];
}

BOOL sub_10004B310()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B328()
{
}

void sub_10004B340()
{
}

uint64_t sub_10004B358()
{
}

uint64_t sub_10004B370()
{

  return _print_unlocked<A, B>(_:_:)();
}

__n128 sub_10004B3A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10004B3BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B400(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_10004B448(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE7A8, v2);

  return v3 != 0;
}

uint64_t sub_10004B494(void *a1)
{
  v2 = sub_100012634(&qword_1000D3248, &qword_100096E90);
  sub_100014A8C(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10004BD54();
  sub_10004C0EC();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_10004B5B4(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D3238, &qword_100096E88);
  sub_100014A8C(v3);
  v5 = *(v4 + 64);
  sub_10002FF34();
  __chkstk_darwin(v6);
  v7 = a1[4];
  v8 = sub_100012980(a1, a1[3]);
  sub_10004BD54();
  sub_10004C0AC();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_10004C0D8();
    v10(v9);
  }

  sub_100012A18(a1);
  return v8;
}

BOOL sub_10004B6EC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B448(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10004B75C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B448(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004B794(uint64_t a1)
{
  v2 = sub_10004BD54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B7D0(uint64_t a1)
{
  v2 = sub_10004BD54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004B80C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004B5B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10004B838(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10004B494(a1);
}

uint64_t sub_10004B854(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10004B8F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012634(&qword_1000D3228, &qword_100096E80);
  sub_100014A8C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_10002FF34();
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10004BC58();
  sub_10004C0EC();
  v16[0] = a2;
  v16[1] = a3;
  sub_10004BD00();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v13, v6);
}

void *sub_10004BA24(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D3210, &qword_100096E78);
  sub_100014A8C(v3);
  v5 = *(v4 + 64);
  sub_10002FF34();
  __chkstk_darwin(v6);
  v7 = a1[4];
  v8 = sub_100012980(a1, a1[3]);
  sub_10004BC58();
  sub_10004C0AC();
  if (v1)
  {
    sub_100012A18(a1);
  }

  else
  {
    sub_10004BCAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_10004C0D8();
    v10(v9);
    v8 = v12;
    sub_100012A18(a1);
  }

  return v8;
}

uint64_t sub_10004BB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004B854(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10004BB98(uint64_t a1)
{
  v2 = sub_10004BC58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004BBD4(uint64_t a1)
{
  v2 = sub_10004BC58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004BC10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004BA24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10004BC58()
{
  result = qword_1000D3218;
  if (!qword_1000D3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3218);
  }

  return result;
}

unint64_t sub_10004BCAC()
{
  result = qword_1000D3220;
  if (!qword_1000D3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3220);
  }

  return result;
}

unint64_t sub_10004BD00()
{
  result = qword_1000D3230;
  if (!qword_1000D3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3230);
  }

  return result;
}

unint64_t sub_10004BD54()
{
  result = qword_1000D3240;
  if (!qword_1000D3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3240);
  }

  return result;
}

_BYTE *sub_10004BDB8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10004BE54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004BE90()
{
  result = qword_1000D3250;
  if (!qword_1000D3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3250);
  }

  return result;
}

unint64_t sub_10004BEE8()
{
  result = qword_1000D3258;
  if (!qword_1000D3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3258);
  }

  return result;
}

unint64_t sub_10004BF40()
{
  result = qword_1000D3260;
  if (!qword_1000D3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3260);
  }

  return result;
}

unint64_t sub_10004BF98()
{
  result = qword_1000D3268;
  if (!qword_1000D3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3268);
  }

  return result;
}

unint64_t sub_10004BFF0()
{
  result = qword_1000D3270;
  if (!qword_1000D3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3270);
  }

  return result;
}

unint64_t sub_10004C048()
{
  result = qword_1000D3278;
  if (!qword_1000D3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3278);
  }

  return result;
}

uint64_t sub_10004C0AC()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10004C0EC()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10004C10C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10004C128(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004C168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10004C1AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10004C1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ClientOverride(0);
    v9 = a1 + *(a3 + 36);

    return sub_100012898(v9, a2, v8);
  }
}

uint64_t sub_10004C284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ClientOverride(0);
    v8 = v5 + *(a4 + 36);

    return sub_10001267C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertConfiguration()
{
  result = qword_1000D32D8;
  if (!qword_1000D32D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004C350()
{
  result = type metadata accessor for ClientOverride(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10004C3F8()
{
  sub_100030230();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for RemoteAlertConfiguration();
  v10 = sub_100019360(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10002FC5C();
  v15 = v14 - v13;
  if (!v6)
  {
    v19 = v8;
    v20 = 1;
    goto LABEL_7;
  }

  AnyHashable.init<A>(_:)();
  sub_100021C10(v6, &v31);
  sub_10001CAD0(&v29);
  if (!v32)
  {
    sub_10002090C(&v31);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_1000128C0(v21, qword_1000E4560);
    v22 = static os_log_type_t.error.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *&v31 = swift_slowAlloc();
      *v24 = 136446466;
      v29 = 91;
      v30 = 0xE100000000000000;
      v25._countAndFlagsBits = v4;
      v25._object = v2;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 8285;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      v27 = sub_1000847A8(v29, v30, &v31);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_1000847A8(0xD00000000000004ELL, 0x80000001000A0890, &v31);
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    sub_100018F34();
    swift_allocError();
    *v28 = 13;
    swift_willThrow();
    goto LABEL_14;
  }

  v16 = type metadata accessor for JSONDecoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10004DCA4(&qword_1000D3380, type metadata accessor for RemoteAlertConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100018DF0(0xD000000000000012, 0x80000001000A0870);

  if (!v0)
  {
    sub_10004DCEC(v15, v8, type metadata accessor for RemoteAlertConfiguration);
    v19 = v8;
    v20 = 0;
LABEL_7:
    sub_10001267C(v19, v20, 1, v9);
  }

LABEL_14:
  sub_100030218();
}

uint64_t sub_10004C78C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72756769666E6F63 && a2 == 0xEF44496E6F697461;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001000A08E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001000A0900 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x764F746E65696C63 && a2 == 0xEF73656469727265)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10004C994(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x72756769666E6F63;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6570795477656976;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x764F746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004CA80(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D3340, &qword_1000972E8);
  sub_100014A8C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10004D984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v26) = 0;
  sub_10004E2D4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v26) = 1;
    sub_10004E2D4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[5];
    v26 = v3[4];
    v27 = v18;
    v25 = 2;
    sub_100019008(v26, v18);
    sub_10001E308();
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100018DF0(v26, v27);
    LOBYTE(v26) = 3;
    sub_10004DAEC();
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v3[7];
    v26 = v3[6];
    v27 = v19;
    v25 = 4;
    sub_100019008(v26, v19);
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100018DF0(v26, v27);
    v20 = *(type metadata accessor for RemoteAlertConfiguration() + 36);
    LOBYTE(v26) = 5;
    type metadata accessor for ClientOverride(0);
    sub_10004E2B0();
    sub_10004DCA4(v21, v22);
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_10004CCF4()
{
  sub_100030230();
  v2 = v1;
  v27 = v3;
  v4 = type metadata accessor for ClientOverride(0);
  v5 = sub_100019360(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v10 = v9 - v8;
  v28 = sub_100012634(&qword_1000D3328, &qword_1000972E0);
  sub_100014A8C(v28);
  v12 = *(v11 + 64);
  sub_10002FF34();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for RemoteAlertConfiguration();
  v15 = sub_100019360(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10002FC5C();
  v29 = v19 - v18;
  v20 = v2[4];
  sub_100012980(v2, v2[3]);
  sub_10004D984();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100012A18(v2);
  }

  else
  {
    sub_10004E2C8();
    *v29 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v29 + 8) = v21;
    LOBYTE(v30) = 1;
    sub_10004E2C8();
    *(v29 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v29 + 24) = v22;
    sub_10001E244();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v29 + 32) = v30;
    LOBYTE(v30) = 3;
    sub_10004D9D8();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v29 + 48) = v30;
    sub_10004E2B0();
    sub_10004DCA4(v23, v24);
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = sub_10004E2A0();
    v26(v25);
    sub_10004DCEC(v10, v29 + *(v14 + 36), type metadata accessor for ClientOverride);
    sub_10004DA2C(v29, v27);
    sub_100012A18(v2);
    sub_10004DA90(v29);
  }

  sub_100030218();
}

uint64_t sub_10004D120(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001000A0920 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_10004D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030230();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_100012634(&qword_1000D3370, &qword_100097308);
  sub_100014A8C(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_10002FF34();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  v33 = sub_100012634(&qword_1000D3378, &unk_100097310);
  sub_100014A8C(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_10002FF34();
  __chkstk_darwin(v38);
  v40 = &a9 - v39;
  v41 = v24[4];
  sub_100012980(v24, v24[3]);
  sub_10004DB40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10004DBD4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v27 + 8))(v32, v25);
  (*(v35 + 8))(v40, v33);
  sub_100030218();
}

void sub_10004D364()
{
  sub_100030230();
  v2 = v1;
  v3 = sub_100012634(&qword_1000D3350, &qword_1000972F0);
  sub_100014A8C(v3);
  v42 = v4;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_100012634(&qword_1000D3358, &unk_1000972F8);
  sub_100014A8C(v10);
  v43 = v11;
  v13 = *(v12 + 64);
  sub_10002FF34();
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = v2[4];
  sub_100012980(v2, v2[3]);
  sub_10004DB40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v40 = v9;
  v41 = v2;
  v18 = KeyedDecodingContainer.allKeys.getter();
  sub_10004DB98(v18, 0);
  v23 = v16;
  if (v21 == v22 >> 1)
  {
    v42 = v19;
LABEL_8:
    v33 = v10;
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
    *v36 = &type metadata for RemoteAlertViewType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v23, v33);
    v2 = v41;
LABEL_9:
    v38 = v2;
    goto LABEL_10;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = sub_10004DC28(v21 + 1, v22 >> 1, v19, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v41;
    v31 = v42;
    if (v29)
    {
      sub_10004DBD4();
      v32 = v40;
      sub_10004E2E0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v31 + 8))(v32, v3);
      (*(v43 + 8))(v23, v10);
      v38 = v30;
LABEL_10:
      sub_100012A18(v38);
      sub_100030218();
      return;
    }

    v42 = v24;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10004D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004D70C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C98C();
  *a1 = result;
  return result;
}

uint64_t sub_10004D734(uint64_t a1)
{
  v2 = sub_10004D984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D770(uint64_t a1)
{
  v2 = sub_10004D984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004D120(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10004D80C(uint64_t a1)
{
  v2 = sub_10004DB40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D848(uint64_t a1)
{
  v2 = sub_10004DB40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D884(uint64_t a1)
{
  v2 = sub_10004DBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D8C0(uint64_t a1)
{
  v2 = sub_10004DBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004D930()
{
  result = qword_1000D3320;
  if (!qword_1000D3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3320);
  }

  return result;
}

unint64_t sub_10004D984()
{
  result = qword_1000D3330;
  if (!qword_1000D3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3330);
  }

  return result;
}

unint64_t sub_10004D9D8()
{
  result = qword_1000D3338;
  if (!qword_1000D3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3338);
  }

  return result;
}

uint64_t sub_10004DA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DA90(uint64_t a1)
{
  v2 = type metadata accessor for RemoteAlertConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004DAEC()
{
  result = qword_1000D3348;
  if (!qword_1000D3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3348);
  }

  return result;
}

unint64_t sub_10004DB40()
{
  result = qword_1000D3360;
  if (!qword_1000D3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3360);
  }

  return result;
}

void sub_10004DB98(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_10004E28C();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10004DBD4()
{
  result = qword_1000D3368;
  if (!qword_1000D3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3368);
  }

  return result;
}

uint64_t sub_10004DC28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10004DCA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004DCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100019360(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

_BYTE *sub_10004DD50(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10004DDECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteAlertConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteAlertConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004DF88);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10004DFC4()
{
  result = qword_1000D3388;
  if (!qword_1000D3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3388);
  }

  return result;
}

unint64_t sub_10004E01C()
{
  result = qword_1000D3390;
  if (!qword_1000D3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3390);
  }

  return result;
}

unint64_t sub_10004E074()
{
  result = qword_1000D3398;
  if (!qword_1000D3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3398);
  }

  return result;
}

unint64_t sub_10004E0CC()
{
  result = qword_1000D33A0;
  if (!qword_1000D33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33A0);
  }

  return result;
}

unint64_t sub_10004E124()
{
  result = qword_1000D33A8;
  if (!qword_1000D33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33A8);
  }

  return result;
}

unint64_t sub_10004E17C()
{
  result = qword_1000D33B0;
  if (!qword_1000D33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33B0);
  }

  return result;
}

unint64_t sub_10004E1D4()
{
  result = qword_1000D33B8;
  if (!qword_1000D33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33B8);
  }

  return result;
}

unint64_t sub_10004E22C()
{
  result = qword_1000D33C0;
  if (!qword_1000D33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33C0);
  }

  return result;
}

uint64_t sub_10004E2FC(void *a1)
{
  v2 = sub_100012634(&qword_1000D33C8, &qword_1000976A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10004E4E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10004E438(uint64_t a1)
{
  v2 = sub_10004E4E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E474(uint64_t a1)
{
  v2 = sub_10004E4E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004E4E0()
{
  result = qword_1000D33D0;
  if (!qword_1000D33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33D0);
  }

  return result;
}

unint64_t sub_10004E548()
{
  result = qword_1000D33D8;
  if (!qword_1000D33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33D8);
  }

  return result;
}

unint64_t sub_10004E5A0()
{
  result = qword_1000D33E0;
  if (!qword_1000D33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33E0);
  }

  return result;
}

uint64_t sub_10004E5F4()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v3 = *(v1 + 128);
    Strong = (*(v1 + 120))();
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_10004E644()
{
  sub_100013A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64);
  v1[24] = sub_10005429C();
  v6 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v6);
  v8 = *(v7 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v9 = type metadata accessor for ClientTypeResponse();
  v1[27] = v9;
  sub_10002FD0C(v9);
  v11 = *(v10 + 64);
  v1[28] = sub_10005429C();
  v12 = type metadata accessor for ClientTypeRequest();
  v1[29] = v12;
  sub_10002FD0C(v12);
  v14 = *(v13 + 64);
  v1[30] = sub_10005429C();
  v15 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v15);
  v17 = *(v16 + 64);
  v1[31] = sub_10005429C();
  v18 = type metadata accessor for Client.Server(0);
  sub_10002FD0C(v18);
  v20 = *(v19 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v21 = type metadata accessor for ClientOverride.Server(0);
  sub_10002FD0C(v21);
  v23 = *(v22 + 64);
  v1[34] = sub_10005429C();
  v24 = type metadata accessor for ClientOverride(0);
  v1[35] = v24;
  sub_10002FD0C(v24);
  v26 = *(v25 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v27 = sub_10004AD24();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_10004E83C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v34 = v0[34];
  v36 = v0[31];
  v6 = v0[20];
  v46 = v0[21];
  v48 = v0[29];
  v44 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v40 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8);
  v42 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v38 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);

  sub_1000223E4(v7, v8, v9, v10, v11, v12, v13, v14, v30, v31, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  v15 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v4, 1, 2, v15);
  v16 = sub_100022084(v3, v4);
  sub_100053F08(v4, type metadata accessor for Client.Server);
  sub_100053F08(v3, type metadata accessor for Client.Server);
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  sub_10001267C(v35, v17, 3, v15);
  v33 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
  v18 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
  sub_100053C28(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v37, &qword_1000D2800, qword_100099E20);
  *v1 = xmmword_100095310;
  v19 = v1 + v2[8];
  v20 = v1 + v2[9];
  v21 = v2[10];
  v22 = type metadata accessor for UUID();
  sub_10001267C(v1 + v21, 1, 1, v22);
  sub_100019064(*v1, v1[1]);
  *v1 = xmmword_100095310;
  v1[2] = v45;
  v1[3] = v41;
  v1[4] = v43;
  v1[5] = v39;
  sub_100053C84(v35, v1 + v2[7], type metadata accessor for ClientOverride.Server);
  *v19 = v18;
  v19[8] = 0;
  *v20 = v33;
  v20[8] = 0;
  sub_10002F384(v37, v1 + v21);
  v24 = *v47;
  v23 = v47[1];
  v25 = *(v49 + 20);
  sub_100054088();
  sub_100053D5C(v1, v5 + v25, v26);
  sub_10001267C(v5 + v25, 0, 1, v2);
  *v5 = v24;
  v5[1] = v23;
  v27 = qword_1000D1AA8;

  if (v27 != -1)
  {
    sub_100054198();
  }

  v28 = qword_1000D20F8;
  v0[39] = qword_1000D20F8;

  return _swift_task_switch(sub_10004EB08, v28, 0);
}

uint64_t sub_10004EB08()
{
  sub_100013A88();
  v1 = v0[39];
  v2 = sub_10004E5F4();
  v0[40] = v2;
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_10004EBB0;
  v4 = v0[30];
  v5 = v0[28];

  return sub_1000184CC(v5, v4, v2);
}

uint64_t sub_10004EBB0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_1000540C0();
  *v7 = v6;
  *(v8 + 336) = v0;

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004ECAC()
{
  v81 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = type metadata accessor for SKLogger();
  sub_1000128C0(v3, qword_1000E4560);
  sub_1000542D0();
  v4 = v80;
  *(v0 + 112) = v79;
  *(v0 + 120) = v4;
  sub_10004ABE4();
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  TaskLocal.get()();
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = static os_log_type_t.debug.getter();

  v11 = Logger.logObject.getter();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = sub_100039EE0();
    sub_100039EC8();
    *v12 = 136446466;
    sub_10004A980();
    v78 = v13;
    v79 = v14;
    v80 = v15;
    v16._countAndFlagsBits = v9;
    v16._object = v8;
    String.append(_:)(v16);
    sub_10004ADC0(v17);
    v21 = sub_100054350(v79, v18, v19, v20);

    *(v12 + 4) = v21;
    *(v12 + 12) = 2082;
    v22 = sub_1000847A8(v7, v6, &v78);

    *(v12 + 14) = v22;
    sub_100054310(&_mh_execute_header, v23, v24, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94();
    sub_10004ABF0();
  }

  else
  {
  }

  v25 = *(v0 + 280);
  v26 = *(v0 + 208);
  sub_100053C28(*(v0 + 224) + *(*(v0 + 216) + 20), v26, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v26, 1, v25) == 1)
  {
    sub_100049EA0(*(v0 + 208), &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 288);
    v30 = *(v0 + 168);
    sub_100053C84(*(v0 + 208), v28, type metadata accessor for ClientOverride);
    sub_10004FA2C(v27, v28, v29);
    sub_100053F08(v28, type metadata accessor for ClientOverride);
    v31 = sub_10002FD24();
    sub_100053F08(v31, v32);
    sub_100053C84(v29, v27, type metadata accessor for ClientOverride);
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 304);
  v35 = *(v0 + 280);
  v37 = *(v0 + 192);
  v36 = *(v0 + 200);
  v38 = *(v0 + 176);
  v39 = *(v0 + 184);
  v40 = *(v0 + 160);
  type metadata accessor for Client(0);
  v41 = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 32);
  v42 = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 16);
  *(v0 + 384) = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken);
  *(v0 + 400) = v42;
  *(v0 + 416) = v41;
  (*(v39 + 16))(v37, v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL, v38);
  sub_100054088();
  sub_100053D5C(v34, v36, v43);
  sub_10001267C(v36, 0, 1, v35);
  sub_100025DD8();
  if (v33)
  {
    v45 = *(v0 + 160);

    v46 = v45;
    v47 = *(v0 + 160);
  }

  else
  {
    v47 = v44;
    v48 = *(v0 + 304);
    sub_1000542D0();

    v79 = 0xD00000000000001FLL;
    v80 = 0x80000001000A0960;
    v50._countAndFlagsBits = sub_10007F380(v49);
    String.append(_:)(v50);

    v52 = v79;
    v51 = v80;
    TaskLocal.get()();
    v54 = *(v0 + 144);
    v53 = *(v0 + 152);
    v55 = static os_log_type_t.default.getter();

    v56 = Logger.logObject.getter();

    if (sub_100054368())
    {
      sub_100039EE0();
      sub_10004AB78();
      *v52 = 136446466;
      sub_10004A980();
      v78 = v57;
      v79 = v58;
      v80 = v59;
      v60._countAndFlagsBits = v54;
      v60._object = v53;
      String.append(_:)(v60);
      sub_10004ADC0(v61);
      sub_100054350(v79, v62, v63, v64);
      sub_10004AEA8();
      sub_1000540CC();
      v65 = sub_1000847A8(v52, v51, &v78);

      *(v52 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v56, v55, "%{public}s%{public}s", v52, 0x16u);
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();
    }

    else
    {
    }
  }

  *(v0 + 344) = v47;
  if (**(v0 + 224))
  {
    v66 = swift_task_alloc();
    *(v0 + 368) = v66;
    *v66 = v0;
    v66[1] = sub_10004F4D0;
    v67 = *(v0 + 304);
    v68 = *(v0 + 168);
    sub_1000542B4();

    return sub_100050158(v69, v70, v71, v72);
  }

  else
  {
    v75 = swift_task_alloc();
    *(v0 + 352) = v75;
    *v75 = v0;
    v75[1] = sub_10004F2BC;
    v76 = *(v0 + 168);
    sub_1000542B4();

    return sub_10004FEFC();
  }
}

uint64_t sub_10004F2BC()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  v2[7] = v0;
  v9 = *(v8 + 352);
  v10 = *v1;
  sub_1000540C0();
  *v11 = v10;
  *(v12 + 360) = v0;

  sub_1000193B4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10004F3C4()
{
  v28 = v2[4];
  v29 = v2[3];
  v6 = v2[5];
  v5 = v2[6];
  sub_100054134();

  sub_100054070();
  sub_100053F08(v3, v7);
  sub_100054040();
  sub_100053F08(v4, v8);
  sub_100054028();
  sub_100053F08(v1, v9);

  v18 = sub_100054268(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29);

  return v19(v18);
}

uint64_t sub_10004F4D0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v6;
  v2[12] = v7;
  v2[13] = v0;
  v9 = *(v8 + 368);
  v10 = *v1;
  sub_1000540C0();
  *v11 = v10;
  *(v12 + 376) = v0;

  sub_1000193B4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10004F5D8()
{
  v28 = v2[10];
  v29 = v2[9];
  v6 = v2[11];
  v5 = v2[12];
  sub_100054134();

  sub_100054070();
  sub_100053F08(v3, v7);
  sub_100054040();
  sub_100053F08(v4, v8);
  sub_100054028();
  sub_100053F08(v1, v9);

  v18 = sub_100054268(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29);

  return v19(v18);
}

uint64_t sub_10004F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10004ABC8();
  sub_10004AC60();
  v17 = v16[40];

  v19 = v16[37];
  v18 = v16[38];
  v20 = v16[36];
  v22 = v16[33];
  v21 = v16[34];
  v23 = v16[31];
  v24 = v16[32];
  v25 = v16[30];
  v26 = v16[28];
  v38 = v16[26];
  v39 = v16[25];
  v40 = v16[24];
  v41 = v16[42];
  sub_100054040();
  sub_100053F08(v25, v27);
  sub_100054028();
  sub_100053F08(v18, v28);

  sub_100019370();
  sub_10004AAC8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_10004F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10004ABC8();
  sub_10004AC60();
  v17 = v16[43];
  v18 = v16[40];
  v19 = v16[28];

  sub_100054070();
  sub_100053F08(v19, v20);
  v22 = v16[37];
  v21 = v16[38];
  v23 = v16[36];
  v25 = v16[33];
  v24 = v16[34];
  v26 = v16[31];
  v27 = v16[32];
  v28 = v16[30];
  v29 = v16[28];
  v41 = v16[26];
  v42 = v16[25];
  v43 = v16[24];
  v44 = v16[45];
  sub_100054040();
  sub_100053F08(v28, v30);
  sub_100054028();
  sub_100053F08(v21, v31);

  sub_100019370();
  sub_10004AAC8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, a14, a15, a16);
}