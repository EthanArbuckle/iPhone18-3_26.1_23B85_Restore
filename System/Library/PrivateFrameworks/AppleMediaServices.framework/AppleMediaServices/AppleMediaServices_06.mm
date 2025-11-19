uint64_t sub_1000C1558()
{
  sub_10000DB4C();
  v1 = *v0;
  v2 = *v0;
  sub_100004504();
  *v3 = v2;
  v4 = v1[212];
  v5 = v1[211];
  v6 = v1[187];
  v7 = *v0;
  *v3 = *v0;

  v8 = swift_task_alloc();
  v2[213] = v8;
  *v8 = v7;
  v8[1] = sub_1000C16DC;
  v9 = v1[209];
  v10 = v2[187];
  v11 = v1[186];

  return sub_1000C36A4();
}

uint64_t sub_1000C16DC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 1704);
  v3 = *(v1 + 1496);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C17D4()
{
  sub_100003F74();
  v6 = v0[198];
  v7 = v0[197];
  v1 = v0[194];
  v8 = v0[192];
  v9 = v0[191];
  v10 = v0[190];
  v11 = v0[189];
  v12 = v0[188];
  v2 = sub_1000C6DEC((v0[187] + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore));
  v3(v2);
  sub_100006C84();
  sub_100010478();
  sub_10000DE88();
  sub_100010478();
  sub_1000050CC();
  sub_100010478();

  sub_100002E08();

  return v4();
}

uint64_t sub_1000C1950()
{
  sub_100004194();
  *(v1 + 912) = v0;
  *(v1 + 904) = v2;
  *(v1 + 896) = v3;
  *(v1 + 993) = v4;
  *(v1 + 888) = v5;
  *(v1 + 992) = v6;
  v7 = type metadata accessor for AccountDataState(0);
  *(v1 + 920) = v7;
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  *(v1 + 928) = sub_1000C70D8();
  *(v1 + 936) = swift_task_alloc();
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  *(v1 + 944) = sub_100003FA8();
  v13 = type metadata accessor for Log();
  *(v1 + 952) = v13;
  sub_100003B78(v13);
  *(v1 + 960) = v14;
  v16 = *(v15 + 64);
  *(v1 + 968) = sub_1000C70D8();
  *(v1 + 976) = swift_task_alloc();
  v17 = sub_10000AA8C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_1000C1A64()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 912);
  static Log.accountsDataSync.getter();
  v3 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v79 = *(v5 + 72);
  sub_1000C724C();
  v8 = v6 & ~v7;
  v66 = 3 * v9;
  v67 = v7;
  v68 = v3;
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v63 = type metadata accessor for AccountDataAccessActor();
  *(v0 + 696) = v63;
  *(v0 + 672) = v2;

  v10 = AMSLogKey();
  v69 = v8;
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v74 = *(v0 + 976);
  v81 = *(v0 + 960);
  v75 = *(v0 + 952);
  v12 = *(v0 + 944);
  v13 = *(v0 + 936);
  v14 = *(v0 + 928);
  v15 = *(v0 + 920);
  v80 = *(v0 + 912);
  v16 = *(v0 + 993);
  v70 = *(v0 + 888);
  v17 = *(v0 + 992);
  LODWORD(v72) = v17;
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 672));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x676E69676E616843;
  v18._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 728) = &type metadata for AccountDataChange.CodingKeys;
  *(v0 + 704) = v17 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v0 + 704, &unk_1002DFC10, &qword_10022E6D0);
  v19._countAndFlagsBits = 544175136;
  v19._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  *(v0 + 760) = &type metadata for Bool;
  *(v0 + 736) = v16;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v0 + 736, &unk_1002DFC10, &qword_10022E6D0);
  v20._countAndFlagsBits = 1919903264;
  v20._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  v21 = type metadata accessor for AccountIdentity();
  *(v0 + 792) = v21;
  sub_100007914((v0 + 768));
  sub_10000B7EC(v21);
  (*(v22 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v0 + 768, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v23 = sub_10003CD30();
  v24 = v75;
  v76 = v25;
  v25(v23, v24);
  v26 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v78 = v26;
  sub_1000C6B44(v80 + v26, v14);
  if (v72)
  {
    v27 = 2;
  }

  else
  {
    v27 = v16;
  }

  if (v72)
  {
    v28 = v16;
  }

  else
  {
    v28 = 2;
  }

  v29 = *&v14[v15[8]];
  v30 = *&v14[v15[8]];
  v31 = v29 >> 8;
  if (v72)
  {
    LOWORD(v31) = v16;
  }

  else
  {
    LOBYTE(v29) = v16;
  }

  if (v30 == 3)
  {
    v32 = v27;
  }

  else
  {
    v32 = v29;
  }

  if (v30 == 3)
  {
    v33 = v28;
  }

  else
  {
    v33 = v31;
  }

  memcpy((v0 + 16), v14, 0x148uLL);
  sub_1000C6F60(v15[5]);
  sub_1000C6F60(v15[6]);
  v34 = v15[7];
  v35 = type metadata accessor for Date();
  sub_10000307C(v35);
  (*(v36 + 16))(&v13[v34], &v14[v34], v35);
  sub_1000C6F60(v15[9]);
  LOWORD(v34) = *&v14[v15[10]];
  sub_1000C68A8(&v14[v15[11]], &v13[v15[11]], &qword_1002DA970, &qword_1002318B0);
  v37 = *&v14[v15[12]];
  sub_1000C68A8(&v14[v15[13]], &v13[v15[13]], &qword_1002DB940, &qword_100232B48);
  sub_1000C68A8(v0 + 16, v0 + 344, &qword_1002DB920, &qword_100238870);
  sub_100004A2C();
  sub_100010478();
  v38 = v15[14];
  sub_100007B78();
  sub_100002728(v39, v40, v41, v35);
  memcpy(v13, (v0 + 16), 0x148uLL);
  *&v13[v15[8]] = v32 | (v33 << 8);
  *&v13[v15[10]] = v34;
  *&v13[v15[12]] = v37;
  sub_1000C2798(v80 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID, v13);
  v42 = *(v0 + 912);
  sub_1000BCBCC(2, *(v0 + 896), *(v0 + 904), v43, v44, v45, v46, v47, v62, v63, SHIDWORD(v63), 3, 6, v66, v67, v68, v69, v70, v72, v74, v76);
  v48 = *(v0 + 968);
  v49 = *(v0 + 912);
  static Log.accountsDataSync.getter();
  *(swift_allocObject() + 16) = v65;
  *(v0 + 824) = v64;
  *(v0 + 800) = v49;

  v50 = AMSLogKey();
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000C726C();
  }

  else
  {
    sub_1000033C0();
  }

  v52 = *(v0 + 968);
  v53 = *(v0 + 920);
  v71 = *(v0 + 952);
  v73 = *(v0 + 912);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 800));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 856) = v53;
  sub_100007914((v0 + 832));
  sub_100007F24();
  sub_1000C6B44(v80 + v78, v54);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 832, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v77(v52, v71);
  v55 = sub_1000C7278((v73 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier));
  v56(v55);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 984) = v57;
  *v57 = v58;
  v57[1] = sub_1000C218C;
  v59 = *(v0 + 936);
  v60 = *(v0 + 912);

  return sub_1000C288C();
}

uint64_t sub_1000C218C()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 984);
  v3 = *(v1 + 912);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C2284()
{
  sub_10000DB4C();
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[116];
  sub_100004A2C();
  sub_100010478();

  sub_100002E08();

  return v6();
}

void sub_1000C2330()
{
  sub_100004868();
  v1 = type metadata accessor for AccountDataState(0);
  v2 = sub_10000307C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for Log();
  v11 = sub_100003724(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000030E4();
  v40 = v15;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v16 = type metadata accessor for LogInterpolation();
  sub_100003B78(v16);
  v18 = *(v17 + 72);
  sub_10000A1F0();
  v39 = v19;
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v46[3] = type metadata accessor for AccountDataAccessActor();
  v46[0] = v0;
  v43 = v0;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v46);
  LogInterpolation.init(stringLiteral:)();
  v39 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v22 = type metadata accessor for AccountIdentity();
  v45[3] = v22;
  sub_100007914(v45);
  sub_10000B7EC(v22);
  v24 = v43;
  (*(v23 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v45, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v25 = sub_10003CD30();
  v26(v25);
  v27 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v28 = v24;
  sub_1000C6B44(v24 + v27, v6);
  sub_1000C7234(v45);
  sub_1000C7150(&v6[v1[5]], &v9[v1[5]]);
  sub_1000C7150(&v6[v1[6]], &v9[v1[6]]);
  v29 = v1[7];
  v30 = type metadata accessor for Date();
  sub_10000307C(v30);
  (*(v31 + 16))(&v9[v29], &v6[v29], v30);
  v32 = v1[9];
  LODWORD(v42) = *&v6[v1[8]];
  sub_1000C7150(&v6[v32], &v9[v32]);
  LOWORD(v29) = *&v6[v1[10]];
  sub_1000C7150(&v6[v1[11]], &v9[v1[11]]);
  v33 = *&v6[v1[12]];
  sub_1000C68A8(&v6[v1[13]], &v9[v1[13]], &qword_1002DB940, &qword_100232B48);
  sub_1000C68A8(v45, &v44, &qword_1002DB920, &qword_100238870);
  sub_100010478();
  v34 = v1[14];
  sub_100007B78();
  sub_100002728(v35, v36, v37, v30);
  memcpy(v9, v45, 0x148uLL);
  *&v9[v1[8]] = v42;
  *&v9[v1[10]] = v29;
  *&v9[v1[12]] = v33;
  sub_1000C2798(v28 + v39, v9);
  sub_100010478();
  sub_100005074();
}

uint64_t sub_1000C2798(uint64_t a1, uint64_t a2)
{
  sub_1000C7304(OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_store);
  result = v5(a2);
  if (!v3)
  {
    v7 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
    swift_beginAccess();
    sub_1000C6844(a2, v2 + v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000C282C(void *a1)
{
  v1 = sub_10000C4FC(a1, a1[3]);
  sub_10000F2C8(v1);
  sub_1000C7304(OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler);
  v2();
}

uint64_t sub_1000C288C()
{
  sub_100004194();
  v1[216] = v0;
  v1[215] = v2;
  v1[214] = v3;
  v4 = type metadata accessor for Log();
  v1[217] = v4;
  sub_100003B78(v4);
  v1[218] = v5;
  v7 = *(v6 + 64);
  v1[219] = sub_1000C70D8();
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v1[222] = swift_task_alloc();
  v8 = type metadata accessor for AccountIdentity.DSID();
  v1[223] = v8;
  sub_100003B78(v8);
  v1[224] = v9;
  v11 = *(v10 + 64);
  v1[225] = sub_100003FA8();
  v12 = sub_10000AA8C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000C29A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = *(v14 + 1800);
  v16 = *(v14 + 1792);
  v17 = *(v14 + 1784);
  v18 = *(v14 + 1712);
  v19 = (*(v14 + 1728) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountFinder);
  v20 = *v19;
  v21 = v19[1];
  AccountIdentity.dsid.getter();
  v22 = (*(v21 + 16))(v15, v20, v21);
  *(v14 + 1808) = v22;
  (*(v16 + 8))(v15, v17);
  if (!v22)
  {
    v36 = *(v14 + 1760);
    v37 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v38 = type metadata accessor for LogInterpolation();
    sub_100003B78(v38);
    v40 = *(v39 + 72);
    sub_10000A1F0();
    sub_1000C71C8();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1480) = type metadata accessor for AccountDataAccessActor();
    *(v14 + 1456) = v37;

    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v61 = *(v14 + 1760);
    v62 = *(v14 + 1744);
    v63 = *(v14 + 1736);
    v64 = *(v14 + 1712);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1456));
    LogInterpolation.init(stringLiteral:)();
    v65 = type metadata accessor for AccountIdentity();
    *(v14 + 1512) = v65;
    sub_100007914((v14 + 1488));
    sub_10000B7EC(v65);
    (*(v66 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1488, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v62 + 8))(v61, v63);
    goto LABEL_24;
  }

  v23 = [v22 accountStore];
  *(v14 + 1816) = v23;
  if (!v23)
  {
    v43 = *(v14 + 1768);
    v44 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v45 = type metadata accessor for LogInterpolation();
    sub_100003B78(v45);
    v47 = *(v46 + 72);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1544) = type metadata accessor for AccountDataAccessActor();
    *(v14 + 1520) = v44;

    v48 = AMSLogKey();
    if (v48)
    {
      v49 = v48;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000C726C();
    }

    else
    {
      sub_1000033C0();
    }

    sub_10000D40C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1520));
    LogInterpolation.init(stringLiteral:)();
    v67 = [v22 identifier];
    v68 = v67;
    if (v67)
    {
      v67 = sub_100003AE0(0, &qword_1002DB930, NSString_ptr);
    }

    else
    {
      *(v14 + 1560) = 0u;
    }

    v69 = *(v14 + 1768);
    v70 = *(v14 + 1744);
    v71 = *(v14 + 1736);
    *(v14 + 1552) = v68;
    *(v14 + 1576) = v67;
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1552, &unk_1002DFC10, &qword_10022E6D0);
    Log.fault(_:)();

    (*(v70 + 8))(v69, v71);
LABEL_24:
    sub_1000029A4();

    sub_100002E08();
    sub_100003BBC();

    return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14);
  }

  v24 = v23;
  v25 = *(v14 + 1720);
  memcpy((v14 + 80), v25, 0x148uLL);
  v26 = type metadata accessor for AccountDataState(0);
  v27 = *&v25[*(v26 + 40)];
  v28 = *&v25[*(v26 + 32)];
  sub_100013524();
  memcpy((v14 + 736), (v14 + 1064), 0x148uLL);
  if (sub_100013900(v14 + 736) == 1)
  {
    v29 = *(v14 + 1776);
    v30 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v31 = type metadata accessor for LogInterpolation();
    sub_100003B78(v31);
    v33 = *(v32 + 72);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1608) = type metadata accessor for AccountDataAccessActor();
    *(v14 + 1584) = v30;

    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v72 = *(v14 + 1744);
    a10 = *(v14 + 1776);
    a11 = *(v14 + 1736);
    v73 = *(v14 + 1712);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1584));
    LogInterpolation.init(stringLiteral:)();
    v74 = type metadata accessor for AccountIdentity();
    *(v14 + 1640) = v74;
    sub_100007914((v14 + 1616));
    sub_10000B7EC(v74);
    (*(v75 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1616, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v72 + 8))(a10, a11);
    goto LABEL_24;
  }

  memcpy((v14 + 408), (v14 + 736), 0x148uLL);
  sub_1000C7480();
  sub_1000C609C(v50, v22);
  v51 = *(v14 + 416);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = *(v14 + 408) & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = String._bridgeToObjectiveC()();
    [v22 setUsername:v53];
  }

  v54 = *(v14 + 464);
  v55 = *(v14 + 472);
  v56 = String._bridgeToObjectiveC()();
  sub_100004E24(v14 + 1064, &qword_1002DB920, &qword_100238870);
  [v22 ams_setCreditsString:v56];

  v57 = [v24 ams_saveAccount:v22];
  *(v14 + 1824) = v57;
  *(v14 + 16) = v14;
  *(v14 + 56) = v14 + 1840;
  *(v14 + 24) = sub_1000C3208;
  v58 = swift_continuation_init();
  *(v14 + 1448) = sub_100099DF4(&qword_1002DB938, &qword_100232B40);
  *(v14 + 1424) = v58;
  *(v14 + 1392) = _NSConcreteStackBlock;
  *(v14 + 1400) = 1107296256;
  *(v14 + 1408) = sub_1000C3620;
  *(v14 + 1416) = &unk_1002B6238;
  [v57 resultWithCompletion:v14 + 1392];
  sub_100003BBC();

  return _swift_continuation_await(v59);
}

uint64_t sub_1000C3208()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 1832) = v4;
  v5 = *(v3 + 1728);
  if (v4)
  {
    v6 = sub_1000C33AC;
  }

  else
  {
    v6 = sub_1000C3318;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C3318()
{
  sub_100007F3C();
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1808);

  sub_1000029A4();

  sub_100002E08();

  return v3();
}

uint64_t sub_1000C33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = v14[229];
  v16 = v14[228];
  v17 = v14[219];
  v18 = v14[216];
  swift_willThrow();

  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v19 = type metadata accessor for LogInterpolation();
  sub_100003B78(v19);
  v21 = *(v20 + 72);
  sub_10000A1F0();
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v14[209] = type metadata accessor for AccountDataAccessActor();
  v14[206] = v18;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = v14[229];
  v25 = v14[227];
  v26 = v14[219];
  v27 = v14[218];
  v42 = v14[226];
  v43 = v14[217];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v14 + 206);
  LogInterpolation.init(stringLiteral:)();
  v28 = _convertErrorToNSError(_:)();
  v29 = AMSLogableError();

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v14[213] = &type metadata for String;
  v14[210] = v30;
  v14[211] = v32;
  static LogInterpolation.safe(_:)();
  sub_100004E24((v14 + 210), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v27 + 8))(v26, v43);
  sub_1000029A4();

  sub_100002E08();
  sub_100003BBC();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, a11, a12, a13, a14);
}

uint64_t sub_1000C3620(uint64_t a1, char a2, void *a3)
{
  v5 = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1001A734C(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1001A5EA0(v9, a2);
  }
}

uint64_t sub_1000C36A4()
{
  sub_100004194();
  v1[353] = v0;
  v1[352] = v2;
  v1[351] = v3;
  v1[350] = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v1[354] = sub_100003FA8();
  v8 = type metadata accessor for Log();
  v1[355] = v8;
  sub_100003B78(v8);
  v1[356] = v9;
  v11 = *(v10 + 64);
  v1[357] = sub_1000C70D8();
  v1[358] = swift_task_alloc();
  v1[359] = swift_task_alloc();
  v1[360] = swift_task_alloc();
  v1[361] = swift_task_alloc();
  v1[362] = swift_task_alloc();
  v12 = sub_10000AA8C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000C37B0()
{
  v1 = *(v0 + 2896);
  v2 = *(v0 + 2824);
  static Log.accountsDataSync.getter();
  *(v0 + 2904) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 2912) = *(v4 + 72);
  *(v0 + 3080) = *(v5 + 80);
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v6 = type metadata accessor for AccountDataAccessActor();
  *(v0 + 2920) = v6;
  *(v0 + 2424) = v6;
  *(v0 + 2400) = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 2896);
  v10 = *(v0 + 2848);
  v23 = *(v0 + 2840);
  v11 = *(v0 + 2808);
  v12 = *(v0 + 2800);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 2400));
  LogInterpolation.init(stringLiteral:)();
  v13 = type metadata accessor for AccountIdentity();
  *(v0 + 2928) = v13;
  *(v0 + 2392) = v13;
  sub_100007914((v0 + 2368));
  sub_10000B7EC(v13);
  v15 = *(v14 + 16);
  *(v0 + 2936) = v15;
  *(v0 + 2944) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v0 + 2368, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v16 = *(v10 + 8);
  *(v0 + 2952) = v16;
  *(v0 + 2960) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v9, v23);
  sub_100003AE0(0, &qword_1002DB910, AMSMetricsIdentifierKey_ptr);
  *(v0 + 2968) = sub_1000C5C14(0x644972657375, 0xE600000000000000, 1, 0);
  memcpy((v0 + 80), v11, 0x148uLL);
  v17 = type metadata accessor for AccountDataState(0);
  *(v0 + 2976) = v17;
  *(v0 + 3084) = *&v11[*(v17 + 32)];
  *(v0 + 3086) = *&v11[*(v17 + 40)];
  sub_100013524();
  memcpy((v0 + 736), (v0 + 1720), 0x148uLL);
  v18 = _swiftEmptyArrayStorage;
  if (sub_100013900(v0 + 736) != 1)
  {
    *(v0 + 2784) = *(v0 + 784);
    sub_1000C68A8(v0 + 2784, v0 + 2792, &qword_1002DB928, &qword_100232B30);
    sub_100004E24(v0 + 1720, &qword_1002DB920, &qword_100238870);
    if (*(v0 + 2784))
    {
      v18 = *(v0 + 2784);
    }
  }

  *(v0 + 2984) = v18;
  *(v0 + 2992) = *(*(v0 + 2824) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag);
  v24 = sub_1000C6DDC();
  v20 = v19;
  v21 = swift_task_alloc();
  *(v0 + 3000) = v21;
  *v21 = v0;
  v21[1] = sub_1000C3B80;

  return (v24)(v20);
}

uint64_t sub_1000C3B80()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  v4 = v3[375];
  v5 = v3[374];
  v6 = v3[353];
  v7 = *v0;
  sub_100004504();
  *v8 = v7;
  *(v10 + 3008) = v9;

  v11 = sub_10000AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000C4180()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *(v1 + 2760) = v3;
  *(v1 + 2752) = v4;
  *(v1 + 2744) = v0;
  v6 = v5[382];
  v7 = v5[374];
  v8 = v5[353];
  v9 = *v0;
  sub_100004504();
  *v10 = v9;
  *(v12 + 3089) = v11;

  v13 = sub_10000AA8C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000C4298()
{
  if (*(v0 + 3089))
  {
    v1 = *(v0 + 2920);
    v2 = *(v0 + 2904);
    v3 = *(v0 + 2872);
    v4 = *(v0 + 2824);
    v5 = (*(v0 + 3080) + 32) & ~*(v0 + 3080);
    v6 = 3 * *(v0 + 2912);
    static Log.accountsDataSync.getter();
    *(sub_1000C7168() + 16) = xmmword_1002329D0;
    *(v0 + 2168) = v1;
    *(v0 + 2144) = v4;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v100 = *(v0 + 3048);
    v18 = *(v0 + 3040);
    sub_1000026E8();
    v116 = v19;
    sub_100008B78();
    v108 = v20;
    v21 = *(v0 + 2928);
    v22 = *(v0 + 2912);
    v113 = *(v0 + 2872);
    v115 = *(v0 + 2840);
    v28 = *(v0 + 2832);
    v105 = *(v0 + 2800);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 2144));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23 = 0xD000000000000010;
    v24._countAndFlagsBits = 0xD000000000000029;
    v24._object = 0x8000000100272830;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    *(v0 + 2200) = &type metadata for String;
    *(v0 + 2176) = v18;
    *(v0 + 2184) = v100;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v25 = &unk_1002DFC10;
    sub_100004E24(v0 + 2176, &unk_1002DFC10, &qword_10022E6D0);
    v26._countAndFlagsBits = 0xD000000000000033;
    v26._object = 0x8000000100272860;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    LogInterpolation.init(stringInterpolation:)();
    *(v0 + 2232) = v21;
    v27 = sub_100007914((v0 + 2208));
    v108(v27, v105, v21);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v0 + 2208, &unk_1002DFC10, &qword_10022E6D0);
    LOBYTE(v28) = v113;
    Log.error(_:)();

    v29 = v116(v113, v115);
    v30 = *(v0 + 3032);
    if (((*(v0 + 3024) - 1) & *(v0 + 3024)) != 0)
    {
      while (1)
      {
        v31 = *(v0 + 3016);
        *(v0 + 3032) = v30;
        sub_10000AF4C(v31);
        sub_10000BF9C(v36, v37);
        sub_100004F04();
        sub_1000C703C();
        sub_1000C741C();
        if (v38)
        {
          break;
        }

        sub_1000C7468();
        sub_100004E24(v0 + 1392, &qword_1002DB920, &qword_100238870);
        if ((v28 & 1) == 0)
        {
          goto LABEL_30;
        }

        v117 = v25;
        v39 = *(v0 + 2920);
        v40 = *(v0 + 3080);
        sub_10000B344();
        static Log.accountsDataSync.getter();
        *(swift_allocObject() + 16) = xmmword_1002329D0;
        *(v0 + 2648) = v39;
        *(v0 + 2624) = v21;

        v41 = AMSLogKey();
        if (v41)
        {
          v42 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100004514();
        v114 = *(v0 + 2952);
        sub_100008B78();
        v101 = v43;
        v44 = *(v0 + 2928);
        v45 = *(v0 + 2912);
        v109 = *(v0 + 2888);
        v112 = *(v0 + 2840);
        v46 = *(v0 + 2832);
        v97 = *(v0 + 2800);
        sub_1000C7394();

        sub_1000C6EB4();
        v47._countAndFlagsBits = 0xD000000000000020;
        v47._object = 0x8000000100272910;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
        *(v0 + 2680) = &type metadata for String;
        *(v0 + 2656) = v117;
        *(v0 + 2664) = &qword_10022E6D0;

        LogInterpolation.StringInterpolation.appendInterpolation(_:)();
        sub_100004E24(v0 + 2656, &unk_1002DFC10, &qword_10022E6D0);
        v48._countAndFlagsBits = 0xD00000000000002CLL;
        v48._object = 0x8000000100272940;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
        LogInterpolation.init(stringInterpolation:)();
        *(v0 + 2712) = v44;
        v49 = sub_100007914((v0 + 2688));
        v101(v49, v97, v44);
        sub_1000C7450();
        sub_100004E24(v0 + 2688, &unk_1002DFC10, &qword_10022E6D0);
        Log.default(_:)();

        v114(v109, v112);
        objc_opt_self();
        v25 = String._bridgeToObjectiveC()();

        v28 = AccountIdentity.amsAccountIdentity()();
        v21 = sub_1000C73B4(v28, "_removeStoreForNamespace:accountID:bag:");
      }

LABEL_30:
      v77 = *(v0 + 2992);
      sub_1000C6DDC();
      v79 = v78;
      v80 = swift_task_alloc();
      v81 = sub_1000C72D4(v80);
      *v81 = v82;
      sub_100007B84();
      sub_1000C71E0();

      __asm { BR              X3 }
    }

    while (!__OFADD__(v30, 1))
    {
      v32 = sub_10000EF68();
      if (v34 == v35)
      {
        v50 = *(v0 + 2984);

        v51 = *(v50 + 16);
        if (v51)
        {
          sub_1000048CC();
          v52 = objc_opt_self();
          v88 = &unk_1002DFC10 + v21[7];
          v90 = v52;
          v53 = v50 + 56;
          do
          {
            v118 = v51;
            sub_10000691C();

            static Log.accountsDataSync.getter();
            v54 = sub_1000C7058();
            sub_1000C6CF8(v54, xmmword_100232A10);
            if (AMSLogKey())
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000C7438();
            }

            else
            {
              sub_1000C72E0();
            }

            v110 = *(v0 + 2992);
            v23 = *(v0 + 2912);
            v92 = *(v0 + 2864);
            v93 = *(v0 + 2840);
            v95 = *(v0 + 2952);
            v103 = *(v0 + 2816);
            v106 = *(v0 + 2968);
            v98 = *(v0 + 2960);
            v102 = *(v0 + 2800);
            sub_10000A7DC();

            sub_100004118((v0 + 2112));
            LogInterpolation.init(stringLiteral:)();
            sub_1000C6FE4();
            sub_1000C7404();
            sub_100004E24(v0 + 2592, &unk_1002DFC10, &qword_10022E6D0);
            sub_10000A4D0();
            sub_100003568();
            sub_1000C73D4();
            sub_100008C54();
            Log.default(_:)();

            v95(v92, v93);
            sub_100013D74();
            sub_100002FFC();
            sub_1000C721C();

            v55 = AccountIdentity.amsAccountIdentity()();
            isa = Date._bridgeToObjectiveC()().super.isa;
            v57 = Date._bridgeToObjectiveC()().super.isa;
            LOBYTE(v86) = 0;
            v58 = [v90 _setConsumerIdentifier:&qword_10022E6D0 forKey:v106 inNamespace:v54 accountID:v55 bag:v110 at:isa serverProvidedAt:v57 skipSync:v86];

            v53 += 32;
            v51 = v118 - 1;
          }

          while (v118 != 1);
        }

        sub_100003B88();

        sub_100002E08();
        sub_1000C71E0();

        __asm { BRAA            X1, X16 }
      }

      v29 = sub_1000C72EC(v32, v33);
      ++v30;
    }

    __break(1u);
  }

  else
  {
    v9 = *(v0 + 2752);
    v10 = *(v0 + 2920);
    v11 = *(v0 + 2904);
    v12 = *(v0 + 2880);
    v13 = *(v0 + 2824);
    v14 = (*(v0 + 3080) + 32) & ~*(v0 + 3080);
    v15 = 3 * *(v0 + 2912);
    static Log.accountsDataSync.getter();
    *(sub_1000C7168() + 16) = xmmword_1002329D0;
    *(v0 + 2264) = v10;
    *(v0 + 2240) = v13;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v61 = *(v0 + 3048);
    v62 = *(v0 + 3040);
    v111 = *(v0 + 2992);
    v107 = *(v0 + 2968);
    sub_1000026E8();
    v99 = v63;
    sub_100008B78();
    v91 = v64;
    v89 = *(v0 + 2928);
    v65 = *(v0 + 2912);
    v94 = *(v0 + 2880);
    v96 = *(v0 + 2840);
    v66 = *(v0 + 2832);
    v104 = *(v0 + 2816);
    v87 = *(v0 + 2800);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 2240));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v67._countAndFlagsBits = 0xD000000000000022;
    v67._object = 0x80000001002728A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
    *(v0 + 2296) = &type metadata for String;
    *(v0 + 2272) = v62;
    *(v0 + 2280) = v61;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 2272, &unk_1002DFC10, &qword_10022E6D0);
    v68._object = 0x80000001002728D0;
    v68._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
    *(v0 + 2328) = &type metadata for Double;
    *(v0 + 2304) = v9;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 2304, &unk_1002DFC10, &qword_10022E6D0);
    sub_1000C7100(8238);
    LogInterpolation.init(stringInterpolation:)();
    *(v0 + 2360) = v89;
    v69 = sub_100007914((v0 + 2336));
    v91(v69, v87, v89);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v0 + 2336, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v99(v94, v96);
    v70 = objc_opt_self();
    v71 = String._bridgeToObjectiveC()();
    v72 = AccountIdentity.amsAccountIdentity()();
    v73 = Date._bridgeToObjectiveC()().super.isa;
    v74 = [v70 _applyExpiryForKey:v107 inNamespace:v71 accountID:v72 bag:v111 at:v73 consumerIDResetInterval:v9];
    *(v0 + 3064) = v74;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 2768;
    *(v0 + 24) = sub_1000C4E2C;
    v75 = swift_continuation_init();
    *(v0 + 2104) = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
    *(v0 + 2080) = v75;
    *(v0 + 2048) = _NSConcreteStackBlock;
    *(v0 + 2056) = 1107296256;
    *(v0 + 2064) = sub_1000C5C90;
    *(v0 + 2072) = &unk_1002B61C0;
    [v74 resultWithCompletion:?];
    sub_1000C71E0();
  }

  return _swift_continuation_await(v29);
}

uint64_t sub_1000C4E2C()
{
  sub_100004194();
  v1 = *v0;
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[384] = v5;
  if (v5)
  {
    v6 = v2[353];
    v7 = sub_1000C5410;
  }

  else
  {
    v8 = v2[381];
    v9 = v2[353];

    v7 = sub_1000C4F48;
    v6 = v9;
  }

  return _swift_task_switch(v7, v6, 0);
}

id sub_1000C5C14(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() keyWithName:v6 crossDeviceSync:a3 & 1 isActiveITunesAccountRequired:a4 & 1];

  return v7;
}

uint64_t *sub_1000C5C90(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1001A734C(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1001A7350(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1000C5D24(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1001A734C(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1001A7350(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5DB4()
{
  sub_100004A2C();
  sub_100010478();
  v1 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v2 = type metadata accessor for AccountIdentity();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C5E68()
{
  sub_1000C5DB4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AccountDataAccessActor()
{
  result = qword_1002DB790;
  if (!qword_1002DB790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5EE8()
{
  result = type metadata accessor for AccountDataState(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AccountIdentity();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000C5FF8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000C6030(uint64_t a1, uint64_t *a2)
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

void sub_1000C609C(uint64_t a1, void *a2)
{
  type metadata accessor for AMSAccountFlag(0);
  sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
  sub_1000C6B9C(&qword_1002DA648, type metadata accessor for AMSAccountFlag);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 ams_setAccountFlags:isa];
}

uint64_t sub_1000C6194()
{
  sub_10000DB4C();
  sub_10000873C();
  sub_100002860();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_1000C72A0();
  v7 = [v5 v6];

  v8 = [v7 valuePromise];
  v0[20] = v8;

  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1000C62DC;
  swift_continuation_init();
  v9 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
  sub_10000BC68(v9);
  v0[11] = 1107296256;
  sub_1000C6E04();
  [v8 resultWithCompletion:v2];

  return _swift_continuation_await(v1);
}

uint64_t sub_1000C62DC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1000C6450;
  }

  else
  {
    v5 = sub_1000C63DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C63DC()
{
  sub_100004194();
  v1 = *(v0 + 144);

  v2 = sub_10012429C(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C6450()
{
  sub_100007F3C();
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3(&_swiftEmptySetSingleton);
}

uint64_t sub_1000C64CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1000C64F0, 0, 0);
}

uint64_t sub_1000C64F0()
{
  sub_10000DB4C();
  sub_10000873C();
  sub_100002860();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_1000C72A0();
  v7 = [v5 v6];

  v8 = [v7 valuePromise];
  v0[22] = v8;

  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1000C6638;
  swift_continuation_init();
  v9 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
  sub_10000BC68(v9);
  v0[11] = 1107296256;
  sub_1000C6E04();
  [v8 resultWithCompletion:v2];

  return _swift_continuation_await(v1);
}

uint64_t sub_1000C6638()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1000C67C8;
  }

  else
  {
    v5 = sub_1000C6738;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C6738()
{
  sub_100007F3C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = sub_100124144(v3, v2, v1);
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6 & 1);
}

uint64_t sub_1000C67C8()
{
  sub_100007F3C();
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3(0, 1);
}

uint64_t sub_1000C6844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C68A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100099DF4(a3, a4);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_1000C6904()
{
  v2 = type metadata accessor for AccountDataServerRequest(0);
  sub_100003B78(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Date();
  sub_1000030B8(v6);
  v8 = (v5 + *(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1000C6A64;
  sub_100002854();

  return sub_1000BF158(v13, v14, v15, v16);
}

uint64_t sub_1000C6A64()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

uint64_t sub_1000C6B44(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_1000C6B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C6BE4()
{
  sub_100002834();
  v2 = type metadata accessor for Date();
  sub_1000030B8(v2);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  swift_task_alloc();
  sub_10000DEA0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_100013D70;
  sub_100002854();

  return sub_1000BCB14(v11, v12, v13, v14, v8, v15, v16);
}

uint64_t sub_1000C6CF8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 2136) = v4;
  *(v3 + 2112) = v2;
}

uint64_t sub_1000C6D1C()
{
  *(v1 - 128) = v0[374];
  v7 = v0[369];
  v8 = v0[370];
  v3 = v0[358];
  v6 = v0[355];
  v10 = v0[352];
  v11 = v0[371];
  v9 = v0[350];
  v5 = 3 * v0[364];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000C6D7C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = v1;
  *(v3 - 112) = v2[369];
  v11 = v2[367];
  v12 = v2[368];
  v9 = v2[366];
  v5 = v2[364];
  v6 = v2[355];
  *(v3 - 128) = v2[361];
  *(v3 - 120) = v6;
  v7 = v2[354];
  v10 = v2[350];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000C6DEC@<X0>(uint64_t *a1@<X8>)
{
  v1 = *(a1[1] + 16);
  result = 5;
  v3 = *a1;
  return result;
}

void sub_1000C6E04()
{
  v1[12] = sub_1000C5D24;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_1000C6E34@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v2 + v1, v3, v4);
}

uint64_t sub_1000C6E54@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v3 + v1, v2, v4);
}

uint64_t sub_1000C6E74@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v5 + v1, v2, v3);
}

uint64_t sub_1000C6E94@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v3 + a1, v1, v4);
}

uint64_t sub_1000C6EB4()
{
  sub_100004118((v0 + 2624));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

id sub_1000C6F0C(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v32 = *(v30 - 128);

  return [a16 a2];
}

uint64_t sub_1000C6F40()
{
  v3 = *(*(v2 - 72) + 28);
  v4 = *(*(v0 + 328) + 16);
  result = v1 + v3;
  v6 = *(v0 + 336) + v3;
  return result;
}

uint64_t sub_1000C6F60@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v2 + a1, v1, v3);
}

uint64_t sub_1000C6FB8()
{
  v0[307] = v1;
  v0[304] = *(v2 - 120);
  v0[305] = *(v2 - 104);
}

uint64_t sub_1000C6FE4()
{
  v0[327] = v1;
  v0[324] = *(v2 - 120);
  v0[325] = *(v2 - 104);
}

uint64_t sub_1000C7010()
{
  v0[327] = v1;
  v0[324] = *(v2 - 112);
  v0[325] = *(v2 - 96);
}

void *sub_1000C703C()
{

  return memcpy((v0 + 1064), (v0 + 1392), 0x148uLL);
}

uint64_t sub_1000C7058()
{

  return swift_allocObject();
}

uint64_t sub_1000C7074()
{

  return sub_100004E24(v2 - 112, v0, v1);
}

uint64_t sub_1000C7090()
{
  result = *(v0 + 384) + *(*(v1 - 72) + 36);
  v3 = *(v0 + 312);
  return result;
}

void sub_1000C70AC()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 296);
  v3 = *(v0 - 304);
}

uint64_t sub_1000C70C8()
{
  result = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);
  v5 = *(v1 - 104);
  return result;
}

uint64_t sub_1000C70D8()
{

  return swift_task_alloc();
}

uint64_t sub_1000C7128()
{
  v3 = *(*(v1 - 72) + 52);
  v4 = *(v0 + *(*(v1 - 72) + 48));

  return type metadata accessor for CachedServerDataSyncAttempt(0);
}

uint64_t sub_1000C7150(uint64_t a1, uint64_t a2)
{

  return sub_1000C68A8(a1, a2, v2, v3);
}

uint64_t sub_1000C7168()
{

  return swift_allocObject();
}

uint64_t sub_1000C721C()
{
}

void *sub_1000C7234(void *a1)
{

  return memcpy(a1, v1, 0x148uLL);
}

uint64_t sub_1000C7278@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1[1] + 8);
  return result;
}

void sub_1000C7304(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2[1] + 16);
}

uint64_t sub_1000C7334()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000C7354()
{
  v2 = *(v0 + 112) | 7;
  v3 = *(v0 + 288);

  return swift_allocObject();
}

uint64_t *sub_1000C7374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 + 2712) = a22;

  return sub_100007914((v22 + 2688));
}

uint64_t sub_1000C7394()
{

  return static LogInterpolation.prefix(_:_:)();
}

id sub_1000C73B4(uint64_t a1, const char *a2)
{
  v7 = *(v5 - 104);

  return [v2 a2];
}

uint64_t sub_1000C73D4()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000C73EC()
{
  v2 = *(v0 - 72);

  return LogInterpolation.StringInterpolation.appendInterpolation(_:)();
}

uint64_t sub_1000C7404()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

void sub_1000C7438()
{
}

uint64_t sub_1000C7450()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000C7468()
{
  v2 = *(v0 + 1224);
}

void sub_1000C7480()
{
  v1 = sub_1000C795C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v53 = v0;
    sub_1001070B0();
    v60 = _swiftEmptyArrayStorage;
    v4 = sub_1000C87E4(v1);
    v5 = 0;
    v6 = v1 + 64;
    v54 = v3;
    v56 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v6 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_46;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_47;
      }

      sub_10000694C();
      v9 = *(v8 + v4);
      v11 = v10;
      v12.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v13 = v60;
      v14 = v60[2];
      if (v14 >= v60[3] >> 1)
      {
        sub_1000037F8();
        v13 = v60;
      }

      v13[2] = v14 + 1;
      v15 = &v13[2 * v14];
      v15[4].super.super.isa = v11;
      v15[5].super.super.isa = v12.super.super.isa;
      v16 = 1 << *(v1 + 32);
      if (v4 >= v16)
      {
        goto LABEL_48;
      }

      v6 = v1 + 64;
      v17 = *(v1 + 64 + 8 * v7);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_49;
      }

      v60 = v13;
      if (*(v1 + 36) != v59)
      {
        goto LABEL_50;
      }

      if ((v17 & (-2 << (v4 & 0x3F))) != 0)
      {
        sub_100003104();
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (v1 + 72 + 8 * v7);
        while (v19 < (v16 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1000C87D4(v4, v59, v58 & 1);
            v16 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        sub_1000C87D4(v4, v59, v58 & 1);
      }

LABEL_19:
      ++v5;
      v4 = v16;
      v3 = v54;
      if (v5 == v56)
      {

        v0 = v53;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_100099DF4(&qword_1002DB9B0, &qword_100232BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  v24 = AMSAccountFlagAgeVerificationExpiration;
  v25 = *(v0 + 320);
  *(inited + 32) = AMSAccountFlagAgeVerificationExpiration;
  *(inited + 40) = v25;
  type metadata accessor for AMSAccountFlag(0);
  sub_10001391C(&qword_1002DA648, type metadata accessor for AMSAccountFlag);
  v26 = v24;
  v27 = Dictionary.init(dictionaryLiteral:)();
  v28 = *(v27 + 16);
  if (v28)
  {
    sub_1001070B0();
    v29 = _swiftEmptyArrayStorage;
    v31 = sub_1000C87E4(v27);
    v32 = 0;
    v33 = v27 + 64;
    v55 = v30;
    v57 = v28;
    v34 = 1;
    while ((v31 & 0x8000000000000000) == 0 && v31 < v34 << *(v27 + 32))
    {
      v35 = v31 >> 6;
      v36 = v34 << v31;
      if ((*(v33 + 8 * (v31 >> 6)) & (v34 << v31)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v27 + 36) != v30)
      {
        goto LABEL_53;
      }

      sub_10000694C();
      v38 = *(v37 + 8 * v31);
      v40 = v39;
      v41.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v42 = v29[2];
      v43 = v29;
      if (v42 >= v29[3] >> 1)
      {
        sub_1000037F8();
        v43 = v29;
      }

      v43[2] = v42 + 1;
      v44 = &v43[2 * v42];
      v44[4].super.super.isa = v40;
      v44[5].super.super.isa = v41.super.super.isa;
      v45 = 1 << *(v27 + 32);
      if (v31 >= v45)
      {
        goto LABEL_54;
      }

      v33 = v27 + 64;
      v46 = *(v27 + 64 + 8 * v35);
      if ((v46 & v36) == 0)
      {
        goto LABEL_55;
      }

      v29 = v43;
      if (*(v27 + 36) != v59)
      {
        goto LABEL_56;
      }

      if ((v46 & (-2 << (v31 & 0x3F))) != 0)
      {
        sub_100003104();
        v47 = v57;
      }

      else
      {
        v48 = v35 << 6;
        v49 = v35 + 1;
        v50 = (v27 + 72 + 8 * v35);
        v47 = v57;
        while (v49 < (v45 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_1000C87D4(v31, v59, v58 & 1);
            v45 = __clz(__rbit64(v51)) + v48;
            goto LABEL_40;
          }
        }

        sub_1000C87D4(v31, v59, v58 & 1);
LABEL_40:
        v34 = 1;
      }

      ++v32;
      v31 = v45;
      v30 = v55;
      if (v32 == v47)
      {

        goto LABEL_44;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_44:
  sub_1000C83BC(v29);
  sub_1000C7BBC(v60);
}

uint64_t sub_1000C795C()
{
  sub_100099DF4(&qword_1002DB9D0, &qword_100232BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100232B90;
  v28 = AMSAccountFlagAutoPlay;
  *(inited + 32) = AMSAccountFlagAutoPlay;
  *(inited + 40) = v0[25];
  v27 = AMSAccountFlagIsDisabledAccount;
  *(inited + 48) = AMSAccountFlagIsDisabledAccount;
  *(inited + 56) = v0[105];
  v26 = AMSAccountFlagPersonalization;
  *(inited + 64) = AMSAccountFlagPersonalization;
  *(inited + 72) = v0[241];
  v25 = AMSAccountFlagHasAgreedToTerms;
  *(inited + 80) = AMSAccountFlagHasAgreedToTerms;
  *(inited + 88) = v0[89];
  v24 = AMSAccountFlagHasAgreedToAppClipTerms;
  *(inited + 96) = AMSAccountFlagHasAgreedToAppClipTerms;
  *(inited + 104) = v0[88];
  v2 = AMSAccountFlagHasFamilySharingEnabled;
  *(inited + 112) = AMSAccountFlagHasFamilySharingEnabled;
  *(inited + 120) = v0[90];
  v3 = AMSAccountFlagIsInBadCredit;
  *(inited + 128) = AMSAccountFlagIsInBadCredit;
  *(inited + 136) = v0[106];
  v4 = AMSAccountFlagHasiCloudFamily;
  *(inited + 144) = AMSAccountFlagHasiCloudFamily;
  *(inited + 152) = v0[107];
  v5 = AMSAccountFlagIsInRestrictedRegion;
  *(inited + 160) = AMSAccountFlagIsInRestrictedRegion;
  *(inited + 168) = v0[108];
  v6 = AMSAccountFlagIsManagedAccount;
  *(inited + 176) = AMSAccountFlagIsManagedAccount;
  *(inited + 184) = v0[109];
  v7 = AMSAccountFlagIsRestrictedAccount;
  *(inited + 192) = AMSAccountFlagIsRestrictedAccount;
  *(inited + 200) = v0[160];
  v8 = AMSAccountFlagRetailDemo;
  *(inited + 208) = AMSAccountFlagRetailDemo;
  *(inited + 216) = v0[264];
  v9 = AMSAccountFlagUnderThirteen;
  *(inited + 224) = AMSAccountFlagUnderThirteen;
  *(inited + 232) = v0[313];
  type metadata accessor for AMSAccountFlag(0);
  sub_10001391C(&qword_1002DA648, type metadata accessor for AMSAccountFlag);
  v10 = v28;
  v11 = v27;
  v12 = v26;
  v13 = v25;
  v14 = v24;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_1000C7BBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100099DF4(&qword_1002DB9B8, &qword_100232BC8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000C8494(v2, 1, &v4);

  return v4;
}

Swift::Int sub_1000C7C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100099DF4(&qword_1002DB9A0, &qword_100232BB0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
      swift_dynamicCast();
      sub_100003AE0(0, &qword_1002DB980, AMSAccountCachedServerDataAccountResult_ptr);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1000C8158(v4 + 1, 1);
      }

      v2 = v17;
      result = NSObject._rawHashValue(seed:)(*(v17 + 40));
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000C7E98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002DB9B8, &qword_100232BC8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1000EA578(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v39 = (v13 - 1) & v13;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(*(v5 + 48) + 8 * v19);
    v22 = *(v20 + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v23 = v21;
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
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v8 + 48) + 8 * v30) = v21;
    *(*(v8 + 56) + 8 * v30) = v22;
    ++*(v8 + 16);
    v5 = v37;
    v13 = v39;
    if (!v39)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000C8158(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002DB9A0, &qword_100232BB0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        sub_1000EA578(0, (v32 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    result = NSObject._rawHashValue(seed:)(*(v8 + 40));
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v20;
    *(*(v8 + 56) + 8 * v27) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000C83BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10010723C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100099DF4(&qword_1002DB9C8, &qword_100238270);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000C8494(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for AMSAccountFlag(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    v12 = sub_10014EBB0();
    v13 = v8[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002DB9C0, &qword_100232BD0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v9;
    *(v20[7] + 8 * v12) = v10;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1000C7E98(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_10014EBB0();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000100272E40;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  type metadata accessor for AMSAccountFlag(0);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000C8760()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000C87D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000C87E4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000C8834()
{
  sub_100004194();
  v0[23] = v1;
  v0[24] = v2;
  v0[21] = v3;
  v0[22] = v4;
  v5 = type metadata accessor for AccountDataServerResponse(0);
  v0[25] = v5;
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v0[26] = sub_100003FA8();
  v8 = type metadata accessor for IndexSet();
  v0[27] = v8;
  v9 = *(v8 - 8);
  v0[28] = v9;
  v10 = *(v9 + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v11 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v0[31] = v11;
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  v0[32] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000C8950()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  v0[33] = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000C8A08;
  v3 = v0[24];
  v4 = v0[22];

  return sub_1000C920C();
}

uint64_t sub_1000C8A08()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 272);
  *v3 = *v1;
  *(v2 + 280) = v6;
  *(v2 + 288) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C8B0C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  sub_1000CA3B8(&qword_1002DB9D8, &type metadata accessor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v5 = v0[29];
    v6 = v0[27];
    v0[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v7 = v0[35];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  (*(v11 + 32))(v9, v0[29], v10);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(409);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v11 + 8))(v9, v10);
  [v3 setAllowedStatusCodes:v14];

  v15 = [objc_allocWithZone(AMSURLSession) init];
  v0[37] = v15;
  [v15 setResponseDecoder:v3];

  v16 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v0[38] = v16;
  [v15 setDelegate:v16];
  v17 = v7;
  v18 = [v15 dataTaskPromiseWithRequest:v17 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v0[39] = v18;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1000C8E00;
  v19 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002B6308;
  v0[14] = v19;
  [v18 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C8E00()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C8F00()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);

  sub_1000C9A28(v4, v3, v2);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 280);
  if (v1)
  {

    v8 = *(v0 + 248);
    **(v0 + 256) = v1;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = *(v0 + 208);

    sub_1000CA240(v11, v9);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004A44();
  sub_100006960(v12, v13);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v14();
}

uint64_t sub_1000C904C()
{
  v2 = *(v1 + 248);
  **(v1 + 256) = *(v1 + 288);
  swift_storeEnumTagMultiPayload();
  sub_100004A44();
  sub_100006960(v3, v4);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v5();
}

uint64_t sub_1000C9118()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  swift_willThrow();

  v6 = *(v0 + 248);
  **(v0 + 256) = *(v0 + 320);
  swift_storeEnumTagMultiPayload();
  sub_100004A44();
  sub_100006960(v7, v8);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v9();
}

uint64_t sub_1000C920C()
{
  sub_100004194();
  v0[10] = v1;
  v0[11] = v2;
  v3 = type metadata accessor for URL();
  v0[12] = v3;
  v4 = *(v3 - 8);
  v0[13] = v4;
  v5 = *(v4 + 64);
  v0[14] = sub_100003FA8();
  v6 = type metadata accessor for AccountDataServerRequest(0);
  v0[15] = v6;
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  v0[16] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C92E0()
{
  v1 = *(v0 + 80);
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:*(v0 + 88)];
  *(v0 + 136) = v2;
  [v2 setRequestEncoding:3];
  v3 = sub_1000C9EDC(v1);
  *(v0 + 144) = 0;
  v4 = v3;
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  [v2 setAccount:v3];

  sub_1000CA2F8(v8, v5);
  *(v0 + 216) = swift_getEnumCaseMultiPayload();
  sub_1000CA35C(v5);
  swift_getObjectType();
  *(v0 + 152) = sub_10012EF24();
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1000C9490;
  v10 = *(v0 + 88);

  return sub_100169384();
}

uint64_t sub_1000C9490()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *(v3 + 152);
  v6 = *v0;
  sub_10000452C();
  *v7 = v6;
  *(v9 + 168) = v8;

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C959C()
{
  v1 = *(v0 + 144);
  sub_10012F174(*(v0 + 80), *(v0 + 168), *(v0 + 112));
  if (v1)
  {
    v2 = *(v0 + 136);

    v3 = *(v0 + 128);
    v4 = *(v0 + 112);

    sub_100002E08();

    return v5();
  }

  else
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 80);

    if (v7 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 5;
    }

    v10 = sub_10012ECCC(v8);
    *(v0 + 176) = v10;
    sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10022E400;
    *(inited + 32) = 0x646975472D58;
    *(inited + 40) = 0xE600000000000000;
    v12 = [objc_opt_self() deviceGUID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(inited + 48) = v13;
    *(inited + 56) = v15;
    v16 = Dictionary.init(dictionaryLiteral:)();
    *(v0 + 184) = v16;
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_1000C9798;
    v18 = *(v0 + 136);
    v19 = *(v0 + 112);

    return sub_1001A833C(v9, v19, v16, v10);
  }
}

uint64_t sub_1000C9798(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000452C();
  *v6 = v5;
  v7 = *(v4 + 192);
  *v6 = *v2;
  *(v5 + 200) = v1;

  v8 = *(v4 + 184);

  if (!v1)
  {
    *(v5 + 208) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C98D4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);
  v7 = *(v0 + 208);

  return v6(v7);
}

uint64_t sub_1000C9984()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);

  sub_100002E08();

  return v8();
}

void *sub_1000C9A28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a2;
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v7 = sub_1000030B8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000037D4();
  v48 = v10;
  __chkstk_darwin(v11);
  v52 = &v45 - v12;
  v13 = type metadata accessor for Date();
  v14 = sub_100003724(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_1000037D4();
  v49 = v19;
  __chkstk_darwin(v20);
  v50 = &v45 - v21;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  static Date.now.getter();
  v25 = sub_10019A1E0(a1);
  if (!v25 || (v26 = sub_100197EB0(v25), , !v26))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  [a1 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v3)
  {
    (*(v16 + 8))(v24, v13);
  }

  else
  {
    v45 = a3;
    v46 = v13;
    v27 = [a1 data];
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    sub_10012F594(v51);
    sub_10000D170(v28, v30);
    v32 = v52;
    static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)();
    v33 = v48;
    v34 = *(v47 + 32);
    sub_100012C2C(v32, v48, &qword_1002DA970, &qword_1002318B0);
    v35 = v46;
    if (sub_100004DFC(v33, 1, v46) == 1)
    {
      Date.addingTimeInterval(_:)();
      v36 = sub_100004DFC(v33, 1, v35);
      v37 = v45;
      if (v36 != 1)
      {
        sub_10003CD48(v33, &qword_1002DA970, &qword_1002318B0);
      }
    }

    else
    {
      (*(v16 + 32))(v50, v33, v35);
      v37 = v45;
    }

    static HTTPHelpers.responseTimestamp(from:)();

    v48 = type metadata accessor for AccountDataServerResponse(0);
    v38 = &v37[*(v48 + 20)];
    v39 = v50;
    v40 = v46;
    (*(v16 + 16))(v38, v50, v46);
    v41 = [a1 responseStatusCode];
    v42 = *(v16 + 8);
    v42(v39, v40);
    sub_10003CD48(v52, &qword_1002DA970, &qword_1002318B0);
    result = (v42)(v24, v40);
    if ((v41 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v43 = v48;
      v44 = v45;
      (*(v16 + 32))(&v45[*(v48 + 28)], v49, v40);
      result = memcpy(v44, v51, 0x148uLL);
      *&v44[*(v43 + 24)] = v41;
    }
  }

  return result;
}

id sub_1000C9EDC(uint64_t a1)
{
  v2 = type metadata accessor for AccountIdentity.DSID();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012F41C(a1, v9);
  v10 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v12 = [v10 ams_iTunesAccountWithDSID:isa];

  if (!v12)
  {
    type metadata accessor for AccountDataNetworkingCore.Errors();
    sub_1000CA3B8(&qword_1002DB9F0, type metadata accessor for AccountDataNetworkingCore.Errors);
    swift_allocError();
    (*(v5 + 16))(v13, v9, v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v5 + 8))(v9, v2);
  return v12;
}

uint64_t sub_1000CA0A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_1000C8834();
}

uint64_t sub_1000CA15C()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000452C();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

uint64_t sub_1000CA240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA35C(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CA408@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100003724(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v20 = [objc_opt_self() ams_dataVaultDirectory];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_100002728(v5, v22, 1, v9);
  sub_1000CAE2C(v5, v8);
  if (sub_100004DFC(v8, 1, v9) == 1)
  {
    sub_100004E24(v8, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for AccountDataFileSystemStore.Errors();
    sub_1000CAD7C();
    swift_allocError();
    *v23 = 0xD000000000000016;
    v23[1] = 0x8000000100272EB0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v25 = *(v12 + 8);
    v25(v8, v9);
    URL.appendingPathComponent(_:isDirectory:)();
    v25(v16, v9);
    return (*(v12 + 32))(a1, v19, v9);
  }
}

uint64_t sub_1000CA6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v40[1] = a2;
  v3 = type metadata accessor for AccountDataStoreFilesystemCore();
  v4 = sub_10000307C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = (v8 - v7);
  v10 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for AMPAccount();
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v20 = v19 - v18;
  v21 = type metadata accessor for URL();
  v22 = sub_100003724(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10000306C();
  v29 = v28 - v27;
  result = sub_1000CA408(v28 - v27);
  if (!v2)
  {
    v40[0] = v24;
    AccountIdentity.altDSID.getter();
    sub_10009AB58();
    if (sub_100004DFC(v13, 1, v14) == 1)
    {
      sub_100004E24(v13, &qword_1002DA6C0, &unk_100232C60);
      type metadata accessor for AccountDataFileSystemStore.Errors();
      sub_1000CAD7C();
      swift_allocError();
      v32 = v31;
      v33 = type metadata accessor for AccountIdentity();
      sub_10000307C(v33);
      (*(v34 + 16))(v32, v41);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v35 = v40[0];
    }

    else
    {
      sub_100007078(v13, v20);
      v9[3] = type metadata accessor for LiveFileStore();
      v9[4] = &protocol witness table for LiveFileStore;
      sub_100007914(v9);
      LiveFileStore.init()();
      v35 = v40[0];
      (*(v40[0] + 16))(v9 + *(v3 + 20), v29, v21);
      v36 = (v9 + *(v3 + 24));
      v36[3] = v14;
      v36[4] = &off_1002B4510;
      v37 = sub_100007914(v36);
      sub_10009BA48(v20, v37);
      sub_100131960();
      sub_100006614();
      sub_1000CADD4(v9, v38);
      sub_100006CB4();
      sub_1000CADD4(v20, v39);
    }

    return (*(v35 + 8))(v29, v21);
  }

  return result;
}

uint64_t sub_1000CA9F4(uint64_t a1, uint64_t a2)
{
  v40[1] = a1;
  v4 = type metadata accessor for AccountDataStoreFilesystemCore();
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = (v9 - v8);
  v11 = type metadata accessor for URL();
  v12 = sub_100003724(v11);
  v41 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  v18 = v17 - v16;
  v19 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v40 - v21;
  v23 = type metadata accessor for AMPAccount();
  v24 = sub_10000307C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10000306C();
  v29 = v28 - v27;
  AccountIdentity.altDSID.getter();
  sub_10009AB58();
  if (sub_100004DFC(v22, 1, v23) == 1)
  {
    sub_100004E24(v22, &qword_1002DA6C0, &unk_100232C60);
    type metadata accessor for AccountDataFileSystemStore.Errors();
    sub_1000CAD7C();
    swift_allocError();
    v31 = v30;
    v32 = type metadata accessor for AccountIdentity();
    sub_10000307C(v32);
    (*(v33 + 16))(v31, a2);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_100007078(v22, v29);
    sub_1000CA408(v18);
    if (!v2)
    {
      v10[3] = type metadata accessor for LiveFileStore();
      v10[4] = &protocol witness table for LiveFileStore;
      sub_100007914(v10);
      LiveFileStore.init()();
      v35 = v41;
      (*(v41 + 16))(v10 + *(v4 + 20), v18, v11);
      v36 = (v10 + *(v4 + 24));
      v36[3] = v23;
      v36[4] = &off_1002B4510;
      v37 = sub_100007914(v36);
      sub_10009BA48(v29, v37);
      sub_100131BD8();
      sub_100006614();
      sub_1000CADD4(v10, v38);
      (*(v35 + 8))(v18, v11);
    }

    sub_100006CB4();
    return sub_1000CADD4(v29, v39);
  }
}

uint64_t type metadata accessor for AccountDataFileSystemStore.Errors()
{
  result = qword_1002DBA70;
  if (!qword_1002DBA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CAD7C()
{
  result = qword_1002DB9F8;
  if (!qword_1002DB9F8)
  {
    type metadata accessor for AccountDataFileSystemStore.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB9F8);
  }

  return result;
}

uint64_t sub_1000CADD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000CAE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CAEA4()
{
  result = type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v70 = a3;
  v72 = a1;
  v5 = *a4;
  v63 = *(a4 + 16);
  v64 = v5;
  v6 = *(a4 + 32);
  v61 = *(a4 + 40);
  v62 = v6;
  v60 = *(a4 + 48);
  v7 = type metadata accessor for AccountIdentity();
  v8 = sub_100003724(v7);
  v73 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v66 = v12;
  v67 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000037D4();
  v59 = v15;
  __chkstk_darwin(v16);
  v65 = type metadata accessor for Log();
  v17 = sub_100003724(v65);
  v71 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_1000037D4();
  v58 = v21;
  __chkstk_darwin(v22);
  v24 = v56 - v23;
  static Log.accountsDataSync.getter();
  v25 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v26 = *(type metadata accessor for LogInterpolation() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v56[0] = *(v26 + 80);
  v57 = v25;
  *(swift_allocObject() + 16) = xmmword_1002329E0;
  v56[1] = v28;
  v29 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();
  v30 = v27;

  LogInterpolation.init(stringLiteral:)();
  v75 = v7;
  v31 = sub_100007914(v74);
  v32 = *(v73 + 16);
  v68 = v7;
  v32(v31, v72, v7);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009DF4(v74);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 8250;
  v33._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  v34 = *a4;
  if (*a4 == 2)
  {
    v35 = 0;
    v36 = 0;
    v74[1] = 0;
    v74[2] = 0;
  }

  else
  {
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = *(a4 + 8);
    *(v35 + 40) = *(a4 + 24);
    *(v35 + 52) = *(a4 + 36);
    v36 = &unk_1002BC0A8;
  }

  v74[0] = v35;
  v75 = v36;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v74);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v38 = v71 + 8;
  v39 = *(v71 + 8);
  v40 = v65;
  v39(v24, v65);
  if (*a4 != 2)
  {
    v71 = v38;
    v41 = v58;
    static Log.accountsDataSync.getter();
    v42 = swift_allocObject();
    v56[0] = v30;
    *(v42 + 16) = xmmword_1002329F0;
    v57 = v32;
    v43 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._object = 0x8000000100272EF0;
    v44._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
    v75 = &unk_1002BC0A8;
    v45 = swift_allocObject();
    v74[0] = v45;
    v46 = v63;
    *(v45 + 16) = v64;
    *(v45 + 32) = v46;
    v47 = v61;
    *(v45 + 48) = v62;
    *(v45 + 56) = v47;
    *(v45 + 64) = v60;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v74);
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
    v32 = v57;
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v39(v41, v40);
    v49 = String.utf8CString.getter();
    xpc_activity_unregister((v49 + 32));
  }

  v51 = v67;
  v50 = v68;
  v32(v67, v72, v68);
  v52 = v73;
  v53 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v54 = swift_allocObject();
  (*(v52 + 32))(v54 + v53, v51, v50);
  sub_1001AE964(v69, v70, a4, &unk_100232D08, v54);
}

uint64_t sub_1000CB544()
{
  v0 = String.utf8CString.getter();
  xpc_activity_unregister((v0 + 32));
}

uint64_t sub_1000CB5A4()
{
  v1 = *(v0 + 16);
  sub_1000CB7C4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000CB604()
{
  v2 = *(type metadata accessor for AccountIdentity() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000CB6D0;

  return sub_1000CB584(v0 + v3);
}

uint64_t sub_1000CB6D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000CB7C4()
{
  v0 = type metadata accessor for Log();
  v1 = sub_100003724(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v11 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v3 + 8))(v7, v0);
  if (qword_1002DA598 != -1)
  {
    swift_once();
  }

  sub_1000CBA68();
}

void sub_1000CBA00()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  if (AMSAccountCachedServerDataUpdatedNotification)
  {
    v1 = v0;
    CFNotificationCenterPostNotification(v0, AMSAccountCachedServerDataUpdatedNotification, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBA68()
{
  sub_100004168();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v26 = type metadata accessor for AccountIdentity.DSID();
  v3 = sub_100003724(v26);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = type metadata accessor for Log();
  v7 = sub_100003724(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  v14 = v13 - v12;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v15 = type metadata accessor for LogInterpolation();
  sub_100003B78(v15);
  v17 = *(v16 + 72);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v29[3] = ObjectType;
  v29[0] = v1;
  v1;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v29);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v9 + 8))(v14, v6);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  sub_100008F38(0xD00000000000001CLL, 0x8000000100273380);
  AccountIdentity.dsid.getter();
  sub_100005DB0();
  v20 = sub_1000048DC();
  v21(v20, v26);
  if (v28)
  {
    sub_10000601C(&v27, v29);
    sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10022E400;
    sub_100007974(v29, v22 + 32);
    sub_1000D0D14();

    sub_100004118(v29);
  }

  else
  {
    sub_100004E7C(&v27, &qword_1002DB958, &qword_100232B60);
  }

  v23 = sub_10000D4B8(28);
  sub_1001AC540(v23, v24, v25);
  sub_1000027F8();
}

id sub_1000CBDD0()
{
  result = [objc_allocWithZone(type metadata accessor for CachedServerDataService()) init];
  qword_100310610 = result;
  return result;
}

void sub_1000CBE00()
{
  sub_100004168();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Log();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  type metadata accessor for AccountDataCollection();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for AccountIdentity();
  sub_1000D33A8();
  type metadata accessor for AccountDataAccessActor();
  sub_100006034();
  *(v12 + 112) = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_accountDataActors] = v12;
  v13 = [objc_opt_self() defaultBag];
  sub_100003F9C();
  v14 = objc_allocWithZone(type metadata accessor for SendableBag());
  v15 = SendableBag.init(wrappedBag:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag] = v15;
  v25 = type metadata accessor for MetricsOnInternalBuilds();
  v26 = &protocol witness table for MetricsOnInternalBuilds;
  sub_100007914(&v24);
  v16 = v15;
  MetricsOnInternalBuilds.init(bag:)();
  sub_10000601C(&v24, &v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v23, "init");
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v18 = type metadata accessor for LogInterpolation();
  sub_100003B78(v18);
  v20 = *(v19 + 72);
  sub_10000A1F0();
  *(sub_1000D3384() + 16) = xmmword_1002329F0;
  v25 = ObjectType;
  *&v24 = v17;
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v24);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v6 + 8))(v11, v3);
  sub_1000027F8();
}

uint64_t sub_1000CC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  v27 = *(v23 + 464);
  sub_100004538();
  sub_1001252AC(v27, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v28 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v29 = v25;
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC(v26);
  v33 = *(v32 + 16);
  sub_100003594();
  v34();
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v23 + 200, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v35 = sub_1000D33D4();
  v36(v35);
  swift_willThrow();
  v37 = sub_10000A520();
  sub_1001AC540(v37, v38, v39);

  sub_100003118();
  sub_1000D3574();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100004118((v23 + 64));
  v27 = *(v23 + 512);
  sub_100004538();
  sub_1001252AC(v27, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v28 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v29 = v25;
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC(v26);
  v33 = *(v32 + 16);
  sub_100003594();
  v34();
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v23 + 200, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v35 = sub_1000D33D4();
  v36(v35);
  swift_willThrow();
  v37 = sub_10000A520();
  sub_1001AC540(v37, v38, v39);

  sub_100003118();
  sub_1000D3574();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  v27 = v23[63];

  sub_100004118(v23 + 8);
  v28 = v23[65];
  sub_100004538();
  sub_1001252AC(v28, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v29 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v30 = v25;
  v31 = AMSLogKey();
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC(v26);
  v34 = *(v33 + 16);
  sub_100003594();
  v35();
  static LogInterpolation.safe(_:)();
  sub_100004E7C((v23 + 25), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v36 = sub_1000D33D4();
  v37(v36);
  swift_willThrow();
  v38 = sub_10000A520();
  sub_1001AC540(v38, v39, v40);

  sub_100003118();
  sub_1000D3574();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC614()
{
  sub_100004194();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  sub_100002E08();

  return v3();
}

uint64_t sub_1000CC670()
{
  sub_100004194();
  *(v1 + 377) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 376) = v4;
  *(v1 + 208) = swift_getObjectType();
  v5 = type metadata accessor for Date();
  *(v1 + 216) = v5;
  sub_100003B78(v5);
  *(v1 + 224) = v6;
  v8 = *(v7 + 64);
  *(v1 + 232) = sub_100003FA8();
  v9 = type metadata accessor for AccountIdentity();
  *(v1 + 240) = v9;
  sub_100003B78(v9);
  *(v1 + 248) = v10;
  v12 = *(v11 + 64);
  *(v1 + 256) = sub_100003FA8();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  *(v1 + 264) = sub_100003FA8();
  v16 = type metadata accessor for Log();
  *(v1 + 272) = v16;
  sub_100003B78(v16);
  *(v1 + 280) = v17;
  v19 = *(v18 + 64);
  *(v1 + 288) = sub_100003FA8();
  v20 = sub_10000EF80();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_1000CC7E0()
{
  sub_100008C70();
  sub_1000D34EC();
  v1 = *(v0 + 288);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  sub_10000AA9C();
  v7 = sub_10000DB58();
  *(v0 + 64) = v3;
  *(v7 + 16) = xmmword_1002329D0;
  *(v0 + 88) = v2;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v11 = *(v0 + 264);
  v39 = *(v0 + 272);
  v12 = *(v0 + 248);
  v36 = *(v0 + 240);
  v35 = *(v0 + 377);
  v13 = *(v0 + 192);
  v14 = *(v0 + 376);
  sub_1000D34E0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 64));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20676E6974746553;
  v15._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 120) = &type metadata for AccountDataChange.CodingKeys;
  *(v0 + 96) = v14 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_1000D34E0();
  sub_100004E7C(v16, v17, v18);
  v19._countAndFlagsBits = 544175136;
  v19._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  *(v0 + 152) = &type metadata for Bool;
  *(v0 + 128) = v35;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_1000D34E0();
  v23 = sub_100004E7C(v20, v21, v22);
  sub_100013C28(v23);
  LogInterpolation.init(stringInterpolation:)();
  sub_10000C4FC(v13, v13[3]);
  *(v0 + 184) = v36;
  sub_100007914((v0 + 160));
  *(v0 + 296) = *(v12 + 16);
  *(v0 + 304) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_100003594();
  v24();
  static LogInterpolation.traceableSensitive(_:)();
  sub_1000D34E0();
  sub_100004E7C(v25, v26, v27);
  Log.default(_:)();

  (*(v38 + 8))(v37, v39);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  *(v0 + 312) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000016, v28);
  v29 = swift_task_alloc();
  *(v0 + 320) = v29;
  *v29 = v0;
  v29[1] = sub_1000CCAFC;
  v30 = *(v0 + 192);
  v31 = *(v0 + 200);
  sub_100008A70();

  return sub_10000D3F0(v32);
}

uint64_t sub_1000CCAFC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 320);
  *v3 = *v1;
  *(v2 + 328) = v6;
  *(v2 + 336) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CCBFC()
{
  sub_100004194();
  v1 = *(*(v0 + 200) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 344) = v2;
  *v2 = v3;
  v4 = sub_10000BFD4(v2);

  return sub_10000ACF8(v4, v5);
}

uint64_t sub_1000CCC90()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 352) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CCD88()
{
  sub_10000DB4C();
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 376);
  v7 = sub_10000C4FC(*(v0 + 192), *(*(v0 + 192) + 24));
  v2(v3, v7, v4);
  static Date.now.getter();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 360) = v8;
  *v8 = v9;
  v8[1] = sub_1000CCE6C;
  v10 = *(v0 + 328);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 377);

  return sub_1000C1950();
}

uint64_t sub_1000CCE6C()
{
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[45];
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = v2[32];
  v7 = v2[31];
  v8 = v2[30];
  (*(v2[28] + 8))(v2[29], v2[27]);
  (*(v7 + 8))(v6, v8);
  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CD024()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];

  sub_100002860();
  v7 = sub_10000D4B8(22);
  sub_1001AC540(v7, v8, v9);

  sub_100003844();
  sub_10000AD14();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000CD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();
  v13 = *(v12 + 336);
  sub_1000D32B0();
  sub_1000D3494(v14);
  swift_willThrow();
  v15 = sub_10000D4B8(22);
  sub_1001AC540(v15, v16, v17);

  sub_100003118();
  sub_1000050D8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1000CD17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();
  v13 = *(v12 + 328);

  v14 = *(v12 + 352);
  sub_1000D32B0();
  sub_1000D3494(v15);
  swift_willThrow();
  v16 = sub_10000D4B8(22);
  sub_1001AC540(v16, v17, v18);

  sub_100003118();
  sub_1000050D8();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1000CD234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();
  v13 = *(v12 + 328);

  v14 = *(v12 + 368);
  sub_1000D32B0();
  sub_1000D3494(v15);
  swift_willThrow();
  v16 = sub_10000D4B8(22);
  sub_1001AC540(v16, v17, v18);

  sub_100003118();
  sub_1000050D8();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1000CD2EC()
{
  sub_100004194();
  v1[16] = v2;
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[19] = v3;
  sub_100003B78(v3);
  v1[20] = v4;
  v6 = *(v5 + 64);
  v1[21] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[22] = v7;
  sub_100003B78(v7);
  v1[23] = v8;
  v10 = *(v9 + 64);
  v1[24] = sub_100003FA8();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000CD3E8()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  sub_10000A1F0();
  v7 = sub_1000D3384();
  v0[8] = v3;
  *(v7 + 16) = xmmword_1002329D0;
  v0[11] = v2;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  v12 = v0[23];
  v11 = v0[24];
  v24 = v0[22];
  v13 = v0[16];
  sub_100008754();

  sub_100004118(v0 + 8);
  LogInterpolation.init(stringLiteral:)();
  sub_10000C4FC(v13, v13[3]);
  v14 = type metadata accessor for AccountIdentity();
  v0[15] = v14;
  sub_100007914(v0 + 12);
  sub_10000B7EC(v14);
  v16 = *(v15 + 16);
  sub_100003594();
  v17();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 12), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v12 + 8))(v11, v24);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v0[25] = qword_1003106E8;
  v18 = sub_100004A58();
  sub_100008F38(v18, v19);
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  sub_100010F88(v20);
  sub_100003128();

  return sub_10000D3F0(v21);
}

uint64_t sub_1000CD650()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 208);
  *v3 = *v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CD750()
{
  sub_100004194();
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 232) = v2;
  *v2 = v3;
  v4 = sub_10000BFD4(v2);

  return sub_10000ACF8(v4, v5);
}

uint64_t sub_1000CD7E4()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CD8DC()
{
  sub_100004194();
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  static Date.now.getter();
  v3 = sub_10000AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CD9CC()
{
  sub_100007F3C();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[21];

  v5 = sub_100004A58();
  sub_1001AC540(v5, v6, 2);

  sub_100003844();

  return v7();
}

uint64_t sub_1000CDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v11 = v10[49];
  v12 = v10[46];
  v14 = v10[42];
  v13 = v10[43];
  v16 = v10[38];
  v15 = v10[39];
  v17 = v10[37];
  v18 = v10[34];

  sub_100002E08();
  v19 = v10[55];
  sub_1000041E0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000CDB00()
{
  sub_100004194();
  *(v1 + 288) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 208) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 216) = v4;
  sub_100003B78(v4);
  *(v1 + 224) = v5;
  v7 = *(v6 + 64);
  *(v1 + 232) = sub_100003FA8();
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  *(v1 + 240) = sub_100003FA8();
  v11 = type metadata accessor for Log();
  *(v1 + 248) = v11;
  sub_100003B78(v11);
  *(v1 + 256) = v12;
  v14 = *(v13 + 64);
  *(v1 + 264) = sub_100003FA8();
  v15 = sub_10000EF80();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000CDC20()
{
  v4 = *(v1 + 264);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v7 = type metadata accessor for LogInterpolation();
  sub_100003B78(v7);
  v9 = *(v8 + 72);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3420(v10, xmmword_1002329D0);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000D32FC();

  sub_100004118(v0);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  *(v1 + 152) = &type metadata for Bool;
  *(v1 + 128) = v3;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10000AE08();
  v17 = sub_100004E7C(v14, v15, v16);
  sub_100013C28(v17);
  LogInterpolation.init(stringInterpolation:)();
  *(v1 + 184) = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  *(v1 + 160) = v6;
  v18 = v6;
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AE08();
  sub_100004E7C(v19, v20, v21);
  Log.default(_:)();

  (*(v2 + 8))();
  v22 = [v18 dsid];
  v23 = [v22 unsignedLongLongValue];

  AccountIdentity.DSID.init(_:)();
  sub_1000D35E4();
  v24 = sub_1000048DC();
  v25(v24);
  if (!*(v1 + 80))
  {
    sub_100004E7C(v23, &qword_1002DB958, &qword_100232B60);
    v29 = *(v1 + 264);
    v30 = *(v1 + 232);
    v31 = *(v1 + 240);

    sub_100003844();
    sub_1000D3404();

    __asm { BRAA            X1, X16 }
  }

  sub_100004F24();
  v26 = swift_task_alloc();
  *(v1 + 272) = v26;
  *v26 = v1;
  sub_1000D34F8(v26);
  sub_1000D3404();

  return sub_1000CC670();
}

uint64_t sub_1000CDF30()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CE028()
{
  sub_100004194();
  sub_100004118(v0 + 2);
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];

  sub_100003844();

  return v4();
}

uint64_t sub_1000CE09C()
{
  sub_100007F3C();
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  sub_100004118(v0 + 2);

  sub_100002E08();
  v5 = v0[35];

  return v4();
}

uint64_t sub_1000CE140(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000CDB00();
}

uint64_t sub_1000CE20C()
{
  sub_100004194();
  *(v1 + 288) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 208) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 216) = v4;
  sub_100003B78(v4);
  *(v1 + 224) = v5;
  v7 = *(v6 + 64);
  *(v1 + 232) = sub_100003FA8();
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  *(v1 + 240) = sub_100003FA8();
  v11 = type metadata accessor for Log();
  *(v1 + 248) = v11;
  sub_100003B78(v11);
  *(v1 + 256) = v12;
  v14 = *(v13 + 64);
  *(v1 + 264) = sub_100003FA8();
  v15 = sub_10000EF80();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000CE32C()
{
  v4 = *(v1 + 264);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v7 = type metadata accessor for LogInterpolation();
  sub_100003B78(v7);
  v9 = *(v8 + 72);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3420(v10, xmmword_1002329D0);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000D32FC();

  sub_100004118(v0);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v13._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  *(v1 + 152) = &type metadata for Bool;
  *(v1 + 128) = v3;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10000AE08();
  v17 = sub_100004E7C(v14, v15, v16);
  sub_100013C28(v17);
  LogInterpolation.init(stringInterpolation:)();
  *(v1 + 184) = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  *(v1 + 160) = v6;
  v18 = v6;
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AE08();
  sub_100004E7C(v19, v20, v21);
  Log.default(_:)();

  (*(v2 + 8))();
  v22 = [v18 dsid];
  v23 = [v22 unsignedLongLongValue];

  AccountIdentity.DSID.init(_:)();
  sub_1000D35E4();
  v24 = sub_1000048DC();
  v25(v24);
  if (!*(v1 + 80))
  {
    sub_100004E7C(v23, &qword_1002DB958, &qword_100232B60);
    v29 = *(v1 + 264);
    v30 = *(v1 + 232);
    v31 = *(v1 + 240);

    sub_100003844();
    sub_1000D3404();

    __asm { BRAA            X1, X16 }
  }

  sub_100004F24();
  v26 = swift_task_alloc();
  *(v1 + 272) = v26;
  *v26 = v1;
  sub_1000D34F8(v26);
  sub_1000D3404();

  return sub_1000CC670();
}

uint64_t sub_1000CE63C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CE754(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000CE20C();
}

uint64_t sub_1000CE820()
{
  sub_100004194();
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[29] = v3;
  sub_100003B78(v3);
  v1[30] = v4;
  v6 = *(v5 + 64);
  v1[31] = sub_100003FA8();
  v7 = type metadata accessor for AccountIdentity.DSID();
  v1[32] = v7;
  sub_100003B78(v7);
  v1[33] = v8;
  v10 = *(v9 + 64);
  v1[34] = sub_100003FA8();
  v11 = type metadata accessor for Log();
  v1[35] = v11;
  sub_100003B78(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = sub_100003FA8();
  v15 = sub_10000EF80();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000CE968()
{
  v1 = v0[37];
  v2 = v0[27];
  v3 = v0[28];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  sub_10000AA9C();
  v7 = sub_10000DB58();
  v0[18] = v2;
  v31 = (v0 + 13);
  *(v7 + 16) = xmmword_1002329D0;
  v0[21] = v3;
  v8 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = v0[36];
  v12 = v0[37];
  v30 = v0[35];
  v13 = v0[26];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 18);
  LogInterpolation.init(stringLiteral:)();
  v0[25] = &type metadata for UInt64;
  v0[22] = v13;
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 22), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v11 + 8))(v12, v30);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v14 = v0[33];
  v15 = v0[34];
  v16 = v0[32];
  v17 = v0[28];
  v18 = v0[26];
  v0[38] = qword_1003106E8;
  sub_100008F38(0xD00000000000001BLL, 0x8000000100273490);
  AccountIdentity.DSID.init(_:)();
  sub_100005DB0();
  (*(v14 + 8))(v15, v16);
  if (v0[16])
  {
    sub_10000601C(v31, (v0 + 8));
    v19 = swift_task_alloc();
    v0[39] = v19;
    *v19 = v0;
    v19[1] = sub_1000CECCC;
    v20 = v0[27];

    return sub_10000D3F0((v0 + 8));
  }

  else
  {
    sub_100004E7C(v31, &qword_1002DB958, &qword_100232B60);
    v22 = v0[37];
    v23 = v0[38];
    v24 = v0[34];
    v25 = v0[31];
    v26 = sub_10000D4B8(27);
    sub_1001AC540(v26, v27, v28);

    sub_100003844();

    return v29();
  }
}

uint64_t sub_1000CECCC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 312);
  *v3 = *v1;
  *(v2 + 320) = v6;
  *(v2 + 328) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CEDCC()
{
  sub_100004194();
  v1 = *(*(v0 + 216) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 336) = v2;
  *v2 = v3;
  v4 = sub_10000BFD4(v2);

  return sub_10000ACF8(v4, v5);
}

uint64_t sub_1000CEE60()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 344) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CEF58()
{
  sub_100004194();
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  static Date.now.getter();
  v3 = sub_10000AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CF060()
{
  sub_100007F3C();
  v1 = v0[40];

  sub_100004118(v0 + 8);
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[31];
  sub_100002860();
  v6 = sub_10000D4B8(27);
  sub_1001AC540(v6, v7, v8);

  sub_100003844();

  return v9();
}

uint64_t sub_1000CF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = *(v11 + 328);
  sub_10000A7FC();
  sub_100004118((v11 + 64));
  sub_1001252AC(v12, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v13 = sub_10000D4B8(27);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000041E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000CF1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = v11[40];

  v13 = v11[43];
  sub_10000A7FC();
  sub_100004118(v11 + 8);
  sub_1001252AC(v13, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v14 = sub_10000D4B8(27);
  sub_1001AC540(v14, v15, v16);

  sub_100003118();
  sub_1000041E0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1000CF27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = v11[40];

  v13 = v11[44];
  sub_10000A7FC();
  sub_100004118(v11 + 8);
  sub_1001252AC(v13, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v14 = sub_10000D4B8(27);
  sub_1001AC540(v14, v15, v16);

  sub_100003118();
  sub_1000041E0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1000CF3C0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000CF47C;

  return sub_1000CE820();
}

uint64_t sub_1000CF47C()
{
  sub_1000D354C();
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_1000D32C8();

    (*(v9 + 16))(v9, v1);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v10 = v8[1];
  sub_10000AD14();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000CF5E8()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity.DSID();
  v1[23] = v3;
  sub_100003B78(v3);
  v1[24] = v4;
  v6 = *(v5 + 64);
  v1[25] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[26] = v7;
  sub_100003B78(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = sub_100003FA8();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000CF6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[28];
  v21 = v19[21];
  v22 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v23 = type metadata accessor for LogInterpolation();
  sub_100003B78(v23);
  v25 = *(v24 + 72);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v26, xmmword_1002329D0);
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v22;
  v31 = v22;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v32 = sub_1000D33B4();
  v33(v32);
  v34 = [v30 dsid];
  v35 = [v34 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v36 = sub_1000048DC();
  v37(v36);
  if (v19[10])
  {
    sub_100004F24();
    v38 = swift_task_alloc();
    v19[29] = v38;
    *v38 = v19;
    sub_1000D350C(v38);
    sub_1000D32C8();
    sub_100008A70();

    return sub_1000CFB2C();
  }

  else
  {
    sub_100004E7C(v35, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000CF95C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CFA54()
{
  sub_100004194();
  sub_100004118((v0 + 16));
  sub_1000D3444();

  sub_100003844();

  return v1();
}

uint64_t sub_1000CFAB8()
{
  sub_100004194();
  v1 = v0[28];
  v2 = v0[25];
  sub_100004118(v0 + 2);

  sub_100002E08();
  v4 = v0[30];

  return v3();
}

uint64_t sub_1000CFB2C()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = type metadata accessor for Log();
  v1[13] = v3;
  sub_100003B78(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CFBDC()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  sub_10000A1F0();
  v7 = sub_1000D3384();
  v0[2] = v3;
  *(v7 + 16) = xmmword_1002329D0;
  v0[5] = v2;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = v0[14];
  v11 = v0[15];
  v22 = v0[13];
  v13 = v0[10];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  sub_10000C4FC(v13, v13[3]);
  sub_1000D33A8();
  v14 = type metadata accessor for AccountIdentity();
  v0[9] = v14;
  sub_100007914(v0 + 6);
  sub_10000B7EC(v14);
  (*(v15 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v12 + 8))(v11, v22);
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_1000CFE30;
  v17 = v0[10];
  v18 = v0[11];
  sub_100003128();

  return sub_10000D3F0(v19);
}

uint64_t sub_1000CFE30()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_1000037E8();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  *(v10 + 136) = v3;
  *(v10 + 144) = v0;

  if (v0)
  {
    v11 = sub_1000D00B4;
    v12 = 0;
  }

  else
  {
    v11 = sub_1000CFF38;
    v12 = v3;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000CFF38()
{
  sub_100007F3C();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_1000C282C(*(v0 + 80));
  *(v0 + 152) = v2;
  sub_10000381C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CFFBC()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_accountDataActors);
  *(v0 + 160) = v1;
  return sub_100007620(sub_1000CFFE4, v1);
}

uint64_t sub_1000CFFE4()
{
  sub_100004194();
  v1 = *(v0 + 160);
  v2 = sub_10000C4FC(*(v0 + 80), *(*(v0 + 80) + 24));
  sub_1000D2E14(v2);
  v3 = sub_10000EF80();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0050()
{
  sub_100004194();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  sub_100003844();

  return v3();
}

uint64_t sub_1000D00B4()
{
  sub_100007F3C();
  v1 = v0[15];
  sub_1001252AC(v0[18], (v0[11] + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();

  sub_100002E08();

  return v2();
}

uint64_t sub_1000D013C()
{
  sub_100007F3C();
  v1 = v0[17];

  v2 = v0[15];
  sub_1001252AC(v0[19], (v0[11] + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();

  sub_100002E08();

  return v3();
}

uint64_t sub_1000D01EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000D02B0;

  return sub_1000CF5E8();
}

uint64_t sub_1000D02B0()
{
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_100008D64();
    v12(v11, v10);
  }

  else
  {
    v13 = sub_100008D64();
    v14(v13, 0);
  }

  _Block_release(v4[4]);
  sub_1000D33F4();

  return v15();
}

uint64_t sub_1000D0428()
{
  sub_100004194();
  *(v1 + 280) = v2;
  *(v1 + 160) = v3;
  *(v1 + 168) = v0;
  *(v1 + 176) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 184) = v4;
  sub_100003B78(v4);
  *(v1 + 192) = v5;
  v7 = *(v6 + 64);
  *(v1 + 200) = sub_100003FA8();
  v8 = type metadata accessor for Log();
  *(v1 + 208) = v8;
  sub_100003B78(v8);
  *(v1 + 216) = v9;
  v11 = *(v10 + 64);
  *(v1 + 224) = sub_100003FA8();
  v12 = sub_10000EF80();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000D0528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[28];
  v21 = v19[21];
  v22 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v23 = type metadata accessor for LogInterpolation();
  sub_100003B78(v23);
  v25 = *(v24 + 72);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v26, xmmword_1002329D0);
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v22;
  v31 = v22;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v32 = sub_1000D33B4();
  v33(v32);
  v34 = [v30 dsid];
  v35 = [v34 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v36 = sub_1000048DC();
  v37(v36);
  if (v19[10])
  {
    sub_100004F24();
    v38 = swift_task_alloc();
    v19[29] = v38;
    *v38 = v19;
    sub_1000D350C(v38);
    sub_1000D32C8();
    sub_100008A70();

    return sub_10000D3F0(v39);
  }

  else
  {
    sub_100004E7C(v35, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000D07A0()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_1000037E8();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  *(v10 + 240) = v3;
  *(v10 + 248) = v0;

  if (v0)
  {
    v11 = sub_1000D0BCC;
    v12 = 0;
  }

  else
  {
    v11 = sub_1000D08A8;
    v12 = v3;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000D08A8()
{
  sub_100007F3C();
  v1 = v0[30];
  v2 = v0[31];
  sub_1000C2330();
  v0[32] = v2;
  sub_10000381C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0928()
{
  sub_100007F3C();
  if (*(v0 + 280) == 1)
  {
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 264) = v1;
    *v1 = v2;
    sub_1000D350C(v1);

    return sub_1000CD2EC();
  }

  else
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 168);
    sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10022E400;
    sub_100007974(v0 + 16, v6 + 32);
    sub_1000D0D14();

    sub_100004118((v0 + 16));
    sub_1000D3444();

    sub_100003844();

    return v7();
  }
}

uint64_t sub_1000D0A68()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D0B60()
{
  sub_100004194();
  v1 = *(v0 + 240);

  sub_100004118((v0 + 16));
  sub_1000D3444();

  sub_100003844();

  return v2();
}

uint64_t sub_1000D0BCC()
{
  sub_100007F3C();
  v1 = *(v0 + 248);
  sub_1000041AC();

  sub_100002E08();

  return v2();
}

uint64_t sub_1000D0C34()
{
  sub_100007F3C();
  v1 = *(v0 + 240);

  v2 = *(v0 + 256);
  sub_1000041AC();

  sub_100002E08();

  return v3();
}

uint64_t sub_1000D0CA4()
{
  sub_100007F3C();
  v1 = *(v0 + 240);

  v2 = *(v0 + 272);
  sub_1000041AC();

  sub_100002E08();

  return v3();
}

void sub_1000D0D14()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v6 = sub_1000030B8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - v9;
  v28 = type metadata accessor for Log();
  v10 = sub_100003724(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v17 = v16 - v15;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_1000D33A8();
  v18 = type metadata accessor for LogInterpolation();
  sub_100003B78(v18);
  v20 = *(v19 + 72);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v31 = ObjectType;
  v30[0] = v1;
  v21 = v1;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v30);
  LogInterpolation.init(stringLiteral:)();
  v31 = sub_100099DF4(&qword_1002DBBD0, &qword_100232E58);
  v30[0] = v3;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v30, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v12 + 8))(v17, v28);
  v24 = type metadata accessor for TaskPriority();
  v25 = v29;
  sub_100002728(v29, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v21;
  v26[5] = v3;
  v27 = v21;

  sub_1000D12F8(0, 0, v25, &unk_100232E68, v26);

  sub_1000027F8();
}

uint64_t sub_1000D1020(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_10000F3C0();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;
  v11 = a1;
  v12 = sub_1000050CC();

  return sub_100004754(v12, v13);
}

uint64_t sub_1000D10A0(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000D0428();
}

uint64_t sub_1000D116C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1208;

  return sub_100008590();
}

uint64_t sub_1000D1208()
{
  sub_100004194();
  sub_1000030F8();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_100004504();
  *v5 = v4;

  if (!v0)
  {
  }

  sub_100002E08();

  return v6();
}

uint64_t sub_1000D12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_1000D31EC(a3, v23 - v10, &qword_1002DB950, &qword_100232E50);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100004DFC(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100004E7C(v11, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);

      return v21;
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

  sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_1000D1588()
{
  sub_100004168();
  ObjectType = swift_getObjectType();
  v54 = type metadata accessor for AccountIdentity();
  v2 = sub_100003724(v54);
  v50 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v53 = v7 - v6;
  v52 = type metadata accessor for AccountIdentity.DSID();
  v8 = sub_100003724(v52);
  v49 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v14 = v13 - v12;
  v51 = type metadata accessor for Log();
  v15 = sub_100003724(v51);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v22 = v21 - v20;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_1000D33A8();
  v23 = type metadata accessor for LogInterpolation();
  sub_100003B78(v23);
  v25 = *(v24 + 72);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v64[0] = ObjectType;
  v62 = v0;
  v0;
  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v62);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v17 + 8))(v22, v51);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v28 = qword_1003106E8;
  sub_100008F38(0xD000000000000011, 0x8000000100273280);
  sub_10009AD10();
  v30 = *(v29 + 16);
  if (v30)
  {
    v62 = 2;
    v31 = v29 + 32;
    v63 = 0u;
    memset(v64, 0, 28);
    do
    {
      sub_100007974(v31, v60);
      sub_10000C4FC(v60, v61);
      sub_100003F9C();
      v32 = type metadata accessor for AMPAccount();
      v58 = v32;
      v59 = &off_1002B4510;
      sub_100007914(v57);
      sub_100005C78();
      sub_10000F1A0(v28, v33);
      LODWORD(v32) = [*(sub_10000C4FC(v57 v58) + *(v32 + 20))];
      AccountIdentity.dsid.getter();
      AccountIdentity.DSID.value.getter();
      (*(v49 + 8))(v14, v52);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      if (v32)
      {
        v55 = v34;
        v56 = v35;

        v37._countAndFlagsBits = 0x786F62646E61732ELL;
        v37._object = 0xE800000000000000;
        String.append(_:)(v37);

        v34 = v55;
        v36 = v56;
      }

      sub_10000F598(v34, v36);
      v39 = v38;
      v41 = v40;

      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v28 = sub_1000102EC(0xD000000000000027);
      v44 = v43;
      sub_100004118(v57);
      v45 = sub_10000C4FC(v60, v61);
      (*(v50 + 16))(v53, v45, v54);
      sub_1000CAF20(v53, v28, v44, &v62);

      (*(v50 + 8))(v53, v54);
      sub_100004118(v60);
      v31 += 40;
      --v30;
    }

    while (v30);
  }

  sub_1000D0D14();

  v46 = sub_10000D4B8(17);
  sub_1001AC540(v46, v47, v48);
  sub_1000027F8();
}

uint64_t sub_1000D1B7C()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity.DSID();
  v1[23] = v3;
  sub_100003B78(v3);
  v1[24] = v4;
  v6 = *(v5 + 64);
  v1[25] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[26] = v7;
  sub_100003B78(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = sub_100003FA8();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000D1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[28];
  v21 = v19[21];
  v22 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v23 = type metadata accessor for LogInterpolation();
  sub_100003B78(v23);
  v25 = *(v24 + 72);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v26, xmmword_1002329D0);
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v22;
  v31 = v22;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v32 = sub_1000D33B4();
  v33(v32);
  v34 = [v30 dsid];
  v35 = [v34 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v36 = sub_1000048DC();
  v37(v36);
  if (v19[10])
  {
    sub_100004F24();
    v38 = swift_task_alloc();
    v19[29] = v38;
    *v38 = v19;
    sub_1000D350C(v38);
    sub_1000D32C8();
    sub_100008A70();

    return sub_1000D1FE8();
  }

  else
  {
    sub_100004E7C(v35, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000D1EF0()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D1FE8()
{
  sub_100004194();
  v1[16] = v2;
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[19] = v3;
  sub_100003B78(v3);
  v1[20] = v4;
  v6 = *(v5 + 64);
  v1[21] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[22] = v7;
  sub_100003B78(v7);
  v1[23] = v8;
  v10 = *(v9 + 64);
  v1[24] = sub_100003FA8();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000D20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  if (static DeviceDetails.deviceIsRunningInternalBuild()())
  {
    v13 = v12[24];
    v15 = v12[17];
    v14 = v12[18];
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v16 = type metadata accessor for LogInterpolation();
    sub_100003B78(v16);
    v18 = *(v17 + 72);
    sub_10000A1F0();
    *(sub_1000D3384() + 16) = xmmword_1002329D0;
    v12[11] = v14;
    v12[8] = v15;
    v19 = v15;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = v12[23];
    v33 = v12[24];
    v35 = v12[22];
    v36 = v12[16];
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v12 + 8);
    LogInterpolation.init(stringLiteral:)();
    sub_10000C4FC(v36, v36[3]);
    sub_1000D33A8();
    v37 = type metadata accessor for AccountIdentity();
    v12[15] = v37;
    sub_100007914(v12 + 12);
    sub_10000B7EC(v37);
    (*(v38 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E7C((v12 + 12), &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v34 + 8))(v33, v35);
    if (qword_1002DA5B8 != -1)
    {
      sub_100006CCC();
    }

    v12[25] = qword_1003106E8;
    v39 = sub_100004A58();
    sub_100008F38(v39, v40);
    v41 = swift_task_alloc();
    v12[26] = v41;
    *v41 = v12;
    sub_100010F88(v41);
    sub_100003128();

    return sub_10000D3F0(v42);
  }

  else
  {
    v22 = v12[24];
    v23 = v12[21];

    sub_100003844();
    sub_100003128();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_1000D23A4()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 208);
  *v3 = *v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D24A4()
{
  sub_100004194();
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 232) = v2;
  *v2 = v3;
  v4 = sub_10000BFD4(v2);

  return sub_10000ACF8(v4, v5);
}

uint64_t sub_1000D2538()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D2630()
{
  sub_100004194();
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  static Date.now.getter();
  v3 = sub_10000AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D2690()
{
  sub_100007F3C();
  sub_1000D3538();
  sub_1000BD95C();
  v0 = sub_1000D3524();
  v1(v0);
  sub_10000381C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000D2724()
{
  sub_100004194();
  v1 = v0[27];
  v2 = v0[25];

  v3 = sub_100004A58();
  sub_1001AC540(v3, v4, 2);
  v5 = v0[24];
  v6 = v0[21];

  sub_100003844();

  return v7();
}

uint64_t sub_1000D27A0()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = *(v0 + 224);
  sub_1000109C4();
  sub_1000D3494(v2);
  swift_willThrow();
  v3 = sub_100004A58();
  sub_1001AC540(v3, v4, 2);

  sub_100003118();
  sub_10000AD14();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000D2830()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = *(v0 + 216);

  v2 = *(v0 + 240);
  sub_1000109C4();
  sub_1000D3494(v3);
  swift_willThrow();
  v4 = sub_100004A58();
  sub_1001AC540(v4, v5, 2);

  sub_100003118();
  sub_10000AD14();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000D28C8()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = *(v0 + 216);

  v2 = *(v0 + 248);
  sub_1000109C4();
  sub_1000D3494(v3);
  swift_willThrow();
  v4 = sub_100004A58();
  sub_1001AC540(v4, v5, 2);

  sub_100003118();
  sub_10000AD14();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000D2980(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000D3280;

  return sub_1000D1B7C();
}

id DaemonAutoBugCaptureServiceTrampoline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D2AF0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D2B4C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D2BDC()
{
  sub_1000D354C();
  sub_10000DB4C();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_10000DEA0();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1000C6A64;
  sub_10000AD14();

  return sub_1000D116C();
}

uint64_t sub_1000D2C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D2CF0()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2D84()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D2E14(uint64_t a1)
{
  v2 = type metadata accessor for AccountIdentity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AMPAccount();
  v13 = &off_1002B4510;
  v7 = sub_100007914(v11);
  sub_10000F1A0(a1, v7);
  v8 = sub_10000C4FC(v11, v12);
  (*(v3 + 16))(v6, v8, v2);
  swift_beginAccess();
  sub_1001AE250();
  (*(v3 + 8))(v6, v2);
  swift_endAccess();

  return sub_100004118(v11);
}

uint64_t sub_1000D2F84()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D3014()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D30A8()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000F3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000D30E8()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D317C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D31EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000048AC(a1, a2, a3, a4);
  sub_100003BF0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return v4;
}

uint64_t sub_1000D3234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000048AC(a1, a2, a3, a4);
  sub_100003BF0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return v4;
}

void sub_1000D32B0()
{
  v1 = v0[39];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v6 = v0[25];
}

uint64_t sub_1000D32D4()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_1000D32FC()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);
  v4 = *(v0 + 224);
  v12 = *(v0 + 216);
  v10 = *(v0 + 232);
  v11 = *(v0 + 208);
  v5 = *(v0 + 288);
  v6 = *(v0 + 192);

  return static LogInterpolation.prefix(_:_:)();
}

id sub_1000D3340(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

uint64_t sub_1000D3364()
{

  return swift_getErrorValue();
}

uint64_t sub_1000D3384()
{

  return swift_allocObject();
}

void sub_1000D33C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t sub_1000D33F4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_1000D3420(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

uint64_t sub_1000D3444()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
}

uint64_t sub_1000D345C()
{

  return AccountIdentity.DSID.init(_:)();
}

uint64_t sub_1000D3478()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000D3494@<X0>(uint64_t a1@<X8>)
{

  return sub_1001252AC(v2, (a1 + v1));
}

uint64_t sub_1000D34AC()
{

  return swift_allocObject();
}

uint64_t sub_1000D34F8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 200);
  v4 = *(v2 + 288);
  return result;
}

uint64_t sub_1000D350C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 168);
  return result;
}

uint64_t sub_1000D3524()
{
  v1[31] = v0;
  result = v1[21];
  v3 = v1[19];
  v4 = *(v1[20] + 8);
  return result;
}

void sub_1000D3538()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[21];
}

void sub_1000D35E4()
{

  sub_100005DB0();
}

uint64_t sub_1000D3604()
{

  return swift_task_alloc();
}

__n128 sub_1000D361C@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D64D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    result = v8;
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
  }

  return result;
}

uint64_t sub_1000D36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v259 = a5;
  v255 = a4;
  v249 = a2;
  v233 = a1;
  v234 = a6;
  v267 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v7 = sub_100003724(v267);
  v266 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  v13 = sub_100008280(v12 - v11);
  v14 = type metadata accessor for TSDataSyncDatasetSchedule(v13);
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  sub_100008280(v19 - v18);
  v20 = type metadata accessor for Date();
  v21 = sub_100003724(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_10000306C();
  sub_10000A1C0(v27 - v26);
  v28 = sub_100099DF4(&qword_1002DBC18, &qword_100232F68);
  v29 = sub_1000030B8(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000308C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_10000D478();
  sub_10000A1C0(v37);
  v38 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  v39 = sub_1000030B8(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v42);
  sub_10000D478();
  v44 = sub_100008280(v43);
  v45 = type metadata accessor for TSDataSyncTriggerEvent(v44);
  v46 = sub_10000307C(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_10000D478();
  sub_10000A1C0(v51);
  v52 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v53 = sub_1000030B8(v52);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = sub_100008280(&v223 - v56);
  v257 = type metadata accessor for TSDataSyncDatasetState(v57);
  v58 = sub_10000307C(v257);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  sub_10000306C();
  sub_100008280(v62 - v61);
  v232 = type metadata accessor for URL();
  v63 = sub_100003724(v232);
  v231 = v64;
  v66 = *(v65 + 64);
  __chkstk_darwin(v63);
  sub_10000306C();
  v69 = sub_100008280(v68 - v67);
  v70 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v69);
  v71 = sub_1000030B8(v70);
  v73 = *(v72 + 64);
  __chkstk_darwin(v71);
  sub_10000306C();
  sub_10000A1C0(v75 - v74);
  sub_1000D6484();
  sub_100013C58();
  v76 = sub_1000DBA68();
  sub_100003C04(v76, &v279);
  v77 = sub_1000DBA68();
  sub_100003C04(v77, &v280);
  v246 = v45;
  v238 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v78 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v79 = Dictionary.init(dictionaryLiteral:)();
  sub_100003C04(v79, &v274 + 8);
  v80 = sub_1000DBA68();
  sub_100003C04(v80, &v274);
  v237 = sub_1000DBA68();
  sub_100013C58();
  v247 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v81 = Dictionary.init(dictionaryLiteral:)();
  sub_100003C04(v81, &v268);
  v82 = v34;
  v228 = v20;
  v83 = v259;
  v235 = Dictionary.init(dictionaryLiteral:)();
  v84 = *(a3 + 56);
  v251 = a3 + 56;
  v85 = *(a3 + 32);
  sub_1000DB9A4();
  v268 = v87 & v86;
  v250 = (v88 + 63) >> 6;
  v223 = (v23 + 16);
  v248 = a3;

  v89 = 0;
  v245 = v14;
  v254 = v34;
LABEL_2:
  v90 = v268;
  if (v268)
  {
    v91 = v14;
    v92 = v89;
    v93 = v253;
    v94 = v252;
LABEL_9:
    v268 = v90;
    v95 = *(v248 + 48);
    v258 = v92;
    v96 = (v95 + ((v92 << 10) | (16 * __clz(__rbit64(v90)))));
    v97 = *v96;
    v98 = v96[1];

    swift_isUniquelyReferenced_nonNull_native();
    sub_10000CFBC();
    sub_1000029E8();
    v99 = v276;
    sub_10000B358(&v280);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000CFBC();
    sub_1000029E8();
    v100 = v276;
    v101 = *(v249 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
    v102 = sub_1000DBA50();
    sub_1001ABF58(v102, v103, v104, v105);
    v106 = sub_100013DDC();
    v108 = sub_100004DFC(v106, v107, v257);
    v269 = v98;
    v271 = v97;
    if (v108 == 1)
    {
      v260 = v99;
      sub_100004E24(v94, &qword_1002DBC28, &qword_100232F70);
      v109 = v91;
      goto LABEL_25;
    }

    v110 = v256;
    sub_1000D6584(v94, v256);
    v111 = *v110;
    v112 = v110[1];

    swift_isUniquelyReferenced_nonNull_native();
    *&v276 = v99;
    v113 = v100;
    v100 = &v276;
    sub_1000DB968();
    v260 = v276;
    v114 = v110[4];
    v115 = v110[5];

    swift_isUniquelyReferenced_nonNull_native();
    *&v276 = v113;
    sub_1000DB968();
    v263 = v276;
    v116 = *(v255 + *(type metadata accessor for TSDataSyncDatasetGroupSchedule(0) + 20));
    v117 = v241;
    v118 = sub_1000DBA50();
    sub_1001ABF74(v118, v119, v116, v120);
    v121 = sub_100013DDC();
    v109 = v91;
    if (sub_100004DFC(v121, v122, v91) == 1)
    {
      sub_100004E24(v117, &qword_1002DBC18, &qword_100232F68);
      v123 = sub_10000B358(&v271);
      sub_100002728(v123, 1, 1, v246);
    }

    else
    {
      v100 = v239;
      sub_1000D6980(v117 + *(v91 + 32), v239, &qword_1002DBC20, &unk_100234B00);
      sub_100003854();
      sub_1000D65DC(v117, v124);
      if (sub_100004DFC(v100, 1, v246) != 1)
      {
        sub_10000AF7C();
        v125 = v224;
        sub_1000D6584(v100, v224);
        sub_1000D652C(v125, v225);

        sub_10000B358(&v270);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10000BFE8();
        sub_10014FD08();

        sub_100004558(v276);
        sub_1000D65DC(v125, v126);
LABEL_16:
        v83 = v257;
        v127 = v256;
        v128 = *(v256 + *(v257 + 44));
        if (v128)
        {
          sub_10000B358(&v274 + 8);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000BFE8();
          v129 = v269;
          sub_10014FC3C();
          v244 = v276;
          *&v276 = 0;
          *(&v276 + 1) = 0xE000000000000000;
          v273 = *(v127 + *(v83 + 60));
          DefaultStringInterpolation.appendInterpolation<A>(optional:)();
          v130._countAndFlagsBits = 45;
          v130._object = 0xE100000000000000;
          String.append(_:)(v130);
          v131 = v127 + *(v83 + 56);
          v98 = v129;
          v132 = *v131;
          LOBYTE(v131) = *(v131 + 8);
          *&v273 = v132;
          BYTE8(v273) = v131;
          DefaultStringInterpolation.appendInterpolation<A>(optional:)();
          v83 = *(&v276 + 1);
          v128 = v276;
          sub_10000B358(&v274);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000BFE8();
          sub_10014FE48();
          v243 = v276;
          sub_1000DB9C0();
        }

        else
        {
          sub_1000DB9C0();
          v98 = v269;
        }

        v133 = sub_1000DBA50();
        sub_1001ABF74(v133, v134, v116, v135);
        if (sub_100004DFC(v93, 1, v91) == 1)
        {
          sub_10000697C();
          sub_100004E24(v93, &qword_1002DBC18, &qword_100232F68);
          v136 = v240;
          sub_100002728(v240, 1, 1, v128);
          v82 = v254;
        }

        else
        {
          v136 = v240;
          sub_1000D6980(v93 + *(v91 + 32), v240, &qword_1002DBC20, &unk_100234B00);
          sub_100003854();
          sub_1000D65DC(v93, v137);
          v138 = sub_100004DFC(v136, 1, v128);
          v82 = v254;
          if (v138 != 1)
          {
            sub_10000AF7C();
            v139 = v136;
            v140 = v226;
            sub_1000D6584(v139, v226);
            v141 = (v140 + *(v128 + 32));
            v142 = v128;
            v143 = *v141;
            v144 = v141[1];

            sub_10000B358(&v269);
            swift_isUniquelyReferenced_nonNull_native();
            sub_10000BFE8();
            v83 = v259;
            v145 = v271;
            sub_10014FE48();
            v237 = v276;
            v146 = *(v140 + *(v142 + 20));
            sub_10000B358(&v268);
            swift_isUniquelyReferenced_nonNull_native();
            sub_10000CFBC();
            sub_10014FB48();
            v236 = v276;
            (*v223)(v227, v140, v228);

            sub_10000B358(&v267);
            swift_isUniquelyReferenced_nonNull_native();
            v147 = sub_10000BFE8();
            sub_10014FA20(v147, v145, v98, v148, v149, v150, v151, v152, v223, v224);
            v100 = v263;

            sub_100004558(v276);
            sub_1000D65DC(v140, v153);
            sub_10000697C();
LABEL_25:
            v154 = *(v255 + *(type metadata accessor for TSDataSyncDatasetGroupSchedule(0) + 20));
            v155 = sub_1000DBA50();
            sub_1001ABF74(v155, v156, v157, v158);
            v159 = sub_100004DFC(v82, 1, v109);
            v263 = v100;
            if (v159 == 1)
            {
              sub_100004E24(v82, &qword_1002DBC18, &qword_100232F68);
            }

            else
            {
              v160 = v242;
              sub_1000D6584(v82, v242);
              v161 = *(v160 + *(v109 + 28));
              sub_10000B358(&v275[16]);
              swift_isUniquelyReferenced_nonNull_native();
              sub_10000CFBC();
              sub_10014FA0C();
              sub_100003854();
              sub_1000D65DC(v160, v162);
              v247 = v276;
            }

            v268 &= v268 - 1;
            v163 = *v83;
            v165 = v163 + 56;
            v164 = *(v163 + 56);
            v166 = *(v163 + 32);
            sub_1000DB9A4();
            v169 = v168 & v167;
            v171 = (v170 + 63) >> 6;

            v172 = 0;
            v173 = v271;
            while (1)
            {
              v174 = v172;
              if (!v169)
              {
                break;
              }

LABEL_33:
              v175 = __clz(__rbit64(v169));
              v169 &= v169 - 1;
              v176 = v265;
              sub_1000D652C(*(v163 + 48) + *(v266 + 72) * (v175 | (v172 << 6)), v265);
              v177 = *(v176 + *(v267 + 24));

              sub_1000D65DC(v176, type metadata accessor for TSDataSyncDatasetGroupConfig);
              v178 = *(v177 + 16);
              if (v178)
              {
                v179 = 0;
                v264 = v178 - 1;
                v180 = 32;
                v261 = v163;
                v262 = v177;
                while (v179 < v178)
                {
                  v270 = v180;
                  v182 = *(v177 + v180 + 16);
                  v181 = *(v177 + v180 + 32);
                  v183 = *(v177 + v180);
                  *&v278[9] = *(v177 + v180 + 41);
                  v277 = v182;
                  *v278 = v181;
                  v276 = v183;
                  v184 = v183 == v173 && *(&v183 + 1) == v98;
                  if (v184 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v185 = v165;
                    v186 = v171;
                    v187 = v179;
                    sub_1000BA2CC(&v276, &v273);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v272 = v78;
                    v189 = sub_10014EB30(v173, v98);
                    v191 = v78[2];
                    v192 = (v190 & 1) == 0;
                    v193 = v191 + v192;
                    if (__OFADD__(v191, v192))
                    {
                      goto LABEL_62;
                    }

                    v194 = v189;
                    v195 = v190;
                    sub_100099DF4(&qword_1002DBC38, &qword_100232F78);
                    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v193))
                    {
                      v196 = sub_10014EB30(v271, v269);
                      if ((v195 & 1) != (v197 & 1))
                      {
                        goto LABEL_64;
                      }

                      v194 = v196;
                      v179 = v187;
                      v173 = v271;
                    }

                    else
                    {
                      v173 = v271;
                      v179 = v187;
                    }

                    v171 = v186;
                    v165 = v185;
                    if (v195)
                    {
                      v78 = v272;
                      v198 = (v272[7] + (v194 << 6));
                      v200 = v198[1];
                      v199 = v198[2];
                      v201 = *v198;
                      *&v275[9] = *(v198 + 41);
                      v274 = v200;
                      *v275 = v199;
                      v273 = v201;
                      v202 = v276;
                      v203 = v277;
                      v204 = *v278;
                      *(v198 + 41) = *&v278[9];
                      v198[1] = v203;
                      v198[2] = v204;
                      *v198 = v202;
                      sub_1000BA304(&v273);
                      v98 = v269;
                      v177 = v262;
                    }

                    else
                    {
                      v78 = v272;
                      v272[(v194 >> 6) + 8] |= 1 << v194;
                      v205 = (v78[6] + 16 * v194);
                      v98 = v269;
                      *v205 = v173;
                      v205[1] = v98;
                      v206 = (v78[7] + (v194 << 6));
                      v207 = *&v278[9];
                      v209 = v277;
                      v208 = *v278;
                      *v206 = v276;
                      v206[1] = v209;
                      v206[2] = v208;
                      *(v206 + 41) = v207;
                      v210 = v78[2];
                      v211 = __OFADD__(v210, 1);
                      v212 = v210 + 1;
                      v177 = v262;
                      if (v211)
                      {
                        goto LABEL_63;
                      }

                      v78[2] = v212;
                    }

                    v163 = v261;
                  }

                  if (v264 == v179)
                  {
                    goto LABEL_34;
                  }

                  v178 = *(v177 + 16);
                  v180 = v270 + 64;
                  ++v179;
                }

                goto LABEL_61;
              }

LABEL_34:
            }

            while (1)
            {
              v172 = v174 + 1;
              if (__OFADD__(v174, 1))
              {
                break;
              }

              if (v172 >= v171)
              {

                v89 = v258;
                v83 = v259;
                v14 = v245;
                v82 = v254;
                goto LABEL_2;
              }

              v169 = *(v165 + 8 * v172);
              ++v174;
              if (v169)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_60;
          }

          sub_10000697C();
        }

        sub_100004E24(v136, &qword_1002DBC20, &unk_100234B00);
        goto LABEL_25;
      }
    }

    sub_100004E24(v100, &qword_1002DBC20, &unk_100234B00);
    goto LABEL_16;
  }

  v93 = v253;
  v94 = v252;
  while (1)
  {
    v92 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v92 >= v250)
    {

      v213 = v229;
      sub_1000D652C(v249, v229);
      v214 = v231;
      v215 = v230;
      v216 = v232;
      (*(v231 + 16))(v230, v233, v232);
      if (*(v83 + 16))
      {
        v217 = *(v83 + 8);
        v218 = *(v83 + 16);
      }

      else
      {
        v217 = 0;
        v218 = 0xE000000000000000;
      }

      v219 = v234;
      sub_1000D6584(v213, v234);
      v220 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
      (*(v214 + 32))(v219 + v220[5], v215, v216);
      v221 = (v219 + v220[6]);
      *v221 = v217;
      v221[1] = v218;
      sub_1000DB94C(v220[7]);
      sub_1000DB94C(v220[8]);
      sub_1000DB94C(v220[9]);
      *(v219 + v220[10]) = v78;
      sub_1000DB94C(v220[11]);
      sub_1000DB94C(v220[12]);
      sub_1000DB94C(v220[13]);
      sub_1000DB94C(v220[14]);
      sub_1000DB94C(v220[15]);
      sub_1000DB94C(v220[16]);
    }

    v90 = *(v251 + 8 * v92);
    ++v89;
    if (v90)
    {
      v91 = v14;
      goto LABEL_9;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D4850(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v2[4] = v3;
  sub_1000030B8(v3);
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v6);
  v8 = *(v7 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4908, 0, 0);
}

uint64_t sub_1000D4908()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_100006CEC();
  sub_1000D652C(v6, v2);
  sub_100007F48();
  sub_1000D6584(v2, v1);
  v7 = *(v4 + 20);
  v8 = type metadata accessor for URL();
  sub_10000307C(v8);
  (*(v9 + 16))(v5, v1 + v7);
  sub_100004A7C();
  sub_1000D65DC(v1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D49E8()
{
  v1 = sub_100003F9C();
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = (v7 - v6);
  v9 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = Dictionary.init(dictionaryLiteral:)();
  sub_100006CEC();
  sub_1000D652C(v0, v15);
  sub_100007F48();
  sub_1000D6584(v15, v8);
  v17 = *v8;
  v18 = v8[1];

  swift_isUniquelyReferenced_nonNull_native();
  sub_10014F648();
  sub_100004A7C();
  sub_1000D65DC(v8, v19);
  return v16;
}

uint64_t sub_1000D4B24()
{
  v285 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v0 = sub_100003724(v285);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_10000308C();
  v284 = (v5 - v6);
  __chkstk_darwin(v7);
  sub_10000D478();
  v283 = v8;
  v9 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v10 = sub_100003724(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = (&v273 - v15);
  v17 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v18 = sub_10000307C(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000306C();
  v23 = v22 - v21;
  v24 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v25 = sub_1000030B8(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_10000306C();
  v30 = v29 - v28;
  v31 = Dictionary.init(dictionaryLiteral:)();
  sub_100006CEC();
  v32 = sub_1000050CC();
  sub_1000D652C(v32, v33);
  sub_100007F48();
  sub_1000D6584(v30, v23);
  v280 = v17;
  v34 = *(v23 + v17[7]);
  sub_100120DB0();
  v36 = sub_10000D4C4(v35);
  sub_1000D6914(v36);
  v286 = 0;
  v275 = v9;
  v276 = v12;
  v274 = v2;
  v37 = v288;
  v38 = v288[2];
  v277 = v23;
  v282 = v16;
  if (v38)
  {
    v39 = v31;
    v290 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v40 = v290;
    v41 = (v37 + 56);
    do
    {
      v42 = *(v41 - 2);
      v44 = *(v41 - 1);
      v43 = *v41;
      sub_10000DEAC(*(v41 - 3));

      sub_10000EFC4(v45);
      v46._countAndFlagsBits = v44;
      v46._object = v43;
      String.append(_:)(v46);

      v47 = v288;
      v48 = v289;
      v290 = v40;
      v50 = v40[2];
      v49 = v40[3];
      if (v50 >= v49 >> 1)
      {
        sub_100007628(v49);
        sub_1000DBA44();
        sub_1001070D0(v52, v53, v54);
        v40 = v290;
      }

      v40[2] = v50 + 1;
      v51 = &v40[2 * v50];
      v51[4] = v47;
      v51[5] = v48;
      v41 += 4;
      --v38;
    }

    while (v38);

    v23 = v277;
    v31 = v39;
    v16 = v282;
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  v288 = v40;
  v55 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
  sub_100010288();
  sub_10000BA04();
  v278 = v56;
  v279 = v55;
  v57 = BidirectionalCollection<>.joined(separator:)();
  v59 = v58;

  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v288 = v31;
    sub_10014F648();
    v31 = v288;
  }

  else
  {

    v61 = sub_10014EB30(0xD00000000000001ALL, 0x8000000100273620);
    if (v62)
    {
      v63 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v288 = v31;
      v65 = *(v31 + 24);
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v65);
      sub_100004F40();
      v66 = *(*(v31 + 56) + 16 * v63 + 8);
      _NativeDictionary._delete(at:)();
    }
  }

  v67 = *(v23 + v280[8]);
  sub_100120DB0();
  v69 = sub_10000D4C4(v68);
  v70 = v286;
  sub_1000D6914(v69);
  if (v70)
  {
    goto LABEL_125;
  }

  v71 = v288;
  v72 = v288[2];
  if (v72)
  {
    v286 = 0;
    v73 = v31;
    v290 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v74 = v290;
    v75 = (v71 + 56);
    do
    {
      v76 = *(v75 - 2);
      v78 = *(v75 - 1);
      v77 = *v75;
      sub_10000DEAC(*(v75 - 3));

      sub_10000EFC4(v79);
      v80._countAndFlagsBits = v78;
      v80._object = v77;
      String.append(_:)(v80);

      v81 = v288;
      v82 = v289;
      v290 = v74;
      v84 = v74[2];
      v83 = v74[3];
      if (v84 >= v83 >> 1)
      {
        sub_100007628(v83);
        sub_1000DBA44();
        sub_1001070D0(v86, v87, v88);
        v74 = v290;
      }

      v74[2] = v84 + 1;
      v85 = &v74[2 * v84];
      v85[4] = v81;
      v85[5] = v82;
      v75 += 4;
      --v72;
    }

    while (v72);

    v23 = v277;
    v31 = v73;
    v16 = v282;
    v70 = v286;
  }

  else
  {

    v74 = _swiftEmptyArrayStorage;
  }

  v288 = v74;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v89)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v288 = v31;
    sub_10000529C();
    v31 = v288;
  }

  else
  {

    v97 = sub_10014EB30(0xD000000000000020, 0x8000000100273640);
    if (v90)
    {
      v98 = v97;
      swift_isUniquelyReferenced_nonNull_native();
      v288 = v31;
      v99 = *(v31 + 24);
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      sub_1000050F4();
      sub_100004F40();
      v100 = *(*(v31 + 56) + 16 * v98 + 8);
      _NativeDictionary._delete(at:)();
    }
  }

  sub_100120CB4(*(v23 + v280[9]), v90, v91, v92, v93, v94, v95, v96, v273, v274, v275, v276, v277, v278, v279, v280, v31, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  v102 = sub_10000D4C4(v101);
  sub_1000D6828(v102);
  if (v70)
  {
    goto LABEL_125;
  }

  v103 = v288;
  v104 = v288[2];
  if (v104)
  {
    v273 = 0;
    v105 = v16 + *(v275 + 48);
    v106 = &v105[*(type metadata accessor for TSDataSyncTriggerEvent(0) + 28)];
    v107 = *(v276 + 80);
    v275 = v103;
    v108 = v103 + ((v107 + 32) & ~v107);
    v286 = v276[9];
    v109 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000D6980(v108, v16, &qword_1002DBC50, &unk_10023B350);
      v110 = v106[1];
      if (v110)
      {
        v111 = *v106;
        v112 = v16[1];
        v288 = *v16;
        v289 = v112;

        sub_10000EFC4(v113);
        v114._countAndFlagsBits = v111;
        v114._object = v110;
        String.append(_:)(v114);
        v115 = v288;
        v116 = v289;
        sub_100004E24(v16, &qword_1002DBC50, &unk_10023B350);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = v109[2];
          sub_10000657C();
          sub_1000101B8();
          v109 = v120;
        }

        v117 = v109[2];
        if (v117 >= v109[3] >> 1)
        {
          sub_1000101B8();
          v109 = v121;
        }

        v109[2] = v117 + 1;
        v118 = &v109[2 * v117];
        v118[4] = v115;
        v118[5] = v116;
        v16 = v282;
      }

      else
      {
        sub_100004E24(v16, &qword_1002DBC50, &unk_10023B350);
      }

      v108 += v286;
      --v104;
    }

    while (v104);

    v23 = v277;
    v70 = v273;
  }

  else
  {

    v109 = _swiftEmptyArrayStorage;
  }

  v288 = v109;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  v122 = v281;
  if (v123)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_100013FE4();
    sub_10000529C();
    v122 = v288;
  }

  else
  {
  }

  v281 = v122;
  v124 = *(v23 + v280[11]);
  sub_100120C18();
  v126 = sub_10000D4C4(v125);
  sub_1000D67BC(v126);
  if (v70)
  {
    goto LABEL_125;
  }

  v127 = 0;
  v128 = v288;
  v129 = (v288 + 6);
  v130 = _swiftEmptyArrayStorage;
  v131 = v288[2];
  v132 = &type metadata for UInt64;
LABEL_44:
  v133 = (v129 + 24 * v127);
  while (v131 != v127)
  {
    if (v127 >= *(v128 + 16))
    {
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    ++v127;
    v134 = v133 + 3;
    v135 = *v133;
    v133 += 3;
    if (v135)
    {
      v286 = v129;
      v136 = *(v134 - 4);
      v288 = *(v134 - 5);
      v289 = v136;
      v137 = swift_bridgeObjectRetain_n();
      sub_10000EFC4(v137);
      v290 = v135;
      v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v138);

      v139 = v288;
      v140 = v289;
      v141 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = v130[2];
        sub_10000657C();
        sub_1000101B8();
        v130 = v146;
      }

      v143 = v130[2];
      v142 = v130[3];
      if (v143 >= v142 >> 1)
      {
        sub_1000DBA1C(v142);
        sub_1000101B8();
        v130 = v147;
      }

      v130[2] = v143 + 1;
      v144 = &v130[2 * v143];
      v144[4] = v139;
      v144[5] = v140;
      v132 = v141;
      v129 = v286;
      goto LABEL_44;
    }
  }

  v288 = v130;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();

  sub_1000DBA30();
  if (v148)
  {
    v149 = v281;
    swift_isUniquelyReferenced_nonNull_native();
    v288 = v149;
    sub_10014F648();
    v150 = v288;
    v151 = v277;
  }

  else
  {

    v151 = v277;
    v150 = v281;
  }

  v281 = v150;
  v152 = *(v151 + v280[12]);
  sub_100120DB0();
  v154 = sub_10000D4C4(v153);
  sub_1000D6914(v154);
  v282 = 0;
  v155 = 0;
  v156 = v288;
  v157 = v288[2];
  v158 = (v288 + 7);
  v286 = _swiftEmptyArrayStorage;
  v276 = v288 + 7;
LABEL_57:
  v159 = (v158 + 32 * v155);
  while (v157 != v155)
  {
    if (v155 >= *(v156 + 16))
    {
      goto LABEL_124;
    }

    v161 = *(v159 - 1);
    v160 = *v159;
    v162 = v161 == 0x6C696E2D6C696ELL && v160 == 0xE700000000000000;
    if (!v162)
    {
      v132 = *(v159 - 3);
      v163 = *(v159 - 2);
      v164 = *(v159 - 1);
      v165 = *v159;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v288 = v132;
        v289 = v163;
        swift_bridgeObjectRetain_n();

        sub_10000EFC4(v166);
        v167._countAndFlagsBits = v161;
        v167._object = v160;
        String.append(_:)(v167);

        v168 = v288;
        v169 = v289;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = *(v286 + 16);
          sub_10000657C();
          sub_1000101B8();
          v286 = v174;
        }

        v132 = *(v286 + 16);
        v170 = *(v286 + 24);
        if (v132 >= v170 >> 1)
        {
          sub_1000DBA1C(v170);
          sub_1000101B8();
          v286 = v175;
        }

        v155 = (v155 + 1);
        v171 = v286;
        *(v286 + 16) = v132 + 1;
        v172 = v171 + 16 * v132;
        *(v172 + 32) = v168;
        *(v172 + 40) = v169;
        v158 = v276;
        goto LABEL_57;
      }
    }

    v159 += 4;
    v155 = (v155 + 1);
  }

  v288 = v286;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();

  sub_1000DBA30();
  if (v176)
  {
    v177 = v281;
    swift_isUniquelyReferenced_nonNull_native();
    v288 = v177;
    v132 = 0xD00000000000001ALL;
    sub_10000C620();
    sub_10014F648();
    sub_1000DBA5C();
    v157 = v277;
  }

  else
  {

    sub_1000DB958();
  }

  v178 = *(v157 + v280[14]);
  sub_100120B98();
  v288 = v179;
  v180 = v282;
  sub_1000D6720(&v288, sub_100122BD0, &qword_1002DBC78, &unk_100238320);
  if (v180)
  {
    goto LABEL_128;
  }

  v181 = v288;
  if (v288[2])
  {
    v286 = 0;
    v290 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v182 = v290;
    v282 = v181;
    v157 = (v181 + 48);
    do
    {
      sub_10000DB74();
      v183._countAndFlagsBits = v181;
      v183._object = 0;
      String.append(_:)(v183);
      v184._countAndFlagsBits = 61;
      v184._object = 0xE100000000000000;
      String.append(_:)(v184);
      HIBYTE(v287) = v132;
      _print_unlocked<A, B>(_:_:)();

      sub_100010DA4();
      if (v186)
      {
        v187 = sub_100007628(v185);
        sub_1001070D0(v187, v181, 1);
        v182 = v290;
      }

      sub_100005CA0();
    }

    while (!v162);

    sub_1000DB958();
    v180 = v286;
  }

  else
  {

    v182 = _swiftEmptyArrayStorage;
  }

  v288 = v182;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v188)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_100013FE4();
    sub_10000529C();
    sub_1000DBA5C();
  }

  else
  {

    v189 = v281;
    v190 = sub_10014EB30(v132 - 4, 0x80000001002736B0);
    if (v191)
    {
      v192 = v190;
      swift_isUniquelyReferenced_nonNull_native();
      v288 = v189;
      v193 = *(v189 + 24);
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      sub_1000050F4();
      v194 = v288;
      v195 = *(v288[6] + 16 * v192 + 8);

      v196 = *(*(v194 + 56) + 16 * v192 + 8);
      v281 = v194;
      _NativeDictionary._delete(at:)();
    }
  }

  v197 = *(v157 + v280[13]);
  sub_100120DB0();
  v199 = sub_10000D4C4(v198);
  sub_1000D6914(v199);
  if (v180)
  {
    goto LABEL_128;
  }

  v200 = v288;
  v201 = v288[2];
  if (v201)
  {
    v290 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v202 = v290;
    v157 = (v200 + 56);
    do
    {
      v203 = *(v157 - 2);
      v204 = *(v157 - 1);
      v205 = *v157;
      sub_10000DEAC(*(v157 - 3));

      sub_10000EFC4(v206);
      v207._countAndFlagsBits = v204;
      v207._object = v205;
      String.append(_:)(v207);

      v132 = v288;
      v208 = v289;
      v290 = v202;
      v210 = v202[2];
      v209 = v202[3];
      if (v210 >= v209 >> 1)
      {
        sub_100007628(v209);
        sub_1000DBA44();
        sub_1001070D0(v212, v213, v214);
        v202 = v290;
      }

      v202[2] = v210 + 1;
      v211 = &v202[2 * v210];
      v211[4] = v132;
      v211[5] = v208;
      v157 += 4;
      --v201;
    }

    while (v201);

    sub_1000DB958();
  }

  else
  {

    v202 = _swiftEmptyArrayStorage;
  }

  v288 = v202;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v215)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000529C();
    sub_1000DBA5C();
  }

  else
  {
  }

  v216 = *(v157 + v280[15]);
  sub_100120B80();
  v288 = v217;
  sub_1000D6720(&v288, sub_100122BB8, &qword_1002DBC68, &qword_100238300);
  v218 = v288;
  if (v288[2])
  {
    v286 = 0;
    v290 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v219 = v290;
    v282 = v218;
    v157 = (v218 + 48);
    do
    {
      sub_10000DB74();
      v220._countAndFlagsBits = v218;
      v220._object = 0;
      String.append(_:)(v220);
      v221._countAndFlagsBits = 61;
      v221._object = 0xE100000000000000;
      String.append(_:)(v221);
      HIBYTE(v287) = v132;
      _print_unlocked<A, B>(_:_:)();

      sub_100010DA4();
      if (v186)
      {
        v223 = sub_100007628(v222);
        sub_1001070D0(v223, v218, 1);
        v219 = v290;
      }

      sub_100005CA0();
    }

    while (!v162);

    sub_1000DB958();
    v180 = v286;
  }

  else
  {

    v219 = _swiftEmptyArrayStorage;
  }

  v288 = v219;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v224)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000529C();
    sub_1000DBA5C();
  }

  else
  {
  }

  sub_100120B44(*(v157 + v280[16]), v225, v226, v227, v228, v229, v230, v231, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  v233 = sub_10000D4C4(v232);
  sub_1000D6634(v233);
  if (v180)
  {
LABEL_128:
    while (1)
    {
LABEL_125:

      __break(1u);
    }
  }

  v234 = v288;
  v235 = v288[2];
  if (v235)
  {
    v290 = _swiftEmptyArrayStorage;
    sub_1001070D0(0, v235, 0);
    v236 = v290;
    v237 = *(v274 + 80);
    v282 = v234;
    v238 = v234 + ((v237 + 32) & ~v237);
    v286 = *(v274 + 72);
    do
    {
      v239 = v283;
      sub_1000D6980(v238, v283, &qword_1002DBC48, &qword_100232F80);
      v240 = v284;
      sub_1000D6980(v239, v284, &qword_1002DBC48, &qword_100232F80);
      v241 = v240[1];
      v242 = v285;
      v243 = *(v285 + 48);
      v288 = *v240;
      v289 = v241;
      v244 = type metadata accessor for Date();
      sub_10000307C(v244);
      v246 = (*(v245 + 8))(v240 + v243, v244);
      sub_10000EFC4(v246);
      v247 = *(v242 + 48);
      sub_1000D69CC();
      v248._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v248);

      v250 = v288;
      v249 = v289;
      sub_100004E24(v239, &qword_1002DBC48, &qword_100232F80);
      v290 = v236;
      v252 = v236[2];
      v251 = v236[3];
      if (v252 >= v251 >> 1)
      {
        v254 = sub_100007628(v251);
        sub_1001070D0(v254, v252 + 1, 1);
        v236 = v290;
      }

      v236[2] = v252 + 1;
      v253 = &v236[2 * v252];
      v253[4] = v250;
      v253[5] = v249;
      v238 += v286;
      --v235;
    }

    while (v235);
  }

  else
  {

    v236 = _swiftEmptyArrayStorage;
  }

  v288 = v236;
  sub_10000BA04();
  v255 = BidirectionalCollection<>.joined(separator:)();
  v257 = v256;

  v258 = HIBYTE(v257) & 0xF;
  if ((v257 & 0x2000000000000000) == 0)
  {
    v258 = v255 & 0xFFFFFFFFFFFFLL;
  }

  v259 = v277;
  if (v258)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000C620();
    sub_10014F648();
  }

  else
  {
  }

  v260 = (v259 + v280[6]);
  v261 = *v260;
  v262 = v260[1];

  swift_isUniquelyReferenced_nonNull_native();
  sub_100013FE4();
  sub_10000C620();
  sub_10014F648();
  v263 = v288;
  *(v259 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v288 = v263;
  sub_10000C620();
  sub_10014F648();
  v264 = v288;
  v265 = *(v259 + 24);
  v266 = *(v259 + 32);

  swift_isUniquelyReferenced_nonNull_native();
  v288 = v264;
  sub_10000C620();
  sub_10014F648();
  v267 = v288;
  v268 = *(v259 + 40);
  v269 = *(v259 + 48);

  swift_isUniquelyReferenced_nonNull_native();
  v288 = v267;
  sub_10014F648();
  v270 = v288;
  sub_100004A7C();
  sub_1000D65DC(v259, v271);
  return v270;
}

uint64_t sub_1000D5EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (v18 - v9);
  sub_1000D6980(a1, v18 - v9, &qword_1002DBC50, &unk_10023B350);
  v12 = *v10;
  v11 = v10[1];
  sub_1000D6980(a2, v7, &qword_1002DBC50, &unk_10023B350);
  if (v12 == *v7 && v11 == v7[1])
  {
    v15 = 0;
  }

  else
  {
    v14 = v7[1];
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v16 = *(v4 + 48);
  sub_1000D65DC(v7 + v16, type metadata accessor for TSDataSyncTriggerEvent);
  sub_1000D65DC(v10 + v16, type metadata accessor for TSDataSyncTriggerEvent);
  return v15 & 1;
}

uint64_t sub_1000D6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  sub_1000D6980(a1, v20 - v9, &qword_1002DBC48, &qword_100232F80);
  v12 = *v10;
  v11 = *(v10 + 1);
  sub_1000D6980(a2, v7, &qword_1002DBC48, &qword_100232F80);
  if (v12 == *v7 && v11 == *(v7 + 1))
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v7 + 1);
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v16 = *(v4 + 48);
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 8);
  v18(&v7[v16], v17);
  v18(&v10[v16], v17);
  return v15 & 1;
}

uint64_t sub_1000D61EC()
{
  v1 = sub_100003F9C();
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  sub_100006CEC();
  sub_1000D652C(v0, v15);
  sub_100007F48();
  sub_1000D6584(v15, v8);
  if (*(v8 + 16))
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v16 = 1;
  }

  sub_100004A7C();
  sub_1000D65DC(v8, v17);
  return v16 & 1;
}

uint64_t sub_1000D631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v23 - v8);
  sub_1000D6980(a1, &v23 - v8, &qword_1002DBC10, &unk_10023F6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = static HTTPHelpers.isAuthError(error:)();

    v12 = type metadata accessor for Date();
    v13 = v12;
    if (v11)
    {
      v14 = *(*(v12 - 8) + 16);
      v15 = sub_1000050CC();
      v16(v15);
      v17 = a2;
      v18 = 0;
    }

    else
    {
      v17 = sub_100013DDC();
    }

    return sub_100002728(v17, v18, 1, v13);
  }

  else
  {
    type metadata accessor for Date();
    v19 = sub_100013DDC();
    sub_100002728(v19, v20, 1, v21);
    return sub_100004E24(v9, &qword_1002DBC10, &unk_10023F6E0);
  }
}

unint64_t sub_1000D6484()
{
  result = qword_1002DBC30;
  if (!qword_1002DBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBC30);
  }

  return result;
}

unint64_t sub_1000D64D8()
{
  result = qword_1002DBC40;
  if (!qword_1002DBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBC40);
  }

  return result;
}

uint64_t sub_1000D652C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_1000D6584(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_1000D65DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

Swift::Int sub_1000D6634(size_t *a1)
{
  v2 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100122BA0(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000D6C24(v6, &qword_1002DBC48, &qword_100232F80, sub_1000D7828, sub_1000D6E5C);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000D6720(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_1000D6A24(v11, a3, a4);
  *a1 = v8;
  return result;
}

Swift::Int sub_1000D67BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100122BE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D6B20(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000D6828(size_t *a1)
{
  v2 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100122C00(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000D6C24(v6, &qword_1002DBC50, &unk_10023B350, sub_1000D8F50, sub_1000D7394);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000D6914(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100122C18(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D6D60(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1000D6980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return v4;
}

unint64_t sub_1000D69CC()
{
  result = qword_1002DBC58;
  if (!qword_1002DBC58)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBC58);
  }

  return result;
}

Swift::Int sub_1000D6A24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v14 = v5 / 2;
      if (v5 <= 1)
      {
        v15 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(a2, a3);
        result = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v15 = result;
        *(result + 16) = v14;
      }

      v20 = sub_10000BCA0(result, v7, v8, v9, v10, v11, v12, v13, v24, v15 + 32);
      sub_1000D84B4(v20, v21, v22, v23);
      v15[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1000DB9DC();
    return sub_1000D71DC(v16, v17, v18, v19);
  }

  return result;
}

Swift::Int sub_1000D6B20(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(&qword_1002DBC80, &unk_100238330);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000D8A00(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000D72BC(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000D6C24(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *), uint64_t (*a5)(void))
{
  v9 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = v9 / 2;
      if (v9 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(a2, a3);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = sub_100099DF4(a2, a3);
      v14 = sub_1000030B8(v13);
      v23 = sub_10000BCA0(v14, v16, v17, v18, v19, v20, v21, v22, v24, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
      a4(v23);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    sub_1000DB9DC();
    return a5();
  }

  return result;
}

Swift::Int sub_1000D6D60(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(&qword_1002DBC70, &qword_100238310);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v11[0] = (v6 + 4);
      v11[1] = v5;
      sub_1000D9C00(v11, v12, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000DB9DC();
    return sub_1000D7760(v7, v8, v9, v10);
  }

  return result;
}

void sub_1000D6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v8 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = (&v41 - v11);
  __chkstk_darwin(v12);
  v14 = (&v41 - v13);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  __chkstk_darwin(v18);
  v21 = &v41 - v20;
  v43 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v48 = -v23;
    v49 = v22;
    v25 = a1 - a3;
    v42 = v23;
    v26 = v22 + v23 * a3;
    v51 = &v41 - v20;
    v52 = v17;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v27 = v24;
      do
      {
        sub_1000D6980(v26, v21, &qword_1002DBC48, &qword_100232F80);
        sub_1000D6980(v27, v17, &qword_1002DBC48, &qword_100232F80);
        sub_1000D6980(v21, v14, &qword_1002DBC48, &qword_100232F80);
        v28 = *v14;
        v29 = v14[1];
        v30 = v14;
        v31 = v54;
        sub_1000D6980(v17, v54, &qword_1002DBC48, &qword_100232F80);
        if (v28 == *v31 && v29 == v31[1])
        {
          v34 = 0;
        }

        else
        {
          v33 = v31[1];
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v35 = *(v53 + 48);
        v36 = type metadata accessor for Date();
        v37 = *(*(v36 - 8) + 8);
        v37(v54 + v35, v36);
        v38 = v30 + v35;
        v14 = v30;
        v37(v38, v36);
        v17 = v52;
        sub_100004E24(v52, &qword_1002DBC48, &qword_100232F80);
        v21 = v51;
        sub_100004E24(v51, &qword_1002DBC48, &qword_100232F80);
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return;
        }

        v39 = v50;
        sub_1000DB900(v26, v50, &qword_1002DBC48, &qword_100232F80);
        swift_arrayInitWithTakeFrontToBack();
        sub_1000DB900(v39, v27, &qword_1002DBC48, &qword_100232F80);
        v27 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v47 + 1;
      v24 = v46 + v42;
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1000D71DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 24);
        if (result == *v10 && *(v10 + 32) == *(v10 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 24);
        v12 = *(v10 + 32);
        v14 = *(v10 + 40);
        v15 = *(v10 + 16);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v15;
        *v10 = v13;
        *(v10 + 8) = v12;
        *(v10 + 16) = v14;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000D72BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D7394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v8 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v46 - v11);
  __chkstk_darwin(v13);
  v15 = (&v46 - v14);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v60 = &v46 - v21;
  v48 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v20 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v53 = -v23;
    v54 = v22;
    v25 = a1 - a3;
    v47 = v23;
    v26 = v22 + v23 * a3;
    v27 = &qword_1002DBC50;
    v56 = v18;
    while (2)
    {
      v51 = v24;
      v52 = a3;
      v49 = v26;
      v50 = v25;
      v28 = v24;
      while (1)
      {
        v59 = v25;
        v29 = v27;
        v30 = v60;
        sub_1000D6980(v26, v60, v29, &unk_10023B350);
        sub_1000D6980(v28, v18, v29, &unk_10023B350);
        sub_1000D6980(v30, v15, v29, &unk_10023B350);
        v31 = v18;
        v33 = *v15;
        v32 = v15[1];
        sub_1000D6980(v31, v12, v29, &unk_10023B350);
        v34 = v15;
        v35 = v12;
        v36 = *v12;
        v37 = v12[1];
        if (v33 == v36 && v32 == v37)
        {
          break;
        }

        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = *(v58 + 48);
        sub_1000D65DC(v35 + v39, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v34 + v39, type metadata accessor for TSDataSyncTriggerEvent);
        v18 = v56;
        sub_100004E24(v56, v29, &unk_10023B350);
        sub_100004E24(v60, v29, &unk_10023B350);
        v12 = v35;
        v15 = v34;
        v27 = v29;
        v40 = v59;
        if (v57)
        {
          if (!v54)
          {
            __break(1u);
            return;
          }

          v41 = v18;
          v42 = v55;
          sub_1000DB900(v26, v55, v27, &unk_10023B350);
          swift_arrayInitWithTakeFrontToBack();
          v43 = v42;
          v18 = v41;
          sub_1000DB900(v43, v28, v27, &unk_10023B350);
          v28 += v53;
          v26 += v53;
          v44 = __CFADD__(v40, 1);
          v25 = v40 + 1;
          if (!v44)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v45 = *(v58 + 48);
      sub_1000D65DC(v35 + v45, type metadata accessor for TSDataSyncTriggerEvent);
      sub_1000D65DC(v34 + v45, type metadata accessor for TSDataSyncTriggerEvent);
      v18 = v56;
      sub_100004E24(v56, v29, &unk_10023B350);
      sub_100004E24(v60, v29, &unk_10023B350);
      v12 = v35;
      v15 = v34;
      v27 = v29;
LABEL_14:
      a3 = v52 + 1;
      v24 = v51 + v47;
      v25 = v50 - 1;
      v26 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1000D7760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D7828(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v150 = a4;
  v147 = a1;
  v7 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v158 = *(v7 - 8);
  v8 = *(v158 + 64);
  __chkstk_darwin(v7);
  v153 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v166 = &v144 - v11;
  __chkstk_darwin(v12);
  v171 = &v144 - v13;
  __chkstk_darwin(v14);
  v170 = (&v144 - v15);
  __chkstk_darwin(v16);
  v169 = &v144 - v17;
  __chkstk_darwin(v18);
  v168 = &v144 - v19;
  __chkstk_darwin(v20);
  v163 = (&v144 - v21);
  __chkstk_darwin(v22);
  v162 = (&v144 - v23);
  __chkstk_darwin(v24);
  v161 = &v144 - v25;
  __chkstk_darwin(v26);
  v160 = &v144 - v27;
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v159 = a3;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_117:
    v171 = *v147;
    if (!v171)
    {
      goto LABEL_160;
    }

    a3 = v34;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v136 = a3;
      goto LABEL_120;
    }

LABEL_154:
    v136 = sub_100121DB8(a3);
LABEL_120:
    v137 = v136 + 16;
    v138 = *(v136 + 2);
    while (v138 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_157;
      }

      a3 = v136;
      v139 = &v136[16 * v138];
      v140 = *v139;
      v141 = &v137[2 * v138];
      v142 = *(v141 + 1);
      sub_1000DA4B8(*v159 + *(v158 + 72) * *v139, *v159 + *(v158 + 72) * *v141, *v159 + *(v158 + 72) * v142, v171);
      if (v5)
      {
        break;
      }

      if (v142 < v140)
      {
        goto LABEL_145;
      }

      if (v138 - 2 >= *v137)
      {
        goto LABEL_146;
      }

      *v139 = v140;
      *(v139 + 1) = v142;
      v143 = *v137 - v138;
      if (*v137 < v138)
      {
        goto LABEL_147;
      }

      v138 = *v137 - 1;
      sub_100121DD0(v141 + 16, v143, v141);
      *v137 = v138;
      v136 = a3;
    }

    goto LABEL_128;
  }

  v144 = &v144 - v30;
  v145 = v31;
  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v167 = v7;
  while (1)
  {
    v148 = v34;
    v35 = v33;
    v36 = v33 + 1;
    if (v33 + 1 >= v32)
    {
      v62 = v150;
    }

    else
    {
      v156 = v32;
      v157 = v33 + 1;
      v37 = *v159;
      v38 = v33;
      v39 = *(v158 + 72);
      a3 = *v159 + v39 * v36;
      v40 = v144;
      sub_1000D6980(a3, v144, &qword_1002DBC48, &qword_100232F80);
      v165 = v37;
      v41 = v37 + v39 * v38;
      v42 = v145;
      sub_1000D6980(v41, v145, &qword_1002DBC48, &qword_100232F80);
      LODWORD(v155) = sub_1000D6058(v40, v42);
      if (v5)
      {
        sub_100004E24(v42, &qword_1002DBC48, &qword_100232F80);
        sub_100004E24(v40, &qword_1002DBC48, &qword_100232F80);
LABEL_128:

        return;
      }

      v149 = 0;
      sub_100004E24(v42, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v40, &qword_1002DBC48, &qword_100232F80);
      v146 = v38;
      v43 = v38 + 2;
      v5 = v165 + v39 * (v38 + 2);
      v44 = v156;
      v36 = v157;
      v45 = v39;
      v164 = v39;
      while (1)
      {
        v46 = v43;
        if (v36 + 1 >= v44)
        {
          break;
        }

        v165 = v43;
        v47 = v160;
        sub_1000D6980(v5, v160, &qword_1002DBC48, &qword_100232F80);
        v48 = v161;
        sub_1000D6980(a3, v161, &qword_1002DBC48, &qword_100232F80);
        v49 = v47;
        v50 = v162;
        sub_1000D6980(v49, v162, &qword_1002DBC48, &qword_100232F80);
        v51 = *v50;
        v52 = v50[1];
        v53 = v163;
        sub_1000D6980(v48, v163, &qword_1002DBC48, &qword_100232F80);
        v54 = *v53;
        v55 = v53[1];
        v56 = v36;
        if (v51 == v54 && v52 == v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v59 = *(v7 + 48);
        v60 = type metadata accessor for Date();
        v61 = *(*(v60 - 8) + 8);
        v61(v163 + v59, v60);
        v61(v162 + v59, v60);
        sub_100004E24(v161, &qword_1002DBC48, &qword_100232F80);
        sub_100004E24(v160, &qword_1002DBC48, &qword_100232F80);
        v45 = v164;
        v46 = v165;
        v5 += v164;
        a3 += v164;
        v36 = v56 + 1;
        v43 = v165 + 1;
        v44 = v156;
        if ((v155 ^ v58))
        {
          goto LABEL_17;
        }
      }

      v36 = v44;
LABEL_17:
      if (v155)
      {
        v35 = v146;
        v62 = v150;
        if (v36 < v146)
        {
          goto LABEL_153;
        }

        v5 = v149;
        if (v146 < v36)
        {
          if (v44 >= v46)
          {
            v63 = v46;
          }

          else
          {
            v63 = v44;
          }

          v64 = v45 * (v63 - 1);
          v65 = v45 * v63;
          v66 = v36;
          v67 = v146 * v45;
          v157 = v66;
          v68 = v146;
          do
          {
            if (v68 != --v66)
            {
              v69 = *v159;
              if (!*v159)
              {
                goto LABEL_158;
              }

              a3 = v69 + v67;
              sub_1000DB900(v69 + v67, v153, &qword_1002DBC48, &qword_100232F80);
              v70 = v67 < v64 || a3 >= v69 + v65;
              if (v70)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v67 != v64)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000DB900(v153, v69 + v64, &qword_1002DBC48, &qword_100232F80);
              v5 = v149;
              v62 = v150;
              v45 = v164;
            }

            ++v68;
            v64 -= v45;
            v65 -= v45;
            v67 += v45;
          }

          while (v68 < v66);
          v36 = v157;
        }
      }

      else
      {
        v5 = v149;
        v62 = v150;
        v35 = v146;
      }
    }

    v71 = v159[1];
    if (v36 < v71)
    {
      if (__OFSUB__(v36, v35))
      {
        goto LABEL_150;
      }

      if (v36 - v35 < v62)
      {
        break;
      }
    }

LABEL_62:
    if (v36 < v35)
    {
      goto LABEL_149;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v34 = v148;
    }

    else
    {
      v133 = v148[2];
      sub_10013BF14();
      v34 = v134;
    }

    v93 = v34[2];
    a3 = v93 + 1;
    if (v93 >= v34[3] >> 1)
    {
      sub_10013BF14();
      v34 = v135;
    }

    v34[2] = a3;
    v94 = v34 + 4;
    v95 = &v34[2 * v93 + 4];
    *v95 = v35;
    v95[1] = v36;
    v165 = *v147;
    if (!v165)
    {
      goto LABEL_159;
    }

    v157 = v36;
    if (v93)
    {
      v96 = v34;
      while (1)
      {
        v97 = a3 - 1;
        v98 = &v94[2 * a3 - 2];
        v99 = &v34[2 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v100 = v34[4];
          v101 = v34[5];
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_83:
          if (v103)
          {
            goto LABEL_136;
          }

          v115 = *v99;
          v114 = v99[1];
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_139;
          }

          v119 = v98[1];
          v120 = v119 - *v98;
          if (__OFSUB__(v119, *v98))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v117, v120))
          {
            goto LABEL_144;
          }

          if (v117 + v120 >= v102)
          {
            if (v102 < v120)
            {
              v97 = a3 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (a3 < 2)
        {
          goto LABEL_138;
        }

        v122 = *v99;
        v121 = v99[1];
        v110 = __OFSUB__(v121, v122);
        v117 = v121 - v122;
        v118 = v110;
LABEL_98:
        if (v118)
        {
          goto LABEL_141;
        }

        v124 = *v98;
        v123 = v98[1];
        v110 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v110)
        {
          goto LABEL_143;
        }

        if (v125 < v117)
        {
          v34 = v96;
          goto LABEL_112;
        }

LABEL_105:
        if (v97 - 1 >= a3)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v159)
        {
          goto LABEL_156;
        }

        a3 = &v94[2 * v97 - 2];
        v129 = *a3;
        v130 = &v94[2 * v97];
        v131 = *(v130 + 1);
        sub_1000DA4B8(*v159 + *(v158 + 72) * *a3, *v159 + *(v158 + 72) * *v130, *v159 + *(v158 + 72) * v131, v165);
        if (v5)
        {
          goto LABEL_128;
        }

        if (v131 < v129)
        {
          goto LABEL_131;
        }

        v5 = v96[2];
        if (v97 > v5)
        {
          goto LABEL_132;
        }

        *a3 = v129;
        *(a3 + 8) = v131;
        if (v97 >= v5)
        {
          goto LABEL_133;
        }

        a3 = v5 - 1;
        sub_100121DD0(v130 + 16, v5 - 1 - v97, &v94[2 * v97]);
        v34 = v96;
        v96[2] = v5 - 1;
        v132 = v5 > 2;
        v5 = 0;
        if (!v132)
        {
          goto LABEL_112;
        }
      }

      v104 = &v94[2 * a3];
      v105 = *(v104 - 8);
      v106 = *(v104 - 7);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_134;
      }

      v109 = *(v104 - 6);
      v108 = *(v104 - 5);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_135;
      }

      v111 = v99[1];
      v112 = v111 - *v99;
      if (__OFSUB__(v111, *v99))
      {
        goto LABEL_137;
      }

      v110 = __OFADD__(v102, v112);
      v113 = v102 + v112;
      if (v110)
      {
        goto LABEL_140;
      }

      if (v113 >= v107)
      {
        v127 = *v98;
        v126 = v98[1];
        v110 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v110)
        {
          goto LABEL_148;
        }

        if (v102 < v128)
        {
          v97 = a3 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v32 = v159[1];
    v33 = v157;
    v7 = v167;
    if (v157 >= v32)
    {
      goto LABEL_117;
    }
  }

  v72 = v35 + v62;
  if (__OFADD__(v35, v62))
  {
    goto LABEL_151;
  }

  if (v72 >= v71)
  {
    v72 = v159[1];
  }

  if (v72 < v35)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v36 == v72)
  {
    goto LABEL_62;
  }

  v149 = v5;
  v73 = *v159;
  v74 = *(v158 + 72);
  v75 = *v159 + v74 * (v36 - 1);
  v164 = -v74;
  v146 = v35;
  v76 = v35 - v36;
  v165 = v73;
  v151 = v74;
  v152 = v72;
  a3 = v73 + v36 * v74;
LABEL_47:
  v156 = v75;
  v157 = v36;
  v154 = a3;
  v155 = v76;
  v77 = v76;
  while (1)
  {
    v78 = v7;
    v79 = v168;
    sub_1000D6980(a3, v168, &qword_1002DBC48, &qword_100232F80);
    v80 = v169;
    sub_1000D6980(v75, v169, &qword_1002DBC48, &qword_100232F80);
    v81 = v79;
    v82 = v170;
    sub_1000D6980(v81, v170, &qword_1002DBC48, &qword_100232F80);
    v83 = *v82;
    v84 = v82[1];
    v85 = v171;
    sub_1000D6980(v80, v171, &qword_1002DBC48, &qword_100232F80);
    if (v83 == *v85 && v84 == v85[1])
    {
      v88 = 0;
    }

    else
    {
      v87 = v85[1];
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v89 = *(v78 + 48);
    v90 = type metadata accessor for Date();
    v91 = *(*(v90 - 8) + 8);
    v91(v171 + v89, v90);
    v91(v170 + v89, v90);
    sub_100004E24(v169, &qword_1002DBC48, &qword_100232F80);
    sub_100004E24(v168, &qword_1002DBC48, &qword_100232F80);
    if ((v88 & 1) == 0)
    {
      v7 = v167;
LABEL_60:
      v36 = v157 + 1;
      v75 = v156 + v151;
      v76 = v155 - 1;
      a3 = v154 + v151;
      if (v157 + 1 == v152)
      {
        v36 = v152;
        v5 = v149;
        v35 = v146;
        goto LABEL_62;
      }

      goto LABEL_47;
    }

    if (!v165)
    {
      break;
    }

    v92 = v166;
    sub_1000DB900(a3, v166, &qword_1002DBC48, &qword_100232F80);
    v7 = v167;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000DB900(v92, v75, &qword_1002DBC48, &qword_100232F80);
    v75 += v164;
    a3 += v164;
    v70 = __CFADD__(v77++, 1);
    if (v70)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}