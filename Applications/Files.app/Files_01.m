void sub_10001C634(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a7;
  v94 = a3;
  v12 = type metadata accessor for Logger();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v80 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v26 = &v80 - v25;
  __chkstk_darwin(v24);
  v31 = &v80 - v30;
  if (a1)
  {
    v81 = v29;
    v82 = v28;
    v83 = a8;
    v88 = a4;
    v86 = a5;
    v32 = v27;
    v84 = a1;
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v33 = *(v19 + 8);
    v33(v26, v18);
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v85 = v33;
    v33(v26, v18);
    sub_10000DB4C(&unk_100093C40, "&+");
    v34 = *(v19 + 72);
    v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000736D0;
    v37 = v36 + v35;
    v38 = *(v19 + 16);
    v90 = v31;
    v38(v37, v31, v18);
    v91 = v32;
    v38(v37 + v34, v32, v18);
    v39 = objc_opt_self();
    v40 = v84;
    v41 = [v39 shared];
    v42 = makeDOCCopyOperation(urls:destinationFolder:undoManager:)();
    v44 = v43;
    v45 = v40;

    if (v42)
    {
      swift_getObjectType();
      v46 = swift_allocObject();
      v46[2] = v94;
      v47 = v89;
      v48 = v86;
      v46[3] = v88;
      v46[4] = v48;
      v49 = v83;
      v46[5] = v47;
      v46[6] = v49;
      v50 = *(v44 + 8);

      v51 = v48;

      dispatch thunk of SomeOperation.actionCompletionBlock.setter();
      v52 = [objc_opt_self() defaultManager];
      FPItemManager.scheduleOperation(_:)();

      swift_unknownObjectRelease();
      v53 = v85;
      v85(v91, v18);
      v53(v90, v18);
    }

    else
    {
      v59 = v87;
      static Logger.Tests.getter();
      v60 = v81;
      v38(v81, v90, v18);
      v61 = v82;
      v38(v82, v91, v18);
      v62 = v88;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v84 = v63;
        v66 = v65;
        v89 = swift_slowAlloc();
        v95 = v89;
        *v66 = 136315650;
        *(v66 + 4) = sub_100005D28(v94, v62, &v95);
        *(v66 + 12) = 2080;
        sub_100030300(&unk_1000937B0, &type metadata accessor for URL);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v45;
        v70 = v69;
        LODWORD(v83) = v64;
        v71 = v85;
        v85(v60, v18);
        v72 = sub_100005D28(v67, v70, &v95);
        v45 = v68;

        *(v66 + 14) = v72;
        *(v66 + 22) = 2080;
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        v71(v61, v18);
        v76 = sub_100005D28(v73, v75, &v95);

        *(v66 + 24) = v76;
        v77 = v84;
        _os_log_impl(&_mh_execute_header, v84, v83, "Failed setup %s. couldn't create copy op for %s and %s", v66, 0x20u);
        swift_arrayDestroy();

        (*(v92 + 8))(v87, v93);
      }

      else
      {

        v71 = v85;
        v85(v61, v18);
        v71(v60, v18);
        (*(v92 + 8))(v59, v93);
      }

      v79 = String._bridgeToObjectiveC()();
      [v86 failedTest:v79];

      v71(v91, v18);
      v71(v90, v18);
    }
  }

  else
  {
    static Logger.Tests.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = a4;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v95 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_100005D28(v94, v56, &v95);
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed setup %s. Folder item nil", v57, 0xCu);
      sub_100034948(v58);
    }

    (*(v92 + 8))(v16, v93);
    v78 = String._bridgeToObjectiveC()();
    [a5 failedTest:v78];
  }
}

void sub_10001CEFC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.Tests.getter();

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = a4;
      v19 = v18;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v19 = 136315394;
      *(v19 + 4) = sub_100005D28(a2, a3, &v27);
      *(v19 + 12) = 2080;
      v26 = a1;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v20 = String.init<A>(describing:)();
      v22 = sub_100005D28(v20, v21, &v27);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed setup %s copyOperation error: %s", v19, 0x16u);
      swift_arrayDestroy();

      a4 = v25;
    }

    (*(v11 + 8))(v15, v10);
    v23 = String._bridgeToObjectiveC()();
    [a4 failedTest:v23];
  }

  else
  {
    a5(v13);
  }
}

void sub_10001D16C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10001D1F8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests);
  if (v12)
  {
    v13 = *(v3 + OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests);
    swift_unknownObjectRetain();
    v14 = dispatch_semaphore_create(0);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    aBlock[4] = sub_100034840;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008A890;
    v16 = _Block_copy(aBlock);
    v17 = v14;

    [v12 fetchURL:v16];
    _Block_release(v16);
    OS_dispatch_semaphore.wait()();
    sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
    v18 = static NSUserDefaults.docUserDefaults.getter();
    if (v18)
    {
      v19 = v18;
      v20 = String._bridgeToObjectiveC()();
      [v19 removeObjectForKey:v20];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.Tests.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100005D28(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed teardown, failed to get the root node for %s", v23, 0xCu);
      sub_100034948(v24);
    }

    (*(v8 + 8))(v11, v7);
  }
}

Swift::Int sub_10001D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v49[1] = a6;
  v51 = a4;
  v52 = a5;
  v55 = a3;
  v8 = type metadata accessor for Logger();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  v10 = __chkstk_darwin(v8);
  v50 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v49 - v12;
  v14 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v49 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v49 - v24;
  sub_100034850(a1, v17, &qword_100093F50, &qword_100074090);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    if (!a2)
    {
      v34 = [objc_opt_self() defaultManager];
      v36 = v50;
      URL.appendingPathComponent(_:)();

      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v40 = *(v19 + 8);
      v40(v23, v18);
      v56 = 0;
      v41 = [v34 removeItemAtURL:v39 error:&v56];

      if (v41)
      {
        v42 = v56;
      }

      else
      {
        v43 = v56;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.Tests.getter();
        v44 = v52;

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v56 = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_100005D28(v51, v44, &v56);
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed teardown, QuickLook test files probably left in local files %s", v47, 0xCu);
          sub_100034948(v48);

          (*(v53 + 8))(v50, v54);
        }

        else
        {

          (*(v53 + 8))(v36, v54);
        }
      }

      v40(v25, v18);
      return OS_dispatch_semaphore.signal()();
    }

    (*(v19 + 8))(v25, v18);
  }

  v26 = v52;
  static Logger.Tests.getter();

  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56 = v31;
    *v29 = 136315394;
    *(v29 + 4) = sub_100005D28(v51, v26, &v56);
    *(v29 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v32;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    *(v29 + 14) = v32;
    *v30 = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed teardown, couldn't fech URL for %s, error: %@", v29, 0x16u);
    sub_100005A04(v30, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v31);
  }

  (*(v53 + 8))(v13, v54);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10001DC5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v37 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_1000346DC;
  *(v18 + 64) = v15;
  v40 = sub_1000355D0;
  v41 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v39 = &unk_10008A750;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v37;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v39;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v39;
    if (!v39)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v39);
    v29 = *(v27 - 1);
    v30 = *(v29 + 64);
    __chkstk_darwin(v28);
    v32 = aBlock - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v32);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v32, v27);
    sub_100034948(aBlock);
    [v17 endMonitoringProviderDomainChanges:v33];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v34 = static NSUserDefaults.docUserDefaults.getter();
  if (v34)
  {
    v35 = v34;
    v36 = String._bridgeToObjectiveC()();
    [v35 setBool:1 forKey:v36];
  }

  else
  {
  }
}

uint64_t sub_10001E03C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a1;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  *(v17 + 56) = a5;
  *(v17 + 64) = sub_100034778;
  *(v17 + 72) = v15;
  *(v17 + 80) = sub_100034784;
  *(v17 + 88) = v16;
  *(v17 + 96) = a8;
  v18 = swift_allocObject();
  v18[2] = sub_1000355D4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a6;
  v19 = a1;
  swift_bridgeObjectRetain_n();
  v20 = v19;
  v21 = a6;
  v22 = v20;
  v23 = v21;
  v24 = a5;

  sub_1000144AC(v24, v23, sub_100035504, v18);
}

void sub_10001E204(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100005D28(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting test %s", v13, 0xCu);
    sub_100034948(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = String._bridgeToObjectiveC()();
  [a3 startedTest:v15];
}

uint64_t sub_10001E3D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v37 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10003467C;
  *(v18 + 64) = v15;
  v40 = sub_1000355D0;
  v41 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v39 = &unk_10008A5C0;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v37;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v39;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v39;
    if (!v39)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v39);
    v29 = *(v27 - 1);
    v30 = *(v29 + 64);
    __chkstk_darwin(v28);
    v32 = aBlock - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v32);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v32, v27);
    sub_100034948(aBlock);
    [v17 endMonitoringProviderDomainChanges:v33];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v34 = static NSUserDefaults.docUserDefaults.getter();
  if (v34)
  {
    v35 = v34;
    v36 = String._bridgeToObjectiveC()();
    [v35 setBool:1 forKey:v36];
  }

  else
  {
  }
}

uint64_t sub_10001E7B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a1;
  *(v15 + 40) = a6;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_100034694;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_1000355D4;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v20;
  v23 = v21;
  v24 = a5;

  sub_1000144AC(v24, v23, sub_100035504, v17);
}

uint64_t sub_10001E958(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v44);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchTime();
  v37 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v16 = 1;
  (*(v13 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v12);
  + infix(_:_:)();
  (*(v13 + 8))(v16, v12);
  v25 = *(v18 + 8);
  v25(v22, v17);
  v26 = swift_allocObject();
  v27 = v40;
  *(v26 + 16) = v39;
  *(v26 + 24) = v27;
  v29 = v41;
  v28 = v42;
  *(v26 + 32) = v41;
  *(v26 + 40) = v28;
  *(v26 + 48) = v43;
  aBlock[4] = sub_1000346AC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A688;
  v30 = _Block_copy(aBlock);

  v31 = v29;
  v32 = v28;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v38;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v47 + 8))(v7, v33);
  (*(v45 + 8))(v11, v46);
  return (v25)(v24, v37);
}

uint64_t sub_10001EDE8(uint64_t a1, unint64_t a2, void *a3, void *a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a4;
    v28 = v19;
    v20 = a5;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100005D28(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting test %s", v18, 0xCu);
    sub_100034948(v21);
    a5 = v20;
    a4 = v27;

    a3 = v26;
  }

  (*(v11 + 8))(v14, v10);
  v22 = String._bridgeToObjectiveC()();
  [a3 startedTest:v22];

  v23 = a3;
  sub_10005BF68(1, a4, v23, a1, a2, a5);
}

void sub_10001F038(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {
    v13 = *&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v14 = *&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v19[4] = a6;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100002DB0;
  v19[3] = a7;
  v17 = _Block_copy(v19);
  v18 = a1;

  [v18 finishedTest:v15 waitForCommit:1 extraResults:0 withTeardownBlock:v17];
  _Block_release(v17);
}

uint64_t sub_10001F1B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v37 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10003462C;
  *(v18 + 64) = v15;
  v40 = sub_1000355D0;
  v41 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v39 = &unk_10008A480;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v37;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v39;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v39;
    if (!v39)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v39);
    v29 = *(v27 - 1);
    v30 = *(v29 + 64);
    __chkstk_darwin(v28);
    v32 = aBlock - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v32);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v32, v27);
    sub_100034948(aBlock);
    [v17 endMonitoringProviderDomainChanges:v33];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v34 = static NSUserDefaults.docUserDefaults.getter();
  if (v34)
  {
    v35 = v34;
    v36 = String._bridgeToObjectiveC()();
    [v35 setBool:1 forKey:v36];
  }

  else
  {
  }
}

uint64_t sub_10001F598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_100034664;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_1000355D4;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v21;
  v23 = v20;
  v24 = a5;

  sub_1000144AC(v24, v22, sub_100035504, v17);
}

void sub_10001F734(char *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v68 - v17;
  __chkstk_darwin(v16);
  v20 = &v68 - v19;
  v21 = *&a1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v21)
  {
    static Logger.Tests.getter();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_100005D28(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to launch QuickLook for test %s", v62, 0xCu);
      sub_100034948(v63);
    }

    (*(v11 + 8))(v15, v10);
    v53 = String._bridgeToObjectiveC()();
    [a4 failedTest:v53];
    goto LABEL_15;
  }

  v68 = a4;
  v69 = v10;
  v22 = a2;
  v23 = v21;
  v24 = [a1 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 window];

    if (!v26)
    {
      static Logger.Tests.getter();

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_100005D28(v22, a3, aBlock);
        _os_log_impl(&_mh_execute_header, v64, v65, "Failed to find QuickLook bounds for test %s", v66, 0xCu);
        sub_100034948(v67);
      }

      (*(v11 + 8))(v18, v69);
      v53 = String._bridgeToObjectiveC()();
      [v68 failedTest:v53];
      goto LABEL_14;
    }

    v23 = v23;
    v27 = [v23 view];
    if (v27)
    {
      v28 = v27;
      v29 = v22;
      [v27 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = [v23 view];
      [v26 convertRect:v38 fromView:{v31, v33, v35, v37}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = swift_allocObject();
      v48 = v68;
      *(v47 + 16) = v68;
      *(v47 + 24) = v22;
      *(v47 + 32) = a3;
      *(v47 + 40) = a5;
      v49 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
      v50 = v48;

      v51 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000355E4;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A548;
      v52 = _Block_copy(aBlock);

      v53 = [v49 initWithTestName:v51 scrollingBounds:1 swipeCount:6 direction:v52 completionHandler:{v40, v42, v44, v46}];
      _Block_release(v52);

      [v53 setShouldFlick:1];
      static Logger.Tests.getter();

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v29;
        v59 = v57;
        aBlock[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_100005D28(v58, a3, aBlock);
        _os_log_impl(&_mh_execute_header, v54, v55, "Starting test %s", v56, 0xCu);
        sub_100034948(v59);
      }

      (*(v11 + 8))(v20, v69);
      [objc_opt_self() runTestWithParameters:v53];
LABEL_14:

LABEL_15:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10001FD94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v37 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10002C9C8;
  *(v18 + 64) = v15;
  v40 = sub_10002C9E0;
  v41 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v39 = &unk_100089C60;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v37;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v39;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v39;
    if (!v39)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v39);
    v29 = *(v27 - 1);
    v30 = *(v29 + 64);
    __chkstk_darwin(v28);
    v32 = aBlock - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v32);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v32, v27);
    sub_100034948(aBlock);
    [v17 endMonitoringProviderDomainChanges:v33];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v34 = static NSUserDefaults.docUserDefaults.getter();
  if (v34)
  {
    v35 = v34;
    v36 = String._bridgeToObjectiveC()();
    [v35 setBool:1 forKey:v36];
  }

  else
  {
  }
}

uint64_t sub_100020174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_10002CBE8;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_10002CC00;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v21;
  v23 = v20;
  v24 = a5;

  sub_1000144AC(v24, v22, sub_10002CC04, v17);
}

void sub_100020310(char *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = *&a1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v21)
  {
    static Logger.Tests.getter();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v76 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100005D28(a2, a3, &v76);
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to launch QuickLook for test %s", v66, 0xCu);
      sub_100034948(v67);
    }

    (*(v11 + 8))(v15, v10);
    v53 = String._bridgeToObjectiveC()();
    [a4 failedTest:v53];
    goto LABEL_14;
  }

  v73 = a2;
  v74 = v10;
  v22 = a4;
  v23 = v21;
  v24 = [a1 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 window];

    if (!v26)
    {
      static Logger.Tests.getter();

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v76 = v71;
        *v70 = 136315138;
        *(v70 + 4) = sub_100005D28(v73, a3, &v76);
        _os_log_impl(&_mh_execute_header, v68, v69, "Failed to find QuickLook bounds for test %s", v70, 0xCu);
        sub_100034948(v71);
      }

      (*(v11 + 8))(v18, v74);
      v53 = String._bridgeToObjectiveC()();
      [v22 failedTest:v53];

      goto LABEL_14;
    }

    v27 = v23;
    v28 = [v27 view];
    if (v28)
    {
      v29 = v28;
      [v28 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = [v27 view];
      [v26 convertRect:v38 fromView:{v31, v33, v35, v37}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = type metadata accessor for DOCPinchZoomTestParameters();
      v48 = objc_allocWithZone(v47);
      v49 = &v48[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName];
      *v49 = 0;
      *(v49 + 1) = 0;
      v50 = &v48[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      *v50 = 0;
      *(v50 + 1) = 0;
      v51 = v73;
      *v49 = v73;
      *(v49 + 1) = a3;
      v52 = &v48[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds];
      *v52 = v40;
      *(v52 + 1) = v42;
      *(v52 + 2) = v44;
      *(v52 + 3) = v46;
      v75.receiver = v48;
      v75.super_class = v47;

      v53 = objc_msgSendSuper2(&v75, "init");
      v54 = swift_allocObject();
      *(v54 + 16) = v22;
      *(v54 + 24) = v51;
      *(v54 + 32) = a3;
      *(v54 + 40) = a5;
      v55 = &v53[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      v56 = *&v53[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      v57 = *&v53[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler + 8];
      *v55 = sub_1000355E4;
      v55[1] = v54;

      v58 = v22;
      sub_10003461C(v56);
      static Logger.Tests.getter();

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v27;
        v63 = swift_slowAlloc();
        v76 = v63;
        *v61 = 136315138;
        *(v61 + 4) = sub_100005D28(v51, a3, &v76);
        _os_log_impl(&_mh_execute_header, v59, v60, "Starting test %s", v61, 0xCu);
        sub_100034948(v63);
        v27 = v62;
      }

      (*(v11 + 8))(v20, v74);
      [objc_opt_self() runTestWithParameters:v53];

LABEL_14:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100020964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v66 = a7;
  v67 = a8;
  v68 = a9;
  v69 = a5;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v61[-v23];
  v25 = &off_100091000;
  if (a2)
  {
    v65 = v22;
    static Logger.Tests.getter();

    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v64 = v18;
      v29 = v28;
      v63 = swift_slowAlloc();
      *&v71[0] = v63;
      *v29 = 136315394;
      *(v29 + 4) = sub_100005D28(a3, a4, v71);
      *(v29 + 12) = 2080;
      v70 = a2;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v30 = String.init<A>(describing:)();
      v32 = sub_100005D28(v30, v31, v71);
      v62 = v27;
      v33 = a4;
      v34 = v17;
      v35 = a6;
      v36 = a3;
      v37 = v32;

      *(v29 + 14) = v37;
      a3 = v36;
      a6 = v35;
      v17 = v34;
      a4 = v33;
      _os_log_impl(&_mh_execute_header, v26, v62, "Failed test %s. Error: %s", v29, 0x16u);
      swift_arrayDestroy();

      v18 = v64;
    }

    (*(v18 + 8))(v24, v17);
    v38 = String._bridgeToObjectiveC()();
    v25 = &off_100091000;
    [v69 failedTest:v38];

    v22 = v65;
  }

  v39 = [a6 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

  v68();
  v40 = [a6 effectiveBrowserViewController];
  if (v40 && (v41 = v40, v42 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v41, v42))
  {
    v43 = DOCQLPreviewFinishLoadingNotificationName;
    v44 = swift_allocObject();
    *(v44 + 16) = a11;
    *(v44 + 24) = a12;
    v45 = objc_opt_self();
    v46 = v42;
    v47 = v43;

    v48 = [v45 defaultCenter];
    memset(v71, 0, sizeof(v71));
    v49 = [objc_opt_self() mainQueue];
    v50 = swift_allocObject();
    *(v50 + 16) = sub_100030388;
    *(v50 + 24) = v44;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v71, &qword_100093498, &qword_100074430);

    v51 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();

    v52 = v46;
    v53 = v69;
    v54 = a6;
    sub_100031950(v51, a13, a13, v53, v54, a3, a4, v51, v52);
  }

  else
  {
    static Logger.Tests.getter();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v25;
      v58 = swift_slowAlloc();
      v59 = v22;
      v60 = swift_slowAlloc();
      *&v71[0] = v60;
      *v58 = 136315138;
      *(v58 + 4) = sub_100005D28(a3, a4, v71);
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed test %s. mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController was nil", v58, 0xCu);
      sub_100034948(v60);

      v25 = v57;

      (*(v18 + 8))(v59, v17);
    }

    else
    {

      (*(v18 + 8))(v22, v17);
    }

    v52 = String._bridgeToObjectiveC()();
    [v69 v25[284]];
  }
}

uint64_t sub_100020F70(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v48 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v16 = 1;
  (*(v13 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v12);
  + infix(_:_:)();
  (*(v13 + 8))(v16, v12);
  v41 = *(v18 + 8);
  v25 = v22;
  v26 = v17;
  v41(v25, v17);
  v27 = swift_allocObject();
  v28 = v43;
  v29 = v44;
  v27[2] = a1;
  v27[3] = v28;
  v30 = v45;
  v31 = v46;
  v27[4] = v29;
  v27[5] = v30;
  v27[6] = v31;
  aBlock[4] = sub_1000330A4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A2C8;
  v32 = _Block_copy(aBlock);
  v33 = a1;

  v34 = v30;
  v35 = v31;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v37 = v47;
  v36 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v42;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v32);

  (*(v51 + 8))(v37, v36);
  (*(v49 + 8))(v11, v50);
  return (v41)(v24, v26);
}

void sub_10002140C(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 effectiveBrowserViewController];
  if (v15 && (v16 = v15, v17 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v16, v17))
  {
    v18 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    v19 = v17;
    v20 = a5;

    v27 = a4;
    sub_100033440(v18, 7, v19, v20, a2, a3, v27);

    v21 = v27;
  }

  else
  {
    static Logger.Tests.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100005D28(a2, a3, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed test %s. Timed out waiting for mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController", v24, 0xCu);
      sub_100034948(v25);
    }

    (*(v11 + 8))(v14, v10);
    v26 = String._bridgeToObjectiveC()();
    [a4 failedTest:v26];
  }
}

uint64_t sub_1000216B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v677 = *(v6 - 8);
  v678 = v6;
  v7 = *(v677 + 64);
  v8 = __chkstk_darwin(v6);
  v658 = &v636 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v657 = &v636 - v11;
  v12 = __chkstk_darwin(v10);
  v656 = &v636 - v13;
  v14 = __chkstk_darwin(v12);
  v655 = &v636 - v15;
  v16 = __chkstk_darwin(v14);
  v654 = &v636 - v17;
  v18 = __chkstk_darwin(v16);
  v653 = &v636 - v19;
  v20 = __chkstk_darwin(v18);
  v652 = &v636 - v21;
  v22 = __chkstk_darwin(v20);
  v651 = &v636 - v23;
  v24 = __chkstk_darwin(v22);
  v650 = &v636 - v25;
  v26 = __chkstk_darwin(v24);
  v649 = &v636 - v27;
  v28 = __chkstk_darwin(v26);
  v648 = &v636 - v29;
  v30 = __chkstk_darwin(v28);
  v647 = &v636 - v31;
  v32 = __chkstk_darwin(v30);
  v646 = &v636 - v33;
  v34 = __chkstk_darwin(v32);
  v645 = &v636 - v35;
  v36 = __chkstk_darwin(v34);
  v644 = &v636 - v37;
  v38 = __chkstk_darwin(v36);
  v643 = &v636 - v39;
  v40 = __chkstk_darwin(v38);
  v642 = &v636 - v41;
  v42 = __chkstk_darwin(v40);
  v641 = &v636 - v43;
  v44 = __chkstk_darwin(v42);
  v640 = &v636 - v45;
  v46 = __chkstk_darwin(v44);
  v639 = &v636 - v47;
  v48 = __chkstk_darwin(v46);
  v659 = &v636 - v49;
  v50 = __chkstk_darwin(v48);
  v660 = &v636 - v51;
  v52 = __chkstk_darwin(v50);
  v661 = &v636 - v53;
  v54 = __chkstk_darwin(v52);
  v662 = &v636 - v55;
  v56 = __chkstk_darwin(v54);
  v663 = &v636 - v57;
  v58 = __chkstk_darwin(v56);
  v60 = &v636 - v59;
  v61 = __chkstk_darwin(v58);
  v63 = (&v636 - v62);
  v64 = __chkstk_darwin(v61);
  v66 = &v636 - v65;
  __chkstk_darwin(v64);
  v68 = &v636 - v67;
  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = sub_10000E834(v69, v70);
  v672 = v71;
  v675 = a2;
  v668 = a3;
  v679 = a1;
  v664 = v60;
  v667 = v63;
  v676 = v66;
  v674 = 0;
  if (!v71)
  {
    v685 = 0u;
    v686 = 0u;
LABEL_10:
    sub_100005A04(&v685, &qword_100093498, &qword_100074430);
    goto LABEL_11;
  }

  if ([v71 objectForKey:DOCTestUserDefaultsKeyProviderForPPT])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v680 = 0u;
    v681 = 0u;
  }

  v685 = v680;
  v686 = v681;
  if (!*(&v681 + 1))
  {
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v75 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v673 = 0;
    goto LABEL_12;
  }

  v72 = *(&v680 + 1);

  v73 = String._bridgeToObjectiveC()();
  static Logger.Tests.getter();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  v75 = v73;
  v671 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_100035514;
  *(v79 + 24) = v74;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_100035528;
  *(v80 + 24) = v79;
  sub_10000DB4C(&qword_100093888, &qword_1000740A0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_100073FF0;
  *(v81 + 32) = sub_1000355C4;
  *(v81 + 40) = v77;
  *(v81 + 48) = sub_1000355C4;
  *(v81 + 56) = v78;
  *(v81 + 64) = sub_10003550C;
  *(v81 + 72) = v80;

  LODWORD(v670) = v76;
  v82 = v76;
  v83 = v671;
  v84 = os_log_type_enabled(v671, v82);
  v673 = v72;
  if (v84)
  {
    v85 = sub_100047A6C();
    v86 = swift_slowAlloc();
    v682 = v86;
    v683 = 0;
    *v85 = 258;
    *&v680 = v85 + 2;
    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v77;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v78;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_10003550C;
    *(&v685 + 1) = v80;
    sub_100047A74(&v685, &v680, &v683, &v682);
    a1 = v679;
    v674 = 0;

    _os_log_impl(&_mh_execute_header, v83, v670, "forcing provider to: %s", v85, 0xCu);
    sub_100034948(v86);

    sub_100047AB0();

    (*(v677 + 8))(v68, v678);
    a2 = v675;
  }

  else
  {

    (*(v677 + 8))(v68, v678);
    a1 = v679;
  }

LABEL_12:
  static Logger.Tests.getter();
  v87 = swift_allocObject();
  *(v87 + 16) = a1;
  *(v87 + 24) = a2;
  v88 = swift_allocObject();
  *(v88 + 16) = v75;

  v671 = v75;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_100034C24;
  *(v93 + 24) = v87;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_100034C70;
  *(v94 + 24) = v93;
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_100034C60;
  *(v97 + 24) = v88;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_100035528;
  *(v98 + 24) = v97;
  v665 = sub_10000DB4C(&qword_100093888, &qword_1000740A0);
  v99 = swift_allocObject();
  v666 = xmmword_100074000;
  *(v99 + 16) = xmmword_100074000;
  *(v99 + 32) = sub_100034C68;
  *(v99 + 40) = v91;
  *(v99 + 48) = sub_1000355C4;
  *(v99 + 56) = v92;
  *(v99 + 64) = sub_100034C78;
  *(v99 + 72) = v94;
  *(v99 + 80) = sub_1000355C4;
  *(v99 + 88) = v95;
  *(v99 + 96) = sub_1000355C4;
  *(v99 + 104) = v96;
  *(v99 + 112) = sub_10003550C;
  *(v99 + 120) = v98;

  LODWORD(v670) = v90;
  if (os_log_type_enabled(v89, v90))
  {
    v100 = sub_100047A6C();
    v682 = swift_slowAlloc();
    v683 = 0;
    *v100 = 514;
    *&v680 = v100 + 2;
    *&v685 = sub_100034C68;
    *(&v685 + 1) = v91;
    v101 = v674;
    sub_100047A74(&v685, &v680, &v683, &v682);
    if (v101)
    {
      goto LABEL_172;
    }

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v92;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_100034C78;
    *(&v685 + 1) = v94;
    sub_100047A74(&v685, &v680, &v683, &v682);
    v102 = v679;

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v95;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v96;
    sub_100047A74(&v685, &v680, &v683, &v682);
    v103 = v675;

    *&v685 = sub_10003550C;
    *(&v685 + 1) = v98;
    sub_100047A74(&v685, &v680, &v683, &v682);

    _os_log_impl(&_mh_execute_header, v89, v670, "runTest: %s with provider: %s", v100, 0x16u);
    swift_arrayDestroy();

    sub_100047AB0();

    v104 = *(v677 + 8);
    (v104)(v676, v678);
  }

  else
  {

    v104 = *(v677 + 8);
    (v104)(v676, v678);
    v101 = v674;
    v103 = v675;
    v102 = v679;
  }

  v105 = [objc_opt_self() keyWindow];
  if (!v105)
  {
    goto LABEL_34;
  }

  v106 = v105;
  v107 = [v105 rootViewController];
  if (!v107)
  {

LABEL_35:
    v119 = 0;
    goto LABEL_36;
  }

  v108 = v107;
  type metadata accessor for DRIMainViewController();
  v109 = swift_dynamicCastClass();
  if (!v109)
  {

    goto LABEL_35;
  }

  v110 = v109;
  v111 = [v109 tabBarController];
  if (!v111)
  {

LABEL_34:

    goto LABEL_35;
  }

  v112 = v111;
  v113 = &v669[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
  v114 = *&v669[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
  *v113 = v102;
  v113[1] = v103;

  [v112 enclosingTabSwitcherStyle];
  v115 = DOCTabSwitcherStyle.showsTabs.getter();
  if (!v103)
  {

    v121 = 0;
LABEL_38:
    if (v668)
    {
      v122.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v122.super.isa = 0;
    }

    v128 = type metadata accessor for DOCApplication();
    v684.receiver = v669;
    v684.super_class = v128;
    v119 = objc_msgSendSuper2(&v684, "runTest:options:", v121, v122.super.isa);

    goto LABEL_36;
  }

  v116 = v115;
  v117 = 0x6F54686374697753;
  if (v102 == 0x6F54686374697753 && v103 == 0xEE006573776F7242 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v116)
    {

      sub_100019110(2, v102, v103, v110, v112);
LABEL_26:

LABEL_27:
LABEL_28:
      v118 = &v688;
LABEL_29:

      v119 = 1;
LABEL_36:

      return v119;
    }

    if (v668)
    {

      v123 = swift_allocObject();
      v124 = v669;
      v123[2] = v669;
      v123[3] = v102;
      v123[4] = v103;
      v123[5] = v110;

      v125 = v124;
      v126 = v108;
      v127 = v671;
      sub_1000144AC(v671, v110, sub_100035508, v123);

LABEL_42:

      v119 = 1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_134:
    if (v679 == 0x6F466573776F7242 && v675 == 0xEC0000007265646CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v274 = swift_allocObject();
      v275 = v676;
      *(v274 + 16) = v676;
      v276 = swift_allocObject();
      *(v276 + 16) = v275;
      v664 = v108;
      v277 = Logger.logObject.getter();
      LODWORD(v667) = static os_log_type_t.debug.getter();
      v278 = swift_allocObject();
      *(v278 + 16) = 64;
      v279 = swift_allocObject();
      v116 = 8;
      *(v279 + 16) = 8;
      v280 = swift_allocObject();
      *(v280 + 16) = sub_1000355A8;
      *(v280 + 24) = v274;
      v104 = swift_allocObject();
      *(v104 + 2) = sub_10003552C;
      *(v104 + 3) = v280;
      v102 = swift_allocObject();
      *(v102 + 16) = 32;
      v281 = swift_allocObject();
      *(v281 + 16) = 8;
      v282 = swift_allocObject();
      *(v282 + 16) = sub_1000355AC;
      *(v282 + 24) = v276;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_100035528;
      *(v117 + 24) = v282;
      v283 = swift_allocObject();
      *(v283 + 16) = v666;
      *(v283 + 32) = sub_1000355C4;
      *(v283 + 40) = v278;
      *(v283 + 48) = sub_1000355C4;
      *(v283 + 56) = v279;
      *(v283 + 64) = sub_100035510;
      *(v283 + 72) = v104;
      *(v283 + 80) = sub_1000355C4;
      *(v283 + 88) = v102;
      *(v283 + 96) = sub_1000355C4;
      *(v283 + 104) = v281;
      *(v283 + 112) = sub_10003550C;
      *(v283 + 120) = v117;

      v108 = v277;
      if (os_log_type_enabled(v277, v667))
      {
        v284 = sub_100047A6C();
        v116 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        v682 = v285;
        v683 = v116;
        *&v666 = v284;
        *v284 = 514;
        *&v680 = v284 + 1;
        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v278;
        v286 = v674;
        sub_100047A74(&v685, &v680, &v683, &v682);
        if (v286)
        {
          goto LABEL_213;
        }

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v279;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_100035510;
        *(&v685 + 1) = v104;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v102;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v281;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_10003550C;
        *(&v685 + 1) = v117;
        sub_100047A74(&v685, &v680, &v683, &v682);

        v287 = v108;
        v288 = v108;
        v108 = v666;
        _os_log_impl(&_mh_execute_header, v288, v667, "BrowseFolder %@ %s", v666, 0x16u);
        sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v285);

        sub_100047AB0();
      }

      else
      {
      }

      (v637)(v639, v678);
      if (v668)
      {

        v119 = 1;
        v289 = v671;
        sub_100030D04(v679, v675, v671, v676, 0, 1);

        goto LABEL_71;
      }

      __break(1u);
      goto LABEL_249;
    }

    goto LABEL_144;
  }

  if ((v102 != 0x6F54686374697753 || v103 != 0xEF73746E65636552) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v637 = v104;
    v104 = 0xD000000000000014;
    v116 = 0xD000000000000010;
    v638 = v106;
    v670 = v112;
    v676 = v110;
    if (v102 == 0xD000000000000010 && 0x8000000100075250 == v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v133 = swift_allocObject();
      *(v133 + 16) = v110;
      v134 = swift_allocObject();
      *(v134 + 16) = v110;
      v663 = v108;
      v674 = Logger.logObject.getter();
      LODWORD(v664) = static os_log_type_t.debug.getter();
      v135 = swift_allocObject();
      *(v135 + 16) = 64;
      v136 = swift_allocObject();
      v116 = 8;
      *(v136 + 16) = 8;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_1000355A8;
      *(v137 + 24) = v133;
      v138 = swift_allocObject();
      *(v138 + 16) = sub_10003552C;
      *(v138 + 24) = v137;
      v139 = swift_allocObject();
      *(v139 + 16) = 32;
      v140 = swift_allocObject();
      *(v140 + 16) = 8;
      v141 = swift_allocObject();
      *(v141 + 16) = sub_1000355AC;
      *(v141 + 24) = v134;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_100035528;
      *(v117 + 24) = v141;
      v142 = swift_allocObject();
      *(v142 + 16) = v666;
      *(v142 + 32) = sub_1000355C4;
      *(v142 + 40) = v135;
      *(v142 + 48) = sub_1000355C4;
      *(v142 + 56) = v136;
      *(v142 + 64) = sub_100035510;
      *(v142 + 72) = v138;
      *(v142 + 80) = sub_1000355C4;
      *(v142 + 88) = v139;
      *(v142 + 96) = sub_1000355C4;
      *(v142 + 104) = v140;
      *(v142 + 112) = sub_10003550C;
      *(v142 + 120) = v117;

      v143 = v674;

      if (os_log_type_enabled(v143, v664))
      {
        v144 = sub_100047A6C();
        v116 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v682 = v145;
        v683 = v116;
        *v144 = 514;
        *&v680 = v144 + 2;
        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v135;
        sub_100047A74(&v685, &v680, &v683, &v682);
        if (v101)
        {
          goto LABEL_213;
        }

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v136;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_100035510;
        *(&v685 + 1) = v138;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v139;
        sub_100047A74(&v685, &v680, &v683, &v682);
        v146 = v676;

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v140;
        sub_100047A74(&v685, &v680, &v683, &v682);
        v102 = v675;
        v104 = v670;

        *&v685 = sub_10003550C;
        *(&v685 + 1) = v117;
        sub_100047A74(&v685, &v680, &v683, &v682);

        v147 = v674;
        _os_log_impl(&_mh_execute_header, v674, v664, "ScrollAllRecents %@ %s", v144, 0x16u);
        sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v145);

        sub_100047AB0();

        (v637)(v667, v678);
      }

      else
      {

        (v637)(v667, v678);
        v102 = v675;
        v146 = v676;
        v104 = v670;
      }

      v108 = v668;
      if (v668)
      {

        sub_10002EFCC(v679, v102, v108, v146, 0);

        v118 = &v668;
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_151;
    }

    if (v102 == 0xD000000000000014 && 0x8000000100075230 == v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v148 = swift_allocObject();
      *(v148 + 16) = v110;
      v149 = swift_allocObject();
      *(v149 + 16) = v110;
      v663 = v108;
      v674 = Logger.logObject.getter();
      LODWORD(v667) = static os_log_type_t.debug.getter();
      v150 = swift_allocObject();
      *(v150 + 16) = 64;
      v151 = swift_allocObject();
      v116 = 8;
      *(v151 + 16) = 8;
      v152 = swift_allocObject();
      *(v152 + 16) = sub_1000355A8;
      *(v152 + 24) = v148;
      v153 = swift_allocObject();
      *(v153 + 16) = sub_10003552C;
      *(v153 + 24) = v152;
      v154 = swift_allocObject();
      *(v154 + 16) = 32;
      v155 = swift_allocObject();
      *(v155 + 16) = 8;
      v156 = swift_allocObject();
      *(v156 + 16) = sub_1000355AC;
      *(v156 + 24) = v149;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_100035528;
      *(v117 + 24) = v156;
      v157 = swift_allocObject();
      *(v157 + 16) = v666;
      *(v157 + 32) = sub_1000355C4;
      *(v157 + 40) = v150;
      *(v157 + 48) = sub_1000355C4;
      *(v157 + 56) = v151;
      *(v157 + 64) = sub_100035510;
      *(v157 + 72) = v153;
      *(v157 + 80) = sub_1000355C4;
      *(v157 + 88) = v154;
      *(v157 + 96) = sub_1000355C4;
      *(v157 + 104) = v155;
      *(v157 + 112) = sub_10003550C;
      *(v157 + 120) = v117;

      v158 = v674;

      if (os_log_type_enabled(v158, v667))
      {
        v159 = sub_100047A6C();
        v116 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v682 = v160;
        v683 = v116;
        *v159 = 514;
        *&v680 = v159 + 2;
        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v150;
        sub_100047A74(&v685, &v680, &v683, &v682);
        if (v101)
        {
          goto LABEL_213;
        }

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v151;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_100035510;
        *(&v685 + 1) = v153;
        sub_100047A74(&v685, &v680, &v683, &v682);
        v161 = v676;

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v154;
        sub_100047A74(&v685, &v680, &v683, &v682);

        *&v685 = sub_1000355C4;
        *(&v685 + 1) = v155;
        sub_100047A74(&v685, &v680, &v683, &v682);
        v102 = v675;
        v104 = v670;

        *&v685 = sub_10003550C;
        *(&v685 + 1) = v117;
        sub_100047A74(&v685, &v680, &v683, &v682);

        v162 = v674;
        _os_log_impl(&_mh_execute_header, v674, v667, "ScrollAllRecentsList %@ %s", v159, 0x16u);
        sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v160);

        sub_100047AB0();

        (v637)(v664, v678);
      }

      else
      {

        (v637)(v664, v678);
        v102 = v675;
        v161 = v676;
        v104 = v670;
      }

      v108 = v668;
      if (v668)
      {

        v119 = 1;
        sub_10002EFCC(v679, v102, v108, v161, 1);

LABEL_71:
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_162;
    }

    if ((v102 != 0x65526C6C6F726353 || v103 != 0xED000073746E6563) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v674 = v101;
      if (v102 == 0xD000000000000014 && 0x8000000100075210 == v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v116 = v668;
        if (v668)
        {

          sub_100017C28(v102, v103, v116, v676);

LABEL_82:
          goto LABEL_28;
        }

        __break(1u);

        __break(1u);
        goto LABEL_184;
      }

      if (v102 == 0x72426C6C6F726353 && v675 == 0xEC0000006573776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        static Logger.Tests.getter();
        v164 = swift_allocObject();
        v165 = v676;
        *(v164 + 16) = v676;
        v166 = swift_allocObject();
        *(v166 + 16) = v165;
        v664 = v108;
        v667 = Logger.logObject.getter();
        v167 = static os_log_type_t.debug.getter();
        v168 = swift_allocObject();
        *(v168 + 16) = 64;
        v169 = swift_allocObject();
        v116 = 8;
        *(v169 + 16) = 8;
        v170 = swift_allocObject();
        *(v170 + 16) = sub_1000355A8;
        *(v170 + 24) = v164;
        v104 = swift_allocObject();
        *(v104 + 2) = sub_10003552C;
        *(v104 + 3) = v170;
        v102 = swift_allocObject();
        *(v102 + 16) = 32;
        v171 = swift_allocObject();
        *(v171 + 16) = 8;
        v172 = swift_allocObject();
        *(v172 + 16) = sub_1000355AC;
        *(v172 + 24) = v166;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_100035528;
        *(v117 + 24) = v172;
        v173 = swift_allocObject();
        *(v173 + 16) = v666;
        *(v173 + 32) = sub_1000355C4;
        *(v173 + 40) = v168;
        *(v173 + 48) = sub_1000355C4;
        *(v173 + 56) = v169;
        *(v173 + 64) = sub_100035510;
        *(v173 + 72) = v104;
        *(v173 + 80) = sub_1000355C4;
        *(v173 + 88) = v102;
        *(v173 + 96) = sub_1000355C4;
        *(v173 + 104) = v171;
        *(v173 + 112) = sub_10003550C;
        *(v173 + 120) = v117;

        LODWORD(v666) = v167;
        v108 = v667;
        if (os_log_type_enabled(v667, v167))
        {
          v174 = sub_100047A6C();
          v116 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v682 = v175;
          v683 = v116;
          v665 = v174;
          *v174 = 514;
          *&v680 = v174 + 2;
          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v168;
          v176 = v674;
          sub_100047A74(&v685, &v680, &v683, &v682);
          if (v176)
          {
            goto LABEL_213;
          }

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v169;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_100035510;
          *(&v685 + 1) = v104;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v102;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v171;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_10003550C;
          *(&v685 + 1) = v117;
          sub_100047A74(&v685, &v680, &v683, &v682);

          v177 = v108;
          v178 = v108;
          v108 = v665;
          _os_log_impl(&_mh_execute_header, v178, v666, "ScrollBrowse %@ %s", v665, 0x16u);
          sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v175);

          sub_100047AB0();
        }

        else
        {
        }

        (v637)(v663, v678);
        if (!v668)
        {
          __break(1u);
          goto LABEL_194;
        }

        v179 = swift_allocObject();
        v180 = v669;
        v181 = v679;
        *(v179 + 16) = v669;
        *(v179 + 24) = v181;
        v182 = v676;
        *(v179 + 32) = v675;
        *(v179 + 40) = v182;
        *(v179 + 48) = 0;
        *(v179 + 56) = v668;
        v183 = swift_allocObject();
        v183[2] = sub_1000355D8;
        v183[3] = v179;
        v183[4] = v180;
        v183[5] = v182;
        v184 = v180;
        v185 = v664;

        v186 = v184;
        v187 = v185;
      }

      else
      {
        v102 = 0xD000000000000013;
        if ((v679 != 0xD000000000000013 || 0x80000001000751F0 != v675) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v679 == 0xD000000000000010 && 0x80000001000751D0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            static Logger.Tests.getter();
            v212 = swift_allocObject();
            v213 = v676;
            *(v212 + 16) = v676;
            v214 = swift_allocObject();
            *(v214 + 16) = v213;
            v664 = v108;
            v667 = Logger.logObject.getter();
            v215 = static os_log_type_t.debug.getter();
            v216 = swift_allocObject();
            *(v216 + 16) = 64;
            v217 = swift_allocObject();
            v116 = 8;
            *(v217 + 16) = 8;
            v218 = swift_allocObject();
            *(v218 + 16) = sub_100034CE0;
            *(v218 + 24) = v212;
            v104 = swift_allocObject();
            *(v104 + 2) = sub_10003552C;
            *(v104 + 3) = v218;
            v102 = swift_allocObject();
            *(v102 + 16) = 32;
            v117 = swift_allocObject();
            *(v117 + 16) = 8;
            v219 = swift_allocObject();
            *(v219 + 16) = sub_100034CE8;
            *(v219 + 24) = v214;
            v220 = swift_allocObject();
            *(v220 + 16) = sub_100035528;
            *(v220 + 24) = v219;
            v221 = swift_allocObject();
            *(v221 + 16) = v666;
            *(v221 + 32) = sub_1000355C4;
            *(v221 + 40) = v216;
            *(v221 + 48) = sub_1000355C4;
            *(v221 + 56) = v217;
            *(v221 + 64) = sub_100035510;
            *(v221 + 72) = v104;
            *(v221 + 80) = sub_1000355C4;
            *(v221 + 88) = v102;
            *(v221 + 96) = sub_1000355C4;
            *(v221 + 104) = v117;
            *(v221 + 112) = sub_10003550C;
            *(v221 + 120) = v220;

            LODWORD(v666) = v215;
            v108 = v667;
            if (os_log_type_enabled(v667, v215))
            {
              v222 = sub_100047A6C();
              v116 = swift_slowAlloc();
              v223 = swift_slowAlloc();
              v682 = v223;
              v683 = v116;
              v665 = v222;
              *v222 = 514;
              *&v680 = v222 + 2;
              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v216;
              v224 = v674;
              sub_100047A74(&v685, &v680, &v683, &v682);
              if (v224)
              {

                while (1)
                {

                  __break(1u);
                }
              }

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v217;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_100035510;
              *(&v685 + 1) = v104;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v102;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v117;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_10003550C;
              *(&v685 + 1) = v220;
              sub_100047A74(&v685, &v680, &v683, &v682);

              v225 = v108;
              v226 = v108;
              v108 = v665;
              _os_log_impl(&_mh_execute_header, v226, v666, "ScrollBrowseList %@ %s", v665, 0x16u);
              sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v223);

              sub_100047AB0();
            }

            else
            {
            }

            (v637)(v661, v678);
            if (!v668)
            {
              __break(1u);
              goto LABEL_215;
            }

            v227 = swift_allocObject();
            v228 = v669;
            v229 = v679;
            *(v227 + 16) = v669;
            *(v227 + 24) = v229;
            v230 = v676;
            *(v227 + 32) = v675;
            *(v227 + 40) = v230;
            v119 = 1;
            *(v227 + 48) = 1;
            *(v227 + 56) = v668;
            v231 = swift_allocObject();
            v231[2] = sub_1000355D8;
            v231[3] = v227;
            v231[4] = v228;
            v231[5] = v230;
            v232 = v228;
            v233 = v664;

            v234 = v232;
            v235 = v233;
          }

          else
          {
            v103 = 0xD000000000000017;
            if ((v679 != 0xD000000000000017 || 0x80000001000751B0 != v675) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v679 == 0xD000000000000014 && 0x8000000100075190 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                static Logger.Tests.getter();
                v258 = swift_allocObject();
                v259 = v676;
                *(v258 + 16) = v676;
                v260 = swift_allocObject();
                *(v260 + 16) = v259;
                v664 = v108;
                v261 = Logger.logObject.getter();
                LODWORD(v667) = static os_log_type_t.debug.getter();
                v262 = swift_allocObject();
                *(v262 + 16) = 64;
                v263 = swift_allocObject();
                v116 = 8;
                *(v263 + 16) = 8;
                v264 = swift_allocObject();
                *(v264 + 16) = sub_1000355A8;
                *(v264 + 24) = v258;
                v104 = swift_allocObject();
                *(v104 + 2) = sub_10003552C;
                *(v104 + 3) = v264;
                v102 = swift_allocObject();
                *(v102 + 16) = 32;
                v265 = swift_allocObject();
                *(v265 + 16) = 8;
                v266 = swift_allocObject();
                *(v266 + 16) = sub_1000355AC;
                *(v266 + 24) = v260;
                v117 = swift_allocObject();
                *(v117 + 16) = sub_100035528;
                *(v117 + 24) = v266;
                v267 = swift_allocObject();
                *(v267 + 16) = v666;
                *(v267 + 32) = sub_1000355C4;
                *(v267 + 40) = v262;
                *(v267 + 48) = sub_1000355C4;
                *(v267 + 56) = v263;
                *(v267 + 64) = sub_100035510;
                *(v267 + 72) = v104;
                *(v267 + 80) = sub_1000355C4;
                *(v267 + 88) = v102;
                *(v267 + 96) = sub_1000355C4;
                *(v267 + 104) = v265;
                *(v267 + 112) = sub_10003550C;
                *(v267 + 120) = v117;

                v108 = v261;
                if (os_log_type_enabled(v261, v667))
                {
                  v268 = sub_100047A6C();
                  v116 = swift_slowAlloc();
                  v269 = swift_slowAlloc();
                  v682 = v269;
                  v683 = v116;
                  *&v666 = v268;
                  *v268 = 514;
                  *&v680 = v268 + 1;
                  *&v685 = sub_1000355C4;
                  *(&v685 + 1) = v262;
                  v270 = v674;
                  sub_100047A74(&v685, &v680, &v683, &v682);
                  if (v270)
                  {
                    goto LABEL_213;
                  }

                  *&v685 = sub_1000355C4;
                  *(&v685 + 1) = v263;
                  sub_100047A74(&v685, &v680, &v683, &v682);

                  *&v685 = sub_100035510;
                  *(&v685 + 1) = v104;
                  sub_100047A74(&v685, &v680, &v683, &v682);

                  *&v685 = sub_1000355C4;
                  *(&v685 + 1) = v102;
                  sub_100047A74(&v685, &v680, &v683, &v682);

                  *&v685 = sub_1000355C4;
                  *(&v685 + 1) = v265;
                  sub_100047A74(&v685, &v680, &v683, &v682);

                  *&v685 = sub_10003550C;
                  *(&v685 + 1) = v117;
                  sub_100047A74(&v685, &v680, &v683, &v682);

                  v271 = v108;
                  v272 = v108;
                  v108 = v666;
                  _os_log_impl(&_mh_execute_header, v272, v667, "ScrollSidebarNatural %@ %s", v666, 0x16u);
                  sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

                  sub_100034948(v269);

                  sub_100047AB0();
                }

                else
                {
                }

                (v637)(v659, v678);
                if (v668)
                {

                  sub_10000FB10(v679, v675, v668, v676);
LABEL_131:
                  v273 = &v687;
LABEL_132:

                  goto LABEL_82;
                }

                __break(1u);
                goto LABEL_237;
              }

              goto LABEL_134;
            }

            static Logger.Tests.getter();
            v237 = swift_allocObject();
            v238 = v676;
            *(v237 + 16) = v676;
            v239 = swift_allocObject();
            *(v239 + 16) = v238;
            v664 = v108;
            v240 = Logger.logObject.getter();
            LODWORD(v667) = static os_log_type_t.debug.getter();
            v241 = swift_allocObject();
            *(v241 + 16) = 64;
            v242 = swift_allocObject();
            v116 = 8;
            *(v242 + 16) = 8;
            v243 = swift_allocObject();
            *(v243 + 16) = sub_1000355A8;
            *(v243 + 24) = v237;
            v104 = swift_allocObject();
            *(v104 + 2) = sub_10003552C;
            *(v104 + 3) = v243;
            v102 = swift_allocObject();
            *(v102 + 16) = 32;
            v244 = swift_allocObject();
            *(v244 + 16) = 8;
            v245 = swift_allocObject();
            *(v245 + 16) = sub_1000355AC;
            *(v245 + 24) = v239;
            v117 = swift_allocObject();
            *(v117 + 16) = sub_100035528;
            *(v117 + 24) = v245;
            v246 = swift_allocObject();
            *(v246 + 16) = v666;
            *(v246 + 32) = sub_1000355C4;
            *(v246 + 40) = v241;
            *(v246 + 48) = sub_1000355C4;
            *(v246 + 56) = v242;
            *(v246 + 64) = sub_100035510;
            *(v246 + 72) = v104;
            *(v246 + 80) = sub_1000355C4;
            *(v246 + 88) = v102;
            *(v246 + 96) = sub_1000355C4;
            *(v246 + 104) = v244;
            *(v246 + 112) = sub_10003550C;
            *(v246 + 120) = v117;

            v108 = v240;
            if (os_log_type_enabled(v240, v667))
            {
              v247 = sub_100047A6C();
              v116 = swift_slowAlloc();
              v248 = swift_slowAlloc();
              v682 = v248;
              v683 = v116;
              *&v666 = v247;
              *v247 = 514;
              *&v680 = v247 + 1;
              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v241;
              v249 = v674;
              sub_100047A74(&v685, &v680, &v683, &v682);
              if (v249)
              {
                goto LABEL_213;
              }

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v242;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_100035510;
              *(&v685 + 1) = v104;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v102;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_1000355C4;
              *(&v685 + 1) = v244;
              sub_100047A74(&v685, &v680, &v683, &v682);

              *&v685 = sub_10003550C;
              *(&v685 + 1) = v117;
              sub_100047A74(&v685, &v680, &v683, &v682);

              v250 = v108;
              v251 = v108;
              v108 = v666;
              _os_log_impl(&_mh_execute_header, v251, v667, "ScrollBrowseListNatural %@ %s", v666, 0x16u);
              sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v248);

              sub_100047AB0();
            }

            else
            {
            }

            (v637)(v660, v678);
            if (!v668)
            {
              __break(1u);
              goto LABEL_227;
            }

            v252 = swift_allocObject();
            v253 = v669;
            v254 = v679;
            *(v252 + 16) = v669;
            *(v252 + 24) = v254;
            v230 = v676;
            *(v252 + 32) = v675;
            *(v252 + 40) = v230;
            v119 = 1;
            *(v252 + 48) = 1;
            *(v252 + 56) = v668;
            v231 = swift_allocObject();
            v231[2] = sub_100034CDC;
            v231[3] = v252;
            v231[4] = v253;
            v231[5] = v230;
            v255 = v253;
            v256 = v664;

            v257 = v255;
            v235 = v256;
          }

          v236 = v671;
          sub_1000144AC(v671, v230, sub_100035504, v231);

          goto LABEL_36;
        }

        static Logger.Tests.getter();
        v191 = swift_allocObject();
        v192 = v676;
        *(v191 + 16) = v676;
        v193 = swift_allocObject();
        *(v193 + 16) = v192;
        v667 = v108;
        v102 = Logger.logObject.getter();
        v194 = static os_log_type_t.debug.getter();
        v195 = swift_allocObject();
        *(v195 + 16) = 64;
        v196 = swift_allocObject();
        v116 = 8;
        *(v196 + 16) = 8;
        v197 = swift_allocObject();
        *(v197 + 16) = sub_1000355A8;
        *(v197 + 24) = v191;
        v104 = swift_allocObject();
        *(v104 + 2) = sub_10003552C;
        *(v104 + 3) = v197;
        v198 = swift_allocObject();
        *(v198 + 16) = 32;
        v199 = swift_allocObject();
        *(v199 + 16) = 8;
        v200 = swift_allocObject();
        *(v200 + 16) = sub_1000355AC;
        *(v200 + 24) = v193;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_100035528;
        *(v117 + 24) = v200;
        v201 = swift_allocObject();
        *(v201 + 16) = v666;
        *(v201 + 32) = sub_1000355C4;
        *(v201 + 40) = v195;
        *(v201 + 48) = sub_1000355C4;
        *(v201 + 56) = v196;
        *(v201 + 64) = sub_100035510;
        *(v201 + 72) = v104;
        *(v201 + 80) = sub_1000355C4;
        *(v201 + 88) = v198;
        *(v201 + 96) = sub_1000355C4;
        *(v201 + 104) = v199;
        *(v201 + 112) = sub_10003550C;
        *(v201 + 120) = v117;

        LODWORD(v666) = v194;
        v108 = v102;
        if (os_log_type_enabled(v102, v194))
        {
          v202 = sub_100047A6C();
          v116 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v682 = v102;
          v683 = v116;
          v665 = v202;
          *v202 = 514;
          *&v680 = v202 + 2;
          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v195;
          v203 = v674;
          sub_100047A74(&v685, &v680, &v683, &v682);
          if (v203)
          {
            goto LABEL_213;
          }

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v196;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_100035510;
          *(&v685 + 1) = v104;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v198;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_1000355C4;
          *(&v685 + 1) = v199;
          sub_100047A74(&v685, &v680, &v683, &v682);

          *&v685 = sub_10003550C;
          *(&v685 + 1) = v117;
          sub_100047A74(&v685, &v680, &v683, &v682);

          v204 = v108;
          v205 = v108;
          v108 = v665;
          _os_log_impl(&_mh_execute_header, v205, v666, "ScrollBrowseNatural %@ %s", v665, 0x16u);
          sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v102);

          sub_100047AB0();
        }

        else
        {
        }

        (v637)(v662, v678);
        if (!v668)
        {
          __break(1u);
          goto LABEL_204;
        }

        v206 = swift_allocObject();
        v207 = v669;
        v208 = v679;
        *(v206 + 16) = v669;
        *(v206 + 24) = v208;
        v182 = v676;
        *(v206 + 32) = v675;
        *(v206 + 40) = v182;
        *(v206 + 48) = 0;
        *(v206 + 56) = v668;
        v183 = swift_allocObject();
        v183[2] = sub_1000355D8;
        v183[3] = v206;
        v183[4] = v207;
        v183[5] = v182;
        v209 = v207;
        v210 = v667;

        v211 = v209;
        v187 = v210;
      }

LABEL_92:
      v188 = v671;
      v189 = v671;
      v190 = v182;
LABEL_93:
      sub_1000144AC(v189, v190, sub_100035504, v183);

      goto LABEL_42;
    }

    v163 = v668;
    if (v668)
    {

      sub_100017C28(v102, v103, v163, v110);
      goto LABEL_26;
    }

    __break(1u);
LABEL_172:

    while (1)
    {

      __break(1u);
    }
  }

  if (v116)
  {

    sub_100019110(0, v102, v103, v110, v112);

    goto LABEL_27;
  }

  if (v668)
  {

    v129 = DOCDocumentSourceIdentifierRecentDocuments;
    v130 = swift_allocObject();
    v131 = v669;
    v130[2] = v669;
    v130[3] = v102;
    v130[4] = v103;
    v130[5] = v110;

    v131;
    v132 = v108;
    sub_1000144AC(v129, v110, sub_100035508, v130);

LABEL_52:
    goto LABEL_42;
  }

  __break(1u);
LABEL_144:
  v117 = (v104 - 3);
  if (v679 == v104 - 3 && 0x8000000100075170 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v290 = swift_allocObject();
    v291 = v676;
    *(v290 + 16) = v676;
    v292 = swift_allocObject();
    *(v292 + 16) = v291;
    v664 = v108;
    v293 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v294 = swift_allocObject();
    *(v294 + 16) = 64;
    v295 = swift_allocObject();
    v116 = 8;
    *(v295 + 16) = 8;
    v296 = swift_allocObject();
    *(v296 + 16) = sub_1000355A8;
    *(v296 + 24) = v290;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v296;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v297 = swift_allocObject();
    *(v297 + 16) = 8;
    v298 = swift_allocObject();
    *(v298 + 16) = sub_1000355AC;
    *(v298 + 24) = v292;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v298;
    v299 = swift_allocObject();
    *(v299 + 16) = v666;
    *(v299 + 32) = sub_1000355C4;
    *(v299 + 40) = v294;
    *(v299 + 48) = sub_1000355C4;
    *(v299 + 56) = v295;
    *(v299 + 64) = sub_100035510;
    *(v299 + 72) = v104;
    *(v299 + 80) = sub_1000355C4;
    *(v299 + 88) = v102;
    *(v299 + 96) = sub_1000355C4;
    *(v299 + 104) = v297;
    *(v299 + 112) = sub_10003550C;
    *(v299 + 120) = v117;

    v108 = v293;
    if (os_log_type_enabled(v293, v667))
    {
      v300 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v682 = v301;
      v683 = v116;
      *&v666 = v300;
      *v300 = 514;
      *&v680 = v300 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v294;
      v302 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v302)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v295;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v297;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v303 = v108;
      v304 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v304, v667, "BrowseEmptyFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v301);

      sub_100047AB0();

      goto LABEL_152;
    }

LABEL_151:

LABEL_152:
    (v637)(v640, v678);
    if (v668)
    {

      v305 = v679;
      v306 = v675;
      v307 = v676;
      v308 = v671;
      v309 = v671;
      v310 = 0;
LABEL_154:
      sub_100030D04(v305, v306, v309, v307, 0, v310);

      v118 = &v668;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_259;
  }

  if (v679 == v102 && 0x8000000100075150 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v311 = swift_allocObject();
    v312 = v676;
    *(v311 + 16) = v676;
    v313 = swift_allocObject();
    *(v313 + 16) = v312;
    v664 = v108;
    v314 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v315 = swift_allocObject();
    *(v315 + 16) = 64;
    v316 = swift_allocObject();
    v116 = 8;
    *(v316 + 16) = 8;
    v317 = swift_allocObject();
    *(v317 + 16) = sub_1000355A8;
    *(v317 + 24) = v311;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v317;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v318 = swift_allocObject();
    *(v318 + 16) = 8;
    v319 = swift_allocObject();
    *(v319 + 16) = sub_1000355AC;
    *(v319 + 24) = v313;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v319;
    v320 = swift_allocObject();
    *(v320 + 16) = v666;
    *(v320 + 32) = sub_1000355C4;
    *(v320 + 40) = v315;
    *(v320 + 48) = sub_1000355C4;
    *(v320 + 56) = v316;
    *(v320 + 64) = sub_100035510;
    *(v320 + 72) = v104;
    *(v320 + 80) = sub_1000355C4;
    *(v320 + 88) = v102;
    *(v320 + 96) = sub_1000355C4;
    *(v320 + 104) = v318;
    *(v320 + 112) = sub_10003550C;
    *(v320 + 120) = v117;

    v108 = v314;
    if (os_log_type_enabled(v314, v667))
    {
      v321 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v682 = v322;
      v683 = v116;
      *&v666 = v321;
      *v321 = 514;
      *&v680 = v321 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v315;
      v323 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v323)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v316;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v318;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v324 = v108;
      v325 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v325, v667, "Browse100ItemFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v322);

      sub_100047AB0();

      goto LABEL_163;
    }

LABEL_162:

LABEL_163:
    (v637)(v641, v678);
    if (v668)
    {

      v305 = v679;
      v306 = v675;
      v307 = v676;
      v308 = v671;
      v309 = v671;
      v310 = 2;
      goto LABEL_154;
    }

    __break(1u);
    goto LABEL_271;
  }

  if (v679 == v104 && 0x8000000100075130 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v326 = swift_allocObject();
    v327 = v676;
    v326[2] = v676;
    v328 = swift_allocObject();
    *(v328 + 16) = v327;
    v664 = v108;
    v329 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v330 = swift_allocObject();
    *(v330 + 16) = 64;
    v331 = swift_allocObject();
    v116 = 8;
    *(v331 + 16) = 8;
    v332 = swift_allocObject();
    *(v332 + 16) = sub_1000355A8;
    *(v332 + 24) = v326;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v332;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v333 = swift_allocObject();
    *(v333 + 16) = 8;
    v334 = swift_allocObject();
    *(v334 + 16) = sub_1000355AC;
    *(v334 + 24) = v328;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v334;
    v335 = swift_allocObject();
    *(v335 + 16) = v666;
    *(v335 + 32) = sub_1000355C4;
    *(v335 + 40) = v330;
    *(v335 + 48) = sub_1000355C4;
    *(v335 + 56) = v331;
    *(v335 + 64) = sub_100035510;
    *(v335 + 72) = v104;
    *(v335 + 80) = sub_1000355C4;
    *(v335 + 88) = v102;
    *(v335 + 96) = sub_1000355C4;
    *(v335 + 104) = v333;
    *(v335 + 112) = sub_10003550C;
    *(v335 + 120) = v117;

    v108 = v329;
    if (os_log_type_enabled(v329, v667))
    {
      v336 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v682 = v326;
      v683 = v116;
      *&v666 = v336;
      *v336 = 514;
      *&v680 = v336 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v330;
      v337 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v337)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v331;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v333;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v338 = v108;
      v339 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v339, v667, "Browse1000ItemFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v326);

      sub_100047AB0();
    }

    else
    {
    }

    (v637)(v642, v678);
    if (v668)
    {

      v305 = v679;
      v306 = v675;
      v307 = v676;
      v308 = v671;
      v309 = v671;
      v310 = 4;
      goto LABEL_154;
    }

    __break(1u);
    goto LABEL_283;
  }

  if (v679 == v104 && 0x8000000100075110 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v340 = swift_allocObject();
    v341 = v676;
    *(v340 + 16) = v676;
    v342 = swift_allocObject();
    *(v342 + 16) = v341;
    v664 = v108;
    v343 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v344 = swift_allocObject();
    *(v344 + 16) = 64;
    v345 = swift_allocObject();
    v116 = 8;
    *(v345 + 16) = 8;
    v346 = swift_allocObject();
    *(v346 + 16) = sub_1000355A8;
    *(v346 + 24) = v340;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v346;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v347 = swift_allocObject();
    *(v347 + 16) = 8;
    v348 = swift_allocObject();
    *(v348 + 16) = sub_1000355AC;
    *(v348 + 24) = v342;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v348;
    v349 = swift_allocObject();
    *(v349 + 16) = v666;
    *(v349 + 32) = sub_1000355C4;
    *(v349 + 40) = v344;
    *(v349 + 48) = sub_1000355C4;
    *(v349 + 56) = v345;
    *(v349 + 64) = sub_100035510;
    *(v349 + 72) = v104;
    *(v349 + 80) = sub_1000355C4;
    *(v349 + 88) = v102;
    *(v349 + 96) = sub_1000355C4;
    *(v349 + 104) = v347;
    *(v349 + 112) = sub_10003550C;
    *(v349 + 120) = v117;

    v108 = v343;
    if (os_log_type_enabled(v343, v667))
    {
      v350 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      v682 = v351;
      v683 = v116;
      *&v666 = v350;
      *v350 = 514;
      *&v680 = v350 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v344;
      v352 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v352)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v345;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v347;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v353 = v108;
      v354 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v354, v667, "ScrollBrowse %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v351);

      sub_100047AB0();

      goto LABEL_185;
    }

LABEL_184:

LABEL_185:
    (v637)(v643, v678);
    if (v668)
    {

      v355 = swift_allocObject();
      v356 = v669;
      v357 = v679;
      v355[2] = v669;
      v355[3] = v357;
      v182 = v676;
      v355[4] = v675;
      v355[5] = v182;
      v358 = v668;
      v355[6] = 0;
      v355[7] = v358;
      v183 = swift_allocObject();
      v183[2] = sub_100034CCC;
      v183[3] = v355;
      v183[4] = v356;
      v183[5] = v182;
      v359 = v356;
      v360 = v664;

      v361 = v359;
      v187 = v360;

      goto LABEL_92;
    }

    __break(1u);
    goto LABEL_287;
  }

  if (v679 == v104 + 14 && 0x80000001000750E0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v362 = swift_allocObject();
    v363 = v676;
    *(v362 + 16) = v676;
    v364 = swift_allocObject();
    *(v364 + 16) = v363;
    v664 = v108;
    v365 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v366 = swift_allocObject();
    *(v366 + 16) = 64;
    v367 = swift_allocObject();
    v116 = 8;
    *(v367 + 16) = 8;
    v368 = swift_allocObject();
    *(v368 + 16) = sub_1000355A8;
    *(v368 + 24) = v362;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v368;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v369 = swift_allocObject();
    *(v369 + 16) = 8;
    v370 = swift_allocObject();
    *(v370 + 16) = sub_1000355AC;
    *(v370 + 24) = v364;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v370;
    v371 = swift_allocObject();
    *(v371 + 16) = v666;
    *(v371 + 32) = sub_1000355C4;
    *(v371 + 40) = v366;
    *(v371 + 48) = sub_1000355C4;
    *(v371 + 56) = v367;
    *(v371 + 64) = sub_100035510;
    *(v371 + 72) = v104;
    *(v371 + 80) = sub_1000355C4;
    *(v371 + 88) = v102;
    *(v371 + 96) = sub_1000355C4;
    *(v371 + 104) = v369;
    *(v371 + 112) = sub_10003550C;
    *(v371 + 120) = v117;

    v108 = v365;
    if (os_log_type_enabled(v365, v667))
    {
      v372 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v373 = swift_slowAlloc();
      v682 = v373;
      v683 = v116;
      *&v666 = v372;
      *v372 = 514;
      *&v680 = v372 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v366;
      v374 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v374)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v367;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v369;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v375 = v108;
      v376 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v376, v667, "SwitchBrowseViewModeFromGridToList %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v373);

      sub_100047AB0();

      goto LABEL_195;
    }

LABEL_194:

LABEL_195:
    (v637)(v644, v678);
    if (!v668)
    {
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

    v377 = swift_allocObject();
    v378 = v669;
    v379 = v679;
    v377[2] = v669;
    v377[3] = v379;
    v380 = v676;
    v377[4] = v675;
    v377[5] = v380;
    v377[6] = 2;
    v183 = swift_allocObject();
    v183[2] = sub_1000355C8;
    v183[3] = v377;
    v183[4] = v378;
    v183[5] = v380;
    v381 = v378;
    v382 = v664;

    v383 = v381;
    v187 = v382;

LABEL_218:
    v188 = v671;
    v189 = v671;
    v190 = v380;
    goto LABEL_93;
  }

  if (v679 == v104 + 16 && 0x80000001000750B0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v384 = swift_allocObject();
    v385 = v676;
    *(v384 + 16) = v676;
    v386 = swift_allocObject();
    *(v386 + 16) = v385;
    v664 = v108;
    v387 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v388 = swift_allocObject();
    *(v388 + 16) = 64;
    v389 = swift_allocObject();
    v116 = 8;
    *(v389 + 16) = 8;
    v390 = swift_allocObject();
    *(v390 + 16) = sub_1000355A8;
    *(v390 + 24) = v384;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v390;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v391 = swift_allocObject();
    *(v391 + 16) = 8;
    v392 = swift_allocObject();
    *(v392 + 16) = sub_1000355AC;
    *(v392 + 24) = v386;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v392;
    v393 = swift_allocObject();
    *(v393 + 16) = v666;
    *(v393 + 32) = sub_1000355C4;
    *(v393 + 40) = v388;
    *(v393 + 48) = sub_1000355C4;
    *(v393 + 56) = v389;
    *(v393 + 64) = sub_100035510;
    *(v393 + 72) = v104;
    *(v393 + 80) = sub_1000355C4;
    *(v393 + 88) = v102;
    *(v393 + 96) = sub_1000355C4;
    *(v393 + 104) = v391;
    *(v393 + 112) = sub_10003550C;
    *(v393 + 120) = v117;

    v108 = v387;
    if (os_log_type_enabled(v387, v667))
    {
      v394 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v395 = swift_slowAlloc();
      v682 = v395;
      v683 = v116;
      *&v666 = v394;
      *v394 = 514;
      *&v680 = v394 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v388;
      v396 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v396)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v389;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v391;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v397 = v108;
      v398 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v398, v667, "SwitchBrowseViewModeFromGridToColumn %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v395);

      sub_100047AB0();

      goto LABEL_205;
    }

LABEL_204:

LABEL_205:
    (v637)(v645, v678);
    if (!v668)
    {
LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

    v399 = swift_allocObject();
    v400 = v669;
    v401 = v679;
    v399[2] = v669;
    v399[3] = v401;
    v380 = v676;
    v399[4] = v675;
    v399[5] = v380;
    v399[6] = 3;
    v183 = swift_allocObject();
    v183[2] = sub_1000355C8;
    v183[3] = v399;
    v183[4] = v400;
    v183[5] = v380;
    v402 = v400;
    v403 = v664;

    v404 = v402;
    v187 = v403;

    goto LABEL_218;
  }

  if (v679 == v104 + 14 && 0x8000000100075080 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v405 = swift_allocObject();
    v406 = v676;
    *(v405 + 16) = v676;
    v407 = swift_allocObject();
    *(v407 + 16) = v406;
    v664 = v108;
    v408 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v409 = swift_allocObject();
    *(v409 + 16) = 64;
    v410 = swift_allocObject();
    v116 = 8;
    *(v410 + 16) = 8;
    v411 = swift_allocObject();
    *(v411 + 16) = sub_1000355A8;
    *(v411 + 24) = v405;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v411;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v412 = swift_allocObject();
    *(v412 + 16) = 8;
    v413 = swift_allocObject();
    *(v413 + 16) = sub_1000355AC;
    *(v413 + 24) = v407;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v413;
    v414 = swift_allocObject();
    *(v414 + 16) = v666;
    *(v414 + 32) = sub_1000355C4;
    *(v414 + 40) = v409;
    *(v414 + 48) = sub_1000355C4;
    *(v414 + 56) = v410;
    *(v414 + 64) = sub_100035510;
    *(v414 + 72) = v104;
    *(v414 + 80) = sub_1000355C4;
    *(v414 + 88) = v102;
    *(v414 + 96) = sub_1000355C4;
    *(v414 + 104) = v412;
    *(v414 + 112) = sub_10003550C;
    *(v414 + 120) = v117;

    v108 = v408;
    if (os_log_type_enabled(v408, v667))
    {
      v415 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v416 = swift_slowAlloc();
      v682 = v416;
      v683 = v116;
      *&v666 = v415;
      *v415 = 514;
      *&v680 = v415 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v409;
      v417 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v417)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v410;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v412;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v418 = v108;
      v419 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v419, v667, "SwitchBrowseViewModeFromListToGrid %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v416);

      sub_100047AB0();

      goto LABEL_216;
    }

LABEL_215:

LABEL_216:
    (v637)(v646, v678);
    if (!v668)
    {
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v420 = swift_allocObject();
    v421 = v669;
    v422 = v679;
    v420[2] = v669;
    v420[3] = v422;
    v380 = v676;
    v420[4] = v675;
    v420[5] = v380;
    v420[6] = 0;
    v183 = swift_allocObject();
    v183[2] = sub_100034C9C;
    v183[3] = v420;
    v183[4] = v421;
    v183[5] = v380;
    v423 = v421;
    v424 = v664;

    v425 = v423;
    v187 = v424;

    goto LABEL_218;
  }

  if (v679 == v102 && 0x8000000100075060 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v426 = swift_allocObject();
    v427 = v676;
    *(v426 + 16) = v676;
    v428 = swift_allocObject();
    *(v428 + 16) = v427;
    v664 = v108;
    v429 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v430 = swift_allocObject();
    *(v430 + 16) = 64;
    v431 = swift_allocObject();
    v116 = 8;
    *(v431 + 16) = 8;
    v432 = swift_allocObject();
    *(v432 + 16) = sub_1000355A8;
    *(v432 + 24) = v426;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v432;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v433 = swift_allocObject();
    *(v433 + 16) = 8;
    v434 = swift_allocObject();
    *(v434 + 16) = sub_1000355AC;
    *(v434 + 24) = v428;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v434;
    v435 = swift_allocObject();
    *(v435 + 16) = v666;
    *(v435 + 32) = sub_1000355C4;
    *(v435 + 40) = v430;
    *(v435 + 48) = sub_1000355C4;
    *(v435 + 56) = v431;
    *(v435 + 64) = sub_100035510;
    *(v435 + 72) = v104;
    *(v435 + 80) = sub_1000355C4;
    *(v435 + 88) = v102;
    *(v435 + 96) = sub_1000355C4;
    *(v435 + 104) = v433;
    *(v435 + 112) = sub_10003550C;
    *(v435 + 120) = v117;

    v108 = v429;
    if (os_log_type_enabled(v429, v667))
    {
      v436 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v437 = swift_slowAlloc();
      v682 = v437;
      v683 = v116;
      *&v666 = v436;
      *v436 = 514;
      *&v680 = v436 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v430;
      v438 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v438)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v431;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v433;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v439 = v108;
      v440 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v440, v667, "Browse300ItemFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v437);

      sub_100047AB0();

LABEL_228:
      (v637)(v647, v678);
      if (v668)
      {

        v305 = v679;
        v306 = v675;
        v307 = v676;
        v308 = v671;
        v309 = v671;
        v310 = 3;
        goto LABEL_154;
      }

      goto LABEL_290;
    }

LABEL_227:

    goto LABEL_228;
  }

  if (v679 == v104 + 2 && 0x8000000100075040 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v441 = swift_allocObject();
    v442 = v676;
    *(v441 + 16) = v676;
    v443 = swift_allocObject();
    *(v443 + 16) = v442;
    v664 = v108;
    v444 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v445 = swift_allocObject();
    *(v445 + 16) = 64;
    v446 = swift_allocObject();
    v116 = 8;
    *(v446 + 16) = 8;
    v447 = swift_allocObject();
    *(v447 + 16) = sub_1000355A8;
    *(v447 + 24) = v441;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v447;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v448 = swift_allocObject();
    *(v448 + 16) = 8;
    v449 = swift_allocObject();
    *(v449 + 16) = sub_1000355AC;
    *(v449 + 24) = v443;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v449;
    v450 = swift_allocObject();
    *(v450 + 16) = v666;
    *(v450 + 32) = sub_1000355C4;
    *(v450 + 40) = v445;
    *(v450 + 48) = sub_1000355C4;
    *(v450 + 56) = v446;
    *(v450 + 64) = sub_100035510;
    *(v450 + 72) = v104;
    *(v450 + 80) = sub_1000355C4;
    *(v450 + 88) = v102;
    *(v450 + 96) = sub_1000355C4;
    *(v450 + 104) = v448;
    *(v450 + 112) = sub_10003550C;
    *(v450 + 120) = v117;

    v108 = v444;
    if (os_log_type_enabled(v444, v667))
    {
      v451 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v452 = swift_slowAlloc();
      v682 = v452;
      v683 = v116;
      *&v666 = v451;
      *v451 = 514;
      *&v680 = v451 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v445;
      v453 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v453)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v446;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v448;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v454 = v108;
      v455 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v455, v667, "BrowseSMB300ItemFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v452);

      sub_100047AB0();

      goto LABEL_238;
    }

LABEL_237:

LABEL_238:
    (v637)(v648, v678);
    if (v668)
    {

      v456 = &DOCDocumentSourceIdentifierSMBFileProvider;
LABEL_240:
      v457 = *v456;
      v458 = v679;
      v459 = v675;
      v460 = v676;
      v461 = 3;
LABEL_241:
      sub_100030D04(v458, v459, v457, v460, 0, v461);
      goto LABEL_131;
    }

    goto LABEL_291;
  }

  if (v679 == v104 + 2 && 0x8000000100075020 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v462 = swift_allocObject();
    v463 = v676;
    *(v462 + 16) = v676;
    v464 = swift_allocObject();
    *(v464 + 16) = v463;
    v664 = v108;
    v465 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v466 = swift_allocObject();
    *(v466 + 16) = 64;
    v467 = swift_allocObject();
    v116 = 8;
    *(v467 + 16) = 8;
    v468 = swift_allocObject();
    *(v468 + 16) = sub_1000355A8;
    *(v468 + 24) = v462;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v468;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v469 = swift_allocObject();
    *(v469 + 16) = 8;
    v470 = swift_allocObject();
    *(v470 + 16) = sub_1000355AC;
    *(v470 + 24) = v464;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v470;
    v471 = swift_allocObject();
    *(v471 + 16) = v666;
    *(v471 + 32) = sub_1000355C4;
    *(v471 + 40) = v466;
    *(v471 + 48) = sub_1000355C4;
    *(v471 + 56) = v467;
    *(v471 + 64) = sub_100035510;
    *(v471 + 72) = v104;
    *(v471 + 80) = sub_1000355C4;
    *(v471 + 88) = v102;
    *(v471 + 96) = sub_1000355C4;
    *(v471 + 104) = v469;
    *(v471 + 112) = sub_10003550C;
    *(v471 + 120) = v117;

    v108 = v465;
    if (os_log_type_enabled(v465, v667))
    {
      v472 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v473 = swift_slowAlloc();
      v682 = v473;
      v683 = v116;
      *&v666 = v472;
      *v472 = 514;
      *&v680 = v472 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v466;
      v474 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v474)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v467;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v469;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v475 = v108;
      v476 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v476, v667, "BrowseUSB300ItemFolder %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v473);

      sub_100047AB0();

      goto LABEL_250;
    }

LABEL_249:

LABEL_250:
    (v637)(v649, v678);
    if (v668)
    {

      v456 = &DOCDocumentSourceIdentifierExternalDeviceFileProvider;
      goto LABEL_240;
    }

    goto LABEL_292;
  }

  if (v679 == v104 + 6 && 0x8000000100075000 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v477 = swift_allocObject();
    v478 = v676;
    *(v477 + 16) = v676;
    v479 = swift_allocObject();
    *(v479 + 16) = v478;
    v664 = v108;
    v480 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v481 = swift_allocObject();
    *(v481 + 16) = 64;
    v482 = swift_allocObject();
    v116 = 8;
    *(v482 + 16) = 8;
    v483 = swift_allocObject();
    *(v483 + 16) = sub_1000355A8;
    *(v483 + 24) = v477;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v483;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v484 = swift_allocObject();
    *(v484 + 16) = 8;
    v485 = swift_allocObject();
    *(v485 + 16) = sub_1000355AC;
    *(v485 + 24) = v479;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v485;
    v486 = swift_allocObject();
    *(v486 + 16) = v666;
    *(v486 + 32) = sub_1000355C4;
    *(v486 + 40) = v481;
    *(v486 + 48) = sub_1000355C4;
    *(v486 + 56) = v482;
    *(v486 + 64) = sub_100035510;
    *(v486 + 72) = v104;
    *(v486 + 80) = sub_1000355C4;
    *(v486 + 88) = v102;
    *(v486 + 96) = sub_1000355C4;
    *(v486 + 104) = v484;
    *(v486 + 112) = sub_10003550C;
    *(v486 + 120) = v117;

    v108 = v480;
    if (os_log_type_enabled(v480, v667))
    {
      v487 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v488 = swift_slowAlloc();
      v682 = v488;
      v683 = v116;
      *&v666 = v487;
      *v487 = 514;
      *&v680 = v487 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v481;
      v489 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v489)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v482;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v484;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v490 = v108;
      v491 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v491, v667, "SwitchLocationToiCloudTest %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v488);

      sub_100047AB0();

      goto LABEL_260;
    }

LABEL_259:

LABEL_260:
    (v637)(v650, v678);
    if (!v668)
    {
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
      goto LABEL_295;
    }

    v492 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v493 = swift_allocObject();
    v494 = v669;
    v495 = v679;
    v493[2] = v669;
    v493[3] = v495;
    v496 = v676;
    v493[4] = v675;
    v493[5] = v496;

    v497 = v494;
    v498 = v664;
    sub_1000144AC(v492, v496, sub_100035508, v493);

    goto LABEL_262;
  }

  if (v679 == v103 && 0x8000000100074FE0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v499 = swift_allocObject();
    v500 = v676;
    *(v499 + 16) = v676;
    v501 = swift_allocObject();
    *(v501 + 16) = v500;
    v664 = v108;
    v502 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v503 = swift_allocObject();
    *(v503 + 16) = 64;
    v504 = swift_allocObject();
    v116 = 8;
    *(v504 + 16) = 8;
    v505 = swift_allocObject();
    *(v505 + 16) = sub_1000355A8;
    *(v505 + 24) = v499;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v505;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v506 = swift_allocObject();
    *(v506 + 16) = 8;
    v507 = swift_allocObject();
    *(v507 + 16) = sub_1000355AC;
    *(v507 + 24) = v501;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v507;
    v508 = swift_allocObject();
    *(v508 + 16) = v666;
    *(v508 + 32) = sub_1000355C4;
    *(v508 + 40) = v503;
    *(v508 + 48) = sub_1000355C4;
    *(v508 + 56) = v504;
    *(v508 + 64) = sub_100035510;
    *(v508 + 72) = v104;
    *(v508 + 80) = sub_1000355C4;
    *(v508 + 88) = v102;
    *(v508 + 96) = sub_1000355C4;
    *(v508 + 104) = v506;
    *(v508 + 112) = sub_10003550C;
    *(v508 + 120) = v117;

    v108 = v502;
    if (os_log_type_enabled(v502, v667))
    {
      v509 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v510 = swift_slowAlloc();
      v682 = v510;
      v683 = v116;
      *&v666 = v509;
      *v509 = 514;
      *&v680 = v509 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v503;
      v511 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v511)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v504;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v506;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v512 = v108;
      v513 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v513, v667, "SwitchLocationToSMBTest %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v510);

      sub_100047AB0();

      goto LABEL_272;
    }

LABEL_271:

LABEL_272:
    (v637)(v651, v678);
    if (v668)
    {

      v457 = DOCDocumentSourceIdentifierSMBFileProvider;
      v458 = v679;
      v459 = v675;
      v460 = v676;
      v461 = 5;
      goto LABEL_241;
    }

    goto LABEL_294;
  }

  if (v679 == v103 && 0x8000000100074FC0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v326 = swift_allocObject();
    v514 = v676;
    v326[2] = v676;
    v515 = swift_allocObject();
    *(v515 + 16) = v514;
    v664 = v108;
    v516 = Logger.logObject.getter();
    LODWORD(v667) = static os_log_type_t.debug.getter();
    v517 = swift_allocObject();
    *(v517 + 16) = 64;
    v518 = swift_allocObject();
    v116 = 8;
    *(v518 + 16) = 8;
    v519 = swift_allocObject();
    *(v519 + 16) = sub_1000355A8;
    *(v519 + 24) = v326;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v519;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v520 = swift_allocObject();
    *(v520 + 16) = 8;
    v521 = swift_allocObject();
    *(v521 + 16) = sub_1000355AC;
    *(v521 + 24) = v515;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v521;
    v522 = swift_allocObject();
    *(v522 + 16) = v666;
    *(v522 + 32) = sub_1000355C4;
    *(v522 + 40) = v517;
    *(v522 + 48) = sub_1000355C4;
    *(v522 + 56) = v518;
    *(v522 + 64) = sub_100035510;
    *(v522 + 72) = v104;
    *(v522 + 80) = sub_1000355C4;
    *(v522 + 88) = v102;
    *(v522 + 96) = sub_1000355C4;
    *(v522 + 104) = v520;
    *(v522 + 112) = sub_10003550C;
    *(v522 + 120) = v117;

    v108 = v516;
    if (os_log_type_enabled(v516, v667))
    {
      v523 = sub_100047A6C();
      v116 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v682 = v326;
      v683 = v116;
      *&v666 = v523;
      *v523 = 514;
      *&v680 = v523 + 1;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v517;
      v524 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v524)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v518;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v102;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v520;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v525 = v108;
      v526 = v108;
      v108 = v666;
      _os_log_impl(&_mh_execute_header, v526, v667, "SwitchLocationToUSBTest %@ %s", v666, 0x16u);
      sub_100005A04(v116, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v326);

      sub_100047AB0();

      goto LABEL_284;
    }

LABEL_283:

LABEL_284:
    (v637)(v652, v678);
    if (!v668)
    {
      __break(1u);
      goto LABEL_302;
    }

    v527 = DOCDocumentSourceIdentifierExternalDeviceFileProvider;
    v528 = swift_allocObject();
    v529 = v669;
    v530 = v679;
    v528[2] = v669;
    v528[3] = v530;
    v531 = v676;
    v528[4] = v675;
    v528[5] = v531;

    v532 = v529;
    v498 = v664;
    sub_1000144AC(v527, v531, sub_100034C90, v528);
LABEL_262:

    goto LABEL_52;
  }

LABEL_295:
  v326 = (v104 - 2);
  if (v679 == v104 - 2 && 0x8000000100074FA0 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v326 = swift_allocObject();
    v533 = v676;
    v326[2] = v676;
    v534 = swift_allocObject();
    *(v534 + 16) = v533;
    v663 = v108;
    v535 = Logger.logObject.getter();
    LODWORD(v664) = static os_log_type_t.debug.getter();
    v536 = swift_allocObject();
    *(v536 + 16) = 64;
    v537 = swift_allocObject();
    *(v537 + 16) = 8;
    v538 = swift_allocObject();
    *(v538 + 16) = sub_1000355A8;
    *(v538 + 24) = v326;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v538;
    v539 = swift_allocObject();
    *(v539 + 16) = 32;
    v540 = swift_allocObject();
    *(v540 + 16) = 8;
    v541 = swift_allocObject();
    *(v541 + 16) = sub_1000355AC;
    *(v541 + 24) = v534;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_100035528;
    *(v117 + 24) = v541;
    v108 = swift_allocObject();
    *(v108 + 1) = v666;
    *(v108 + 4) = sub_1000355C4;
    *(v108 + 5) = v536;
    *(v108 + 6) = sub_1000355C4;
    *(v108 + 7) = v537;
    *(v108 + 8) = sub_100035510;
    *(v108 + 9) = v104;
    *(v108 + 10) = sub_1000355C4;
    *(v108 + 11) = v539;
    *(v108 + 12) = sub_1000355C4;
    *(v108 + 13) = v540;
    *(v108 + 14) = sub_10003550C;
    *(v108 + 15) = v117;

    v667 = v535;
    if (os_log_type_enabled(v535, v664))
    {
      v108 = sub_100047A6C();
      v542 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v682 = v326;
      v683 = v542;
      *v108 = 514;
      *&v680 = v108 + 2;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v536;
      v543 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v543)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v537;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v539;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v540;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v117;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v544 = v667;
      _os_log_impl(&_mh_execute_header, v667, v664, "OpenQuickLookImage %@ %s", v108, 0x16u);
      sub_100005A04(v542, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v326);

      sub_100047AB0();
    }

    else
    {
    }

    (v637)(v653, v678);
    if (v668)
    {

      v558 = DOCDocumentSourceIdentifierLocal;
      v559 = v679;
      v560 = v675;
      v561 = v676;
      v562 = v668;
      v563 = 6;
LABEL_321:
      sub_10001DC5C(v559, v560, v562, v558, v561, 0, v563);
      v273 = &v686 + 1;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_323;
  }

LABEL_302:
  if (v679 == v116 && 0x8000000100074F80 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v326 = swift_allocObject();
    v545 = v676;
    v326[2] = v676;
    v546 = swift_allocObject();
    *(v546 + 16) = v545;
    v663 = v108;
    v547 = Logger.logObject.getter();
    LODWORD(v664) = static os_log_type_t.debug.getter();
    v548 = swift_allocObject();
    *(v548 + 16) = 64;
    v549 = swift_allocObject();
    *(v549 + 16) = 8;
    v550 = swift_allocObject();
    *(v550 + 16) = sub_1000355A8;
    *(v550 + 24) = v326;
    v104 = swift_allocObject();
    *(v104 + 2) = sub_10003552C;
    *(v104 + 3) = v550;
    v551 = swift_allocObject();
    *(v551 + 16) = 32;
    v552 = swift_allocObject();
    *(v552 + 16) = 8;
    v553 = swift_allocObject();
    *(v553 + 16) = sub_1000355AC;
    *(v553 + 24) = v546;
    v554 = swift_allocObject();
    *(v554 + 16) = sub_100035528;
    *(v554 + 24) = v553;
    v108 = swift_allocObject();
    *(v108 + 1) = v666;
    *(v108 + 4) = sub_1000355C4;
    *(v108 + 5) = v548;
    *(v108 + 6) = sub_1000355C4;
    *(v108 + 7) = v549;
    *(v108 + 8) = sub_100035510;
    *(v108 + 9) = v104;
    *(v108 + 10) = sub_1000355C4;
    *(v108 + 11) = v551;
    *(v108 + 12) = sub_1000355C4;
    *(v108 + 13) = v552;
    *(v108 + 14) = sub_10003550C;
    *(v108 + 15) = v554;

    v667 = v547;
    if (os_log_type_enabled(v547, v664))
    {
      v108 = sub_100047A6C();
      v555 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v682 = v326;
      v683 = v555;
      *v108 = 514;
      *&v680 = v108 + 2;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v548;
      v556 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v556)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v549;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v104;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v551;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v552;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v554;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v557 = v667;
      _os_log_impl(&_mh_execute_header, v667, v664, "OpenQuickLookPDF %@ %s", v108, 0x16u);
      sub_100005A04(v555, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v326);

      sub_100047AB0();
    }

    else
    {
    }

    (v637)(v654, v678);
    if (v668)
    {

      v558 = DOCDocumentSourceIdentifierLocal;
      v559 = v679;
      v560 = v675;
      v561 = v676;
      v562 = v668;
      v563 = 7;
      goto LABEL_321;
    }

    __break(1u);
    goto LABEL_333;
  }

  if (v679 == v102 && 0x8000000100074F60 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v326 = swift_allocObject();
    v564 = v676;
    v326[2] = v676;
    v565 = swift_allocObject();
    *(v565 + 16) = v564;
    v663 = v108;
    v566 = Logger.logObject.getter();
    LODWORD(v664) = static os_log_type_t.debug.getter();
    v567 = swift_allocObject();
    *(v567 + 16) = 64;
    v568 = swift_allocObject();
    *(v568 + 16) = 8;
    v569 = swift_allocObject();
    *(v569 + 16) = sub_1000355A8;
    *(v569 + 24) = v326;
    v570 = swift_allocObject();
    *(v570 + 16) = sub_10003552C;
    *(v570 + 24) = v569;
    v571 = swift_allocObject();
    *(v571 + 16) = 32;
    v572 = swift_allocObject();
    *(v572 + 16) = 8;
    v573 = swift_allocObject();
    *(v573 + 16) = sub_1000355AC;
    *(v573 + 24) = v565;
    v574 = swift_allocObject();
    *(v574 + 16) = sub_100035528;
    *(v574 + 24) = v573;
    v108 = swift_allocObject();
    *(v108 + 1) = v666;
    *(v108 + 4) = sub_1000355C4;
    *(v108 + 5) = v567;
    *(v108 + 6) = sub_1000355C4;
    *(v108 + 7) = v568;
    *(v108 + 8) = sub_100035510;
    *(v108 + 9) = v570;
    *(v108 + 10) = sub_1000355C4;
    *(v108 + 11) = v571;
    *(v108 + 12) = sub_1000355C4;
    *(v108 + 13) = v572;
    *(v108 + 14) = sub_10003550C;
    *(v108 + 15) = v574;

    v667 = v566;
    if (os_log_type_enabled(v566, v664))
    {
      v108 = sub_100047A6C();
      v575 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v682 = v326;
      v683 = v575;
      *v108 = 514;
      *&v680 = v108 + 2;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v567;
      v576 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v576)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v568;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v570;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v571;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v572;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v574;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v577 = v667;
      _os_log_impl(&_mh_execute_header, v667, v664, "CloseQuickLookImage %@ %s", v108, 0x16u);
      sub_100005A04(v575, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v326);

      sub_100047AB0();
    }

    else
    {
    }

    (v637)(v655, v678);
    if (v668)
    {

      v594 = DOCDocumentSourceIdentifierLocal;
      v595 = v679;
      v596 = v675;
      v597 = v676;
      v598 = v668;
      v599 = 6;
LABEL_342:
      sub_10001E3D8(v595, v596, v598, v594, v597, 0, v599);
      v273 = &v686 + 1;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_344;
  }

LABEL_323:
  if (v679 == v117 && 0x8000000100074F40 == v675 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v578 = swift_allocObject();
    v579 = v676;
    *(v578 + 16) = v676;
    v580 = swift_allocObject();
    *(v580 + 16) = v579;
    v663 = v108;
    v581 = Logger.logObject.getter();
    LODWORD(v664) = static os_log_type_t.debug.getter();
    v582 = swift_allocObject();
    *(v582 + 16) = 64;
    v583 = swift_allocObject();
    *(v583 + 16) = 8;
    v584 = swift_allocObject();
    *(v584 + 16) = sub_1000355A8;
    *(v584 + 24) = v578;
    v585 = swift_allocObject();
    *(v585 + 16) = sub_10003552C;
    *(v585 + 24) = v584;
    v586 = swift_allocObject();
    *(v586 + 16) = 32;
    v587 = swift_allocObject();
    *(v587 + 16) = 8;
    v588 = swift_allocObject();
    *(v588 + 16) = sub_1000355AC;
    *(v588 + 24) = v580;
    v589 = swift_allocObject();
    *(v589 + 16) = sub_100035528;
    *(v589 + 24) = v588;
    v108 = swift_allocObject();
    *(v108 + 1) = v666;
    *(v108 + 4) = sub_1000355C4;
    *(v108 + 5) = v582;
    *(v108 + 6) = sub_1000355C4;
    *(v108 + 7) = v583;
    *(v108 + 8) = sub_100035510;
    *(v108 + 9) = v585;
    *(v108 + 10) = sub_1000355C4;
    *(v108 + 11) = v586;
    *(v108 + 12) = sub_1000355C4;
    *(v108 + 13) = v587;
    *(v108 + 14) = sub_10003550C;
    *(v108 + 15) = v589;

    v667 = v581;
    if (!os_log_type_enabled(v581, v664))
    {

      goto LABEL_340;
    }

    v108 = sub_100047A6C();
    v590 = swift_slowAlloc();
    v591 = swift_slowAlloc();
    v682 = v591;
    v683 = v590;
    *v108 = 514;
    *&v680 = v108 + 2;
    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v582;
    v592 = v674;
    sub_100047A74(&v685, &v680, &v683, &v682);
    if (!v592)
    {

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v583;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100035510;
      *(&v685 + 1) = v585;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v586;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v587;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v589;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v593 = v667;
      _os_log_impl(&_mh_execute_header, v667, v664, "CloseQuickLookPDF %@ %s", v108, 0x16u);
      sub_100005A04(v590, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v591);

      sub_100047AB0();

LABEL_340:
      (v637)(v656, v678);
      if (v668)
      {

        v594 = DOCDocumentSourceIdentifierLocal;
        v595 = v679;
        v596 = v675;
        v597 = v676;
        v598 = v668;
        v599 = 7;
        goto LABEL_342;
      }

      __break(1u);
      goto LABEL_355;
    }

LABEL_213:

    while (1)
    {

      __break(1u);
    }
  }

LABEL_333:
  if ((v679 != v104 + 5 || 0x8000000100074F20 != v675) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_344:
    if ((v679 != v326 || 0x8000000100074F00 != v675) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_355:

      v121 = String._bridgeToObjectiveC()();
      v106 = v638;
      v112 = v670;
      goto LABEL_38;
    }

    static Logger.Tests.getter();
    v618 = swift_allocObject();
    v619 = v676;
    *(v618 + 16) = v676;
    v620 = swift_allocObject();
    *(v620 + 16) = v619;
    v663 = v108;
    v621 = Logger.logObject.getter();
    LODWORD(v664) = static os_log_type_t.debug.getter();
    v622 = swift_allocObject();
    *(v622 + 16) = 64;
    v623 = swift_allocObject();
    *(v623 + 16) = 8;
    v624 = swift_allocObject();
    *(v624 + 16) = sub_1000355A8;
    *(v624 + 24) = v618;
    v625 = swift_allocObject();
    *(v625 + 16) = sub_100034C80;
    *(v625 + 24) = v624;
    v626 = swift_allocObject();
    *(v626 + 16) = 32;
    v627 = swift_allocObject();
    *(v627 + 16) = 8;
    v628 = swift_allocObject();
    *(v628 + 16) = sub_1000355AC;
    *(v628 + 24) = v620;
    v629 = swift_allocObject();
    *(v629 + 16) = sub_100035528;
    *(v629 + 24) = v628;
    v630 = swift_allocObject();
    *(v630 + 16) = v666;
    *(v630 + 32) = sub_1000355C4;
    *(v630 + 40) = v622;
    *(v630 + 48) = sub_1000355C4;
    *(v630 + 56) = v623;
    *(v630 + 64) = sub_100034C88;
    *(v630 + 72) = v625;
    *(v630 + 80) = sub_1000355C4;
    *(v630 + 88) = v626;
    *(v630 + 96) = sub_1000355C4;
    *(v630 + 104) = v627;
    *(v630 + 112) = sub_10003550C;
    *(v630 + 120) = v629;

    v667 = v621;
    if (os_log_type_enabled(v621, v664))
    {
      v631 = sub_100047A6C();
      v632 = swift_slowAlloc();
      v633 = swift_slowAlloc();
      v682 = v633;
      v683 = v632;
      *v631 = 514;
      *&v680 = v631 + 2;
      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v622;
      v634 = v674;
      sub_100047A74(&v685, &v680, &v683, &v682);
      if (v634)
      {
        goto LABEL_213;
      }

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v623;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_100034C88;
      *(&v685 + 1) = v625;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v626;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_1000355C4;
      *(&v685 + 1) = v627;
      sub_100047A74(&v685, &v680, &v683, &v682);

      *&v685 = sub_10003550C;
      *(&v685 + 1) = v629;
      sub_100047A74(&v685, &v680, &v683, &v682);

      v635 = v667;
      _os_log_impl(&_mh_execute_header, v667, v664, "ZoomQuickLookImage %@ %s", v631, 0x16u);
      sub_100005A04(v632, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v633);

      sub_100047AB0();
    }

    else
    {
    }

    result = (v637)(v658, v678);
    if (v668)
    {

      sub_10001FD94(v679, v675, v668, DOCDocumentSourceIdentifierLocal, v676, 0, 6);
      v273 = &v686 + 1;
      goto LABEL_132;
    }

    goto LABEL_361;
  }

  static Logger.Tests.getter();
  v600 = swift_allocObject();
  v601 = v676;
  *(v600 + 16) = v676;
  v602 = swift_allocObject();
  *(v602 + 16) = v601;
  v663 = v108;
  v603 = Logger.logObject.getter();
  LODWORD(v664) = static os_log_type_t.debug.getter();
  v604 = swift_allocObject();
  *(v604 + 16) = 64;
  v605 = swift_allocObject();
  *(v605 + 16) = 8;
  v606 = swift_allocObject();
  *(v606 + 16) = sub_1000355A8;
  *(v606 + 24) = v600;
  v607 = swift_allocObject();
  *(v607 + 16) = sub_10003552C;
  *(v607 + 24) = v606;
  v608 = swift_allocObject();
  *(v608 + 16) = 32;
  v609 = swift_allocObject();
  *(v609 + 16) = 8;
  v610 = swift_allocObject();
  *(v610 + 16) = sub_1000355AC;
  *(v610 + 24) = v602;
  v611 = swift_allocObject();
  *(v611 + 16) = sub_100035528;
  *(v611 + 24) = v610;
  v612 = swift_allocObject();
  *(v612 + 16) = v666;
  *(v612 + 32) = sub_1000355C4;
  *(v612 + 40) = v604;
  *(v612 + 48) = sub_1000355C4;
  *(v612 + 56) = v605;
  *(v612 + 64) = sub_100035510;
  *(v612 + 72) = v607;
  *(v612 + 80) = sub_1000355C4;
  *(v612 + 88) = v608;
  *(v612 + 96) = sub_1000355C4;
  *(v612 + 104) = v609;
  *(v612 + 112) = sub_10003550C;
  *(v612 + 120) = v611;

  v667 = v603;
  if (os_log_type_enabled(v603, v664))
  {
    v613 = sub_100047A6C();
    v614 = swift_slowAlloc();
    v615 = swift_slowAlloc();
    v682 = v615;
    v683 = v614;
    *v613 = 514;
    *&v680 = v613 + 2;
    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v604;
    v616 = v674;
    sub_100047A74(&v685, &v680, &v683, &v682);
    if (v616)
    {
      goto LABEL_213;
    }

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v605;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_100035510;
    *(&v685 + 1) = v607;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v608;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_1000355C4;
    *(&v685 + 1) = v609;
    sub_100047A74(&v685, &v680, &v683, &v682);

    *&v685 = sub_10003550C;
    *(&v685 + 1) = v611;
    sub_100047A74(&v685, &v680, &v683, &v682);

    v617 = v667;
    _os_log_impl(&_mh_execute_header, v667, v664, "SwipeQuickLookPDFAndImage %@ %s", v613, 0x16u);
    sub_100005A04(v614, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v615);

    sub_100047AB0();
  }

  else
  {
  }

  result = (v637)(v657, v678);
  if (v668)
  {

    sub_10001F1B8(v679, v675, v668, DOCDocumentSourceIdentifierLocal, v676, 0, 8);
    v273 = &v686 + 1;
    goto LABEL_132;
  }

  __break(1u);
LABEL_361:
  __break(1u);
  return result;
}

uint64_t sub_10002C7E0(void *a1)
{
  [a1 tabBarController];
  sub_10000DB4C(&qword_100093890, &qword_1000740A8);
  return String.init<A>(describing:)();
}

id sub_10002C8E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002C9E4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_10001B45C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *v7, v7[1]);
}

void sub_10002CAB8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10001C634(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_10002CB70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unsigned __int8 *sub_10002CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002D18C();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10002D18C()
{
  v0 = String.subscript.getter();
  v4 = sub_10002D20C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10002D20C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000607C(v9, 0);
  v12 = sub_10002D364(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10002D364(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10002D584(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10002D584(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10002D584(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10002D600(uint64_t a1, unint64_t a2, void *a3, unsigned int a4, unsigned int a5, void *a6)
{
  v84 = a6;
  v85 = a4;
  v86 = a5;
  v88 = a1;
  v83 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v83 - 8);
  v8 = *(v82 + 64);
  __chkstk_darwin(v83);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  v10 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v74);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for DispatchTime();
  v76 = *(v77 - 8);
  v16 = *(v76 + 64);
  v17 = __chkstk_darwin(v77);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = &v73 - v20;
  v21 = type metadata accessor for Logger();
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v73 - v27;
  __chkstk_darwin(v26);
  v30 = &v73 - v29;
  v96[3] = type metadata accessor for DOCItemCollectionViewController();
  v96[4] = &off_100089BD0;
  v96[0] = a3;
  v31 = a3;
  v32 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
  if ((dispatch thunk of DOCItemCollectionViewController.gatheringThumbnails.getter() & 1) == 0)
  {
    [v32 layoutIfNeeded];
    [v32 contentSize];
    if (v38 >= 20.0)
    {
      static Logger.Tests.getter();
      v39 = v32;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      v62 = os_log_type_enabled(v60, v61);
      v63 = v85;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 67109632;
        *(v64 + 4) = v63;
        *(v64 + 8) = 1024;
        *(v64 + 10) = v86;
        *(v64 + 14) = 2048;
        [v39 contentSize];
        *(v64 + 16) = v65;
        _os_log_impl(&_mh_execute_header, v60, v61, "performing scroll test. %d iterations, %d delta, content size is %f", v64, 0x18u);
      }

      (*(v87 + 8))(v25, v21);
      aBlock = v88;
      v90 = a2;
      *&v95[0] = 0x6C61727574614ELL;
      *(&v95[0] + 1) = 0xE700000000000000;
      sub_10000A1D0();
      if (StringProtocol.contains<A>(_:)())
      {
        v66 = objc_opt_self();
        if ([v66 isRecapAvailable])
        {
          v67 = objc_allocWithZone(RPTScrollViewTestParameters);

          v68 = v39;
          v69 = String._bridgeToObjectiveC()();

          v70 = [v67 initWithTestName:v69 scrollView:v68 completionHandler:0];

          [v66 runTestWithParameters:v70];
          return sub_100034948(v96);
        }
      }

      [v39 _effectiveContentInset];
      [v39 setContentOffset:{0.0, -v71}];
      v45 = String._bridgeToObjectiveC()();
      [v39 _performScrollTest:v45 iterations:v63 delta:v86];
    }

    else
    {
      static Logger.Tests.getter();
      v39 = v32;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v43 = v39;
        v44 = v39;
        _os_log_impl(&_mh_execute_header, v40, v41, "Cannot perform scroll test on empty collection view %@", v42, 0xCu);
        sub_100005A04(v43, &qword_1000937D0, &unk_1000743F0);
      }

      (*(v87 + 8))(v28, v21);
      v45 = String._bridgeToObjectiveC()();
      [v84 failedTest:v45];
    }

    return sub_100034948(v96);
  }

  v73 = v32;
  static Logger.Tests.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v21;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_100005D28(v88, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "waiting before starting test %s. items or thumbnails still gathering", v35, 0xCu);
    sub_100034948(v37);

    (*(v87 + 8))(v30, v36);
  }

  else
  {

    (*(v87 + 8))(v30, v21);
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v87 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v15 = 1;
  v46 = v74;
  (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v74);
  v47 = v75;
  + infix(_:_:)();
  (*(v12 + 8))(v15, v46);
  v48 = *(v76 + 8);
  v49 = v77;
  v48(v19, v77);
  sub_100034994(v96, v95);
  v50 = swift_allocObject();
  v51 = v84;
  v52 = v88;
  *(v50 + 16) = v84;
  *(v50 + 24) = v52;
  *(v50 + 32) = a2;
  sub_1000349F8(v95, v50 + 40);
  v53 = v86;
  *(v50 + 80) = v85;
  *(v50 + 84) = v53;
  v93 = sub_100034A10;
  v94 = v50;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_100002DB0;
  v92 = &unk_10008AA70;
  v54 = _Block_copy(&aBlock);

  v55 = v51;

  v56 = v78;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v57 = v80;
  v58 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v87;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v54);

  (*(v82 + 8))(v57, v58);
  (*(v79 + 8))(v56, v81);
  v48(v47, v49);
  return sub_100034948(v96);
}

uint64_t sub_10002E08C(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v89 = a6;
  v90 = a4;
  v91 = a5;
  v94 = a1;
  v88 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v88 - 8);
  v11 = *(v87 + 64);
  __chkstk_darwin(v88);
  v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  v13 = *(v84 + 64);
  __chkstk_darwin(v86);
  v83 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchTimeInterval();
  v78 = *(v79 - 8);
  v15 = *(v78 + 64);
  __chkstk_darwin(v79);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for DispatchTime();
  v81 = *(v82 - 8);
  v18 = *(v81 + 64);
  v19 = __chkstk_darwin(v82);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v80 = &v77 - v22;
  v23 = type metadata accessor for Logger();
  v92 = *(v23 - 8);
  v93 = v23;
  v24 = *(v92 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v77 - v29;
  __chkstk_darwin(v28);
  v32 = &v77 - v31;
  v102[3] = a7;
  v102[4] = a8;
  sub_10000AE7C(v102);
  (*(*(a7 - 8) + 16))();
  v33 = (*(a8 + 16))(a7, a8);
  if ((*(a8 + 8))(a7, a8))
  {
    [v33 layoutIfNeeded];
    [v33 contentSize];
    if (v34 < 20.0)
    {
      static Logger.Tests.getter();
      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v39 = v35;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "Cannot perform scroll test on empty collection view %@", v38, 0xCu);
        sub_100005A04(v39, &qword_1000937D0, &unk_1000743F0);
      }

      (*(v92 + 8))(v30, v93);
      v41 = String._bridgeToObjectiveC()();
      [v89 failedTest:v41];
      goto LABEL_16;
    }

    static Logger.Tests.getter();
    v35 = v33;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = a2;
    v52 = v90;
    v51 = v91;
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 67109632;
      *(v53 + 4) = v52;
      *(v53 + 8) = 1024;
      *(v53 + 10) = v51;
      *(v53 + 14) = 2048;
      [v35 contentSize];
      *(v53 + 16) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "performing scroll test. %d iterations, %d delta, content size is %f", v53, 0x18u);
    }

    (*(v92 + 8))(v27, v93);
    aBlock = v94;
    v96 = v50;
    *&v101[0] = 0x6C61727574614ELL;
    *(&v101[0] + 1) = 0xE700000000000000;
    sub_10000A1D0();
    if ((StringProtocol.contains<A>(_:)() & 1) == 0 || (v55 = objc_opt_self(), ![v55 isRecapAvailable]))
    {
      [v35 _effectiveContentInset];
      [v35 setContentOffset:{0.0, -v75}];
      v41 = String._bridgeToObjectiveC()();
      [v35 _performScrollTest:v41 iterations:v52 delta:v51];
LABEL_16:

      return sub_100034948(v102);
    }

    v56 = objc_allocWithZone(RPTScrollViewTestParameters);

    v57 = v35;
    v58 = String._bridgeToObjectiveC()();

    v59 = [v56 initWithTestName:v58 scrollView:v57 completionHandler:0];

    [v55 runTestWithParameters:v59];
  }

  else
  {
    v77 = v33;
    static Logger.Tests.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      v46 = v94;
      *(v44 + 4) = sub_100005D28(v94, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v42, v43, "waiting before starting test %s. items or thumbnails still gathering", v44, 0xCu);
      sub_100034948(v45);

      (*(v92 + 8))(v32, v93);
    }

    else
    {

      (*(v92 + 8))(v32, v93);
      v46 = v94;
    }

    v60 = v90;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v94 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v17 = 1;
    v61 = v78;
    v62 = v79;
    (*(v78 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v79);
    v63 = v80;
    + infix(_:_:)();
    (*(v61 + 8))(v17, v62);
    v64 = *(v81 + 8);
    v65 = v82;
    v64(v21, v82);
    sub_100034994(v102, v101);
    v66 = swift_allocObject();
    v67 = v89;
    *(v66 + 16) = v89;
    *(v66 + 24) = v46;
    *(v66 + 32) = a2;
    sub_1000349F8(v101, v66 + 40);
    v68 = v91;
    *(v66 + 80) = v60;
    *(v66 + 84) = v68;
    v99 = sub_10003551C;
    v100 = v66;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_100002DB0;
    v98 = &unk_10008AAC0;
    v69 = _Block_copy(&aBlock);

    v70 = v67;

    v71 = v83;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
    sub_1000035DC();
    v72 = v85;
    v73 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v74 = v94;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v69);

    (*(v87 + 8))(v72, v73);
    (*(v84 + 8))(v71, v86);
    v64(v63, v65);
  }

  return sub_100034948(v102);
}

uint64_t sub_10002EB80(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
LABEL_19:
    sub_10000A774(v15);
    goto LABEL_20;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v2 = sub_10000A60C(v15);
  if ((v3 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100005CC8(*(a1 + 56) + 32 * v2, v16);
  sub_10000A774(v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = 10;
  v15[0] = 0x6F69746172657469;
  v15[1] = 29550;
  v5 = 0;
  v6 = v15;
  while (1)
  {
    v7 = *v6 - 48;
    if (v7 > 9)
    {
      break;
    }

    v8 = 10 * v5;
    if (v8 != v8)
    {
      break;
    }

    v5 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    ++v6;
    if (!--v4)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  v5 = 0;
  v9 = 1;
LABEL_12:
  v16[0] = v9;
  v10 = v9;

  if (v10)
  {
    goto LABEL_20;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_10000A60C(v15);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100005CC8(*(a1 + 56) + 32 * v11, v16);
  sub_10000A774(v15);
  if (swift_dynamicCast())
  {
    v13 = sub_10000F644(0x74657366666FLL, 0xE600000000000000);
    if ((v13 & 0x100000000) == 0)
    {
      return v5 | (v13 << 32);
    }
  }

LABEL_20:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10002EFCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v49 = a2;
  v46 = a5;
  v52 = a3;
  v45 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v56 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for DispatchTime();
  v51 = *(v53 - 8);
  v16 = *(v51 + 64);
  v17 = __chkstk_darwin(v53);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v47 = &v43 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = a4;
  result = [a4 tabBarController];
  if (result)
  {
    v27 = result;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v25 = static OS_dispatch_queue.main.getter();
    (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
    v28 = _dispatchPreconditionTest(_:)();
    result = (*(v22 + 8))(v25, v21);
    if (v28)
    {
      [v27 setSelectedIndex:0];

      v44 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v15 = 2;
      (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v11);
      v29 = v47;
      + infix(_:_:)();
      (*(v12 + 8))(v15, v11);
      v30 = *(v51 + 8);
      v31 = v53;
      v30(v19, v53);
      v32 = swift_allocObject();
      v34 = v48;
      v33 = v49;
      v35 = v50;
      *(v32 + 16) = v48;
      *(v32 + 24) = v35;
      *(v32 + 32) = v45;
      *(v32 + 40) = v33;
      *(v32 + 48) = v46 & 1;
      *(v32 + 56) = v52;
      aBlock[4] = sub_100034DBC;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008DDB0;
      v36 = _Block_copy(aBlock);
      v37 = v34;
      v38 = v35;

      v39 = v54;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v40 = v56;
      v41 = v59;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v42 = v44;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v58 + 8))(v40, v41);
      (*(v55 + 8))(v39, v57);
      return (v30)(v29, v31);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002F5B8()
{
  result = DOCItemCollectionViewController.nodeCollection.getter();
  if (result)
  {
    v1 = result;
    v2 = [result isGathering];

    v3 = dispatch thunk of DOCItemCollectionViewController.items.getter();
    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = dispatch thunk of DOCItemCollectionViewController.collectionViewIfLoaded.getter();
    if (result)
    {
      v5 = result;
      v6 = [result visibleCells];

      sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v9 = v2;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return (v8 > 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002F6EC(void *a1, unint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9 = String.hasPrefix(_:)(v8);

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String.hasPrefix(_:)(v11);
  }

  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(a2 + 8 * j + 32);
      }

      v15 = v14;
      v16 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v20 = v14;
      if (sub_100013978(&v20, a1, v10))
      {
        v17 = [v15 identifier];
        v18 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:v17 node:0];

        return v18;
      }

      if (v16 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_10002F8D0(void *a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000355CC;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = sub_1000302D8;
    v17[4] = v16;
    v18 = a5;

    v19 = a1;

    if (sub_10002F5B8())
    {
      sub_100014F3C(v19, sub_1000302D8, v16);
    }

    else
    {
      v26 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v27 = swift_allocObject();
      v27[2] = a2;
      v27[3] = v19;
      v27[4] = sub_1000302E0;
      v27[5] = v17;
      v28 = objc_opt_self();
      v29 = v19;
      v30 = a2;

      v31 = [v28 defaultCenter];
      v37[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v37[0] = v29;
      v32 = objc_opt_self();
      v33 = v29;
      v34 = [v32 mainQueue];
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1000302EC;
      *(v35 + 24) = v27;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v37, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    v20 = a5;

    static Logger.Tests.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "content view controller is nil", v23, 2u);
    }

    (*(v11 + 8))(v14, v10);
    sub_100030284();
    v24 = swift_allocError();
    *v25 = 1;
    a3(0, v24);
  }
}

void sub_10002FD1C(void *a1, void *a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5, void *a6)
{
  v56 = a1;
  v11 = type metadata accessor for Logger();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v53 = a4;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v52 = a6;

  v16 = [a2 effectiveFullBrowser];
  v17 = [v16 hierarchyController];

  v18 = DOCHierarchyController.locations.getter();
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v11;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_23:

    v23 = 0;
    goto LABEL_24;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v55 = v11;
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_3:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v18 + 8 * v21 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v23 = v22;

  if (![v23 isRoot])
  {
LABEL_24:
    v57 = v23;
    static Logger.Tests.getter();
    v40 = v56;
    v41 = a2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412546;
      *(v44 + 4) = v40;
      *v45 = v40;
      *(v44 + 12) = 2112;
      v46 = v40;
      v47 = [v41 effectiveFullBrowser];
      *(v44 + 14) = v47;
      v45[1] = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "showing %@ on %@", v44, 0x16u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
    }

    (*(v54 + 8))(v14, v55);
    v48 = swift_allocObject();
    v48[2] = sub_100030234;
    v48[3] = v15;
    v48[4] = a3;

    v49 = a3;
    sub_100013E60(v40, v41, sub_100030238, v48);

    return;
  }

  v51 = a3;
  v57 = v23;
  v24 = [v23 sourceIdentifier];
  v25 = [v56 sourceIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      a3 = v51;
      v23 = v57;
      goto LABEL_24;
    }
  }

  v32 = [a2 effectiveBrowserViewController];
  v33 = v57;
  if (v32)
  {
    v34 = v32;
    v56 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
  }

  else
  {
    v56 = 0;
  }

  v36 = v51;
  v35 = v52;
  v37 = v53;

  v38 = v35;
  sub_10002F8D0(v56, v36, v37, a5, a6);

  v39 = v56;
}

uint64_t sub_100030244(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 32);
  }

  return v4(v6, a1);
}

unint64_t sub_100030284()
{
  result = qword_1000937D8;
  if (!qword_1000937D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000937D8);
  }

  return result;
}

uint64_t sub_100030300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003035C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_100030388()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000303B0(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100035530;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = sub_100035524;
    v17[4] = v16;
    v18 = a1;
    v19 = a3;

    if (sub_10002F5B8())
    {
      sub_100014F3C(v18, sub_100035524, v16);
    }

    else
    {
      v26 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v27 = swift_allocObject();
      v27[2] = a2;
      v27[3] = v18;
      v27[4] = sub_1000355EC;
      v27[5] = v17;
      v28 = objc_opt_self();
      v29 = v18;
      v30 = a2;

      v31 = [v28 defaultCenter];
      v37[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v37[0] = v29;
      v32 = objc_opt_self();
      v33 = v29;
      v34 = [v32 mainQueue];
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1000355DC;
      *(v35 + 24) = v27;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v37, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    v20 = a3;

    static Logger.Tests.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "content view controller is nil", v23, 2u);
    }

    (*(v11 + 8))(v14, v10);
    sub_100030284();
    v24 = swift_allocError();
    *v25 = 1;
    sub_100016C30(v24, v20, a4, a5);
  }
}

void sub_1000307FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v56 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v53 = a5;
  v16[4] = a6;
  v52 = a4;

  v17 = [a2 effectiveFullBrowser];
  v18 = [v17 hierarchyController];

  v19 = DOCHierarchyController.locations.getter();
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v11;
    v55 = a3;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_23:

    v24 = 0;
    goto LABEL_24;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  v54 = v11;
  v55 = a3;
  if (!v20)
  {
    goto LABEL_23;
  }

LABEL_3:
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else if ((v19 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v19 + 8 * v22 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v24 = v23;

  if (![v24 isRoot])
  {
LABEL_24:
    static Logger.Tests.getter();
    v40 = v56;
    v41 = a2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412546;
      *(v44 + 4) = v40;
      *v45 = v40;
      *(v44 + 12) = 2112;
      v46 = v40;
      v47 = [v41 effectiveFullBrowser];
      *(v44 + 14) = v47;
      v45[1] = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "showing %@ on %@", v44, 0x16u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v15, v54);
    v48 = swift_allocObject();
    v48[2] = sub_100035094;
    v48[3] = v16;
    v49 = v55;
    v48[4] = v55;

    v50 = v49;
    sub_100013E60(v40, v41, sub_100035520, v48);

    return;
  }

  v51 = v24;
  v25 = [v24 sourceIdentifier];
  v26 = [v56 sourceIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v24 = v51;
      goto LABEL_24;
    }
  }

  v33 = [a2 effectiveBrowserViewController];
  v34 = v51;
  if (v33)
  {
    v35 = v33;
    v56 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
  }

  else
  {
    v56 = 0;
  }

  v36 = v55;
  v37 = v53;
  v38 = v52;

  sub_1000303B0(v56, v36, v38, v37, a6);

  v39 = v56;
}

uint64_t sub_100030D04(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v51 = a3;
  v62 = a2;
  v49 = a1;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v55 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchTime();
  v48 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v46 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v50 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v16 = 10;
  (*(v13 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v12);
  + infix(_:_:)();
  (*(v13 + 8))(v16, v12);
  v47 = *(v18 + 8);
  v47(v22, v17);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a1;
  v27 = v51;
  v26[4] = v62;
  v26[5] = v27;
  v28 = v53;
  v26[6] = v53;
  aBlock[4] = sub_100034FC4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E058;
  v29 = _Block_copy(aBlock);

  v51 = v27;
  v30 = v28;

  v31 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v32 = v54;
  v33 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v50;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);

  (*(v58 + 8))(v32, v33);
  (*(v56 + 8))(v31, v57);
  v47(v24, v48);
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v25;
  *(v35 + 24) = v36;
  v37 = v51;
  *(v35 + 32) = v62;
  *(v35 + 40) = v37;
  v39 = v59;
  v38 = v60;
  *(v35 + 48) = v59;
  *(v35 + 56) = v30;
  *(v35 + 64) = v38;
  *(v35 + 72) = v61;
  v40 = swift_allocObject();
  v40[2] = sub_100034FF4;
  v40[3] = v35;
  v40[4] = v30;
  v40[5] = v39;
  v41 = v30;
  v42 = v39;

  v43 = v37;
  v41;
  v44 = v42;

  sub_1000144AC(v43, v44, sub_100035504, v40);
}

void sub_1000312DC(uint64_t a1, unsigned __int8 a2, void *a3, void *a4, id a5, unint64_t a6, void *a7, void *a8)
{
  v52 = a8;
  v53 = a7;
  v54 = a5;
  v55 = a3;
  v49 = a4;
  v11 = type metadata accessor for Logger();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v48 - v17;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034850(a1, v18, &qword_100093858, &qword_100074088);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v28 = a6;
    (*(v20 + 32))(v23, v18, v19);
    v29 = a2;
    v30 = v23;
    if (a2 <= 3u)
    {
      v31 = v53;
    }

    else
    {
      v31 = v53;
      if (v29 >= 8)
      {

        goto LABEL_10;
      }
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
LABEL_11:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v52 collectionView:v31 performPrimaryActionForItemAtIndexPath:isa];

      (*(v20 + 8))(v30, v19);
      return;
    }

LABEL_10:
    v34 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v35 = swift_allocObject();
    v36 = v49;
    v37 = v54;
    v35[2] = v49;
    v35[3] = v37;
    v35[4] = v28;
    v38 = v55;
    v35[5] = v55;
    v35[6] = v31;
    v39 = objc_opt_self();
    v54 = v34;
    v40 = v36;

    v41 = v38;
    v42 = v31;
    v43 = [v39 defaultCenter];
    memset(v56, 0, sizeof(v56));
    v44 = [objc_opt_self() mainQueue];
    v45 = swift_allocObject();
    *(v45 + 16) = sub_100035518;
    *(v45 + 24) = v35;

    v46 = v54;
    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v56, &qword_100093498, &qword_100074430);

    goto LABEL_11;
  }

  sub_100005A04(v18, &qword_100093858, &qword_100074088);
  static Logger.Tests.getter();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v56[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100005D28(v54, a6, v56);
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed test %s. Could not find index path", v26, 0xCu);
    sub_100034948(v27);
  }

  (*(v50 + 8))(v14, v51);
  v32 = String._bridgeToObjectiveC()();
  [v55 failedTest:v32];
}

uint64_t sub_100031950(void *a1, int a2, int a3, void *a4, void *a5, uint64_t a6, unint64_t a7, void *a8, void *a9)
{
  v170 = a2;
  v169 = a1;
  v164 = a9;
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v155 = *(v156 - 8);
  v15 = *(v155 + 64);
  __chkstk_darwin(v156);
  v153 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchQoS();
  v152 = *(v154 - 8);
  v17 = *(v152 + 64);
  __chkstk_darwin(v154);
  v151 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DispatchTimeInterval();
  v145 = *(v146 - 8);
  v19 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for DispatchTime();
  v149 = *(v150 - 8);
  v21 = *(v149 + 64);
  v22 = __chkstk_darwin(v150);
  v143 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v147 = &v135 - v24;
  v25 = type metadata accessor for IndexPath();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v137 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v148 = &v135 - v30;
  v31 = type metadata accessor for Logger();
  v166 = *(v31 - 8);
  v167 = v31;
  v32 = *(v166 + 64);
  v33 = __chkstk_darwin(v31);
  v136 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v142 = &v135 - v36;
  __chkstk_darwin(v35);
  v162 = &v135 - v37;
  v38 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v141 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v160 = &v135 - v43;
  v44 = __chkstk_darwin(v42);
  v159 = &v135 - v45;
  v46 = __chkstk_darwin(v44);
  v165 = &v135 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v135 - v49;
  __chkstk_darwin(v48);
  v52 = &v135 - v51;
  v53 = swift_allocObject();
  v157 = a3;
  *(v53 + 16) = a3;
  *(v53 + 24) = a4;
  *(v53 + 32) = a5;
  v163 = a6;
  *(v53 + 40) = a6;
  *(v53 + 48) = a7;
  v168 = v53;
  v54 = v164;
  *(v53 + 56) = a8;
  *(v53 + 64) = v54;
  v171 = v26;
  v55 = *(v26 + 56);
  v55(v52, 1, 1, v25);
  v161 = a4;
  v139 = a5;

  v158 = a8;
  v164 = v54;
  sub_100011B8C(v169, v170, v50);
  v140 = v55;
  sub_100005A04(v52, &qword_100093858, &qword_100074088);
  v55(v50, 0, 1, v25);
  sub_100033034(v50, v52);
  v56 = v25;
  v57 = v165;
  sub_100034850(v52, v165, &qword_100093858, &qword_100074088);
  v58 = *(v171 + 48);
  LODWORD(a6) = v58(v57, 1, v25);
  sub_100005A04(v57, &qword_100093858, &qword_100074088);
  if (a6 == 1)
  {
    v59 = v169;
    [v169 bounds];
    v60 = CGRectGetHeight(v176) * 0.75;
    [v59 contentOffset];
    v62 = v61;
    v63 = v60 + v61;
    [v59 contentSize];
    if (v63 < v64)
    {
      [v59 bounds];
      [v59 setContentOffset:{0.0, v62 + CGRectGetHeight(v177) * 0.75}];
      [v59 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v65 = v59;
      v171 = static OS_dispatch_queue.main.getter();
      v66 = v143;
      static DispatchTime.now()();
      v67 = v144;
      *v144 = 1;
      v68 = v145;
      v69 = v146;
      (*(v145 + 104))(v67, enum case for DispatchTimeInterval.seconds(_:), v146);
      v70 = v147;
      + infix(_:_:)();
      (*(v68 + 8))(v67, v69);
      v138 = v52;
      v71 = *(v149 + 8);
      v72 = v150;
      v71(v66, v150);
      v73 = swift_allocObject();
      *(v73 + 16) = v170;
      *(v73 + 24) = v65;
      *(v73 + 32) = sub_100032FF8;
      *(v73 + 40) = v168;
      v174 = sub_100033024;
      v175 = v73;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v173 = sub_100002DB0;
      *(&v173 + 1) = &unk_10008A228;
      v74 = _Block_copy(&aBlock);
      v75 = v65;

      v76 = v151;
      static DispatchQoS.unspecified.getter();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v77 = v153;
      v78 = v156;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v79 = v171;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v74);

      (*(v155 + 8))(v77, v78);
      (*(v152 + 8))(v76, v154);
      v71(v70, v72);
      v52 = v138;
      goto LABEL_29;
    }

    v89 = v160;
    v140(v160, 1, 1, v25);
    v90 = v89;
    v91 = v141;
    sub_100034850(v90, v141, &qword_100093858, &qword_100074088);
    if (v58(v91, 1, v25) == 1)
    {
      sub_100005A04(v91, &qword_100093858, &qword_100074088);
      v92 = v136;
      static Logger.Tests.getter();

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      v95 = os_log_type_enabled(v93, v94);
      v96 = v163;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&aBlock = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_100005D28(v96, a7, &aBlock);
        _os_log_impl(&_mh_execute_header, v93, v94, "Failed test %s. Could not find index path", v97, 0xCu);
        sub_100034948(v98);
      }

      (*(v166 + 8))(v92, v167);
      v99 = String._bridgeToObjectiveC()();
      [v161 failedTest:v99];

      goto LABEL_28;
    }

    v103 = v137;
    (*(v171 + 32))(v137, v91, v25);
    v104 = v163;
    if (v157 <= 3u)
    {
      v105 = v158;
    }

    else
    {
      v105 = v158;
      if (v157 >= 8u)
      {

        goto LABEL_26;
      }
    }

    v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v120 & 1) == 0)
    {
LABEL_27:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v164 collectionView:v105 performPrimaryActionForItemAtIndexPath:isa];

      (*(v171 + 8))(v103, v56);
LABEL_28:
      sub_100005A04(v160, &qword_100093858, &qword_100074088);
      goto LABEL_29;
    }

LABEL_26:
    v121 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v122 = swift_allocObject();
    v123 = v139;
    v122[2] = v139;
    v122[3] = v104;
    v124 = v161;
    v122[4] = a7;
    v122[5] = v124;
    v122[6] = v105;
    v125 = objc_opt_self();
    v126 = v124;
    v127 = v123;

    v128 = v105;
    v129 = v121;
    v130 = [v125 defaultCenter];
    aBlock = 0u;
    v173 = 0u;
    v131 = [objc_opt_self() mainQueue];
    v132 = swift_allocObject();
    *(v132 + 16) = sub_10003300C;
    *(v132 + 24) = v122;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);

    goto LABEL_27;
  }

  v80 = v159;
  sub_100034850(v52, v159, &qword_100093858, &qword_100074088);
  if (v58(v80, 1, v25) != 1)
  {
    v100 = v148;
    (*(v171 + 32))(v148, v80, v25);
    v101 = v163;
    if (v157 <= 3u)
    {
      v102 = v158;
    }

    else
    {
      v102 = v158;
      if (v157 >= 8u)
      {

        goto LABEL_22;
      }
    }

    v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v106 & 1) == 0)
    {
LABEL_23:
      v119 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v164 collectionView:v102 performPrimaryActionForItemAtIndexPath:v119];

      (*(v171 + 8))(v100, v56);
      goto LABEL_29;
    }

LABEL_22:
    v107 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v108 = swift_allocObject();
    v109 = v139;
    v108[2] = v139;
    v108[3] = v101;
    v110 = v161;
    v108[4] = a7;
    v108[5] = v110;
    v108[6] = v102;
    v111 = objc_opt_self();
    v112 = v110;
    v113 = v109;

    v114 = v102;
    v115 = v107;
    v116 = [v111 defaultCenter];
    aBlock = 0u;
    v173 = 0u;
    v117 = [objc_opt_self() mainQueue];
    v118 = swift_allocObject();
    *(v118 + 16) = sub_100035518;
    *(v118 + 24) = v108;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);

    goto LABEL_23;
  }

  sub_100005A04(v80, &qword_100093858, &qword_100074088);
  v81 = v142;
  static Logger.Tests.getter();

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  v84 = os_log_type_enabled(v82, v83);
  v85 = v163;
  if (v84)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&aBlock = v87;
    *v86 = 136315138;
    *(v86 + 4) = sub_100005D28(v85, a7, &aBlock);
    _os_log_impl(&_mh_execute_header, v82, v83, "Failed test %s. Could not find index path", v86, 0xCu);
    sub_100034948(v87);
  }

  (*(v166 + 8))(v81, v167);
  v88 = String._bridgeToObjectiveC()();
  [v161 failedTest:v88];

LABEL_29:
  sub_100005A04(v52, &qword_100093858, &qword_100074088);
}

uint64_t sub_100033034(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000330BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v31 = a4;
  v32 = a6;
  v28 = a3;
  v9 = type metadata accessor for Logger();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034850(a1, v16, &qword_100093858, &qword_100074088);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100005A04(v16, &qword_100093858, &qword_100074088);
    static Logger.Tests.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100005D28(v31, a5, &v33);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed test %s. Could not find index path of PDF", v24, 0xCu);
      sub_100034948(v25);
    }

    (*(v29 + 8))(v12, v30);
    v27 = String._bridgeToObjectiveC()();
    [v32 failedTest:v27];
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a2 collectionView:v28 performPrimaryActionForItemAtIndexPath:isa];

    (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_100033440(void *a1, int a2, void *a3, void *a4, uint64_t a5, unint64_t a6, void *a7)
{
  v132 = a2;
  v131 = a1;
  v119 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v119 - 8);
  v12 = *(v118 + 64);
  __chkstk_darwin(v119);
  v116 = &v99[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = type metadata accessor for DispatchQoS();
  v115 = *(v117 - 8);
  v14 = *(v115 + 64);
  __chkstk_darwin(v117);
  v114 = &v99[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v110 - 8);
  v16 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = type metadata accessor for DispatchTime();
  v112 = *(v113 - 8);
  v18 = *(v112 + 64);
  v19 = __chkstk_darwin(v113);
  v106 = &v99[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v111 = &v99[-v21];
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v100 = &v99[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v104 = &v99[-v27];
  v28 = type metadata accessor for Logger();
  v127 = *(v28 - 8);
  v128 = v28;
  v29 = *(v127 + 64);
  v30 = __chkstk_darwin(v28);
  v101 = &v99[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v105 = &v99[-v33];
  __chkstk_darwin(v32);
  v34 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v103 = &v99[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v107 = &v99[-v39];
  v40 = __chkstk_darwin(v38);
  v125 = &v99[-v41];
  v42 = __chkstk_darwin(v40);
  v126 = &v99[-v43];
  v44 = __chkstk_darwin(v42);
  v46 = &v99[-v45];
  __chkstk_darwin(v44);
  v48 = &v99[-v47];
  v49 = swift_allocObject();
  v49[2] = a3;
  v49[3] = a4;
  v123 = a5;
  v49[4] = a5;
  v49[5] = a6;
  v129 = v49;
  v130 = v23;
  v49[6] = a7;
  v50 = *(v23 + 56);
  v50(v48, 1, 1, v22);
  v121 = a3;
  v120 = a4;
  v124 = a6;

  v122 = a7;
  sub_100011B8C(v131, v132, v46);
  v102 = v50;
  sub_100005A04(v48, &qword_100093858, &qword_100074088);
  v50(v46, 0, 1, v22);
  sub_100033034(v46, v48);
  v51 = v126;
  sub_100034850(v48, v126, &qword_100093858, &qword_100074088);
  v52 = *(v130 + 48);
  LODWORD(a5) = v52(v51, 1, v22);
  sub_100005A04(v51, &qword_100093858, &qword_100074088);
  if (a5 == 1)
  {
    v53 = v22;
    v54 = v131;
    [v131 bounds];
    v55 = CGRectGetHeight(v134) * 0.75;
    [v54 contentOffset];
    v57 = v56;
    v58 = v55 + v56;
    [v54 contentSize];
    if (v58 >= v59)
    {
      v82 = v107;
      v102(v107, 1, 1, v53);
      v83 = v103;
      sub_100034850(v82, v103, &qword_100093858, &qword_100074088);
      if (v52(v83, 1, v53) == 1)
      {
        sub_100005A04(v83, &qword_100093858, &qword_100074088);
        v84 = v101;
        static Logger.Tests.getter();
        v85 = v124;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          aBlock[0] = v89;
          *v88 = 136315138;
          *(v88 + 4) = sub_100005D28(v123, v85, aBlock);
          _os_log_impl(&_mh_execute_header, v86, v87, "Failed test %s. Could not find index path of PDF", v88, 0xCu);
          sub_100034948(v89);
        }

        (*(v127 + 8))(v84, v128);
        v97 = String._bridgeToObjectiveC()();
        [v122 failedTest:v97];
      }

      else
      {
        v94 = v130;
        v95 = v100;
        (*(v130 + 32))(v100, v83, v53);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v121 collectionView:v120 performPrimaryActionForItemAtIndexPath:isa];

        (*(v94 + 8))(v95, v53);
      }

      sub_100005A04(v82, &qword_100093858, &qword_100074088);
    }

    else
    {
      [v54 bounds];
      [v54 setContentOffset:{0.0, v57 + CGRectGetHeight(v135) * 0.75}];
      [v54 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v130 = static OS_dispatch_queue.main.getter();
      v60 = v106;
      static DispatchTime.now()();
      v61 = v108;
      *v108 = 1;
      v62 = v109;
      v63 = v110;
      (*(v109 + 104))(v61, enum case for DispatchTimeInterval.seconds(_:), v110);
      v64 = v111;
      + infix(_:_:)();
      (*(v62 + 8))(v61, v63);
      v128 = *(v112 + 8);
      v65 = v113;
      v128(v60, v113);
      v66 = swift_allocObject();
      *(v66 + 16) = v132;
      *(v66 + 24) = v54;
      *(v66 + 32) = sub_100034528;
      *(v66 + 40) = v129;
      aBlock[4] = sub_1000355E0;
      aBlock[5] = v66;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A340;
      v67 = _Block_copy(aBlock);
      v68 = v54;

      v69 = v48;
      v70 = v114;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v71 = v116;
      v72 = v119;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v73 = v130;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v67);

      (*(v118 + 8))(v71, v72);
      v74 = v70;
      v48 = v69;
      (*(v115 + 8))(v74, v117);
      v128(v64, v65);
    }
  }

  else
  {
    v75 = v125;
    sub_100034850(v48, v125, &qword_100093858, &qword_100074088);
    if (v52(v75, 1, v22) == 1)
    {
      sub_100005A04(v75, &qword_100093858, &qword_100074088);
      v76 = v105;
      static Logger.Tests.getter();
      v77 = v124;

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        aBlock[0] = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_100005D28(v123, v77, aBlock);
        _os_log_impl(&_mh_execute_header, v78, v79, "Failed test %s. Could not find index path of PDF", v80, 0xCu);
        sub_100034948(v81);
      }

      (*(v127 + 8))(v76, v128);
      v93 = String._bridgeToObjectiveC()();
      [v122 failedTest:v93];
    }

    else
    {
      v90 = v130;
      v91 = v104;
      (*(v130 + 32))(v104, v75, v22);
      v92 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v121 collectionView:v120 performPrimaryActionForItemAtIndexPath:v92];

      (*(v90 + 8))(v91, v22);
    }
  }

  sub_100005A04(v48, &qword_100093858, &qword_100074088);
}

unint64_t sub_100034538()
{
  result = qword_100093860;
  if (!qword_100093860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093860);
  }

  return result;
}

uint64_t sub_10003458C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000345CC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003461C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000346F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100034810()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_10001D1F8(v1, v2, v3);
}

uint64_t sub_100034850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000DB4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100034948(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100034994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000349F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100034A14()
{
  v1 = *(v0 + 32);

  sub_100034948((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100034A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);
  v5 = *(v0 + 84);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = sub_100006C6C((v0 + 40), v6);

  return sub_10002E08C(v2, v3, v8, v4, v5, v1, v6, v7);
}

uint64_t sub_100034B2C()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100034BE8()
{
  v1 = *(v0 + 56);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 52);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = v0 + 16;
    v6 = *(v0 + 16);
    return sub_10000E8BC(*(v7 + 8), v4, v5, v2, v3, v1 + 1);
  }

  return result;
}

uint64_t sub_100034C24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100034D04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100034D68(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100034DD4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100034E58()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100034EC0(uint64_t a1)
{
  v3 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100034F34()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035030(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1000350A0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000350E8(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100035144()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for DOCApplication.BrowseFolderTestInfo.BrowseFolderTestInfoError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DOCApplication.BrowseFolderTestInfo.BrowseFolderTestInfoError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCApplication.DOCApplicationTestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCApplication.DOCApplicationTestError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000353D4()
{
  result = qword_1000938B0;
  if (!qword_1000938B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938B0);
  }

  return result;
}

unint64_t sub_10003542C()
{
  result = qword_1000938B8;
  if (!qword_1000938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938B8);
  }

  return result;
}

void sub_100035674(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v71 = &v69 - v10;
  __chkstk_darwin(v9);
  v12 = &v69 - v11;
  static Logger.Application.getter();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v72 = v13;
  v73 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v74);
    *(v17 + 12) = 2080;
    v18 = [v13 session];
    v19 = [v18 persistentIdentifier];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v2;
    v22 = v4;
    v24 = v23;

    v25 = sub_100005D28(v20, v24, &v74);
    v4 = v22;
    v2 = v21;

    *(v17 + 14) = v25;
    v5 = v73;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: identifier: %s freeing resources", v17, 0x16u);
    swift_arrayDestroy();
  }

  v26 = *(v5 + 8);
  (v26)(v12, v4);
  v27 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
  v28 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v28)
  {
    v69 = [v28 configuration];
    v29 = [objc_opt_self() sharedApplication];
    v30 = [v29 openSessions];

    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v72;
    v33 = [v72 session];
    v34 = sub_100035E14(v33, v31);

    if (v34)
    {
      v35 = v71;
      static Logger.Application.getter();
      v36 = v32;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v72 = v4;
        v40 = v39;
        v74 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v74);
        *(v40 + 12) = 2080;
        v41 = [v36 session];
        v42 = [v41 persistentIdentifier];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_100005D28(v43, v45, &v74);

        *(v40 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v37, v38, "%s: identifier: %s was disconnected but session still exists. Keeping state.", v40, 0x16u);
        swift_arrayDestroy();

        (v26)(v71, v72);
      }

      else
      {

        (v26)(v35, v4);
      }
    }

    else
    {
      v47 = v70;
      static Logger.Application.getter();
      v48 = v32;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v71 = v26;
        v52 = v51;
        v74 = swift_slowAlloc();
        *v52 = 136315394;
        *(v52 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v74);
        *(v52 + 12) = 2080;
        v53 = v47;
        v54 = [v48 session];
        v55 = [v54 persistentIdentifier];
        v72 = v4;
        v56 = v55;

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_100005D28(v57, v59, &v74);

        *(v52 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v49, v50, "%s: identifier: %s was disconnected and session is gone. Clearing state.", v52, 0x16u);
        swift_arrayDestroy();

        (v71)(v53, v72);
      }

      else
      {

        (v26)(v47, v4);
      }

      v61 = [objc_opt_self() sharedStore];
      v62 = v69;
      [v61 purgeStateForConfiguration:v69];
    }
  }

  v63 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
  v64 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  if (v64 && ([v64 setHidden:1], (v65 = *(v2 + v63)) != 0))
  {
    [v65 setRootViewController:0];
    v66 = *(v2 + v63);
  }

  else
  {
    v66 = 0;
  }

  *(v2 + v63) = 0;

  v67 = *(v2 + v27);
  *(v2 + v27) = 0;

  v68 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
  *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController) = 0;
}

uint64_t sub_100035E14(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100035F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = a3;
  v63 = a4;
  v6 = type metadata accessor for Logger();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v6);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v57 - v10;
  v11 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v57 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  sub_100034850(a1, v14, &qword_100093F50, &qword_100074090);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v31 = *(v16 + 32);
    v31(v21, v14, v15);
    (*(v16 + 16))(v19, v21, v15);
    v32 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v33 = swift_allocObject();
    v34 = v62;
    *(v33 + 16) = v62;
    v31((v33 + v32), v19, v15);
    v35 = v63;
    *(v33 + ((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v63;
    v36 = v34;
    v37 = v35;
    DOCRunInMainThread(_:)();

    return (*(v16 + 8))(v21, v15);
  }

  v23 = v62;
  v22 = v63;
  sub_100005A04(v14, &qword_100093F50, &qword_100074090);
  if (!a2)
  {
    goto LABEL_9;
  }

  v24 = a2;
  v25 = a2;
  v26 = [v25 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {

LABEL_9:
    v40 = v59;
    static Logger.Application.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v64 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v64);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Could not decode FPItem from NSUserActivity.", v43, 0xCu);
      sub_100034948(v44);
    }

    (*(v60 + 8))(v40, v61);
    type metadata accessor for DOCUserActivityController();
    return static DOCUserActivityController.deleteActivity(_:item:)();
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {

    goto LABEL_9;
  }

  v45 = v58;
  static Logger.Application.getter();
  v46 = v25;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v24;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64 = v52;
    *v50 = 136315394;
    *(v50 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v64);
    *(v50 + 12) = 2112;
    *(v50 + 14) = v46;
    *v51 = v49;
    v53 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "%s: Could not retrieve URL for item: %@", v50, 0x16u);
    sub_100005A04(v51, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v52);
  }

  (*(v60 + 8))(v45, v61);
  v54 = swift_allocObject();
  *(v54 + 16) = v22;
  *(v54 + 24) = v23;
  v55 = v23;
  v56 = v22;
  DOCRunInMainThread(_:)();
}

uint64_t sub_1000365E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10003A72C(a2, 0, 0, 1, 1u);
  if ((result & 1) == 0)
  {
    type metadata accessor for DOCUserActivityController();
    v15 = static DOCUserActivityController.alertController(with:)();
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v17)
      {
        v18 = v17;
        [v18 presentViewController:v16 animated:1 completion:0];
      }
    }

    static Logger.Application.getter();
    (*(v5 + 16))(v8, a2, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v21 = 136315394;
      *(v21 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v29);
      *(v21 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v9;
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_100005D28(v22, v24, &v29);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: URL decoded FPItem could not be opened: %s", v21, 0x16u);
      swift_arrayDestroy();

      return (*(v10 + 8))(v13, v27);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v10 + 8))(v13, v9);
    }
  }

  return result;
}

void sub_10003696C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DOCUserActivityController();
  v3 = static DOCUserActivityController.alertController(with:)();
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v4)
    {
      v6 = v3;
      v5 = v4;
      [v5 presentViewController:v6 animated:1 completion:0];

      v3 = v6;
    }
  }
}

void sub_100036BDC(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075C80, &v15);
    *(v9 + 12) = 2048;
    if (a1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "%s [App Shortcut] finished creating %ld app shortcuts.", v9, 0x16u);
    sub_100034948(v10);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v12 = [objc_opt_self() sharedApplication];
  sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setShortcutItems:isa];
}

uint64_t sub_100036E30(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v39 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  v11 = (v10 + 16);
  static Logger.UI.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v2;
    v15 = swift_slowAlloc();
    v16 = v3;
    v17 = swift_slowAlloc();
    v44 = v17;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, &v44);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s [App Shortcut] 1. Start", v15, 0xCu);
    sub_100034948(v17);
    v3 = v16;

    v2 = v14;
  }

  v18 = *(v3 + 8);
  v18(v9, v2);
  sub_100045D9C();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = v3;
    v36 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = v35;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100045F40();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = v3;
    v38 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = v37;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static Logger.UI.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v2;
    v22 = v21;
    v45 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, &v45);
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v39[1] = v3;
    v23 = *v11;
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);

    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_100005D28(v24, v26, &v45);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s [App Shortcut] 2. Start getting provider locations %s", v22, 0x16u);
    swift_arrayDestroy();

    v28 = v40;
    v29 = v7;
  }

  else
  {

    v29 = v7;
    v28 = v2;
  }

  v18(v29, v28);
  v30 = swift_allocObject();
  v31 = v41;
  v32 = v42;
  v30[2] = v10;
  v30[3] = v31;
  v33 = v43;
  v30[4] = v32;
  v30[5] = v33;

  sub_100046560(sub_1000524BC, v30, v33);
}

uint64_t sub_1000373C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v79 - v11;
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  static Logger.Application.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v87 = v5;
  v82 = v9;
  v83 = v2;
  v85 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v18 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v19 = Set.description.getter();
    v21 = sub_100005D28(v19, v20, &v90);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: urlContexts: %s", v18, 0x16u);
    swift_arrayDestroy();

    v86 = *(v87 + 8);
  }

  else
  {

    v86 = *(v5 + 8);
  }

  v86(v14, v4);
  v84 = v4;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v40 = *(a1 + 32);
    v41 = v40 & 0x3F;
    v80 = ((1 << v40) + 63) >> 6;
    v28 = (8 * v80);

    if (v41 <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

  v22 = &_swiftEmptySetSingleton;
  v90 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v23 = __CocoaSet.Iterator.next()();
  if (!v23)
  {
LABEL_23:

LABEL_40:
    v4 = v84;
    goto LABEL_41;
  }

  v24 = v23;
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v25 = v24;
  v4 = -1;
  while (1)
  {
    v88 = v25;
    swift_dynamicCast();
    v26 = [v89 options];
    v27 = [v26 _openAsDownload];

    v28 = v89;
    if (v27)
    {
      break;
    }

LABEL_8:
    v25 = __CocoaSet.Iterator.next()();
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  v29 = *(v22 + 16);
  if (*(v22 + 24) <= v29)
  {
    sub_10004877C(v29 + 1);
  }

  v22 = v90;
  v30 = NSObject._rawHashValue(seed:)(v90[5]);
  v31 = v22 + 56;
  v32 = -1 << *(v22 + 32);
  v33 = v30 & ~v32;
  v34 = v33 >> 6;
  if (((-1 << v33) & ~*(v22 + 56 + 8 * (v33 >> 6))) != 0)
  {
    v35 = __clz(__rbit64((-1 << v33) & ~*(v22 + 56 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    *(*(v22 + 48) + 8 * v35) = v28;
    ++*(v22 + 16);
    goto LABEL_8;
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v31 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_65:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_25:
    v79 = &v79;
    __chkstk_darwin(isStackAllocationSafe);
    v43 = &v79 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v28);
    v81 = 0;
    v44 = 0;
    v4 = a1 + 56;
    v45 = 1 << *(a1 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(a1 + 56);
    v48 = (v45 + 63) >> 6;
    while (v47)
    {
      v49 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
LABEL_35:
      v52 = v49 | (v44 << 6);
      v28 = *(*(a1 + 48) + 8 * v52);
      v53 = [v28 options];
      v54 = [v53 _openAsDownload];

      if (v54)
      {
        *&v43[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
        if (__OFADD__(v81++, 1))
        {
          __break(1u);
LABEL_39:
          v22 = sub_10004AAC0(v43, v80, v81, a1);
          goto LABEL_40;
        }
      }
    }

    v50 = v44;
    while (1)
    {
      v44 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v44 >= v48)
      {
        goto LABEL_39;
      }

      v51 = *(v4 + 8 * v44);
      ++v50;
      if (v51)
      {
        v49 = __clz(__rbit64(v51));
        v47 = (v51 - 1) & v51;
        goto LABEL_35;
      }
    }
  }

  v78 = swift_slowAlloc();
  v22 = sub_10004B128(v78, v80, a1, sub_100037E68);

LABEL_41:

  v56 = sub_100037EC8(v22, a1);
  v57 = v85;
  static Logger.Application.getter();

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v60 = 136315650;
    *(v60 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v60 + 12) = 2048;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v61 = __CocoaSet.count.getter();
    }

    else
    {
      v61 = *(v22 + 16);
    }

    *(v60 + 14) = v61;

    *(v60 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v63 = Set.description.getter();
    v65 = sub_100005D28(v63, v64, &v90);

    *(v60 + 24) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, "%s: urls to import directly to Downloads folder (%ld): %s", v60, 0x20u);
    swift_arrayDestroy();

    v62 = v85;
  }

  else
  {

    v62 = v57;
  }

  v86(v62, v4);
  v66 = v82;
  static Logger.Application.getter();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v69 = 136315650;
    *(v69 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v69 + 12) = 2048;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v70 = __CocoaSet.count.getter();
    }

    else
    {
      v70 = *(v56 + 16);
    }

    *(v69 + 14) = v70;

    *(v69 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v73 = Set.description.getter();
    v75 = sub_100005D28(v73, v74, &v90);

    *(v69 + 24) = v75;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s: urls to import via the picker (%ld): %s", v69, 0x20u);
    swift_arrayDestroy();

    v71 = v66;
    v72 = v84;
  }

  else
  {

    v71 = v66;
    v72 = v4;
  }

  v86(v71, v72);
  v76 = v83;
  if ((v22 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_55;
    }
  }

  else if (*(v22 + 16))
  {
LABEL_55:
    sub_10003853C(v22, v76);
  }

  if ((v56 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_58;
    }
  }

  else if (*(v56 + 16))
  {
LABEL_58:
    sub_100037FBC(v56, v76);
  }
}