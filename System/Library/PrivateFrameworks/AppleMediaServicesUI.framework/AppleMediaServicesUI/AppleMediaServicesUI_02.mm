uint64_t sub_100030C30()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100030C7C(char *a1, uint64_t a2, void *a3)
{
  v7 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16];
  v21[0] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v21[1] = v7;
  v8 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48];
  v21[2] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32];
  v21[3] = v8;
  sub_100030730(v21, a3);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v10 = type metadata accessor for SyncTaskScheduler();
  v19 = v10;
  v20 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v18);
  v11 = a1;

  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_10026E288, &unk_1001EDA28);
  sub_100031B04();
  Promise.flatMap<A>(on:_:)();

  sub_100002C00(v18);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v11;
  v12[4] = a3;
  v12[5] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000383F0;
  *(v13 + 24) = v12;
  v19 = v10;
  v20 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v18);
  v14 = v11;

  v15 = a3;
  SyncTaskScheduler.init()();
  type metadata accessor for JSStack();
  v16 = Promise.map<A>(on:_:)();

  sub_100002C00(v18);
  return v16;
}

uint64_t sub_100030E80()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100030EC0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100030F08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030F40(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100007B80();
  switch(a1)
  {
    case 1:
      sub_100006854();
      break;
    case 2:
      sub_1000058B4();
      break;
    case 3:
      sub_1000084E4();
      break;
    default:
      break;
  }

  URL.appendingPathComponent(_:)();

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_1000310D0(char a1, char a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for URL();
  v9 = sub_100002CC4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1000056E8();
  v16 = v14 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v26 - v19;
  __chkstk_darwin(v18);
  v22 = &v26 - v21;
  if (a2)
  {
    sub_10001E78C(a1);
    URL.appendingPathComponent(_:)();
    return (*(v11 + 8))(v16, v8);
  }

  else
  {
    sub_10001E8B8();
    sub_10000330C(v7);
    if (v24)
    {
      sub_10001DCD4();
      sub_10000330C(v7);
      if (!v24)
      {
        sub_10000A064(v7, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      (*(v11 + 32))(v20, v7, v8);
    }

    sub_100007B80();
    switch(a1)
    {
      case 1:
        sub_100006854();
        break;
      case 2:
        sub_1000058B4();
        break;
      case 3:
        sub_100007638();
        sub_1000084E4();
        break;
      default:
        break;
    }

    URL.appendingPathComponent(_:isDirectory:)();

    v25 = *(v11 + 8);
    v25(v20, v8);
    URL.appendingPathComponent(_:isDirectory:)();
    return (v25)(v22, v8);
  }
}

uint64_t sub_100031380()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = sub_100002CC4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  strcpy(v26, "metadata.plist");
  HIBYTE(v26[1]) = -18;
  (*(v4 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v8, v1);
  v13 = Data.init(contentsOf:options:)();
  if (v0)
  {
    v15 = sub_10000B9E0();
    return v16(v15);
  }

  else
  {
    v18 = v13;
    v19 = v14;
    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100033630();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v23 = sub_10000B9E0();
    v24(v23);

    sub_1000253FC(v18, v19);
    if (v26[0] == 1)
    {
      return 0;
    }

    else if (v26[0] == 2)
    {
      return 1;
    }

    else
    {
      sub_10013C144();
      swift_allocError();
      *v25 = 2;
      return swift_willThrow();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JetpackMetadata.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000316F8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100031720()
{
  sub_100003D74();
  v17 = v0;
  v1 = type metadata accessor for URL();
  v2 = sub_100002CC4(v1);
  v18 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v8 = v7 - v6;
  URL.init(fileURLWithPath:isDirectory:)();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = sub_100003DE8();
  sub_100002CFC(v9);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = 3 * *(v10 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v19[3] = v1;
  v14 = sub_100017E64(v19);
  (*(v18 + 16))(v14, v8, v1);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v15 = static os_log_type_t.debug.getter();
  sub_1000036B0(v15);

  static ClassicDataVaultUtilities.createDataVault(at:for:)();
  (*(v18 + 32))(v17, v8, v1);
  sub_10000A7C0(v17, 0, 1, v1);
  sub_100005F14();
}

unint64_t sub_100031B04()
{
  result = qword_10026E290;
  if (!qword_10026E290)
  {
    sub_10007BC70(&qword_10026E288, &unk_1001EDA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E290);
  }

  return result;
}

uint64_t sub_100031B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100033FE8(a3);
  v8 = type metadata accessor for JSStackContext();
  v9 = *(a1 + *(v8 + 44));
  if (*(a1 + *(v8 + 44)))
  {
    v10 = &type metadata for RemoteJetpackV2Loader;
  }

  else
  {
    v10 = &type metadata for RemoteJetpackLoader;
  }

  v11 = &off_100251408;
  if (*(a1 + *(v8 + 44)))
  {
    v11 = &off_1002514B0;
  }

  v31 = v10;
  v32 = v11;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = *(type metadata accessor for LogInterpolation() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v15 = (a3 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (*(a3 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v16 = *v15;
    v17 = v15[1];
  }

  type metadata accessor for JSStackProvider();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001001FD3D0;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  v19 = sub_100003CA8(v30, v10);
  v29[3] = v10;
  v20 = sub_100017E64(v29);
  v21 = &type metadata for RemoteJetpackLoader;
  if (v9)
  {
    v21 = &type metadata for RemoteJetpackV2Loader;
  }

  (*(v21[-1].Description + 2))(v20, v19, v10);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v29);
  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  LogInterpolation.init(stringInterpolation:)();
  v23 = static os_log_type_t.debug.getter();
  sub_1000036B0(v23);

  v24 = v31;
  v25 = v32;
  sub_100003CA8(v30, v31);
  v26 = (v25[1])(a3, a1, a4, v24, v25);
  sub_100002C00(v30);
  return v26;
}

uint64_t sub_100031E90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100031ECC()
{
  v1 = type metadata accessor for JSStackContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v8 = sub_100007F3C();
  v7(v8);
  v9 = v1[5];
  if (!sub_100009F34(v0 + v3 + v9, 1, v6))
  {
    (v7)(v5 + v9, v6);
  }

  v10 = sub_100008158(v1[6]);
  v7(v10);
  v11 = sub_100008158(v1[7]);
  v7(v11);
  v12 = v1[8];
  if (!sub_100009F34(v5 + v12, 1, v6))
  {
    (v7)(v5 + v12, v6);
  }

  v13 = sub_100008158(v1[9]);
  v7(v13);
  v14 = sub_100008158(v1[10]);
  v7(v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032070()
{
  v2 = type metadata accessor for JSStackContext();
  sub_10000A4E8(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  sub_100002DDC(v8);
  v10 = *(v9 + 8);
  v10(v1 + v5, v8);
  v11 = v0[5];
  if (!sub_100007738())
  {
    v12 = sub_100019DA0();
    (v10)(v12);
  }

  v13 = sub_100008158(v0[6]);
  (v10)(v13);
  v14 = sub_100008158(v0[7]);
  (v10)(v14);
  v15 = v0[8];
  if (!sub_100007738())
  {
    v16 = sub_100019DA0();
    (v10)(v16);
  }

  v17 = sub_100008158(v0[9]);
  (v10)(v17);
  v18 = sub_100008158(v0[10]);
  (v10)(v18);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_1000321E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_1000083D8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10003221C()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_1000322A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000322E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v158 = a3;
  v162 = a2;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = sub_100006FA0(v4, &v179);
  v155 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000034BC(v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10007B9A4(&qword_1002704B0, &qword_1001EFA38);
  sub_100006FA0(v10, &v178);
  v152 = v11;
  v13 = *(v12 + 64);
  sub_100004E78();
  __chkstk_darwin(v14);
  sub_1000074D8();
  sub_1000034BC(v15);
  v16 = sub_10007B9A4(&qword_1002705A0, &qword_1001EFB10);
  sub_100006FA0(v16, v176);
  v149 = v17;
  v19 = *(v18 + 64);
  sub_100004E78();
  __chkstk_darwin(v20);
  sub_1000074D8();
  sub_1000034BC(v21);
  v22 = sub_10007B9A4(&qword_1002704C0, &qword_1001EFA48);
  sub_100006FA0(v22, &v174);
  v146 = v23;
  v25 = *(v24 + 64);
  sub_100004E78();
  __chkstk_darwin(v26);
  sub_1000074D8();
  sub_1000034BC(v27);
  v28 = sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  sub_100006FA0(v28, &v180);
  v145 = v29;
  v31 = *(v30 + 64);
  sub_100004E78();
  __chkstk_darwin(v32);
  sub_1000074D8();
  sub_1000034BC(v33);
  v34 = sub_10007B9A4(&qword_1002705A8, &qword_1001EFB18);
  sub_100006FA0(v34, &v171);
  v142 = v35;
  v37 = *(v36 + 64);
  sub_100004E78();
  __chkstk_darwin(v38);
  sub_1000074D8();
  sub_1000034BC(v39);
  v40 = sub_10007B9A4(&qword_1002705B0, &qword_1001EFB20);
  sub_100006FA0(v40, v168);
  v140 = v41;
  v43 = *(v42 + 64);
  sub_100004E78();
  __chkstk_darwin(v44);
  sub_1000074D8();
  sub_1000034BC(v45);
  v46 = sub_10007B9A4(&qword_1002705B8, &qword_1001EFB28);
  sub_100006FA0(v46, &v181);
  v139 = v47;
  v49 = *(v48 + 64);
  sub_100004E78();
  __chkstk_darwin(v50);
  sub_1000074D8();
  sub_1000034BC(v51);
  v52 = type metadata accessor for JSStackContext();
  v137 = *(v52 - 8);
  v53 = *(v137 + 64);
  __chkstk_darwin(v52);
  v157 = v54;
  v161 = (v136 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_10007B9A4(&qword_1002704E0, &qword_1001EFB30);
  sub_100006FA0(v55, &v164);
  v136[2] = v56;
  v58 = *(v57 + 64);
  sub_100004E78();
  __chkstk_darwin(v59);
  v61 = v136 - v60;
  v62 = sub_10007B9A4(&qword_1002704E8, &qword_1001EFA70);
  sub_100006FA0(v62, &v162);
  v64 = v63;
  v66 = *(v65 + 64);
  sub_100004E78();
  __chkstk_darwin(v67);
  v69 = v136 - v68;
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v70 = *(type metadata accessor for LogInterpolation() - 8);
  v71 = *(v70 + 72);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(&v172 + 1) = &type metadata for RemoteJetpackV2Loader;
  v163 = a1;
  v73 = (a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (*(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v74 = *v73;
    v75 = v73[1];
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v171);
  LogInterpolation.init(stringLiteral:)();
  v76 = static os_log_type_t.info.getter();
  sub_1000036B0(v76);

  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v77 = v171;
  v78 = *(v52 + 32);
  sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v79 = v162;
  static Pipeline.start<A>(with:)();
  v80 = *(v163 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
  v171 = *(v163 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  v172 = v80;
  v81 = *(v163 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
  v173 = *(v163 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
  v174 = v81;
  sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
  inject<A, B>(_:from:)();
  v82 = v170;
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  v83 = qword_10026A070;
  v84 = v161;
  sub_1000345E0(v79, v161);
  v85 = type metadata accessor for SourceFetcher();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  sub_1000346F4(&v171, v84, v82, v77, v83);
  sub_10000F4A4(&v171, &v164);
  type metadata accessor for URL();
  v144 = v77;
  swift_unknownObjectRetain();
  PipelinePhase.init(mapOutput:)();
  sub_100006070(&qword_100270508, &qword_1002704E8, &qword_1001EFA70);
  v88 = v136[1];
  v89 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(&v163);
  v90(v61, v136[3]);
  (*(v64 + 8))(v69, v88);
  v164 = v89;
  if (sub_100024F14())
  {
    type metadata accessor for Defaults();
    v91 = 1;
    v92 = sub_1000287B4(1);
    if (v92 != 2)
    {
      v91 = v92 ^ 1;
    }
  }

  else
  {
    v91 = 1;
  }

  v93 = v161;
  sub_1000345E0(v79, v161);
  v158 = *(v137 + 80);
  v94 = (v158 + 16) & ~v158;
  v137 = v94;
  v157 += v94;
  v95 = v157;
  v96 = swift_allocObject();
  sub_100034690(v93, v96 + v94);
  *(v96 + v95) = v91 & 1;
  type metadata accessor for DiskJetPackResourceBundle();
  v97 = v138;
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_100270510, &qword_1001EFA90);
  sub_100006070(&qword_100270518, &qword_100270510, &qword_1001EFA90);
  v98 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(&v165);
  v99(v97, v160);

  v164 = v98;
  sub_10000AD54(&v166);
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_1002705C0, &qword_1001EFB38);
  sub_100006070(&qword_1002705C8, &qword_1002705C0, &qword_1001EFB38);
  sub_100006648();
  v100 = PipelineTask.andThen<A>(_:)();
  v160 = v100;
  v101 = sub_1000034C8(v167);
  v102(v101, v141);

  v164 = v100;
  sub_10000AD54(v169);
  PipelinePhase.init(mapOutput:)();
  v141 = sub_10007B9A4(&qword_1002705D0, &qword_1001EFB40);
  v140 = sub_100006070(&qword_1002705D8, &qword_1002705D0, &qword_1001EFB40);
  v103 = v79;
  v104 = PipelineTask.andThen<A>(_:)();
  v105 = sub_1000034C8(&v170);
  v106(v105, v143);
  v164 = v104;
  sub_1000345E0(v103, v93);
  v107 = sub_100008164();
  v108 = v137;
  sub_100034690(v93, v107 + v137);
  type metadata accessor for JSPackageIndex();
  sub_10000AD54(&v172);
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_1002705E0, &qword_1001EFB48);
  sub_100006070(&qword_1002705E8, &qword_1002705E0, &qword_1001EFB48);
  sub_100006648();
  v109 = PipelineTask.andThen<A>(_:)();
  v110 = sub_1000034C8(&v172 + 8);
  v111(v110, v159);

  v164 = v109;
  sub_10000AD54(&v173);
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_100270560, &unk_1001EFB50);
  sub_100006070(&qword_100270568, &qword_100270560, &unk_1001EFB50);
  sub_100006648();
  v159 = PipelineTask.andThen<A>(_:)();
  v112 = sub_1000034C8(&v173 + 8);
  v113(v112, v147);

  v164 = v160;
  sub_1000345E0(v162, v93);
  v114 = sub_100008164();
  sub_100034690(v93, v114 + v108);
  sub_10007B9A4(&qword_100270570, &qword_1001EFAC0);
  v115 = v148;
  PipelinePhase.init(mapOutput:)();
  v116 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(v175);
  v117(v115, v150);
  v164 = v116;
  v118 = v151;
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_1002705F0, &qword_1001EFB60);
  sub_100006070(&qword_1002705F8, &qword_1002705F0, &qword_1001EFB60);
  v162 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(&v177);
  v119(v118, v153);

  v120 = dispatch thunk of MapPipelineTask.run()();
  v121 = swift_allocObject();
  v122 = v163;
  *(v121 + 16) = v163;
  v158 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v123 = enum case for DispatchQoS.QoSClass.default(_:);
  v124 = v155;
  v161 = *(v155 + 104);
  v125 = v154;
  v126 = v156;
  (v161)(v154, enum case for DispatchQoS.QoSClass.default(_:), v156);
  v127 = v122;
  v128 = static OS_dispatch_queue.global(qos:)();
  v129 = *(v124 + 8);
  v129(v125, v126);
  v163 = sub_1000357F4(sub_10018F62C, v121, v128, v120);

  dispatch thunk of MapPipelineTask.run()();
  v165 = type metadata accessor for SyncTaskScheduler();
  v166 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v164);
  SyncTaskScheduler.init()();
  v130 = Promise.map<A>(on:_:)();

  sub_100002C00(&v164);
  v131 = swift_allocObject();
  *(v131 + 16) = v127;
  (v161)(v125, v123, v126);
  v132 = v127;
  v133 = static OS_dispatch_queue.global(qos:)();
  v129(v125, v126);
  sub_1000357F4(sub_100036434, v131, v133, v130);

  sub_10007B9A4(&qword_100270588, &unk_1001EFAD0);
  sub_100006070(&qword_100270590, &qword_100270588, &unk_1001EFAD0);
  v134 = Promise.join<A>(with:)();

  return v134;
}

uint64_t sub_100033470()
{
  v2 = type metadata accessor for JSStackContext();
  sub_10000A4E8(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  sub_100002DDC(v8);
  v10 = *(v9 + 8);
  v10(v1 + v5, v8);
  v11 = v0[5];
  if (!sub_100007738())
  {
    v12 = sub_100019DA0();
    (v10)(v12);
  }

  v13 = sub_100008158(v0[6]);
  (v10)(v13);
  v14 = sub_100008158(v0[7]);
  (v10)(v14);
  v15 = v0[8];
  if (!sub_100007738())
  {
    v16 = sub_100019DA0();
    (v10)(v16);
  }

  v17 = sub_100008158(v0[9]);
  (v10)(v17);
  v18 = sub_100008158(v0[10]);
  (v10)(v18);

  return _swift_deallocObject(v1, v7 + v5 + 1, v4 | 7);
}

uint64_t sub_1000335E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100033630()
{
  result = qword_10026E278;
  if (!qword_10026E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E278);
  }

  return result;
}

uint64_t sub_100033684(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026D300, &qword_1001EC710);
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_100003CA8(a1, a1[3]);
  sub_1000337F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_100002C00(a1);
  return v12;
}

uint64_t sub_1000337CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100033684(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000337F8()
{
  result = qword_10026D308;
  if (!qword_10026D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D308);
  }

  return result;
}

uint64_t sub_100033850(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unsigned __int8 *))
{
  v4 = *a1;
  v5 = sub_10007B9A4(&qword_10026E268, &qword_1001EDA10);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1000338E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  v4 = type metadata accessor for URL();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for URL.DirectoryHint();
  v14 = sub_100002CC4(v13);
  v59 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v20 = v19 - v18;
  v21 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_1000056E8();
  v25 = v23 - v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v56 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v56 - v31;
  __chkstk_darwin(v30);
  v34 = &v56 - v33;
  sub_100031720();
  v35 = sub_100009F34(v32, 1, v4);
  v36 = &enum case for URL.DirectoryHint.inferFromPath(_:);
  if (v35 == 1)
  {
    sub_10000A064(v32, &unk_10026FEE0, &unk_1001E67C0);
    v37 = 1;
  }

  else
  {
    v57 = v12;
    v58 = v7;
    v38 = 0xE900000000000073;
    v39 = 0x636974796C616E61;
    switch(v60)
    {
      case 1:
        v38 = 0xE800000000000000;
        v39 = 0x6C616E7265746E69;
        break;
      case 2:
        v38 = 0xE800000000000000;
        v39 = 0x7379656E72756F6ALL;
        break;
      case 3:
        sub_100007638();
        v39 = 0x6E656D6D6F636572;
        break;
      default:
        break;
    }

    v62 = v39;
    v63 = v38;
    v40 = v59;
    (*(v59 + 104))(v20, *v36, v13);
    sub_10001ECE0();
    URL.appending<A>(path:directoryHint:)();
    (*(v40 + 8))(v20, v13);

    v7 = v58;
    (*(v58 + 8))(v32, v4);
    v37 = 0;
    v12 = v57;
  }

  sub_10000A7C0(v34, v37, 1, v4);
  sub_10001EC70(v34, v29);
  sub_10000330C(v29);
  if (v50)
  {
    sub_10000A064(v29, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v41 = *(type metadata accessor for LogInterpolation() - 8);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v44 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._object = 0x80000001001FD2F0;
    v45._countAndFlagsBits = 0xD00000000000002ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
    v64 = &unk_1002471C0;
    LOBYTE(v62) = v60;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v62, &qword_10026D350, &qword_1001E6050);
    v46._countAndFlagsBits = 41;
    v46._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v47 = static os_log_type_t.debug.getter();
    sub_1000036B0(v47);

    v48 = v34;
    goto LABEL_16;
  }

  (*(v7 + 32))(v12, v29, v4);
  v49 = [objc_opt_self() defaultManager];
  sub_10001E148();

  sub_10000330C(v25);
  if (v50)
  {
    (*(v7 + 8))(v12, v4);
    sub_10000A064(v34, &unk_10026FEE0, &unk_1001E67C0);
    v48 = v25;
LABEL_16:
    sub_10000A064(v48, &unk_10026FEE0, &unk_1001E67C0);
    v54 = 1;
    v52 = v61;
    return sub_10000A7C0(v52, v54, 1, v4);
  }

  v62 = 0x426B63617074656ALL;
  v63 = 0xEF65646F43657479;
  v51 = v59;
  (*(v59 + 104))(v20, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
  sub_10001ECE0();
  v52 = v61;
  URL.appending<A>(path:directoryHint:)();
  (*(v51 + 8))(v20, v13);
  v53 = *(v7 + 8);
  v53(v12, v4);
  sub_10000A064(v34, &unk_10026FEE0, &unk_1001E67C0);
  v53(v25, v4);
  v54 = 0;
  return sub_10000A7C0(v52, v54, 1, v4);
}

void sub_100033FE8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) && *(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) != 1)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v2 = *(type metadata accessor for JSStackContext() + 24);
  sub_1000209D4();
LABEL_7:
  sub_100034484();
  v3 = type metadata accessor for JSStackContext();
  v4 = *(v3 + 24);
  sub_100034484();
  v5 = *(v3 + 36);
  sub_100034484();
}

void sub_100034484()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v11 = 0;
    v8 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];

    if (v8)
    {
      v9 = v11;
    }

    else
    {
      v10 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000345E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSStackContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SourceFetcher()
{
  result = qword_100270AB0;
  if (!qword_100270AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSStackContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000346F4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  *(v5 + 24) = *a1;
  *(v5 + 40) = v9;
  v10 = a1[3];
  *(v5 + 56) = a1[2];
  *(v5 + 72) = v10;
  sub_100034690(a2, v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context);
  *(v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_urlSession) = a3;
  *(v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_process) = a4;
  *(v5 + 16) = a5;
  return v5;
}

uint64_t sub_100034774(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v60 - v11;
  v13 = type metadata accessor for URL();
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = v60 - v18;
  if (*(v1 + 72) && *(v1 + 72) != 1)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v62 = v13;
      if (qword_1002686C8 != -1)
      {
        sub_100007038();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v20 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v20);
      v22 = *(v21 + 72);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      sub_10000BBF0();
      v25 = AMSLogKey();
      if (v25)
      {
        v26 = v25;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100007D0C();

      sub_100002C00(&v64);
      LogInterpolation.init(stringLiteral:)();
      v41 = static os_log_type_t.info.getter();
      sub_1000036B0(v41);

      sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
      v42 = v1 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context;
      v43 = type metadata accessor for JSStackContext();
      (*(v63 + 16))(v17, v42 + *(v43 + 40), v62);
      return Promise.__allocating_init(value:)();
    }
  }

  sub_10001EC70(a1, v12);
  if (sub_100009F34(v12, 1, v13) == 1)
  {
    sub_100009F5C(v12, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686C8 != -1)
    {
      sub_100007038();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v27 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v27);
    v29 = *(v28 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10000BBF0();
    v32 = AMSLogKey();
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100007D0C();

    sub_100002C00(&v64);
    LogInterpolation.init(stringLiteral:)();
    v44 = static os_log_type_t.error.getter();
    sub_1000036B0(v44);

    sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
    v45 = v1 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context;
    v46 = type metadata accessor for JSStackContext();
    (*(v63 + 16))(v17, v45 + *(v46 + 40), v13);
    return Promise.__allocating_init(value:)();
  }

  v34 = *(v63 + 32);
  v62 = v13;
  v60[0] = v34;
  v34(v61, v12);
  if (qword_1002686C8 != -1)
  {
    sub_100007038();
  }

  v60[2] = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v35 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v35);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v60[1] = *(v36 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10000BBF0();
  v39 = AMSLogKey();
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v64);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48._object = 0x8000000100202A20;
  v48._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
  sub_10001EC70(a1, v10);
  v49 = v62;
  if (sub_100009F34(v10, 1, v62) == 1)
  {
    sub_100009F5C(v10, &unk_10026FEE0, &unk_1001E67C0);
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    *(&v65 + 1) = v49;
    v50 = sub_100017E64(&v64);
    (v60[0])(v50, v10, v49);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v64, &qword_10026D350, &qword_1001E6050);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
  LogInterpolation.init(stringInterpolation:)();
  v52 = static os_log_type_t.info.getter();
  sub_1000036B0(v52);

  sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
  v47 = Promise.__allocating_init()();
  v53 = v61;
  sub_1001A29D0(v61);
  sub_100002DFC();
  v54 = type metadata accessor for SyncTaskScheduler();
  *(&v65 + 1) = v54;
  v66 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v64);
  SyncTaskScheduler.init()();
  type metadata accessor for URLRequest();
  Promise.map<A>(on:_:)();

  sub_100002C00(&v64);
  *(&v65 + 1) = v54;
  v66 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v64);

  SyncTaskScheduler.init()();
  sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
  sub_100006070(&qword_100270B60, &unk_100271830, &unk_1001F0A50);
  Promise.flatMap<A>(on:_:)();

  sub_100002C00(&v64);
  v55 = swift_allocObject();
  *(v55 + 16) = v1;
  *(v55 + 24) = v47;
  v56 = swift_allocObject();
  *(v56 + 16) = v47;
  *(v56 + 24) = v1;
  v57 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  v58 = static OS_dispatch_queue.main.getter();
  *(&v65 + 1) = v57;
  v66 = &protocol witness table for OS_dispatch_queue;
  *&v64 = v58;
  Promise.then(perform:orCatchError:on:)();

  (*(v63 + 8))(v53, v62);
  sub_100002C00(&v64);
  return v47;
}

uint64_t sub_10003518C(uint64_t a1, uint64_t a2, int a3)
{
  v40 = a3;
  v48 = a2;
  v41 = a1;
  v49 = type metadata accessor for JetPackFileStreamSource();
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DiskJetPackLoader();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for JetPackSigningPolicy();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v42);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v38 = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = *(type metadata accessor for LogInterpolation() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002705B8, &qword_1001EFB28);
  v19 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x8000000100201A50;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v21 = type metadata accessor for URL();
  v52 = v21;
  v22 = sub_100017E64(v51);
  (*(*(v21 - 8) + 16))(v22, v41, v21);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10000A00C(v51, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.debug.getter();
  sub_1000036B0(v24);

  v38 = *(type metadata accessor for JSStackContext() + 28);
  static DiskJetPackResourceBundle.cleanUpOldSessions(baseURL:)();
  v25 = v8;
  v26 = *(v8 + 104);
  v27 = &enum case for JetPackSigningPolicy.required(_:);
  if ((v40 & 1) == 0)
  {
    v27 = &enum case for JetPackSigningPolicy.ignore(_:);
  }

  v28 = v42;
  v26(v13, *v27, v42);
  (*(v25 + 16))(v39, v13, v28);
  v52 = type metadata accessor for JetPackManagedKeyProvider();
  v53 = &protocol witness table for JetPackManagedKeyProvider;
  sub_100017E64(v51);
  JetPackManagedKeyProvider.init()();
  v29 = v43;
  DiskJetPackLoader.init(signingPolicy:keyProvider:)();
  URL.path.getter();
  v30 = v46;
  JetPackFileStreamSource.init(path:)();
  v31 = v49;
  v52 = v49;
  v53 = &protocol witness table for JetPackFileStreamSource;
  v32 = sub_100017E64(v51);
  v33 = v47;
  (*(v47 + 16))(v32, v30, v31);
  v34 = static DiskJetPackLoader.sharedUnpackQueue.getter();
  v50[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v50[4] = &protocol witness table for OS_dispatch_queue;
  v50[0] = v34;
  v35 = DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:on:)();
  (*(v33 + 8))(v30, v31);
  (*(v44 + 8))(v29, v45);
  (*(v25 + 8))(v13, v28);
  sub_100002C00(v50);
  sub_100002C00(v51);
  return v35;
}

uint64_t sub_100035764(uint64_t a1)
{
  v3 = *(type metadata accessor for JSStackContext() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_10003518C(a1, v4, v5);
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v12[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a3;
  v8 = a3;
  v9 = Promise.__allocating_init()();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v12);
  return v9;
}

uint64_t sub_100035914()
{
  sub_10003596C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_10003596C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  v3 = v0[7];

  sub_1000359E8();
  return v0;
}

uint64_t sub_1000359E8()
{
  v1 = sub_100002DFC();
  v3 = v2(v1);
  sub_100002D30(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_100035A38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035A80()
{
  v1 = *(v0 + 24);

  sub_100007A3C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100035ABC()
{
  v0 = *(*(sub_100004DA8() - 8) + 80);
  v1 = sub_100005AA0();
  return sub_100035B14(v1, v2, v3);
}

uint64_t sub_100035B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1;
  v15[1] = a3;
  v16 = a2;
  v19 = type metadata accessor for JetPackPath();
  v18 = *(v19 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v19);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002705A0, &qword_1001EFB10);
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.debug.getter();
  sub_1000036B0(v10);

  v11 = type metadata accessor for JSStackContext();
  v12 = *(v16 + *(v11 + 48));
  v13 = *(v11 + 20);
  static JetPackPath.sourcePath.getter();
  DiskJetPackResourceBundle.memoryMappedSource(atPath:virtualMachine:cacheURL:)();
  return (*(v18 + 8))(v5, v19);
}

uint64_t sub_100035D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v24 = a2;
  v32 = type metadata accessor for JetPackPath();
  v31 = *(v32 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v32);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v28 = qword_100287828;
  v5 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v27 = v5;
  v25 = v8 + 2 * v7;
  v9 = swift_allocObject();
  v23 = xmmword_1001E5F70;
  *(v9 + 16) = xmmword_1001E5F70;
  v26 = v8;
  v10 = sub_10007B9A4(&qword_1002705A8, &qword_1001EFB18);
  v11 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.debug.getter();
  sub_1000036B0(v12);

  JetPackPath.init(_:)();
  v13 = v30;
  v14 = DiskJetPackResourceBundle.fileData(atPath:)();
  if (v13)
  {
    return (*(v31 + 8))(v4, v32);
  }

  v17 = v14;
  v18 = v15;
  v30 = v10;
  result = (*(v31 + 8))(v4, v32);
  if (v18 >> 60 == 15)
  {
    *(swift_allocObject() + 16) = v23;
    v19 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v20 = static os_log_type_t.error.getter();
    sub_1000036B0(v20);

    sub_10013C144();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = v24;
    *v24 = v17;
    v22[1] = v18;
  }

  return result;
}

uint64_t sub_100036164()
{
  sub_1000067E4();
  v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC();
  }
}

uint64_t sub_1000361D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100036164();
}

uint64_t sub_1000361E4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = &type metadata for RemoteJetpackV2Loader;
  if (*(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v7 = *(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v13 = v11;
  v8 = sub_100017E64(v12);
  (*(v11[-1].Description + 2))(v8);
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v12, &qword_10026D350, &qword_1001E6050);
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9);

  result = Dictionary.init(dictionaryLiteral:)();
  *a2 = result;
  return result;
}

uint64_t sub_100036450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1 + 1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for JSAMS()
{
  result = qword_10026D4B0;
  if (!qword_10026D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000364D8(char *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v105 = a4;
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100002DEC();
  v110 = v12 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v107 = v13;
  v108 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v106 = v17 - v16;
  v109 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  v18 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v20 = &v103 - v19;
  v21 = type metadata accessor for JSAccountStore();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore] = a2;
  v121.receiver = v22;
  v121.super_class = v21;
  v23 = a2;
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_accounts] = objc_msgSendSuper2(&v121, "init");
  v24 = &a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v25 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16];
  v123[0] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v123[1] = v25;
  v26 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48];
  v123[2] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32];
  v123[3] = v26;
  v27 = objc_allocWithZone(type metadata accessor for JSApp());
  sub_10000F4A4(v123, v122);
  v28 = sub_100036D90(v123);
  sub_1000052EC(v28, OBJC_IVAR____TtC14amsengagementd5JSAMS_app);
  v29 = type metadata accessor for JSBacklog();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] = a1;
  v120.receiver = v30;
  v120.super_class = v29;
  v31 = a1;
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_backlog] = objc_msgSendSuper2(&v120, "init");
  v32 = *(v24 + 1);
  v122[0] = *v24;
  v122[1] = v32;
  v33 = *(v24 + 3);
  v122[2] = *(v24 + 2);
  v122[3] = v33;
  v34 = objc_allocWithZone(type metadata accessor for JSClient());
  v35 = a3;
  sub_10000F4A4(v122, v118);
  v36 = sub_100036EF8(v35, v122);
  sub_1000052EC(v36, OBJC_IVAR____TtC14amsengagementd5JSAMS_client);
  v37 = type metadata accessor for JSContent();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime] = v31;
  v117.receiver = v38;
  v117.super_class = v37;
  v39 = v31;
  v40 = objc_msgSendSuper2(&v117, "init");
  sub_1000052EC(v40, OBJC_IVAR____TtC14amsengagementd5JSAMS_content);
  v41 = type metadata accessor for JSDatabaseStore();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime] = v39;
  v116.receiver = v42;
  v116.super_class = v41;
  v43 = v39;
  v44 = objc_msgSendSuper2(&v116, "init");
  sub_1000052EC(v44, OBJC_IVAR____TtC14amsengagementd5JSAMS_database);
  v45 = [objc_allocWithZone(type metadata accessor for JSDevice()) init];
  sub_1000052EC(v45, OBJC_IVAR____TtC14amsengagementd5JSAMS_device);
  v46 = objc_allocWithZone(type metadata accessor for JSFamily());
  v47 = v23;
  v48 = v43;
  v49 = sub_100037138(v47, v48);
  sub_1000052EC(v49, OBJC_IVAR____TtC14amsengagementd5JSAMS_family);
  v50 = [objc_allocWithZone(type metadata accessor for JSFeatureFlag()) init];
  sub_1000052EC(v50, OBJC_IVAR____TtC14amsengagementd5JSAMS_featureFlag);
  v51 = type metadata accessor for JSFollowUp();
  v52 = objc_allocWithZone(v51);
  *&v52[OBJC_IVAR____TtC14amsengagementd10JSFollowUp_accountStore] = v47;
  v115.receiver = v52;
  v115.super_class = v51;
  v53 = v47;
  v54 = objc_msgSendSuper2(&v115, "init");
  sub_1000052EC(v54, OBJC_IVAR____TtC14amsengagementd5JSAMS_followUp);
  v55 = [objc_allocWithZone(type metadata accessor for JSLocalize()) init];
  sub_1000052EC(v55, OBJC_IVAR____TtC14amsengagementd5JSAMS_localize);
  v56 = [objc_allocWithZone(type metadata accessor for JSLocation()) init];
  sub_1000052EC(v56, OBJC_IVAR____TtC14amsengagementd5JSAMS_location);
  v57 = objc_allocWithZone(type metadata accessor for JSLog());
  v58 = v48;
  v59 = sub_10003725C(v58);
  sub_1000052EC(v59, OBJC_IVAR____TtC14amsengagementd5JSAMS_log);
  v60 = objc_allocWithZone(type metadata accessor for JSMarketing());
  v61 = v53;
  v62 = v58;
  v103 = v35;
  v104 = v61;
  v63 = sub_10003744C(v61, v103, v62);
  sub_1000052EC(v63, OBJC_IVAR____TtC14amsengagementd5JSAMS_marketing);
  v64 = objc_allocWithZone(type metadata accessor for JSMediaAPI());
  v65 = v62;
  v66 = sub_10003765C(v65);
  sub_1000052EC(v66, OBJC_IVAR____TtC14amsengagementd5JSAMS_media);
  v67 = type metadata accessor for JSMediaCatalogSync();
  v68 = objc_allocWithZone(v67);
  *&v68[OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime] = v65;
  v114.receiver = v68;
  v114.super_class = v67;
  v69 = v65;
  v70 = objc_msgSendSuper2(&v114, "init");
  sub_1000052EC(v70, OBJC_IVAR____TtC14amsengagementd5JSAMS_mediaCatalogSync);
  v71 = type metadata accessor for JSMetrics();
  v72 = objc_allocWithZone(v71);
  *&v72[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] = v69;
  v113.receiver = v72;
  v113.super_class = v71;
  v73 = v69;
  v74 = objc_msgSendSuper2(&v113, "init");
  sub_1000052EC(v74, OBJC_IVAR____TtC14amsengagementd5JSAMS_metrics);
  v75 = [objc_allocWithZone(type metadata accessor for JSNetwork()) init];
  sub_1000052EC(v75, OBJC_IVAR____TtC14amsengagementd5JSAMS_network);
  v76 = objc_allocWithZone(type metadata accessor for JSExtension());
  v77 = v73;
  v78 = sub_100037850(v77);
  sub_1000052EC(v78, OBJC_IVAR____TtC14amsengagementd5JSAMS_plugin);
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_privacy] = [objc_allocWithZone(type metadata accessor for JSPrivacy()) init];
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_props] = v105;
  v79 = [objc_allocWithZone(type metadata accessor for JSServerDataCache()) init];
  sub_1000052EC(v79, OBJC_IVAR____TtC14amsengagementd5JSAMS_serverDataCache);
  v80 = type metadata accessor for JSSubscriptionStatus();
  v81 = objc_allocWithZone(v80);
  *&v81[OBJC_IVAR____TtC14amsengagementd20JSSubscriptionStatus_runtime] = v77;
  v112.receiver = v81;
  v112.super_class = v80;
  v82 = v77;
  v83 = objc_msgSendSuper2(&v112, "init");
  sub_1000052EC(v83, OBJC_IVAR____TtC14amsengagementd5JSAMS_subscription);
  v84 = [objc_allocWithZone(type metadata accessor for JSTelephony()) init];
  sub_1000052EC(v84, OBJC_IVAR____TtC14amsengagementd5JSAMS_telephony);
  v85 = [objc_allocWithZone(type metadata accessor for JSTreatmentStore()) init];
  sub_1000052EC(v85, OBJC_IVAR____TtC14amsengagementd5JSAMS_treatmentStore);
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_userNotifications] = [objc_allocWithZone(type metadata accessor for JSUserNotifications()) init];
  v86 = v24[1];
  v87 = v106;
  UUID.init()();
  sub_1000385DC(v87, v20);
  (*(v108 + 8))(v87, v107);
  sub_100038678(v20, &v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid]);
  v88 = type metadata accessor for JSAMS();
  v111.receiver = v5;
  v111.super_class = v88;
  v89 = objc_msgSendSuper2(&v111, "init");
  v90 = qword_1002686C0;
  v91 = v89;
  if (v90 != -1)
  {
    sub_1000031E0();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v92 = *(type metadata accessor for LogInterpolation() - 8);
  v93 = *(v92 + 72);
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v119 = v88;
  v118[0] = v91;
  if (*&v82[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8])
  {
    v95 = *&v82[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
    v96 = *&v82[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8];
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v118);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v97._countAndFlagsBits = 0x696C616974696E49;
  v97._object = 0xEC0000002064657ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v97);
  v98 = OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid;
  v119 = v109;
  v99 = sub_100017E64(v118);
  sub_100037A94(v91 + v98, v99);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v118, &qword_10026D350, &qword_1001E6050);
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v100);
  LogInterpolation.init(stringInterpolation:)();
  v101 = static os_log_type_t.debug.getter();
  sub_1000036B0(v101);

  return v91;
}

id sub_100036D90(uint64_t a1)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(*(a1 + 1))
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v5 = &v1[OBJC_IVAR____TtC14amsengagementd5JSApp_name];
  *v5 = v3;
  v5[1] = v2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSApp();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_10000FF10(a1);
  return v6;
}

id sub_100036EF8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC14amsengagementd8JSClient_demo;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for JSClientDemo()) init];
  v6 = *(a2 + 1);
  v7 = &v2[OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo];
  *v7 = a1;
  v7[8] = v6;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSClient();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_10000FF10(a2);
  return v8;
}

id sub_100036F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for JSDevice()
{
  result = qword_10026DA38;
  if (!qword_10026DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100037080()
{
  v1 = OBJC_IVAR____TtC14amsengagementd8JSDevice____lazy_storage___fileSystemSizeResults;
  v2 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  sub_10000A7C0(v0 + v1, 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JSDevice();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100037138(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14amsengagementd8JSFamily_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSFamily();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10003725C(_BYTE *a1)
{
  *&v1[OBJC_IVAR____TtC14amsengagementd5JSLog_runtime] = a1;
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1])
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v10 = 762343521;
  v11 = 0xE400000000000000;
  v4 = a1;
  v5._countAndFlagsBits = v3;
  v5._object = v2;
  String.append(_:)(v5);

  type metadata accessor for Log();
  v6 = swift_allocObject();
  sub_100013AB8();
  *(v6 + 16) = OS_os_log.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC14amsengagementd5JSLog_logger] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for JSLog();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t type metadata accessor for JSMarketing()
{
  result = qword_10026DDC8;
  if (!qword_10026DDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10003744C(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for Bag();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_accountStore];
  v15[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v15[4] = &off_100246688;
  *v15 = a1;
  v16 = &a3[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_app] = a3[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1];
  v17 = qword_1002685F8;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  Bag.init(from:)();
  (*(v10 + 32))(&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_bag], v14, v7);
  *&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_clientInfo] = a2;
  v19 = *(v16 + 4);
  v20 = &v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient];
  *v20 = *(v16 + 3);
  v20[1] = v19;
  *&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_runtime] = a3;
  v21 = type metadata accessor for JSMarketing();
  v25.receiver = v3;
  v25.super_class = v21;

  v22 = a3;
  v23 = objc_msgSendSuper2(&v25, "init");

  return v23;
}

id sub_10003765C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders;
  *&v1[v3] = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v4 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices;
  *&v1[v4] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  v5 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions;
  *&v1[v5] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *&v1[OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSMediaAPI();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1000377B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSNetwork();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100037850(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader] = 0;
  *&v1[OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSExtension();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10003789C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSPrivacy();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100037918()
{
  v1 = OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrained;
  *&v0[v1] = String._bridgeToObjectiveC()();
  v2 = &v0[OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrainedItemSPI];
  *v2 = 6910067;
  *(v2 + 1) = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC14amsengagementd11JSTelephony____lazy_storage___telephonyContext] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JSTelephony();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100037A14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100037A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JSBag()
{
  result = qword_10026D718;
  if (!qword_10026D718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037B50(char *a1, void (*a2)(void *, uint64_t, uint64_t), void *a3, void *a4, uint64_t a5)
{
  v86 = a4;
  v93[6] = a5;
  v80 = a3;
  v81 = a2;
  v85 = type metadata accessor for Bag();
  v83 = *(v85 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSStack.StandardGlobalConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v84 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v65 - v14;
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = a1;
  v18 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8];
  if (v18)
  {
    v19 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
    v20 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8];
  }

  else
  {
    v19 = 0;
  }

  v89 = v10;
  v90 = v9;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  v21 = qword_100287820;
  v22 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v23 = *(type metadata accessor for LogInterpolation() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v68 = *(v23 + 80);
  v70 = v22;
  v67 = v25 + 2 * v24;
  v26 = swift_allocObject();
  v65 = xmmword_1001E5F70;
  *(v26 + 16) = xmmword_1001E5F70;
  v69 = v25;
  v27 = type metadata accessor for JSStackProvider();
  v74 = v5;
  v73 = v19;
  v88 = v18;
  v66 = v27;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000025;
  v28._object = 0x80000001001FD380;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v78 = v17;
  v29 = *&v17[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 40];
  v93[3] = &type metadata for Int;
  v79 = v29;
  v93[0] = v29;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v93);
  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  v71 = v24;
  LogInterpolation.init(stringInterpolation:)();
  v31 = static os_log_type_t.debug.getter();
  v72 = v21;
  sub_1000036B0(v31);

  sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v32 = v93[0];
  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  inject<A, B>(_:from:)();
  v33 = v93[0];
  static JSStack.StandardGlobalConfiguration.default.getter();
  sub_10007B9A4(&qword_10026E298, &qword_1001EDA38);
  v34 = type metadata accessor for JSStack.Prerequisite();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v75 = *(v35 + 72);
  v37 = v75;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1001E5F60;
  v77 = v38;
  v39 = v38 + v36;
  sub_1000262E4(v80, v39);
  v40 = *(v35 + 104);
  v40(v39, enum case for JSStack.Prerequisite.source(_:), v34);
  v41 = (v39 + v37);
  v42 = objc_allocWithZone(type metadata accessor for JSAMS());
  v43 = v32;
  v44 = v33;
  v45 = v81;

  v46 = v78;
  v80 = v43;
  v78 = v44;
  v47 = sub_1000364D8(v46, v43, v44, v45);
  *v41 = 5459265;
  v41[1] = 0xE300000000000000;
  v41[2] = v47;
  v48 = enum case for JSStack.Prerequisite.globalObject(_:);
  v76 = v34;
  v81 = v40;
  v40(v41, enum case for JSStack.Prerequisite.globalObject(_:), v34);
  v49 = (v39 + 2 * v75);
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v50 = v82;
  Bag.init(from:)();
  v51 = type metadata accessor for JSBag();
  v52 = objc_allocWithZone(v51);
  v53 = v83;
  v54 = v85;
  (*(v83 + 16))(v52 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v50, v85);
  v92.receiver = v52;
  v92.super_class = v51;
  v55 = objc_msgSendSuper2(&v92, "init");
  (*(v53 + 8))(v50, v54);
  *v49 = 6775138;
  v49[1] = 0xE300000000000000;
  v49[2] = v55;
  v81(v49, v48, v76);
  type metadata accessor for JSStack();
  v57 = v89;
  v56 = v90;
  v58 = v91;
  (*(v89 + 16))(v84, v91, v90);

  v59 = v86;
  v60 = v87;
  v61 = JSStack.__allocating_init(asPartOf:virtualMachine:configuration:customPrerequisites:qualityOfService:)();
  if (v60)
  {
    (*(v57 + 8))(v58, v56);
  }

  else
  {
    JSStack.withUnsafeContext(_:)();
    if (sub_100024F14() && (type metadata accessor for Defaults(), v62 = sub_1000287B4(7), v62 != 2) && (v62 & 1) != 0)
    {
      *(swift_allocObject() + 16) = v65;
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v63 = static os_log_type_t.debug.getter();
      sub_1000036B0(v63);

      JSStack.makeRemoteInspectable()();
    }

    else
    {
    }

    (*(v57 + 8))(v58, v56);
  }

  return v61;
}

uint64_t sub_1000383F0(void (*a1)(void *, uint64_t, uint64_t), void *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[2];
  return sub_100037B50(v5, a1, a2, v6, v7);
}

id sub_100038424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFeatureFlag();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10003847C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000384B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10003852C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSServerDataCache();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000385A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSUserNotifications();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000385DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100038678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000386E8(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100038744()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100038780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000387C4()
{
  sub_10000A610();
  v1 = type metadata accessor for Date();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100004CA8();
  v9 = *(v0 + v8);
  v10 = sub_100003B80();

  return sub_100039E84(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100038858(void *a1)
{
  v3 = type metadata accessor for JSRequest();
  sub_100003D10(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_100038930(a1, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000388D0()
{
  v1 = type metadata accessor for JSRequest();
  sub_100003D10(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  return JSStack.performRequest(_:)();
}

uint64_t sub_100038930(void *a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v42 = a5;
  v43 = a6;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for JSRequest();
  v13 = *(v45 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v45);
  v44 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v41[1] = *a1;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  v41[0] = qword_100287820;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = *(type metadata accessor for LogInterpolation() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v51 = type metadata accessor for JSAppEngine();
  v50[0] = a4;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v50);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001001F9C20;
  v22._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v51 = &type metadata for String;
  v50[0] = v42;
  v50[1] = v43;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v50, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24);

  type metadata accessor for JSStack();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v25 = v50[0];
  JSStack.withUnsafeContext(_:)();
  v26 = v46;
  v27 = JSRequest.timeoutInterval.getter();
  if ((v28 & 1) == 0)
  {
    sub_100038FD4(*&v27);
  }

  v30 = v44;
  v29 = v45;
  (*(v13 + 16))(v44, v26, v45);
  v31 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  (*(v13 + 32))(v32 + v31, v30, v29);

  v33 = sub_100039288(sub_1000388D0, v32);

  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = v25;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v36 = v47;
  v35 = v48;
  v37 = v49;
  (*(v48 + 104))(v47, enum case for DispatchQoS.QoSClass.default(_:), v49);

  v38 = static OS_dispatch_queue.global(qos:)();
  (*(v35 + 8))(v36, v37);
  v39 = sub_10010242C(sub_10005C7C8, v34, v38, v33);

  return v39;
}

uint64_t sub_100038EE8()
{
  v1 = type metadata accessor for JSRequest();
  sub_100002CC4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = sub_100008428();
  v8(v7);
  v9 = sub_100012C90();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_100038F94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_1000074E4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100038FD4(double a1)
{
  v3 = *v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v20 = type metadata accessor for JSAppEngine();
  v19[0] = v1;
  v11 = (v1[3] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001001F9A80;
  v14._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v20 = &type metadata for Double;
  *v19 = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.info.getter();
  sub_1000036B0(v16);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v3;
  JSStack.withUnsafeContext(_:)();
}

uint64_t sub_100039288(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = &v48 - v19;
  v20 = type metadata accessor for LogInterpolation.StringInterpolation();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = (*(v2 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v22[1])
  {
    v52 = *v22;
  }

  else
  {
    v52 = 0;
  }

  type metadata accessor for Defaults();
  v23 = sub_10002E3EC(4);
  if ((v24 & 1) != 0 || (v25 = v23, v23 < 1))
  {

    return v61(v47);
  }

  else
  {
    v49 = v7;
    v50 = v4;
    v51 = v3;
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    v48 = qword_100287820;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v64 = type metadata accessor for JSAppEngine();
    aBlock[0] = v2;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0x676E69796C707041;
    v29._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v64 = &type metadata for Int;
    aBlock[0] = v25;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(aBlock, &qword_10026D350, &qword_1001E6050);
    v30._object = 0x80000001001F9C40;
    v30._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    v31 = static os_log_type_t.info.getter();
    sub_1000036B0(v31);

    sub_10007B9A4(&qword_10026D658, &qword_1001EC9A0);
    v32 = Promise.__allocating_init()();
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v33 = v32;
    v48 = v32;

    v52 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v13 = v25;
    v35 = v53;
    v34 = v54;
    (*(v53 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v54);
    v36 = v55;
    + infix(_:_:)();
    (*(v35 + 8))(v13, v34);
    v37 = v57;
    v56 = *(v56 + 8);
    (v56)(v18, v57);
    v38 = swift_allocObject();
    v39 = v61;
    v40 = v62;
    v38[2] = v33;
    v38[3] = v39;
    v38[4] = v40;
    v65 = sub_100102764;
    v66 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v64 = &unk_10024BFC8;
    v41 = _Block_copy(aBlock);

    v42 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10004DE28();
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
    v43 = v60;
    v44 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v52;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);

    (*(v50 + 8))(v43, v44);
    (*(v59 + 8))(v42, v49);
    (v56)(v36, v37);
    return v48;
  }
}

uint64_t sub_1000399B4(void *a1)
{
  Group = JSContextGetGroup([a1 JSGlobalContextRef]);

  return _JSContextGroupClearExecutionTimeLimit(Group);
}

uint64_t sub_1000399E8(void *a1, double a2)
{
  Group = JSContextGetGroup([a1 JSGlobalContextRef]);

  v4.n128_f64[0] = a2 + 2.0;
  return _JSContextGroupSetExecutionTimeLimit(Group, sub_100101D60, 0, v4);
}

uint64_t sub_100039B44(uint64_t a1)
{
  v2._countAndFlagsBits = sub_10003A3C0(0x73616C4361746164, 0xE900000000000073, a1);
  if (!v2._object)
  {
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  sub_10001FC50(v2);
  type metadata accessor for AppDatabase();
  v3 = sub_10001D804(*(*(v1 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1));
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v5 = type metadata accessor for JSDatabase();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC14amsengagementd10JSDatabase_database] = v3;
  v10.receiver = v6;
  v10.super_class = v5;

  v7 = objc_msgSendSuper2(&v10, "init");
  inited[4].n128_u64[1] = v5;
  inited[3].n128_u64[0] = v7;
  v8 = Dictionary.init(dictionaryLiteral:)();

  return v8;
}

uint64_t sub_100039E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  v13 = *a1;
  if (a4)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E61B0;
  Date.timeIntervalSinceNow.getter();
  *(v15 + 56) = &type metadata for Double;
  *(v15 + 64) = &protocol witness table for Double;
  *(v15 + 32) = fabs(v16);
  v35 = String.init(format:_:)();
  v18 = v17;
  if (v13)
  {
    v19 = v17;
    v20 = *(a6 + 16);
    *(a6 + 16) = v13;
    swift_retain_n();

    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = *(type metadata accessor for LogInterpolation() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v38 + 1) = type metadata accessor for JSAppEngine();
    *&v37 = a6;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v37);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0xD000000000000015;
    v24._object = 0x80000001001F9B40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    *(&v38 + 1) = &type metadata for String;
    *&v37 = v35;
    *(&v37 + 1) = v19;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26);
  }

  else
  {
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v27 = *(type metadata accessor for LogInterpolation() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(&v38 + 1) = type metadata accessor for JSAppEngine();
    *&v37 = a6;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v37);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._object = 0x80000001001F9B20;
    v30._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    *(&v38 + 1) = &type metadata for String;
    *&v37 = v35;
    *(&v37 + 1) = v18;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    LogInterpolation.init(stringInterpolation:)();
    if (a2)
    {
      swift_getErrorValue();
      *(&v38 + 1) = v36;
      v32 = sub_100017E64(&v37);
      (*(*(v36 - 8) + 16))(v32);
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v33 = static os_log_type_t.error.getter();
    sub_1000036B0(v33);
  }
}

uint64_t sub_10003A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_100012A94(), (v4 & 1) != 0))
  {
    sub_100061E4C(v3);
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_10003A420@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 16))
  {
    sub_10000357C();

    sub_100008614();

    if (!v2)
    {
      sub_100003C38(v8, &v7);
      sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *a1 = xmmword_1001F0380;
      }
    }

    return sub_100002C5C(v8);
  }

  else
  {
    sub_10001ED34();
    v5 = sub_100007544();
    return sub_100006E04(v5, v6);
  }
}

uint64_t sub_10003A504()
{
  if (*(v0 + 16))
  {
    sub_10000357C();

    sub_100008614();

    if (v1)
    {
      return sub_100002C5C(v7);
    }

    else
    {
      sub_100003C38(v7, &v6);
      sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      v5 = sub_10000BC24();
      if ((v5 & 1) == 0)
      {
        v8 = 0;
      }

      v9 = v5 ^ 1;
      sub_100002C5C(v7);
      return v8;
    }
  }

  else
  {
    sub_10001ED34();
    v3 = sub_100007544();
    return sub_100006E04(v3, v4);
  }
}

uint64_t sub_10003A5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003A638@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  v6 = type metadata accessor for String.Encoding();
  v7 = sub_100002CC4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  switch(a1)
  {
    case 1:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v37 = sub_100004894();
      sub_10003A5E0(v37, v38);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v39 = sub_100006A80();
      v40(v39);
      v41 = sub_100004894();
      v43 = sub_10000AEA8(v41, v42);
      if (v43)
      {
        v44 = v43;
        v45 = [v43 BOOLValue];

        sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
        v46 = v45;
        v47 = &type metadata for Bool;
      }

      else
      {
        sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
        v46 = 0;
        v47 = 0;
      }

      *a2 = v46;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v47;
      goto LABEL_35;
    case 2:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v21 = sub_100004894();
      sub_10003A5E0(v21, v22);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v23 = sub_100006A80();
      v24(v23);
      v25 = sub_100004894();
      v27 = sub_10000AEA8(v25, v26);
      v20 = v27;
      if (v27)
      {
        v19 = [v27 integerValue];

        v20 = &type metadata for Int;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    case 3:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v28 = sub_100004894();
      sub_10003A5E0(v28, v29);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v30 = sub_100006A80();
      v31(v30);
      v32 = sub_100004894();
      v34 = sub_10000AEA8(v32, v33);
      v11 = v34;
      if (v34)
      {
        [v34 doubleValue];
        v36 = v35;

        v11 = &type metadata for Double;
      }

      else
      {
        v36 = 0;
      }

      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v36;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_34;
    case 4:
      v12 = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v13 = sub_100004894();
      sub_10003A5E0(v13, v14);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v15 = sub_100006A80();
      v16(v15);
      v17 = sub_100004894();
      v19 = sub_10000AEA8(v17, v18);
      if (v19)
      {
        v20 = v12;
      }

      else
      {
        v20 = 0;
      }

LABEL_17:
      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v19;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v20;
      goto LABEL_35;
    case 5:
      objc_opt_self();
      sub_100004894();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v74 = 0;
      v49 = sub_100019B80(isa, "propertyListWithData:options:format:error:");

      v50 = 0;
      if (v49)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = v50;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v74 = 0u;
        v75 = 0u;
      }

      sub_100003C38(&v74, v72);
      if (!v73)
      {
        goto LABEL_30;
      }

      v55 = &qword_10026A520;
      v56 = &qword_1001E83B0;
      goto LABEL_28;
    case 6:
      objc_opt_self();
      sub_100004894();
      v51 = Data._bridgeToObjectiveC()().super.isa;
      *&v74 = 0;
      v52 = sub_100019B80(v51, "propertyListWithData:options:format:error:");

      v53 = 0;
      if (v52)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = v53;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v74 = 0u;
        v75 = 0u;
      }

      sub_100003C38(&v74, v72);
      if (v73)
      {
        v55 = &qword_10026AE50;
        v56 = &unk_1001E83A0;
LABEL_28:
        v11 = sub_10007B9A4(v55, v56);
        if (swift_dynamicCast())
        {
          v58 = v71;
          sub_10000A064(&v74, &qword_10026D350, &qword_1001E6050);
          sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
          goto LABEL_33;
        }

        sub_10000C31C(&v74);
        v59 = a2;
      }

      else
      {
LABEL_30:
        sub_10000C31C(&v74);
        sub_10000C31C(a2);
        v59 = v72;
      }

      sub_10000C31C(v59);
      v58 = 0;
      v11 = 0;
LABEL_33:
      *a2 = v58;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
LABEL_34:
      *(a2 + 24) = v11;
LABEL_35:
      sub_100003C38(a2, &v74);
      v60 = *(&v75 + 1);
      result = sub_10000A064(&v74, &qword_10026D350, &qword_1001E6050);
      if (!v60)
      {
        if (qword_1002686B8 != -1)
        {
          sub_100004FFC();
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v62 = *(type metadata accessor for LogInterpolation() - 8);
        v63 = *(v62 + 72);
        v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E61B0;
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v65._countAndFlagsBits = 0x5252452045505954;
        v65._object = 0xEC000000203A524FLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v65);
        static String.Encoding.utf8.getter();
        sub_100004894();
        v66 = String.init(data:encoding:)();
        if (v67)
        {
          v68 = &type metadata for String;
        }

        else
        {
          v66 = 0;
          v68 = 0;
          *&v75 = 0;
        }

        *&v74 = v66;
        *(&v74 + 1) = v67;
        *(&v75 + 1) = v68;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_10000A064(&v74, &qword_10026D350, &qword_1001E6050);
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v69);
        LogInterpolation.init(stringInterpolation:)();
        v70 = static os_log_type_t.error.getter();
        sub_1000036B0(v70);
      }

      return result;
    default:
      v10 = [objc_allocWithZone(NSNull) init];
      v11 = sub_100002BC0(0, qword_10026A530, NSNull_ptr);
      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v10;
      goto LABEL_34;
  }
}

uint64_t sub_10003AE18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000253FC(a1, a2);
  }

  return a1;
}

uint64_t sub_10003AE2C()
{

  return String.hash(into:)();
}

uint64_t sub_10003AE50()
{
  v2 = *(v0 - 176);

  return sub_10008A630();
}

uint64_t sub_10003AEE8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_10003AF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, os_log_type_t a11)
{

  sub_1000036B0(a11);
}

uint64_t sub_10003AF48()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10003AF6C()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t sub_10003AF98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10003AFE8()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 32) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);
    v13 = *(v7 + 8);

    return v13(v12);
  }
}

uint64_t sub_10003B104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003B11C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003B1C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  v6 = *(a1 + 16);
  if (v6)
  {
    swift_beginAccess();
    sub_10003B7C4(v1 + 16, &v44);
    if (v45)
    {
      sub_10003B104(&v44, v37);
      v7 = sub_100003CA8(v37, v37[3]);
      v8 = *(v1 + 57);
      v9 = *v7;
      sub_10003B834(&v38);
      if (v38)
      {
        v10 = v39;
        v11 = v40;
        v12 = v41;
        v13 = v43;
        v46 = v38;
        sub_10000A064(&v46, &qword_10026A6F8, &unk_1001E7CA0);
        v47 = v42;
        sub_10000A064(&v47, &unk_10026CD20, &unk_1001E7CC0);
        v48 = v13;
        sub_10000A064(&v48, &qword_10026A758, &qword_1001EBE80);
        if (v10 != 2)
        {
          v49 = v12;
          if (v10)
          {
            v34 = v11;
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v14 = sub_100003DE8();
            sub_100002CFC(v14);
            v16 = *(v15 + 72);
            v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
            *(swift_allocObject() + 16) = xmmword_1001E5F70;
            v45 = type metadata accessor for EnqueueRunner();
            *&v44 = v2;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v44);
            LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v19._countAndFlagsBits = 0x6965756575716E45;
            v19._object = 0xEB0000000020676ELL;
            LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
            v45 = &type metadata for Int;
            *&v44 = v6;
            LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
            v20 = sub_10000A064(&v44, &qword_10026D350, &qword_1001E6050);
            sub_1000083FC(" event(s) to backlog...", v20);
            LogInterpolation.init(stringInterpolation:)();
            if (qword_1002686B0 != -1)
            {
              sub_100002D44();
            }

            v21 = qword_100287810;
            v22 = static os_log_type_t.default.getter();
            sub_1000036B0(v22);

            type metadata accessor for AppDatabase();
            v23 = sub_10001D804(v8);
            v24 = (a1 + 32);
            v35 = v49;
            do
            {
              v25 = v21;
              v26 = *v24;
              swift_bridgeObjectRetain_n();
              sub_1000A5940(&v44);
              v27 = v23;
              if (v35)
              {
                v28 = sub_1000F4A44();
                v30 = v29;
              }

              else
              {
                v30 = 0;
                v28 = v34;
              }

              v31 = sub_1000A0D24();
              v32 = v30 & 1;
              v23 = v27;
              sub_1000A0E24(&v44, v28, v32, v31, 0);

              sub_10009D054(&v44);
              ++v24;
              --v6;
              v21 = v25;
            }

            while (v6);
            *(swift_allocObject() + 16) = xmmword_1001E5F70;
            sub_100007A48();
            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(v36);
            LogInterpolation.init(stringLiteral:)();
            v33 = static os_log_type_t.default.getter();
            sub_1000036B0(v33);
          }
        }
      }

      sub_100002C00(v37);
    }

    else
    {
      sub_10000A064(&v44, &qword_10026C878, &qword_1001EBCD8);
    }
  }
}

uint64_t sub_10003B7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C878, &qword_1001EBCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10003B834@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_10007B9A4(&qword_10026A760, &qword_1001E7CD0);
  OS_dispatch_queue.sync<A>(execute:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_10003B8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10003B914@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 24);
  if (*(v11 + 16))
  {
    v12 = *(a1 + 24);

    v13 = sub_10003BBE8(a2);
    if (v14)
    {
      v15 = *(v11 + 56) + 56 * v13;
      v17 = *v15;
      v16 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = *(v15 + 32);
      v20 = *(v15 + 40);
      v22 = *(v15 + 48);

      *a3 = v17;
      a3[1] = v16;
      a3[2] = v18;
      a3[3] = v19;
      a3[4] = v21;
      a3[5] = v20;
      a3[6] = v22;
      return result;
    }
  }

  sub_1000A3B88();
  sub_1000A36EC();
  v32 = a2;
  v24 = v34;
  v31 = *(&v35 + 1);
  v25 = v35;
  v30 = *(&v36 + 1);
  v26 = v36;
  v29 = v37;
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  if (v34)
  {
    v38 = v24;
    v39 = v25;
    v40 = v31;
    v41 = v26;
    v42 = v30;
    v43 = v29;
    sub_1000A46BC(&v34, v33, &qword_10026A760, &qword_1001E7CD0);
    v27 = *(a1 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(a1 + 24);
    sub_1000AC840();
    *(a1 + 24) = v33[0];
  }

  else
  {
    sub_1000AB7AC(&v38, v32);
    sub_100009FB0(&v38, &qword_10026A760, &qword_1001E7CD0);
  }

  swift_endAccess();
  v28 = v35;
  *a3 = v34;
  *(a3 + 1) = v28;
  result = *&v36;
  *(a3 + 2) = v36;
  a3[6] = v37;
  return result;
}

unint64_t sub_10003BBE8(char a1)
{
  sub_10003D2F8();
  sub_10003BC4C();
  v2 = Hasher._finalize()();

  return sub_10004F904(a1, v2);
}

uint64_t sub_10003BC4C()
{
  String.hash(into:)();
}

uint64_t sub_10003BD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = v13 + v12;
  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v2 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_10003BE18(a1, *(v2 + 16), *(v2 + 24), v2 + v11, v2 + v13, *(v2 + v15), *(v2 + v15 + 8), *(v2 + v15 + 16), a2, *(v2 + v16), *(v2 + v16 + 8));
}

uint64_t sub_10003BE18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v133 = a8;
  v116 = a6;
  v117 = a7;
  v114 = a4;
  v115 = a5;
  v145 = a1;
  v125 = a9;
  v112 = a11;
  v111 = a10;
  v132 = type metadata accessor for Date();
  v13 = *(v132 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v132);
  v131 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v130 = &v103 - v17;
  v141 = type metadata accessor for Treatment(0);
  v129 = *(v141 - 8);
  v18 = *(v129 + 64);
  __chkstk_darwin(v141);
  v146 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[17];
  v21 = a2[18];
  sub_100003CA8(a2 + 14, v20);
  v22 = (*(v21 + 8))(v20, v21);
  v113 = a2;
  v23 = a2[21];
  type metadata accessor for TreatmentsCalculator();
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *(inited + 24) = v23;
  v25 = a3 + 56;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a3 + 56);
  v29 = (v26 + 63) >> 6;
  v128 = (v13 + 16);
  v110 = 0x8000000100203DC0;
  v30 = a3;
  swift_unknownObjectRetain();

  v31 = 0;
  v32 = &_swiftEmptyDictionarySingleton;
  v109 = xmmword_1001E5F60;
  v124 = xmmword_1001E61B0;
  v143 = v29;
  v144 = a3 + 56;
LABEL_4:
  v33 = v127;
  if (v28)
  {
    goto LABEL_9;
  }

LABEL_5:
  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      swift_setDeallocating();
      sub_1001AFE78();
      swift_deallocClassInstance();

      *v125 = v32;
      return result;
    }

    v28 = *(v25 + 8 * v34);
    ++v31;
    if (v28)
    {
      v31 = v34;
      while (1)
      {
LABEL_9:
        v35 = (*(v30 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v28)))));
        v36 = *v35;
        v37 = v35[1];

        v142 = v36;
        v147 = v37;
        sub_10003CB20(v36, v37, &v152);
        if (v33)
        {

          goto LABEL_50;
        }

        v28 &= v28 - 1;
        if (v153)
        {
          v158 = v152;
          v159 = v153;
          v160 = v154;
          v161 = v155;
          v162 = v156;
          v163 = v157;
          v38 = sub_10003D1B4(&v158);
          if (v39)
          {
            v106 = v38;
            v107 = v39;
            v40 = sub_1001AF95C(v38, v39);
            type metadata accessor for TreatmentsRandomGenerator();
            swift_initStackObject();
            sub_1001B59E8(v40);
            v108 = sub_1001B5A8C(10000);

            v41 = sub_1001B7710(v142, v147, v108, v114, v115, v116, v117);
            v104 = v30;
            v127 = 0;
            v42 = *(v41 + 16);
            if (v42)
            {
              v149 = _swiftEmptyArrayStorage;
              v43 = v41;
              v121 = v42;
              specialized ContiguousArray.reserveCapacity(_:)();
              v44 = sub_1001BEB6C(v41);
              v47 = 0;
              v140 = v41 + 56;
              v120 = v45;
              v105 = v41 + 64;
              v122 = inited;
              v123 = v41;
              v126 = v32;
              do
              {
                if ((v44 & 0x8000000000000000) != 0 || v44 >= 1 << *(v43 + 32))
                {
                  __break(1u);
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
LABEL_55:
                  __break(1u);
LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
                }

                v48 = 1 << v44;
                if ((*(v140 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
                {
                  goto LABEL_53;
                }

                if (*(v43 + 36) != v45)
                {
                  goto LABEL_54;
                }

                v136 = v44 >> 6;
                v137 = v45;
                v139 = v46;
                v134 = v47;
                v49 = *(v43 + 48);
                v50 = *(v129 + 72);
                v138 = v44;
                v51 = v146;
                sub_1001BF1D0(v49 + v50 * v44, v146);
                v135 = v48;
                if (v133)
                {
                  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
                  v52 = swift_initStackObject();
                  *(v52 + 16) = v124;
                  v53 = (v51 + *(v141 + 20));
                  v54 = v53[1];
                  *(v52 + 32) = *v53;
                  *(v52 + 40) = v54;

                  v55 = v107;

                  sub_10000DE9C();
                  v57 = v56;
                  v56[2] = 2;
                  v56[6] = v106;
                  v56[7] = v55;
                  v58 = *(&v162 + 1);
                  v59 = *(&v163 + 1);
                  v118 = v162;
                  v119 = v163;
                  v60 = v56[3];

                  if (v60 <= 5)
                  {
                    sub_10000DE9C();
                    v57 = v91;
                  }

                  v57[2] = 3;
                  v57[8] = v118;
                  v57[9] = v58;
                  v61 = v57[3];

                  if (v61 <= 7)
                  {
                    sub_10000DE9C();
                    v57 = v92;
                  }

                  v57[2] = 4;
                  v57[10] = v119;
                  v57[11] = v59;
                  v148 = v108;
                  v62 = dispatch thunk of CustomStringConvertible.description.getter();
                  v64 = v57[2];
                  if (v64 >= v57[3] >> 1)
                  {
                    v93 = v62;
                    v94 = v63;
                    sub_10000DE9C();
                    v63 = v94;
                    v57 = v95;
                    v62 = v93;
                  }

                  v57[2] = v64 + 1;
                  v65 = &v57[2 * v64];
                  v65[4] = v62;
                  v65[5] = v63;
                  v148 = v57;
                  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
                  sub_100006070(&qword_100270BB0, &qword_1002704A0, &unk_1001ECCF0);
                  v66 = BidirectionalCollection<>.joined(separator:)();
                  v118 = v67;
                  v119 = v66;

                  v68 = *v128;
                  v69 = v130;
                  v70 = v146;
                  v71 = v132;
                  (*v128)(v130, v146, v132);
                  v72 = v131;
                  v68(v131, v70 + *(v141 + 24), v71);
                  v73 = objc_allocWithZone(AMSTreatment);
                  sub_1001BE4B0(v69, v119, v118, v72);
                  v43 = v123;
                }

                else
                {
                  v74 = *v128;
                  v75 = v130;
                  v76 = v132;
                  (*v128)(v130, v146, v132);
                  v77 = *(v141 + 24);
                  v78 = (v146 + *(v141 + 20));
                  v79 = v78[1];
                  v119 = *v78;
                  v80 = v131;
                  v74(v131, v146 + v77, v76);
                  v43 = v123;
                  objc_allocWithZone(AMSTreatment);

                  v81 = v75;
                  v70 = v146;
                  sub_1001BE4B0(v81, v119, v79, v80);
                }

                sub_1001BF22C(v70, type metadata accessor for Treatment);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v82 = *(v149 + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                if (v139)
                {
                  goto LABEL_58;
                }

                v83 = 1 << *(v43 + 32);
                inited = v122;
                v32 = v126;
                if (v138 >= v83)
                {
                  goto LABEL_55;
                }

                v84 = *(v140 + 8 * v136);
                if ((v84 & v135) == 0)
                {
                  goto LABEL_56;
                }

                if (*(v43 + 36) != v137)
                {
                  goto LABEL_57;
                }

                v85 = v84 & (-2 << (v138 & 0x3F));
                if (v85)
                {
                  v83 = __clz(__rbit64(v85)) | v138 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v86 = v136 << 6;
                  v87 = v136 + 1;
                  v88 = (v105 + 8 * v136);
                  while (v87 < (v83 + 63) >> 6)
                  {
                    v90 = *v88++;
                    v89 = v90;
                    v86 += 64;
                    ++v87;
                    if (v90)
                    {
                      sub_100083998(v138, v137, 0);
                      v83 = __clz(__rbit64(v89)) + v86;
                      goto LABEL_41;
                    }
                  }

                  sub_100083998(v138, v137, 0);
LABEL_41:
                  v32 = v126;
                }

                v46 = 0;
                v47 = v134 + 1;
                v44 = v83;
                v45 = v120;
              }

              while (v134 + 1 != v121);
              sub_10000A00C(&v152, &qword_100271DD0, &qword_1001F1888);

              v96 = v149;
            }

            else
            {
              sub_10000A00C(&v152, &qword_100271DD0, &qword_1001F1888);

              v96 = _swiftEmptyArrayStorage;
            }

            sub_1001B8614(v96);
            swift_isUniquelyReferenced_nonNull_native();
            v149 = v32;
            sub_1000AD090();

            v126 = v149;
            if (qword_100268738 != -1)
            {
              swift_once();
            }

            v147 = qword_100287898;
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v97 = *(type metadata accessor for LogInterpolation() - 8);
            v98 = *(v97 + 72);
            v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
            *(swift_allocObject() + 16) = v109;
            v151 = type metadata accessor for TreatmentStoreService();
            v149 = v113;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v149);
            v151 = &type metadata for String;
            v149 = 0xD000000000000033;
            v150 = v110;
            static LogInterpolation.safe(_:)();
            sub_10000A00C(&v149, &qword_10026D350, &qword_1001E6050);
            v149 = 0x6465766C6F736552;
            v150 = 0xE900000000000020;
            sub_10007B9A4(&qword_10026E448, &qword_1001F1AA0);
            v32 = v126;
            v100._countAndFlagsBits = Dictionary.description.getter();
            String.append(_:)(v100);

            v151 = &type metadata for String;
            static LogInterpolation.safe(_:)();
            sub_10000A00C(&v149, &qword_10026D350, &qword_1001E6050);
            v101 = static os_log_type_t.debug.getter();
            sub_1000036B0(v101);

            v30 = v104;
            v29 = v143;
            v25 = v144;
            goto LABEL_4;
          }

          sub_10000A00C(&v152, &qword_100271DD0, &qword_1001F1888);
        }

        v29 = v143;
        v25 = v144;
        if (!v28)
        {
          goto LABEL_5;
        }
      }
    }
  }

  __break(1u);
  sub_10000A00C(&v152, &qword_100271DD0, &qword_1001F1888);

LABEL_50:
}

uint64_t sub_10003CAB4()
{
  v1 = v0[4];
  sub_100003CA8(v0, v0[3]);
  v2 = sub_10000A280();
  return v3(v2);
}

void *sub_10003CB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;

  v10[2] = sub_100017C14();
  v10[3] = 0xD00000000000006ALL;
  v10[4] = 0x8000000100203AC0;
  v10[5] = inited;
  v10[6] = sub_10003D06C;
  v10[7] = v8;
  sub_100014A20(sub_10001D7C8, v10);

  if (v3)
  {

    swift_setDeallocating();
    return sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C();
    memcpy(__dst, (v8 + 16), sizeof(__dst));
    sub_1000E0BFC(__dst, v11, &qword_100271DD0, &qword_1001F1888);

    return memcpy(a3, __dst, 0x58uLL);
  }
}

uint64_t sub_10003CCD4()
{
  if (v0[4])
  {

    v1 = v0[6];

    v2 = v0[8];

    v3 = v0[10];

    v4 = v0[12];
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10003CD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

unint64_t sub_10003CD70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_10003CE40(uint64_t a1, void *a2)
{
  v4 = sub_10003A400();
  if (!v2 && (v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_10001ADD4();
    v9 = v8;
    if (v8)
    {
      v10 = v7;
      v11 = sub_10001ADD4();
      v14 = v12;
      if (v12)
      {
        v15 = v11;
        v16 = sub_10001ADD4();
        v18 = v17;
        if (v17)
        {
          v27 = v16;
          v24 = sub_10001ADD4();
          v25 = v19;
          v20 = sub_10001ADD4();
          v23 = v6 != 0;
          v22 = v21;
          swift_beginAccess();
          memcpy(__dst, a2 + 2, sizeof(__dst));
          *(a2 + 16) = v23;
          a2[3] = v10;
          a2[4] = v9;
          a2[5] = v24;
          a2[6] = v25;
          a2[7] = v20;
          a2[8] = v22;
          a2[9] = v15;
          a2[10] = v14;
          a2[11] = v27;
          a2[12] = v18;
          sub_10000A00C(__dst, &qword_100271DD0, &qword_1001F1888);
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10003D08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10003D0E0(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];

  v4 = sub_10003D27C();
  switch(v4)
  {
    case 6:
      return 0;
    case 5:
      v9 = a1[4];
      v8 = a1[5];

      v10 = sub_1001B0940();
      if (v10 != 2)
      {
        return sub_1001AFD00(v10 & 1);
      }

      return 0;
    case 3:
      v5 = a1[4];
      v6 = a1[5];
      return sub_10003D3A4(*a1, a1[1]);
  }

  v12 = a1[4];
  v11 = a1[5];

  v13 = sub_1001B0940();
  if (v13 == 2)
  {
    return 0;
  }

  return sub_1001AF8C8(v13 & 1);
}

void *sub_10003D1B4(void *a1)
{
  result = sub_10003D0E0(a1 + 5);
  if (v3)
  {
    if (a1[4])
    {
      v4 = a1[3];
      v5 = a1[4];
    }

    else
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v10 = result;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);

    v8 = a1[1];
    v7 = a1[2];

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    String.append(_:)(v9);

    return v10;
  }

  return result;
}

uint64_t sub_10003D27C()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100245350, v2);
  sub_100005F2C();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10003D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[17] = a1;
  a5[18] = a2;
  a5[19] = a3;
  a5[20] = a4;
  a5[21] = v5;
}

uint64_t sub_10003D2F8()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_10003D310(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
}

uint64_t *sub_10003D338()
{
  v2 = *(v0 - 136);
  *(v0 - 88) = *(v0 - 128);

  return sub_100017E64((v0 - 112));
}

uint64_t sub_10003D37C@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 | (v2 << 6);
  v5 = (*(v1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(*(v1 + 56) + 8 * v4);
}

uint64_t sub_10003D3A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = objc_opt_self();
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 identifierForAccount:v5 bag:v3 bagNamespace:v6 keyName:v7];

  v16 = 0;
  v9 = [v8 resultWithTimeout:&v16 error:1.0];
  v10 = v16;
  if (!v9)
  {
    v14 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    return 0;
  }

  v11 = v9;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v10;

  swift_unknownObjectRelease();
  return v12;
}

void sub_10003D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] dictionaryForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247F28;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:6 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_10003D6B8()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  sub_100015B58();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_10003DB1C;
  v4 = v0[2];
  v5 = v0[3];
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6);
}

uint64_t sub_10003D768(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_10003DA78()
{
  v0 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  sub_100003D10(v0);
  v2 = *(v1 + 80);

  return sub_10003DAE0();
}

uint64_t sub_10003DB1C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100002D8C();

    return v12();
  }
}

uint64_t sub_10003DC34()
{
  sub_1000061B4();
  v2 = *v1;
  v3 = *v1;
  sub_100002D20();
  *v4 = v3;
  v5 = v2[46];
  *v4 = *v1;
  v3[47] = v0;

  v6 = v2[45];
  if (v0)
  {
    v7 = v3[40];
    v8 = v3[32];

    v9 = sub_1001BDE40;
  }

  else
  {
    v8 = v3[32];

    v9 = sub_10003DD78;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10003DD78()
{
  sub_100004768();
  v1 = v0[32];
  v0[48] = sub_10003DE18();
  sub_1000058A4(&unk_1001EBD60);
  v5 = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  sub_10001CC4C(v3);

  return v5();
}

uint64_t sub_10003DE18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = *(v0 + 192);
  v12 = *(v0 + 184);
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
  {
    if (qword_100268840 != -1)
    {
      swift_once();
    }

    v13 = qword_100287938;
    sub_10007B9A4(&unk_100271F80, &unk_1001F1B60);
    v14 = [*(v1 + 168) BOOLForKey:v13];
    v15 = [v14 valuePromise];

    Promise<A>.init(_:)();
    sub_100003EFC();
    v20[3] = type metadata accessor for SyncTaskScheduler();
    v20[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v20);
    SyncTaskScheduler.init()();
    v16 = Promise.map<A>(on:_:)();

    sub_100002C00(v20);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v5 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v2);
    v17 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v10, v2);
    v18 = sub_1000185A8(sub_1001BA1C4, 0, v17, v16);
  }

  else
  {
    sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
    LOBYTE(v20[0]) = 0;
    return Promise.__allocating_init(value:)();
  }

  return v18;
}

void sub_10003E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] BOOLForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248108;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:1 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_10003E208()
{
  sub_100002FB8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003E280()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_10003AFE8;
  v4 = *(v0 + 16);
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5);
}

uint64_t sub_10003E330(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8B8, &qword_1001EBD68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

id sub_10003E640@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BOOLValue];
  *a2 = result;
  return result;
}

uint64_t sub_10003E6C0(unsigned __int8 *a1)
{
  v2 = sub_10007B9A4(&qword_10026C8B8, &qword_1001EBD68);
  sub_100003D10(v2);
  v4 = *(v3 + 80);
  sub_1000F11BC();

  return sub_10003E77C(a1);
}

uint64_t sub_10003E784()
{
  sub_1001BF340();
  sub_100003D28();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  v7 = *(v4 + 392);
  *v6 = *v1;
  *(v5 + 400) = v0;

  v8 = *(v4 + 384);
  if (v0)
  {
    v9 = *(v5 + 320);
    v10 = *(v5 + 256);
  }

  else
  {
    v11 = *(v5 + 256);

    *(v5 + 460) = v3 & 1;
  }

  sub_1001BF32C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10003E8D4()
{
  sub_100003D28();
  v1 = *(v0 + 256);
  v2 = v1[18];
  sub_100003CA8(v1 + 14, v1[17]);
  v3 = *(v2 + 16);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_10003F764;
  v6 = sub_1000077B0();

  return v8(v6);
}

uint64_t sub_10003E9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003F674;

  return sub_10003EA7C();
}

uint64_t sub_10003EA94()
{
  v1 = v0[5];
  v2 = v1[4];
  sub_100003CA8(v1, v1[3]);
  v3 = sub_10000A280();
  v0[6] = v4(v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10003ECD8;

  return sub_10003EBB0();
}

id sub_10003EB78()
{
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

uint64_t sub_10003EBB0()
{
  sub_100004768();
  v0[29] = v1;
  v2 = sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  v0[30] = v2;
  sub_100002CFC(v2);
  v0[31] = v3;
  v0[32] = *(v4 + 64);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v5 = type metadata accessor for AccountIdentity();
  v0[35] = v5;
  sub_100002CFC(v5);
  v0[36] = v6;
  v8 = *(v7 + 64) + 15;
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_10003EDD0, 0, 0);
}

uint64_t sub_10003ECD8()
{
  sub_100004768();
  sub_1000056A8();
  v2[2] = v0;
  v2[3] = v1;
  v2[4] = v3;
  v4 = v2[7];
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;
  *(v8 + 64) = v7;

  return _swift_task_switch(sub_10003F2AC, 0, 0);
}

uint64_t sub_10003EDD0()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 ams_accountID];
    *(v0 + 304) = v3;
    if (v3)
    {
      v4 = *(v0 + 296);
      v5 = *(v0 + 272);
      v6 = v3;
      AccountIdentity.init(amsAccountID:)();
      type metadata accessor for AccountCachedServerData();
      v7 = static AccountCachedServerData.shared.getter();
      AccountCachedServerData.stringSequence(forKey:accountID:)();

      if (qword_100268738 != -1)
      {
        sub_100004E84();
      }

      v8 = *(v0 + 232);
      *(v0 + 312) = qword_100287898;
      *(v0 + 320) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v9 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v9);
      *(v0 + 328) = *(v10 + 72);
      *(v0 + 376) = *(v11 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      *(v0 + 40) = &unk_100246478;
      *(v0 + 16) = v8;
      v32 = v2;
      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      v19 = *(v0 + 248);
      v27 = *(v0 + 240);
      v30 = *(v0 + 256);
      v31 = *(v0 + 232);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v0 + 16));
      *(v0 + 72) = &type metadata for String;
      sub_100002D0C();
      *(v0 + 48) = v20;
      sub_100008228();
      *(v0 + 56) = v21;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(v0 + 48, &qword_10026D350, &qword_1001E6050);
      *(v0 + 104) = &type metadata for String;
      *(v0 + 80) = 0x676E697972657551;
      *(v0 + 88) = 0xEF6D616572747320;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(v0 + 80, &qword_10026D350, &qword_1001E6050);
      v22 = static os_log_type_t.debug.getter();
      sub_1000036B0(v22);

      (*(v19 + 16))(v28, v29, v27);
      v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v24 = swift_allocObject();
      *(v0 + 336) = v24;
      (*(v19 + 32))(v24 + v23, v28, v27);
      *(v24 + ((v30 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
      v25 = v32;
      v26 = swift_task_alloc();
      *(v0 + 344) = v26;
      *v26 = v0;
      v26[1] = sub_10007F0E4;

      return sub_1001138B8(300000000000000000, 0, &unk_1001E6060, v24);
    }
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);

  sub_100007E4C();

  return v17(0, 0);
}

uint64_t sub_10003F210()
{
  v1 = sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003F2AC()
{
  sub_100004768();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = *(v0 + 40);
    v2 = sub_10003F32C();
    v1 = v4;
  }

  sub_100007E4C();

  return v5(v2, v1);
}

uint64_t sub_10003F32C()
{
  v1 = sub_10007B9A4(&qword_100269510, &qword_1001E6000);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21[-v3];
  v5 = sub_10007B9A4(&qword_100269518, &qword_1001E6008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  v15 = v0[3];
  v16 = v0[4];
  sub_100003CA8(v0, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (!v17)
  {
    return 0;
  }

  sub_10018A15C(v17);
  v19 = v18;
  if (v18)
  {
    sub_10007B9A4(&qword_100269528, &qword_1001E6018);
    sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010);
    Regex.init<A>(_:)();
    sub_10007EF00();

    if (sub_100009F34(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      Regex.Match.output.getter();

      v19 = static String._fromSubstring(_:)();

      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v14, v10);
      return v19;
    }

    (*(v11 + 8))(v14, v10);
    sub_100009F5C(v4, &qword_100269510, &qword_1001E6000);
    return 0;
  }

  return v19;
}

uint64_t sub_10003F674()
{
  sub_100004768();
  v2 = v1;
  v4 = v3;
  sub_1000056A8();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_100002D20();
  *v8 = v7;

  sub_100007E4C();

  return v9(v4, v2);
}

uint64_t sub_10003F764()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 408);
  v3 = *(v1 + 256);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;
  *(v8 + 416) = v6;
  *(v8 + 424) = v7;

  v9 = sub_1000047B0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003F864()
{
  v1 = v0;
  v32 = *(v0 + 424);
  v30 = *(v0 + 416);
  v31 = *(v0 + 460);
  v2 = *(v0 + 456);
  v3 = *(v0 + 352);
  v4 = v1[42];
  v5 = v1[43];
  v6 = v1[41];
  v7 = v1[39];
  v27 = v1[40];
  v24 = v1[37];
  v25 = v1[36];
  v8 = v1[35];
  v26 = v1[34];
  v9 = v1[32];
  v22 = v1[30];
  v23 = v1[31];
  v28 = v1[28];
  v29 = v1[33];
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v1[21] = v3;
  v1[18] = v9;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v1 + 18);
  v1[25] = &type metadata for String;
  v1[22] = 0xD000000000000033;
  v1[23] = 0x8000000100203DC0;
  static LogInterpolation.safe(_:)();
  sub_10000A00C((v1 + 22), &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.debug.getter();
  sub_1000036B0(v10);

  v21 = *(v9 + 200);
  sub_1000E0BFC(v22, v24, &unk_100271EA0, &qword_1001E77F0);
  sub_1000E0BFC(v23, v25, &unk_100271EA0, &qword_1001E77F0);
  v11 = *(v26 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = (v8 + v11 + v12) & ~v11;
  v14 = (v13 + v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v28;
  sub_10003FD2C(v24, v15 + v12);
  sub_10003FD2C(v25, v15 + v13);
  v16 = v15 + ((v13 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v30;
  *(v16 + 8) = v32;
  *(v16 + 16) = v31;
  v17 = (v15 + v14);
  *v17 = v7;
  v17[1] = v27;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
  swift_retain_n();

  v1[54] = sub_1001B96F4(sub_10003BD24, v15, sub_1001BE920, v9);

  sub_1000058A4(&unk_1001EBD48);
  v33 = v18;
  v19 = swift_task_alloc();
  v1[55] = v19;
  *v19 = v1;
  sub_10001CC4C(v19);

  return v33();
}

uint64_t sub_10003FBA8()
{
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 32) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = type metadata accessor for Date();
  if (!sub_100009F34(v0 + v6, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v6, v10);
  }

  if (!sub_100009F34(v0 + v7, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  v11 = (v7 + v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003FD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FDB0()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  sub_100061DE4(v2);
  sub_10007B9A4(&qword_10026C8A8, &qword_1001EBD50);
  sub_10001CD6C();
  *v0 = v3;
  sub_100017EE4();
  sub_10000522C();
  v4 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
}

uint64_t sub_10003FE60(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8B0, &qword_1001EBD58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_100040188(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v8, a1);
  Promise.resolve(_:)();

  v6 = *(a1 + 24);
  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_1000404B8()
{
  sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_10026A3A0 = result;
  return result;
}

uint64_t sub_100040550()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004058C()
{
  v0 = sub_10007B9A4(&qword_100270E30, &qword_1001F02F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = DispatchSpecificKey.init()();
  qword_100287910 = result;
  return result;
}

uint64_t sub_1000405FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100040684(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for AppDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  v9._object = 0x80000001001F4AB0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v21 = &type metadata for Int;
  v20[0] = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v20, &qword_10026D350, &qword_1001E6050);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11);

  result = 5;
  switch(a2)
  {
    case 0:
      result = sub_1000A6C80(7566955, 0xE300000000000000);
      if (!v18)
      {
        result = 1;
      }

      break;
    case 1:
      result = sub_1000A4F34();
      if (!v18)
      {
        sub_10009FE4C(0x746E65746E6F63, 0xE700000000000000);
        sub_1000A7698(0x656C756465686373, 0xE900000000000073);
        result = 2;
      }

      break;
    case 2:
      result = sub_10009FFB8(0x746E65746E6F63, 0xE700000000000000);
      if (!v18)
      {
        result = 3;
      }

      break;
    case 3:
      result = sub_1000A5100();
      if (!v18)
      {
        result = 4;
      }

      break;
    case 4:
      return result;
    case 5:
      result = sub_1000A9600(0x676F6C6B636162, 0xE700000000000000, 1701669236, 0xE400000000000000);
      if (!v18)
      {
        sub_1000A9600(0x746E65746E6F63, 0xE700000000000000, 0x69646F4D7473616CLL, 0xEC00000064656966);
        result = 6;
      }

      break;
    case 6:
      result = sub_1000A01BC(0x746E65746E6F63, 0xE700000000000000);
      if (!v18)
      {
        result = 7;
      }

      break;
    case 7:
      result = 8;
      break;
    case 8:
      v13._countAndFlagsBits = 0xD000000000000029;
      v13._object = 0x80000001001F4AE0;
      SQLDatabase.execute(sql:parameters:)(v13, &_swiftEmptyArrayStorage);
      if (!v14)
      {
        sub_1000A4F34();
        sub_1000A5100();
        sub_1000A9600(0xD000000000000013, 0x80000001001F4B40, 1701669236, 0xE400000000000000);
        goto LABEL_11;
      }

      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v15 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v21 = v19;
      v16 = sub_100017E64(v20);
      (*(*(v19 - 1) + 16))(v16);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v20, &qword_10026D350, &qword_1001E6050);
      v17 = static os_log_type_t.error.getter();
      sub_1000036B0(v17);

      result = 9;
      break;
    case 9:
LABEL_11:
      result = 9;
      break;
    default:
      sub_1000A1AC4();
      swift_allocError();
      result = swift_willThrow();
      break;
  }

  return result;
}

void sub_100040D00()
{
  sub_100003D8C();
  if (*(v1 + 8))
  {
    sub_1000048BC();
    sub_10000A00C(v2, v3, v4);
    sub_10000821C();
    sub_1000AB6A4(v5);

    sub_1000048BC();
    sub_10000A00C(v6, v7, v8);
  }

  else
  {
    sub_100040DAC(v1, v24);
    v9 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_100009DBC();
    sub_100040E1C(v10, v11, v12, v13);

    sub_10000A6E0(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_100040DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AE98, &qword_1001E8648);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100012A94();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    return sub_100050008(a1, v21[7] + 8 * v16, &qword_10026AE90, &qword_1001E8640);
  }

  sub_100041380(v16, a2, a3, a1, v21);
}

uint64_t sub_100040F5C(uint64_t a1)
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  v2 = *(v26 + 64);
  __chkstk_darwin(v23);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  if (qword_100268618 != -1)
  {
    swift_once();
  }

  v21[1] = qword_10026A3A8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  sub_100011BAC(a1, v29);
  v17 = swift_allocObject();
  sub_100002C4C(v29, (v17 + 16));
  aBlock[4] = nullsub_1;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100247350;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v19 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);
  (*(v26 + 8))(v4, v19);
  (*(v24 + 8))(v8, v25);
  v22(v16, v9);
}

uint64_t sub_100041348()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100040DAC(a4, a5[7] + 8 * a1);
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

void *sub_100041404()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for AppSchedulesTable();
    v1 = sub_100004B50();
    v1[2] = v2;
    v1[3] = 0x656C756465686373;
    v1[4] = 0xE900000000000073;
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1000414AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v27 = a5;
  v7 = v5;
  _StringGuts.grow(_:)(25);

  sub_10000B754();
  v25 = v11;
  v26 = v10;
  String.append(_:)(*(v5 + 24));
  v12 = v25;
  v13 = v26;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v7;
  v16[4] = a1;
  v16[5] = a2;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  v22 = _swiftEmptyArrayStorage;
  v23 = a4;
  v24 = v16;

  sub_100014A20(v27, v18);
}

uint64_t sub_100041634()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004167C()
{
  v0 = AMSSetLogKeyIfNeeded();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_100041718(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, char *), uint64_t (*a8)(void))
{
  v58 = a8;
  v59 = a4;
  v60 = a5;
  v61 = a7;
  v62 = a3;
  v63 = a2;
  v10 = a6(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  sub_100004B94();
  sub_10000797C();
  v25 = sub_10001ADD4();
  if (v8)
  {
    return a1 & 1;
  }

  v27 = v26;
  v51 = v22;
  v52 = v19;
  v28 = v63;
  v54 = v15;
  v55 = v24;
  v53 = v13;
  v56 = v14;
  v57 = v25;
  sub_1000073D0();
  sub_10003A420(&v64);
  v50 = v27;
  v29 = v64;
  sub_100002F08();
  sub_100041D2C();
  v49 = *(&v29 + 1);
  if (*(&v29 + 1) >> 60 != 15)
  {
    v32 = v30;
    v33 = v49;
    sub_10003A5E0(v29, v49);
    sub_10003A638(6, &v64);
    if (v65)
    {
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      v34 = swift_dynamicCast();
      sub_10003AE18(v29, v33);
      if (v34)
      {

        v35 = v66;
        if (v32)
        {
          v36 = v51;
          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v37 = v54;
          v38 = v56;
          (*(v54 + 8))(v36, v56);
        }

        else
        {
          v38 = v56;
          v37 = v54;
        }

        v45 = v53;
        v46 = v61;
        v47 = v55;
        v48 = v52;
        Date.init(timeIntervalSinceReferenceDate:)();
        (*(v37 + 16))(v48, v47, v38);
        v46(v35, v48);
        a1 = v59(v45);
        sub_10003AE18(v29, v49);
        sub_100042144(v45, v58);
        (*(v37 + 8))(v55, v56);
        return a1 & 1;
      }
    }

    else
    {
      sub_10003AE18(v29, v33);
      sub_100002C5C(&v64);
    }
  }

  sub_10000602C();
  if ((*(v28 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v28 + 16) = 1;
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v39 = *(type metadata accessor for LogInterpolation() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v65 = type metadata accessor for AppSchedulesTable();
    *&v64 = v62;

    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v64);
    LogInterpolation.init(stringLiteral:)();
    v44 = static os_log_type_t.error.getter();
    sub_1000036B0(v44);
  }

  if (v50)
  {
    sub_1000A8D54(v57, v50);
    sub_10003AE18(v29, v49);
  }

  else
  {
    sub_10003AE18(v29, v49);
  }

  a1 = 1;
  return a1 & 1;
}

uint64_t sub_100041D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = type metadata accessor for Date();
  v5 = sub_100002CC4(v29);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ScheduleInfo.Metadata(0);
  v14 = sub_100003D10(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v19 = v18 - v17;
  v20 = sub_100042030(a1);
  sub_1000438F4(7, v20, &v31);
  if (v32)
  {
    sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (swift_dynamicCast())
    {
      v21 = v33;
      v23 = v29;
      v22 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v31, &qword_10026D350, &qword_1001E6050);
  }

  v23 = v29;
  v22 = a2;
  v21 = _swiftEmptyArrayStorage;
LABEL_6:
  *a3 = v21;
  (*(v7 + 16))(v12, v22, v23);
  sub_100043920(a1, v12);
  if (v28)
  {
    (*(v7 + 8))(v22, v23);
  }

  v25 = type metadata accessor for ScheduleInfo(0);
  sub_1000420E0(v19, a3 + *(v25 + 20));
  sub_1000438F4(12, v20, &v31);

  if (!v32)
  {
    (*(v7 + 8))(a2, v29);
    result = sub_10000A00C(&v31, &qword_10026D350, &qword_1001E6050);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  sub_100005AD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = (*(v7 + 8))(a2, v29);
    goto LABEL_13;
  }

  v26 = v33;
  v27 = [v33 BOOLValue];

  result = (*(v7 + 8))(a2, v29);
LABEL_14:
  *(a3 + *(v25 + 24)) = v27;
  return result;
}

unint64_t sub_100042038()
{
  result = qword_10026AF70;
  if (!qword_10026AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AF70);
  }

  return result;
}

uint64_t sub_100042090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1000420E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000421C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalLinksService();
  return objc_msgSendSuper2(&v2, "init");
}

char *sub_1000421FC(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v3 = sub_100045498();
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSUniversalLinksServiceProtocol];
  v5 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v4;

  v9[3] = swift_getObjectType();
  v9[0] = a1;
  v6 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v7 = a1;
  sub_10001D2C8(v9, &v3[v6]);
  swift_endAccess();
  return v3;
}

char *sub_1000422F8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v3 = sub_100045498();
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSServerDataCacheServiceProtocol];
  sub_100047120();
  [v4 setClass:swift_getObjCClassFromMetadata() forSelector:"setUpCacheForAccount:completion:" argumentIndex:0 ofReply:0];
  v5 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v4;

  v9[3] = swift_getObjectType();
  v9[0] = a1;
  v6 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v7 = a1;
  sub_10001D2C8(v9, &v3[v6]);
  swift_endAccess();
  return v3;
}

unint64_t sub_100042428()
{
  result = qword_10026CFE0;
  if (!qword_10026CFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CFE0);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncActor()
{
  result = qword_100269970;
  if (!qword_100269970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncState()
{
  result = qword_10026C648;
  if (!qword_10026C648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for MediaCatalogSyncPageMetadata()
{
  result = qword_10026BE40;
  if (!qword_10026BE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000425B4()
{
  result = qword_100269BF8;
  if (!qword_100269BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269BF8);
  }

  return result;
}

char *sub_100042608(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v3 = sub_100045498();
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSMediaCatalogSyncServiceProtocol];
  v5 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v4;

  v8[3] = swift_getObjectType();
  v8[0] = a1;
  v6 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();

  sub_10001D2C8(v8, &v3[v6]);
  swift_endAccess();
  return v3;
}

id sub_100042708()
{
  result = sub_100042728();
  qword_100287930 = result;
  return result;
}

id sub_100042728()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = [objc_opt_self() ams_sharedAccountStore];
  v53[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v53[4] = &off_100246688;
  v53[0] = v19;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v20 = sub_10002411C();
  type metadata accessor for DynamicUICache();
  v21 = sub_100047910();
  v49 = v18;
  if (v21)
  {
    v22 = v21;
    v47 = v16;
    sub_10007B9A4(&qword_100271FA8, &unk_1001F1B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F70;
    if (qword_100268840 != -1)
    {
      swift_once();
    }

    v24 = qword_100287938;
    *(inited + 32) = qword_100287938;
    v25 = qword_100268848;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = qword_100287940;
    *(inited + 40) = qword_100287940;
    v28 = v27;
    v29 = sub_1001C9EBC(inited);
    v30 = type metadata accessor for CascadeBag();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] = v22;
    *&v31[OBJC_IVAR____TtC14amsengagementd10CascadeBag_secondaryBag] = v20;
    *&v31[OBJC_IVAR____TtC14amsengagementd10CascadeBag_optionalKeys] = v29;
    v50.receiver = v31;
    v50.super_class = v30;
    v20 = objc_msgSendSuper2(&v50, "init");
    v16 = v47;
    v18 = v49;
  }

  sub_10001E8B8();
  if (sub_100009F34(v8, 1, v9) == 1)
  {
    sub_10001DCD4();
    if (sub_100009F34(v8, 1, v9) != 1)
    {
      sub_10000A00C(v8, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
  }

  v52[0] = 0x6E656D7461657274;
  v52[1] = 0xEA00000000007374;
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  v32 = objc_opt_self();
  swift_unknownObjectRetain();
  v33 = [v32 defaultSession];
  v34 = String._bridgeToObjectiveC()();
  type metadata accessor for TreatmentsConfigurationProvider();
  swift_allocObject();
  v35 = sub_100045E58(v20, v34, v33);
  v36 = v48;
  (*(v10 + 16))(v48, v16, v9);
  v37 = type metadata accessor for TreatmentsStorage(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_100045F30(v36);
  v41 = type metadata accessor for DeviceDetails();
  v42 = type metadata accessor for TreatmentStoreService();
  v43 = swift_allocObject();
  v52[3] = &unk_100246328;
  v52[4] = &off_100246340;
  v52[0] = swift_allocObject();
  sub_10003B164(v53, v52[0] + 16);
  swift_defaultActor_initialize();
  *(v43 + 208) = 0;
  sub_1000262E4(v52, v43 + 112);
  *(v43 + 152) = 0x404E000000000000;
  *(v43 + 160) = 0;
  *(v43 + 168) = v20;
  *(v43 + 176) = v35;
  *(v43 + 184) = v41;
  *(v43 + 192) = &protocol witness table for DeviceDetails;
  *(v43 + 200) = v40;
  v51.receiver = v43;
  v51.super_class = v42;
  v44 = objc_msgSendSuper2(&v51, "init");
  v45 = *(v10 + 8);
  v45(v16, v9);
  v45(v49, v9);
  sub_100002C00(v52);
  sub_1000461E8(v53);
  return v44;
}

uint64_t sub_100042D74()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042DAC()
{
  v1 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64);
  sub_100004E78();
  __chkstk_darwin(v2);
  sub_10000619C();
  sub_10007B9A4(&qword_100269838, &qword_1001E62D0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C();
  sub_10007B9A4(&qword_100269840, &qword_1001E62D8);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C();
  sub_10007B9A4(&qword_100269848, &qword_1001E62E0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C();
  sub_10007B9A4(&qword_100269850, &qword_1001E62E8);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  type metadata accessor for TaskPriority();
  sub_100004798();
  sub_10000A7C0(v3, v4, v5, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_100009DC8();
  sub_1000E349C();
}

id sub_100042F6C()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationObserver()) init];
  qword_10026FC90 = result;
  return result;
}

uint64_t sub_100042F9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C7454(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1001C9594(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AMSAccountMediaType(0);
        v17 = *(*(v13 + 48) + 8 * a2);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          goto LABEL_19;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_20;
        }

        v15 = a2 + 1;
      }
    }

    result = sub_1001C8BF0();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t *sub_10004316C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
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

uint64_t sub_10004323C()
{
  v1 = *v0;
  sub_100002D98();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 224) = v5;
  if (v5)
  {
    v6 = *(v2 + 208);
    swift_setDeallocating();
    sub_1001A6548();
    v7 = sub_100080C54;
  }

  else
  {
    v7 = sub_10004900C;
  }

  return _swift_task_switch(v7, 0, 0);
}

void *sub_100043358(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_100047120();
        sub_10007B9A4(&qword_10026DAF0, &qword_1001ED098);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_1000434A0()
{
  v1 = *(v0 + 128);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      v9 = *(v0 + 128);

      v10 = sub_100049574(_swiftEmptyArrayStorage);
      for (i = 0; v10 != i; ++i)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v12 = _swiftEmptyArrayStorage[i + 4];
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

        v14 = *(v0 + 112);
        sub_100049578(v12);
      }

      sub_100002D8C();

      v15();
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 &= v4 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v4);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100043764()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_10026F3E0);
  sub_100048CD0(v0, qword_10026F3E0);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1000437B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002BC0(255, a2, a3);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000437F4()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 40);
    if (v2)
    {
      v1 = *(v0 + 40);
    }

    else
    {
      v3 = [objc_allocWithZone(AMSCloudDataContainerOptions) init];
      [v3 setRecordZoneEncryption:1];
      v4 = *(v0 + 72);
      v5 = String._bridgeToObjectiveC()();
      v6 = sub_100029420();
      v1 = [v6 v7];

      v2 = 0;
      v8 = *(v0 + 48);
    }

    *(v0 + 48) = v1;
    v9 = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_100044688(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v36 = a3;
  v6 = type metadata accessor for ScheduleInfo(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  v8 = __chkstk_darwin(v6);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 20);
  v37 = a1;
  v11 = a1 + v10;
  v35 = type metadata accessor for ScheduleInfo.Metadata(0);
  v12 = (v11 + *(v35 + 44));
  v13 = *v12;
  v14 = v12[1];
  v41 = *v12;
  v42 = v14;
  v45 = 0xD000000000000019;
  v46 = 0x80000001001FCF60;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_10001ECE0();

  v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v42 = v15;
  v16 = 0xE900000000000073;
  v17 = 0x636974796C616E61;
  switch(a2)
  {
    case 1:
      v16 = 0xE800000000000000;
      v17 = 0x6C616E7265746E69;
      break;
    case 2:
      v16 = 0xE800000000000000;
      v17 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v16 = 0xEF736E6F69746164;
      v17 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v45 = v17;
  v46 = v16;

  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v43 = 0;
  v44 = 0xE000000000000000;
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v21 = v20;

  v22 = v13 == v19 && v14 == v21;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    sub_1001CF380();
    v23 = v36;
    swift_beginAccess();
    sub_1000EF5A0();
    v24 = *(*(v23 + 16) + 16);
    sub_1000EF6A4(v24);
    v25 = *(v23 + 16);
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 16 * v24;
    *(v26 + 32) = v13;
    *(v26 + 40) = v14;
    *(v23 + 16) = v25;
    swift_endAccess();
    v27 = v39;
    sub_1000A9424(v37, v39);
    v28 = (v27 + *(v6 + 20) + *(v35 + 44));
    v29 = v28[1];

    *v28 = v19;
    v28[1] = v21;
    v30 = v40;
    swift_beginAccess();
    sub_1000EF5B8();
    v31 = *(*(v30 + 16) + 16);
    sub_1000EF6BC(v31);
    v32 = *(v30 + 16);
    *(v32 + 16) = v31 + 1;
    sub_1000A9424(v27, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31);
    *(v30 + 16) = v32;
    swift_endAccess();
    sub_1000A1B7C(v27);
  }

  return 1;
}

uint64_t sub_100044A6C()
{
  v64 = type metadata accessor for URL();
  v0 = sub_100002CC4(v64);
  v2 = v1;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v0);
  v63 = (v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = v46 - v7;
  v9 = objc_opt_self();
  v10 = 0;
  v58 = (v2 + 16);
  v59 = "com.apple.AMSEngagementDatabase";
  v46[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v46[2] = NSFileProtectionCompleteUnlessOpen;
  v46[1] = NSFileProtectionComplete;
  v57 = NSFileProtectionNone;
  v48 = 0x80000001001F4BD0;
  v61 = xmmword_1001E5F60;
  v60 = v2 + 8;
  v47 = v9;
  while (1)
  {
    v11 = *(&off_100244638 + v10 + 32);
    sub_10001F0D0(1, v11, 1);
    v12 = [v9 defaultManager];
    URL.path.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      break;
    }

    v29 = sub_100023CB0();
    result = v30(v29);
LABEL_13:
    if (++v10 == 4)
    {
      return result;
    }
  }

  v62 = 0;
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  v15 = qword_100287818;
  v16 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = *(type metadata accessor for LogInterpolation() - 8);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  v20 = (v19 + 32) & ~v19;
  v50 = 3 * v18;
  v51 = v19;
  v53 = v16;
  *(swift_allocObject() + 16) = v61;
  v52 = v20;
  v21 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = type metadata accessor for AppDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v54 = 2 * v18;
  v22 = v64;
  v68 = v64;
  v55 = v18;
  v23 = sub_100017E64(v67);
  v24 = *v58;
  (*v58)(v23, v8, v22);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v67, &qword_10026D350, &qword_1001E6050);
  v25 = static os_log_type_t.default.getter();
  v56 = v15;
  sub_1000036B0(v25);

  v24(v63, v8, v22);
  v26 = v57;
  v27 = v62;
  switch(v11)
  {
    case 1:
      v28 = &v69;
      goto LABEL_10;
    case 2:
      v28 = &v70;
      goto LABEL_10;
    case 3:
      v28 = &v71;
LABEL_10:
      v26 = *(v28 - 32);
      break;
    default:
      break;
  }

  v32 = v26;
  type metadata accessor for SQLDatabase();
  v33 = SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(v63, 0, v32, 0, 0, 0, 0);
  if (!v27)
  {
    v34 = v33;

    sub_1000179B4(v35, v35);
    sub_1000170D4();
    __chkstk_darwin(v36);
    v46[-6] = v34;
    v46[-5] = 0xD00000000000003DLL;
    v46[-4] = v48;
    v46[-3] = _swiftEmptyArrayStorage;
    v46[-2] = sub_1000A14DC;
    v46[-1] = 0;
    sub_100014A20(sub_100014768, &v46[-8]);

    sub_10001C50C();
    v9 = v47;
    URL.path.getter();
    static SQLDatabase.removeDatabase(path:)();
    v37 = sub_100023CB0();
    v38(v37);

    goto LABEL_13;
  }

  v39 = sub_1000073E0();
  v40(v39);
  sub_100002F3C();
  *(swift_allocObject() + 16) = v61;
  v41 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v42 = v65;
  v43 = v66;
  v68 = v66;
  v44 = sub_100017E64(v67);
  (*(*(v43 - 8) + 16))(v44, v42, v43);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v67, &qword_10026D350, &qword_1001E6050);
  v45 = static os_log_type_t.error.getter();
  sub_1000036B0(v45);
}

char *sub_1000451D4(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v3 = sub_100045498();
  v4 = objc_opt_self();
  v5 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL___AMSEngagementServiceProtocol];
  v18 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL___AMSTreatmentStoreServiceProtocol];
  [v5 setInterface:v18 forSelector:"treatmentStoreServiceWithReply:" argumentIndex:0 ofReply:1];
  v6 = [objc_opt_self() archiveClasses];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v5 setClasses:isa forSelector:"enqueueWithRequest:completion:" argumentIndex:0 ofReply:0];

  v8 = [objc_opt_self() archiveClasses];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = Set._bridgeToObjectiveC()().super.isa;

  [v5 setClasses:v9 forSelector:"syncWithRequest:completion:" argumentIndex:0 ofReply:0];

  v10 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v5;
  v11 = v5;

  v19[3] = swift_getObjectType();
  v19[0] = a1;
  v12 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v13 = a1;
  sub_10001D2C8(v19, &v3[v12]);
  swift_endAccess();
  v14 = &OBJC_PROTOCOL___AMSEngagementClientProtocol;
  v15 = [v4 interfaceWithProtocol:v14];

  v16 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface] = v15;

  return v3;
}

char *sub_100045498()
{
  *&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections] = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock;
  *&v0[v1] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = 0;
  v2 = &v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface] = 0;
  sub_100002BC0(0, &qword_100272538, NSXPCListener_ptr);
  *&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] = sub_1000455A8();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for XPCServiceProvider();
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] setDelegate:v3];
  return v3;
}

id sub_1000455A8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

void sub_10004561C()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = sub_100005068();
  sub_100006AF8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v9 = sub_1000082EC();
  v11 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
  if (v11)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v11, v12, v13, v14, *v0);
    sub_100005F14();
  }

  else
  {
    v18 = sub_100007988();
    sub_1000112BC(v18, v19, v20, v21, v22);
    sub_100005F14();
  }
}

void *sub_100045710()
{
  type metadata accessor for AccountsObserver();
  swift_allocObject();
  result = sub_100047740();
  qword_1002695E0 = result;
  return result;
}

uint64_t sub_10004574C()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  *(v3 + 128) = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v8 = sub_1000810F8;
  }

  else
  {
    v8 = sub_1000434A0;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_100045890(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setEnabledTopics:isa];
}

void sub_1000459B4()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v23 = type metadata accessor for PushService();
  v22[0] = v0;
  v12 = v0;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v22);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000100201500;
  v15._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  if (v2 >> 60 == 15)
  {
    countAndFlagsBits = 0;
    object = 0;
    v18 = 0;
    v22[2] = 0;
  }

  else
  {
    v19 = Data.base64EncodedString(options:)(0);
    object = v19._object;
    countAndFlagsBits = v19._countAndFlagsBits;
    v18 = &type metadata for String;
  }

  v22[0] = countAndFlagsBits;
  v22[1] = object;
  v23 = v18;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v20 = sub_100002C5C(v22);
  sub_100003B48(v20);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v21 = static os_log_type_t.info.getter();
  sub_1000036B0(v21);

  sub_100005F14();
}

uint64_t sub_100045C48(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  *(sub_100007CB8() + 16) = xmmword_1001E5F70;
  v19 = type metadata accessor for PushService();
  v18[0] = v2;
  v11 = v2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100201520;
  v14._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v19 = &type metadata for Bool;
  LOBYTE(v18[0]) = a2 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v15 = sub_100002C5C(v18);
  sub_100003B48(v15);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v16 = static os_log_type_t.info.getter();
  sub_1000036B0(v16);
}

void *sub_100045E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_100045E88()
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

uint64_t sub_100045F30(uint64_t a1)
{
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100002CC4(v20);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = sub_100002DDC(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v15 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  sub_10003B11C(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(v22 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v22 + 24) = 0;
  v16 = OBJC_IVAR____TtC14amsengagementd17TreatmentsStorage_storageURL;
  v17 = type metadata accessor for URL();
  sub_100002DDC(v17);
  (*(v18 + 32))(v22 + v16, a1);
  return v22;
}

unint64_t sub_100046278(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x79726574746162;
      break;
    case 2:
      result = 0x64657461657263;
      break;
    case 3:
      result = 0x73616C4361746164;
      break;
    case 4:
      result = 1702125924;
      break;
    case 5:
      result = 0x6441734965746164;
      break;
    case 6:
      result = 0x79616C6564;
      break;
    case 7:
      result = 0x73746E657665;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x6563617267;
      break;
    case 10:
      result = 1701869940;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x746972777265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004640C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000464E4()
{
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BYSetupAssistantFinishedDarwinNotification;
  if (BYSetupAssistantFinishedDarwinNotification)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100017A08();
    (*(v5 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v4);
    v10 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v8, v4);
    v26 = sub_1001A2938;
    v27 = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A22E4;
    v25 = &unk_100252488;
    v11 = _Block_copy(aBlock);

    v12 = String.utf8CString.getter();

    swift_beginAccess();
    v13 = notify_register_dispatch((v12 + 32), (v1 + 16), v10, v11);
    swift_endAccess();

    _Block_release(v11);

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    if (v13)
    {
      v25 = type metadata accessor for SetupAssistantObserver();
      aBlock[0] = v1;

      v17 = AMSLogKey();
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(aBlock);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21._object = 0x8000000100202920;
      v21._countAndFlagsBits = 0xD000000000000011;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
      v25 = &type metadata for UInt32;
      LODWORD(aBlock[0]) = v13;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(aBlock, &qword_10026D350, &qword_1001E6050);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v23 = static os_log_type_t.error.getter();
    }

    else
    {
      v25 = type metadata accessor for SetupAssistantObserver();
      aBlock[0] = v1;

      v19 = AMSLogKey();
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(aBlock);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v23 = static os_log_type_t.default.getter();
    }

    sub_1000036B0(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000469B8()
{
  type metadata accessor for AppConnection();
  v0 = swift_allocObject();
  result = sub_1000469F4();
  qword_100287788 = v0;
  return result;
}

uint64_t sub_1000469F4()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for ServerDataCacheService()) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v2 = qword_1002877D0;
  sub_1000451D4(v2);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = [objc_allocWithZone(type metadata accessor for UniversalLinksService()) init];
  sub_1000421FC(v3);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(v1 + 16);
  sub_1000422F8(v4);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100042608(v5);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10004710C();
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_100046C4C()
{
  v3[3] = &type metadata for JSEnginePerformerProvider;
  v3[4] = &off_10024C500;
  v0 = objc_allocWithZone(type metadata accessor for EngagementService());
  sub_100046CB8(v3, &type metadata for JSEnginePerformerProvider);
  v1 = sub_10004C904(v0);
  result = sub_100002C00(v3);
  qword_1002877D0 = v1;
  return result;
}

uint64_t sub_100046CB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100046D08()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000047A4(v3);
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_100004B68();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = sub_100002CC4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v19 = v18 - v17;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  sub_100046F28();
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10004F018();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  strcpy((v0 + 32), "defaults.json");
  *(v0 + 46) = -4864;
  sub_10001EC00(v2, v0 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL);
  sub_100005F14();
}

unint64_t sub_100046F28()
{
  result = qword_10026CCF0;
  if (!qword_10026CCF0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CCF0);
  }

  return result;
}

uint64_t sub_100046F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  *(v4 + 136) = a4;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  return v4;
}

void *sub_100046FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1000D6400(v4, 0);
      sub_10018BB64((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

id sub_1000470B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_100047120()
{
  result = qword_100269880;
  if (!qword_100269880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269880);
  }

  return result;
}

uint64_t sub_100047164()
{
  sub_100042428();
  sub_10002411C();
  sub_100002DFC();
  v0 = objc_allocWithZone(type metadata accessor for SendableBag());
  v1 = SendableBag.init(wrappedBag:)();
  v5[3] = &type metadata for FeatureFlagProvider;
  v5[4] = &off_10024B860;
  type metadata accessor for MediaCatalogSyncService();
  v2 = swift_allocObject();
  sub_100046CB8(v5, &type metadata for FeatureFlagProvider);
  v3 = sub_100047238(v1, v2);
  result = sub_100002C00(v5);
  qword_100287770 = v3;
  return result;
}

uint64_t sub_100047238(void *a1, uint64_t a2)
{
  v6 = &type metadata for FeatureFlagProvider;
  v7 = &off_10024B860;
  *(a2 + 16) = a1;
  type metadata accessor for MediaCatalogSyncCoordinatorActor();
  swift_allocObject();
  *(a2 + 24) = sub_10004D748(a1);
  sub_10003B104(&v5, a2 + 32);
  return a2;
}

uint64_t sub_1000472BC()
{
  result = type metadata accessor for MediaCatalogSyncState();
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

uint64_t sub_100047388()
{
  sub_10004750C(319, &qword_10026B378);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100042504(319, &qword_10026C658, &type metadata accessor for Date, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_10004750C(319, &qword_10026C660);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = type metadata accessor for Date();
        if (v7 <= 0x3F)
        {
          sub_100042504(319, &unk_10026C668, type metadata accessor for MediaCatalogSyncPageMetadata, &type metadata accessor for Array);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_10004750C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100047558()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000475D0()
{
  result = qword_10026BCF8;
  if (!qword_10026BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCF8);
  }

  return result;
}

id sub_100047624(SEL *a1)
{
  v3 = *(v1 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = [*(*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) + OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener) *a1];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void *sub_100047740()
{
  v0[2] = [objc_allocWithZone(NSNumberFormatter) init];
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[5] = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_1002697D8, &qword_1001E6250);
  v0[6] = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_1002697E0, &qword_1001E6258);
  v0[7] = Dictionary.init(dictionaryLiteral:)();
  v0[8] = 0;
  v0[9] = [objc_allocWithZone(NSLock) init];
  sub_10007B9A4(&qword_1002697E8, &unk_1001E6260);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E61B0;
  v2 = AMSAccountMediaTypeProduction;
  *(v1 + 32) = AMSAccountMediaTypeProduction;
  v0[10] = v1;
  v3 = v0[2];
  v4 = v2;
  [v3 setNumberStyle:1];
  sub_100042DAC();
  return v0;
}

id sub_100047910()
{
  v0 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v0);
  v2 = *(v1 + 64);
  sub_100004E78();
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for URL();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047A74(v5);
  if (sub_100009F34(v5, 1, v6) == 1)
  {
    sub_100009FB0(v5, &unk_10026FEE0, &unk_1001E67C0);
    return 0;
  }

  else
  {
    v15 = *(v9 + 32);
    sub_10000874C();
    v16();
    v14 = sub_1000C69C8(v13);
    (*(v9 + 8))(v13, v6);
  }

  return v14;
}

uint64_t sub_100047A74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047C24(v5);
  if (sub_100009F34(v5, 1, v6) == 1)
  {
    sub_100009FB0(v5, &unk_10026FEE0, &unk_1001E67C0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v7 + 8))(v10, v6);
    v11 = 0;
  }

  return sub_10000A7C0(a1, v11, 1, v6);
}

uint64_t sub_100047C24@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() ams_dynamicUIDirectory];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v7, v2);
    v12 = [objc_opt_self() defaultManager];
    sub_10001E148();

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v18 = static os_log_type_t.fault.getter();
    sub_1000036B0(v18);

    return sub_10000A7C0(a1, 1, 1, v2);
  }
}

uint64_t sub_100047F28()
{
  v1 = *(*(sub_10007B9A4(&unk_10026F880, &qword_1001E62B0) - 8) + 64);
  sub_100004E78();
  __chkstk_darwin(v2);
  v4 = &v54 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = sub_100002CC4(v5);
  v56 = v7;
  v57 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007B9A4(&qword_100269808, &qword_1001E62B8);
  v13 = sub_100002CC4(v12);
  v58 = v14;
  v59 = v13;
  v16 = *(v15 + 64);
  sub_100004E78();
  __chkstk_darwin(v17);
  v18 = sub_10007B9A4(&qword_100269810, &qword_1001E62C0);
  v19 = sub_100002CC4(v18);
  v61 = v20;
  v62 = v19;
  v22 = *(v21 + 64);
  sub_100004E78();
  __chkstk_darwin(v23);
  v60 = &v54 - v24;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v25 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v25);
  v27 = *(v26 + 72);
  sub_100002D7C();
  *(sub_10000A92C() + 16) = xmmword_1001E5F70;
  v64[3] = type metadata accessor for AccountsObserver();
  v63 = v0;
  v64[0] = v0;

  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v64);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v30 = static os_log_type_t.info.getter();
  sub_1000036B0(v30);

  v31 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  if (qword_1002685D0 != -1)
  {
    swift_once();
  }

  v55 = v11;
  v32 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048CD0(v32, qword_1002695C8);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v33 = qword_1002878E8;
  v64[0] = qword_1002878E8;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v35 = v4;
  sub_100004798();
  sub_10000A7C0(v36, v37, v38, v34);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  sub_100048EC8(&qword_100269818, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100048F10();
  v39 = v33;
  v40 = v57;
  v41 = v55;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v35, &unk_10026F880, &qword_1001E62B0);
  (*(v56 + 8))(v41, v40);
  v64[0] = v39;
  sub_100004798();
  sub_10000A7C0(v42, v43, v44, v34);
  sub_100006070(&qword_100269820, &qword_100269808, &qword_1001E62B8);
  v45 = v60;
  Publisher.receive<A>(on:options:)();
  sub_100009FB0(v35, &unk_10026F880, &qword_1001E62B0);

  v46 = *(v58 + 8);
  v47 = sub_10000821C();
  v48(v47);
  sub_100004AA0();
  swift_allocObject();
  v49 = v63;
  swift_weakInit();
  sub_100006070(&qword_100269828, &qword_100269810, &qword_1001E62C0);
  v50 = v62;
  v51 = Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v45, v50);
  v52 = *(v49 + 64);
  *(v49 + 64) = v51;
}

uint64_t sub_100048540()
{
  swift_weakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100048574()
{
  sub_1000061B4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100004A88(v5);

  return sub_100048614(v6, v7, v8, v4);
}

uint64_t sub_100048614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  v5 = swift_task_alloc();
  *(v4 + 120) = v5;
  *v5 = v4;
  v5[1] = sub_10004574C;

  return sub_1000486A8();
}

uint64_t sub_1000486C8()
{
  v1 = v0[25];
  sub_10007B9A4(&qword_100269870, &qword_1001E6310);
  inited = swift_initStackObject();
  v0[26] = inited;
  *(inited + 16) = xmmword_1001E61B0;
  v3 = [objc_opt_self() ams_sharedAccountStore];
  v4 = [v3 ams_activeiCloudAccount];

  *(inited + 32) = v4;
  v0[23] = inited;
  v5 = sub_100048878();
  v0[27] = v5;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_10004323C;
  v6 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100048FD8;
  v0[13] = &unk_100246638;
  v0[14] = v6;
  [v5 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

id sub_100048878()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = *(v0 + 80);

  sub_100048944(v3);
  v4 = sub_100003EFC();
  type metadata accessor for AMSAccountMediaType(v4);
  sub_100002D64();
  sub_100048EC8(v5, v6);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v1 ams_iTunesAccountsForMediaTypes:isa];

  return v8;
}

void sub_100048944(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AMSAccountMediaType(0);
  sub_100005E08(&qword_100268B70, type metadata accessor for AMSAccountMediaType);
  Set.init(minimumCapacity:)();
  v3 = 0;
  v4 = *(a1 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    v6 = *(a1 + 8 * v3 + 32);
    sub_100048AB4();

    v3 = v5;
  }

  __break(1u);
}

unint64_t sub_100048A70(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_100048AB4()
{
  sub_100003FE8();
  v3 = v2;
  v22 = v0;
  v23 = v4;
  v5 = *v0;
  v6 = *(*v0 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();

  v10 = *(v5 + 32);
  sub_100004E1C();
  v12 = ~v11;
  while (1)
  {
    v13 = v9 & v12;
    if (((1 << (v9 & v12)) & *(v5 + 56 + (((v9 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v17 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v22;
      v19 = v3;
      sub_100042F9C(v19, v13, isUniquelyReferenced_nonNull_native);
      *v22 = v24;
      *v23 = v19;
      goto LABEL_13;
    }

    v14 = *(*(v5 + 48) + 8 * v13);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v1 == sub_10000903C() && v8 == v15)
    {

      goto LABEL_12;
    }

    v1 = sub_100009F10();

    if (v1)
    {
      break;
    }

    v9 = v13 + 1;
  }

LABEL_12:
  v20 = *(*(v5 + 48) + 8 * v13);
  *v23 = v20;
  v21 = v20;
LABEL_13:
  sub_100006150();
}

uint64_t sub_100048C1C()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_1002695C8);
  sub_100048CD0(v0, qword_1002695C8);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t *sub_100048C6C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100048CD0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100048D08()
{
  sub_100003D74();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = sub_100002CC4(v13);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002DEC();
  v3 = sub_100006658();
  v4 = sub_1000085C8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = sub_100007754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v9, v10);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0();
  v11 = sub_100005ABC();
  v12(v11);
  qword_1002878E8 = sub_10000BB64();
  sub_100005F14();
}

uint64_t sub_100048EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100048F10()
{
  result = qword_10026CFC0;
  if (!qword_10026CFC0)
  {
    sub_100002BC0(255, &qword_10026CFB0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CFC0);
  }

  return result;
}

void sub_100048FC0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_10004900C()
{
  v1 = *(v0 + 192);

  v2 = sub_1000492B4();
  v3 = sub_100043358(v2);

  sub_1000494BC(v3);
  v4 = *(v0 + 184);
  sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = 0;
  v7 = *(v4 + 16);
  while (1)
  {
    if (v7 == v6)
    {

      v32 = *(v0 + 8);

      v32(v5);
      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v4 + 8 * v6 + 32);
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v9 identifier];
    if (v10)
    {
      v11 = v10;
      v33 = v1;
      v34 = v0;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v35 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v12;
      v16 = sub_100012A94();
      v18 = *(v5 + 16);
      v19 = (v17 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v21 = v16;
      v22 = v17;
      sub_10007B9A4(&qword_100269888, &qword_1001E6320);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20))
      {
        v23 = sub_100012A94();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_21;
        }

        v21 = v23;
      }

      if (v22)
      {

        v25 = *(v5 + 56);
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v35;
      }

      else
      {
        sub_100007380();
        v28 = (v27 + 16 * v21);
        *v28 = v36;
        v28[1] = v14;
        *(*(v5 + 56) + 8 * v21) = v35;

        v29 = *(v5 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v5 + 16) = v31;
      }

      ++v6;
      v1 = v33;
      v0 = v34;
    }

    else
    {

LABEL_7:
      ++v6;
    }
  }

  __break(1u);
LABEL_21:

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void *sub_1000492B4()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v7 = *(v0 - 8);
  v1 = *(v7 + 64);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  NSArray.makeIterator()();
  sub_100048EC8(&qword_10026E610, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v12)
    {
      break;
    }

    sub_100002C4C(&v11, v10);
    sub_100011BAC(v10, v8);
    sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
    }

    sub_100002C00(v10);
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v13;
    }
  }

  (*(v7 + 8))(v3, v0);
  return v4;
}

void sub_1000494BC(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, &specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10007B9A4(&qword_10026DAF0, &qword_1001ED098);
  sub_10000C3FC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100049578(void *a1)
{
  sub_100026484(a1, &selRef_identifier);
  if (v3)
  {
    v4 = [a1 ams_DSID];
    sub_100007858();
    if (v4)
    {
      v5 = v1[3];
      swift_isUniquelyReferenced_nonNull_native();
      v6 = v1[3];
      sub_100019B30();
      sub_100009DBC();
      sub_1000ABF68();
      v1[3] = v29;
    }

    else
    {
      v14 = sub_10000821C();
    }

    swift_endAccess();
    [a1 isActive];
    sub_100007858();
    v16 = v1[4];
    swift_isUniquelyReferenced_nonNull_native();
    v30 = v1[4];
    sub_100009DBC();
    sub_100049908();
    v1[4] = v30;
    swift_endAccess();
    sub_100026484(a1, &selRef_ams_creditsString);
    v18 = v17;
    sub_100007858();
    if (v18)
    {
      v19 = v1[5];
      swift_isUniquelyReferenced_nonNull_native();
      v20 = v1[5];
      sub_100019B30();
      sub_1000ABF90();
      v1[5] = v30;
    }

    else
    {
      v21 = sub_10000821C();
      sub_100049A48(v21);
    }

    swift_endAccess();
    if (sub_100049AF8(a1))
    {
      sub_100007858();
      v22 = v1[6];
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v1[6];
      sub_100019B30();
      sub_100009DBC();
      sub_1000ABF7C();
      v1[6] = v30;
      swift_endAccess();
    }

    else
    {
      sub_100007858();
      v24 = sub_10000821C();
      sub_100049C74(v24, v25);
      swift_endAccess();
    }

    sub_100049C98(a1);
    sub_100007858();
    v26 = v1[7];
    swift_isUniquelyReferenced_nonNull_native();
    v31 = v1[7];
    sub_100009DBC();
    sub_10004A164();
    v1[7] = v31;

    return swift_endAccess();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(sub_10000A92C() + 16) = xmmword_1001E5F70;
    v32[3] = type metadata accessor for AccountsObserver();
    v32[0] = v1;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v32);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28);
  }
}

void sub_100049908()
{
  sub_100008738();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000048A0();
  sub_100006AF8(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  sub_10007B9A4(&qword_10026AFF0, &qword_1001E8770);
  v15 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    v17 = *v0;
    sub_100012A94();
    sub_10000A978();
    if (!v19)
    {
      goto LABEL_12;
    }

    v13 = v18;
  }

  v20 = *v1;
  if (v14)
  {
    *(v20[7] + v13) = v7 & 1;
    sub_100003B6C();
  }

  else
  {
    sub_100049A00(v13, v5, v3, v7 & 1, v20);
    sub_100003B6C();
  }
}

unint64_t sub_100049A00(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100049AF8(void *a1)
{
  v2 = [a1 ams_privacyAcknowledgement];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + 16);
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = sub_100080CBC(v5, v3, v4);

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

void *sub_100049C98(void *a1)
{
  v3 = 0;
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  while (1)
  {
    if (v5 == v3)
    {
      return _swiftEmptyDictionarySingleton;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v6 = *(v4 + 32 + 8 * v3);
    v7 = [a1 ams_storefrontForMediaType:v6];
    if (v7)
    {
      v10 = v7;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v11;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100049FA8();
      v15 = _swiftEmptyDictionarySingleton[2];
      v16 = (v14 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_20;
      }

      v18 = v13;
      v35 = v14;
      sub_10007B9A4(&qword_100269830, &qword_1001E62C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
      {
        sub_100049FA8();
        v21 = v35;
        if ((v35 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v18 = v19;
      }

      else
      {
        v21 = v35;
      }

      if (v21)
      {
        v27 = (_swiftEmptyDictionarySingleton[7] + 16 * v18);
        v28 = v27[1];
        *v27 = v36;
        v27[1] = v37;
      }

      else
      {
        sub_100007380();
        *(v29 + 8 * v18) = v6;
        v30 = (_swiftEmptyDictionarySingleton[7] + 16 * v18);
        *v30 = v36;
        v30[1] = v37;
        v31 = _swiftEmptyDictionarySingleton[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v33;
      }

LABEL_17:
      ++v3;
    }

    else
    {
      sub_100049FA8();
      if (v9)
      {
        v22 = v8;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = _swiftEmptyDictionarySingleton[3];
        sub_10007B9A4(&qword_100269830, &qword_1001E62C8);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v24);

        v25 = *(_swiftEmptyDictionarySingleton[7] + 16 * v22 + 8);

        type metadata accessor for AMSAccountMediaType(0);
        sub_100002D64();
        sub_100048EC8(&qword_100268B70, v26);
        _NativeDictionary._delete(at:)();

        goto LABEL_17;
      }

      ++v3;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for AMSAccountMediaType(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100049F1C()
{
  v1 = *(v0 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();

  sub_10000A144();
  sub_100049FAC();
}

void sub_100049FAC()
{
  sub_100003D74();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      break;
    }
  }

  sub_100005F14();
}

uint64_t sub_10004A094()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = sub_100005068();
  sub_100006AF8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v9 = sub_1000082EC();
  v11 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
  if (v11)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v11, v12, v13, v14, *v0);
    sub_100005F14();
  }

  else
  {
    v18 = sub_100007988();
    sub_1000112BC(v18, v19, v20, v21, v22);
    sub_100005F14();
  }
}

id sub_10004A1A4()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  v13 = OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v9 = qword_1002878E8;
  v17 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v10 = v9;
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v15[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16.receiver = v15;
  v16.super_class = type metadata accessor for NotificationObserver();
  v11 = objc_msgSendSuper2(&v16, "init");
  sub_10004A498();
  sub_10004D894();

  return v11;
}

void sub_10004A498()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"timezoneChanged" name:NSSystemTimeZoneDidChangeNotification object:0];

  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v2, v0, sub_10017F0BC, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v4 = *&v0[OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10018056C;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10017F158;
  v7[3] = &unk_100250D20;
  v6 = _Block_copy(v7);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v6);
  _Block_release(v6);
}

uint64_t sub_10004A62C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004A67C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_10004A6E8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100002CC4(v13);
  v54 = v15;
  v55 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = sub_100002CC4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v29 = (v28 - v27);
  if (qword_1002687F0 != -1)
  {
    sub_100002E30();
  }

  v30 = qword_1002878E8;
  *v29 = qword_1002878E8;
  (*(v24 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v21);
  v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v29, v21);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    sub_100006990();
LABEL_12:
    v52 = v7;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v37 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v37);
    v39 = *(v38 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v40 = type metadata accessor for ActivityObserver();
    sub_100023C50(v40);
    v35 = AMSLogKey();
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (sub_10004ADCC())
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1002686D0 != -1)
      {
        sub_100006990();
      }

      v52 = v7;
      v53 = v4;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v31 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v31);
      v33 = *(v32 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v34 = type metadata accessor for ActivityObserver();
      sub_100023C50(v34);
      v35 = AMSLogKey();
      if (!v35)
      {
        goto LABEL_18;
      }

LABEL_9:
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      sub_10000AB10();

      sub_100002C00(aBlock);
      LogInterpolation.init(stringLiteral:)();
      v47 = static os_log_type_t.info.getter();
      sub_1000036B0(v47);

      aBlock[4] = sub_1000635A8;
      aBlock[5] = v2;
      sub_100002E50();
      sub_100004F0C(COERCE_DOUBLE(1107296256));
      aBlock[2] = v48;
      aBlock[3] = &unk_100246A00;
      v49 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      sub_10004DE28();
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10004DDC4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);
      (*(v52 + 8))(v12, v53);
      (*(v54 + 8))(v20, v55);
    }

LABEL_11:
    v53 = v4;
    if (qword_1002686D0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a1)
  {
    goto LABEL_11;
  }

  if (qword_1002686D0 != -1)
  {
    sub_100006990();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v41 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v41);
  v43 = *(v42 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v44 = type metadata accessor for ActivityObserver();
  sub_100023C50(v44);
  v45 = AMSLogKey();
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.init(stringLiteral:)();
  v51 = static os_log_type_t.info.getter();
  sub_1000036B0(v51);
}

uint64_t sub_10004ADCC()
{
  v0 = type metadata accessor for Date();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = sub_100002CC4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v19 = (v18 - v17);
  if (qword_1002687F0 != -1)
  {
    sub_100002E30();
  }

  v20 = qword_1002878E8;
  *v19 = qword_1002878E8;
  (*(v14 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v11);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v19, v11);
  if (v20)
  {
    if (sub_10004DEDC() == 0.0)
    {
      return 0;
    }

    else
    {
      static Date.now.getter();
      sub_10005BE3C();
      Date.timeIntervalSince(_:)();
      v24 = v23;
      v25 = *(v3 + 8);
      v25(v8, v0);
      v25(v10, v0);
      return sub_10004DEDC() <= v24;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004B024()
{
  sub_100003D74();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = sub_100002CC4(v13);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002DEC();
  v3 = sub_100006658();
  v4 = sub_1000085C8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = sub_100007754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v9, v10);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0();
  v11 = sub_100005ABC();
  v12(v11);
  qword_1002878F8 = sub_10000BB64();
  sub_100005F14();
}

uint64_t sub_10004B1E4()
{
  type metadata accessor for UbiquitousKeyValueStoreController();
  v0 = swift_allocObject();
  result = sub_10004F3F8();
  qword_100287948 = v0;
  return result;
}

unint64_t sub_10004B220()
{
  result = qword_10026A090;
  if (!qword_10026A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A090);
  }

  return result;
}

void sub_10004B274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002687B0 != -1)
  {
    swift_once();
  }

  v6 = [sub_1000437F4() queryDeviceToDeviceEncryptionAvailability];
  swift_unknownObjectRelease();
  sub_100007A3C();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_1001C1AA0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100099934;
  v9[3] = &unk_100253FD8;
  v8 = _Block_copy(v9);

  sub_100017E54(a1);

  [v6 addFinishBlock:v8];
  _Block_release(v8);
}

uint64_t sub_10004B3D0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_10004B440()
{
  sub_100003D74();
  v1 = v0;
  v79 = v2;
  v3 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v72 = v70 - v7;
  v74 = sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  sub_100002CC4(v74);
  v77 = v8;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  v73 = v70 - v12;
  sub_100003D1C();
  v78 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = sub_100002CC4(v78);
  v76 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v75 = v18 - v17;
  sub_100003D1C();
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000047A4(v19);
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v71 = (v24 - v23);
  sub_100003D1C();
  v25 = type metadata accessor for DispatchQoS();
  v26 = sub_100003D10(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100002DEC();
  v29 = sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  *(v0 + 24) = 0;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v32 = sub_10002411C();
  *(v0 + 64) = 0;
  *(v0 + 80) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v32;
  *(v0 + 56) = 0;
  v33 = *(v29 + 48);
  v34 = *(v29 + 52);
  swift_allocObject();
  *(v0 + 88) = PassthroughSubject.init()();
  *(v0 + 96) = 0;
  *(v0 + 112) = [objc_allocWithZone(NSLock) init];
  *(v0 + 120) = &_swiftEmptySetSingleton;
  v80 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v35 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10000317C();
  sub_10004F4C0(v36, v37, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v76 + 104))(v75, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v78);
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = *(v29 + 48);
  v39 = *(v29 + 52);
  swift_allocObject();
  *(v0 + 136) = PassthroughSubject.init()();
  *(v0 + 144) = xmmword_1001EED70;
  *(v0 + 160) = 0x80000001001FF3C0;
  *(v0 + 168) = 0xD000000000000022;
  *(v0 + 176) = 0x80000001001FF3F0;
  *(v0 + 184) = 0xD00000000000001FLL;
  *(v0 + 192) = 0x80000001001FF420;
  *(v0 + 200) = 0xD00000000000002BLL;
  *(v0 + 208) = 0x80000001001FF440;
  v40 = *(v0 + 40);
  v41 = v79;
  *(v1 + 40) = v79;
  v71 = v41;

  sub_100002BC0(0, &qword_10026F8B0, off_100241F38);
  *(v1 + 72) = sub_10004BD08();
  *(v1 + 104) = [objc_allocWithZone(AMSMetricsIdentifierCloudDataSource) init];
  [*(v1 + 72) setDelegate:v1];
  [*(v1 + 104) setDelegate:v1];
  v82 = *(v1 + 16);
  v42 = qword_1002687B8;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v70[1] = sub_100048CD0(v43, qword_10026F3E0);
  v81 = *(v1 + 128);
  v44 = v81;
  v75 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v45 = v72;
  v46 = sub_10000B3FC();
  sub_10000A7C0(v46, v47, v48, v49);
  v79 = sub_10004F4C0(&qword_10026B700, &unk_10026F890, &unk_1001E74C0);
  v50 = sub_1000437B4(&qword_10026CFC0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v78 = v50;
  v51 = v44;
  v52 = v73;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v45, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  swift_allocObject();
  sub_1000072D0();
  v76 = sub_10004F4C0(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0);

  v53 = v74;
  Publisher<>.sink(receiveValue:)();
  sub_100017DF8();

  v77 = *(v77 + 8);
  (v77)(v52, v53);
  v54 = *(v1 + 24);
  *(v1 + 24) = v52;

  v55 = *(v1 + 88);
  v81 = *(v1 + 128);
  v56 = v81;
  v82 = v55;
  v57 = sub_10000B3FC();
  v70[0] = v29;
  sub_10000A7C0(v57, v58, v59, v75);

  v60 = v56;
  sub_100022298();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v45, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  swift_allocObject();
  sub_1000072D0();
  sub_100024078();
  sub_100017DF8();

  (v77)(v52, v53);
  v61 = *(v1 + 96);
  *(v1 + 96) = v56;

  v63 = *(v1 + 136);
  v81 = *(v1 + 128);
  v62 = v81;
  v82 = v63;
  v64 = sub_10000B3FC();
  sub_10000A7C0(v64, v65, v66, v75);

  v67 = v62;
  sub_100022298();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v45, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  swift_allocObject();
  sub_1000072D0();

  v68 = sub_100024078();

  (v77)(v52, v53);
  v69 = *(v1 + 144);
  *(v1 + 144) = v68;

  sub_100005F14();
}

uint64_t sub_10004BCD4()
{
  swift_weakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0, v1, v2);
}

id sub_10004BD08()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithPushNotificationTopic:v1];

  return v2;
}

unint64_t sub_10004BD7C()
{
  result = qword_1002707B0;
  if (!qword_1002707B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002707B0);
  }

  return result;
}

uint64_t sub_10004BDD0(uint64_t a1)
{
  sub_100042038();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  sub_100006BB4();
  v7 = v6 >> 6;
  v39 = a1;

  v8 = 0;
  v38 = v5;
  while (v1)
  {
LABEL_7:
    sub_10000B810();
    v11 = (*(v39 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_100011BAC(*(v39 + 56) + 32 * v10, v44);
    *&v46 = v13;
    *(&v46 + 1) = v12;
    sub_100002C4C(v44, &v47);

LABEL_8:
    v49 = v46;
    v50[0] = v47;
    v50[1] = v48;
    v14 = *(&v46 + 1);
    if (!*(&v46 + 1))
    {

      return v3;
    }

    v15 = v49;
    sub_100002C4C(v50, v45);

    v51._countAndFlagsBits = v15;
    v51._object = v14;
    v16 = sub_10004C0E8(v51);
    if (v16 == 13)
    {
      sub_100002C00(v45);
    }

    else
    {
      LOBYTE(v44[0]) = v16;
      sub_100011BAC(v45, v44 + 8);
      v46 = v44[0];
      v47 = v44[1];
      sub_10000837C();
      sub_10004ED94(v17, v18, &qword_10026BA18, &qword_1001E92B0);
      sub_10004ED94(&v46, v42, &qword_10026BA18, &qword_1001E92B0);
      v19 = LOBYTE(v44[0]);
      sub_100002C4C(&v43, v41);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10004C1D8(v19);
      sub_100003058();
      if (__OFADD__(v20, v21))
      {
        goto LABEL_24;
      }

      sub_100005800();
      v22 = sub_10007B9A4(&qword_10026BA20, &qword_1001E92B8);
      if (sub_100006348(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, v39, v3))
      {
        sub_10004C1D8(v19);
        sub_10000BEE8();
        if (!v31)
        {
          goto LABEL_26;
        }

        v5 = v30;
      }

      v3 = *v40;
      if (&v49)
      {
        v32 = (*(*v40 + 56) + 32 * v5);
        sub_100002C00(v32);
        sub_100002C4C(v41, v32);
        sub_10000A064(&v46, &qword_10026BA18, &qword_1001E92B0);
        sub_100002C00(v45);
      }

      else
      {
        sub_100005140();
        *(v33 + v5) = v19;
        sub_100002C4C(v41, (*(*v40 + 56) + 32 * v5));
        sub_10000A064(&v46, &qword_10026BA18, &qword_1001E92B0);
        sub_100002C00(v45);

        sub_1000079CC();
        if (v35)
        {
          goto LABEL_25;
        }

        *(*v40 + 16) = v34;
      }

      sub_100002C00(v44 + 1);
      v5 = v38;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v1 = 0;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      goto LABEL_8;
    }

    v1 = *(v5 + 8 * v9);
    ++v8;
    if (v1)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10004C0E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002448A8, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C144(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  sub_10003D2F8();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_10004C204(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7368801;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x79726574746162;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x64657461657263;
          break;
        case 3:
          v7 = 0xE900000000000073;
          v8 = 0x73616C4361746164;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1702125924;
          break;
        case 5:
          v8 = 0x6441734965746164;
          v7 = 0xEE00657669747061;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x79616C6564;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x73746E657665;
          break;
        case 8:
          v8 = 0x696669746E656469;
          v7 = 0xEA00000000007265;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6563617267;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1701869940;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x80000001001F2E10;
          break;
        case 0xC:
          v8 = 0x746972777265766FLL;
          v7 = 0xE900000000000065;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 7368801;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x79726574746162;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x64657461657263;
          break;
        case 3:
          v9 = 0xE900000000000073;
          v10 = 0x73616C4361746164;
          break;
        case 4:
          v9 = 0xE400000000000000;
          v10 = 1702125924;
          break;
        case 5:
          v10 = 0x6441734965746164;
          v9 = 0xEE00657669747061;
          break;
        case 6:
          v9 = 0xE500000000000000;
          v10 = 0x79616C6564;
          break;
        case 7:
          v9 = 0xE600000000000000;
          v10 = 0x73746E657665;
          break;
        case 8:
          v10 = 0x696669746E656469;
          v9 = 0xEA00000000007265;
          break;
        case 9:
          v9 = 0xE500000000000000;
          v10 = 0x6563617267;
          break;
        case 10:
          v9 = 0xE400000000000000;
          v10 = 1701869940;
          break;
        case 11:
          v10 = 0xD000000000000010;
          v9 = 0x80000001001F2E10;
          break;
        case 12:
          v10 = 0x746972777265766FLL;
          v9 = 0xE900000000000065;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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