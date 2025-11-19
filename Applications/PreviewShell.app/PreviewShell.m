uint64_t sub_100001FC8()
{
  if (qword_100070AA8[0] != -1)
  {
    sub_100049EB0();
  }

  return byte_100070AA0;
}

void sub_100002000(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v6 = CFDictionaryGetValue(v1, @"ArtworkDeviceSubType");
    if (v6)
    {
      v3 = [v6 intValue];
      v5 = v3 == 2556 || v3 == 2796;
      byte_100070AA0 = v5;
    }

    CFRelease(v2);
  }
}

uint64_t sub_1000020F0()
{
  if (qword_100070AA8[0] != -1)
  {
    sub_100049EB0();
  }

  if (byte_100070AA0)
  {
    return 1;
  }

  return _SBSIsSystemApertureAvailable();
}

uint64_t sub_100002158(uint64_t (*a1)(), uint64_t a2)
{
  v2 = (a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v3 = *(a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v4 = *(a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);
  *v2 = j___s20PreviewsFoundationOS7PromiseC7succeed4withyx_tF;
  v2[1] = a1;

  sub_100004D54(v3);
  return static ProcessUtilities.kill(processHandle:)();
}

id sub_100002200(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v2 = type metadata accessor for Logger();
  v112 = *(v2 - 8);
  v113 = v2;
  v3 = *(v112 + 64);
  v4 = (__chkstk_darwin)();
  v107 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v106 = v101 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  __chkstk_darwin(v7);
  v10 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for URL();
  v111 = *(v114 - 8);
  v11 = *(v111 + 64);
  v12 = __chkstk_darwin(v114);
  v105 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v104 = v101 - v15;
  v16 = __chkstk_darwin(v14);
  v115 = v101 - v17;
  v18 = __chkstk_darwin(v16);
  v116 = v101 - v19;
  __chkstk_darwin(v18);
  v117 = v101 - v20;
  v21 = type metadata accessor for BinaryType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v101 - v27;
  v29 = [objc_allocWithZone(FBMutableProcessExecutionContext) init];
  [v29 setLaunchIntent:4];
  v30 = PreviewAgentLaunchConfiguration.environment.getter();
  sub_100002E04(v30);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v29 setEnvironment:isa];

  v32 = PreviewAgentLaunchConfiguration.arguments.getter();
  sub_1000030CC(v32);

  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setArguments:v33];

  PreviewAgentLaunchConfiguration.binaryType.getter();
  v34 = BinaryType.cpuType.getter();
  v35 = *(v22 + 8);
  v35(v28, v21);
  PreviewAgentLaunchConfiguration.binaryType.getter();
  v36 = BinaryType.cpuSubtype.getter();
  v35(v26, v21);
  v37 = [objc_opt_self() sliceWithType:v34 subtype:v36];
  [v29 setOverrideExecutableSlice:v37];

  v38 = PreviewAgentLaunchConfiguration.environment.getter();
  if (*(v38 + 16) && (v39 = sub_100006E04(0xD000000000000037, 0x8000000100053A00), (v40 & 1) != 0))
  {
    v41 = (*(v38 + 56) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];

    if (v43 == 49 && v42 == 0xE100000000000000)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        return v29;
      }
    }

    v103 = objc_opt_self();
    v46 = [v103 defaultManager];
    v47 = [v46 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    strcpy(v119, "agent-stderr");
    BYTE5(v119[1]) = 0;
    HIWORD(v119[1]) = -5120;
    v49 = v109;
    v48 = v110;
    v102 = *(v109 + 104);
    v102(v10, enum case for URL.DirectoryHint.isDirectory(_:), v110);
    v101[1] = sub_1000051E8();
    URL.appending<A>(component:directoryHint:)();
    v109 = *(v49 + 8);
    (v109)(v10, v48);
    v50 = [objc_allocWithZone(NSDate) init];
    v51 = [v50 description];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v119[0] = AgentDescriptor.Bundle.bundleID.getter();
    v119[1] = v55;
    v56._countAndFlagsBits = 45;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v57._countAndFlagsBits = v52;
    v57._object = v54;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 1954051118;
    v58._object = 0xE400000000000000;
    String.append(_:)(v58);
    v102(v10, enum case for URL.DirectoryHint.notDirectory(_:), v48);
    v59 = v115;
    URL.appending<A>(component:directoryHint:)();
    (v109)(v10, v48);

    v60 = [v103 defaultManager];
    URL._bridgeToObjectiveC()(v61);
    v63 = v62;
    v119[0] = 0;
    LODWORD(v54) = [v60 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:v119];

    if (v54)
    {
      v64 = v119[0];
      v65 = v106;
      static Logger.previews.getter();
      v66 = v111;
      v67 = v104;
      v68 = v114;
      (*(v111 + 16))(v104, v59, v114);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v119[0] = v72;
        *v71 = 136446210;
        v73 = URL.path.getter();
        v74 = v67;
        v76 = v75;
        v77 = *(v66 + 8);
        v77(v74, v68);
        v78 = sub_10000E0C0(v73, v76, v119);

        *(v71 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v69, v70, "ApplicationLauncher: Redirecting stderr to %{public}s", v71, 0xCu);
        sub_10000519C(v72);
        v59 = v115;

        (*(v112 + 8))(v106, v113);
      }

      else
      {

        v77 = *(v66 + 8);
        v77(v67, v68);
        (*(v112 + 8))(v65, v113);
      }

      URL._bridgeToObjectiveC()(v79);
      v99 = v98;
      [v29 setStandardErrorURL:v98];

      v77(v59, v68);
      v77(v116, v68);
      v77(v117, v68);
    }

    else
    {
      v80 = v119[0];
      v81 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v82 = v107;
      static Logger.previews.getter();
      v83 = v111;
      v84 = v105;
      v85 = v114;
      (*(v111 + 16))(v105, v59, v114);
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        LODWORD(v109) = v87;
        v89 = v88;
        v110 = swift_slowAlloc();
        v119[0] = v110;
        *v89 = 136446466;
        v90 = URL.path.getter();
        v92 = v91;
        v93 = *(v83 + 8);
        v93(v84, v85);
        v94 = sub_10000E0C0(v90, v92, v119);

        *(v89 + 4) = v94;
        *(v89 + 12) = 2080;
        v118 = v81;
        swift_errorRetain();
        sub_100004C60(&qword_10006E8E8, &qword_10004D780);
        v95 = String.init<A>(describing:)();
        v97 = sub_10000E0C0(v95, v96, v119);

        *(v89 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v86, v109, "ApplicationLauncher: Could not redirect stderr to %{public}s: %s", v89, 0x16u);
        swift_arrayDestroy();

        (*(v112 + 8))(v107, v113);
        v93(v115, v85);
        v93(v116, v85);
        v93(v117, v85);
      }

      else
      {

        v100 = *(v83 + 8);
        v100(v84, v85);
        (*(v112 + 8))(v82, v113);
        v100(v59, v85);
        v100(v116, v85);
        v100(v117, v85);
      }
    }
  }

  else
  {
  }

  return v29;
}

uint64_t sub_100002E04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004C60(&qword_10006E8F0, &qword_10004D788);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10000523C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10000523C(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10000523C(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *sub_1000030CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_10001BBD0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001BBD0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_10000523C(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000031CC(void *a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v35 = a1;
  v5 = type metadata accessor for Logger();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AgentDescriptor.Bundle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(v9 + 16);
  (v31)(v13, a3, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v15, v13, v8);
  *(v17 + v16) = v14;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v18 = v33;
  aBlock[4] = sub_1000050F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000232FC;
  aBlock[3] = &unk_100062818;
  v19 = _Block_copy(aBlock);

  v35 = a2;
  [a2 setCompletionBlock:v19];
  _Block_release(v19);
  static Logger.uv.getter();
  v20 = v34;
  v31();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    sub_100004C18(&qword_10006E8D0, &type metadata accessor for AgentDescriptor.Bundle);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v20, v8);
    v28 = sub_10000E0C0(v25, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "will begin launch transaction for %s", v23, 0xCu);
    sub_10000519C(v24);
  }

  else
  {

    (*(v9 + 8))(v20, v8);
  }

  (*(v36 + 8))(v18, v37);
  return [v35 begin];
}

void sub_100003610(int a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v43 = *(v6 + 16);
  v44 = v6 + 16;
  v43(v9, a2, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a3;
    v17 = v16;
    v41 = swift_slowAlloc();
    *&v50[0] = v41;
    *v17 = 136315394;
    sub_100004C18(&qword_10006E8D0, &type metadata accessor for AgentDescriptor.Bundle);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = v9;
    v22 = v5;
    (*(v6 + 8))(v21, v5);
    v23 = sub_10000E0C0(v18, v20, v50);

    *(v17 + 4) = v23;
    *(v17 + 12) = 1024;
    LOBYTE(v23) = v47;
    *(v17 + 14) = v47 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "launch transaction completed for %s with success = %{BOOL}d", v17, 0x12u);
    sub_10000519C(v41);

    (*(v45 + 8))(v13, v46);
    if ((v23 & 1) == 0)
    {
LABEL_10:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v32 = Strong, v33 = [Strong error], v32, !v33))
      {
        v34 = type metadata accessor for ProcessError();
        sub_100004C18(&qword_10006E8D8, &type metadata accessor for ProcessError);
        swift_allocError();
        v36 = v35;
        v43(v35, a2, v22);
        (*(*(v34 - 8) + 104))(v36, enum case for ProcessError.noLaunchedProcess(_:), v34);
      }

      Promise.fail(with:)();
      goto LABEL_14;
    }
  }

  else
  {

    v24 = v9;
    v22 = v5;
    (*(v6 + 8))(v24, v5);
    (*(v45 + 8))(v13, v46);
    if ((v47 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = v25;
  v27 = [v25 process];

  if (!v27)
  {
    goto LABEL_10;
  }

  v28 = [v27 handle];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 auditToken];

    if (v30)
    {
      [v30 realToken];

      v48 = v50[0];
      v49 = v50[1];
      Promise.succeed(with:)();

      return;
    }
  }

  v37 = type metadata accessor for ProcessError();
  sub_100004C18(&qword_10006E8D8, &type metadata accessor for ProcessError);
  swift_allocError();
  v39 = v38;
  *v38 = [v27 pid];
  (*(*(v37 - 8) + 104))(v39, enum case for ProcessError.noAuditTokenForPid(_:), v37);
  Promise.fail(with:)();

LABEL_14:
}

uint64_t sub_100003BD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100003BF8, 0, 0);
}

uint64_t sub_100003BF8()
{
  v1 = v0[2];
  v2 = v0[3];
  AgentDescriptor.Bundle.bundleID.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v3];

  *v1 = v4;
  v5 = enum case for PreviewAgentJITBootstrapMethod.runningBoardIdentity(_:);
  v6 = type metadata accessor for PreviewAgentJITBootstrapMethod();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100003CF0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);

    v1(v3);

    return sub_100004D54(v1);
  }

  return result;
}

id sub_100003DE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100003F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

void *sub_100003F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100003F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100004000()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *sub_100004050@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

id sub_100004118(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1000041DC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v0];

  v2 = [objc_opt_self() predicateMatchingIdentity:v1];
  sub_1000052B8(0, &qword_10006E900, RBSProcessHandle_ptr);
  v3 = v2;
  v4 = sub_100004118(v3);

  if (v4)
  {
    v6 = RBSProcessHandle.applicationProcess.getter();

    if (v6)
    {
      return v4;
    }

    v3 = v4;
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000042E4()
{
  AgentDescriptor.Bundle.bundleID.getter();
  v0 = sub_1000041DC();
  v2 = v1;

  if (v0)
  {
    v3 = type metadata accessor for ProcessExitObserver();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler];
    *v5 = 0;
    *(v5 + 1) = 0;
    *&v4[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process] = v2;
    v11.receiver = v4;
    v11.super_class = v3;
    v6 = v2;
    v7 = objc_msgSendSuper2(&v11, "init");
    [*&v7[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process] addObserver:{v7, v11.receiver, v11.super_class}];
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    __chkstk_darwin();
    v8 = Future.__allocating_init(dsoHandle:file:line:column:function:callback:)();
    *(swift_allocObject() + 16) = v7;
    v9 = v7;
    Future.observeFinish(_:)();

    return v8;
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }
}

uint64_t sub_1000044F0(uint64_t a1)
{
  v2 = type metadata accessor for PreviewAgentLaunchConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = &v29 - v11;
  PreviewAgentLaunchConfiguration.agentBundle.getter();
  (*(v3 + 16))(v5, a1, v2);
  v13 = v12;
  v14 = v6;
  (*(v7 + 16))(v10, v13, v6);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v4 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v5, v2);
  v18 = v7;
  (*(v7 + 32))(v17 + v16, v10, v14);
  v19 = v30;
  AgentDescriptor.Bundle.bundleID.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v20];

  v22 = objc_allocWithZone(FBApplicationProcessLaunchTransaction);
  aBlock[4] = sub_100004ED0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F0C;
  aBlock[3] = &unk_100062778;
  v23 = _Block_copy(aBlock);

  v24 = [v22 initWithProcessIdentity:v21 executionContextProvider:v23];
  _Block_release(v23);

  sub_100004C60(&qword_10006E8C8, &qword_10004D778);
  v31 = v24;
  v32 = v19;
  v25 = v19;
  v26 = Future.__allocating_init(dsoHandle:file:line:column:function:callback:)();
  *(swift_allocObject() + 16) = v24;
  v27 = v24;
  Future.observeCancelation(_:)();

  (*(v18 + 8))(v25, v14);
  return v26;
}

uint64_t sub_1000048FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000052B8(0, &qword_10006E8A0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_100004BF8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_1000626E8;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100004C18(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_100004CA8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100004BC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004C60(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004CA8()
{
  result = qword_10006FCA0;
  if (!qword_10006FCA0)
  {
    sub_100004D0C(&unk_10006E8B0, &unk_10004D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FCA0);
  }

  return result;
}

uint64_t sub_100004D0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004D88()
{
  v1 = type metadata accessor for PreviewAgentLaunchConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100004ED0()
{
  v1 = *(type metadata accessor for PreviewAgentLaunchConfiguration() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100002200(v0 + v2, v5);
}

void sub_100004FA4()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  [v1 failWithReason:v2];
}

uint64_t sub_100005010()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005048()
{
  v1 = type metadata accessor for AgentDescriptor.Bundle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_1000050F4(int a1)
{
  v3 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100003610(a1, v1 + v4, v6);
}

uint64_t sub_10000519C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000051E8()
{
  result = qword_10006E8E0;
  if (!qword_10006E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E8E0);
  }

  return result;
}

_OWORD *sub_10000523C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100005254()
{
  v1 = *(v0 + 16);
  v2 = (v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v3 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v4 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_100004D54(v3);
  v5 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process);

  return [v5 removeObserver:v1];
}

uint64_t sub_1000052B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_100005304(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100005370(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double sub_1000053E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000542C(a1, a2);
  [v2 bounds];
  v4 = v3;

  return v4;
}

id sub_10000542C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v4 = v3;

  v5 = [v4 displayConfiguration];
  return v5;
}

void *sub_100005488()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v1;
  v5 = v2;
  return v1;
}

uint64_t BSDeviceClass.description.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 6578544;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6863746177;
      }

      goto LABEL_12;
    }

    return 30324;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 6582128;
      }

LABEL_12:
      v5[4] = v1;
      v5[5] = v2;
      strcpy(v5, "unrecognized:");
      HIWORD(v5[1]) = -4864;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      return v5[0];
    }

    return 0x656E6F6870;
  }
}

uint64_t BSDeviceHomeButtonType.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1701736302;
      }

      goto LABEL_8;
    }

    return 1112036179;
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return 0x79636167656CLL;
      }

LABEL_8:
      v5[4] = v1;
      v5[5] = v2;
      strcpy(v5, "unrecognized:");
      HIWORD(v5[1]) = -4864;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      return v5[0];
    }

    return 0x6E776F6E6B6E75;
  }
}

uint64_t UISDeviceIdiom.description.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if ((a1 - 8) < 4)
    {
      v2 = 0x656E696665646E75;
LABEL_9:
      v4 = v2;
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return v4;
    }

    if (a1 == 6)
    {
      return 6513005;
    }

    else
    {
      if (a1 != 7)
      {
LABEL_21:
        v2 = 0x6E676F6365726E75;
        goto LABEL_9;
      }

      return 0x6E6F69736976;
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 30324;
    }

    else if (a1 == 4)
    {
      return 0x79616C50726163;
    }

    else
    {
      return 0x6863746177;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 6578544;
      }

      goto LABEL_21;
    }

    return 0x656E6F6870;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

__n128 sub_10000588C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000058B0(void *a1)
{
  v1 = [a1 deviceInfoIntegerValueForKey:UISDeviceContextDeviceIdiomKey];
  if ((v1 - 1) > 6)
  {
    return -1;
  }

  else
  {
    return qword_10004D928[(v1 - 1)];
  }
}

uint64_t sub_100005900(void *a1)
{
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 0x3D656369766544;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  result = [a1 deviceInfoIntegerValueForKey:UISDeviceContextDeviceClassKey];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v4._countAndFlagsBits = BSDeviceClass.description.getter(result);
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x3D6D6F696449202CLL;
    v5._object = 0xE800000000000000;
    String.append(_:)(v5);
    sub_1000058B0(a1);
    type metadata accessor for UIUserInterfaceIdiom(0);
    _print_unlocked<A, B>(_:_:)();
    v6._countAndFlagsBits = 0x7542656D6F48202CLL;
    v6._object = 0xED00003D6E6F7474;
    String.append(_:)(v6);
    v7._countAndFlagsBits = BSDeviceHomeButtonType.description.getter([a1 deviceInfoIntegerValueForKey:UISDeviceContextHomeButtonTypeKey]);
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x72656E726F43202CLL;
    v8._object = 0xEF3D737569646152;
    String.append(_:)(v8);
    [a1 deviceInfoFloatValueForKey:UISDeviceContextDeviceCornerRadiusKey];
    v9._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v9);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005AC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100005B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005B6C()
{
  v1 = v0;
  v42 = type metadata accessor for ShellToHostMessage();
  v2 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Callsite();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for Unreachable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateSeed();
  v43 = *(updated - 8);
  v44 = updated;
  v13 = *(v43 + 64);
  v14 = __chkstk_darwin(updated);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  SceneUpdateHandshake.updateSeed.getter();
  swift_beginAccess();
  v19 = *(v0 + 24);
  if (*(v19 + 16) && (v20 = sub_100006EC0(v18), (v21 & 1) != 0))
  {
    v42 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    Unreachable.init(_:diagnostics:callsite:)();
    sub_10000B700(&qword_10006EA30, &type metadata accessor for Unreachable);
    swift_allocError();
    v22 = v8;
    v41 = *(v8 + 16);
    v41(v23, v11, v7);
    Promise.fail(with:)();

    v24 = v43;
    (*(v43 + 16))(v16, v18, v44);
    swift_beginAccess();
    sub_100006158(0, v16);
    swift_endAccess();
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    swift_allocError();
    v41(v25, v11, v7);
    v26 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    (*(v22 + 8))(v11, v7);
    (*(v24 + 8))(v18, v44);
  }

  else
  {
    swift_endAccess();
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    v26 = static Future.create(dsoHandle:file:line:column:function:)();
    v28 = v27;
    swift_beginAccess();

    v29 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_100009D48(v28, v18, isUniquelyReferenced_nonNull_native);
    *(v1 + 24) = v45;
    swift_endAccess();
    v31 = *(v1 + 16);
    v32 = sub_100004C60(&qword_10006EA28, &qword_10004D9B8);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    SceneUpdateHandshake.preferences.getter();
    v35 = v43;
    v36 = &v4[v33];
    v37 = v44;
    (*(v43 + 16))(v36, v18, v44);
    *&v4[v34] = SceneUpdateHandshake.fenceHandle.getter();
    swift_storeEnumTagMultiPayload();
    SceneMessenger.send(message:)();
    sub_100006DA8(v4);
    v38 = SceneUpdateHandshake.fenceHandle.getter();
    if (v38)
    {
      v39 = v38;
      [v38 invalidate];

      (*(v35 + 8))(v18, v37);
    }

    else
    {
      (*(v35 + 8))(v18, v37);
    }
  }

  return v26;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100009D48(a1, a2, isUniquelyReferenced_nonNull_native);
    updated = type metadata accessor for SceneUpdateSeed();
    result = (*(*(updated - 8) + 8))(a2, updated);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100006EC0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10000AAE8(&type metadata accessor for SceneUpdateSeed, &qword_10006EA38, &unk_10004D9C0);
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for SceneUpdateSeed();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100009584(v13, v16, &type metadata accessor for SceneUpdateSeed, &qword_10006EA40, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for SceneUpdateSeed();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100006380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100009F4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100006E04(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10000A978();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_1000093D4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100006478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_10000A0C8(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for AgentDescriptor.Bundle();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000070AC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10000AAE8(&type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA80, &qword_10004D9D8);
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for AgentDescriptor.Bundle();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100009584(v13, v16, &type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for AgentDescriptor.Bundle();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1000066A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10000A2CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100007180(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10000AD64();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100009838(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100006798(uint64_t a1, uint64_t a2)
{
  v5 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for LaunchPayload();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B64C(a1);
    sub_100007870(a2, v8);
    v14 = type metadata accessor for AgentDescriptor.Bundle();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B64C(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10000A448(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for AgentDescriptor.Bundle();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10000A64C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100007180(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10000B394();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100009838(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100006A9C(uint64_t a1)
{
  updated = type metadata accessor for SceneUpdateSeed();
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(updated);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = sub_100006EC0(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    Promise.succeed(with:)();
  }

  else
  {
    swift_endAccess();
  }

  (*(v4 + 16))(v7, a1, updated);
  swift_beginAccess();
  sub_100006158(0, v7);
  return swift_endAccess();
}

uint64_t sub_100006C04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_100006C8C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for ShellToHostMessage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 16);
  v10 = *(sub_100004C60(&qword_10006EA18, &qword_10004D9A8) + 48);
  v11 = type metadata accessor for PreviewPreferences();
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  *&v8[v10] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = a2;
  SceneMessenger.send(message:)();
  sub_100006DA8(v8);
  return [v12 invalidate];
}

uint64_t sub_100006DA8(uint64_t a1)
{
  v2 = type metadata accessor for ShellToHostMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006E04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100007354(a1, a2, v6);
}

unint64_t sub_100006E7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000740C(a1, v4);
}

unint64_t sub_100006EC0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for SceneUpdateSeed();
  sub_10000B700(&qword_10006EA40, &type metadata accessor for SceneUpdateSeed);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v5, &type metadata accessor for SceneUpdateSeed, &qword_10006EA48, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
}

unint64_t sub_100006F94(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000074D4(a1, v4);
}

unint64_t sub_100006FD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ContentKey();
  sub_10000B700(&qword_10006EA70, &type metadata accessor for ContentKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v5, &type metadata accessor for ContentKey, &qword_10006EA78, &type metadata accessor for ContentKey, &protocol conformance descriptor for ContentKey);
}

unint64_t sub_1000070AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for AgentDescriptor.Bundle();
  sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v5, &type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA58, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
}

unint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_100007738(a1, a2, v6);
}

unint64_t sub_100007214(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ContentCategory();
  sub_10000B700(&qword_10006EAA0, &type metadata accessor for ContentCategory);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v5, &type metadata accessor for ContentCategory, &qword_10006EAA8, &type metadata accessor for ContentCategory, &protocol conformance descriptor for ContentCategory);
}

unint64_t sub_1000072E8(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100007804(a1, v4);
}

unint64_t sub_100007354(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000740C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000B748(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000B7A4(v8);
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

unint64_t sub_1000074D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000B6B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100007598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10000B700(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100007738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100007804(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100007870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000070AC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000AED0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for AgentDescriptor.Bundle();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for LaunchPayload();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100009A04(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for LaunchPayload();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100007A10(uint64_t a1, int a2)
{
  v3 = v2;
  updated = type metadata accessor for SceneUpdateSeed();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(updated);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100004C60(&qword_10006EA38, &unk_10004D9C0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, updated);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, updated);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10000B700(&qword_10006EA40, &type metadata accessor for SceneUpdateSeed);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, updated);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100007DEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100008094(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100004C60(&qword_10006EA80, &qword_10004D9D8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100008470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_100008738(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for LaunchPayload();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AgentDescriptor.Bundle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_100008BE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100008E88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_100009150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C60(&unk_10006EA90, &qword_10004D9E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1000093D4(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

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
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
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

  return result;
}

unint64_t sub_100009584(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_10000B700(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100009838(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      Hasher.init(_seed:)();
      if (v11)
      {
        Hasher._combine(_:)(1uLL);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
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

  return result;
}

unint64_t sub_100009A04(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgentDescriptor.Bundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for LaunchPayload() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100009D48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  updated = type metadata accessor for SceneUpdateSeed();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(updated);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100006EC0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10000AAE8(&type metadata accessor for SceneUpdateSeed, &qword_10006EA38, &unk_10004D9C0);
      goto LABEL_7;
    }

    sub_100007A10(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100006EC0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, updated);
      return sub_10000A7C8(v15, v12, a1, v21, &type metadata accessor for SceneUpdateSeed);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100009F4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006E04(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100007DEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100006E04(a2, a3);
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
      sub_10000A978();
      v11 = v19;
    }
  }

  v22 = *v5;
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

uint64_t sub_10000A0C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AgentDescriptor.Bundle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000070AC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10000AAE8(&type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA80, &qword_10004D9D8);
      goto LABEL_7;
    }

    sub_100008094(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1000070AC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10000A7C8(v15, v12, a1, v21, &type metadata accessor for AgentDescriptor.Bundle);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10000A2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007180(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008470(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100007180(a2, a3);
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
      sub_10000AD64();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
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

uint64_t sub_10000A448(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AgentDescriptor.Bundle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000070AC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10000AED0();
      goto LABEL_7;
    }

    sub_100008738(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1000070AC(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10000A884(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for LaunchPayload();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10000A64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007180(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008E88(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100007180(a2, a3);
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
      sub_10000B394();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
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

uint64_t sub_10000A7C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10000A884(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AgentDescriptor.Bundle();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LaunchPayload();
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

void *sub_10000A978()
{
  v1 = v0;
  sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

void *sub_10000AAE8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_100004C60(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_10000AD64()
{
  v1 = v0;
  sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_10000AED0()
{
  v1 = v0;
  v43 = type metadata accessor for LaunchPayload();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AgentDescriptor.Bundle();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10000B224()
{
  v1 = v0;
  sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_10000B394()
{
  v1 = v0;
  sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10000B500()
{
  v1 = v0;
  sub_100004C60(&unk_10006EA90, &qword_10004D9E0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10000B64C(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B6B4()
{
  result = qword_10006EA88;
  if (!qword_10006EA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA88);
  }

  return result;
}

uint64_t sub_10000B700(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000B7F8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 scene];
  v8 = [v7 settings];
  v9 = [v8 displayConfiguration];

  if (v9)
  {
    v10 = [v9 identity];
    v11 = [v10 rootIdentity];

    v20[4] = v11;
    __chkstk_darwin(v12);
    v20[-2] = v11;
    v20[-1] = v9;
    swift_beginAccess();
    sub_100004C60(&qword_10006EBD0, &qword_10004DA98);
    sub_10000BFB0();
    KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
    swift_endAccess();
    v13 = v21;
    [v21 addScene:v7];
  }

  else
  {
    static Logger.uv.getter();
    v14 = v7;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot bind FBScene lacking display configuration: %@", v17, 0xCu);
      sub_10000BF34(v18, &qword_10006EBC8, &qword_10004DE70);
    }

    else
    {
      v19 = v15;
      v15 = v14;
    }

    (*(v3 + 8))(v6, v2);
  }
}

id sub_10000BB08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = a3;
    v17 = v16;
    *v15 = 138412290;
    *(v15 + 4) = v11;
    *v16 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Adding a new root window binder for local scene, with root display identity: %@", v15, 0xCu);
    sub_10000BF34(v17, &qword_10006EBC8, &qword_10004DE70);
    a3 = v22;

    a2 = v21;
  }

  (*(v7 + 8))(v10, v6);
  result = [objc_allocWithZone(UIRootWindowScenePresentationBinder) initWithPriority:0 displayConfiguration:a2];
  *a3 = result;
  return result;
}

uint64_t sub_10000BCF8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_10000BD78()
{
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PreviewShellPluginRegistry();
  sub_10000BE8C(v0, qword_1000736E8);
  swift_beginAccess();
  PreviewShellPluginRegistry.sceneBinder.getter();
  swift_endAccess();
  if (v5)
  {
    return sub_10000BF1C(&v4, &qword_10006EAD0);
  }

  v2 = type metadata accessor for SceneBinder.DefaultBinder();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10002B5D8(&_swiftEmptyArrayStorage);
  qword_10006EAE8 = v2;
  result = sub_10000BEC4();
  qword_10006EAF0 = result;
  qword_10006EAD0 = v3;
  if (v5)
  {
    return sub_10000BF34(&v4, &qword_10006EBC0, &qword_10004DA90);
  }

  return result;
}

uint64_t sub_10000BE8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000BEC4()
{
  result = qword_10006EBB8;
  if (!qword_10006EBB8)
  {
    type metadata accessor for SceneBinder.DefaultBinder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EBB8);
  }

  return result;
}

uint64_t sub_10000BF1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BF34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004C60(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BFB0()
{
  result = qword_10006EBD8;
  if (!qword_10006EBD8)
  {
    sub_100004D0C(&qword_10006EBD0, &qword_10004DA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EBD8);
  }

  return result;
}

uint64_t sub_10000C088(int a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_10000E86C(v2 + 56, &v12);
  if (*&v13[8])
  {
    *&v15[12] = *&v13[12];
    v14 = v12;
    *v15 = *v13;
    if (*&v13[24] == a1)
    {
      v5 = *&v15[8];
      v6 = *&v15[16];
      sub_10000E678(&v14, *&v15[8]);
      v7 = a2(v5, v6);
      sub_10000BF34(&v14, &qword_10006ED08, &qword_10004DB80);
      return v7;
    }

    v9 = &qword_10006ED08;
    v10 = &qword_10004DB80;
    v11 = &v14;
  }

  else
  {
    v9 = &qword_10006ED00;
    v10 = &qword_10004DB78;
    v11 = &v12;
  }

  sub_10000BF34(v11, v9, v10);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
}

uint64_t sub_10000C1DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v80 = a7;
  v79 = a6;
  v78 = a5;
  v88 = a4;
  v86 = a3;
  v71 = a1;
  v87 = type metadata accessor for ExecutionLane();
  v83 = *(v87 - 8);
  v10 = *(v83 + 64);
  __chkstk_darwin(v87);
  v82 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ContentKey();
  v73 = *(v74 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Logger();
  v75 = *(v76 - 1);
  v14 = *(v75 + 64);
  __chkstk_darwin(v76);
  v85 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Callsite();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PreviewAgentConnector();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v8 + 48);
  v26 = *(v22 + 16);
  v77 = a2;
  v26(v24, a2, v21);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  (*(v22 + 32))(v28 + v27, v24, v21);
  v84 = v8;
  swift_retain_n();
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v17 + 8))(v20, v16);
  v29 = v71;
  v89 = v86;
  v90 = v88;
  v91 = v25;
  swift_beginAccess();
  sub_100004C60(&qword_10006ECB0, &qword_10004DB48);
  sub_10000DEB8();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  swift_endAccess();
  sub_10000E808(v96, v93);
  v31 = v25[3];
  v30 = v25[4];
  updated = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  v33 = *(updated + 48);
  v34 = *(updated + 52);
  v88 = updated;
  swift_allocObject();
  swift_unknownObjectRetain();

  v86 = sub_100012360(v93, v31, v30, sub_10000DE24, v28);
  swift_unknownObjectRelease();
  v81 = v28;

  if (v25[2])
  {
    v93[0] = v25[2];
    sub_10000E7C0(&qword_10006ECC0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v35 = v25[2];
  }

  v25[2] = v86;

  v36 = v85;
  static Logger.uv.getter();
  v37 = v73;
  v38 = v72;
  v39 = v29;
  v40 = v74;
  (*(v73 + 16))(v72, v39, v74);
  sub_10000E808(v96, v93);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v43 = 136446722;
    v45 = v25[3];
    v44 = v25[4];
    swift_getObjectType();
    v46 = *(*(v44 + 8) + 8);
    v47 = dispatch thunk of PreviewShellScene.identifier.getter();
    v49 = v40;
    v50 = sub_10000E0C0(v47, v48, &v92);

    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    sub_10000E7C0(&qword_10006ECD8, 255, &type metadata accessor for ContentKey);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    (*(v37 + 8))(v38, v49);
    v54 = sub_10000E0C0(v51, v53, &v92);

    *(v43 + 14) = v54;
    *(v43 + 22) = 2082;
    v55 = v95;
    sub_10000E678(v93, v94);
    v56 = *(v55 + 8);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    sub_10000519C(v93);
    v60 = sub_10000E0C0(v57, v59, &v92);

    *(v43 + 24) = v60;
    _os_log_impl(&_mh_execute_header, v41, v42, "Canvas %{public}s performing update for %{public}s using %{public}s", v43, 0x20u);
    swift_arrayDestroy();

    (*(v75 + 8))(v85, v76);
  }

  else
  {

    (*(v37 + 8))(v38, v40);
    (*(v75 + 8))(v36, v76);
    sub_10000519C(v93);
  }

  sub_100004C60(&qword_10006ECC8, &unk_10004DB50);
  v75 = static Future.create(dsoHandle:file:line:column:function:)();
  v85 = v61;
  sub_10000E678(v96, v96[3]);
  v62 = swift_allocObject();
  v63 = v84;
  v62[2] = sub_10000DD58;
  v62[3] = v63;
  v64 = v86;
  v62[4] = v86;
  v62[5] = v25;
  v94 = v88;
  v76 = type metadata accessor for CanvasUpdater.UpdateDelegate;
  v95 = sub_10000E7C0(&qword_10006ECD0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate);
  v93[0] = v64;
  swift_retain_n();

  v79 = dispatch thunk of CanvasContentProviderBox.performUpdate(using:providerPromise:updatePayload:controlStates:agentContext:makeSceneContext:delegate:)();

  sub_10000519C(v93);
  v65 = swift_allocObject();
  *(v65 + 16) = v25;
  *(v65 + 24) = v64;

  v66 = v82;
  static ExecutionLane.any.getter();
  type metadata accessor for SceneLayout();
  v80 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v83 = *(v83 + 8);
  (v83)(v66, v87);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  static ExecutionLane.any.getter();
  type metadata accessor for CanvasUpdater.UpdateResult(0);
  Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v67 = v87;
  v68 = v83;
  (v83)(v66, v87);
  v93[0] = v64;
  sub_10000E7C0(&qword_10006ECC0, 255, v76);

  Invalidatable.onInvalidation(_:)();

  sub_10000519C(v96);
  static ExecutionLane.main.getter();

  Future.observeSuccess(on:_:)();

  v68(v66, v67);

  static ExecutionLane.any.getter();
  type metadata accessor for PropertyList();
  v69 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v68(v66, v67);
  return v69;
}

uint64_t sub_10000CF00@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  sub_100036134(a1);
  v7 = a1[4];
  sub_10000E678(a1, a1[3]);
  v8 = dispatch thunk of CanvasContentHost.viewController.getter();
  swift_beginAccess();
  v9 = a2[10];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = a2[11];
  v11 = sub_10000E678(a2 + 7, a2[10]);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  v16 = dispatch thunk of CanvasContentHost.viewController.getter();
  (*(v12 + 8))(v15, v9);

  if (v8 != v16)
  {
LABEL_5:
    v17 = &enum case for SceneUpdateTiming.async(_:);
    goto LABEL_6;
  }

  v17 = &enum case for SceneUpdateTiming.fenced(_:);
LABEL_6:
  v18 = *v17;
  updated = type metadata accessor for SceneUpdateTiming();
  return (*(*(updated - 8) + 104))(a3, v18, updated);
}

uint64_t sub_10000D0C4(void *a1, void *a2)
{
  v4 = a2[3];
  sub_100036254(a1);
  v5 = a1[4];
  sub_10000E678(a1, a1[3]);
  v6 = dispatch thunk of CanvasContentHost.viewController.getter();
  swift_beginAccess();
  v7 = a2[10];
  if (!v7)
  {

    if (!a2[10])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = a2[11];
  v9 = sub_10000E678(a2 + 7, a2[10]);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13);
  v14 = dispatch thunk of CanvasContentHost.viewController.getter();
  (*(v10 + 8))(v13, v7);

  if (v6 != v14)
  {
    if (!a2[10])
    {
LABEL_5:
      v15 = a1[4];
      sub_10000E678(a1, a1[3]);
      dispatch thunk of CanvasContentHost.didActivate()();
      goto LABEL_6;
    }

LABEL_4:
    sub_10000E808((a2 + 7), v18);
    sub_10000E678(v18, v18[3]);
    dispatch thunk of CanvasContentHost.didDeactivate()();
    sub_10000519C(v18);
    goto LABEL_5;
  }

LABEL_6:
  sub_10000E808(a1, v18);
  v19 = PreviewAgentConnector.pid.getter();
  swift_beginAccess();
  sub_10000E968(v18, (a2 + 7), &qword_10006ED00, &qword_10004DB78);
  return swift_endAccess();
}

uint64_t sub_10000D2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = type metadata accessor for PropertyList();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v26[0] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006ECE8, &qword_10004DB68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for HostIdentity();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for HostedPreviewReply();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 32);
  v19 = *(a2 + 40);
  swift_getObjectType();
  v21 = *(*(v19 + 8) + 8);
  dispatch thunk of PreviewShellScene.hostIdentity.getter();
  v22 = type metadata accessor for SceneLayout();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, a1, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  v24 = *(type metadata accessor for CanvasUpdater.UpdateResult(0) + 20);
  CanvasUpdateOutput.controlDescriptions.getter();
  CanvasUpdateOutput.controlStates.getter();
  CanvasUpdateOutput.hostedOutput.getter();
  HostedPreviewReply.init(hostIdentity:sceneLayout:controlDescriptions:controlStates:contentPayload:)();
  sub_10000E7C0(&qword_10006ECF0, 255, &type metadata accessor for HostedPreviewReply);
  PropertyListRepresentable.propertyList.getter();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_10000D5DC()
{
  v1 = sub_100004C60(&qword_10006ED10, &qword_10004DB88);
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  v21 = static Future.create(dsoHandle:file:line:column:function:)();
  v10 = v9;
  swift_beginAccess();
  if (*(v0 + 80))
  {
    sub_10000E808(v0 + 56, v23);
    sub_10000BF1C(v23, v24);
    sub_10000E678(v24, v24[3]);
    dispatch thunk of CanvasContentHost.confirmReadyForDisplayAfterAsyncResize()();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10000E9D0;
    *(v11 + 24) = v10;

    Future.observeSuccess(_:)();

    sub_10000519C(v24);
  }

  v12 = swift_allocBox();
  v14 = v13;
  v15 = type metadata accessor for CancellationToken();
  v20 = *(*(v15 - 8) + 56);
  v20(v14, 1, 1, v15);
  v16 = *(v0 + 104);
  EventStream.Sink.eventStream.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10000E920;
  *(v18 + 24) = v17;

  EventStream.observe(dsoHandle:file:line:column:function:_:)();

  (*(v22 + 8))(v4, v1);
  v20(v8, 0, 1, v15);
  swift_beginAccess();
  sub_10000E968(v8, v14, &qword_10006ED18, &unk_10004DB90);

  return v21;
}

uint64_t sub_10000DA24()
{
  v0 = type metadata accessor for CancellationToken();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_projectBox();
  Promise<A>.trySucceed()();
  swift_beginAccess();
  result = (*(v1 + 48))(v5, 1, v0);
  if (!result)
  {
    (*(v1 + 16))(v4, v5, v0);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_10000DBAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  sub_10000BF34(v0 + 56, &qword_10006ED00, &qword_10004DB78);
  v4 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_10000DD00(uint64_t a1, uint64_t a2)
{
  result = sub_10000E7C0(&qword_10006ECA8, a2, type metadata accessor for HostedPreviewCanvas);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DD60()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DE24(void *a1)
{
  v3 = *(*(type metadata accessor for PreviewAgentConnector() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_10000D0C4(a1, v4);
}

unint64_t sub_10000DEB8()
{
  result = qword_10006ECB8;
  if (!qword_10006ECB8)
  {
    sub_100004D0C(&qword_10006ECB0, &qword_10004DB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006ECB8);
  }

  return result;
}

uint64_t sub_10000DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100004C60(&qword_10006ECF8, &qword_10004DB70) + 48);
  v5 = type metadata accessor for SceneLayout();
  (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
  v6 = *(type metadata accessor for CanvasUpdater.UpdateResult(0) + 20);
  updated = type metadata accessor for CanvasUpdateOutput();
  v8 = *(*(updated - 8) + 16);

  return v8(a2 + v6, a1, updated);
}

uint64_t sub_10000DFF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E064(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000E0C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000E0C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E18C(v11, 0, 0, 1, a1, a2);
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
    sub_10000E760(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000519C(v11);
  return v7;
}

unint64_t sub_10000E18C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000E298(a5, a6);
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

char *sub_10000E298(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000E2E4(a1, a2);
  sub_10000E414(&off_100062540);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000E2E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000E500(v5, 0);
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
        v7 = sub_10000E500(v10, 0);
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

uint64_t sub_10000E414(uint64_t result)
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

  result = sub_10000E574(result, v12, 1, v3);
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

void *sub_10000E500(uint64_t a1, uint64_t a2)
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

  sub_100004C60(&qword_10006ECE0, &qword_10004DB60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E574(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C60(&qword_10006ECE0, &qword_10004DB60);
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

_BYTE **sub_10000E668(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10000E678(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E6BC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E7C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006ED00, &qword_10004DB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E8E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000DA24();
}

uint64_t sub_10000E928()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004C60(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_10000EA08()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DisplayTransformer created", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for DisplayTransformer();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10000EC5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayTransformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000ECB4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000F94C();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10000EECC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10000F0AC(v21 + 1);
    }

    v19 = v8;
    sub_10000F2D4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000F94C();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10000F358(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10000EECC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000F94C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000F0AC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000F0AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10000F2D4(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000F358(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000F0AC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000F4B8();
      goto LABEL_12;
    }

    sub_10000F608(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000F94C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10000F4B8()
{
  v1 = v0;
  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000F608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000F81C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000F94C();
    sub_10000F998();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10000ECB4(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_10000F94C()
{
  result = qword_10006EDB0;
  if (!qword_10006EDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EDB0);
  }

  return result;
}

unint64_t sub_10000F998()
{
  result = qword_10006EDB8;
  if (!qword_10006EDB8)
  {
    sub_10000F94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDB8);
  }

  return result;
}

id sub_10000FC28()
{
  v1 = *v0 + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *v1;
  v6 = v3;
  return v2;
}

void sub_10000FC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for Logger();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = &v5[OBJC_IVAR____TtC12PreviewShell10SimDisplay_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v5[OBJC_IVAR____TtC12PreviewShell10SimDisplay_displayID] = a3;
  v16 = objc_opt_self();
  v17 = v5;
  v18 = [v16 uv_loadedInitialContext];
  if (!v18)
  {
    v18 = [v16 defaultContext];
  }

  v19 = [objc_opt_self() uv_loadedInitialContext];
  if (!v19)
  {
    v20 = [objc_opt_self() mainScreen];
    v21 = [v20 displayConfiguration];

    if (!v21)
    {
      __break(1u);
      return;
    }

    v19 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:v21];
  }

  v40 = ObjectType;
  v22 = sub_1000020F0();
  v23 = v18;
  v24 = [v19 displayEdgeInfo];
  if (!v24)
  {
    v24 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
  }

  v25 = [v19 exclusionArea];
  v26 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:a4 displayEdgeInfo:v24 exclusionArea:v25];

  v27 = &v17[OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities];
  *v27 = v23;
  *(v27 + 1) = v26;
  v27[16] = v22;
  static Logger.uv.getter();
  v28 = v17;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 67240450;
    *(v31 + 4) = a3;
    *(v31 + 8) = 2082;
    v33 = *(v27 + 1);
    v34 = *v27;
    v35 = v33;

    v36 = sub_100005900(v34);
    v38 = v37;

    v39 = sub_10000E0C0(v36, v38, &v43);

    *(v31 + 10) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "SimDisplay %{public}u capabilities: <%{public}s>", v31, 0x12u);
    sub_10000519C(v32);
  }

  else
  {
  }

  (*(v41 + 8))(v14, v42);
  v44.receiver = v28;
  v44.super_class = v40;
  objc_msgSendSuper2(&v44, "init");
}

uint64_t sub_100010058()
{
  if (*(v0 + 16))
  {
    v11[0] = *(v0 + 16);
    type metadata accessor for CanvasUpdater.UpdateDelegate(0);
    sub_1000125F0(&qword_10006ECC0, type metadata accessor for CanvasUpdater.UpdateDelegate);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v1 = *(v0 + 16);
  }

  *(v0 + 16) = 0;

  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = sub_10000519C(v11))
  {
    v9 = i;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_10000E808(*(v2 + 56) + 40 * (v10 | (v9 << 6)), v11);
    sub_10000E678(v11, v11[3]);
    dispatch thunk of CanvasContentProviderBox.invalidateProviders()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100010230(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  v3 = *(a1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectRelease();
  v4 = *(a1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakeFuture);
  return dispatch thunk of Future.cancel(dsoHandle:file:line:column:function:)();
}

uint64_t sub_1000102B4()
{
  v1 = v0;
  updated = type metadata accessor for SceneUpdateSeed();
  v3 = *(updated - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(updated);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Callsite();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v8 + 8))(v11, v7);
  SceneUpdateHandshake.updateSeed.getter();
  sub_1000125F0(&qword_10006EFF0, &type metadata accessor for SceneUpdateSeed);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (*(v3 + 8))(v6, updated);
  if (v14[3] == v14[2])
  {
    v13 = *(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakePromise);
    return Promise.trySucceed(with:)();
  }

  return result;
}

uint64_t sub_1000104F4(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(v10, ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = v11;
    v9 = v12;
    sub_10000E678(v10, v11);
    (*(v9 + 16))(v4, a2, v8, v9);
    return sub_10000519C(v10);
  }

  return result;
}

uint64_t sub_1000105CC(uint64_t a1)
{
  sub_100012578(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox, v7);
  if (v8)
  {
    sub_10000E678(v7, v8);
    dispatch thunk of CanvasContentProviderBox.notePreviewCrashed(pid:)();
    result = sub_10000519C(v7);
  }

  else
  {
    result = sub_100012638(v7);
  }

  if (*(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene))
  {
    v4 = *(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000106B0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed;
  updated = type metadata accessor for SceneUpdateSeed();
  (*(*(updated - 8) + 8))(&v0[v2], updated);
  v4 = *&v0[OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate + 8];

  sub_100012638(&v0[OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox]);
  v5 = *&v0[OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene];
  swift_unknownObjectRelease();
  v6 = *&v0[OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakeFuture];

  v7 = *&v0[OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakePromise];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000107F0()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    v3 = *v1;
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 48);
    swift_unknownObjectRetain();
    v5(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

void sub_100010890()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    v3 = *v1;
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 56);
    swift_unknownObjectRetain();
    v5(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100010930(uint64_t result)
{
  v2 = (*v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v2)
  {
    v3 = result;
    v4 = v2[1];
    v5 = *v2;
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 64);
    swift_unknownObjectRetain();
    v7(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000109D8()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    v3 = *v1;
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100010A9C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 32) + 8);
  v6 = swift_unknownObjectRetain();
  a1(v6, v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_100010B04@<X0>(void *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = a2;
  v35 = a6;
  v7 = type metadata accessor for PreviewSceneRole();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  updated = type metadata accessor for SceneUpdateSeed();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(updated);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SceneUpdateTiming();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = sub_10000E678(a1, v21);
  v36[3] = v21;
  v36[4] = *(v22 + 8);
  v24 = sub_100011FC4(v36);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  v32(v36);
  sub_10000519C(v36);
  (*(v9 + 16))(v12, v33 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed, updated);
  (*(v14 + 16))(v18, v20, v13);
  v25 = *(v34 + 24);
  v26 = *(v34 + 32);
  swift_getObjectType();
  v27 = *(*(v26 + 8) + 8);
  dispatch thunk of PreviewShellScene.role.getter();
  SceneUpdateContext.init(seed:timing:role:)();
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_100010DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000E678(a1, v5);
  return sub_100011CFC(a3, v7, a2, v5, *(v6 + 8));
}

uint64_t sub_100010E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ExecutionLane();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = SceneUpdateHandshake.fenceHandle.getter();
  if (updated)
  {
    v12 = updated;
    v13 = *(v2 + 24);
    v14 = *(v3 + 32);
    swift_getObjectType();
    v15 = *(*(v14 + 8) + 8);
    v16 = dispatch thunk of PreviewShellScene.windowScene.getter();
    [v12 applyToScene:v16];
  }

  v17 = *(v3 + 24);
  v18 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(v26, ObjectType, v18);
  v20 = v27;
  v21 = v28;
  sub_10000E678(v26, v27);
  (*(v21 + 8))(a1, v20, v21);
  sub_10000E808(a2, v25);
  v22 = swift_allocObject();
  sub_10000BF1C(v25, v22 + 16);
  static ExecutionLane.any.getter();
  type metadata accessor for SceneUpdateTiming();
  v23 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  (*(v7 + 8))(v10, v6);
  sub_10000519C(v26);
  return v23;
}

uint64_t sub_1000110B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = type metadata accessor for ExecutionLane();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SceneLayout();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v29 - v13);
  v15 = type metadata accessor for Callsite();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v16 + 8))(v19, v15);
  v20 = *(v29 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate + 8);
  (*(v29 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate))(v30);
  v22 = *(v3 + 24);
  v21 = *(v3 + 32);
  swift_getObjectType();
  v23 = *(*(v21 + 8) + 8);
  sub_100011858(v14);
  sub_100012108();
  static CATransaction.afterSynchronize()();
  (*(v9 + 16))(v12, v14, v8);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v12, v8);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10001216C;
  *(v26 + 24) = v25;
  static ExecutionLane.any.getter();
  v27 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  (*(v31 + 8))(v7, v32);
  (*(v9 + 8))(v14, v8);
  return v27;
}

uint64_t sub_100011458(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ExecutionLane();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateTiming();
  v8 = *(updated - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(updated);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = *(v8 + 16);
  v14(&v24 - v12, a1, updated);
  v15 = (*(v8 + 88))(v13, updated);
  if (v15 == enum case for SceneUpdateTiming.fenced(_:))
  {
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    return static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  }

  else if (v15 == enum case for SceneUpdateTiming.async(_:))
  {
    v25 = v4;
    v17 = a2[4];
    sub_10000E678(a2, a2[3]);
    dispatch thunk of CanvasContentHost.confirmReadyForDisplayAfterAsyncResize()();
    v14(v11, a1, updated);
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = swift_allocObject();
    (*(v8 + 32))(v19 + v18, v11, updated);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1000122A4;
    *(v20 + 24) = v19;
    v21 = v26;
    static ExecutionLane.any.getter();
    v22 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

    (*(v27 + 8))(v21, v25);
    return v22;
  }

  else
  {
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    SceneUpdateTiming.unknownTimingError.getter();
    v23 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    (*(v8 + 8))(v13, updated);
    return v23;
  }
}

void sub_100011858(void *a1@<X8>)
{
  v2 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v3 = [v2 _FBSScene];

  v24 = [v3 settings];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    if (qword_10006E628 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for SceneLayout();
    v11 = sub_10000BE8C(v10, qword_100073738);
    v12 = *(*(v10 - 8) + 16);
    v13 = a1;
    v14 = v10;

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 previewSceneLayout];
  if (v6 == 1)
  {
    [v5 frame];
    v16 = v15;
    v18 = v17;

    *a1 = v16;
    a1[1] = v18;
    v19 = &enum case for SceneLayout.custom(_:);
LABEL_19:
    v22 = *v19;
    v23 = type metadata accessor for SceneLayout();
    v12 = *(*(v23 - 8) + 104);
    v14 = v23;
    v13 = a1;
    v11 = v22;

LABEL_10:
    v12(v13, v11, v14);
    return;
  }

  if (!v6)
  {
    v7 = [v5 interfaceOrientation];

    v8 = type metadata accessor for PreviewTraits.Orientation();
    if ((v7 - 2) > 2)
    {
      v9 = &enum case for PreviewTraits.Orientation.portrait(_:);
    }

    else
    {
      v9 = *(&off_100062C70 + (v7 - 2));
    }

    (*(*(v8 - 8) + 104))(a1, *v9, v8);
    v19 = &enum case for SceneLayout.device(_:);
    goto LABEL_19;
  }

  if (qword_10006E628 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for SceneLayout();
  v21 = sub_10000BE8C(v20, qword_100073738);
  (*(*(v20 - 8) + 16))(a1, v21, v20);
}

uint64_t sub_100011B5C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_100011BF0()
{
  result = type metadata accessor for SceneUpdateSeed();
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

uint64_t sub_100011CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ExecutionLane();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = a4;
  v23[4] = a5;
  v15 = sub_100011FC4(v23);
  (*(*(a4 - 8) + 16))(v15, a2, a4);
  v16 = *(a1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakeFuture);
  static ExecutionLane.main.getter();
  sub_10000E808(v23, v22);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  sub_10000BF1C(v22, v17 + 24);
  type metadata accessor for SceneUpdateTiming();

  Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  v18 = *(v11 + 8);
  v18(v14, v10);
  static ExecutionLane.main.getter();
  sub_10000E808(v23, v22);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a1;
  sub_10000BF1C(v22, v19 + 32);
  type metadata accessor for SceneLayout();

  v20 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  v18(v14, v10);
  sub_10000519C(v23);
  return v20;
}

uint64_t *sub_100011FC4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100012028()
{
  v1 = *(v0 + 16);

  sub_10000519C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100012068(uint64_t a1)
{
  v2 = v1 + 24;
  v3 = *(v1 + 16);
  return sub_100010E74(a1, v2);
}

uint64_t sub_100012094()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_10000519C(v0 + 4);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000120DC()
{
  v1 = *(v0 + 24);
  v2 = v0 + 32;
  v3 = *(v0 + 16);
  return sub_1000110B4(v1, v2);
}

unint64_t sub_100012108()
{
  result = qword_10006EFD8;
  if (!qword_10006EFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EFD8);
  }

  return result;
}

uint64_t sub_100012184()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000121BC()
{
  sub_10000519C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012214(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000122BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

uint64_t sub_100012338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_100012360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v19 = *v5;
  v12 = type metadata accessor for InvalidationHandle();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v5[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  SceneUpdateSeed.init()();
  v15 = (v5 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  *v15 = 0;
  v15[1] = 0;
  sub_100012578(a1, v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate);
  *v16 = a4;
  v16[1] = a5;
  sub_100004C60(&qword_10006EFE8, &qword_10004DD48);
  swift_unknownObjectRetain();

  *(v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakeFuture) = static Future.create(dsoHandle:file:line:column:function:)();
  *(v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakePromise) = v17;
  sub_1000125F0(&qword_10006ECC0, type metadata accessor for CanvasUpdater.UpdateDelegate);

  Invalidatable.onInvalidation(_:)();

  sub_100012638(a1);
  return v6;
}

uint64_t sub_100012578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006EFE0, &qword_10004DD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012638(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EFE0, &qword_10004DD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000126B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SceneLayout();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    updated = type metadata accessor for CanvasUpdateOutput();
    v11 = *(*(updated - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, updated);
  }
}

uint64_t sub_1000127B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SceneLayout();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    updated = type metadata accessor for CanvasUpdateOutput();
    v13 = *(*(updated - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, updated);
  }
}

uint64_t sub_1000128D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001290C()
{
  result = type metadata accessor for SceneLayout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CanvasUpdateOutput();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012998()
{
  type metadata accessor for SimDisplaySceneRegistry();
  result = swift_initStaticObject();
  qword_1000736B8 = result;
  return result;
}

uint64_t sub_100012A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a3;
  v77 = a2;
  ObjectType = swift_getObjectType();
  v69 = type metadata accessor for SceneCrashedStyle();
  v68 = *(v69 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PreviewSceneRole();
  v78 = *(v88 - 8);
  v8 = v78[8];
  v9 = __chkstk_darwin(v88);
  v74 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v75 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v63 = &v59 - v14;
  __chkstk_darwin(v13);
  v73 = &v59 - v15;
  v66 = type metadata accessor for SceneStoppedStyle();
  v65 = *(v66 - 8);
  v16 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Identifier();
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView;
  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView) = 0;
  v23 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController;
  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController) = 0;
  v24 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController;
  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController) = 0;
  v25 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer;
  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer) = 0;
  v62 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage;
  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage) = 0;
  v26 = a1;
  v27 = PreviewSceneAgentProxy.scene.getter();
  v28 = [v27 scene];

  v29 = [v28 uiPresentationManager];
  if (!v29)
  {
    sub_100014D48();
    v40 = swift_allocError();
    *v41 = v28;
    swift_willThrow();

    swift_unknownObjectRelease();

    v42 = *(v4 + v25);

    v43 = *((swift_isaMask & *v4) + 0x30);
    v44 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
    return v40;
  }

  v60 = v28;
  v62 = v26;
  aBlock = 0;
  v83 = 0xE000000000000000;
  v30 = v29;
  _StringGuts.grow(_:)(25);

  aBlock = 0xD000000000000017;
  v83 = 0x8000000100054320;
  Identifier.init()();
  sub_100014DB4(&qword_10006F1A8, &type metadata accessor for Identifier);
  v31 = v71;
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  (*(v70 + 8))(v21, v31);
  v33 = String._bridgeToObjectiveC()();

  v61 = v30;
  v34 = [v30 createPresenterWithIdentifier:v33];

  *(v4 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter) = v34;
  v86 = sub_1000133C0;
  v87 = 0;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_1000133D0;
  v85 = &unk_100062CA8;
  v35 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v34 modifyPresentationContext:v35];
  swift_unknownObjectRelease();
  _Block_release(v35);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v71 = v4;
    v70 = swift_getObjectType();
    dispatch thunk of PreviewShellScene.role.getter();
    v37 = v63;
    v38 = enum case for PreviewSceneRole.hosted(_:);
    v59 = v78[13];
    v59(v63);
    sub_100014DB4(&unk_10006F1B0, &type metadata accessor for PreviewSceneRole);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v80 && v83 == v81)
    {
      v39 = 1;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v45 = v78 + 1;
    v46 = v78[1];
    v47 = v37;
    v48 = v88;
    v46(v47, v88);
    v78 = v45;
    v46(v73, v48);

    v49 = v64;
    if (v39)
    {
      dispatch thunk of PreviewShellScene.stoppedStyle.getter();
    }

    else
    {
      static SceneStoppedStyle.none.getter();
    }

    (*(v65 + 32))(v71 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle, v49, v66);
    dispatch thunk of PreviewShellScene.role.getter();
    (v59)(v74, v38, v88);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v80 && v83 == v81)
    {
      v50 = v88;
      v46(v74, v88);
      v46(v75, v50);

      v51 = v69;
      v52 = v68;
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v54 = v88;
      v46(v74, v88);
      v46(v75, v54);

      v51 = v69;
      v52 = v68;
      if ((v53 & 1) == 0)
      {
        v55 = v67;
        static SceneCrashedStyle.none.getter();
        v56 = ObjectType;
        v57 = v60;
        goto LABEL_17;
      }
    }

    v55 = v67;
    dispatch thunk of PreviewShellScene.crashedStyle.getter();
    v56 = ObjectType;
    v57 = v60;
LABEL_17:
    v58 = v71;
    (*(v52 + 32))(v71 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedStyle, v55, v51);
    v79.receiver = v58;
    v79.super_class = v56;
    v40 = objc_msgSendSuper2(&v79, "initWithNibName:bundle:", 0, 0);

    swift_unknownObjectRelease();

    return v40;
  }

  __break(1u);
  return result;
}

void sub_1000133D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

id sub_100013450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SchedulerInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = [objc_opt_self() systemBackgroundColor];
  [v9 setBackgroundColor:v10];

  v11 = *&v1[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter];
  [v11 activate];
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [v11 presentationView];
  [v12 addSubview:v13];

  if (SceneStoppedStyle.snapshotStyle.getter() != 3 || (result = SceneCrashedStyle.snapshotStyle.getter(), result != 3))
  {
    SchedulerInterval.init(floatLiteral:)();
    sub_10001366C();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_10001366C()
{
  v1 = type metadata accessor for DispatchScheduler();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer;
  if (*(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer))
  {

    DelayedInvocation.cancel()();
  }

  type metadata accessor for DelayedInvocation();
  sub_100014DFC();
  static OS_dispatch_queue.main.getter();
  DispatchScheduler.init(queue:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();
  v5 = *(v0 + v3);
  *(v0 + v3) = v4;

  if (*(v0 + v3))
  {
    v7 = *(v0 + v3);

    DelayedInvocation.schedule(delay:)();
  }

  return result;
}

void sub_10001380C()
{
  v60.receiver = v0;
  v60.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v60, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] presentationView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  v12 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame:{v17, v19, v21, v23}];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  [v24 bringSubviewToFront:v13];

LABEL_6:
  v26 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController];
  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = v26;
  v28 = [v27 view];
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v0 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = [v27 view];

  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v41 bringSubviewToFront:v42];

LABEL_12:
  v43 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController];
  if (!v43)
  {
    return;
  }

  v44 = v43;
  v45 = [v44 view];
  if (!v45)
  {
    goto LABEL_25;
  }

  v46 = v45;
  v47 = [v0 view];
  if (!v47)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v46 setFrame:{v50, v52, v54, v56}];
  v57 = [v0 view];
  if (!v57)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v58 = v57;
  v59 = [v44 view];

  if (!v59)
  {
LABEL_29:
    __break(1u);
    return;
  }

  [v58 bringSubviewToFront:v59];
}

void sub_100013BE0()
{
  v1 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView;
  v2 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = [*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] newSnapshotPresentationView];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v0[v1];
    *&v0[v1] = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_100013C8C()
{
  v1 = type metadata accessor for SceneStoppedStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController;
  if (!*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController])
  {
    static Logger.uv.getter();
    v46 = v0;
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v45 = v14;
    v47 = v13;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v44 = v11;
      v16 = v15;
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v16 = 136315650;
      v17 = [*&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] identifier];
      v18 = v1;
      v19 = v2;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v7;
      v22 = v21;

      v23 = v20;
      v2 = v19;
      v1 = v18;
      v24 = sub_10000E0C0(v23, v22, &v48);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      (*(v2 + 16))(v5, &v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle], v18);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000E0C0(v25, v26, &v48);

      *(v16 + 14) = v27;
      *(v16 + 22) = 2112;
      v28 = sub_10001415C();
      *(v16 + 24) = v28;
      v29 = v41;
      *v41 = v28;
      v30 = v47;
      _os_log_impl(&_mh_execute_header, v47, v45, "Showing stopped UI for %s using style %s with image %@", v16, 0x20u);
      sub_100014CE0(v29);

      swift_arrayDestroy();

      v11 = v44;

      (*(v42 + 8))(v10, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    if (*&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer])
    {
      v31 = *&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer];

      DelayedInvocation.cancel()();
    }

    v32 = [*&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] newSnapshot];
    v33 = [v32 CGImage];

    v34 = *&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage];
    *&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage] = v33;

    type metadata accessor for StoppedViewController();
    (*(v2 + 16))(v5, &v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle], v1);
    sub_10001415C();
    v35 = StoppedViewController.__allocating_init(style:snapshotImage:)();
    [v12 addChildViewController:v35];
    v36 = [v12 view];
    if (v36)
    {
      v37 = v36;
      v38 = [v35 view];

      v39 = v46;
      if (v38)
      {
        [v37 addSubview:v38];

        [v35 didMoveToParentViewController:v12];
        v40 = *&v39[v11];
        *&v39[v11] = v35;

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

id sub_10001415C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter);
  v3 = v1;
  v4 = [v2 scene];
  v5 = 2.0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 settings];

    v8 = [v7 displayConfiguration];
    if (v8)
    {
      [v8 pointScale];
      v5 = v9;
    }
  }

  v10 = [objc_allocWithZone(UIImage) initWithCGImage:v3 scale:0 orientation:v5];

  return v10;
}

void sub_100014260()
{
  v1 = type metadata accessor for SceneCrashedStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController;
  if (!*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController])
  {
    static Logger.uv.getter();
    v46 = v0;
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v45 = v14;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v44 = v11;
      v16 = v15;
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v16 = 136315650;
      v17 = [*&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] identifier];
      v40 = v13;
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v7;
      v20 = v2;
      v21 = v19;
      v23 = v22;

      v24 = v21;
      v2 = v20;
      v25 = sub_10000E0C0(v24, v23, &v47);

      *(v16 + 4) = v25;
      *(v16 + 12) = 2080;
      (*(v20 + 16))(v5, &v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedStyle], v1);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000E0C0(v26, v27, &v47);

      *(v16 + 14) = v28;
      *(v16 + 22) = 2112;
      v29 = sub_10001415C();
      *(v16 + 24) = v29;
      v31 = v40;
      v30 = v41;
      *v41 = v29;
      _os_log_impl(&_mh_execute_header, v31, v45, "Showing stopped UI for %s using style %s with image %@", v16, 0x20u);
      sub_100014CE0(v30);

      swift_arrayDestroy();

      v11 = v44;

      (*(v42 + 8))(v10, v6);
      v32 = &off_10006F000;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      v32 = &off_10006F000;
    }

    if (*&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer])
    {
      v33 = *&v12[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer];

      DelayedInvocation.cancel()();
    }

    type metadata accessor for CrashedViewController();
    (*(v2 + 16))(v5, v32[40] + v12, v1);
    sub_10001415C();
    v34 = CrashedViewController.__allocating_init(style:snapshotImage:)();
    [v12 addChildViewController:v34];
    v35 = [v12 view];
    if (v35)
    {
      v36 = v35;
      v37 = [v34 view];

      v38 = v46;
      if (v37)
      {
        [v36 addSubview:v37];

        [v34 didMoveToParentViewController:v12];
        v39 = *&v38[v11];
        *&v38[v11] = v34;

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

uint64_t sub_1000146DC()
{
  v0 = type metadata accessor for SchedulerInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter) newSnapshot];
    v8 = [v7 CGImage];

    v9 = *&v6[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage];
    *&v6[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage] = v8;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    SchedulerInterval.init(floatLiteral:)();
    sub_10001366C(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

unint64_t sub_100014860(void *a1)
{
  _StringGuts.grow(_:)(25);

  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 39;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000016;
}

uint64_t sub_10001492C()
{
  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0x203A656E656353;
}

uint64_t sub_1000149EC(uint64_t a1)
{
  v2 = sub_100014FE4();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100014A34(uint64_t a1)
{
  v2 = sub_100014FE4();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t type metadata accessor for RemoteContentViewController()
{
  result = qword_10006F188;
  if (!qword_10006F188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014C00()
{
  result = type metadata accessor for SceneStoppedStyle();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SceneCrashedStyle();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100014CE0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EBC8, &qword_10004DE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100014D48()
{
  result = qword_10006F1A0;
  if (!qword_10006F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1A0);
  }

  return result;
}

uint64_t sub_100014D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014DB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014DFC()
{
  result = qword_10006E8A0;
  if (!qword_10006E8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006E8A0);
  }

  return result;
}

uint64_t sub_100014E48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100014E88()
{
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100014F38()
{
  result = qword_10006F1C0;
  if (!qword_10006F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1C0);
  }

  return result;
}

unint64_t sub_100014F90()
{
  result = qword_10006F1C8;
  if (!qword_10006F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1C8);
  }

  return result;
}

unint64_t sub_100014FE4()
{
  result = qword_10006F1D0;
  if (!qword_10006F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1D0);
  }

  return result;
}

uint64_t sub_1000151AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  sub_100015950(v1 + OBJC_IVAR____TtC12PreviewShell15ApplicationInfo_overrideExecutableURL, v15);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3))
  {
    sub_1000159C0(v15);
    v19 = *(v4 + 56);
    v20 = 1;
    v19(v17, 1, 1, v3);
    v21 = type metadata accessor for ApplicationInfo();
    v26.receiver = v1;
    v26.super_class = v21;
    v22 = objc_msgSendSuper2(&v26, "executableURL");
    if (v22)
    {
      v23 = v22;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = 0;
    }

    v19(v12, v20, 1, v3);
    sub_100015A28(v12, a1);
    result = v18(v17, 1, v3);
    if (result != 1)
    {
      return sub_1000159C0(v17);
    }
  }

  else
  {
    (*(v4 + 16))(v7, v15, v3);
    sub_1000159C0(v15);
    URL.absoluteURL.getter();
    (*(v4 + 8))(v7, v3);
    v25 = *(v4 + 56);
    v25(v17, 0, 1, v3);
    (*(v4 + 32))(a1, v17, v3);
    return (v25)(a1, 0, 1, v3);
  }

  return result;
}

id sub_1000154B4(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC12PreviewShell15ApplicationInfo_overrideExecutableURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ApplicationInfo();
  return objc_msgSendSuper2(&v10, *a4, a3);
}

uint64_t type metadata accessor for ApplicationInfo()
{
  result = qword_10006F208;
  if (!qword_10006F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000155D0()
{
  sub_100015660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100015660()
{
  if (!qword_10006F218)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10006F218);
    }
  }
}

id sub_1000156B8()
{
  result = [objc_allocWithZone(type metadata accessor for ApplicationInfoProvider()) init];
  qword_1000736C0 = result;
  return result;
}

id sub_100015824(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100015884()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() applicationProxyForIdentifier:v0];

  if (!v1)
  {
    return 0;
  }

  result = [v1 appState];
  if (result)
  {
    v3 = result;
    v4 = [result isValid];

    if (v4)
    {
      v5 = [objc_allocWithZone(type metadata accessor for ApplicationInfo()) initWithApplicationProxy:v1];

      return v5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000159C0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015A98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100015BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v28 = &_swiftEmptyArrayStorage;
  sub_10001BBF0(0, v1, 0);
  v2 = &_swiftEmptyArrayStorage;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v7 + 36);
    v12 = *(*(v7 + 56) + 8 * v6);
    v26 = type metadata accessor for HostedPreviewCanvas();
    v27 = sub_10001D9B4(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas);
    *&v25 = v12;
    v28 = v2;
    v14 = v2[2];
    v13 = v2[3];

    if (v14 >= v13 >> 1)
    {
      sub_10001BBF0((v13 > 1), v14 + 1, 1);
      v2 = v28;
    }

    v2[2] = v14 + 1;
    result = sub_10000BF1C(&v25, &v2[5 * v14 + 4]);
    v9 = 1 << *(v7 + 32);
    v3 = a1 + 64;
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 64 + 8 * v11);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v23;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v19 = (a1 + 72 + 8 * v11);
      v10 = v23;
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10001CA18(v6, v24, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10001CA18(v6, v24, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
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
  return result;
}

void *sub_100015E34()
{
  v0 = type metadata accessor for PreviewShellService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100015E74();
  qword_1000736D0 = result;
  return result;
}

void *sub_100015E74()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v0[2] = sub_10002B9C4(&_swiftEmptyArrayStorage);
  v0[3] = sub_10002BBAC(&_swiftEmptyArrayStorage);
  v0[4] = [objc_allocWithZone(type metadata accessor for UserAlertController()) init];
  ServerFarm.init()();
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for PreviewShellPluginRegistry();
  v11 = sub_10000BE8C(v10, qword_1000736E8);
  swift_beginAccess();
  (*(*(v10 - 8) + 16))(v1 + OBJC_IVAR____TtC12PreviewShell19PreviewShellService_pluginRegistry, v11, v10);
  v12 = [objc_opt_self() sharedInstance];
  if (qword_10006E5C0 != -1)
  {
    swift_once();
  }

  [v12 setDelegate:qword_1000736C0];

  v13 = [objc_opt_self() processInfo];
  v14 = [v13 environment];

  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v15 + 16) && (v16 = sub_100006E04(0xD000000000000012, 0x8000000100054550), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];

    static Logger.uv.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = v2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = sub_10000E0C0(v20, v19, &v33);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "PreviewShell created with MallocStackLogging=%s", v24, 0xCu);
      sub_10000519C(v25);

      v2 = v32;
    }

    else
    {
    }

    (*(v3 + 8))(v9, v2);
    if ((isXTP.getter() & 1) == 0)
    {
      return v1;
    }
  }

  else
  {

    if ((isXTP.getter() & 1) == 0)
    {
      return v1;
    }
  }

  static Logger.uv.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "PreviewShell running in XTP", v29, 2u);
  }

  (*(v3 + 8))(v7, v2);
  return v1;
}

uint64_t sub_100016310(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceType();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Callsite();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001A214(a1);
  v14 = Agent.pid.getter();
  if ((v14 & 0x100000000) != 0)
  {

    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    v15 = v14;
    swift_beginAccess();
    v26[4] = *(v2 + 24);

    v16 = Callsite.init(_:_:_:_:)();
    v26[1] = v26;
    __chkstk_darwin(v16);
    v26[2] = v15;
    sub_100004C60(&qword_10006F3F0, &qword_10004E160);
    v26[3] = v13;
    sub_10001D028(&qword_10006F3F8, &qword_10006F3F0, &qword_10004E160);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();

    v17 = *(v9 + 8);
    v17(v12, v8);

    Agent.deviceType.getter();
    v18 = type metadata accessor for SimulatorDevicePayload();
    if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
    {
      if (qword_10006E600 != -1)
      {
        swift_once();
      }

      v19 = qword_100073700;
      swift_beginAccess();
      v20 = *(v19 + 16);

      v22 = sub_100015BAC(v21);
    }

    else
    {
      if (qword_10006E5B8 != -1)
      {
        swift_once();
      }

      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      v17(v12, v8);
      sub_10001DDD8(v7, &type metadata accessor for DeviceType);
      v22 = &_swiftEmptyArrayStorage;
    }

    v26[7] = v22;
    v24 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v24);
    sub_100004C60(&qword_10006F400, &qword_10004E168);
    sub_10001D028(&qword_10006F408, &qword_10006F400, &qword_10004E168);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    v17(v12, v8);

    v25 = Future.ignoringValue(dsoHandle:file:line:column:function:)();

    return v25;
  }
}

uint64_t sub_1000168CC(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v103 = type metadata accessor for ExecutionLane();
  v102 = *(v103 - 8);
  v3 = *(v102 + 64);
  __chkstk_darwin(v103);
  v117 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AgentDescriptor();
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Logger();
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v95);
  v112 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PreviewAgentLauncherRegistry();
  v106 = *(v107 - 8);
  v9 = *(v106 + 64);
  __chkstk_darwin(v107);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ProcessType();
  v110 = *(v111 - 8);
  v12 = *(v110 + 64);
  v13 = __chkstk_darwin(v111);
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v90 - v15;
  v119 = type metadata accessor for AgentDescriptor.Bundle();
  v109 = *(v119 - 8);
  v17 = *(v109 + 64);
  v18 = __chkstk_darwin(v119);
  v116 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v19;
  __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = type metadata accessor for DeviceType();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LaunchPayload();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v93 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v30;
  __chkstk_darwin(v29);
  v32 = &v90 - v31;
  v118 = type metadata accessor for BatchIdentity();
  v108 = *(v118 - 8);
  v33 = *(v108 + 64);
  v34 = __chkstk_darwin(v118);
  v113 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v35;
  __chkstk_darwin(v34);
  v37 = &v90 - v36;
  v115 = v27;
  v40 = *(v27 + 16);
  v38 = v27 + 16;
  v39 = v40;
  (v40)(v32, a1, v26);
  sub_10001DBA4(v114, v25, &type metadata accessor for DeviceType);
  v114 = v32;
  BatchIdentity.init(_:_:)();
  v120 = v21;
  BatchIdentity.agentBundle.getter();
  LaunchPayload.processType.getter();
  PreviewShellPluginRegistry.launchers.getter();
  PreviewAgentLauncherRegistry.subscript.getter();
  (*(v106 + 8))(v11, v107);
  if (v123)
  {
    v105 = v37;
    v107 = v16;
    sub_10000BF1C(&v122, &v124);
    static Logger.uv.getter();
    v41 = v93;
    v42 = a1;
    v106 = v38;
    v92 = v39;
    (v39)(v93, a1, v26);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v104 = v26;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v91 = a1;
      v47 = v46;
      v90 = swift_slowAlloc();
      *&v122 = v90;
      *v47 = 136315138;
      v48 = v97;
      LaunchPayload.agentDescriptor.getter();
      sub_10001D9B4(&qword_10006F490, &type metadata accessor for AgentDescriptor);
      v49 = v99;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v41;
      v53 = v52;
      v54 = v98;
      (*(v98 + 8))(v48, v49);
      (*(v115 + 8))(v51, v26);
      v55 = sub_10000E0C0(v50, v53, &v122);

      *(v47 + 4) = v55;
      v56 = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Preparing display & canvases for relaunch of %s", v47, 0xCu);
      sub_10000519C(v90);

      v42 = v91;

      (*(v94 + 8))(v112, v95);
      v57 = v118;
      v58 = v108;
      v59 = v105;
    }

    else
    {

      (*(v115 + 8))(v41, v26);
      (*(v94 + 8))(v112, v95);
      v57 = v118;
      v58 = v108;
      v59 = v105;
      v49 = v99;
      v54 = v98;
      v56 = v97;
    }

    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_100004C60(&qword_100070530, &qword_10004E1E0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10004E060;
    *(v63 + 32) = sub_10001BF60();
    LaunchPayload.agentDescriptor.getter();
    v64 = sub_100016310(v56);
    (*(v54 + 8))(v56, v49);
    *(v63 + 40) = v64;
    v112 = static Future.inverting(dsoHandle:file:line:column:function:accumulateErrors:_:)();

    v65 = LaunchPayload.environment.getter();
    if (*(v65 + 16))
    {
      v66 = sub_100006E04(0xD00000000000002FLL, 0x80000001000547B0);
      if (v67)
      {
        v68 = (*(v65 + 56) + 16 * v66);
        v69 = v42;
        v70 = *v68;
        v71 = v68[1];

        *&v122 = 0;

        v72 = sub_10001BE68(v70, v71);
        v42 = v69;
        swift_bridgeObjectRelease_n();
        v73 = v122;
        if (!v72)
        {
          v73 = 0;
        }

        v108 = v73;
        v74 = !v72;
      }

      else
      {

        v108 = 0;
        v74 = 1;
      }

      LODWORD(v99) = v74;
      v76 = v119;
      v75 = v120;
      v77 = v109;
    }

    else
    {

      v108 = 0;
      LODWORD(v99) = 1;
      v76 = v119;
      v75 = v120;
      v77 = v109;
    }

    v78 = v92;
    static ExecutionLane.main.getter();
    (*(v77 + 16))(v116, v75, v76);
    sub_10000E808(&v124, &v122);
    (*(v58 + 16))(v113, v59, v57);
    (v78)(v114, v42, v104);
    v79 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v80 = (v101 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (*(v58 + 80) + v80 + 40) & ~*(v58 + 80);
    v82 = (v96 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = v115;
    v84 = (*(v115 + 80) + v82 + 9) & ~*(v115 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v121;
    (*(v77 + 32))(v85 + v79, v116, v76);
    sub_10000BF1C(&v122, v85 + v80);
    v86 = v118;
    (*(v58 + 32))(v85 + v81, v113, v118);
    v87 = v85 + v82;
    *v87 = v108;
    *(v87 + 8) = v99 & 1;
    (*(v83 + 32))(v85 + v84, v114, v104);

    v88 = v117;
    v62 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    (*(v102 + 8))(v88, v103);
    sub_10000519C(&v124);
    (*(v110 + 8))(v107, v111);
    (*(v77 + 8))(v120, v119);
    (*(v58 + 8))(v105, v86);
  }

  else
  {
    sub_10000BF34(&v122, &qword_10006F478, &qword_10004E1D0);
    sub_100004C60(&qword_10006F480, &qword_10004E1D8);
    v60 = v110;
    v61 = v111;
    (*(v110 + 16))(v92, v16, v111);
    type metadata accessor for UnknownProcessType();
    sub_10001D9B4(&qword_10006F488, &type metadata accessor for UnknownProcessType);
    swift_allocError();
    UnknownProcessType.init(processType:)();
    v62 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    (*(v60 + 8))(v16, v61);
    (*(v109 + 8))(v120, v119);
    (*(v108 + 8))(v37, v118);
  }

  return v62;
}

uint64_t sub_100017774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v29 = a6;
  v30 = a8;
  v28 = a7;
  v27 = a5;
  v11 = sub_100004C60(&qword_10006F498, &qword_10004E1E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for BatchIdentity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (*(v18 + 16) && (v19 = sub_1000070AC(a3), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v32[0] = v21;
    type metadata accessor for Agent();
    sub_10001D9B4(&qword_10006F3E8, &type metadata accessor for Agent);

    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  else
  {
    swift_endAccess();
  }

  type metadata accessor for Agent();
  sub_10000E808(a4, v32);
  (*(v14 + 16))(v17, v27, v13);
  ServerFarm.jitBootstrapAgentServer.getter();
  v22 = Agent.__allocating_init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)();
  swift_beginAccess();

  v23 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10000A0C8(v22, a3, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v31;
  swift_endAccess();
  v25 = Agent.launch(with:killing:)();

  return v25;
}

uint64_t sub_100017A64(uint64_t a1)
{
  v112 = *v1;
  v107 = type metadata accessor for ExecutionLane();
  v110 = *(v107 - 8);
  v3 = *(v110 + 64);
  __chkstk_darwin(v107);
  v106 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ShellUpdatePayload();
  v111 = *(updated - 8);
  v5 = *(v111 + 64);
  __chkstk_darwin(updated);
  v105 = v6;
  v109 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ContentProviderRegistry();
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v97 = (&v84 - v11);
  v12 = type metadata accessor for ContentCategory();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v99 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ContentKey();
  v103 = *(v104 - 8);
  v15 = *(v103 + 64);
  v16 = __chkstk_darwin(v104);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  v19 = type metadata accessor for PreviewAgentConnector();
  v102 = *(v19 - 8);
  v20 = *(v102 + 64);
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v23 = &v84 - v22;
  v113 = a1;
  v24 = ShellUpdatePayload.pid.getter();
  v25 = v117;
  v26 = v114;
  v27 = sub_100018960(v24);
  if (v26)
  {
    return v15;
  }

  v91 = v15;
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v20;
  v94 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v18;
  v95 = v19;
  v114 = v27;
  v116 = v25;
  v28 = v113;
  ShellUpdatePayload.pid.getter();
  sub_10001D9B4(&qword_10006F428, type metadata accessor for PreviewShellService);
  PreviewShellServiceProtocol.previewAgentConnector(for:)();
  v112 = 0;
  v15 = v28;
  v29 = v23;
  ShellUpdatePayload.contentCategory.getter();
  ShellUpdatePayload.contentOverride.getter();
  v30 = v96;
  ContentKey.init(for:with:)();
  v31 = v98;
  PreviewShellPluginRegistry.providers.getter();
  v32 = ContentProviderRegistry.boxRecipe(for:)();
  v34 = v33;
  v36 = v35;
  v37 = ~v35;
  (*(v100 + 8))(v31, v101);
  if (!v37)
  {
    ShellUpdatePayload.contentCategory.getter();
    type metadata accessor for UnknownContentCategory();
    sub_10001D9B4(&qword_10006F430, &type metadata accessor for UnknownContentCategory);
    swift_allocError();
    UnknownContentCategory.init(category:)();
    swift_willThrow();

    (*(v103 + 8))(v30, v104);
    (*(v102 + 8))(v29, v95);
    return v15;
  }

  v99 = v32;
  v100 = v34;
  v101 = v29;
  Agent.applyUpdateFor(payload:)();
  v38 = v111;
  v39 = *(v111 + 16);
  v41 = updated;
  v40 = v109;
  v89 = v111 + 16;
  v88 = v39;
  v39(v109, v15, updated);
  v42 = *(v38 + 80);
  v90 = ~v42;
  v43 = v36;
  v85 = (v42 + 16);
  v44 = swift_allocObject();
  v45 = *(v38 + 32);
  v111 = v38 + 32;
  v97 = v45;
  v45(v44 + ((v42 + 16) & ~v42), v40, v41);
  v46 = v15;
  v47 = v106;
  static ExecutionLane.any.getter();
  type metadata accessor for AgentUpdate.Context();
  v98 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v48 = v110 + 8;
  v49 = *(v110 + 8);
  v50 = v49(v47, v107);
  v87 = v43;
  v110 = v48;
  v86 = v49;
  if (v43)
  {
    static ExecutionLane.main.getter();
    v51 = updated;
    v52 = v109;
    v88(v109, v46, updated);
    v53 = (v42 + 24) & v90;
    v54 = (v105 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v117;
    v97(v55 + v53, v52, v51);
    *(v55 + v54) = v114;

    sub_100004C60(&qword_10006F438, &qword_10004E188);
    v56 = v106;
    v117 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    v49(v56, v107);
    static ExecutionLane.main.getter();
    v57 = v103;
    (*(v103 + 16))(v92, v96, v104);
    v58 = v102;
    v59 = v95;
    (*(v102 + 16))(v94, v101);
    v88(v109, v113, updated);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = v58;
    v62 = (v91 + *(v58 + 80) + v60) & ~*(v58 + 80);
    v63 = (v93 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = &v85[v63] & v90;
    v65 = swift_allocObject();
    v66 = v104;
    (*(v57 + 32))(v65 + v60, v92, v104);
    (*(v61 + 32))(v65 + v62, v94, v59);
    v67 = (v65 + v63);
    v68 = v99;
    v69 = v100;
    *v67 = v99;
    v67[1] = v69;
    v97(v65 + v64, v109, updated);
    v70 = swift_allocObject();
    *(v70 + 16) = sub_10001CE28;
    *(v70 + 24) = v65;
    sub_10001CFD0();
    type metadata accessor for PropertyList();
    v71 = v106;
    v15 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    sub_10001CFD8(v68, v69, v87);

    v86(v71, v107);
    (*(v103 + 8))(v96, v66);
    (*(v102 + 8))(v101, v59);
    return v15;
  }

  v72 = v88;
  v92 = v42;
  __chkstk_darwin(v50);
  swift_beginAccess();
  sub_100004C60(&qword_10006F440, &qword_10004E190);
  sub_10001D028(&qword_10006F448, &qword_10006F440, &qword_10004E190);
  v73 = v112;
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  v112 = v73;
  if (!v73)
  {
    swift_endAccess();
    sub_10000E808(&v116, &v115);
    v74 = v102;
    v75 = v94;
    v76 = v95;
    (*(v102 + 16))(v94, v101, v95);
    v77 = updated;
    v78 = v109;
    v72(v109, v113, updated);
    v79 = (*(v74 + 80) + 56) & ~*(v74 + 80);
    v80 = &v92[v93 + v79] & v90;
    v81 = swift_allocObject();
    sub_10000BF1C(&v115, v81 + 16);
    (*(v74 + 32))(v81 + v79, v75, v76);
    v97(v81 + v80, v78, v77);
    v82 = v106;
    static ExecutionLane.any.getter();
    type metadata accessor for PropertyList();
    v15 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    sub_10001CFD8(v99, v100, v87);

    v86(v82, v107);
    sub_10000519C(&v116);
    (*(v103 + 8))(v96, v104);
    (*(v74 + 8))(v101, v76);
    return v15;
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100018960(int a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v6)
  {
LABEL_10:
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));

    v13 = Agent.pid.getter();
    if ((v13 & 0x100000000) == 0 && v13 == a1)
    {

      return v12;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v12 = type metadata accessor for AgentLocatingError();
      sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError);
      swift_allocError();
      *v14 = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v12;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}