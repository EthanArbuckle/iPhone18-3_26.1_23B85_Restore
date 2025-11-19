uint64_t sub_10013564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v14;
  v8[18] = v15;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = sub_100080FB4(&unk_1003CED90);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for URLQueryItem();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = type metadata accessor for URLComponents();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();

  return _swift_task_switch(sub_1001357E4, 0, 0);
}

uint64_t sub_100135AD0()
{
  sub_1000B072C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10008C070();
  v9 = v8;
  sub_1000AFE64();
  *v10 = v9;
  v11 = *v1;
  sub_100098AB4();
  *v12 = v11;
  v9[32] = v0;

  if (!v0)
  {
    v9[33] = v3;
    v9[34] = v5;
    v9[35] = v7;
  }

  sub_10013BBDC();
  sub_1000B0718();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100135BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  v11 = v10[16].i64[1];
  v13 = v10[13].i64[0];
  v12 = v10[13].i64[1];
  v14 = v10[12].i64[1];
  v16 = v10[10].i64[0];
  v15 = v10[10].i64[1];
  v17 = v10[9].i64[1];
  v10[3] = vextq_s8(v10[17], v10[17], 8uLL);
  v10[4].i64[0] = v11;
  sub_100080FB4(&qword_1003CECA8);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);

  sub_100098AC4();
  sub_10013BDF8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

void sub_100135CD8()
{
  v1 = v0[32];
  v2 = v0[28];
  v4 = v0[13];
  v3 = v0[14];
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  sub_10013BFBC("Error in request for batch (");
  v5._countAndFlagsBits = v4;
  v5._object = v3;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 2112041;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v0[11] = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v7 = v0[9];
  v8 = v0[10];
  v9 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_10013B8D4();

  if (os_log_type_enabled(v2, v9))
  {
    v11 = v0[29];
    v10 = v0[30];
    v12 = v0[26];
    v21 = v0[25];
    v22 = v0[27];
    sub_1000B7DC8();
    v13 = swift_slowAlloc();
    v14 = sub_10008E670();
    *v13 = 136446466;
    v23 = v14;
    v24 = 91;
    v25 = 0xE100000000000000;
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    String.append(_:)(v15);
    sub_10009F134();
    sub_100080210(91, 0xE100000000000000, &v23);
    sub_1000B0494();
    *(v13 + 4) = v10;
    *(v13 + 12) = 2082;
    sub_100080210(v7, v8, &v23);
    sub_100106CE0();

    *(v13 + 14) = 0xE100000000000000;
    _os_log_impl(&_mh_execute_header, v2, v9, "%{public}s%{public}s", v13, 0x16u);
    sub_100106E34();
    sub_100081C28();
    sub_100081C28();

    (*(v12 + 8))(v22, v21);
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];

    (*(v17 + 8))(v16, v18);
  }

  sub_100098AC4();
  sub_10009F1B8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100135F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for URLRequest();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();

  return _swift_task_switch(sub_100136030, 0, 0);
}

uint64_t sub_100136030()
{
  sub_1000B072C();
  sub_1000B0004();
  v1 = v0[37];
  isa = URLComponents._bridgeToObjectiveC()().super.isa;
  v0[43] = [v1 requestWithComponents:isa];

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_100136170;
  v3 = swift_continuation_init();
  v4 = sub_100080FB4(&unk_1003CEDC0);
  v0[25] = v4;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000D67A8;
  v0[21] = &unk_100389950;
  v0[22] = v3;
  sub_10013BF5C(v4, "resultWithTimeout:completion:");
  sub_1000B0718();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100136170()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013626C()
{
  sub_10013BDE0();
  sub_1000B02BC();
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[34];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v2 + *(type metadata accessor for LoadProductsTask() + 20);
  if (*(v5 + *(type metadata accessor for ProductRequest() + 24)) == 2)
  {
    v6 = 3157554;
  }

  else
  {
    v6 = 3157553;
  }

  v7._object = 0x8000000100318E90;
  v8 = 0xE300000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  URLRequest.setValue(_:forHTTPHeaderField:)(*&v6, v7);

  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v0[45] = [v3 dataTaskPromiseWithRequest:isa];

  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_100136424;
  v10 = swift_continuation_init();
  v11 = sub_100080FB4(&qword_1003CDC88);
  v0[33] = v11;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1000D67A8;
  v0[29] = &unk_100389978;
  v0[30] = v10;
  sub_10013BF5C(v11, "resultWithTimeout:completion:");
  sub_10013BDF8();

  return _swift_continuation_await(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100136424()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100136520()
{
  sub_1000B02BC();
  v1 = *(v0 + 280);

  v2 = v1;
  sub_10012ECDC(v2);
  if (v3)
  {
    v4 = sub_100107510();
    v5(v4);

    sub_1000B0604();

    __asm { BRAA            X4, X16 }
  }

  sub_10013A9B8();
  sub_1000894A0();
  sub_10013BC8C(v8, 2);
  swift_willThrow();

  v9 = sub_100107510();
  v10(v9);

  sub_100098AC4();
  sub_1000B0604();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10013665C()
{
  sub_100098BB4();
  v1 = *(v0 + 344);
  swift_willThrow();

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001366CC()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 360);
  swift_willThrow();
  v2 = sub_100107174();
  v3(v2);

  sub_100098AC4();
  sub_1000B0518();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100136758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  return _swift_task_switch(sub_10013677C, 0, 0);
}

uint64_t sub_10013677C()
{
  sub_100098BB4();
  v1 = [*(v0 + 168) URLForKey:*(v0 + 176)];
  *(v0 + 184) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1001368B0;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_100080FB4(&unk_1003CEE10);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10012C050;
  *(v0 + 104) = &unk_100389A68;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001368B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001369AC()
{
  sub_10008BE9C();
  sub_10013BD04(*(v0 + 184));
  sub_100098AC4();

  return v1();
}

uint64_t sub_100136A08()
{
  sub_100098BB4();
  v1 = *(v0 + 184);
  swift_willThrow();

  sub_100098AC4();

  return v2();
}

uint64_t *sub_100136A70(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, id), uint64_t (*a6)(uint64_t, id, uint64_t))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v10 = *result;
  if (a4)
  {
    v11 = a4;

    return a5(v10, v11);
  }

  else if (a2)
  {
    v12 = a2;

    return a6(v10, v12, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100136B28(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_100136B48, 0, 0);
}

uint64_t sub_100136B48()
{
  sub_100098BB4();
  if (qword_1003CBEE8 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 168) stringForKey:qword_1003F2750];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  sub_10013BB4C();
  v2 = sub_100080FB4(&unk_1003D30E0);
  sub_10008BD44(v2);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  sub_10013B824();
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100136C78()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100136D74()
{
  sub_10008BE9C();
  sub_10013BD04(*(v0 + 176));
  sub_100098AC4();

  return v1();
}

uint64_t sub_100136DD0()
{
  sub_100098BB4();
  v1 = *(v0 + 176);
  swift_willThrow();

  sub_100098AC4();

  return v2();
}

uint64_t sub_100136E38(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_100136E58, 0, 0);
}

uint64_t sub_100136E58()
{
  sub_100098BB4();
  if (qword_1003CBFB8 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 168) stringForKey:qword_1003F2820];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  sub_10013BB4C();
  v2 = sub_100080FB4(&unk_1003D30E0);
  sub_10008BD44(v2);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  sub_10013B824();
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100136F88()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001370A4()
{
  sub_100098BB4();
  *(v0 + 24) = sub_1001A7AB4(v1);
  swift_getObjectType();
  if (qword_1003CBF10 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100137188;
  v3 = sub_100093DD0();

  return sub_10024EFF4(v3);
}

uint64_t sub_100137188()
{
  sub_100098BB4();
  v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;

  if (v0)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (v3)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = 1;
LABEL_6:
  v7 = *(v4 + 8);

  return v7(v6);
}

id sub_1001372C4()
{
  v1 = v0 + *(type metadata accessor for LoadProductsTask() + 20);
  switch(*(v1 + *(type metadata accessor for ProductRequest() + 40)))
  {
    case 1:
      v3 = &AMSMediaTaskPlatformiPad;
      goto LABEL_9;
    case 2:
      v3 = &AMSMediaTaskPlatformiPhone;
      goto LABEL_9;
    case 3:
      v3 = &AMSMediaTaskPlatformMac;
      goto LABEL_9;
    case 4:
      v3 = &AMSMediaTaskPlatformReality;
      goto LABEL_9;
    case 5:
      v3 = &AMSMediaTaskPlatformAppleTV;
      goto LABEL_9;
    case 6:
      v3 = &AMSMediaTaskPlatformAppleWatch;
LABEL_9:
      v4 = *v3;

      result = v4;
      break;
    default:
      sub_10008E5A4(0, &qword_1003CEE00);
      result = sub_100176B00();
      break;
  }

  return result;
}

uint64_t sub_1001373C0()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = (*v0 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v8 = *v7;
  v9 = v7[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = _swiftEmptyDictionarySingleton;
  sub_10023EF9C(v8, v9, 6580578, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v59;
  v12 = *(v6 + OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion);
  v13 = *(v6 + OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion + 8);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v11;
  sub_10023EF9C(v12, v13, 1936881250, 0xE400000000000000, v14);
  v15 = v59;
  if (*(v6 + OBJC_IVAR____TtC9storekitd6Client_storeItemID))
  {
    v59 = *(v6 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_10023EF9C(v16, v18, 0x496D616441707061, 0xE900000000000064, v19);
    v15 = v59;
  }

  if (*(v6 + OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID))
  {
    v59 = *(v6 + OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_10023EF9C(v20, v22, 0x7256747845707061, 0xEB00000000644973, v23);
    v15 = v59;
  }

  static Locale.autoupdatingCurrent.getter();
  v24 = Locale.identifier.getter();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v15;
  v28 = sub_10023EF9C(v24, v26, 0x6C61636F4C756369, 0xE900000000000065, v27);
  v29 = v59;
  v30 = sub_1001AA204(v28);
  v31 = sub_1001A81B0(v30);
  if (v31)
  {
    v32 = v31;
    v33 = v31;
  }

  else
  {
    v34 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v30];
    v33 = [v34 ams_localiTunesAccount];

    if (!v33)
    {
      goto LABEL_11;
    }

    v32 = v33;
    v31 = 0;
  }

  v35 = v31;
  v36 = [v32 ams_storefrontForMediaType:v30];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v29;
    sub_10023EF9C(v37, v39, 1682531955, 0xE400000000000000, v40);

    (*(v3 + 8))(v5, v2);
    return v59;
  }

LABEL_11:
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for SKLogger();
  sub_10007EDA4(v41, qword_1003F26C8);
  v42 = v1 + *(type metadata accessor for LoadProductsTask() + 20);
  v43 = &v42[*(type metadata accessor for ProductRequest() + 36)];
  v44 = v43[1];
  v58 = *v43;
  v45 = static os_log_type_t.error.getter();

  v46 = Logger.logObject.getter();

  if (os_log_type_enabled(v46, v45))
  {
    v55 = "rsion are invalid";
    v47 = swift_slowAlloc();
    v57 = v2;
    v48 = v47;
    v49 = swift_slowAlloc();
    v56 = v3;
    *v48 = 136446466;
    v59 = 91;
    v60 = 0xE100000000000000;
    v61 = v49;
    v50._countAndFlagsBits = v58;
    v50._object = v44;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 8285;
    v51._object = 0xE200000000000000;
    String.append(_:)(v51);
    v52 = sub_100080210(v59, v60, &v61);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    *(v48 + 14) = sub_100080210(0xD000000000000024, v55 | 0x8000000000000000, &v61);
    _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s%{public}s", v48, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v5, v57);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v29;
}

uint64_t sub_10013795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = sub_100080FB4(&qword_1003CECA8);
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v6[16] = *(v8 + 64);
  v6[17] = swift_task_alloc();
  v9 = *(type metadata accessor for LoadProductsTask() - 8);
  v6[18] = v9;
  v6[19] = *(v9 + 64);
  v6[20] = swift_task_alloc();
  sub_100080FB4(&unk_1003CE2B0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_100137ADC, 0, 0);
}

uint64_t sub_100137ADC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = type metadata accessor for TaskPriority();
    v4 = 0;
    v5 = 0;
    v43 = v3;
    while (1)
    {
      *(v0 + 192) = v4;
      *(v0 + 200) = v5;
      v6 = v1 + 16 * v5;
      v7 = *(v6 + 32);
      *(v0 + 208) = v7;
      v8 = *(v6 + 40);
      *(v0 + 216) = v8;
      if (v4 == 4)
      {
        break;
      }

      v9 = *(v0 + 176);
      v41 = v9;
      v42 = *(v0 + 168);
      v10 = *(v0 + 160);
      v11 = *(v0 + 136);
      v36 = v4;
      v37 = *(v0 + 144);
      v39 = *(v0 + 152);
      v12 = *(v0 + 120);
      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v38 = v13;
      v15 = *(v0 + 96);
      v40 = *(v0 + 88);

      sub_10013BD84(v9);
      sub_10013B4E0();
      sub_100130558(v15, v10, v16);
      (*(v12 + 16))(v11, v14, v13);
      v17 = (*(v37 + 80) + 56) & ~*(v37 + 80);
      v18 = (v39 + *(v12 + 80) + v17) & ~*(v12 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = 0;
      v20 = v40;
      *(v19 + 3) = 0;
      *(v19 + 4) = v40;
      *(v19 + 5) = v7;
      *(v19 + 6) = v8;
      sub_10013A224(v10, &v19[v17]);
      (*(v12 + 32))(&v19[v18], v11, v38);
      sub_10013B104(v41, v42, &unk_1003CE2B0);
      v21 = sub_100123E24();
      v23 = sub_100081D0C(v21, v22, v43);

      v24 = *(v0 + 168);
      if (v23 == 1)
      {
        sub_10013B1E8(*(v0 + 168), &unk_1003CE2B0);
      }

      else
      {
        v23 = TaskPriority.rawValue.getter();
        (*(*(v43 - 8) + 8))(v24, v43);
      }

      if (*(v19 + 2))
      {
        sub_10013C00C();
        swift_unknownObjectRetain();
        sub_100093DD0();
        v25 = dispatch thunk of Actor.unownedExecutor.getter();
        sub_10013BFDC();
      }

      else
      {
        v25 = 0;
        v20 = 0;
      }

      v26 = **(v0 + 72);
      sub_1000B7E4C();
      v27 = swift_allocObject();
      sub_10013B86C(v27);
      if (v23)
      {
        v28 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v20;
      }

      else
      {
        v28 = 0;
      }

      sub_10013BCD4(v28);
      *(v0 + 64) = v26;
      sub_10013B808();
      swift_task_create();
      sub_10013BB68();

      sub_10013B1E8(v23, &unk_1003CE2B0);
      if (v20 == v25)
      {
        goto LABEL_15;
      }

      v5 = *(v0 + 200) + 1;
      v1 = *(v0 + 80);
      v4 = v36 + 1;
    }

    v32 = swift_task_alloc();
    *(v0 + 232) = v32;
    sub_100080FB4(&qword_1003CEDA8);
    sub_10013B950();
    *v32 = v33;
    sub_10013B72C();
    sub_10013BC58();

    return TaskGroup.next(isolation:)();
  }

  else
  {
LABEL_15:
    v29 = swift_task_alloc();
    *(v0 + 224) = v29;
    sub_100080FB4(&qword_1003CEDA8);
    sub_10013B900();
    *v29 = v30;
    sub_10013B62C();
    sub_10013BC58();

    return TaskGroup.awaitAllRemainingTasks(isolation:)();
  }
}

uint64_t sub_100137EB4()
{
  sub_100098BB4();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_10013800C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001380F0()
{
  v35 = *(v0 + 192);
  v34 = type metadata accessor for TaskPriority();
  v1 = *(v0 + 216);
  v36 = *(v0 + 208);
  while (1)
  {
    v40 = *(v0 + 176);
    v41 = *(v0 + 168);
    v2 = *(v0 + 160);
    v3 = *(v0 + 136);
    v39 = *(v0 + 152);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v37 = *(v0 + 144);
    v38 = v5;
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    sub_100081DFC(v40, 1, 1, v34);
    sub_10013B4E0();
    sub_100130558(v7, v2, v9);
    (*(v4 + 16))(v3, v6, v5);
    v10 = (*(v37 + 80) + 56) & ~*(v37 + 80);
    v11 = (v39 + *(v4 + 80) + v10) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v8;
    *(v12 + 5) = v36;
    *(v12 + 6) = v1;
    sub_10013A224(v2, &v12[v10]);
    (*(v4 + 32))(&v12[v11], v3, v38);
    v13 = &unk_1002EEE80;
    sub_10013B104(v40, v41, &unk_1003CE2B0);
    v14 = sub_100123E24();
    v16 = sub_100081D0C(v14, v15, v34);

    v17 = *(v0 + 168);
    if (v16 == 1)
    {
      sub_10013BC74();
      sub_10013B1E8(v18, v19);
    }

    else
    {
      v16 = TaskPriority.rawValue.getter();
      (*(*(v34 - 8) + 8))(v17);
    }

    if (*(v12 + 2))
    {
      sub_10013C00C();
      swift_unknownObjectRetain();
      sub_100093DD0();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      sub_10013BFDC();
    }

    else
    {
      v20 = 0;
      v13 = 0;
    }

    v21 = **(v0 + 72);
    sub_1000B7E4C();
    v22 = swift_allocObject();
    sub_10013B86C(v22);
    if (v16)
    {
      v23 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v20;
      *(v0 + 40) = v13;
    }

    else
    {
      v23 = 0;
    }

    sub_10013BCD4(v23);
    *(v0 + 64) = v21;
    sub_10013B808();
    swift_task_create();
    sub_10013BB68();

    sub_10013B1E8(v16, &unk_1003CE2B0);
    if (v13 == v20)
    {
      break;
    }

    v24 = *(v0 + 200) + 1;
    *(v0 + 192) = v35;
    *(v0 + 200) = v24;
    v25 = *(v0 + 80) + 16 * v24;
    v26 = *(v25 + 32);
    *(v0 + 208) = v26;
    v1 = *(v25 + 40);
    *(v0 + 216) = v1;
    if (v35 >= 4)
    {

      v30 = swift_task_alloc();
      *(v0 + 232) = v30;
      sub_100080FB4(&qword_1003CEDA8);
      sub_10013B950();
      *v30 = v31;
      sub_10013B72C();
      sub_10013BC58();

      return TaskGroup.next(isolation:)();
    }

    ++v35;
    v36 = v26;
  }

  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  sub_100080FB4(&qword_1003CEDA8);
  sub_10013B900();
  *v27 = v28;
  sub_10013B62C();
  sub_10013BC58();

  return TaskGroup.awaitAllRemainingTasks(isolation:)();
}

uint64_t sub_1001384D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_100080FB4(&unk_1003CED90);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001385A8, 0, 0);
}

uint64_t sub_1001385A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[8];

  swift_isUniquelyReferenced_nonNull_native();
  a12 = v27;
  v28 = sub_100093DD0();
  sub_10023EF9C(v28, v29, v30, 0xEA00000000007365, v31);
  v32 = a12;
  v24[16] = a12;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v33 = v24[10];
  v34 = v24[9];
  v35 = type metadata accessor for SKLogger();
  v24[17] = sub_10007EDA4(v35, qword_1003F26C8);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  sub_1000C446C();
  a12 = 0xD000000000000020;
  a13 = v36;
  v37._countAndFlagsBits = v34;
  v37._object = v33;
  String.append(_:)(v37);
  v39 = a12;
  v38 = a13;
  type metadata accessor for LoadProductsTask();
  type metadata accessor for ProductRequest();
  sub_10013BA50();
  v41 = *v40;
  v24[18] = *v40;
  v42 = v40[1];
  v24[19] = v42;
  v43 = static os_log_type_t.default.getter();

  v44 = Logger.logObject.getter();

  if (os_log_type_enabled(v44, v43))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_10008BF58();
    sub_10013BB30(4.8752e-34);
    v45._countAndFlagsBits = v41;
    v45._object = v42;
    String.append(_:)(v45);
    sub_10009F134();
    sub_100080210(a12, a13, &a11);
    sub_1000C44AC();

    *(v32 + 4) = v42;
    sub_10013BC98();
    v46 = sub_100080210(v39, v38, &a11);

    *(v32 + 14) = v46;
    sub_10013BE10(&_mh_execute_header, v44, v43, "%{public}s%{public}s");
    sub_10008BF74();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v47 = swift_task_alloc();
  v24[20] = v47;
  *v47 = v24;
  sub_10013BE3C(v47);
  sub_10008BE10();

  return sub_100138C3C(v48);
}

uint64_t sub_10013884C()
{
  sub_1000B072C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10008C070();
  v9 = v8;
  sub_1000AFE64();
  *v10 = v9;
  v11 = *v1;
  sub_100098AB4();
  *v12 = v11;
  v9[21] = v0;

  if (!v0)
  {

    v9[22] = v3;
    v9[23] = v5;
    v9[24] = v7;
  }

  sub_10013BBDC();
  sub_1000B0718();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100138968()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 176);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  *(v0 + 16) = vextq_s8(*(v0 + 184), *(v0 + 184), 8uLL);
  *(v0 + 32) = v1;
  sub_100080FB4(&qword_1003CECA8);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  sub_100098AC4();
  sub_1000B0518();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100138A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[21];
  v30 = v24[9];
  v29 = v24[10];

  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v31 = a13;
  v24[5] = a12;
  v24[6] = v31;
  sub_10013BFBC("Error in request for batch (");
  v32._countAndFlagsBits = v30;
  v32._object = v29;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 2112041;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  v24[7] = v28;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v34 = v24[5];
  v35 = v24[6];
  v36 = static os_log_type_t.error.getter();

  v37 = Logger.logObject.getter();

  if (os_log_type_enabled(v37, v36))
  {
    a10 = v34;
    v38 = v24[18];
    v39 = v24[19];
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_10008BF58();
    sub_10013BB30(4.8752e-34);
    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);
    sub_10009F134();
    sub_100080210(a12, a13, &a11);
    sub_1000B0494();
    *(v25 + 4) = v38;
    sub_10013BC98();
    v41 = sub_100080210(a10, v35, &a11);

    *(v25 + 14) = v41;
    sub_10013BE10(&_mh_execute_header, v37, v36, "%{public}s%{public}s");
    sub_10008BF74();
    sub_100081C28();
    sub_10008BF3C();
  }

  else
  {
  }

  sub_100098AC4();
  sub_10008BE10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100138C3C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_100138C5C, 0, 0);
}

uint64_t sub_100138C5C()
{
  sub_10013BDE0();
  sub_1000B02BC();
  v1 = sub_1001A9498();
  v0[21] = v1;
  v2 = sub_1001A9564(v1);
  v0[22] = v2;
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CC020 != -1)
  {
    swift_once();
  }

  v4 = [v3 URLForKey:qword_1003F2888];
  swift_unknownObjectRelease();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = [v2 requestWithMethod:2 bagURL:v4 parameters:isa];
  v0[23] = v6;

  v7 = [v1 dataTaskPromiseWithRequestPromise:v6];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v8 = sub_10013BB4C();
  v9 = sub_100080FB4(&qword_1003CDC88);
  sub_10008BD44(v9);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  v0[12] = sub_1000D67A8;
  v0[13] = &unk_100389AE0;
  v0[14] = v8;
  [v7 resultWithCompletion:v0 + 10];
  sub_10013BDF8();

  return _swift_continuation_await(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100138E44()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100138F40()
{
  sub_1000B02BC();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = (v1 + *(type metadata accessor for LoadProductsTask() + 20));
  type metadata accessor for ProductRequest();
  sub_10013BA50();
  v5 = *(v4 + 8);
  v6 = v2;
  sub_100106CE0();

  v7 = sub_100107174();
  sub_10012C8E0(v7, v8, v5);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 168);
  if (v12)
  {

    sub_10013BC74();
    sub_1000B0604();

    __asm { BRAA            X4, X16 }
  }

  sub_10013A9B8();
  sub_1000894A0();
  sub_10013BC8C(v15, 2);
  swift_willThrow();

  sub_100098AC4();
  sub_1000B0604();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100139088()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  swift_willThrow();

  sub_100098AC4();
  sub_1000B0518();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

id sub_100139104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithClientIdentifier:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10013916C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100139264;

  return v6(a1);
}

uint64_t sub_100139264()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

void sub_100139348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1001D4E88(v5 + v9, 1);

  sub_100139514(a1, a2, 1, a3);
}

unint64_t sub_1001393E4()
{
  result = qword_1003CED70;
  if (!qword_1003CED70)
  {
    type metadata accessor for ProductLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CED70);
  }

  return result;
}

uint64_t sub_100139438()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100139478()
{
  sub_100098BB4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1000AFE54(v2);
  *v3 = v4;
  sub_10013B940(v3);
  sub_10013BC74();

  return sub_10012F258(v5, v6, v7, v1);
}

void sub_100139514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(type metadata accessor for LoadProductsTask() - 8);
  v11 = *(v10 + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14 = v13 + v11 * a1;
  swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v14 + v11 * a3;
  if (v15)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      sub_100212B64(v13 + v11 * a2, v17 - a2, v14 + v11 * a3);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v15);
      v20 = v18 + v15;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
LABEL_14:
    sub_10013B1E8(a4, &qword_1003CED68);
    return;
  }

  v22 = 0;
  while ((v22 & 1) == 0)
  {
    sub_100130558(a4, v14, type metadata accessor for LoadProductsTask);
    v14 += v11;
    v22 = 1;
    if (v14 >= v16)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

Swift::Int sub_100139684(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10013A9A4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1001396F0(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001396F0(uint64_t *a1)
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
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1001398AC(v7, v8, a1, v4);
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
    return sub_1001397E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001397E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
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

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

void sub_1001398AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001D9FA8();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1001D9FA8();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_100139EE0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_100139DB4(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_100139DB4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10013A084(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100139EE0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100139EE0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100212AD0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100212AD0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_10013A098(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_10013A0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&qword_1003CEDB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_10013A1C4(void *a1)
{
  v1 = [a1 responseCorrelationId];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001073F0();
}

uint64_t sub_10013A224(uint64_t a1, uint64_t a2)
{
  ProductsTask = type metadata accessor for LoadProductsTask();
  (*(*(ProductsTask - 8) + 32))(a2, a1, ProductsTask);
  return a2;
}

unint64_t sub_10013A288()
{
  result = qword_1003CEDA0;
  if (!qword_1003CEDA0)
  {
    sub_1000852D4(&unk_1003D0530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEDA0);
  }

  return result;
}

uint64_t sub_10013A2EC()
{
  sub_10013BDE0();
  sub_1000B02BC();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10013BA5C(v1);
  sub_10013BDF8();

  return sub_100134938(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10013A394()
{
  v1 = type metadata accessor for URLComponents();
  sub_1000890DC();
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  ProductsTask = type metadata accessor for LoadProductsTask();
  sub_10013BF08();
  v9 = (v6 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v32 = *(v10 + 64);
  v33 = sub_100080FB4(&qword_1003CECA8);
  sub_1000890DC();
  v12 = v11;
  v13 = *(v11 + 80);
  swift_unknownObjectRelease();
  v15 = *(v3 + 8);
  v14 = v3 + 8;
  v15(v0 + v5, v1);

  v16 = (v0 + v9 + *(ProductsTask + 20));
  v17 = type metadata accessor for ClientOverride(0);
  if (!sub_10013BF9C(v17))
  {
    v18 = v16[1];
    if (v18 >> 60 != 15)
    {
      sub_10008E168(*v16, v18);
    }

    v19 = *(v14 + 28);
    v20 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v16 + v19, 3, v20))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v21 + 8))(v16 + v19);
    }

    v22 = *(v14 + 40);
    v23 = type metadata accessor for UUID();
    if (!sub_100081D0C(v16 + v22, 1, v23))
    {
      sub_10012ADC8();
      (*(v24 + 8))(v16 + v22, v23);
    }
  }

  v25 = (v32 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ProductRequest();
  sub_10013BD44();

  v27 = *(v12 + 8);
  v27(v0 + v9 + *(ProductsTask + 24), v33);

  v27(v0 + ((v26 + v13 + 8) & ~v13), v33);
  v28 = sub_10013BEA0();

  return _swift_deallocObject(v28, v29, v30);
}

uint64_t sub_10013A6C0()
{
  sub_1000B016C();
  v1 = type metadata accessor for URLComponents();
  sub_1000B046C(v1);
  ProductsTask = type metadata accessor for LoadProductsTask();
  sub_1000B046C(ProductsTask);
  sub_100080FB4(&qword_1003CECA8);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1000AFC98;
  sub_10013BC74();
  sub_10008E654();

  return sub_10013564C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10013A8AC()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_10013B960();

  return v4(v3);
}

unint64_t sub_10013A9B8()
{
  result = qword_1003CEDD0;
  if (!qword_1003CEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEDD0);
  }

  return result;
}

uint64_t sub_10013AA0C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10013AA60()
{
  swift_unknownObjectRelease();

  sub_1000B7E4C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10013AA9C()
{
  sub_100098BB4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000AFE54(v3);
  *v4 = v5;
  v6 = sub_10013B940(v4);

  return sub_100136758(v6, v2, v1);
}

uint64_t sub_10013AB34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013AB6C()
{
  sub_10008BE9C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1000AFE54(v2);
  *v3 = v4;
  v5 = sub_10013B940(v3);

  return sub_100136B28(v5, v1);
}

uint64_t sub_10013ABF8()
{
  sub_10008BE9C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1000AFE54(v2);
  *v3 = v4;
  v5 = sub_10013B940(v3);

  return sub_100136E38(v5, v1);
}

uint64_t sub_10013AC84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10013AC90()
{
  sub_1000B072C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10013BA5C(v1);
  sub_1000B0718();

  return sub_10013795C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10013AD2C()
{
  ProductsTask = type metadata accessor for LoadProductsTask();
  sub_10013BF08();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v26 = *(v5 + 64);
  v6 = sub_100080FB4(&qword_1003CECA8);
  sub_1000890DC();
  v8 = v7;
  v9 = *(v7 + 80);
  swift_unknownObjectRelease();

  v27 = v4;
  v10 = v0 + v4;

  v11 = (v0 + v4 + *(ProductsTask + 20));
  v12 = type metadata accessor for ClientOverride(0);
  if (!sub_10013BF9C(v12))
  {
    v13 = v11[1];
    if (v13 >> 60 != 15)
    {
      sub_10008E168(*v11, v13);
    }

    v14 = *(v1 + 28);
    v15 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v11 + v14, 3, v15))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v16 + 8))(v11 + v14);
    }

    v17 = *(v1 + 40);
    v18 = type metadata accessor for UUID();
    if (!sub_100081D0C(v11 + v17, 1, v18))
    {
      sub_10012ADC8();
      (*(v19 + 8))(v11 + v17, v18);
    }
  }

  type metadata accessor for ProductRequest();
  sub_10013BD44();

  v20 = *(ProductsTask + 24);
  v21 = *(v8 + 8);
  v21(v10 + v20, v6);
  v21(v0 + ((v27 + v26 + v9) & ~v9), v6);
  v22 = sub_10013BEA0();

  return _swift_deallocObject(v22, v23, v24);
}

uint64_t sub_10013AFAC()
{
  sub_10013BAC0();
  sub_1000EDA60();
  ProductsTask = type metadata accessor for LoadProductsTask();
  sub_1000B046C(ProductsTask);
  sub_100080FB4(&qword_1003CECA8);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1000AFC98;
  sub_10013BC74();
  sub_1001240F8();

  return sub_1001384D4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10013B104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100080FB4(a3);
  sub_10012ADC8();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_10013B164()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B1B4()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B1E8(uint64_t a1, uint64_t *a2)
{
  sub_100080FB4(a2);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LoadProductsTask.LoadProductsError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10013B31CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013B358()
{
  result = qword_1003CEE40;
  if (!qword_1003CEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEE40);
  }

  return result;
}

uint64_t sub_10013B46C()
{

  return swift_unknownObjectRelease();
}

_OWORD *sub_10013B598()
{
  v3 = (*(v1 + 56) + 32 * v0);
  sub_100080F0C(v3);

  return sub_10008B5D0((v2 - 192), v3);
}

void sub_10013B5D0()
{

  sub_1001D9D58();
}

uint64_t sub_10013B674()
{
  sub_10008B5D0((v0 - 160), (v0 - 192));

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL sub_10013B6B8()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_10013B6D8()
{
}

void sub_10013B6F8(uint64_t a1@<X8>)
{
  v1[6] = 1;
  v1[7] = a1;
  v1[8] = v2;
}

double sub_10013B7FC()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void sub_10013B824()
{
  v1[12] = sub_10023FCCC;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_10013B83C(uint64_t a1)
{
  *(a1 + 16) = &unk_1002F1DC0;
  *(a1 + 24) = v1;
}

uint64_t sub_10013B86C(uint64_t a1)
{
  *(a1 + 16) = &unk_1002F1E78;
  *(a1 + 24) = v1;
}

uint64_t sub_10013B89C()
{

  return sub_10013B1E8(v1 - 160, v0);
}

uint64_t sub_10013B8B8(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_100080F58(v4, v2 - 160);
}

uint64_t sub_10013B8E0()
{
}

uint64_t sub_10013B988@<X0>(uint64_t a1@<X8>)
{
  v5 = v2[5];
  v4 = v2[6];
  v6 = a1 - 1;
  v7 = v1 + ((*(v2[8] + 80) + 32) & ~*(v2[8] + 80)) + *(v2[8] + 72) * v6;
  *(v1 + 16) = v6;
  *(v5 + 112) = v1;

  return sub_10013A224(v7, v4);
}

_OWORD *sub_10013B9C4()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_10008B5D0(v4, (v2 - 160));
}

_OWORD *sub_10013BA88()
{

  return sub_10008B5D0((v0 - 160), (v0 - 192));
}

uint64_t sub_10013BAA0()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10013BAE8(uint64_t a1)
{

  return AsyncThrowingStream.Continuation.finish(throwing:)(v1, a1);
}

void sub_10013BB04(uint64_t a1)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = 91;
  *(v3 - 80) = 0xE100000000000000;
  v5 = v1;
  v6 = v2;

  String.append(_:)(*&v5);
}

uint64_t sub_10013BB4C()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

unint64_t sub_10013BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 + 4) = v12;
  *(v11 + 12) = 2082;

  return sub_100080210(v10, v9, &a9);
}

void sub_10013BC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(v16 - 80);
  *(v16 - 88) = *(v16 - 88);
  *(v16 - 80) = v18;
  v20 = 0xD000000000000013;

  v19 = a16 | 0x8000000000000000;
  String.append(_:)(*&v20);
}

double sub_10013BCC8()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

void sub_10013BD04(void *a1@<X8>)
{
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);
  *v3 = *(v1 + 144);
  *(v3 + 8) = v4;
}

uint64_t sub_10013BD28()
{

  return swift_dynamicCast();
}

uint64_t sub_10013BD44()
{
  j__swift_bridgeObjectRelease();
}

uint64_t sub_10013BD84(uint64_t a1)
{
  v3 = *(v1 - 80);

  return sub_100081DFC(a1, 1, 1, v3);
}

uint64_t sub_10013BDA0()
{
}

uint64_t sub_10013BDBC()
{

  return swift_beginAccess();
}

void sub_10013BE10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10013BF1C()
{
}

void sub_10013BF3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id sub_10013BF5C(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_10013BF7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10013BF9C(uint64_t a1)
{

  return sub_100081D0C(v1, 1, a1);
}

void sub_10013BFBC(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001CLL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10013BFDC()
{

  return swift_unknownObjectRelease();
}

void sub_10013BFF4()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t sub_10013C00C()
{

  return swift_getObjectType();
}

uint64_t sub_10013C050(uint64_t a1, uint64_t a2)
{
  sub_100081DFC(*(v2 + 48), a2, 1, *(v2 + 56));

  return swift_endAccess();
}

uint64_t sub_10013C09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080FB4(&unk_1003D20F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100081D0C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10013C16C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080FB4(&unk_1003D20F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100081DFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for StorefrontRequest()
{
  result = qword_1003CEEA8;
  if (!qword_1003CEEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C270()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10013C2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10013C3B0(char a1)
{
  if (a1)
  {
    return 0x79654B676F6CLL;
  }

  else
  {
    return 0x764F746E65696C63;
  }
}

uint64_t sub_10013C3F0(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CEF08);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_10013C9F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_10013CD60();
  sub_10013CB0C(v9, v10);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for StorefrontRequest();
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10013C590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  sub_100080FB4(&qword_1003CEEF8);
  sub_1000890DC();
  v23 = v8;
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for StorefrontRequest();
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086D24(a1, a1[3]);
  sub_10013C9F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  type metadata accessor for ClientOverride(0);
  v26 = 0;
  sub_10013CD60();
  sub_10013CB0C(v12, v13);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100086E28(v6, v11);
  v25 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17 = sub_10013CD78();
  v18(v17);
  v19 = &v11[*(v9 + 20)];
  *v19 = v14;
  v19[1] = v16;
  sub_10013CA4C(v11, v22);
  sub_100080F0C(a1);
  return sub_10013CAB0(v11);
}

uint64_t sub_10013C84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013C2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013C874(uint64_t a1)
{
  v2 = sub_10013C9F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013C8B0(uint64_t a1)
{
  v2 = sub_10013C9F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013C91C(uint64_t a1)
{
  *(a1 + 8) = sub_10013CB0C(&qword_1003CEEE0, type metadata accessor for StorefrontRequest);
  result = sub_10013CB0C(&qword_1003CEEE8, type metadata accessor for StorefrontRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10013C9A0(uint64_t a1)
{
  result = sub_10013CB0C(&qword_1003CEEF0, type metadata accessor for StorefrontRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10013C9F8()
{
  result = qword_1003CEF00;
  if (!qword_1003CEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEF00);
  }

  return result;
}

uint64_t sub_10013CA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013CAB0(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013CB0C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StorefrontRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10013CC20);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013CC5C()
{
  result = qword_1003CEF10;
  if (!qword_1003CEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEF10);
  }

  return result;
}

unint64_t sub_10013CCB4()
{
  result = qword_1003CEF18;
  if (!qword_1003CEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEF18);
  }

  return result;
}

unint64_t sub_10013CD0C()
{
  result = qword_1003CEF20;
  if (!qword_1003CEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEF20);
  }

  return result;
}

id sub_10013CD88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  sub_100086D24(a3, a3[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8 = [swift_getObjCClassFromMetadata() predicateWithProperty:v6 value:v7 comparisonType:a4];
  swift_unknownObjectRelease();

  sub_100080F0C(a3);
  return v8;
}

uint64_t sub_10013CE30(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return notify_post(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return notify_post(v3);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10013CECC()
{
  sub_10008BE9C();
  *(v0 + 360) = v1;
  *(v0 + 368) = v2;
  *(v0 + 484) = v3;
  *(v0 + 352) = v4;
  v5 = type metadata accessor for PurchaseIntentInternal();
  sub_1000B046C(v5);
  *(v0 + 376) = v6;
  *(v0 + 384) = *(v7 + 64);
  *(v0 + 392) = swift_task_alloc();
  v8 = sub_10009F0B8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10013CF84()
{
  sub_10008BE9C();
  if (qword_1003CBD98 != -1)
  {
    sub_1001068A0();
  }

  *(v0 + 400) = qword_1003CEF28;
  v1 = sub_100123E74();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10013D004()
{
  sub_10008BE9C();
  *(v0 + 408) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10013D064()
{
  sub_100098BB4();
  v1 = v0[49];
  v2 = v0[47];
  sub_1001439E0(v0[44], v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_allocObject();
  v0[52] = v4;
  sub_100105F40(v1, v4 + v3);
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_10013D158;

  return sub_1001D5E3C(sub_100143C00, v4);
}

uint64_t sub_10013D158()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10013D7C8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013DBD4()
{
  v98 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  swift_willThrow();

  v3 = &off_1003CB000;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v4 = *(v0 + 472);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v91 = type metadata accessor for SKLogger();
  sub_10007EDA4(v91, qword_1003F26C8);
  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  *(v0 + 320) = 0;
  *(v0 + 328) = 0xE000000000000000;
  v7._object = 0x8000000100319790;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v6;
  v8._object = v5;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000001FLL;
  v9._object = 0x80000001003197B0;
  String.append(_:)(v9);
  *(v0 + 344) = v4;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  v14 = sub_1000B0660();
  v16 = *(v0 + 448);
  v15 = *(v0 + 456);
  if (v14)
  {
    v88 = *(v0 + 472);
    v90 = *(v0 + 456);
    v18 = *(v0 + 360);
    v17 = *(v0 + 368);
    v19 = sub_10008E688();
    sub_10008E670();
    *v19 = 136446466;
    sub_10009F0F8();
    v95 = v20;
    v96 = v21;
    v97 = v22;
    v23._countAndFlagsBits = v18;
    v23._object = v17;
    String.append(_:)(v23);
    sub_10009F134();
    v32 = sub_1000B0550(v24, v25, v26, v27, v28, v29, v30, v31, v85, v11, v88, v90, v91, v95, v96, v97);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2082;
    v33 = sub_100080210(v86, v10, &v95);

    *(v19 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    v3 = &off_1003CB000;
    sub_100081C28();
  }

  else
  {
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v3[459] != -1)
  {
    sub_100081C08();
  }

  sub_10007EDA4(v91, qword_1003F26C8);
  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  sub_100143E30();
  v96 = v37;
  v97 = v38;
  v39._countAndFlagsBits = v34;
  v39._object = v36;
  String.append(_:)(v39);
  v40._countAndFlagsBits = sub_100143DA8();
  String.append(_:)(v40);
  v41 = v96;
  v42 = v97;
  v43 = static os_log_type_t.default.getter();

  v44 = Logger.logObject.getter();

  if (sub_1000B0660())
  {
    v92 = v34;
    v45 = *(v0 + 360);
    v46 = *(v0 + 368);
    v47 = sub_10008E688();
    sub_10008E670();
    *v47 = 136446466;
    sub_10009F0F8();
    v95 = v48;
    v96 = v49;
    v97 = v50;
    v51._countAndFlagsBits = v45;
    v51._object = v46;
    String.append(_:)(v51);
    sub_10009F134();
    sub_1000B0550(v52, v53, v54, v55, v56, v57, v58, v59, v85, v86, v41, v36, v92, v95, v96, v97);
    sub_100123F48();

    *(v47 + 4) = v45;
    v34 = v93;
    *(v47 + 12) = 2082;
    v60 = sub_100080210(v87, v42, &v95);

    *(v47 + 14) = v60;
    sub_100143EB4(&_mh_execute_header, v61, v62, "%{public}s%{public}s");
    sub_100143FE0();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v63 = sub_100143E94();
  v96 = v34;
  v97 = v36;
  v64._countAndFlagsBits = sub_100143E80();
  v64._object = 0xE900000000000020;
  String.append(_:)(v64);
  *(v0 + 480) = v63;
  v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v65._object;
  String.append(_:)(v65);

  v68 = v96;
  v67 = v97;
  v69 = static os_log_type_t.debug.getter();

  Logger.logObject.getter();
  sub_100143F28();

  v70 = os_log_type_enabled(object, v69);
  v71 = *(v0 + 408);
  if (v70)
  {
    sub_10008E688();
    v95 = sub_100143E48();
    sub_100143DCC(4.8752e-34);
    v96 = v72;
    v97 = v73;
    sub_100143F10();
    sub_10009F134();
    sub_1000B0550(v74, v75, v76, v77, v78, v79, v80, v81, v85, v86, v87, v89, v68, v95, v96, v97);
    sub_100143F58();
    sub_10009F124();
    sub_100080210(v94, v67, &v95);
    sub_100143FF8();
    *(v43 + 14) = &v96;
    sub_100143E64(&_mh_execute_header, v82, v69, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFF34();
  }

  else
  {
  }

  sub_100098AC4();

  return v83();
}

uint64_t sub_10013E178()
{
  sub_10008BE9C();
  v0[103] = v1;
  v0[102] = v2;
  v0[101] = v3;
  v4 = type metadata accessor for PurchaseIntentInternal();
  sub_1000B046C(v4);
  v0[104] = v5;
  v0[105] = swift_task_alloc();
  v0[106] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v0[107] = v6;
  sub_1000B046C(v6);
  v0[108] = v7;
  v0[109] = *(v8 + 64);
  v0[110] = swift_task_alloc();
  v0[111] = swift_task_alloc();
  v9 = sub_10009F0B8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10013E29C()
{
  sub_100098BB4();
  if (qword_1003CC0C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F2930;
  v0[112] = qword_1003F2930;
  v2 = qword_1003CBF18;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v0[113] = qword_1003F2780;
  v3 = [v1 BOOLForKey:?];
  v0[114] = v3;
  v0[2] = v0;
  v0[7] = v0 + 95;
  v0[3] = sub_10013E44C;
  v4 = swift_continuation_init();
  v0[25] = sub_100080FB4(&qword_1003CEDB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10012C050;
  v0[21] = &unk_10038A140;
  v0[22] = v4;
  [v3 valueWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10013E44C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 920) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013E548()
{
  v36 = v0;
  v1 = *(v0 + 760);

  v2 = [v1 BOOLValue];
  if (v2)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v3 = *(v0 + 904);
    v4 = type metadata accessor for SKLogger();
    sub_10007EDA4(v4, qword_1003F26C8);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v5._object = 0x8000000100319680;
    v5._countAndFlagsBits = 0xD000000000000046;
    String.append(_:)(v5);
    *(v0 + 800) = v3;
    type metadata accessor for AMSBagKey(0);
    _print_unlocked<A, B>(_:_:)();
    v6 = *(v0 + 600);
    v7 = *(v0 + 608);
    v8 = static os_log_type_t.default.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = *(v0 + 824);
      v32 = v6;
      v11 = *(v0 + 816);
      v12 = sub_10008E688();
      sub_10008E670();
      *v12 = 136446466;
      sub_10009F0F8();
      v33 = v13;
      v34 = v14;
      v35 = v15;
      v16._countAndFlagsBits = v11;
      v16._object = v10;
      String.append(_:)(v16);
      sub_10009F134();
      v17 = v35;
      v18 = sub_100080210(v34, v35, &v33);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2082;
      sub_100080210(v32, v7, &v33);
      sub_1000B03CC();
      *(v12 + 14) = v17;
      sub_100124114(&_mh_execute_header, v19, v20, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_10008BF3C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_15:
    sub_100143DF0();

    sub_100098AC4();
    sub_10008BE10();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 808);
  v22 = *(v21 + 16);
  *(v0 + 928) = v22;
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  *(v0 + 936) = @"sk-notification-category-purchase-intent";
  *(v0 + 944) = @"date";
  *(v0 + 952) = 0;
  sub_100143D94(v21);
  v23 = qword_1003CBDA0;

  if (v23 != -1)
  {
    v24 = sub_100143D54();
  }

  sub_100143D40(v24, qword_1003CEF30);
  sub_100123E74();
  sub_10008BE10();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10013E86C()
{
  sub_10008BE9C();
  v1 = v0[122];
  v0[123] = *(v1 + 112);
  v0[124] = *(v1 + 120);

  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10013E8E0()
{
  v25 = v1;
  v4 = v1[124];
  if (!v4)
  {
    v5 = v1[121];

LABEL_9:
    v1[125] = v5;
    static Date.distantPast.getter();
    v7 = swift_allocObject();
    v1[126] = v7;
    *(v7 + 16) = _swiftEmptyArrayStorage;
    if (qword_1003CBD98 != -1)
    {
      sub_1001068A0();
    }

    v8 = qword_1003CEF28;
    v1[127] = qword_1003CEF28;
    v9 = sub_10013EC40;
    goto LABEL_25;
  }

  v5 = v1[121];
  v6 = v1[123] == v1[120] && v4 == v5;
  if (!v6)
  {
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v0 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  sub_100143F00();
  v10 = sub_100143FB0();
  sub_10007EDA4(v10, qword_1003F26C8);
  v1[83] = 0;
  v1[84] = 0xE000000000000000;
  _StringGuts.grow(_:)(81);
  v11 = v1[84];
  v1[37] = v1[83];
  v1[38] = v11;
  v12._countAndFlagsBits = 0xD00000000000002DLL;
  v12._object = (v2 | 0x8000000000000000);
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100093DD0();
  String.append(_:)(v13);

  v14._object = 0x8000000100319650;
  v14._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v14);
  static os_log_type_t.default.getter();
  sub_100143F70();

  Logger.logObject.getter();
  sub_100143F28();

  if (sub_10009F1F4())
  {
    sub_100143E10();
    v24 = sub_100143E48();
    *v3 = 136446466;
    v1[93] = 91;
    v1[94] = 0xE100000000000000;
    sub_100143F10();
    sub_10009F134();
    v15 = v1[94];
    sub_100080210(v1[93], v15, &v24);
    sub_100143F58();
    sub_10009F124();
    sub_100143FC8(v16, v17, &v24);
    sub_1000B03CC();
    *(v3 + 14) = v15;
    sub_100143E64(&_mh_execute_header, v18, v0, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFF34();
  }

  else
  {
  }

  sub_100143DDC();
  if (!v6)
  {
    sub_100143D74(v19);
    v22 = qword_1003CBDA0;

    if (v22 != -1)
    {
      v23 = sub_100143D54();
    }

    sub_100143D40(v23);
LABEL_25:

    return _swift_task_switch(v9, v8, 0);
  }

  swift_unknownObjectRelease();
  sub_100143DF0();

  sub_100098AC4();

  return v20();
}

uint64_t sub_10013EC40()
{
  sub_10008BE9C();
  *(v0 + 1024) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10013ECA0()
{
  v19 = v0[125];
  v20 = v0[126];
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[103];
  v17 = v0[102];
  v18 = v0[120];
  (*(v3 + 16))(v1, v0[111], v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[129] = v9;
  (*(v3 + 32))(v9 + v6, v1, v4);
  v10 = (v9 + v7);
  *v10 = v18;
  v10[1] = v19;
  *(v9 + v8) = v20;
  v11 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v17;
  v11[1] = v5;

  v12 = swift_task_alloc();
  v0[130] = v12;
  *v12 = v0;
  v12[1] = sub_10013EE38;
  sub_10008BE10();

  return sub_1001D5D00(v13, v14);
}

uint64_t sub_10013EE38()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10013EF38()
{
  v138 = v0;
  v3 = *(v0 + 1008);
  v4 = *(v0 + 888);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  v7 = v3[2];

  if (!*(v7 + 16))
  {

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    sub_100143F00();
    v48 = sub_100143FB0();
    sub_10007EDA4(v48, qword_1003F26C8);
    *(v0 + 728) = 0;
    *(v0 + 736) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v49 = *(v0 + 736);
    *(v0 + 712) = *(v0 + 728);
    *(v0 + 720) = v49;
    v50._countAndFlagsBits = 0xD00000000000002DLL;
    v50._object = (v1 | 0x8000000000000000);
    String.append(_:)(v50);
    v51._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 0xD00000000000001ELL;
    v52._object = 0x8000000100319630;
    String.append(_:)(v52);
    static os_log_type_t.debug.getter();
    sub_100143F70();

    Logger.logObject.getter();
    sub_100143F28();

    if (sub_10009F1F4())
    {
      sub_100143E10();
      v53 = sub_100143E48();
      sub_1000EDAFC(v53);
      sub_100143DCC(4.8752e-34);
      *(v0 + 312) = v54;
      *(v0 + 320) = v55;
      sub_100143F10();
      sub_10009F134();
      v56 = *(v0 + 320);
      sub_100080210(*(v0 + 312), v56, &v137);
      sub_100143F58();
      sub_10009F124();
      sub_100143FC8(v57, v58, &v137);
      sub_1000B03CC();
      *(v2 + 14) = v56;
      sub_100143E64(&_mh_execute_header, v59, v6, "%{public}s%{public}s");
      sub_100098BC0();
      sub_10008BF3C();
      sub_1000AFF34();
    }

    else
    {
    }

    goto LABEL_31;
  }

  v8 = *(v0 + 848);
  v9 = *(*(v0 + 832) + 80);
  sub_1001439E0(v7 + ((v9 + 32) & ~v9), *(v0 + 840));

  v10 = sub_100093DD0();
  sub_100105F40(v10, v11);
  v12 = v8[1];
  if (v12 && (v13 = *(v0 + 848), (v1 = v13[7]) != 0))
  {
    v14 = *v8;
    v15 = v13[6];
    v17 = v13[2];
    v16 = v13[3];

    v136._object = v16;
    if (sub_100140F64(v17, v16))
    {
      v18 = " is not installed";
      sub_10008E5A4(0, &qword_1003CE6E8);
      v19 = sub_1001A29B0();
      *(v0 + 1048) = v19;
      if (v19)
      {
        v132 = v14;
        v134 = v15;
        v136._countAndFlagsBits = v17;

        v20 = String._bridgeToObjectiveC()();
        v21 = sub_1001077CC();
        v23 = [v21 v22];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
        v25 = sub_1001077CC();
        v27 = [v25 v26];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (qword_1003CBE58 != -1)
        {
          sub_100081C08();
        }

        v28 = type metadata accessor for SKLogger();
        *(v0 + 1056) = sub_10007EDA4(v28, qword_1003F26C8);
        *(v0 + 488) = 0;
        *(v0 + 496) = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        *(v0 + 472) = 0xD000000000000029;
        *(v0 + 480) = 0x8000000100319560;
        v29._countAndFlagsBits = v17;
        v29._object = v16;
        String.append(_:)(v29);
        v30 = *(v0 + 472);
        v31 = *(v0 + 480);
        v32 = static os_log_type_t.default.getter();

        v33 = Logger.logObject.getter();

        if (os_log_type_enabled(v33, v32))
        {
          v133 = *(v0 + 824);
          v135 = v30;
          v34 = *(v0 + 816);
          v35 = sub_10008E688();
          v137 = sub_10008E670();
          *v35 = 136446466;
          *(v0 + 696) = 91;
          *(v0 + 704) = 0xE100000000000000;
          v36._countAndFlagsBits = v34;
          v36._object = v133;
          String.append(_:)(v36);
          sub_10009F134();
          v37 = sub_100080210(*(v0 + 696), *(v0 + 704), &v137);

          *(v35 + 4) = v37;
          *(v35 + 12) = 2082;
          v38 = sub_100080210(v135, v31, &v137);

          *(v35 + 14) = v38;
          _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v35, 0x16u);
          sub_100143FE0();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

        v128 = *(v0 + 936);
        v131 = *(v0 + 856);
        v88 = *(v0 + 848);
        v89 = *(v88 + 32);
        *(v0 + 1064) = v89;
        v90 = *(v88 + 40);
        *(v0 + 1072) = v90;
        *(v0 + 504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 512) = v91;
        v92._countAndFlagsBits = 45;
        v92._object = 0xE100000000000000;
        String.append(_:)(v92);
        v93._countAndFlagsBits = v89;
        v93._object = v90;
        String.append(_:)(v93);
        v129 = *(v0 + 512);
        v130 = *(v0 + 504);
        sub_100080FB4(&qword_1003CF008);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1002ED290;
        *(v94 + 56) = &type metadata for String;
        v95 = sub_100143AA0();
        *(v94 + 64) = v95;
        *(v94 + 32) = v132;
        *(v94 + 40) = v12;
        String.init(format:_:)();

        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1002ED290;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = v95;
        *(v96 + 32) = v134;
        *(v96 + 40) = v1;
        String.init(format:_:)();

        *(v0 + 536) = 0;
        *(v0 + 544) = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        v97 = *(v0 + 544);
        *(v0 + 520) = *(v0 + 536);
        *(v0 + 528) = v97;
        v98._countAndFlagsBits = 0xD000000000000030;
        v98._object = 0x8000000100319590;
        String.append(_:)(v98);
        String.append(_:)(v136);
        v99._countAndFlagsBits = 0xD000000000000013;
        v99._object = 0x80000001003195D0;
        String.append(_:)(v99);
        v100._countAndFlagsBits = v89;
        v100._object = v90;
        String.append(_:)(v100);
        v101 = *(v0 + 520);
        v102 = *(v0 + 528);
        v103 = [objc_allocWithZone(UNMutableNotificationContent) init];
        *(v0 + 1080) = v103;
        [v103 setCategoryIdentifier:v128];
        v104 = String._bridgeToObjectiveC()();

        v105 = sub_1001077CC();
        [v105 v106];

        v107 = String._bridgeToObjectiveC()();

        v108 = sub_1001077CC();
        [v108 v109];

        sub_100080FB4(&unk_1003D18F0);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_1002ED2C0;
        *(v0 + 552) = 7107189;
        *(v0 + 560) = 0xE300000000000000;
        AnyHashable.init<A>(_:)();
        *(v110 + 96) = &type metadata for String;
        *(v110 + 72) = v101;
        *(v110 + 80) = v102;
        *(v0 + 568) = 6580594;
        *(v0 + 576) = 0xE300000000000000;
        AnyHashable.init<A>(_:)();
        *(v110 + 168) = &type metadata for String;
        *(v110 + 144) = v130;
        *(v110 + 152) = v129;
        *(v0 + 584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 592) = v111;

        AnyHashable.init<A>(_:)();
        *(v110 + 240) = v131;
        sub_10009E720((v110 + 216));
        static Date.now.getter();
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v103 setUserInfo:isa];

        v113 = [objc_opt_self() defaultSound];
        v114 = sub_1001077CC();
        [v114 v115];

        [v103 setInterruptionLevel:2];
        [v103 setShouldBackgroundDefaultAction:1];
        sub_10008E5A4(0, &qword_1003CF018);
        v116 = sub_100141930(v130, v129, v103, 0);
        *(v0 + 1088) = v116;
        v117 = [objc_opt_self() sharedManager];
        *(v0 + 1096) = v117;
        *(v0 + 80) = v0;
        *(v0 + 88) = sub_10013FE1C;
        v118 = swift_continuation_init();
        *(v0 + 264) = sub_100080FB4(&qword_1003CF020);
        *(v0 + 208) = _NSConcreteStackBlock;
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1001419B4;
        *(v0 + 232) = &unk_10038A1B8;
        *(v0 + 240) = v118;
        [v117 postNotificationRequest:v116 withCompletionHandler:?];
        sub_100143F94();

        return _swift_continuation_await(v119, v120, v121, v122, v123, v124, v125, v126);
      }

      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      sub_100143F00();
      v68 = sub_100143FB0();
      sub_10007EDA4(v68, qword_1003F26C8);
      *(v0 + 440) = 0;
      *(v0 + 448) = 0xE000000000000000;
      _StringGuts.grow(_:)(93);
      v69 = *(v0 + 448);
      *(v0 + 424) = *(v0 + 440);
      *(v0 + 432) = v69;
      v70._countAndFlagsBits = 0xD00000000000002DLL;
      v70._object = (v1 | 0x8000000000000000);
      String.append(_:)(v70);
      v71._countAndFlagsBits = sub_100093DD0();
      String.append(_:)(v71);

      v72._countAndFlagsBits = 0xD00000000000002ELL;
      v72._object = 0x80000001003194C0;
      String.append(_:)(v72);
      static os_log_type_t.default.getter();
      sub_100143F70();

      Logger.logObject.getter();
      sub_100143F28();

      if (sub_10009F1F4())
      {
        sub_100143E10();
        v73 = sub_100143E48();
        sub_1000EDAFC(v73);
        sub_100143DCC(4.8752e-34);
        *(v0 + 456) = v74;
        *(v0 + 464) = v75;
        sub_100143F10();
        sub_10009F134();
        v46 = *(v0 + 456);
        v47 = *(v0 + 464);
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v14 = *(v0 + 824);
    v16 = " or product name are missing";
    v60 = type metadata accessor for SKLogger();
    v18 = sub_10007EDA4(v60, qword_1003F26C8);
    *(v0 + 392) = 0;
    *(v0 + 400) = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v61 = *(v0 + 400);
    *(v0 + 376) = *(v0 + 392);
    *(v0 + 384) = v61;
    v62._object = 0x80000001003193F0;
    v62._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v62);
    v63._countAndFlagsBits = v17;
    v63._object = v136._object;
    String.append(_:)(v63);
    v64._countAndFlagsBits = 0xD000000000000021;
    v64._object = 0x8000000100319440;
    String.append(_:)(v64);
    static os_log_type_t.info.getter();
    sub_100143F70();

    Logger.logObject.getter();
    sub_100143F28();

    if (!sub_10009F1F4())
    {
      goto LABEL_29;
    }

    sub_100143E10();
    v65 = sub_100143E48();
    sub_1000EDAFC(v65);
    sub_100143DCC(4.8752e-34);
    *(v0 + 408) = v66;
    *(v0 + 416) = v67;
    sub_100143F10();
    sub_10009F134();
    v46 = *(v0 + 408);
    v47 = *(v0 + 416);
  }

  else
  {

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v16 = *(v0 + 848);
    v14 = *(v0 + 824);
    v39 = sub_100143FB0();
    v18 = sub_10007EDA4(v39, qword_1003F26C8);
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v40 = *(v0 + 352);
    *(v0 + 328) = *(v0 + 344);
    *(v0 + 336) = v40;
    v41._object = (v1 | 0x8000000000000000);
    v41._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v41);
    String.append(_:)(v16[1]);
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    v42._object = 0x8000000100319410;
    String.append(_:)(v42);
    static os_log_type_t.error.getter();
    sub_100143F70();

    Logger.logObject.getter();
    sub_100143F28();

    if (!sub_10009F1F4())
    {
      goto LABEL_29;
    }

    sub_100143E10();
    v43 = sub_100143E48();
    sub_1000EDAFC(v43);
    sub_100143DCC(4.8752e-34);
    *(v0 + 360) = v44;
    *(v0 + 368) = v45;
    sub_100143F10();
    sub_10009F134();
    v46 = *(v0 + 360);
    v47 = *(v0 + 368);
  }

LABEL_28:
  sub_100080210(v46, v47, &v137);
  sub_100143F58();
  sub_10009F124();
  sub_100143FC8(v76, v77, &v137);
  sub_1000B03CC();
  *(v14 + 14) = v47;
  sub_100143E64(&_mh_execute_header, v78, v16, "%{public}s%{public}s");
  sub_100098BC0();
  sub_10008BF3C();
  sub_1000AFF34();
LABEL_30:

  sub_100143A44(*(v0 + 848));
LABEL_31:
  sub_100143DDC();
  if (v80)
  {
    swift_unknownObjectRelease();
    sub_100143DF0();

    sub_100098AC4();
    sub_100143F94();

    __asm { BRAA            X1, X16 }
  }

  sub_100143D74(v79);
  v83 = qword_1003CBDA0;

  if (v83 != -1)
  {
    sub_100143D54();
  }

  sub_100143D40();
  sub_100123E74();
  sub_100143F94();

  return _swift_task_switch(v84, v85, v86);
}

uint64_t sub_10013FE1C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1104) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013FF18()
{
  sub_100098BB4();
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 848);

  sub_100143A44(v4);
  sub_100143DDC();
  if (v6)
  {
    swift_unknownObjectRelease();
    sub_100143DF0();

    sub_100098AC4();

    return v7();
  }

  else
  {
    sub_100143D74(v5);
    v9 = qword_1003CBDA0;

    if (v9 != -1)
    {
      sub_100143D54();
    }

    sub_100143D40();
    v10 = sub_100123E74();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1001403D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000D40B0();
  a25 = v27;
  a26 = v28;
  sub_1001077D8();
  a24 = v26;
  v29 = *(v26 + 1104);
  v30 = *(v26 + 1096);
  v31 = *(v26 + 1072);
  v32 = *(v26 + 1064);
  swift_willThrow();

  *(v26 + 648) = 0;
  *(v26 + 656) = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v33 = *(v26 + 656);
  *(v26 + 632) = *(v26 + 648);
  *(v26 + 640) = v33;
  v34._object = 0x80000001003195F0;
  v34._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v34);
  v35._countAndFlagsBits = v32;
  v35._object = v31;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8250;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  *(v26 + 776) = v29;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v37 = *(v26 + 632);
  v38 = *(v26 + 640);
  LOBYTE(v29) = static os_log_type_t.error.getter();

  v39 = Logger.logObject.getter();

  if (os_log_type_enabled(v39, v29))
  {
    a12 = *(v26 + 1104);
    a13 = *(v26 + 1080);
    a10 = *(v26 + 1088);
    a11 = *(v26 + 1048);
    v40 = *(v26 + 824);
    v41 = *(v26 + 816);
    v42 = sub_10008E688();
    a14 = sub_10008E670();
    *v42 = 136446466;
    *(v26 + 680) = 91;
    *(v26 + 688) = 0xE100000000000000;
    v43._countAndFlagsBits = v41;
    v43._object = v40;
    String.append(_:)(v43);
    sub_10009F134();
    v44 = *(v26 + 688);
    sub_100080210(*(v26 + 680), v44, &a14);
    sub_100123F48();

    *(v42 + 4) = v41;
    *(v42 + 12) = 2082;
    sub_100080210(v37, v38, &a14);
    sub_100143FF8();
    *(v42 + 14) = v44;
    sub_100124114(&_mh_execute_header, v45, v46, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_10008BF3C();
  }

  else
  {
    v47 = *(v26 + 1080);
    v48 = *(v26 + 1048);
  }

  sub_100143A44(*(v26 + 848));
  sub_100143DDC();
  if (v50)
  {
    swift_unknownObjectRelease();
    sub_100143DF0();

    sub_100098AC4();
    sub_10009F1B8();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_100143D74(v49);
    v60 = qword_1003CBDA0;

    if (v60 != -1)
    {
      sub_100143D54();
    }

    sub_100143D40();
    sub_100123E74();
    sub_10009F1B8();

    return _swift_task_switch(v61, v62, v63);
  }
}

uint64_t sub_100140704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_100140720()
{
  v23 = v0;
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_10008E5A4(0, &qword_1003CCBB8);
  v22 = &type metadata for String;
  v20 = v3;
  v21 = v2;

  v5 = sub_100093E18();
  v6 = sub_100223CB4(v5, 0xE900000000000064, &v20);
  v7 = v6;
  v0[8] = v6;
  if (v1)
  {
    v9 = v0[4];
    v8 = v0[5];
    v22 = &type metadata for String;
    v20 = v9;
    v21 = v8;

    v10 = sub_100223CB4(0x5F746375646F7270, 0xEA00000000006469, &v20);
    sub_10008E5A4(0, &unk_1003D28B0);
    sub_100080FB4(&qword_1003CCBB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002ED020;
    *(v11 + 32) = v7;
    *(v11 + 88) = v4;
    *(v11 + 56) = v4;
    *(v11 + 64) = v10;
    v12 = v7;
    v13 = sub_10018F08C();
  }

  else
  {
    v13 = v6;
  }

  v14 = v13;
  v0[9] = v13;
  v15 = v13;
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_1001408D4;
  v17 = v0[6];
  v18 = v0[7];

  return sub_1001412D4(v14, v17, v18);
}

uint64_t sub_1001408D4()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001409D0()
{
  sub_10008BE9C();
  v1 = *(v0 + 64);

  sub_100098AC4();

  return v2();
}

uint64_t sub_100140A2C()
{
  sub_100080FB4(&qword_1003CF000);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F12C, 0);
  qword_1003CEF28 = result;
  return result;
}

uint64_t sub_100140A90()
{
  sub_100080FB4(&qword_1003CF028);
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_1003CEF30 = v0;
  return result;
}

BOOL sub_100140AE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PurchaseIntentEntity();
  sub_1001439E0(a2, v6);
  v7 = sub_100140BB4(v6, [a1 connection]);
  v8 = [v7 persistentID];

  return v8 != 0;
}

id sub_100140BB4(char *a1, void *a2)
{
  v3 = v2;
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v31 = &type metadata for String;
  *&v30 = v7;
  *(&v30 + 1) = v8;
  sub_10008B5D0(&v30, v29);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v31 = &type metadata for String;
  *&v30 = v9;
  *(&v30 + 1) = v10;
  sub_10008B5D0(&v30, v29);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v11 = type metadata accessor for PurchaseIntentInternal();
  v12 = *(v11 + 32);
  v13 = type metadata accessor for Date();
  v31 = v13;
  v14 = sub_10009E720(&v30);
  (*(*(v13 - 8) + 16))(v14, &a1[v12], v13);
  sub_10008B5D0(&v30, v29);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v15 = *(a1 + 1);
  if (v15)
  {
    v16 = *a1;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v31 = &type metadata for String;
      *&v30 = v16;
      *(&v30 + 1) = v15;
      sub_10008B5D0(&v30, v29);

      swift_isUniquelyReferenced_nonNull_native();
      sub_10023E7C0();
    }
  }

  v18 = *(a1 + 7);
  if (v18)
  {
    v19 = *(a1 + 6);
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v31 = &type metadata for String;
      *&v30 = v19;
      *(&v30 + 1) = v18;
      sub_10008B5D0(&v30, v29);

      swift_isUniquelyReferenced_nonNull_native();
      sub_10023E7C0();
    }
  }

  v21 = &a1[*(v11 + 36)];
  v22 = *(v21 + 1);
  if (v22)
  {
    v23 = *v21;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v31 = &type metadata for String;
      *&v30 = v23;
      *(&v30 + 1) = v22;
      sub_10008B5D0(&v30, v29);

      swift_isUniquelyReferenced_nonNull_native();
      sub_10023E7C0();
    }
  }

  v25 = objc_allocWithZone(v3);
  sub_100223354(v6);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = [v25 initWithPropertyValues:isa onConnection:a2];

  sub_100143A44(a1);
  return v27;
}

uint64_t sub_100140F64(uint64_t a1, void *a2)
{
  sub_10008E5A4(0, &qword_1003D2100);

  return 1;
}

id sub_100141218(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary:v1.super.isa];

  return v2;
}

uint64_t sub_1001412A4@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = notify_post(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001412D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1001412EC()
{
  sub_10008BE9C();
  if (qword_1003CBD98 != -1)
  {
    sub_1001068A0();
  }

  *(v0 + 40) = qword_1003CEF28;
  v1 = sub_100123E74();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10014136C()
{
  sub_10008BE9C();
  *(v0 + 48) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001413CC()
{
  sub_100098BB4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1001414B4;

  return sub_1001D5E3C(sub_100143868, v4);
}

uint64_t sub_1001414B4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001415B4()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_10014160C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PurchaseIntentEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a1 connection];
  v10 = [ObjCClassFromMetadata queryOnConnection:v9 predicate:a2];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001438B4;
  *(v12 + 24) = v11;
  v16[4] = sub_1000DC764;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100223D74;
  v16[3] = &unk_10038A118;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v10 enumeratePersistentIDsUsingBlock:v13];

  _Block_release(v13);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if ((a4 & 1) == 0)
  {
    return 1;
  }

  __break(1u);
  return result;
}

void sub_1001417DC(uint64_t a1, int a2, int a3, id a4)
{
  v5 = [a4 connection];
  v14 = [objc_allocWithZone(type metadata accessor for PurchaseIntentEntity()) initWithPersistentID:a1 onConnection:v5];

  v6 = sub_10014309C();
  v8 = v7;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v9;
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  String.append(_:)(v11);

  v12 = [objc_opt_self() sharedManager];
  v13 = String._bridgeToObjectiveC()();

  [v12 removeNotificationRequestWithIdentifier:v13];

  [v14 deleteFromDatabase];
}

id sub_100141930(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_1001419B4(uint64_t a1, void *a2)
{
  v3 = *sub_100086D24((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_10023FCD4(v3, v4);
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_100141A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_100141A3C()
{
  v30 = v0;
  v1 = v0[3];
  if (v1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v2 = v0[5];
    v3 = v0[2];
    v4 = type metadata accessor for SKLogger();
    sub_10007EDA4(v4, qword_1003F26C8);
    _StringGuts.grow(_:)(46);

    v28 = 0xD00000000000002CLL;
    v29 = 0x8000000100319730;
    v5._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v5);
    static os_log_type_t.default.getter();
    sub_100143F70();

    Logger.logObject.getter();
    sub_100143F28();

    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_100143E48();
      sub_100143DCC(4.8752e-34);
      v27 = v6;
      v28 = v7;
      v29 = v8;
      sub_100143F10();
      sub_10009F134();
      v9 = v29;
      sub_100080210(v28, v29, &v27);
      sub_100143F58();
      sub_10009F124();
      sub_100143FC8(v10, v11, &v27);
      sub_1000B03CC();
      *(v2 + 14) = v9;
      sub_100143E64(&_mh_execute_header, v12, v3, "%{public}s%{public}s");
      sub_100098BC0();
      sub_10008BF3C();
LABEL_10:
      sub_100081C28();
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v13 = type metadata accessor for SKLogger();
    sub_10007EDA4(v13, qword_1003F26C8);
    v14 = static os_log_type_t.default.getter();

    v1 = Logger.logObject.getter();

    if (sub_10009F1F4())
    {
      v16 = v0[4];
      v15 = v0[5];
      v17 = sub_10008E688();
      sub_10008E670();
      *v17 = 136446466;
      sub_10009F0F8();
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v21._countAndFlagsBits = v16;
      v21._object = v15;
      String.append(_:)(v21);
      sub_10009F134();
      v22 = sub_100080210(v28, v29, &v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_100080210(0xD00000000000002CLL, 0x8000000100319700, &v27);
      _os_log_impl(&_mh_execute_header, v1, v14, "%{public}s%{public}s", v17, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      goto LABEL_10;
    }
  }

LABEL_12:

  if (qword_1003CBDA0 != -1)
  {
    sub_100143D54();
  }

  v0[6] = qword_1003CEF30;
  v23 = sub_100123E74();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_100141D78()
{
  sub_100098BB4();
  v1 = v0[6];
  v2 = v0[3];
  *(v1 + 112) = v0[2];
  *(v1 + 120) = v2;

  sub_100098AC4();
  v5 = v3;

  return v5();
}

uint64_t sub_100141DEC(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a5 + 16;
  v13 = sub_10008E5A4(0, &qword_1003CCBB8);
  Date.timeIntervalSinceReferenceDate.getter();
  v36 = &type metadata for Double;
  v33 = v14;
  v15 = sub_10013CD88(0x6D617473656D6974, 0xE900000000000070, &v33, 5);
  v16 = v15;
  if (a4)
  {
    v36 = &type metadata for String;
    v33 = a3;
    v34 = a4;

    v17 = sub_100093E18();
    v18 = sub_100223CB4(v17, 0xE900000000000064, &v33);
    sub_10008E5A4(0, &unk_1003D28B0);
    sub_100080FB4(&qword_1003CCBB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002ED020;
    *(v19 + 32) = v16;
    *(v19 + 88) = v13;
    *(v19 + 56) = v13;
    *(v19 + 64) = v18;
    v20 = v16;
    v21 = sub_10018F08C();
  }

  else
  {
    v21 = v15;
  }

  v22 = v21;
  type metadata accessor for PurchaseIntentEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = v22;
  v25 = [a1 connection];
  v26 = [ObjCClassFromMetadata queryOnConnection:v25 predicate:v24];

  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = v12;
  v27[4] = a6;
  v27[5] = a7;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10014370C;
  *(v28 + 24) = v27;
  v37 = sub_1000939AC;
  v38 = v28;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100223D74;
  v36 = &unk_10038A000;
  v29 = _Block_copy(&v33);
  v30 = a1;

  [v26 enumeratePersistentIDsUsingBlock:v29];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001420EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v9 = type metadata accessor for PurchaseIntentInternal();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a4 connection];
  v13 = [objc_allocWithZone(type metadata accessor for PurchaseIntentEntity()) initWithPersistentID:a1 onConnection:v12];

  v14 = v13;
  v15 = sub_100143054();
  v17 = v16;
  v18 = sub_10014306C();
  v20 = v19;
  v35 = sub_10014309C();
  v36 = v21;
  v32 = sub_10014318C();
  v23 = v22;
  sub_1001431AC(v11 + *(v9 + 32));
  v24 = sub_1001433AC();
  v26 = v25;

  *v11 = v15;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v20;
  v27 = v36;
  v11[4] = v35;
  v11[5] = v27;
  v11[6] = v32;
  v11[7] = v23;
  v28 = (v11 + *(v9 + 36));
  *v28 = v24;
  v28[1] = v26;
  v29 = v34;
  swift_beginAccess();
  sub_100143778(sub_1001DA060);
  v30 = *(*v29 + 16);
  sub_10014381C(v30, sub_1001DA060);
  v31 = *v29;
  *(v31 + 16) = v30 + 1;
  sub_100105F40(v11, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30);
  swift_endAccess();
}

void sub_1001425B0()
{
  _StringGuts.grow(_:)(145);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._object = 0x8000000100319280;
  v1._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xA2C5458455420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x5F746375646F7270;
  v5._object = 0xEA00000000006469;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x656D616E5F707061;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._object = 0xEC000000656D616ELL;
  v9._countAndFlagsBits = 0x5F746375646F7270;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6D617473656D6974;
  v11._object = 0xE900000000000070;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD00000000000002ELL;
  v12._object = 0x8000000100314B20;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x5F746375646F7270;
  v13._object = 0xEA00000000006469;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x695F656C646E7562;
  v15._object = 0xE900000000000064;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x8000000100316F60;
  String.append(_:)(v16);
  qword_1003CEF38 = 0;
  unk_1003CEF40 = 0xE000000000000000;
}

void sub_1001427C8(void *a1)
{
  if (qword_1003CBDA8 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];
}

void sub_10014285C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];
}

void sub_1001428CC(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];

  v4 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v4];
}

id sub_1001429E4()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_100142AB8(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 17200)
    {
      return v2 > 17200;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      v23 = sub_1001427C8;
      v24 = 0;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_100224D90;
      v22 = &unk_10038A078;
      v5 = _Block_copy(&aBlock);

      v6 = [a1 migrateToVersion:14000 usingBlock:v5];
      goto LABEL_10;
    }

    if (v3 != 17201)
    {
      if (v3 == 17200)
      {
        v23 = sub_1001428CC;
        v24 = 0;
        aBlock = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_100224D90;
        v4 = &unk_10038A028;
      }

      else
      {
        if (v3 != 14000)
        {
          if (qword_1003CBE58 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for SKLogger();
          sub_10007EDA4(v9, qword_1003F26C8);
          aBlock = 0;
          v20 = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          aBlock = 0xD000000000000021;
          v20 = 0x80000001003192A0;
          v25 = [a1 currentSchemaVersion];
          v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v10);

          v11._countAndFlagsBits = 540949792;
          v11._object = 0xE400000000000000;
          String.append(_:)(v11);
          v25 = 17201;
          v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v12);

          v14 = aBlock;
          v13 = v20;
          v15 = static os_log_type_t.error.getter();

          v16 = Logger.logObject.getter();

          if (os_log_type_enabled(v16, v15))
          {
            v17 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v17 = 136446466;
            *(v17 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
            *(v17 + 12) = 2082;
            v18 = sub_100080210(v14, v13, &aBlock);

            *(v17 + 14) = v18;
            _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return v2 > 17200;
        }

        v23 = sub_10014285C;
        v24 = 0;
        aBlock = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_100224D90;
        v4 = &unk_10038A050;
      }

      v22 = v4;
      v5 = _Block_copy(&aBlock);

      v6 = [a1 migrateToVersion:17201 usingBlock:v5];
LABEL_10:
      v7 = v6;
      _Block_release(v5);
      if ((v7 & 1) == 0)
      {
        return v2 > 17200;
      }
    }
  }
}

id sub_100142F10(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PurchaseIntentStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t sub_1001430CC(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 stringValueForProperty:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    sub_10009E7E4();
    swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1001431AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_10013B1E8(v14, &unk_1003CCB70);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_10013B1E8(v6, &qword_1003CD9A0);
  }

  return result;
}

uint64_t sub_1001433C8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100143444(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PurchaseIntentEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_100143540(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PurchaseIntentEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_1001435D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100143668(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001436CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100143718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100143778(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10014381C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100143874()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001438E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100143920()
{
  type metadata accessor for Date();
  sub_10013B618();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001439E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100143A44(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100143AA0()
{
  result = qword_1003CF010;
  if (!qword_1003CF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF010);
  }

  return result;
}

uint64_t sub_100143AF4()
{
  v1 = (type metadata accessor for PurchaseIntentInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  type metadata accessor for Date();
  sub_10013B618();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_100143C00(void *a1)
{
  v3 = *(type metadata accessor for PurchaseIntentInternal() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100140AE0(a1, v4);
}

__n128 sub_100143C70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100143C7C(uint64_t a1, int a2)
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

uint64_t sub_100143CBC(uint64_t result, int a2, int a3)
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

uint64_t sub_100143D54()
{

  return swift_once();
}

uint64_t sub_100143D74@<X0>(uint64_t a1@<X8>)
{
  v1[119] = a1;
  v2 = v1[101] + 16 * a1;
  v1[120] = *(v2 + 32);
  result = *(v2 + 40);
  v1[121] = result;
  return result;
}

uint64_t sub_100143D94@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 960) = *(a1 + 32);
  result = *(a1 + 40);
  *(v1 + 968) = result;
  return result;
}

uint64_t sub_100143DF0()
{
}

uint64_t sub_100143E10()
{

  return swift_slowAlloc();
}

uint64_t sub_100143E48()
{

  return swift_slowAlloc();
}

void sub_100143E64(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_100143E94()
{

  return sub_10013CE30(v0, v1);
}

void sub_100143EB4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_100143ED4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v5 + 4) = v3;
  *(v5 + 12) = 2082;

  return sub_100080210(a3, v4, va);
}

void sub_100143F10()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

uint64_t sub_100143F28()
{
}

uint64_t sub_100143F58()
{
}

uint64_t sub_100143F70()
{
}

uint64_t sub_100143FB0()
{

  return type metadata accessor for SKLogger();
}

unint64_t sub_100143FC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080210(v4, v3, a3);
}

uint64_t sub_100143FE0()
{

  return swift_arrayDestroy();
}

uint64_t sub_100143FF8()
{
}

void sub_100144048(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v6 = a2();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_1001440B4(uint64_t a1)
{
  v2 = v1;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      type metadata accessor for ASDError(0);
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_10008B578();
      _BridgedStoredNSError.init(_:userInfo:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = _BridgedStoredNSError.errorCode.getter();

      goto LABEL_6;
    case 15:
      v4 = 1;
      goto LABEL_6;
    case 16:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = 500;
LABEL_6:
      v5 = String._bridgeToObjectiveC()();

      v3 = [v2 initWithDomain:v5 code:v4 userInfo:0];

      break;
    default:
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v3 = 0;
      break;
  }

  return v3;
}

char *sub_100144330(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = a1;
  a3();

  v10 = type metadata accessor for URL();
  v12 = 0;
  if (sub_10014610C(v8) != 1)
  {
    v12 = v8;
    URL._bridgeToObjectiveC()(v11);
    sub_100146130();
    (*(v13 + 8))(v8, v10);
  }

  return v12;
}

uint64_t sub_100144420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43[0] = a1;
  v3 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_1001460C4();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v11);
  sub_100089118();
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  v15 = type metadata accessor for URL();
  sub_1000890DC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1001460C4();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = v43 - v23;
  sub_100144854(v14);
  if (sub_100081D0C(v14, 1, v15) == 1)
  {
    sub_100146014(v14);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v25 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v25, v10);
    Logger.logObject.getter();
    sub_1001461BC();
    sub_100098B7C();
    (*(v26 + 8))(v10);
    v27 = static os_log_type_t.fault.getter();
    if (sub_1001461A4(v27))
    {
      *sub_10014618C() = 0;
      sub_1001460F0(&_mh_execute_header, v28, v27, "Unable to determine path for StoreKit persistant data directory");
      sub_1000D3E6C();
    }

    v29 = 1;
    v30 = v43[0];
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v17 + 8))(v14, v15);
    v31 = *(v17 + 32);
    v31(v24, v21, v15);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v44 = 0;
    v35 = [v2 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v44];

    if (v35)
    {
      v36 = v44;
    }

    else
    {
      v37 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v38 = sub_10007EDA4(v3, qword_1003F26C8);
      sub_10007EDDC(v38, v7);
      Logger.logObject.getter();
      sub_1001461BC();
      sub_100098B7C();
      (*(v39 + 8))(v7);
      v40 = static os_log_type_t.error.getter();
      if (sub_1001461A4(v40))
      {
        v41 = sub_10014618C();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v7, v40, "Unable to create StoreKit persistant data directory", v41, 2u);
      }
    }

    v30 = v43[0];
    v31(v43[0], v24, v15);
    v29 = 0;
  }

  return sub_100081DFC(v30, v29, 1, v15);
}

uint64_t sub_100144854@<X0>(unint64_t a1@<X8>)
{
  v93 = type metadata accessor for SKLogger();
  v2 = __chkstk_darwin(v93);
  v90 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v79 - v4;
  v6 = type metadata accessor for URLResourceValues();
  v97 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier:v15];

  if (!v16)
  {
    if (qword_1003CBE58 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v82 = v6;
  v85 = a1;
  v100 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100080FB4(&qword_1003CF040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2C0;
  *(inited + 32) = 0x746E656D75636F44;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = NSFileProtectionNone;
  *(inited + 56) = 1;
  *(inited + 64) = 0x7972617262694CLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = NSFileProtectionNone;
  *(inited + 88) = 0;
  strcpy((inited + 96), "Library/Caches");
  *(inited + 111) = -18;
  *(inited + 112) = NSFileProtectionNone;
  *(inited + 120) = 1;
  v18 = NSFileProtectionNone;
  sub_100080FB4(&qword_1003CF048);
  v19 = Dictionary.init(dictionaryLiteral:)();
  v20 = 0;
  v91 = 0;
  v21 = v9;
  v23 = v19 + 64;
  v22 = *(v19 + 64);
  v99 = v19;
  v24 = 1 << *(v19 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  a1 = v25 & v22;
  v26 = (v24 + 63) >> 6;
  v88 = NSFileProtectionKey;
  v27 = v98;
  v81 = (v97 + 8);
  v84 = v21;
  v96 = (v21 + 8);
  *(&v28 + 1) = 2;
  v87 = xmmword_1002ED290;
  *&v28 = 136446466;
  v83 = v28;
  v97 = v26;
  v92 = v8;
  v86 = v19 + 64;
  while (a1)
  {
    v29 = v20;
LABEL_11:
    v30 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v31 = *(v99 + 56) + ((v29 << 10) | (16 * v30));
    v32 = *v31;
    LODWORD(v94) = *(v31 + 8);

    v33 = v32;
    v34 = v101;
    URL.appendingPathComponent(_:)();

    swift_beginAccess();
    if (sub_10024EC2C())
    {
      (*v96)(v34, v8);

      v20 = v29;
      v26 = v97;
    }

    else
    {
      v95 = v33;
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      v102[0] = 0;
      v38 = [v27 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v102];

      v39 = v102[0];
      if (v38)
      {
        sub_100080FB4(&qword_1003CF050);
        v40 = swift_initStackObject();
        *(v40 + 16) = v87;
        v41 = v88;
        *(v40 + 32) = v88;
        type metadata accessor for FileProtectionType(0);
        *(v40 + 64) = v42;
        v43 = v95;
        *(v40 + 40) = v95;
        type metadata accessor for FileAttributeKey(0);
        sub_10014607C(&qword_1003CC398, type metadata accessor for FileAttributeKey);
        v44 = v43;
        v45 = v34;
        v80 = v44;
        v46 = v39;
        v47 = v41;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        URL.path.getter();
        v49 = String._bridgeToObjectiveC()();

        v102[0] = 0;
        v50 = [v98 setAttributes:isa ofItemAtPath:v49 error:v102];

        if (!v50)
        {
          v55 = v102[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v91 = 0;
          v23 = v86;
          goto LABEL_20;
        }

        v51 = v102[0];
        v52 = v89;
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        swift_beginAccess();
        v53 = v91;
        URL.setResourceValues(_:)();
        v23 = v86;
        if (!v53)
        {
          v91 = 0;
          swift_endAccess();

          (*v81)(v52, v82);
          v68 = *v96;
          v69 = v45;
          goto LABEL_25;
        }

        swift_endAccess();
        (*v81)(v52, v82);
      }

      else
      {
        v54 = v102[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v91 = 0;
LABEL_20:
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v56 = sub_10007EDA4(v93, qword_1003F26C8);
      v57 = v90;
      sub_10007EDDC(v56, v90);
      swift_errorRetain();
      v58 = Logger.logObject.getter();
      v59 = type metadata accessor for Logger();
      (*(*(v59 - 8) + 8))(v57, v59);
      v60 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v58, v60))
      {
        v61 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v102[0] = v94;
        *v61 = v83;
        sub_10014607C(&qword_1003CDF58, &type metadata accessor for URL);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = sub_100080210(v62, v63, v102);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2082;
        swift_getErrorValue();
        v65 = Error.localizedDescription.getter();
        v67 = sub_100080210(v65, v66, v102);

        *(v61 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v58, v60, "Failed to create directory %{public}s and set attributes: %{public}s", v61, 0x16u);
        swift_arrayDestroy();

        v8 = v92;

        (*v96)(v101, v8);
        goto LABEL_26;
      }

      v68 = *v96;
      v69 = v101;
LABEL_25:
      v8 = v92;
      v68(v69, v92);
LABEL_26:
      v20 = v29;
      v26 = v97;
      v27 = v98;
    }
  }

  v5 = v100;
  while (1)
  {
    v29 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      v70 = v85;
      (*(v84 + 32))(v85, v5, v8);
      v71 = v70;
      v72 = 0;
      return sub_100081DFC(v71, v72, 1, v8);
    }

    a1 = *(v23 + 8 * v29);
    ++v20;
    if (a1)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_30:
  v73 = sub_10007EDA4(v93, qword_1003F26C8);
  sub_10007EDDC(v73, v5);
  v74 = Logger.logObject.getter();
  v75 = type metadata accessor for Logger();
  (*(*(v75 - 8) + 8))(v5, v75);
  v76 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v74, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v74, v76, "Unable to determine StoreKit container URL", v77, 2u);
  }

  v71 = a1;
  v72 = 1;
  return sub_100081DFC(v71, v72, 1, v8);
}

char *sub_100145340(void *a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = a1;
  sub_100145464(a3, a4, a5);

  v14 = type metadata accessor for URL();
  v16 = 0;
  if (sub_10014610C(v12) != 1)
  {
    v16 = v12;
    URL._bridgeToObjectiveC()(v15);
    sub_100146130();
    (*(v17 + 8))(v12, v14);
  }

  return v16;
}

uint64_t sub_100145464(SEL *a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  sub_100146124();
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  v16 = sub_100080FB4(&unk_1003D0540);
  v17 = sub_1000B01B0(v16);
  __chkstk_darwin(v17);
  sub_1001460C4();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v30 - v22;
  v24 = [v8 *a1];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URL();
    v27 = 0;
  }

  else
  {
    v26 = type metadata accessor for URL();
    v27 = 1;
  }

  sub_100081DFC(v20, v27, 1, v26);
  sub_1000B71B8(v20, v23);
  type metadata accessor for URL();
  if (sub_100081D0C(v23, 1, v26) == 1)
  {
    sub_100146014(v23);
    v28 = 1;
  }

  else
  {
    v30[0] = a2;
    v30[1] = a3;
    (*(v11 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100106050();
    URL.appending<A>(component:directoryHint:)();
    (*(v11 + 8))(v15, v9);
    (*(*(v26 - 8) + 8))(v23, v26);
    v28 = 0;
  }

  return sub_100081DFC(v3, v28, 1, v26);
}

uint64_t sub_1001456D4()
{
  sub_100146124();
  v1 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_100093D40();
  v5 = v4 - v3;
  v6 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_10014616C();
  sub_1000890DC();
  __chkstk_darwin(v8);
  sub_100093D40();
  sub_100144854(v0);
  if (sub_10014610C(v0) == 1)
  {
    sub_100146014(v0);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v9 = sub_10007EDA4(v1, qword_1003F26C8);
    sub_10007EDDC(v9, v5);
    v10 = v5;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_100098B7C();
    (*(v11 + 8))(v5);
    v12 = static os_log_type_t.fault.getter();
    if (sub_1001461A4(v12))
    {
      *sub_10014618C() = 0;
      sub_1001460F0(&_mh_execute_header, v13, v12, "Unable to determine path for StoreKit caches directory");
      sub_1000D3E6C();
    }

    v15 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v16 = sub_100146158();
    v17(v16);
    v18 = sub_100146144();
    v14 = v19(v18);
    v15 = 0;
  }

  return sub_1001460D4(v14, v15);
}

uint64_t sub_10014591C()
{
  v1 = v0;
  sub_100146124();
  v2 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  v9 = type metadata accessor for URL();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  v16 = sub_100080FB4(&unk_1003D0540);
  v17 = sub_1000B01B0(v16);
  __chkstk_darwin(v17);
  sub_1001460C4();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v30 - v22;
  v24 = [v1 sk_cachedDataURL];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_100081DFC(v23, v26, 1, v9);
  sub_10012A7F8(v23, v20);
  if (sub_10014610C(v20) == 1)
  {
    v27 = sub_100146014(v23);
    v28 = 1;
  }

  else
  {
    (*(v11 + 32))(v15, v20, v9);
    strcpy(v30, "storeUser.db");
    HIBYTE(v30[6]) = 0;
    v30[7] = -5120;
    (*(v4 + 104))(v8, enum case for URL.DirectoryHint.notDirectory(_:), v2);
    sub_100106050();
    URL.appending<A>(component:directoryHint:)();
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    v27 = sub_100146014(v23);
    v28 = 0;
  }

  return sub_1001460D4(v27, v28);
}

uint64_t sub_100145BE4()
{
  sub_100146124();
  v1 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_100093D40();
  v5 = v4 - v3;
  v6 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_10014616C();
  sub_1000890DC();
  __chkstk_darwin(v8);
  sub_100093D40();
  sub_100145E0C(v0);
  if (sub_10014610C(v0) == 1)
  {
    sub_100146014(v0);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v9 = sub_10007EDA4(v1, qword_1003F26C8);
    sub_10007EDDC(v9, v5);
    v10 = v5;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_100098B7C();
    (*(v11 + 8))(v5);
    v12 = static os_log_type_t.fault.getter();
    if (sub_1001461A4(v12))
    {
      *sub_10014618C() = 0;
      sub_1001460F0(&_mh_execute_header, v13, v12, "Unable to determine path for iTunesStore library directory");
      sub_1000D3E6C();
    }

    v15 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v16 = sub_100146158();
    v17(v16);
    v18 = sub_100146144();
    v14 = v19(v18);
    v15 = 0;
  }

  return sub_1001460D4(v14, v15);
}

void *sub_100145E0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SKLogger();
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CPSharedResourcesDirectory();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = 0;
    v14 = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v14)
    {
      URL.init(string:)();
    }
  }

  else
  {
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v7 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_10007EDDC(v7, v4);
  v8 = Logger.logObject.getter();
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v4, v9);
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, v10, "Unable to determine path for shared resources directory", v11, 2u);
  }

  v12 = type metadata accessor for URL();
  return sub_100081DFC(a1, 1, 1, v12);
}

uint64_t sub_100146014(uint64_t a1)
{
  v2 = sub_100080FB4(&unk_1003D0540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014607C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001460D4(uint64_t a1, uint64_t a2)
{

  return sub_100081DFC(v2, a2, 1, v3);
}

void sub_1001460F0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10014610C(uint64_t a1)
{

  return sub_100081D0C(a1, 1, v1);
}

uint64_t sub_10014616C()
{

  return type metadata accessor for URL();
}

uint64_t sub_10014618C()
{

  return swift_slowAlloc();
}

BOOL sub_1001461A4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1001461BC()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1001461E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100146234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100146288(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1001462A0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001462D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001463A0(char a1)
{
  if (a1)
  {
    return 0x6573616863727570;
  }

  else
  {
    return 0x64656C65636E6163;
  }
}

uint64_t sub_1001463DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6972745373776ALL && a2 == 0xE900000000000067)
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

uint64_t sub_100146478(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v5 = sub_100080FB4(&qword_1003CF0B0);
  sub_1000890DC();
  v23 = v6;
  sub_100089118();
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_100080FB4(&qword_1003CF0B8);
  sub_1000890DC();
  v21 = v11;
  v22 = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_100089230();
  v13 = sub_100080FB4(&qword_1003CF0C0);
  sub_1000890DC();
  v15 = v14;
  sub_100089118();
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  sub_100086D24(a1, a1[3]);
  sub_100147460();
  v19 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19)
  {
    v27 = 1;
    sub_1001474B4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v9, v5);
  }

  else
  {
    v26 = 0;
    sub_100147508();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v3, v22);
  }

  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_100146734(void *a1)
{
  sub_100080FB4(&qword_1003CF080);
  sub_1000890DC();
  v41 = v3;
  v42 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089230();
  v6 = sub_100080FB4(&qword_1003CF088);
  sub_1000890DC();
  v40 = v7;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  sub_100080FB4(&qword_1003CF090);
  sub_1000890DC();
  v43 = v11;
  sub_100089118();
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_100086D24(a1, a1[3]);
  sub_100147460();
  v16 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_9;
  }

  v44 = v10;
  v39[2] = v1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v17, 0);
  if (v20 == v21 >> 1)
  {
    v22 = a1;
    goto LABEL_8;
  }

  if (v20 < (v21 >> 1))
  {
    v22 = a1;
    v45 = *(v19 + v20);
    v23 = sub_100162694(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v39[1] = v23;
      if (v45)
      {
        v47 = 1;
        sub_1001474B4();
        sub_100147B50();
        v15 = KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v35 = sub_100147B3C();
        v36(v35);
        v37 = sub_100147B30();
        v38(v37);
      }

      else
      {
        v46 = 0;
        sub_100147508();
        sub_100147B50();
        swift_unknownObjectRelease();
        (*(v40 + 8))(v44, v6);
        v33 = sub_100147B30();
        v34(v33);
        v15 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    sub_100080FB4(&qword_1003CC798);
    *v30 = &type metadata for PerformPurchaseResponse.PurchaseResult;
    v15 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_100147B30();
    v32(v31);
    a1 = v22;
LABEL_9:
    sub_100080F0C(a1);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100146C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100146CF0(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_100146D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = sub_100080FB4(&qword_1003CF058);
  sub_1000890DC();
  v9 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_100086D24(a1, a1[3]);
  sub_100147364();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1001473B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_100146E98(void *a1)
{
  sub_100080FB4(&qword_1003CF070);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100089230();
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_100147364();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10014740C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_1000E3F18();
    v7(v6);
  }

  sub_100080F0C(a1);
  return v4;
}

uint64_t sub_10014705C(uint64_t a1)
{
  v2 = sub_100147508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100147098(uint64_t a1)
{
  v2 = sub_100147508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001470DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001462D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100147104(uint64_t a1)
{
  v2 = sub_100147460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100147140(uint64_t a1)
{
  v2 = sub_100147460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001463DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001471AC(uint64_t a1)
{
  v2 = sub_1001474B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001471E8(uint64_t a1)
{
  v2 = sub_1001474B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100146734(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100147274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100146C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014729C(uint64_t a1)
{
  v2 = sub_100147364();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001472D8(uint64_t a1)
{
  v2 = sub_100147364();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147314@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100146E98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100147364()
{
  result = qword_1003CF060;
  if (!qword_1003CF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF060);
  }

  return result;
}

unint64_t sub_1001473B8()
{
  result = qword_1003CF068;
  if (!qword_1003CF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF068);
  }

  return result;
}

unint64_t sub_10014740C()
{
  result = qword_1003CF078;
  if (!qword_1003CF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF078);
  }

  return result;
}

unint64_t sub_100147460()
{
  result = qword_1003CF098;
  if (!qword_1003CF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF098);
  }

  return result;
}

unint64_t sub_1001474B4()
{
  result = qword_1003CF0A0;
  if (!qword_1003CF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0A0);
  }

  return result;
}

unint64_t sub_100147508()
{
  result = qword_1003CF0A8;
  if (!qword_1003CF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PerformPurchaseResponse.PurchaseResult.PurchasedCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100147620);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_100147658(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100147724);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100147760()
{
  result = qword_1003CF0C8;
  if (!qword_1003CF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0C8);
  }

  return result;
}

unint64_t sub_1001477B8()
{
  result = qword_1003CF0D0;
  if (!qword_1003CF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0D0);
  }

  return result;
}

unint64_t sub_100147810()
{
  result = qword_1003CF0D8;
  if (!qword_1003CF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0D8);
  }

  return result;
}

unint64_t sub_100147868()
{
  result = qword_1003CF0E0;
  if (!qword_1003CF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0E0);
  }

  return result;
}

unint64_t sub_1001478C0()
{
  result = qword_1003CF0E8;
  if (!qword_1003CF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0E8);
  }

  return result;
}

unint64_t sub_100147918()
{
  result = qword_1003CF0F0;
  if (!qword_1003CF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0F0);
  }

  return result;
}

unint64_t sub_100147970()
{
  result = qword_1003CF0F8;
  if (!qword_1003CF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF0F8);
  }

  return result;
}

unint64_t sub_1001479C8()
{
  result = qword_1003CF100;
  if (!qword_1003CF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF100);
  }

  return result;
}

unint64_t sub_100147A20()
{
  result = qword_1003CF108;
  if (!qword_1003CF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF108);
  }

  return result;
}

unint64_t sub_100147A78()
{
  result = qword_1003CF110;
  if (!qword_1003CF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF110);
  }

  return result;
}

unint64_t sub_100147AD0()
{
  result = qword_1003CF118;
  if (!qword_1003CF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF118);
  }

  return result;
}

uint64_t sub_100147B50()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100147B70()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  SHA256.update(bufferPointer:)();
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v9[1];
}

void *sub_100147D3C@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2 - result == 32)
  {
    *a3 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100147D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AcknowledgeMessageRequest();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100081D0C(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for SKLogger();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_100147E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AcknowledgeMessageRequest();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for SKLogger();
    v10 = a1 + *(a4 + 24);
  }

  return sub_100081DFC(v10, a2, a2, v9);
}

uint64_t type metadata accessor for AcknowledgeMessageTask()
{
  result = qword_1003CF178;
  if (!qword_1003CF178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100147F6C()
{
  result = type metadata accessor for AcknowledgeMessageRequest();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Client(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SKLogger();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100148028()
{
  v51 = v0;
  v1 = v0[35];
  if (v1[1]._object)
  {
    countAndFlagsBits = v1[1]._countAndFlagsBits;
    object = v1[1]._object;
  }

  else
  {
    v4 = (*(&v1->_countAndFlagsBits + *(type metadata accessor for AcknowledgeMessageTask() + 20)) + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    countAndFlagsBits = *v4;
    object = v4[1];
  }

  v5 = type metadata accessor for AcknowledgeMessageTask();

  _StringGuts.grow(_:)(46);

  v49 = 0xD000000000000016;
  v50 = 0x8000000100319930;
  v44 = v1->_countAndFlagsBits;
  v45 = v1->_object;
  String.append(_:)(*v1);
  v6._countAndFlagsBits = 0x20726F6620;
  v6._object = 0xE500000000000000;
  String.append(_:)(v6);
  v46 = object;
  v47 = countAndFlagsBits;
  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x696C6320726F6620;
  v8._object = 0xED0000203A746E65;
  String.append(_:)(v8);
  v9 = *(&v1->_countAndFlagsBits + *(v5 + 20));
  v10 = *(v9 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v11 = *(v9 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = (&v1->_countAndFlagsBits + *(type metadata accessor for AcknowledgeMessageRequest() + 32));
  v15 = *v13;
  v14 = v13[1];
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446466;
    v48 = v19;
    v49 = 91;
    v50 = 0xE100000000000000;
    v20._countAndFlagsBits = v15;
    v20._object = v14;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8285;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = sub_100080210(91, 0xE100000000000000, &v48);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_100080210(0xD000000000000016, 0x8000000100319930, &v48);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = v0[35];
  v26 = sub_1001A7AB4(v25);
  v0[36] = v26;
  v27 = sub_1001A9498();
  v0[37] = v27;
  v28 = sub_1001A9564(v27);
  v0[38] = v28;
  [v28 setRequestEncoding:3];
  sub_100080FB4(&unk_1003CEE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2C0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v47;
  *(inited + 56) = v46;
  *(inited + 64) = 0x6449726566666FLL;
  *(inited + 72) = 0xE700000000000000;
  v30 = *(v24 + 40);
  *(inited + 80) = *(v24 + 32);
  *(inited + 88) = v30;
  *(inited + 96) = 0x546567617373656DLL;
  *(inited + 104) = 0xEB00000000657079;
  *(inited + 112) = v44;
  *(inited + 120) = v45;

  Dictionary.init(dictionaryLiteral:)();
  if (qword_1003CBEA8 != -1)
  {
    swift_once();
  }

  v31 = [v26 URLForKey:qword_1003F2710];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v28 requestWithMethod:4 bagURL:v31 parameters:isa];
  v0[39] = v33;

  v34 = [v27 dataTaskPromiseWithRequestPromise:v33];
  v0[40] = v34;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_10014859C;
  v35 = swift_continuation_init();
  v0[33] = sub_100080FB4(&qword_1003CDC88);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1000D67A8;
  v0[29] = &unk_10038A590;
  v0[30] = v35;
  [v34 resultWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_10014859C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_10014873C;
  }

  else
  {
    v2 = sub_1001486AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001486AC()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10014873C()
{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

void *sub_1001487F0()
{
  v1 = type metadata accessor for StoreKitMessageAnalyticsEvent();
  v2 = String._bridgeToObjectiveC()();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023F0D4(v2, 7368801, 0xE300000000000000);
  sub_1001489A8(*(v0 + *(v1 + 24)));
  v3 = String._bridgeToObjectiveC()();

  swift_isUniquelyReferenced_nonNull_native();
  sub_100148C90();
  sub_10023F0D4(v3, v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000, 0xEC000000746E6576);
  sub_1001AA400();
  v5 = String._bridgeToObjectiveC()();

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023F0D4(v5, 0x6D6E6F7269766E65, 0xEB00000000746E65);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100148C90();
  sub_10023F0D4(isa, v7 & 0xFFFFFFFFFFFFLL | 0x5465000000000000, 0xEB00000000657079);
  return _swiftEmptyDictionarySingleton;
}

uint64_t type metadata accessor for StoreKitMessageAnalyticsEvent()
{
  result = qword_1003CF210;
  if (!qword_1003CF210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001489A8(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x736964206F747541;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_100148A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Client.Server(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100081D0C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100148B44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Client.Server(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_100081DFC(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100148BF4()
{
  type metadata accessor for Client.Server(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StoreKitMessageEvent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100148CA8(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_100148CBC()
{
  sub_100098BB4();
  sub_1000B0700();
  *(v1 + 16) = v2;
  sub_10014C06C(v1 + 80);
  sub_10014BFB0();
  sub_10014C004();
  sub_10014A4B0(v3, v4, v5, v6, v7, v8);

  return _swift_continuation_await(v0, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100148D6C()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

uint64_t sub_100148E54()
{
  sub_10008BE9C();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  v8 = sub_10009F0B8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100148F6C()
{
  v1 = v0;
  v0[2] = v0;
  sub_10014C06C((v0 + 28));
  v0[3] = sub_10014920C;
  v30 = v2;
  v3 = swift_continuation_init();
  if (qword_1003CBDC0 != -1)
  {
    sub_10014BF28();
  }

  v28 = v0[26];
  v29 = v0[25];
  v25 = v0[27];
  v26 = v0[24];
  v4 = v0[22];
  v27 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v1[18];
  v8 = v1[19];
  v9 = v1[17];
  v10 = qword_1003CF250;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v6;
  v11[7] = v3;
  v1[14] = sub_10014BDE0;
  v1[15] = v11;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10019E0C0;
  v1[13] = &unk_10038A8F8;
  v12 = _Block_copy(v1 + 10);

  v13 = v10;
  v14 = v5;

  static DispatchQoS.unspecified.getter();
  v1[16] = _swiftEmptyArrayStorage;
  sub_10014BF10();
  sub_10014B768(v15, v16);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v27 + 8))(v26, v4);
  (*(v28 + 8))(v25, v29);

  return _swift_continuation_await(v30, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_10014920C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  v4 = *(v3 + 224);

  v5 = *(v1 + 8);

  return v5(v4);
}

uint64_t sub_100149314()
{
  sub_10008BE9C();
  *(v1 + 80) = v0;
  *(v1 + 88) = swift_getObjectType();
  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100149378()
{
  sub_100098BB4();
  sub_1000B0700();
  v2 = *(v1 + 80);
  *(v1 + 16) = v3;
  v4 = sub_10014BFB0();
  sub_10014A7D4(v4, v2);

  return _swift_continuation_await(v0, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100149408()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10014946C()
{
  sub_100098BB4();
  sub_1000B0700();
  v2 = *(v1 + 80);
  *(v1 + 16) = v3;
  sub_10014C06C(v2);
  sub_10014BFB0();
  sub_10014C004();
  sub_10014A4B0(v4, v5, v6, v7, v8, v9);

  return _swift_continuation_await(v0, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10014951C()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001495E8()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10014964C()
{
  sub_100098BB4();
  sub_1000B0700();
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_100149704;
  v3 = swift_continuation_init();
  sub_10014C078(v3, v4, v5, v6, &unk_10038A610, v7, &unk_10038A628);

  return _swift_continuation_await(v0, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100149704()
{
  sub_100098BB4();
  sub_10008C070();
  v1 = *v0;
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100149804()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100149868()
{
  sub_100098BB4();
  sub_1000B0700();
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_10014BF08;
  v3 = swift_continuation_init();
  sub_10014C078(v3, v4, v5, v6, &unk_10038A7A0, v7, &unk_10038A7B8);

  return _swift_continuation_await(v0, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100149920(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_100149934()
{
  sub_100098BB4();
  sub_1000B0700();
  *(v1 + 16) = v2;
  sub_10014BFB0();
  sub_10014C004();
  sub_10014A19C(v3, v4, v5, v6, v7, v8);

  return _swift_continuation_await(v0, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1001499E0(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_1001499F4()
{
  sub_100098BB4();
  sub_1000B0700();
  *(v1 + 16) = v2;
  sub_10014BFB0();
  sub_10014C004();
  sub_10014A19C(v3, v4, v5, v6, v7, v8);

  return _swift_continuation_await(v0, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100149AA0()
{
  result = sub_100149AC0();
  qword_1003CF250 = result;
  return result;
}

uint64_t sub_100149AC0()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10014B724();
  static DispatchQoS.default.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CF260, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100080FB4(&qword_1003CF268);
  sub_10014B7B0(&qword_1003CF270, &qword_1003CF268);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  return OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100149D08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_100081DFC(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;

  v15 = a3;
  sub_100165CBC();
}

uint64_t sub_100149E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_100149EE8;

  return sub_10009B02C(a6, a7, a8, a4, a5);
}

uint64_t sub_100149EE8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10014A070()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10014A0C0(uint64_t a1)
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
  v11[1] = sub_100149EE8;

  return sub_100149E24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014A19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10014C098();
  sub_1000890DC();
  __chkstk_darwin(v9);
  sub_100093D40();
  sub_10014C024();
  sub_1000890DC();
  __chkstk_darwin(v10);
  sub_100093D40();
  if (qword_1003CBDC0 != -1)
  {
    sub_10014BF28();
  }

  v11 = qword_1003CF250;
  sub_10014C060();
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = v8;
  v12[4] = v7;
  sub_10014BF48(v12);
  sub_10014BF6C(COERCE_DOUBLE(1107296256));
  v25 = v13;
  v26 = a6;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  static DispatchQoS.unspecified.getter();
  sub_10014BF10();
  sub_10014B768(v16, v17);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  sub_10014BF84();
  sub_10014BFCC();
  _Block_release(v14);

  v18 = sub_10014BFF0();
  v19(v18);
  v20 = sub_10014C014();
  v21(v20);
}

uint64_t sub_10014A3C0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [ObjCClassFromMetadata *a4];

  return swift_continuation_throwingResume();
}

uint64_t sub_10014A438(uint64_t a1, uint64_t a2)
{
  **(*(a1 + 64) + 40) = [objc_opt_self() managerForClient:a2];

  return swift_continuation_resume();
}

uint64_t sub_10014A4B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000890DC();
  __chkstk_darwin(v9);
  sub_100093D40();
  sub_10014C024();
  sub_1000890DC();
  __chkstk_darwin(v10);
  sub_100093D40();
  if (qword_1003CBDC0 != -1)
  {
    sub_10014BF28();
  }

  v11 = qword_1003CF250;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_10014BF48(v12);
  sub_10014BF6C(COERCE_DOUBLE(1107296256));
  v25 = v13;
  v26 = a6;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  sub_10014BF10();
  sub_10014B768(v17, v18);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  sub_10014BF84();
  sub_10014BFCC();
  _Block_release(v14);

  v19 = sub_10014BFF0();
  v20(v19);
  v21 = sub_10014C014();
  v22(v21);
}

uint64_t sub_10014A6D8(uint64_t a1, void *a2)
{
  v4 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [a2 lastUpdated];
  if (v7)
  {
    v8 = v7;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for Date();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = 1;
  }

  sub_100081DFC(v6, v10, 1, v9);
  sub_10014BCE8(v6, *(*(a1 + 64) + 40));
  return swift_continuation_resume();
}

uint64_t sub_10014A7D4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBDC0 != -1)
  {
    swift_once();
  }

  v10 = qword_1003CF250;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10014BD90;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_10038A8A8;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

uint64_t sub_10014AAD0(void *a1)
{
  [a1 clearTransactions];

  return swift_continuation_throwingResume();
}

void sub_10014AB10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a6;
  v12[4] = sub_10014BDF0;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000981F0;
  v12[3] = &unk_10038A948;
  v11 = _Block_copy(v12);

  [a1 isEligibleForIntroductoryOfferForSubscriptionGroupID:v9 storefrontID:a5 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10014AC4C()
{
  sub_10008BE9C();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = swift_getObjectType();
  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10014ACB4()
{
  sub_1000B0700();
  *(v1 + 16) = v2;
  sub_10014C06C(v1 + 112);
  sub_10014BFB0();
  sub_10014C04C();
  sub_10014AE28(v3, v4, v5, v6);

  return _swift_continuation_await(v0, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10014AD54()
{
  sub_10008BE9C();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_10014AE28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBDC0 != -1)
  {
    swift_once();
  }

  v14 = qword_1003CF250;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_10014BE84;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_10038A9E8;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_10014B138(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(a2) = [a2 isTransactionFinishedForID:v4];

  **(*(a1 + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_10014B1C0()
{
  sub_10008BE9C();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = swift_getObjectType();
  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10014B228()
{
  sub_1000B0700();
  *(v1 + 16) = v2;
  sub_10014BFB0();
  sub_10014C04C();
  sub_10014B2C4(v3, v4, v5, v6);

  return _swift_continuation_await(v0, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10014B2C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBDC0 != -1)
  {
    swift_once();
  }

  v14 = qword_1003CF250;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a1;
  aBlock[4] = sub_10014BE38;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_10038A998;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_10014B5D4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setFinishedForTransactionID:v2];

  return swift_continuation_throwingResume();
}

uint64_t sub_10014B684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10014B6B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_10014B724()
{
  result = qword_1003CF258;
  if (!qword_1003CF258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CF258);
  }

  return result;
}

uint64_t sub_10014B768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014B7B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014B804()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014B844()
{

  sub_10014C060();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10014B8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10014C098();
  sub_1000890DC();
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_10014C024();
  sub_1000890DC();
  __chkstk_darwin(v11);
  sub_100093D40();
  if (qword_1003CBDC0 != -1)
  {
    sub_10014BF28();
  }

  v12 = qword_1003CF250;
  sub_10014C060();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  sub_10014BF48(v13);
  sub_10014BF6C(COERCE_DOUBLE(1107296256));
  v27 = v14;
  v28 = a7;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v7;
  static DispatchQoS.unspecified.getter();
  sub_10014BF10();
  sub_10014B768(v18, v19);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  sub_10014BF84();
  sub_10014BFCC();
  _Block_release(v15);

  v20 = sub_10014BFF0();
  v21(v20);
  v22 = sub_10014C014();
  v23(v22);
}

void sub_10014BAE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v15[4] = a5;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10014B6B8;
  v15[3] = a6;
  v14 = _Block_copy(v15);

  [a1 *a7];
  _Block_release(v14);
}

uint64_t sub_10014BBB0()
{
  sub_10014C060();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10014BC2C(uint64_t a1)
{
  if (a1)
  {
    sub_100080FB4(&qword_1003CCCB0);
    swift_allocError();
    *v2 = a1;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10014BCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CD9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014BD58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014BD98()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10014BDF8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10014BE44()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10014BF28()
{

  return swift_once();
}

uint64_t sub_10014BF48(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10014BF84()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10014BFB0()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t sub_10014BFCC()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10014C024()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_10014C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_10014B8C0(a1, v9, v10, v8, a5, v7, a7);
}

uint64_t sub_10014C098()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t sub_10014C0CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 28);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_10014C168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 28);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProductPageLookupRequest.URLRequest()
{
  result = qword_1003CF2D0;
  if (!qword_1003CF2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014C234()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10014C2B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10014C2D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10014C314(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10014C374(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003838A8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10014C3C0(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x69666F725079656BLL;
      break;
    case 3:
      result = 0x736D61726170;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10014C474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10014C374(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014C4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10014C3C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10014C4D8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10014C374(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014C500(uint64_t a1)
{
  v2 = sub_10014DB64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014C53C(uint64_t a1)
{
  v2 = sub_10014DB64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014C578(void *a1)
{
  sub_100080FB4(&qword_1003CF340);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100086D24(a1, a1[3]);
  sub_10014DB64();
  sub_10014E0AC();
  LOBYTE(v17[0]) = 1;
  sub_10014E030();
  if (v1)
  {
    goto LABEL_3;
  }

  sub_10014E030();
  LOBYTE(v17[0]) = 2;
  sub_10014E030();
  v7 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17[0] = 0;
  v9 = [v7 dataWithJSONObject:isa options:0 error:v17];

  v10 = v17[0];
  if (!v9)
  {
    v16 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_3:
    v4 = sub_10014E060();
    return v5(v4);
  }

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v17[0] = v11;
  v17[1] = v13;
  sub_1000BC860();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14 = sub_10014E060();
  v15(v14);
  return sub_10008E168(v11, v13);
}

uint64_t sub_10014C7D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for DecodingError.Context();
  sub_1000890DC();
  v43 = v4;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  v9 = sub_100080FB4(&qword_1003CF310);
  sub_1000890DC();
  v44 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  v12 = sub_100086D24(a1, a1[3]);
  v13 = sub_10014DB64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    return sub_100080F0C(a1);
  }

  v40 = v13;
  v46 = v8;
  v14 = sub_10014E08C();
  v17 = v16;
  v38 = v14;
  v18 = sub_10014E08C();
  v39 = v19;
  v36 = v18;
  LOBYTE(v48[0]) = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v21;
  LOBYTE(v47) = 3;
  sub_1000BC95C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v20;
  v34 = v12;
  v35 = v9;
  v23 = v48[0];
  v22 = v48[1];
  v24 = objc_opt_self();
  v33 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v48[0] = 0;
  v26 = [v24 JSONObjectWithData:isa options:0 error:v48];

  if (v26)
  {
    v27 = v48[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100080FB4(&unk_1003CE640);
    if (swift_dynamicCast())
    {
      (*(v44 + 8))(v34, v35);
      sub_10008E168(v33, v22);

      sub_100080F0C(a1);

      *a2 = v38;
      a2[1] = v17;
      a2[2] = v36;
      a2[3] = v39;
      a2[4] = v32;
      a2[5] = v37;
      a2[6] = v47;
      return result;
    }

    sub_100080FB4(&qword_1003CF320);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002ED290;
    *(v29 + 56) = &type metadata for ProductPageLookupRequest.ParameterRequest.CodingKeys;
    *(v29 + 64) = v40;
    *(v29 + 32) = 3;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v30;
    (*(v43 + 16))(v30, v46, v3);
    sub_10012ADC8();
    (*(v31 + 104))(v41);
    swift_willThrow();
    sub_10008E168(v33, v22);
    (*(v43 + 8))(v46, v3);
  }

  else
  {
    v28 = v48[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10008E168(v33, v22);
  }

  (*(v44 + 8))(v34, v35);
  sub_100080F0C(a1);
}

double sub_10014CD68@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10014C7D8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10014CDD0()
{
  v55 = type metadata accessor for URLQueryItem();
  sub_1000890DC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100093D40();
  v6 = v5 - v4;
  sub_100080FB4(&qword_1003CEDE0);
  sub_100089118();
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for ProductPageLookupRequest.URLRequest();
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v11 = type metadata accessor for URLComponents();
  v12 = sub_100081D0C(v9, 1, v11);
  v50 = v0;
  if (v12 == 1)
  {
    sub_10012AD54(v9, &qword_1003CEDE0);
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = URLComponents.queryItems.getter();
    sub_10012ADC8();
    (*(v15 + 8))(v9, v11);
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }
  }

  v54 = v13[2];
  if (v54)
  {
    v16 = 0;
    v17 = &type metadata for String;
    v53 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v51 = v2 + 8;
    v52 = v2 + 16;
    while (v16 < v13[2])
    {
      v18 = v55;
      (*(v2 + 16))(v6, &v53[*(v2 + 72) * v16], v55);
      *&v58 = URLQueryItem.name.getter();
      *(&v58 + 1) = v19;
      AnyHashable.init<A>(_:)();
      v20 = URLQueryItem.value.getter();
      v22 = v21;
      (*(v2 + 8))(v6, v18);
      if (v22)
      {
        v23 = v13;
        v24 = v17;
        *(&v59 + 1) = v17;
        *&v58 = v20;
        *(&v58 + 1) = v22;
        sub_10008B5D0(&v58, v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v10;
        v26 = sub_100212CF4(v60);
        v28 = v10[2];
        v29 = (v27 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_28;
        }

        v31 = v26;
        v32 = v27;
        sub_100080FB4(&qword_1003CF348);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
        {
          v33 = sub_100212CF4(v60);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_30;
          }

          v31 = v33;
        }

        v10 = v56;
        if (v32)
        {
          v35 = (v56[7] + 32 * v31);
          sub_100080F0C(v35);
          sub_10008B5D0(v57, v35);
          sub_10008E550(v60);
        }

        else
        {
          v56[(v31 >> 6) + 8] |= 1 << v31;
          sub_1001060C4(v60, v10[6] + 40 * v31);
          sub_10008B5D0(v57, (v10[7] + 32 * v31));
          sub_10008E550(v60);
          v41 = v10[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_29;
          }

          v10[2] = v43;
        }

        v17 = v24;
        v13 = v23;
      }

      else
      {
        v36 = sub_100212CF4(v60);
        if (v37)
        {
          v38 = v36;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          *&v57[0] = v10;
          v40 = v10[3];
          sub_100080FB4(&qword_1003CF348);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v40);
          v10 = *&v57[0];
          sub_10008E550(*(*&v57[0] + 48) + 40 * v38);
          sub_10008B5D0((v10[7] + 32 * v38), &v58);
          _NativeDictionary._delete(at:)();
          sub_10008E550(v60);
        }

        else
        {
          sub_10008E550(v60);
          v58 = 0u;
          v59 = 0u;
        }

        sub_10012AD54(&v58, &unk_1003CCB70);
      }

      if (v54 == ++v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_24:

    *&v58 = 25705;
    *(&v58 + 1) = 0xE200000000000000;
    AnyHashable.init<A>(_:)();
    sub_1001DAA40(v60, v10, &v58);
    sub_10008E550(v60);
    v44 = *(&v59 + 1);
    sub_10012AD54(&v58, &unk_1003CCB70);
    if (!v44)
    {
      *&v58 = 25705;
      *(&v58 + 1) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      v45 = *v50;
      v46 = v50[1];
      *(&v59 + 1) = &type metadata for String;
      *&v58 = v45;
      *(&v58 + 1) = v46;
      sub_10008B5D0(&v58, v57);

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v10;
      sub_10023EE74(v57, v60, v47);
      v10 = v56;
      sub_10008E550(v60);
    }

    return v10;
  }

  return result;
}

uint64_t sub_10014D364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69666F725079656BLL && a2 == 0xEA0000000000656CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10014D4C8(char a1)
{
  result = 0x49746375646F7270;
  switch(a1)
  {
    case 1:
      result = 0x79654B676F6CLL;
      break;
    case 2:
      result = 0x69666F725079656BLL;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}