uint64_t sub_10004F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
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
  v44 = v16[47];
  sub_100054040();
  sub_100053F08(v28, v30);
  sub_100054028();
  sub_100053F08(v21, v31);

  sub_100019370();
  sub_10004AAC8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, a14, a15, a16);
}

uint64_t sub_10004FA2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053D5C(a1, a3, type metadata accessor for ClientOverride);
  v15 = a2[3];
  if (v15)
  {
    v16 = a2[2];
    v17 = *(a3 + 24);
    v18 = a2[3];

    *(a3 + 16) = v16;
    *(a3 + 24) = v15;
  }

  v19 = a2[5];
  if (v19)
  {
    v20 = a2[4];
    v21 = *(a3 + 24);
    v22 = a2[5];

    *(a3 + 16) = v20;
    *(a3 + 24) = v19;
  }

  v23 = type metadata accessor for ClientOverride(0);
  sub_100053CE0(a2 + v23[7], a3 + v23[7]);
  v24 = v23[8];
  if ((*(a2 + v24 + 8) & 1) == 0)
  {
    v25 = *(a2 + v24);
    v26 = a3 + v24;
    *v26 = v25;
    *(v26 + 8) = 0;
  }

  v27 = v23[9];
  if ((*(a2 + v27 + 8) & 1) == 0)
  {
    v28 = *(a2 + v27);
    v29 = a3 + v27;
    *v29 = v28;
    *(v29 + 8) = 0;
  }

  sub_100053C28(a2 + v23[10], v9, &qword_1000D2800, qword_100099E20);
  if (sub_100012898(v9, 1, v10) == 1)
  {
    sub_100049EA0(v9, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    v30 = *(v11 + 32);
    v30(v14, v9, v10);
    v31 = v23[10];
    sub_100049EA0(a3 + v31, &qword_1000D2800, qword_100099E20);
    v30((a3 + v31), v14, v10);
    sub_10001267C(a3 + v31, 0, 1, v10);
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for SKLogger();
  sub_1000128C0(v32, qword_1000E4560);
  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v50 = 0xD00000000000001DLL;
  v51 = 0x80000001000A0980;
  v34._countAndFlagsBits = sub_10007F380(v33);
  String.append(_:)(v34);

  v36 = v50;
  v35 = v51;
  if (qword_1000D1AC8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v38 = v50;
  v37 = v51;
  v39 = static os_log_type_t.debug.getter();

  v40 = Logger.logObject.getter();

  if (os_log_type_enabled(v40, v39))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 136446466;
    v49 = v42;
    v50 = 91;
    v51 = 0xE100000000000000;
    v43._countAndFlagsBits = v38;
    v43._object = v37;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 8285;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v45 = sub_1000847A8(v50, v51, &v49);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v46 = sub_1000847A8(v36, v35, &v49);

    *(v41 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100050158(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 648) = a4;
  *(v4 + 392) = a2;
  *(v4 + 400) = a3;
  v8 = type metadata accessor for ProcessPurchaseResultRequest();
  *(v4 + 408) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  v10 = type metadata accessor for SKLogger();
  *(v4 + 424) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v4 + 448) = v12;
  *v12 = v4;
  v12[1] = sub_100050280;

  return sub_100051D48(a1, a2, a4);
}

uint64_t sub_100050280()
{
  sub_10001D674();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  v6 = *(v5 + 448);
  *v4 = *v1;
  v3[57] = v7;
  v3[58] = v0;

  if (v0)
  {
    v9 = v3[54];
    v8 = v3[55];
    v10 = v3[52];

    sub_100019370();

    return v11();
  }

  else
  {
    sub_1000193B4();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_1000503C8()
{
  sub_100013A88();
  v1 = *(v0 + 392);
  *(v0 + 472) = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest:*(v0 + 456)];
  *(v0 + 480) = sub_10002420C();
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = sub_100050488;
  v3 = *(v0 + 648);

  return sub_100052D80(v3);
}

uint64_t sub_100050488()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 488);
  *v2 = *v0;
  *(v1 + 496) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100050570()
{
  v31 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  [v2 setAccountMediaType:v1];

  [v3 setClientInfo:v2];
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v4 = *(v0 + 480);
  v5 = sub_1000128C0(*(v0 + 424), qword_1000E4560);
  *(v0 + 504) = v5;
  _StringGuts.grow(_:)(39);

  v29 = 0xD000000000000025;
  v30 = 0x80000001000A09D0;
  *(v0 + 352) = [v4 accountMediaType];
  sub_100012634(&qword_1000D33E8, &qword_100097788);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v8 = v29;
  v7 = v30;
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728();
  }

  *(v0 + 512) = qword_1000E4520;
  TaskLocal.get()();
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = static os_log_type_t.debug.getter();

  Logger.logObject.getter();
  sub_10004AE2C();

  if (os_log_type_enabled(v5, v11))
  {
    v12 = sub_100039EE0();
    sub_100039EC8();
    *v12 = 136446466;
    sub_10004A980();
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v16._countAndFlagsBits = v10;
    v16._object = v9;
    String.append(_:)(v16);
    sub_10004ADC0(v17);
    v18 = sub_1000847A8(v29, v30, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = sub_1000847A8(v8, v7, &v28);

    *(v12 + 14) = v19;
    sub_100054330(&_mh_execute_header, v20, v21, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_10004A98C();
    sub_10004AA4C();
  }

  else
  {
  }

  v22 = 0;
  switch(*(v0 + 648))
  {
    case 1:
      if (qword_1000D1A90 != -1)
      {
        sub_1000541B8();
      }

      v23 = &qword_1000E4470;
      goto LABEL_18;
    case 2:
      if (qword_1000D1A80 != -1)
      {
        sub_1000541F8();
      }

      v23 = &qword_1000E4460;
      goto LABEL_18;
    case 3:
      if (qword_1000D1A88 != -1)
      {
        sub_1000541D8();
      }

      v23 = &qword_1000E4468;
LABEL_18:
      v22 = *v23;
      swift_unknownObjectRetain();
      break;
    default:
      break;
  }

  v24 = *(v0 + 472);
  [v24 setBag:{v22, v28}];
  swift_unknownObjectRelease();
  v25 = [v24 present];
  *(v0 + 520) = v25;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 360;
  *(v0 + 24) = sub_1000509E8;
  v26 = swift_continuation_init();
  *(v0 + 136) = sub_100012634(&qword_1000D2358, &qword_100094C78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001B4BC;
  *(v0 + 104) = &unk_1000C0AA0;
  *(v0 + 112) = v26;
  [v25 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000509E8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100051218()
{
  sub_100013A88();
  v1 = *(v0 + 592);
  *(v0 + 600) = sub_10004E5F4();
  v2 = sub_10004AD24();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100051278()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[64];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  TaskLocal.get()();
  v8 = v0[38];
  v9 = v0[39];
  v10 = v5[5];
  sub_100054088();
  sub_100053D5C(v6, v4 + v10, v11);
  v12 = type metadata accessor for ClientOverride(0);
  sub_10001267C(v4 + v10, 0, 1, v12);
  v13 = URL.absoluteString.getter();
  *v4 = v8;
  v4[1] = v9;
  v14 = (v4 + v5[6]);
  *v14 = v13;
  v14[1] = v15;
  v16 = (v4 + v5[7]);
  *v16 = v2;
  v16[1] = v1;
  v17 = swift_task_alloc();
  v0[76] = v17;
  *v17 = v0;
  v17[1] = sub_1000513B0;
  v18 = v0[75];
  v19 = v0[52];

  return sub_100018878(v19, v18);
}

uint64_t sub_1000513B0()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_1000540C0();
  *v6 = v5;
  v8 = *(v7 + 608);
  v9 = *v1;
  sub_1000540C0();
  *v10 = v9;
  v5[77] = v11;
  v5[78] = v12;
  v5[79] = v0;

  if (!v0)
  {
    v5[80] = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100051D48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 265) = a3;
  *(v4 + 288) = a1;
  v5 = type metadata accessor for SKLogger();
  *(v4 + 312) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v4 + 336) = v7;
  v8 = *(v7 - 8);
  *(v4 + 344) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_100051E4C, 0, 0);
}

uint64_t sub_100051E4C()
{
  v25 = v0;
  if (qword_1000D18C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000E42A8;
  switch(*(v0 + 265))
  {
    case 1:
      if (qword_1000D1A90 != -1)
      {
        sub_1000541B8();
      }

      v19 = &qword_1000E4470;
      goto LABEL_22;
    case 2:
      if (qword_1000D1A80 != -1)
      {
        sub_1000541F8();
      }

      v19 = &qword_1000E4460;
      goto LABEL_22;
    case 3:
      if (qword_1000D1A88 != -1)
      {
        sub_1000541D8();
      }

      v19 = &qword_1000E4468;
LABEL_22:
      *(v0 + 360) = *v19;
      v20 = [swift_unknownObjectRetain() URLForKey:v2];
      *(v0 + 368) = v20;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 256;
      *(v0 + 24) = sub_100052250;
      v21 = swift_continuation_init();
      *(v0 + 136) = sub_100012634(&qword_1000D33F8, &qword_100097798);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000531F0;
      *(v0 + 104) = &unk_1000C0AC8;
      *(v0 + 112) = v21;
      [v20 valueWithCompletion:v0 + 80];

      result = _swift_continuation_await(v0 + 16);
      break;
    default:
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60();
      }

      v3 = sub_1000128C0(*(v0 + 312), qword_1000E4560);
      if (qword_1000D1AC8 != -1)
      {
        sub_10004A728();
      }

      TaskLocal.get()();
      v5 = *(v0 + 240);
      v4 = *(v0 + 248);
      v6 = static os_log_type_t.error.getter();

      Logger.logObject.getter();
      sub_10004AE2C();
      if (os_log_type_enabled(v3, v6))
      {
        sub_100039EE0();
        sub_10004AAAC();
        *v1 = 136446466;
        sub_10004A980();
        v22 = v7;
        v23 = v8;
        v24 = v9;
        v10 = sub_10004AF38(v7);
        sub_10004ADC0(v10);
        sub_1000847A8(v23, v24, &v22);
        sub_10004AEA8();
        sub_10004A824();
        *(v1 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A0BD0, &v22);
        sub_10004A93C(&_mh_execute_header, v11, v12, "%{public}s%{public}s");
        sub_100037BD0();
        sub_10004AA1C();
        sub_10004AB24();
      }

      sub_100018F34();
      swift_allocError();
      *v13 = 10;
      swift_willThrow();
      v14 = *(v0 + 352);
      v16 = *(v0 + 320);
      v15 = *(v0 + 328);

      sub_100019370();

      result = v17();
      break;
  }

  return result;
}

uint64_t sub_100052250()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005279C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 424);
  *v2 = *v0;
  *(v1 + 432) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100052884()
{
  v2 = *(v0 + 432);
  if (v2)
  {
    v3 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 320);
    sub_100054058();
    sub_100053D5C(v6, v5, v7);
    _StringGuts.grow(_:)(38);

    v59 = 0xD000000000000020;
    v60 = 0x80000001000A0BA0;
    v8 = v2;
    *(v0 + 272) = [v8 accountType];
    sub_100012634(&qword_1000D3400, &qword_1000977A8);
    v9._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = [v8 ams_DSID];

    *(v0 + 280) = v11;
    sub_100012634(&qword_1000D3408, qword_1000977B0);
    v12._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v12);

    v14 = v59;
    v13 = v60;
    TaskLocal.get()();
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = static os_log_type_t.default.getter();
    v18 = Logger.logObject.getter();
    v19 = os_log_type_enabled(v18, v17);
    v20 = *(v0 + 320);
    if (v19)
    {
      sub_100039EE0();
      sub_10004AB78();
      *v59 = 136446466;
      sub_10004A980();
      v58 = v21;
      v59 = v22;
      v60 = v23;
      v57 = v20;
      v24 = sub_10004AF38();
      sub_10004ADC0(v24);
      v25 = v60;
      sub_1000847A8(v59, v60, &v58);
      sub_10004AEA8();
      sub_1000540CC();
      sub_1000847A8(v14, v13, &v58);
      sub_10004B010();
      *(v14 + 14) = v25;
      sub_100054178(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();

      sub_100054104();
      v29 = v57;
    }

    else
    {

      sub_100054104();
      v29 = v20;
    }

    sub_100053F08(v29, v28);
  }

  else
  {
    v31 = *(v0 + 392);
    v30 = *(v0 + 400);
    TaskLocal.get()();
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_10004AE2C();
    if (os_log_type_enabled(v31, v34))
    {
      sub_100039EE0();
      sub_10004AAAC();
      *v1 = 136446466;
      sub_10004A980();
      v58 = v35;
      v59 = v36;
      v60 = v37;
      v38 = sub_10004AF38();
      sub_10004ADC0(v38);
      sub_1000847A8(v59, v60, &v58);
      sub_10004AEA8();
      sub_10004A824();
      *(v1 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A0B40, &v58);
      sub_10004A93C(&_mh_execute_header, v39, v40, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10004AA1C();
      sub_10004AB24();
    }
  }

  v41 = *(v0 + 432);
  v43 = *(v0 + 408);
  v42 = *(v0 + 416);
  v44 = *(v0 + 400);
  v45 = *(v0 + 384);
  v46 = *(v0 + 352);
  v47 = *(v0 + 360);
  v48 = *(v0 + 344);
  v55 = *(v0 + 336);
  v56 = *(v0 + 328);
  URL._bridgeToObjectiveC()(*(v0 + 320));
  v50 = v49;
  [v42 setURL:v49];

  [v42 setAccount:v41];
  TaskLocal.get()();
  sub_100053DB8(*(v0 + 192), *(v0 + 200), v42);
  sub_100053E1C(v43, v42);
  [v42 setFailOnDismiss:0];
  sub_10004ABE4();
  v51 = String._bridgeToObjectiveC()();
  [v42 setMediaClientIdentifier:v51];

  swift_unknownObjectRelease();
  (*(v48 + 8))(v46, v55);

  sub_10004AC54();
  v52 = *(v0 + 416);
  sub_1000542B4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_100052CF0()
{
  sub_10001D674();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];

  sub_100019370();

  return v8();
}

uint64_t sub_100052DA0()
{
  sub_100013A88();
  v1 = *(v0 + 56);
  v2 = AMSAccountMediaTypeProduction;
  *(v0 + 16) = AMSAccountMediaTypeProduction;
  switch(v1)
  {
    case 1:
      v6 = v2;
      v7 = swift_task_alloc();
      *(v0 + 24) = v7;
      *v7 = v0;
      v7[1] = sub_100052EB4;

      result = sub_10003AE00(0);
      break;
    case 2:
      goto LABEL_3;
    default:
      v2 = AMSAccountMediaTypeAppStoreSandbox;
LABEL_3:
      v3 = v2;
      sub_10004AC54();

      result = v4();
      break;
  }

  return result;
}

uint64_t sub_100052EB4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100052F9C()
{
  sub_100013A88();
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];

    v3 = AMSAccountMediaTypeAppStoreBeta;
    sub_10004AC54();

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_100053080;

    return sub_10003AE00(1);
  }
}

uint64_t sub_100053080()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100053168()
{
  sub_100013A88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  if (v1)
  {

    v3 = &AMSAccountMediaTypeAppStoreSandbox;
  }

  else
  {
    v3 = &AMSAccountMediaTypeAppStoreBeta;
  }

  v4 = *v3;

  sub_10004AC54();

  return v5(v4);
}

uint64_t *sub_1000531F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_100013908(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_10000C4E4(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100053288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46._countAndFlagsBits = 0x6C646E7542707061;
  v46._object = 0xEB00000000444965;
  AnyHashable.init<A>(_:)();
  v14 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v15 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8);
  v47 = &type metadata for String;
  v46._countAndFlagsBits = v14;
  v46._object = v15;
  sub_100012AD4(&v46, v45);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = _swiftEmptyDictionarySingleton;
  sub_100048B74(v45, v48, isUniquelyReferenced_nonNull_native);
  countAndFlagsBits = v49._countAndFlagsBits;
  sub_10001CAD0(v48);
  v46._countAndFlagsBits = 0xD000000000000010;
  v46._object = 0x80000001000A0C00;
  AnyHashable.init<A>(_:)();
  v18 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v19 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);
  v47 = &type metadata for String;
  v46._countAndFlagsBits = v18;
  v46._object = v19;
  sub_100012AD4(&v46, v45);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = countAndFlagsBits;
  sub_100048B74(v45, v48, v20);
  v21 = v49._countAndFlagsBits;
  sub_10001CAD0(v48);
  v22 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
  if (v22)
  {
    strcpy(&v46, "appExternalID");
    HIWORD(v46._object) = -4864;
    AnyHashable.init<A>(_:)();
    v47 = &type metadata for UInt64;
    v46._countAndFlagsBits = v22;
    sub_100012AD4(&v46, v45);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v49._countAndFlagsBits = v21;
    sub_100048B74(v45, v48, v23);
    v21 = v49._countAndFlagsBits;
    sub_10001CAD0(v48);
  }

  v24 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
  if (v24)
  {
    v46._countAndFlagsBits = 0x496D616441707061;
    v46._object = 0xE900000000000044;
    AnyHashable.init<A>(_:)();
    v47 = &type metadata for UInt64;
    v46._countAndFlagsBits = v24;
    sub_100012AD4(&v46, v45);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v49._countAndFlagsBits = v21;
    sub_100048B74(v45, v48, v25);
    v21 = v49._countAndFlagsBits;
    sub_10001CAD0(v48);
  }

  v26 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v46._countAndFlagsBits = 0xD000000000000013;
    v46._object = 0x80000001000A0C20;
  }

  else
  {
    v46._countAndFlagsBits = 0x49746375646F7270;
    v46._object = 0xEA00000000007344;
  }

  AnyHashable.init<A>(_:)();
  v46._countAndFlagsBits = v26;
  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  sub_100053F60();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v47 = &type metadata for String;
  v46._countAndFlagsBits = v27;
  v46._object = v28;
  sub_100012AD4(&v46, v45);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = v21;
  sub_100048B74(v45, v48, v29);
  v30 = v49._countAndFlagsBits;
  sub_10001CAD0(v48);
  sub_100053C28(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v8, &qword_1000D2800, qword_100099E20);
  if (sub_100012898(v8, 1, v9) == 1)
  {
    sub_100049EA0(v8, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v46._countAndFlagsBits = 0x4449726F646E6576;
    v46._object = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    UUID.uuidString.getter();
    v31 = String.lowercased()();

    v47 = &type metadata for String;
    v46 = v31;
    sub_100012AD4(&v46, v45);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v49._countAndFlagsBits = v30;
    sub_100048B74(v45, v48, v32);
    v30 = v49._countAndFlagsBits;
    sub_10001CAD0(v48);
    (*(v10 + 8))(v13, v9);
  }

  v46._countAndFlagsBits = 7761509;
  v46._object = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v33 = 0xE500000000000000;
  v34 = 0x65646F6378;
  switch(v43)
  {
    case 1:
      v33 = 0xEA00000000007468;
      v34 = 0x67696C6674736574;
      break;
    case 2:
      v34 = 0x69746375646F7270;
      v33 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v33 = 0xE700000000000000;
      v34 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  v47 = &type metadata for String;
  v46._countAndFlagsBits = v34;
  v46._object = v33;
  sub_100012AD4(&v46, v45);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = v30;
  sub_100048B74(v45, v48, v35);
  v36 = v49._countAndFlagsBits;
  sub_10001CAD0(v48);
  v46._countAndFlagsBits = 0x747865746E6F63;
  v46._object = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v47 = &type metadata for String;
  v46._countAndFlagsBits = 0x7070616E69;
  v46._object = 0xE500000000000000;
  sub_100012AD4(&v46, v45);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = v36;
  sub_100048B74(v45, v48, v37);
  v38 = v49._countAndFlagsBits;
  sub_10001CAD0(v48);
  v46._countAndFlagsBits = 0x79654B676F6CLL;
  v46._object = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v49 = *a1;
  v47 = &type metadata for String;
  v46 = v49;
  sub_100012AD4(&v46, v45);
  sub_100053FC4(&v49, &v44);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v38;
  sub_100048B74(v45, v48, v39);
  v40 = v44;
  sub_10001CAD0(v48);
  return v40;
}

uint64_t sub_100053A04(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100053A98;

  return sub_100052D80(a1);
}

uint64_t sub_100053A98()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v4 = *(v3 + 16);
  *v2 = *v0;
  *(v1 + 24) = v5;

  v6 = sub_10004AD24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100053B80()
{
  sub_10001D674();
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v3 = [v2 ams_activeiTunesAccount];

  sub_10004AC54();

  return v4(v3);
}

uint64_t sub_100053C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100012634(a3, a4);
  sub_100019360(v5);
  v7 = *(v6 + 16);
  v8 = sub_10002FD24();
  v9(v8);
  return a2;
}

uint64_t sub_100053C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100019360(v4);
  v6 = *(v5 + 32);
  v7 = sub_10002FD24();
  v8(v7);
  return a2;
}

uint64_t sub_100053CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100019360(v4);
  v6 = *(v5 + 16);
  v7 = sub_10002FD24();
  v8(v7);
  return a2;
}

void sub_100053DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setLogKey:v4];
}

void sub_100053E1C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setClientData:isa];
}

uint64_t sub_100053E9C(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100053F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100019360(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100053F60()
{
  result = qword_1000D3410;
  if (!qword_1000D3410)
  {
    sub_10001CEC4(&qword_1000D1D00, &qword_10009B1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3410);
  }

  return result;
}

uint64_t sub_1000540DC()
{
  v2 = v0[64];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[52];

  return TaskLocal.get()();
}

uint64_t sub_100054134()
{
  v2 = v0[43];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v10 = v0[30];
  v11 = v0[28];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
}

void sub_100054178(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100054198()
{

  return swift_once();
}

uint64_t sub_1000541B8()
{

  return swift_once();
}

uint64_t sub_1000541D8()
{

  return swift_once();
}

uint64_t sub_1000541F8()
{

  return swift_once();
}

void sub_100054218(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100054280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_1000847A8(v14, v15, &a11);
}

uint64_t sub_10005429C()
{

  return swift_task_alloc();
}

void sub_1000542D0()
{

  _StringGuts.grow(_:)(33);
}

void sub_1000542F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100054310(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100054330(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100054350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000847A8(a1, v4, va);
}

BOOL sub_100054368()
{

  return os_log_type_enabled(v0, v1);
}

void *sub_100054380(uint64_t a1)
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id sub_10005445C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22StoreKitUISceneService32StoreKitAngelHostedSceneDelegate_windowReferences] = _swiftEmptyArrayStorage;
  Logger.init(subsystem:category:)();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  sub_1000128C0(v3, qword_1000E4560);
  strcpy(v13, "Initializing ");
  HIWORD(v13[1]) = -4864;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v6 = v13[0];
  v5 = v13[1];
  v7 = static os_log_type_t.default.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000847A8(0, 0xE000000000000000, v13);
    *(v9 + 12) = 2082;
    v10 = sub_1000847A8(v6, v5, v13);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t type metadata accessor for StoreKitAngelHostedSceneDelegate()
{
  result = qword_1000D3450;
  if (!qword_1000D3450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005477C()
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

uint64_t sub_100054820(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100012634(&qword_1000D35F8, qword_1000978D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &ObjectType - v6;
  v8 = sub_100012634(&qword_1000D2FC8, &unk_100096950);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &ObjectType - v11;
  v13 = sub_100012634(&qword_1000D2FA8, &qword_100096938);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &ObjectType - v18;
  v24 = a1;
  sub_100057F28(a1, v1 + qword_1000E4528);
  v20 = sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_10001267C(v19, 1, 1, v20);
  v25 = v19;
  (*(v4 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v9 + 32))(v1 + qword_1000D2EA0, v12, v8);
  sub_100058EDC(v19, v17, &qword_1000D2FA8, &qword_100096938);
  result = sub_100012898(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v20 - 8) + 32))(v1 + qword_1000D2EA8, v17, v20);
    sub_100012CB4(v19, &qword_1000D2FA8, &qword_100096938);
    v26.receiver = v1;
    v26.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v26, "init");
    sub_100039E04(v24);
    return v22;
  }

  return result;
}

uint64_t sub_100054B5C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100012634(&qword_1000D3588, &qword_100097828);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_100012634(&qword_1000D2FC8, &unk_100096950);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_100012634(&qword_1000D3590, &qword_100097830);
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100054D08, 0, 0);
}

uint64_t sub_100054D08()
{
  v1 = v0[16];
  v2 = v0[14];
  v14 = v0[13];
  v15 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v16 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  sub_1000552E4();
  (*(v3 + 16))(v4, v6 + qword_1000D2EA0, v5);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v7;
  v10 = v6;

  sub_100012634(&qword_1000D3598, &qword_100097848);
  sub_1000586CC(&qword_1000D35A0, &qword_1000D2FC8, &unk_100096950);
  sub_1000586CC(&qword_1000D35A8, &qword_1000D3598, &qword_100097848);
  AsyncFlatMapSequence.init(_:transform:)();
  (*(v2 + 16))(v15, v1, v14);
  sub_1000586CC(&qword_1000D35B0, &qword_1000D3590, &qword_100097830);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[17] = _swiftEmptyArrayStorage;
  sub_100058F78(&qword_1000D35B8, &qword_1000D3588, &qword_100097828);
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  sub_100058F50(v12);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
}

uint64_t sub_100054F5C()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    v9 = v3[17];
    (*(v3[8] + 8))(v3[9], v3[7]);
  }

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10005507C()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[17];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1000583E8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1000583E8((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v1;
    v0[17] = v5;
    sub_100058F78(&qword_1000D35B8, &qword_1000D3588, &qword_100097828);
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    sub_100058F50();

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
  }

  else
  {
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v14 + 8))(v12, v13);

    v16 = v0[1];
    v17 = v0[17];

    return v16(v17);
  }
}

uint64_t sub_100055244()
{
  sub_10001D674();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  (*(v0[14] + 8))(v0[16], v0[13]);

  sub_100019370();
  v5 = v0[19];

  return v4();
}

uint64_t sub_1000552E4()
{
  v1 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_10001267C(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_10006BA84(0, 0, v4, &unk_1000978C8, v6);
}

uint64_t sub_1000553C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1000553F0, 0, 0);
}

uint64_t sub_1000553F0()
{
  sub_100013A88();
  v1 = v0[6];
  v2 = v0[2];
  sub_100055454(v0[3], v0[4], v0[5], v0[7], v0[8]);
  sub_100019370();

  return v3();
}

uint64_t sub_100055454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100012634(&qword_1000D35C8, &qword_100097860);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = v5;
  v21 = a4;
  v22 = a5;
  (*(v14 + 104))(&v16[-v13], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_100055584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a6;
  v12 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v27 - v19;
  v21 = type metadata accessor for TaskPriority();
  sub_10001267C(v20, 1, 1, v21);
  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v28;
  *(v23 + 4) = v27;
  *(v23 + 5) = a3;
  *(v23 + 6) = a4;
  *(v23 + 7) = a5;
  *(v23 + 8) = v24;
  *(v23 + 9) = a7;
  (*(v13 + 32))(&v23[v22], v16, v12);

  v25 = a5;

  sub_10006BA84(0, 0, v20, &unk_100097878, v23);
}

uint64_t sub_100055788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1000557BC, 0, 0);
}

uint64_t sub_1000557BC()
{
  sub_10001D674();
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1000558C0;
  v9 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100097888, v4, &type metadata for () + 8);
}

uint64_t sub_1000558C0()
{
  sub_100013A88();
  sub_10001937C();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_100019340();
  *v5 = v4;

  sub_100019370();

  return v6();
}

uint64_t sub_1000559BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v14;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a2;
  v8[11] = a5;
  v9 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v11 = *(*(sub_100012634(&unk_1000D3EC0, &qword_100093590) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100055AE4, 0, 0);
}

uint64_t sub_100055AE4()
{
  v61 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for SKLogger();
  sub_1000128C0(v3, qword_1000E4560);
  _StringGuts.grow(_:)(31);

  v59 = 0x20676E6973726150;
  v60 = 0xE800000000000000;
  v4 = *(v1 + 16);
  *(v0 + 72) = v4;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x80000001000A0CE0;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  v7 = v60;
  v8 = qword_1000E4528;
  v9 = (v2 + *(type metadata accessor for ProductRequest() + 36) + v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = static os_log_type_t.default.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v56 = v59;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v58 = v15;
    v59 = 91;
    v60 = 0xE100000000000000;
    v16._countAndFlagsBits = v10;
    v16._object = v11;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_1000847A8(91, 0xE100000000000000, &v58);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_1000847A8(v56, v7, &v58);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  if (v4)
  {
    v20 = (*(v0 + 88) + 32);
    v48 = **(v0 + 80);
    v49 = *(v0 + 136);
    v47 = *(v0 + 144) + 7;
    v21 = type metadata accessor for TaskPriority();
    do
    {
      v57 = v4;
      v22 = *(v0 + 152);
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      v25 = *(v0 + 104);
      v50 = *(v0 + 112);
      v51 = *(v0 + 168);
      v52 = *(v0 + 96);
      v53 = *(v0 + 160);
      v55 = v20;
      v26 = *v20;
      sub_10001267C(v51, 1, 1, v21);
      (*(v49 + 16))(v22, v24, v23);
      v27 = v21;
      v28 = (*(v49 + 80) + 56) & ~*(v49 + 80);
      v29 = (v47 + v28) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      v30[2] = 0;
      v54 = v30 + 2;
      v30[3] = 0;
      v30[4] = v25;
      v30[5] = v50;
      v30[6] = v26;
      v31 = v30 + v28;
      v21 = v27;
      (*(v49 + 32))(v31, v22, v23);
      *(v30 + v29) = v52;
      sub_100058EDC(v51, v53, &unk_1000D3EC0, &qword_100093590);
      LODWORD(v26) = sub_100012898(v53, 1, v27);

      v32 = v52;

      v33 = *(v0 + 160);
      if (v26 == 1)
      {
        sub_100012CB4(*(v0 + 160), &unk_1000D3EC0, &qword_100093590);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v27 - 8) + 8))(v33, v27);
      }

      if (*v54)
      {
        v34 = v30[3];
        v35 = *v54;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v36 = dispatch thunk of Actor.unownedExecutor.getter();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_1000978A0;
      *(v39 + 24) = v30;
      v40 = v38 | v36;
      if (v38 | v36)
      {
        v40 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v36;
        *(v0 + 40) = v38;
      }

      v41 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v40;
      *(v0 + 64) = v48;
      swift_task_create();

      sub_100012CB4(v41, &unk_1000D3EC0, &qword_100093590);
      v20 = v55 + 1;
      v4 = v57 - 1;
    }

    while (v57 != 1);
  }

  v42 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  v44 = sub_100012634(&qword_1000D35D8, &qword_1000978B0);
  *v43 = v0;
  v43[1] = sub_1000560D4;
  v45 = *(v0 + 80);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v44);
}

uint64_t sub_1000560D4()
{
  sub_100013A88();
  sub_10001937C();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_100019340();
  *v4 = v3;

  sub_1000193B4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000561BC()
{
  sub_10001D674();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  AsyncStream.Continuation.finish()();

  sub_100019370();

  return v6();
}

uint64_t sub_10005623C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v11 = sub_100012634(&qword_1000D35E0, &qword_1000978B8);
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v8[14] = v15;
  *v15 = v8;
  v15[1] = sub_1000563AC;

  return (v17)(v8 + 2, a6);
}

uint64_t sub_1000563AC()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_100019340();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000564A8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[3];
  v0[6] = v0[2];
  v0[7] = v5;

  sub_100012634(&qword_1000D35D0, &qword_100097868);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v6 = v0[13];

  sub_100019370();

  return v7();
}

uint64_t sub_10005657C()
{
  v29 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for SKLogger();
  sub_1000128C0(v3, qword_1000E4560);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v4._object = 0x80000001000A0D00;
  v4._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v4);
  v0[8] = v1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[4];
  v5 = v0[5];
  v7 = qword_1000E4528;
  v8 = (v2 + *(type metadata accessor for ProductRequest() + 36) + v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = static os_log_type_t.error.getter();

  v12 = Logger.logObject.getter();

  v13 = os_log_type_enabled(v12, v11);
  v14 = v0[15];
  if (v13)
  {
    v25 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136446466;
    v26 = v16;
    v27 = 91;
    v28 = 0xE100000000000000;
    v17._countAndFlagsBits = v10;
    v17._object = v9;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8285;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19 = sub_1000847A8(91, 0xE100000000000000, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_1000847A8(v25, v5, &v26);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
    v21 = v0[15];
  }

  v22 = v0[13];

  sub_100019370();

  return v23();
}

uint64_t sub_100056850()
{
  sub_100013A88();
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1000568E4;
  v2 = swift_continuation_init();
  sub_100056AB8(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000568E4()
{
  sub_10001D674();
  sub_10001937C();
  sub_1000540C0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 48);
  *(v1 + 96) = v5;
  if (v5)
  {
    swift_willThrow();
    sub_1000193B4();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_100056A18()
{
  sub_10001D674();
  v1 = v0[11];
  v0[10] = v0[12];
  swift_errorRetain();
  sub_100012634(&qword_1000D2FB0, &qword_100096940);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_100019370();

  return v2();
}

uint64_t sub_100056AB8(uint64_t a1, char *a2)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger();
  sub_1000128C0(v4, qword_1000E4560);
  v5 = &a2[qword_1000E4528];
  v6 = type metadata accessor for ProductRequest();
  v7 = v5;
  v8 = &v5[*(v6 + 36)];
  v9 = v8[1];
  v50 = *v8;
  v51 = v6;
  v10 = static os_log_type_t.default.getter();

  v11 = Logger.logObject.getter();

  v49 = v9;
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v12 = 136446466;
    aBlock = 91;
    v55 = 0xE100000000000000;
    v13._countAndFlagsBits = v50;
    v13._object = v9;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = a1;
    v16 = sub_1000847A8(91, 0xE100000000000000, &v52);

    *(v12 + 4) = v16;
    a1 = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1000847A8(0xD000000000000018, 0x80000001000A0D20, &v52);
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = [v18 defaultBroker];
  v58 = sub_100058E00;
  v59 = v17;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100018464;
  v57 = &unk_1000C0BE0;
  v21 = _Block_copy(&aBlock);

  v22 = [v20 productServiceWithErrorHandler:v21];
  _Block_release(v21);

  if (v22)
  {
    v23 = type metadata accessor for PropertyListEncoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100058E20();
    v38 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v40 = v39;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = swift_allocObject();
    *(v42 + 16) = v19;
    *(v42 + 24) = a1;
    v58 = sub_100058E78;
    v59 = v42;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_100057B64;
    v57 = &unk_1000C0C30;
    v43 = _Block_copy(&aBlock);
    v44 = v19;

    [v22 productsWithRequest:isa responseReceiver:v44 reply:v43];

    _Block_release(v43);
    swift_unknownObjectRelease();

    return sub_100018DF0(v38, v40);
  }

  else
  {
    aBlock = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v26._countAndFlagsBits = 0xD000000000000034;
    v26._object = 0x80000001000A0D40;
    String.append(_:)(v26);
    v27 = &v7[*(v51 + 20)];
    v28 = *v27;
    LOBYTE(v27) = v27[8];
    v52 = v28;
    v53 = v27;
    _print_unlocked<A, B>(_:_:)();
    v29 = aBlock;
    v30 = v55;
    v31 = static os_log_type_t.error.getter();

    v32 = Logger.logObject.getter();

    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v33 = 136446466;
      aBlock = 91;
      v55 = 0xE100000000000000;
      v34._countAndFlagsBits = v50;
      v34._object = v49;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 8285;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      v36 = sub_1000847A8(aBlock, v55, &v52);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v37 = sub_1000847A8(v29, v30, &v52);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    v46 = swift_allocError();
    *v47 = 10;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    swift_allocError();
    *v48 = v46;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100057394(uint64_t a1, uint64_t a2)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger();
  sub_1000128C0(v4, qword_1000E4560);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v5._object = 0x80000001000A0DF0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6 = a2 + qword_1000E4528;
  v7 = type metadata accessor for ProductRequest();
  v8 = (v6 + *(v7 + 20));
  v9 = *v8;
  v24 = *(v8 + 8);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v23 = a1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v11 = (v6 + *(v7 + 36));
  v12 = *v11;
  v13 = v11[1];
  v14 = static os_log_type_t.error.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v16 = 136446466;
    v25 = 91;
    v26 = 0xE100000000000000;
    v17._countAndFlagsBits = v12;
    v17._object = v13;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8285;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19 = sub_1000847A8(91, 0xE100000000000000, &v23);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = sub_1000847A8(0, 0xE000000000000000, &v23);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_allocError();
  *v21 = a1;
  swift_errorRetain();
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1000576B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_1000128C0(v6, qword_1000E4560);
    _StringGuts.grow(_:)(38);
    v7._countAndFlagsBits = 0xD000000000000024;
    v7._object = 0x80000001000A0DC0;
    String.append(_:)(v7);
    v34 = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v8 = qword_1000E4528;
    v9 = (a2 + *(type metadata accessor for ProductRequest() + 36) + v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v34 = v15;
      v16._countAndFlagsBits = v10;
      v16._object = v11;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_1000847A8(91, 0xE100000000000000, &v34);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = sub_1000847A8(0, 0xE000000000000000, &v34);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_allocError();
    *v32 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_1000128C0(v20, qword_1000E4560);
    v21 = qword_1000E4528;
    v22 = (a2 + *(type metadata accessor for ProductRequest() + 36) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = static os_log_type_t.default.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136446466;
      v34 = v28;
      v29._countAndFlagsBits = v23;
      v29._object = v24;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 8285;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);
      v31 = sub_1000847A8(91, 0xE100000000000000, &v34);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_1000847A8(0xD000000000000018, 0x80000001000A0DA0, &v34);
      _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    return _swift_continuation_throwingResume(a3);
  }
}

void sub_100057B64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100057BD0()
{
  sub_100013A88();
  *(v0 + 16) = v1;
  v2 = *(*(type metadata accessor for ProductRequest() - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  sub_1000193B4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100057C58()
{
  sub_100013A88();
  v1 = v0[3];
  sub_100057F28(v0[2], v1);
  v2 = objc_allocWithZone(sub_100012634(&qword_1000D3580, &qword_100097810));
  v0[4] = sub_100054820(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100057D48;

  return sub_100054B5C(&unk_100097818, 0);
}

uint64_t sub_100057D48()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_1000540C0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100019340();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100057E58()
{
  sub_100013A88();
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_100057EC4()
{
  sub_100013A88();
  v1 = *(v0 + 24);

  sub_100019370();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_100057F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057F8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_10005801C, 0, 0);
}

uint64_t sub_10005801C()
{
  v1 = *(v0 + 40);
  v2 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v4 = [v2 dataWithJSONObject:isa options:0 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for JSONDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100058E80();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v13 = *(v0 + 32);
    sub_100018DF0(v6, v8);

    v14 = *(v0 + 24);
    *v13 = *(v0 + 16);
    v13[1] = v14;
  }

  else
  {
    v12 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100019370();

  return v15();
}

uint64_t sub_10005820C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100058304;

  return v7(a1);
}

uint64_t sub_100058304()
{
  sub_100013A88();
  sub_10001937C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100019340();
  *v4 = v3;

  sub_100019370();

  return v5();
}

char *sub_1000583E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100012634(&qword_1000D35C0, &qword_100097850);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100077738((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000584E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10001D270;

  return sub_1000553C4(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_1000585C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058604(uint64_t a1, uint64_t *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  v9 = sub_10004A854(v8);
  *v9 = v10;
  v9[1] = sub_10001D5E0;

  return sub_1000584E8(a1, a2, v5, v6, v7);
}

uint64_t sub_1000586CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001CEC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058728()
{
  v2 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  sub_100058FB0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 80) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 40);

  v11 = *(v1 + 48);

  v12 = *(v1 + 72);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_100058808()
{
  v1 = *(sub_100012634(&qword_1000D35D0, &qword_100097868) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));
  v11 = swift_task_alloc();
  v12 = sub_10004A854(v11);
  *v12 = v13;
  v12[1] = sub_10001D270;
  sub_100058FC8();
  sub_100058F9C();
  sub_100058FD4();

  return sub_100055788(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_100058918()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = sub_10004A854(v8);
  *v9 = v10;
  v9[1] = sub_10001D5E0;
  sub_100058F9C();
  sub_100058FD4();

  return sub_1000559BC(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000589E8()
{
  v2 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  sub_100058FB0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 2);
  swift_unknownObjectRelease();
  v10 = *(v1 + 5);

  v11 = *(v1 + 6);

  (*(v4 + 8))(&v1[v6], v0);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_100058ACC()
{
  v2 = *(sub_100012634(&qword_1000D35D0, &qword_100097868) - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001D5E0;
  sub_100058FC8();
  sub_100058F9C();
  sub_100058FD4();

  return sub_10005623C(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100058C04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058C3C()
{
  sub_10001D674();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D270;
  sub_100058FC8();

  return v6();
}

uint64_t sub_100058CE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058D24()
{
  sub_10001D674();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10004A854(v4);
  *v5 = v6;
  v5[1] = sub_10001D5E0;
  sub_100058FC8();

  return sub_100056830(v7, v8, v2, v3);
}

uint64_t sub_100058DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100058E20()
{
  result = qword_1000D35E8;
  if (!qword_1000D35E8)
  {
    type metadata accessor for ProductRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D35E8);
  }

  return result;
}

unint64_t sub_100058E80()
{
  result = qword_1000D35F0;
  if (!qword_1000D35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D35F0);
  }

  return result;
}

uint64_t sub_100058EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100012634(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100058F50(uint64_t result)
{
  *(result + 8) = sub_100054F5C;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return result;
}

uint64_t sub_100058F78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1000586CC(a1, a2, a3);
}

uint64_t sub_100059004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteAlertConfiguration();
  v7 = sub_10005E36C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_100012898(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000590C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100013A7C();
  v8 = type metadata accessor for RemoteAlertConfiguration();
  result = sub_10005E36C(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_10001267C(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }

  return result;
}

uint64_t sub_100059188()
{
  result = type metadata accessor for RemoteAlertConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100059210(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 8);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for BundleMerchandisingViewModel(0);
    v6 = sub_10005E494(*(a3 + 20));

    return sub_100012898(v6, v7, v8);
  }
}

void sub_1000592A0()
{
  sub_100013A7C();
  if (v3 == 254)
  {
    *(v1 + 8) = -v0;
  }

  else
  {
    v4 = v2;
    type metadata accessor for BundleMerchandisingViewModel(0);
    v5 = sub_10005E494(*(v4 + 20));

    sub_10001267C(v5, v6, v0, v7);
  }
}

void sub_100059334()
{
  sub_10005CBD0(319, &qword_1000D36F8, &unk_1000D3700, qword_100097940, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BundleMerchandisingViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_100059400@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleMerchandisingViewModel(0);
  v4 = sub_10002FD0C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BundleMerchandisingOfferView(0);
  sub_10005CD18(v1 + *(v9 + 20), v8, type metadata accessor for BundleMerchandisingViewModel);
  return sub_1000594A4(v8, a1);
}

double sub_1000594A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for DebugView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  sub_10005CE64(a1, a2 + v4[7], type metadata accessor for BundleMerchandisingViewModel);
  v7 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v8 = a2 + v4[9];
  sub_100012634(&qword_1000D3738, &qword_100097A28);
  State.init(wrappedValue:)();
  result = *&v10;
  *v8 = v10;
  *(v8 + 16) = v11;
  return result;
}

uint64_t sub_100059A14()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    v7 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *v0;

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10005CD78(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  v10 = [v6 scene];

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      return sub_10005DD2C(v11);
    }
  }

  return 0;
}

uint64_t sub_100059BBC()
{
  v1 = type metadata accessor for BorderedProminentButtonStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100012634(&qword_1000D3818, &qword_100097C18);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v10 = sub_100012634(&qword_1000D3820, &qword_100097C20);
  sub_100059DBC(v0, &v9[*(v10 + 44)]);
  BorderedProminentButtonStyle.init()();
  sub_1000586CC(&qword_1000D3828, &qword_1000D3818, &qword_100097C18);
  sub_10005CC9C(&qword_1000D3830, &type metadata accessor for BorderedProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
  return sub_10002F5A8(v9, &qword_1000D3818, &qword_100097C18);
}

uint64_t sub_100059DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v124 = a2;
  v122 = sub_100012634(&qword_1000D3838, &qword_100097C28);
  v3 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v118 = v116 - v4;
  v5 = sub_100012634(&qword_1000D3840, &qword_100097C30);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v138 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = v116 - v9;
  v10 = type metadata accessor for DebugView(0);
  v133 = *(v10 - 8);
  v11 = *(v133 + 64);
  __chkstk_darwin(v10);
  v132 = v12;
  v129 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v123 = sub_100012634(&qword_1000D3848, &qword_100097C38);
  v126 = *(v123 - 8);
  v15 = *(v126 + 64);
  v16 = __chkstk_darwin(v123);
  v117 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v135 = v116 - v19;
  v20 = __chkstk_darwin(v18);
  v136 = v116 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = v116 - v23;
  __chkstk_darwin(v22);
  v137 = v116 - v24;
  v127 = v10;
  v25 = *(v10 + 32);
  v130 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  v31 = *(v26 + 32);
  v32 = v26[5];
  *&v144 = *v26;
  *(&v144 + 1) = v28;
  v145 = v29;
  v146 = v30;
  v147 = v31;
  v148 = v32;
  sub_100012634(&qword_1000D3850, &unk_100097C40);
  v33 = State.wrappedValue.getter();
  v34 = sub_10005961C(v33);
  v36 = v35;
  sub_10005CCE4(v149);
  if (v36)
  {
    *&v144 = v34;
    *(&v144 + 1) = v36;
    sub_100012B58();
    v125 = Text.init<A>(_:)();
    v121 = v37;
    LODWORD(v120) = v38;
    v128 = v39;
    *&v144 = v27;
    *(&v144 + 1) = v28;
    v145 = v29;
    v146 = v30;
    v147 = v31;
    v148 = v32;
    State.wrappedValue.getter();
    v41 = v139;
    v40 = v140;
    v42 = v141;
    v43 = v142;
    v44 = v143;
    if (v143 <= 7u && ((1 << v143) & 0xA4) != 0)
    {
      v45 = static Color.red.getter();
    }

    else
    {
      v45 = static Color.primary.getter();
    }

    v46 = v45;
    sub_10005CD88(v41, v40, v42, v43, v44);
    *&v144 = v46;
    v47 = v120;
    v48 = v125;
    v49 = v121;
    v50 = Text.foregroundStyle<A>(_:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_10005D204(v48, v49, v47 & 1);

    v121 = v50;
    v128 = v52;
    v119 = v54 & 1;
    sub_10005D1B0(v50, v52, v54 & 1);
    v120 = v56;
  }

  else
  {
    v121 = 0;
    v128 = 0;
    v119 = 0;
    v120 = 0;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0x7270206863746546;
  v57._object = 0xEF203A746375646FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
  v58 = v130;
  v59 = v130 + *(v127 + 28);
  v60 = v59 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20);
  v61 = *(v60 + 8);
  *&v144 = *v60;
  BYTE8(v144) = v61;
  j__swift_bridgeObjectRetain();
  v62._countAndFlagsBits = String.init<A>(describing:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v62);

  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
  LocalizedStringKey.init(stringInterpolation:)();
  v64 = v129;
  sub_10005CD18(v58, v129, type metadata accessor for DebugView);
  v65 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v66 = v65 + v132;
  v132 = *(v133 + 80);
  v125 = v66;
  v67 = swift_allocObject();
  v133 = v65;
  sub_10005CE64(v64, v67 + v65, type metadata accessor for DebugView);
  Button<>.init(_:action:)();
  v68 = v58 + *(v127 + 36);
  v69 = *(v68 + 16);
  v144 = *v68;
  v145 = v69;
  sub_100012634(&qword_1000D3858, &qword_100097C50);
  State.wrappedValue.getter();
  v70 = v140;
  if (v140)
  {
    v71 = v139;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v72._countAndFlagsBits = 0x6573616863727550;
    v72._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);

    v73._countAndFlagsBits = v71;
    v73._object = v70;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v73);

    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v74);
    v127 = LocalizedStringKey.init(stringInterpolation:)();
    v116[1] = v75;
    sub_10005CD18(v58, v64, type metadata accessor for DebugView);
    v76 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = v58;
    v78 = v64;
    v79 = swift_allocObject();
    sub_10005CE64(v78, v79 + v133, type metadata accessor for DebugView);
    v80 = (v79 + v76);
    v116[0] = v71;
    *v80 = v71;
    v80[1] = v70;

    v81 = v134;
    Button<>.init(_:action:)();
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v82._countAndFlagsBits = 0x6620737574617453;
    v82._object = 0xEB0000000020726FLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v82);

    v83._countAndFlagsBits = v71;
    v83._object = v70;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v83);

    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v84);
    v85 = v81;
    LocalizedStringKey.init(stringInterpolation:)();
    sub_10005CD18(v77, v78, type metadata accessor for DebugView);
    v86 = swift_allocObject();
    sub_10005CE64(v78, v86 + v133, type metadata accessor for DebugView);
    v87 = (v86 + v76);
    *v87 = v116[0];
    v87[1] = v70;
    v88 = v136;
    Button<>.init(_:action:)();
    v89 = v126;
    v90 = *(v126 + 16);
    v91 = v135;
    v92 = v123;
    v90(v135, v85, v123);
    v93 = v117;
    v90(v117, v88, v92);
    v94 = v118;
    v90(v118, v91, v92);
    v95 = sub_100012634(&qword_1000D3868, &unk_100097C60);
    v90((v94 + *(v95 + 48)), v93, v92);
    v96 = *(v89 + 8);
    v96(v88, v92);
    v96(v85, v92);
    v96(v93, v92);
    v96(v91, v92);
    v97 = v131;
    sub_10005D508(v94, v131);
    v98 = 0;
  }

  else
  {
    v97 = v131;
    v92 = v123;
    v98 = 1;
  }

  sub_10001267C(v97, v98, 1, v122);
  LocalizedStringKey.init(stringLiteral:)();
  v99 = v129;
  sub_10005CD18(v130, v129, type metadata accessor for DebugView);
  v100 = swift_allocObject();
  sub_10005CE64(v99, v100 + v133, type metadata accessor for DebugView);
  v101 = v134;
  Button<>.init(_:action:)();
  v102 = v126;
  v103 = *(v126 + 16);
  v104 = v136;
  v103(v136, v137, v92);
  sub_100053C28(v97, v138, &qword_1000D3840, &qword_100097C30);
  v103(v135, v101, v92);
  v105 = v124;
  v106 = v121;
  v107 = v128;
  *v124 = v121;
  v105[1] = v107;
  v108 = v119;
  v109 = v120;
  v105[2] = v119;
  v105[3] = v109;
  v110 = sub_100012634(&qword_1000D3860, &qword_100097C58);
  v103(v105 + v110[12], v104, v92);
  sub_100053C28(v138, v105 + v110[16], &qword_1000D3840, &qword_100097C30);
  v111 = v105 + v110[20];
  v112 = v135;
  v103(v111, v135, v92);
  v113 = v128;
  sub_10005D16C(v106, v128, v108, v109);
  sub_10005D1C0(v106, v113, v108, v109);
  v114 = *(v102 + 8);
  v114(v134, v92);
  sub_10002F5A8(v131, &qword_1000D3840, &qword_100097C30);
  v114(v137, v92);
  v114(v112, v92);
  sub_10002F5A8(v138, &qword_1000D3840, &qword_100097C30);
  v114(v136, v92);
  return sub_10005D1C0(v106, v113, v108, v109);
}

uint64_t sub_10005AAD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10001267C(v9, 1, 1, v10);
  sub_10005CD18(a1, v5, type metadata accessor for DebugView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10005CE64(v5, v13 + v12, type metadata accessor for DebugView);
  sub_10006BA84(0, 0, v9, &unk_100097C98, v13);
}

uint64_t sub_10005AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[53] = v5;
  v6 = *(v5 - 8);
  v4[54] = v6;
  v7 = *(v6 + 64) + 15;
  v4[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[56] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[57] = v9;
  v4[58] = v8;

  return _swift_task_switch(sub_10005AD78, v9, v8);
}

uint64_t sub_10005AD78()
{
  v1 = *(v0 + 416);
  v2 = type metadata accessor for DebugView(0);
  *(v0 + 472) = v2;
  v3 = v1 + v2[7];
  v4 = (v3 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20));
  v5 = *v4;
  *(v0 + 480) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 241) = v6;
  v7 = (v1 + v2[8]);
  v8 = *v7;
  *(v0 + 488) = *v7;
  v9 = v7[1];
  *(v0 + 496) = v9;
  v10 = v7[2];
  *(v0 + 504) = v10;
  v11 = v7[3];
  *(v0 + 512) = v11;
  v12 = *(v7 + 32);
  *(v0 + 242) = v12;
  v13 = v7[5];
  *(v0 + 208) = v5;
  *(v0 + 520) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v33 = v15;
  v34 = v14;
  *(v0 + 32) = v15;
  *(v0 + 16) = v14;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  *(v0 + 240) = 0;
  *(v0 + 216) = v6;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  j__swift_bridgeObjectRetain();
  *(v0 + 528) = sub_100012634(&qword_1000D3850, &unk_100097C40);
  State.wrappedValue.setter();
  v16 = (v1 + v2[6]);
  v17 = *v16;
  LOBYTE(v2) = *(v16 + 8);

  if ((v2 & 1) == 0)
  {
    v19 = *(v0 + 432);
    v18 = *(v0 + 440);
    v32 = *(v0 + 424);
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v17, 0);
    (*(v19 + 8))(v18, v32);
    v17 = *(v0 + 408);
  }

  *(v0 + 536) = v17;
  if (!v17)
  {
    v25 = *(v0 + 448);

    sub_100018F34();
    v26 = swift_allocError();
    *v27 = 14;
    *(v0 + 80) = v33;
    *(v0 + 64) = v34;
    *(v0 + 96) = v12;
    *(v0 + 248) = v26;
    *(v0 + 104) = v13;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0;
    *(v0 + 280) = 2;
    State.wrappedValue.setter();
    v28 = *(v0 + 440);

    sub_100019370();
    sub_1000542B4();

    __asm { BRAA            X1, X16 }
  }

  sub_1000542B4();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_10005B018()
{
  sub_100013A88();
  v1 = *(v0 + 241);
  v2 = *(*(v0 + 536) + 112);
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_10005B0B8;
  v4 = *(v0 + 480);

  return sub_10006A35C(v4, v1);
}

uint64_t sub_10005B0B8()
{
  v2 = *v1;
  sub_1000540C0();
  *v4 = v3;
  v5 = v2[68];
  v6 = *v1;
  sub_1000540C0();
  *v7 = v6;
  *(v9 + 552) = v8;
  *(v9 + 560) = v0;

  v10 = v2[58];
  v11 = v2[57];
  if (v0)
  {
    v12 = sub_10005B404;
  }

  else
  {
    v12 = sub_10005B1F8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_10005B1F8()
{
  v1 = (v0 + 488);
  v2 = *(v0 + 552);
  v3 = *(v0 + 448);

  v4 = *(v2 + 16);
  if (v4)
  {
    v29 = v2;
    v5 = *(v0 + 552);
    sub_100077764(0, v4, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    v8 = (v5 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = _swiftEmptyArrayStorage[3];

      if (v6 >= v11 >> 1)
      {
        sub_100077764((v11 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v12 = &_swiftEmptyArrayStorage[v7];
      v12[4] = v10;
      v12[5] = v9;
      v7 += 2;
      v8 += 2;
      ++v6;
      --v4;
    }

    while (v4);
    v1 = (v0 + 488);
    v2 = v29;
  }

  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v15 = *(v0 + 242);
  v16 = v1[1];
  *(v0 + 160) = *v1;
  *(v0 + 176) = v16;
  *(v0 + 192) = v15;
  *(v0 + 200) = v14;
  *(v0 + 328) = _swiftEmptyArrayStorage;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  State.wrappedValue.setter();
  v17 = *(v0 + 552);
  if (*(v2 + 16))
  {
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = *(v0 + 536);
  v21 = *(v0 + 472);
  v22 = *(v0 + 416);

  v23 = (v22 + *(v21 + 36));
  v24 = v23[1];
  v25 = v23[2];
  *(v0 + 368) = *v23;
  *(v0 + 376) = v24;
  *(v0 + 384) = v25;
  *(v0 + 392) = v19;
  *(v0 + 400) = v18;

  sub_100012634(&qword_1000D3858, &qword_100097C50);
  State.wrappedValue.setter();

  v26 = *(v0 + 440);

  sub_100019370();

  return v27();
}

uint64_t sub_10005B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  v13 = *(v12 + 560);
  v42 = *(v12 + 536);
  v14 = *(v12 + 528);
  v15 = *(v12 + 520);
  v17 = *(v12 + 504);
  v16 = *(v12 + 512);
  v19 = *(v12 + 488);
  v18 = *(v12 + 496);
  v20 = *(v12 + 448);
  v21 = *(v12 + 242);

  sub_10005E1B0();
  *(v12 + 320) = 2;
  swift_errorRetain();
  swift_errorRetain();
  v22 = sub_10005E180();
  sub_10005D660(v22, v23, v24, v25, v26);

  State.wrappedValue.setter();

  v27 = sub_10005E180();
  sub_10005CD88(v27, v28, v29, v30, v31);

  v32 = *(v12 + 440);

  sub_100019370();
  sub_100058FD4();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, a10, a11, a12);
}

uint64_t sub_10005B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[50] = v7;
  v8 = *(v7 - 8);
  v6[51] = v8;
  v9 = *(v8 + 64) + 15;
  v6[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[53] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[54] = v11;
  v6[55] = v10;

  return _swift_task_switch(sub_10005B5E8, v11, v10);
}

uint64_t sub_10005B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v13 = *(v12 + 376);
  v14 = type metadata accessor for DebugView(0);
  sub_10005E3C0(v14);
  if ((v11 & 1) == 0)
  {
    v16 = *(v12 + 408);
    v15 = *(v12 + 416);
    v17 = *(v12 + 400);
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    sub_10005E4E8();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v13, 0);
    (*(v16 + 8))(v15, v17);
    v13 = *(v12 + 368);
  }

  *(v12 + 448) = v13;
  if (v13)
  {
    v20 = *(v12 + 384);
    v19 = *(v12 + 392);
    v21 = *(v12 + 376) + *(v10 + 32);
    sub_10005E1EC();
    *(v12 + 248) = v22;
    *(v12 + 104) = v23;
    *(v12 + 256) = v24;
    *(v12 + 264) = 0;
    *(v12 + 272) = 0;
    *(v12 + 280) = 3;
    swift_bridgeObjectRetain_n();
    *(v12 + 496) = sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    sub_100059A14();
    *(v12 + 504) = v25;
    v26 = swift_task_alloc();
    *(v12 + 512) = v26;
    *v26 = v12;
    sub_10005E4A0(v26);
    sub_10004B1A8();

    return sub_100064C44(v27, v28, v29, v30);
  }

  else
  {
    v33 = *(v12 + 424);
    v34 = *(v12 + 376);

    sub_100018F34();
    v35 = swift_allocError();
    sub_10005E24C(v35, v36);
    *(v12 + 240) = 5;
    sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    v37 = *(v12 + 416);

    sub_100019370();
    sub_10004B1A8();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
  }
}

uint64_t sub_10005B810(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_1000540C0();
  *v8 = v7;
  v9 = v6[64];
  *v8 = *v3;
  v7[65] = v2;

  v10 = v6[63];
  if (v2)
  {
    v11 = v7[49];

    v12 = v7[54];
    v13 = v7[55];
    v14 = sub_10005BABC;
  }

  else
  {
    v7[66] = a2;
    v7[67] = a1;

    v12 = v7[54];
    v13 = v7[55];
    v14 = sub_10005B96C;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_10005B96C()
{
  v13 = *(v0 + 528);
  v14 = *(v0 + 536);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v15 = *(v0 + 448);
  v16 = *(v0 + 496);
  v6 = *(v0 + 424);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v9 = *(v0 + 241);

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v9;
  *(v0 + 200) = v1;
  *(v0 + 328) = v7;
  *(v0 + 336) = v8;
  *(v0 + 344) = v14;
  *(v0 + 352) = v13;
  *(v0 + 360) = 4;

  sub_10005D660(v5, v4, v3, v2, v9);

  State.wrappedValue.setter();

  sub_10005CD88(v5, v4, v3, v2, v9);

  v10 = *(v0 + 416);

  sub_100019370();
  sub_1000542B4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10005BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  v13 = *(v12 + 520);
  sub_10005E324();
  sub_10005E1B0();
  *(v12 + 320) = 5;
  swift_errorRetain();
  v14 = sub_10005E180();
  sub_10005D660(v14, v15, v16, v17, v18);

  swift_errorRetain();
  State.wrappedValue.setter();

  v19 = sub_10005E180();
  sub_10005CD88(v19, v20, v21, v22, v23);

  v24 = *(v12 + 416);

  sub_100019370();
  sub_100058FD4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

void sub_10005BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002FFBC();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_10005E2B0();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  v35 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v36 = sub_10002FD0C(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &a9 - v39;
  v41 = type metadata accessor for TaskPriority();
  sub_10001267C(v40, 1, 1, v41);
  sub_10005CD18(v29, &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugView);
  type metadata accessor for MainActor();

  v42 = static MainActor.shared.getter();
  v43 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = &protocol witness table for MainActor;
  sub_10005CE64(&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for DebugView);
  v45 = (v44 + ((v34 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = v27;
  v45[1] = v25;
  sub_10006BA84(0, 0, v40, v23, v44);

  sub_10002FFA4();
}

uint64_t sub_10005BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[50] = v7;
  v8 = *(v7 - 8);
  v6[51] = v8;
  v9 = *(v8 + 64) + 15;
  v6[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[53] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[54] = v11;
  v6[55] = v10;

  return _swift_task_switch(sub_10005BE34, v11, v10);
}

uint64_t sub_10005BE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v13 = *(v12 + 376);
  v14 = type metadata accessor for DebugView(0);
  sub_10005E3C0(v14);
  if ((v11 & 1) == 0)
  {
    v16 = *(v12 + 408);
    v15 = *(v12 + 416);
    v17 = *(v12 + 400);
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    sub_10005E4E8();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v13, 0);
    (*(v16 + 8))(v15, v17);
    v13 = *(v12 + 368);
  }

  *(v12 + 448) = v13;
  if (v13)
  {
    v20 = *(v12 + 384);
    v19 = *(v12 + 392);
    v21 = *(v12 + 376) + *(v10 + 32);
    sub_10005E1EC();
    *(v12 + 248) = v22;
    *(v12 + 104) = v23;
    *(v12 + 256) = v24;
    *(v12 + 264) = 0;
    *(v12 + 272) = 0;
    *(v12 + 280) = 6;
    swift_bridgeObjectRetain_n();
    *(v12 + 496) = sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    sub_10004B1A8();

    return _swift_task_switch(v25, v26, v27);
  }

  else
  {
    v29 = *(v12 + 424);
    v30 = *(v12 + 376);

    sub_100018F34();
    v31 = swift_allocError();
    sub_10005E24C(v31, v32);
    *(v12 + 240) = 7;
    sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    v33 = *(v12 + 416);

    sub_100019370();
    sub_10004B1A8();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
  }
}

uint64_t sub_10005C014()
{
  sub_100013A88();
  v1 = *(*(v0 + 448) + 112);
  v2 = swift_task_alloc();
  *(v0 + 504) = v2;
  *v2 = v0;
  sub_10005E4A0(v2);

  return sub_10006AA20();
}

uint64_t sub_10005C0A0()
{
  sub_100013A88();
  v2 = *v1;
  sub_1000540C0();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *v1;
  sub_1000540C0();
  *v7 = v6;
  v2[64] = v0;

  if (v0)
  {
    v8 = v2[49];

    v9 = v2[54];
    v10 = v2[55];
    v11 = sub_10005C2BC;
  }

  else
  {
    v9 = v2[54];
    v10 = v2[55];
    v11 = sub_10005C1B0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10005C1B0()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v23 = *(v0 + 448);
  v24 = *(v0 + 496);
  v6 = *(v0 + 424);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v9 = *(v0 + 241);

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v9;
  *(v0 + 200) = v1;
  *(v0 + 328) = v7;
  *(v0 + 336) = v8;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 8;

  v10 = sub_10005E3E8();
  sub_10005D660(v10, v11, v12, v13, v14);

  State.wrappedValue.setter();

  v15 = sub_10005E3E8();
  sub_10005CD88(v15, v16, v17, v18, v19);

  v20 = *(v0 + 416);

  sub_100019370();

  return v21();
}

uint64_t sub_10005C2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  v13 = *(v12 + 512);
  sub_10005E324();
  sub_10005E1B0();
  *(v12 + 320) = 7;
  swift_errorRetain();
  v14 = sub_10005E180();
  sub_10005D660(v14, v15, v16, v17, v18);

  swift_errorRetain();
  State.wrappedValue.setter();

  v19 = sub_10005E180();
  sub_10005CD88(v19, v20, v21, v22, v23);

  v24 = *(v12 + 416);

  sub_100019370();
  sub_100058FD4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_10005C388(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  sub_1000128C0(v7, qword_1000E4560);
  v8 = type metadata accessor for DebugView(0);
  v9 = (a1 + *(v8 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = static os_log_type_t.default.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = a1;
    *v15 = 136446466;
    v25 = 91;
    v26 = 0xE100000000000000;
    v27 = v16;
    v17._countAndFlagsBits = v11;
    v17._object = v10;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8285;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19 = sub_1000847A8(v25, v26, &v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000847A8(0x7373696D736944, 0xE700000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    a1 = v23;

    v2 = v24;
  }

  v20 = a1 + *(v8 + 20);
  sub_10005DB2C(v6);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10005C618@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C6C4(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10005C6E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005C6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 33))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
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

uint64_t sub_10005C734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C77C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10005C7BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013A7C();
  v6 = sub_100012634(&qword_1000D3740, &qword_100097BA8);
  sub_10005E36C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = a3[5];
LABEL_5:
    v11 = sub_10005E494(v8);

    return sub_100012898(v11, v12, v13);
  }

  v9 = type metadata accessor for BundleMerchandisingViewModel(0);
  sub_10005E36C(v9);
  if (*(v10 + 84) == v3)
  {
    v8 = a3[7];
    goto LABEL_5;
  }

  v15 = *(v4 + a3[8] + 40);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10005C8D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013A7C();
  v8 = sub_100012634(&qword_1000D3740, &qword_100097BA8);
  sub_10005E36C(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = a4[5];
  }

  else
  {
    v11 = type metadata accessor for BundleMerchandisingViewModel(0);
    result = sub_10005E36C(v11);
    if (*(v13 + 84) != a3)
    {
      *(v5 + a4[8] + 40) = v4;
      return result;
    }

    v10 = a4[7];
  }

  v14 = sub_10005E494(v10);

  return sub_10001267C(v14, v15, v4, v16);
}

void sub_10005C9C0()
{
  sub_10005CBD0(319, &qword_1000D37B0, &qword_1000D37B8, &qword_100097BC0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10005CB28();
    if (v1 <= 0x3F)
    {
      sub_10005CBD0(319, &qword_1000D36F8, &unk_1000D3700, qword_100097940, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for BundleMerchandisingViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_10005CB80();
          if (v4 <= 0x3F)
          {
            sub_10005CBD0(319, &unk_1000D37D0, &qword_1000D3738, &qword_100097A28, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10005CB28()
{
  if (!qword_1000D37C0)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D37C0);
    }
  }
}

void sub_10005CB80()
{
  if (!qword_1000D37C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D37C8);
    }
  }
}

void sub_10005CBD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10001CEC4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10005CC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005CD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100019360(v4);
  v6 = *(v5 + 16);
  v7 = sub_10002FD24();
  v8(v7);
  return a2;
}

void sub_10005CD78(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10005CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      return j__swift_bridgeObjectRelease();
    case 1:

      goto LABEL_7;
    case 2:
    case 5:
    case 7:

    case 3:
    case 6:
    case 8:

      goto LABEL_7;
    case 4:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005CE64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100019360(v4);
  v6 = *(v5 + 32);
  v7 = sub_10002FD24();
  v8(v7);
  return a2;
}

uint64_t sub_10005CED8()
{
  sub_10002FFBC();
  v4 = type metadata accessor for DebugView(0);
  sub_10005E1D4(v4);
  v7 = *(v6 + 64);
  v8 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_10005CD78(*v8, *(v8 + 8));
  v9 = v0[5];
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    sub_10002FC24(v10);
    (*(v11 + 8))(v8 + v9);
  }

  else
  {
    v12 = *(v8 + v9);
  }

  sub_10005E2E8(v8 + v0[6]);
  v14 = (v8 + v13);
  v15 = *(v8 + v13 + 8);

  v16 = v14[3];

  sub_100018DF0(v14[4], v14[5]);
  sub_100018DF0(v14[6], v14[7]);
  v17 = type metadata accessor for RemoteAlertConfiguration();
  sub_10005E198(v17);
  if (!(!v20 & v19))
  {
    sub_100018DF0(*v2, v18);
  }

  v21 = v2[3];

  v22 = v2[5];

  v23 = type metadata accessor for ClientOverride(0);
  sub_10005E4B4(v23);
  v24 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v24))
  {
    v25 = type metadata accessor for URL();
    sub_10002FC24(v25);
    (*(v26 + 8))(v2 + v3);
  }

  v27 = sub_10005E508();
  if (!sub_10005E290(v27))
  {
    sub_10005E240(v9);
    v29 = *(v28 + 8);
    v30 = sub_10005E4C0();
    v31(v30);
  }

  sub_10005E448();
  sub_10005E424();
  v32 = *(v9 + 40);

  v33 = v8 + v0[9];
  v34 = *(v33 + 8);

  v35 = *(v33 + 16);

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v36, v37, v38);
}

uint64_t sub_10005D0FC(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DebugView(0);
  sub_10002FD0C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10005D16C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10005D1B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005D1B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005D1C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10005D204(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005D204(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005D238()
{
  sub_10002FFBC();
  v4 = type metadata accessor for DebugView(0);
  sub_10005E1D4(v4);
  v7 = *(v6 + 64);
  v8 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_10005CD78(*v8, *(v8 + 8));
  v9 = v0[5];
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    sub_10002FC24(v10);
    (*(v11 + 8))(v8 + v9);
  }

  else
  {
    v12 = *(v8 + v9);
  }

  sub_10005E2E8(v8 + v0[6]);
  v14 = (v8 + v13);
  v15 = *(v8 + v13 + 8);

  v16 = v14[3];

  sub_100018DF0(v14[4], v14[5]);
  sub_100018DF0(v14[6], v14[7]);
  v17 = type metadata accessor for RemoteAlertConfiguration();
  sub_10005E198(v17);
  if (!(!v20 & v19))
  {
    sub_100018DF0(*v2, v18);
  }

  v21 = v2[3];

  v22 = v2[5];

  v23 = type metadata accessor for ClientOverride(0);
  sub_10005E4B4(v23);
  v24 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v24))
  {
    v25 = type metadata accessor for URL();
    sub_10002FC24(v25);
    (*(v26 + 8))(v2 + v3);
  }

  v27 = sub_10005E508();
  if (!sub_10005E290(v27))
  {
    sub_10005E240(v9);
    v29 = *(v28 + 8);
    v30 = sub_10005E4C0();
    v31(v30);
  }

  sub_10005E378();
  sub_10005E400();
  v32 = *(v7 + 40);

  v33 = v8 + v0[9];
  v34 = *(v33 + 8);

  v35 = *(v33 + 16);

  v36 = *(v1 + v9 + 8);

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v37, v38, v39);
}

uint64_t sub_10005D508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D3838, &qword_100097C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D57C()
{
  sub_10004B290();
  sub_10004AE50();
  sub_10005E2B0();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  sub_10005E308(*(v2 + 64));
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10005E174;
  sub_10005E2D4();
  sub_10004B1A8();

  return sub_10005BD3C(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10005D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      return j__swift_bridgeObjectRetain();
    case 1:

      goto LABEL_7;
    case 2:
    case 5:
    case 7:

      return swift_errorRetain();
    case 3:
    case 6:
    case 8:

      goto LABEL_7;
    case 4:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005D73C()
{
  sub_10002FFBC();
  v4 = type metadata accessor for DebugView(0);
  sub_10005E1D4(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = v1 + ((v6 + 32) & ~v6);
  sub_10005CD78(*v10, *(v10 + 8));
  v11 = v0[5];
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    sub_10002FC24(v12);
    (*(v13 + 8))(v10 + v11);
  }

  else
  {
    v14 = *(v10 + v11);
  }

  sub_10005E2E8(v10 + v0[6]);
  v16 = (v10 + v15);
  v17 = *(v10 + v15 + 8);

  v18 = v16[3];

  sub_100018DF0(v16[4], v16[5]);
  sub_100018DF0(v16[6], v16[7]);
  v19 = type metadata accessor for RemoteAlertConfiguration();
  sub_10005E198(v19);
  if (!(!v22 & v21))
  {
    sub_100018DF0(*v2, v20);
  }

  v23 = v2[3];

  v24 = v2[5];

  v25 = type metadata accessor for ClientOverride(0);
  sub_10005E4B4(v25);
  v26 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v26))
  {
    v27 = type metadata accessor for URL();
    sub_10002FC24(v27);
    (*(v28 + 8))(v2 + v3);
  }

  v29 = sub_10005E508();
  if (!sub_10005E290(v29))
  {
    sub_10005E240(v11);
    v31 = *(v30 + 8);
    v32 = sub_10005E4C0();
    v33(v32);
  }

  sub_10005E378();
  sub_10005E400();
  v34 = *(((v6 + 32) & ~v6) + 0x28);

  v35 = v10 + v0[9];
  v36 = *(v35 + 8);

  v37 = *(v35 + 16);

  v38 = *(v1 + v11 + 8);

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v39, v40, v41);
}

uint64_t sub_10005D960()
{
  sub_10004B290();
  sub_10004AE50();
  sub_10005E2B0();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  sub_10005E308(*(v2 + 64));
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10005DA44;
  sub_10005E2D4();
  sub_10004B1A8();

  return sub_10005B4F0(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10005DA44()
{
  sub_100013A88();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000540C0();
  *v3 = v2;

  sub_100019370();

  return v4();
}

uint64_t sub_10005DB2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100012634(&qword_1000D3730, &qword_1000979F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100053C28(v2, &v17 - v11, &qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DismissAction();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005DD2C(void *a1)
{
  v2 = [a1 _persistenceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005DD9C()
{
  sub_10002FFBC();
  v4 = type metadata accessor for DebugView(0);
  sub_10005E1D4(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = v1 + v6;
  sub_10005CD78(*(v1 + v6), *(v1 + v6 + 8));
  v11 = v0[5];
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    sub_10002FC24(v12);
    (*(v13 + 8))(v10 + v11);
  }

  else
  {
    v14 = *(v10 + v11);
  }

  sub_10005E2E8(v10 + v0[6]);
  v16 = (v10 + v15);
  v17 = *(v10 + v15 + 8);

  v18 = v16[3];

  sub_100018DF0(v16[4], v16[5]);
  sub_100018DF0(v16[6], v16[7]);
  v19 = type metadata accessor for RemoteAlertConfiguration();
  sub_10005E198(v19);
  if (!(!v22 & v21))
  {
    sub_100018DF0(*v2, v20);
  }

  v23 = v2[3];

  v24 = v2[5];

  v25 = type metadata accessor for ClientOverride(0);
  sub_10005E4B4(v25);
  v26 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v26))
  {
    v27 = type metadata accessor for URL();
    sub_10002FC24(v27);
    (*(v28 + 8))(v2 + v3);
  }

  v29 = sub_10005E508();
  if (!sub_10005E290(v29))
  {
    sub_10005E240(v11);
    v31 = *(v30 + 8);
    v32 = sub_10005E4C0();
    v33(v32);
  }

  sub_10005E448();
  sub_10005E424();
  v34 = *(v11 + 40);

  v35 = v10 + v0[9];
  v36 = *(v35 + 8);

  v37 = *(v35 + 16);

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v38, v39, v40);
}

uint64_t sub_10005DFB0()
{
  v1 = type metadata accessor for DebugView(0);
  sub_10002FD0C(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_10004A854(v6);
  *v7 = v8;
  v7[1] = sub_10005E174;
  v9 = sub_10005E2D4();

  return sub_10005AC84(v9, v10, v11, v12);
}

uint64_t sub_10005E088()
{
  v0 = sub_10002FD24();
  sub_10001CEC4(v0, v1);
  type metadata accessor for BorderedProminentButtonStyle();
  sub_1000586CC(&qword_1000D3828, &qword_1000D3818, &qword_100097C18);
  sub_10005CC9C(&qword_1000D3830, &type metadata accessor for BorderedProminentButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

void sub_10005E1B0()
{
  *(v2 + 112) = v7;
  *(v2 + 120) = v5;
  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;
  *(v2 + 288) = v4;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0;
}

__n128 sub_10005E1EC()
{
  v2 = *v0;
  *(v1 + 456) = *v0;
  v3 = *(v0 + 8);
  *(v1 + 464) = v3;
  v4 = *(v0 + 16);
  *(v1 + 472) = v4;
  v5 = *(v0 + 24);
  *(v1 + 480) = v5;
  v6 = *(v0 + 32);
  *(v1 + 241) = v6;
  result.n128_u64[0] = v2;
  result.n128_u64[1] = v3;
  *(v1 + 488) = *(v0 + 40);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v1 + 80) = v8;
  *(v1 + 64) = result;
  *(v1 + 96) = v6;
  return result;
}

__n128 sub_10005E24C(uint64_t a1, _BYTE *a2)
{
  *a2 = 14;
  v5 = v2 + *(v3 + 32);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  result = *v5;
  v9 = *(v5 + 16);
  *(v4 + 16) = *v5;
  *(v4 + 32) = v9;
  *(v4 + 48) = v6;
  *(v4 + 208) = a1;
  *(v4 + 56) = v7;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 216) = 0;
  return result;
}

uint64_t sub_10005E290(uint64_t a1)
{

  return sub_100012898(v1 + v2, 1, a1);
}

uint64_t sub_10005E2B0()
{
  v0 = type metadata accessor for DebugView(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t sub_10005E2E8@<X0>(uint64_t a1@<X8>)
{
  result = j__swift_release(*a1, *(a1 + 8));
  v3 = *(v1 + 28);
  return result;
}

void sub_10005E308(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
}

uint64_t sub_10005E324()
{
  v2 = *(v0 + 488);
  v11 = *(v0 + 496);
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v7 = *(v0 + 448);
  v8 = *(v0 + 424);
  v9 = *(v0 + 241);
}

uint64_t sub_10005E350(uint64_t a1)
{

  return sub_100012898(v1 + v2, 3, a1);
}

uint64_t sub_10005E378()
{
  v1 = (v0 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
  j__swift_bridgeObjectRelease();
  v4 = v1[3];
}

uint64_t sub_10005E3C0(uint64_t a1)
{
  v3 = (v1 + *(a1 + 24));
  v4 = *v3;
  v5 = *(v3 + 8);
}

uint64_t sub_10005E400()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_10005CD88(v4, v5, v6, v7, v8);
}

uint64_t sub_10005E424()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_10005CD88(v4, v5, v6, v7, v8);
}

uint64_t sub_10005E448()
{
  v1 = (v0 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
  j__swift_bridgeObjectRelease();
  v4 = v1[3];
}

uint64_t sub_10005E4A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 392);
  return *(v2 + 384);
}

uint64_t sub_10005E4E8()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10005E508()
{
  v2 = *(v0 + 40);

  return type metadata accessor for UUID();
}

uint64_t sub_10005E590()
{
  v1 = (*(v0 + qword_1000D3870) + *((swift_isaMask & **(v0 + qword_1000D3870)) + qword_1000E4540 + 16));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_10005E614()
{
  *(v0 + qword_1000D3878) = 0;
  sub_10005F9C0("Fatal error", "StoreKitUISceneService/PresentationViewController_iOS.swift", "r_iOS.swift");
  __break(1u);
}

id sub_10005E678(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *((swift_isaMask & *v2) + 0x50);
  v5 = *((swift_isaMask & *v2) + 0x58);
  v35.receiver = v2;
  v35.super_class = type metadata accessor for PresentingViewController();
  result = objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if ((*(v2 + qword_1000D3878) & 1) == 0)
  {
    *(v2 + qword_1000D3878) = 1;
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v7 = type metadata accessor for SKLogger();
    sub_1000128C0(v7, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(30);
    v8 = sub_10005FA98();
    v10 = v9;

    v33 = v8;
    v34 = v10;
    sub_10005FA4C();
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v11);
    v12 = v8;
    v13 = sub_10005E590();
    v15 = v14;
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = sub_100039EE0();
      swift_slowAlloc();
      *v18 = 136446466;
      sub_10004A748();
      v19._countAndFlagsBits = v13;
      v19._object = v15;
      String.append(_:)(v19);
      v21 = sub_10004A9C8(v20);
      v29 = sub_10004A9E4(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32, v33, v34);

      *(v18 + 4) = v29;
      *(v18 + 12) = 2082;
      v30 = sub_1000847A8(v12, v10, &v32);

      *(v18 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    else
    {
    }

    return [v2 presentViewController:*(v2 + qword_1000D3870) animated:1 completion:0];
  }

  return result;
}

void sub_10005E914(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005E678(a3);
}

void sub_10005E968(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v4 = type metadata accessor for SKLogger();
  sub_1000128C0(v4, qword_1000E4560);
  sub_10005FA78();
  v5 = sub_10005FA98();
  v7 = v6;

  v43 = v5;
  v44 = v7;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x80000001000A1180;
  String.append(_:)(v8);
  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  v11 = a2;
  v39 = a1;
  if (os_log_type_enabled(v10, v9))
  {
    sub_100039EE0();
    sub_10005F9EC();
    sub_10005F9A4(4.8752e-34);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    sub_10005FA08();
    v13 = sub_1000847A8(v43, v44, &v42);

    *(&type metadata for Any + 4) = v13;
    *(&type metadata for Any + 6) = 2082;
    v14 = sub_1000847A8(v5, v7, &v42);

    *(&type metadata for Any + 14) = v14;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", &type metadata for Any, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  v15 = [v40 view];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 window];

  if (!v17)
  {
    goto LABEL_13;
  }

  v41 = [v17 windowScene];

  if (!v41)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

LABEL_13:
    v36 = static os_log_type_t.error.getter();

    v41 = Logger.logObject.getter();

    if (os_log_type_enabled(v41, v36))
    {
      sub_100039EE0();
      sub_10005F9EC();
      sub_10005F9A4(4.8752e-34);
      v37._countAndFlagsBits = v39;
      v37._object = a2;
      String.append(_:)(v37);
      sub_10005FA08();
      v38 = sub_1000847A8(v43, v44, &v42);

      *(v16 + 4) = v38;
      *(v16 + 6) = 2082;
      *(v16 + 14) = sub_1000847A8(0xD000000000000032, 0x80000001000A11B0, &v42);
      _os_log_impl(&_mh_execute_header, v41, v36, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    goto LABEL_17;
  }

  v19 = v18;
  sub_10005FA78();
  v20 = _typeName(_:qualified:)();
  v22 = v21;

  v43 = v20;
  v44 = v22;
  v23._object = 0x80000001000A11F0;
  v23._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v23);
  v24 = [v19 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v30 = v43;
  v29 = v44;
  v31 = static os_log_type_t.default.getter();

  v32 = Logger.logObject.getter();

  if (os_log_type_enabled(v32, v31))
  {
    sub_100039EE0();
    sub_10005F9EC();
    sub_10005F9A4(4.8752e-34);
    v33._countAndFlagsBits = v39;
    v33._object = v11;
    String.append(_:)(v33);
    sub_10005FA08();
    v34 = sub_1000847A8(v43, v44, &v42);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2082;
    v35 = sub_1000847A8(v30, v29, &v42);

    *(v25 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  [v19 invalidate];
LABEL_17:
}

void sub_10005EEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10005EEBC();
}

id sub_10005EF14()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PresentingViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10005F054()
{
  v1 = *((swift_isaMask & *v0) + qword_1000E4540 + 32);
  swift_unknownObjectWeakInit();
  sub_10005F9C0("Fatal error", "StoreKitUISceneService/PresentationViewController_iOS.swift", "r_iOS.swift");
  __break(1u);
}

void sub_10005F0FC(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + qword_1000E4540);
  v6 = *(v4 + qword_1000E4540 + 8);
  v67.receiver = v2;
  v67.super_class = type metadata accessor for UIPresentationHostingController();
  objc_msgSendSuper2(&v67, "viewDidDisappear:", a1 & 1);
  if ([v2 isBeingDismissed])
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v7 = type metadata accessor for SKLogger();
    sub_1000128C0(v7, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(40);
    v8 = sub_10005FA98();
    v10 = v9;

    v65 = v8;
    v66 = v10;
    sub_10005FA4C();
    v11._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v11);
    v12 = swift_isaMask & *v2;
    sub_10005FA58();
    sub_10005FA4C();
    String.append(_:)(v13);
    v14 = v10;
    v15 = (v2 + *((swift_isaMask & *v2) + qword_1000E4540 + 16));
    v17 = *v15;
    v16 = v15[1];
    v18 = static os_log_type_t.default.getter();

    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v18))
    {
      v62 = v8;
      v20 = sub_100039EE0();
      swift_slowAlloc();
      *v20 = 136446466;
      sub_10004A748();
      v21 = v17;
      v22._countAndFlagsBits = v17;
      v22._object = v16;
      String.append(_:)(v22);
      v24 = sub_10004A9C8(v23);
      v32 = sub_10004A9E4(v24, v25, v26, v27, v28, v29, v30, v31, v62, v64, v65, v66);

      *(v20 + 4) = v32;
      *(v20 + 12) = 2082;
      v33 = sub_1000847A8(v63, v14, &v64);

      *(v20 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    else
    {
      v21 = v17;
    }

    v59 = sub_10005F008();
    if (v59)
    {
      v60 = v59;
      sub_10005E968(v21, v16);
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v34 = type metadata accessor for SKLogger();
    sub_1000128C0(v34, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(53);
    v35._countAndFlagsBits = sub_10005FA98();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x20656E65637320;
    v36._object = 0xE700000000000000;
    String.append(_:)(v36);
    v37 = swift_isaMask & *v2;
    sub_10005FA58();
    sub_10005FA4C();
    String.append(_:)(v38);
    v40 = v65;
    v39 = v66;
    v41 = (v2 + *((swift_isaMask & *v2) + qword_1000E4540 + 16));
    v42 = *v41;
    v43 = v41[1];
    v44 = static os_log_type_t.debug.getter();

    v45 = Logger.logObject.getter();

    if (os_log_type_enabled(v45, v44))
    {
      v46 = sub_100039EE0();
      swift_slowAlloc();
      *v46 = 136446466;
      sub_10004A748();
      v47._countAndFlagsBits = v42;
      v47._object = v43;
      String.append(_:)(v47);
      v49 = sub_10004A9C8(v48);
      v57 = sub_10004A9E4(v49, v50, v51, v52, v53, v54, v55, v56, v61, v64, v65, v66);

      *(v46 + 4) = v57;
      *(v46 + 12) = 2082;
      v58 = sub_1000847A8(v40, v39, &v64);

      *(v46 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v45, v44, "%{public}s%{public}s", v46, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100039E94();
    }

    else
    {
    }
  }
}

void sub_10005F64C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005F0FC(a3);
}

uint64_t sub_10005F730()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + qword_1000E4540 + 16) + 8);

  sub_10005FA38();
  v3 = *(v0 + *(v2 + qword_1000E4540 + 24) + 8);

  sub_10005FA38();
  v5 = v0 + *(v4 + qword_1000E4540 + 32);

  return swift_unknownObjectWeakDestroy();
}

id sub_10005F81C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_1000E4540);
  v3 = *(v1 + qword_1000E4540 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UIPresentationHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10005F898(void *a1)
{
  v2 = *(a1 + *((swift_isaMask & *a1) + qword_1000E4540 + 16) + 8);

  sub_10005FA24();
  v4 = *(a1 + *(v3 + qword_1000E4540 + 24) + 8);

  sub_10005FA24();
  v6 = a1 + *(v5 + qword_1000E4540 + 32);

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_10005F9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, 0xD000000000000025, a3 | 0x8000000000000000, a2, 59, 2);
}

uint64_t sub_10005F9EC()
{

  return swift_slowAlloc();
}

void sub_10005FA78()
{

  _StringGuts.grow(_:)(36);
}

uint64_t sub_10005FA98()
{

  return _typeName(_:qualified:)();
}

uint64_t sub_10005FAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064AF8();
  *a1 = result;
  return result;
}

uint64_t sub_10005FADC(uint64_t *a1)
{
  v1 = *a1;

  return sub_100064B34();
}

id sub_10005FB08(uint64_t a1)
{
  v1[qword_1000D3878] = 0;
  *&v1[qword_1000D3870] = a1;
  v3.receiver = v1;
  v3.super_class = sub_100012634(&unk_1000D3A70, &qword_100097E38);
  return objc_msgSendSuper2(&v3, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10005FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100012634(&qword_1000D3A58, &qword_100097E00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *((swift_isaMask & *v5) + qword_1000E4540 + 32);
  swift_unknownObjectWeakInit();
  v16 = (v5 + *((swift_isaMask & *v5) + qword_1000E4540 + 16));
  *v16 = a1;
  v16[1] = a2;
  v17 = (v5 + *((swift_isaMask & *v5) + qword_1000E4540 + 24));
  *v17 = a3;
  v17[1] = a4;
  sub_100063BC0(a5, v14, &qword_1000D3A58, &qword_100097E00);
  v18 = UIHostingController.init(rootView:)();
  sub_100049EA0(a5, &qword_1000D3A58, &qword_100097E00);
  return v18;
}

id sub_10005FD24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SKLogger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences] = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_logger;
  Logger.init(subsystem:category:)();
  v8 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_alertConfigurations;
  type metadata accessor for RemoteAlertConfiguration();
  *&v1[v8] = Dictionary.init(dictionaryLiteral:)();
  sub_100063C94();
  sub_100063B30(&v1[v7], v6, v9);
  v10 = static os_log_type_t.debug.getter();
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = sub_100039EE0();
    v13 = sub_100039EC8();
    v19 = v13;
    *v12 = 136446466;
    v15 = sub_100037CAC(v13, v14, &v19);
    sub_100030020(v15);
    *(v12 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A15A0, &v19);
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
    sub_100037BD0();
    sub_100039E94();
    sub_10004AB24();
  }

  sub_100063CAC();
  sub_100063C20(v6, v16);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t type metadata accessor for StoreKitAngelRemoteAlertSceneDelegate()
{
  result = qword_1000D39B8;
  if (!qword_1000D39B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060000()
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

void sub_1000600A0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    type metadata accessor for TaskPriority();
    sub_10002FEBC();
    sub_10001267C(v14, v15, v16, v17);
    type metadata accessor for MainActor();
    v18 = a1;
    v19 = v4;
    v20 = a2;
    v21 = a3;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v19;
    v23[5] = v13;
    v23[6] = v20;
    v23[7] = v21;
    sub_10006BA84(0, 0, v11, &unk_100097DF0, v23);
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    sub_100037B40();
    v42 = 0xD000000000000017;
    v43 = v24;
    swift_getObjectType();
    v25._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 2112039;
    v26._object = 0xE300000000000000;
    String.append(_:)(v26);
    v27 = [a1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v33 = v42;
    v32 = v43;
    v34 = static os_log_type_t.error.getter();

    v35 = Logger.logObject.getter();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = sub_100039EE0();
      v37 = sub_100039EC8();
      v42 = v37;
      *v36 = 136446466;
      v39 = sub_100037CAC(v37, v38, &v42);
      sub_100037B8C(v39);
      v40 = sub_1000847A8(v33, v32, &v42);

      *(v36 + 14) = v40;
      sub_100063DD4(&_mh_execute_header, v41, v34, "%{public}s%{public}s");
      sub_100063E70();
      sub_10004AB24();
      sub_100039E94();
    }

    else
    {
    }
  }
}

uint64_t sub_1000603A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10006047C;

  return sub_10006060C(a5, a6);
}

uint64_t sub_10006047C()
{
  sub_100013A88();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000605B4, v5, v4);
}

uint64_t sub_1000605B4()
{
  sub_100013A88();
  v1 = *(v0 + 24);

  sub_100019370();

  return v2();
}

uint64_t sub_10006060C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for RemoteAlertConfiguration();
  v3[22] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_100012634(&qword_1000D31B8, &qword_100096AE0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for SKLogger();
  v3[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[33] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v10;
  v3[35] = v9;

  return _swift_task_switch(sub_100060788, v10, v9);
}

uint64_t sub_100060788()
{
  v180 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  sub_100063C94();
  v172 = v5;
  v173 = v6;
  sub_100063B30(v6 + v5, v1, v7);
  sub_100063CC4();
  _StringGuts.grow(_:)(53);
  v8._countAndFlagsBits = 0x20656E656353;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  v9 = [v4 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x80000001000A13D0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15 = [v3 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100063E3C();

  v16._countAndFlagsBits = sub_100063DC8();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0x80000001000A13F0;
  String.append(_:)(v17);
  *(v0 + 88) = sub_100063714(v4);
  *(v0 + 96) = v18;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v176 = v0 + 88;
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v21 = v178;
  v20 = v179;
  v22 = static os_log_type_t.info.getter();
  v23 = Logger.logObject.getter();
  v24 = os_log_type_enabled(v23, v22);
  v25 = *(v0 + 256);
  if (v24)
  {
    v26 = sub_100039EE0();
    v27 = sub_100039EC8();
    v178 = v27;
    *v26 = 136446466;
    v29 = sub_100037CAC(v27, v28, &v178);
    sub_100030020(v29);
    v30 = sub_1000847A8(v21, v20, &v178);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v26, 0x16u);
    sub_100063DF0();
    sub_100039E94();
    sub_10004AB24();
  }

  else
  {
  }

  sub_100063C20(v25, type metadata accessor for SKLogger);
  v31 = sub_100063714(*(v0 + 152));
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v35 = *(v0 + 232);
    v36 = *(v0 + 176);
    v37 = *(v0 + 152);
    v38 = [objc_allocWithZone(UIWindow) initWithWindowScene:v37];
    *(v0 + 288) = v38;
    v174 = v38;
    [v38 setAlpha:0.0];
    sub_10002FEBC();
    sub_10001267C(v39, v40, v41, v36);
    v42 = [v37 activationContext];
    if (v42)
    {
      sub_100063778(v42);
    }

    v62 = *(v0 + 224);
    sub_10004C3F8();
    v175 = v34;
    v64 = *(v0 + 224);
    v63 = *(v0 + 232);

    sub_100063A6C(v64, v63);
    v65 = *(v0 + 216);
    v66 = *(v0 + 176);
    sub_100063BC0(*(v0 + 232), v65, &qword_1000D31B8, &qword_100096AE0);
    v67 = sub_100012898(v65, 1, v66);
    v68 = *(v0 + 216);
    if (v67 == 1)
    {
      sub_100049EA0(v68, &qword_1000D31B8, &qword_100096AE0);
      sub_100063E24();
      if (!v44)
      {
        sub_100039E60();
      }

      sub_1000128C0(*(v0 + 240), qword_1000E4560);

      v69 = static os_log_type_t.default.getter();

      v70 = Logger.logObject.getter();

      if (os_log_type_enabled(v70, v69))
      {
        sub_100039EE0();
        sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v71._countAndFlagsBits = v33;
        v71._object = v34;
        String.append(_:)(v71);
        v72 = sub_100063D38();
        v80 = sub_100063D78(v72, v73, v74, v75, v76, v77, v78, v79, v170, v171, v172, v173, v174, v34, v176, v177, v178, v179);

        *(v64 + 4) = v80;
        sub_100063DA0();
        v34 = v175;
        *(v64 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A1470, &v177);
        sub_100063DAC(&_mh_execute_header, v81, v69, "%{public}s%{public}s");
        sub_100063DF0();
        sub_100039E94();
        sub_100063D00();
      }

      v82 = *(v0 + 208);
      v84 = *(v0 + 168);
      v83 = *(v0 + 176);
      sub_10002FEBC();
      sub_10001267C(v85, v86, v87, v88);
      sub_100063E0C();

      sub_10003A3A8(v82, v33, v34);
      swift_endAccess();
    }

    else
    {
      sub_1000497D8(v68, *(v0 + 192));
      sub_100063E24();
      if (!v44)
      {
        sub_100039E60();
      }

      v89 = *(v0 + 192);
      sub_1000128C0(*(v0 + 240), qword_1000E4560);
      sub_100063CC4();
      _StringGuts.grow(_:)(49);

      sub_100037B40();
      sub_100063D94();
      v178 = v91 + 30;
      v179 = v90;
      v92 = v33;
      v93._countAndFlagsBits = v33;
      v93._object = v175;
      String.append(_:)(v93);
      v94 = v179;
      v95 = v89[1];
      v170 = *v89;
      v171 = v178;
      v96 = static os_log_type_t.default.getter();

      v97 = Logger.logObject.getter();

      if (os_log_type_enabled(v97, v96))
      {
        sub_100039EE0();
        sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v98._countAndFlagsBits = v170;
        v98._object = v95;
        String.append(_:)(v98);
        v99 = sub_100063D38();
        v107 = sub_100063D78(v99, v100, v101, v102, v103, v104, v105, v106, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);

        *(v89 + 4) = v107;
        sub_100063DA0();
        v108 = sub_1000847A8(v171, v94, &v177);

        *(v89 + 14) = v108;
        sub_100063DAC(&_mh_execute_header, v109, v96, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100039E94();
        sub_100063D00();
      }

      else
      {
      }

      v110 = *(v0 + 208);
      v112 = *(v0 + 168);
      v111 = *(v0 + 176);
      sub_100063B30(*(v0 + 192), v110, type metadata accessor for RemoteAlertConfiguration);
      sub_10001267C(v110, 0, 1, v111);
      sub_100063E0C();

      v33 = v92;
      v34 = v175;
      sub_10003A3A8(v110, v33, v175);
      swift_endAccess();
      v113 = sub_100063DC8();
      sub_100063C20(v113, v114);
    }

    v115 = *(v0 + 232);
    if (sub_100012898(v115, 1, *(v0 + 176)))
    {

      v116 = v33;
      v117 = v34;
    }

    else
    {
      v116 = *v115;
      v117 = v115[1];
    }

    v118 = *(v0 + 152);
    type metadata accessor for BSActionHandler();
    v119 = sub_100065398(v118, v116, v117);
    *(v0 + 296) = v119;
    v120 = v119;
    v121 = *(v0 + 232);
    v122 = *(v0 + 200);
    v123 = *(v0 + 176);

    sub_100063BC0(v121, v122, &qword_1000D31B8, &qword_100096AE0);
    v124 = sub_100012898(v122, 1, v123);
    v125 = *(v0 + 200);
    if (v124 == 1)
    {
      sub_100049EA0(v125, &qword_1000D31B8, &qword_100096AE0);
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60();
      }

      sub_1000128C0(*(v0 + 240), qword_1000E4560);
      v126 = static os_log_type_t.error.getter();

      v127 = Logger.logObject.getter();

      if (os_log_type_enabled(v127, v126))
      {
        sub_100039EE0();
        sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v128._countAndFlagsBits = sub_100063E30();
        String.append(_:)(v128);
        v129 = sub_100063D38();
        v137 = sub_100063D78(v129, v130, v131, v132, v133, v134, v135, v136, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);

        *(v117 + 4) = v137;
        sub_100063DA0();
        *(v117 + 14) = sub_1000847A8(0xD00000000000003BLL, 0x80000001000A14D0, &v177);
        _os_log_impl(&_mh_execute_header, v127, v126, "%{public}s%{public}s", v117, 0x16u);
        sub_100037BD0();
        sub_100039E94();
        sub_100063D00();
      }

      sub_100018F34();
      *(v0 + 312) = swift_allocError();
      *v138 = 13;

      return _swift_task_switch(sub_100061BC0, v120, 0);
    }

    v141 = *(v0 + 184);
    v142 = *(v0 + 168);
    sub_1000497D8(v125, v141);
    v143 = sub_100063E30();
    sub_100061F24(v143, v144, v141, v120, v174);
    *(v0 + 304) = 0;
    v145 = *(v0 + 264);
    v146 = *(v0 + 160);
    v147 = *(v0 + 168);
    v148 = *(v0 + 152);

    [v174 makeKeyAndVisible];
    v149 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    sub_100063E0C();
    v150 = v174;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000633B8(*((*(v147 + v149) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v148 setContentOpaque:0];
    [v148 setSwipeDismissalStyle:0];
    [v148 setAllowsMenuButtonDismissal:0];
    [v148 setSceneDeactivationReason:0];
    sub_100063CC4();
    _StringGuts.grow(_:)(42);

    sub_100037B40();
    sub_100063D94();
    v178 = v152 + 9;
    v179 = v151;
    v153 = [v148 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100063E3C();

    v154._countAndFlagsBits = sub_100063DC8();
    String.append(_:)(v154);

    v155._countAndFlagsBits = 0x73736573206F7420;
    v155._object = 0xEC000000206E6F69;
    String.append(_:)(v155);
    v156 = [v146 description];
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v158;

    v160._countAndFlagsBits = v157;
    v160._object = v159;
    String.append(_:)(v160);

    v162 = v178;
    v161 = v179;
    v163 = static os_log_type_t.info.getter();

    v164 = Logger.logObject.getter();

    if (os_log_type_enabled(v164, v163))
    {
      v165 = sub_100039EE0();
      v166 = sub_100039EC8();
      v178 = v166;
      *v165 = 136446466;
      v168 = sub_100037CAC(v166, v167, &v178);
      sub_100030020(v168);
      v169 = sub_1000847A8(v162, v161, &v178);

      *(v165 + 14) = v169;
      _os_log_impl(&_mh_execute_header, v164, v163, "%{public}s%{public}s", v165, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_10004AB24();
    }

    else
    {
    }

    sub_100063CD4();
    sub_100049EA0(v164, &qword_1000D31B8, &qword_100096AE0);
  }

  else
  {
    v43 = *(v0 + 264);

    sub_100063E24();
    if (!v44)
    {
      sub_100039E60();
    }

    v45 = *(v0 + 152);
    v46 = sub_1000128C0(*(v0 + 240), qword_1000E4560);
    sub_100063CC4();
    _StringGuts.grow(_:)(53);
    sub_100063D94();
    v48._countAndFlagsBits = v47 + 34;
    v48._object = (v49 | 0x8000000000000000);
    String.append(_:)(v48);
    v50 = [v45 description];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54._countAndFlagsBits = v51;
    v54._object = v53;
    String.append(_:)(v54);

    v56 = v178;
    v55 = v179;
    v57 = static os_log_type_t.fault.getter();

    v58 = Logger.logObject.getter();

    if (os_log_type_enabled(v58, v57))
    {
      sub_100039EE0();
      v59 = sub_100063D1C();
      v178 = v59;
      *v46 = 136446466;
      *(v46 + 4) = sub_100037CAC(v59, v60, &v178);
      sub_100063DA0();
      v61 = sub_1000847A8(v56, v55, &v178);

      *(v46 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v58, v57, "%{public}s%{public}s", v46, 0x16u);
      swift_arrayDestroy();
      sub_100039E94();
      sub_100063D00();
    }

    else
    {
    }
  }

  sub_100063D54();

  sub_100019370();

  return v139();
}

uint64_t sub_100061BC0()
{
  sub_100013A88();
  v1 = v0[37];
  sub_1000660F4(v0[39]);

  v2 = v0[34];
  v3 = v0[35];

  return _swift_task_switch(sub_100061C30, v2, v3);
}

uint64_t sub_100061C30()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[19];

  [v5 invalidate];

  sub_100049EA0(v4, &qword_1000D31B8, &qword_100096AE0);
  sub_100063D54();

  sub_100019370();

  return v6();
}

uint64_t sub_100061D28()
{
  sub_100013A88();
  v1 = v0[37];
  sub_1000660F4(v0[38]);
  v2 = v0[34];
  v3 = v0[35];

  return _swift_task_switch(sub_100061D88, v2, v3);
}

uint64_t sub_100061D88()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[19];

  [v5 invalidate];

  sub_100063CD4();
  sub_100049EA0(v2, &qword_1000D31B8, &qword_100096AE0);
  sub_100063D54();

  sub_100019370();

  return v6();
}

uint64_t sub_100061F24(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v77 = a2;
  v72 = a5;
  v67 = sub_100012634(&qword_1000D3A58, &qword_100097E00);
  v8 = *(*(v67 - 8) + 64);
  v9 = __chkstk_darwin(v67);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v62 - v11;
  v66 = type metadata accessor for BundleMerchandisingViewModel(0);
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoteAlertConfiguration();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v75 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SKLogger();
  sub_1000128C0(v17, qword_1000E4560);
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v18._object = 0x80000001000A1580;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a1;
  v19._object = v77;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  _print_unlocked<A, B>(_:_:)();
  v21 = v79;
  v73 = v78;
  v22 = *a3;
  v23 = a3[1];
  v24 = static os_log_type_t.default.getter();

  v25 = v23;
  v26 = Logger.logObject.getter();

  v74 = v24;
  v27 = os_log_type_enabled(v26, v24);
  v69 = a1;
  v64 = v25;
  v65 = v22;
  if (v27)
  {
    v28 = v25;
    v29 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v82 = v63;
    *v29 = 136446466;
    v78 = 91;
    v79 = 0xE100000000000000;
    v30._countAndFlagsBits = v22;
    v30._object = v28;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 8285;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = sub_1000847A8(v78, v79, &v82);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = sub_1000847A8(v73, v21, &v82);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v74, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = v75;
  sub_100063B30(a3, v75, type metadata accessor for RemoteAlertConfiguration);
  type metadata accessor for AppStoreOfferViewService();
  swift_allocObject();

  v35 = sub_100064B70(v34, a4);
  v36 = type metadata accessor for JSONDecoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v39 = a3[6];
  v40 = a3[7];
  sub_100063ADC();
  v41 = v76;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v41)
  {
  }

  v43 = v78;
  v44 = v79;
  v45 = v80;
  v46 = v81;
  v47 = v70;
  sub_100063B30(a3, v70, type metadata accessor for RemoteAlertConfiguration);
  v48 = v47 + *(v66 + 20);
  *v48 = v43;
  *(v48 + 8) = v44;
  *(v48 + 16) = v45;
  *(v48 + 24) = v46;
  v49 = type metadata accessor for BundleMerchandisingOfferView(0);
  v50 = v71;
  v51 = v47;
  sub_100063B30(v47, &v71[*(v49 + 20)], type metadata accessor for BundleMerchandisingViewModel);
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v53 = v68;
  v54 = (v50 + *(v67 + 36));
  *v54 = KeyPath;
  v54[1] = v35;
  sub_100063BC0(v50, v53, &qword_1000D3A58, &qword_100097E00);
  v55 = objc_allocWithZone(sub_100012634(&qword_1000D3A68, &qword_100097E30));
  v56 = v64;

  v57 = v77;

  v58 = sub_10005FB70(v65, v56, v69, v57, v53);
  objc_allocWithZone(sub_100012634(&unk_1000D3A70, &qword_100097E38));
  v59 = v58;
  v60 = sub_10005FB08(v59);
  v61 = *((swift_isaMask & *v59) + qword_1000E4540 + 32);
  swift_unknownObjectWeakAssign();
  [v72 setRootViewController:v60];

  sub_100049EA0(v50, &qword_1000D3A58, &qword_100097E00);
  return sub_100063C20(v51, type metadata accessor for BundleMerchandisingViewModel);
}

void sub_100062578(void *a1)
{
  sub_10004A7DC();
  _StringGuts.grow(_:)(27);

  sub_100037B40();
  v62 = 0xD000000000000019;
  v63 = v2;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = v63;
  v9 = static os_log_type_t.info.getter();

  v10 = Logger.logObject.getter();

  v11 = &off_100093000;
  if (os_log_type_enabled(v10, v9))
  {
    v12 = sub_100039EE0();
    v13 = sub_100039EC8();
    v62 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_100037CAC(v13, v14, &v62);
    *(v12 + 12) = 2082;
    v15 = sub_1000847A8(0xD000000000000019, v8, &v62);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    v11 = &off_100093000;
    sub_100039E94();
  }

  else
  {
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a1;
    v19 = [v17 keyWindow];
    if (v19)
    {
      v61 = v19;

LABEL_15:
      [v61 setAlpha:1.0];

      sub_100063E54();

      return;
    }

    v36 = [v17 windows];
    sub_1000633E4();
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100082B18(v37))
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v38 = *(v37 + 32);
      }

      v61 = v38;

      goto LABEL_15;
    }

    sub_10004A7DC();
    _StringGuts.grow(_:)(49);

    sub_100037B40();
    v62 = 0xD000000000000023;
    v63 = v42;
    v43 = [v17 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 0x73776F646E69570ALL;
    v48._object = 0xEA0000000000203ALL;
    String.append(_:)(v48);
    v49 = [v17 windows];

    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    Array.description.getter();
    sub_100063E3C();

    v50._countAndFlagsBits = sub_100063DC8();
    String.append(_:)(v50);

    v52 = v62;
    v51 = v63;
    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = sub_100039EE0();
      v56 = sub_100039EC8();
      v62 = v56;
      *v55 = *(v11 + 97);
      v58 = sub_100037CAC(v56, v57, &v62);
      sub_100037B8C(v58);
      v59 = sub_1000847A8(v52, v51, &v62);

      *(v55 + 14) = v59;
      sub_100063DD4(&_mh_execute_header, v60, v53, "%{public}s%{public}s");
      sub_100037BD0();
      sub_100039E94();
      sub_100039E94();

      goto LABEL_9;
    }
  }

  else
  {
    sub_10004A7DC();
    _StringGuts.grow(_:)(25);

    sub_100037B40();
    v62 = 0xD000000000000017;
    v63 = v20;
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v27 = v62;
    v26 = v63;
    v28 = static os_log_type_t.error.getter();

    v29 = Logger.logObject.getter();

    if (os_log_type_enabled(v29, v28))
    {
      v30 = sub_100039EE0();
      v31 = sub_100039EC8();
      v62 = v31;
      *v30 = *(v11 + 97);
      v33 = sub_100037CAC(v31, v32, &v62);
      sub_100037B8C(v33);
      v34 = sub_1000847A8(v27, v26, &v62);

      *(v30 + 14) = v34;
      sub_100063DD4(&_mh_execute_header, v35, v28, "%{public}s%{public}s");
      sub_100063E70();
      sub_10004AB24();
      sub_100039E94();

LABEL_9:
      sub_100063E54();
      return;
    }
  }

  sub_100063E54();
}

uint64_t sub_100062BC8(void *a1)
{
  v2 = v1;
  v4 = 0xD000000000000016;
  v5 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v72 - v7;
  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  sub_100037B40();
  v84 = 0xD000000000000016;
  v85 = v9;
  v10 = [a1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100063E3C();

  v11._countAndFlagsBits = sub_100063DC8();
  String.append(_:)(v11);

  v13 = v84;
  v12 = v85;
  v14 = static os_log_type_t.info.getter();

  v79 = v2;
  v15 = Logger.logObject.getter();

  v16 = &type metadata for Any;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = sub_100039EE0();
    v18 = sub_100039EC8();
    v84 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_100037CAC(v18, v19, &v84);
    *(v17 + 12) = 2082;
    v20 = sub_1000847A8(v13, v12, &v84);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    sub_100063DF0();
    v4 = 0xD000000000000016;
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v22 = result;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v73 = a1;
    if (v23)
    {
      v24 = v73;
      v25 = sub_100063714(v23);
      if (v26)
      {
        v16 = v25;
        v27 = v26;
        v82 = v24;
        if (qword_1000D1AE8 != -1)
        {
LABEL_73:
          sub_100039E60();
        }

        v28 = type metadata accessor for SKLogger();
        sub_1000128C0(v28, qword_1000E4560);
        v84 = 0;
        v85 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        sub_100037B40();
        v84 = v4 + 5;
        v85 = v29;
        v30 = [v23 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34._countAndFlagsBits = v31;
        v34._object = v33;
        String.append(_:)(v34);

        v35 = v84;
        v4 = v85;

        v36 = static os_log_type_t.default.getter();

        v37 = Logger.logObject.getter();

        if (os_log_type_enabled(v37, v36))
        {
          v38 = sub_100039EE0();
          v80 = v35;
          v39 = v38;
          v40 = sub_100039EC8();
          LODWORD(v81) = v36;
          v83[0] = v40;
          *v39 = 136446466;
          v84 = 91;
          v85 = 0xE100000000000000;
          v41._countAndFlagsBits = v16;
          v41._object = v27;
          String.append(_:)(v41);
          v42._countAndFlagsBits = 8285;
          v42._object = 0xE200000000000000;
          String.append(_:)(v42);
          v43 = v16;
          v44 = sub_1000847A8(v84, v85, v83);

          *(v39 + 4) = v44;
          v16 = v43;
          *(v39 + 12) = 2082;
          v45 = sub_1000847A8(v80, v4, v83);

          *(v39 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v37, v81, "%{public}s%{public}s", v39, 0x16u);
          sub_100063E70();
          sub_10004AB24();
          sub_100039E94();
        }

        else
        {
        }

        type metadata accessor for RemoteAlertConfiguration();
        sub_10002FEBC();
        sub_10001267C(v46, v47, v48, v49);
        sub_100063E0C();
        sub_10003A3A8(v8, v16, v27);
        swift_endAccess();
      }

      else
      {
      }
    }

    v50 = [v22 windows];
    v74 = sub_1000633E4();
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = sub_100082B18(v51);
    v77 = v51;
    v78 = v52;
    v27 = 0;
    v8 = 0;
    v53 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    v75 = v51 & 0xFFFFFFFFFFFFFF8;
    v76 = v51 & 0xC000000000000001;
    v23 = v79;
    v82 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    while (1)
    {
      if (v78 == v27)
      {
      }

      if (v76)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v75 + 16))
        {
          goto LABEL_65;
        }

        v54 = *(v77 + 8 * v27 + 32);
      }

      v55 = v54;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_100063E0C();
      v56 = v55;
      sub_100063428(&v53[v23], v56);
      if (v8)
      {
        break;
      }

      v16 = v57;
      v4 = *&v53[v23];
      v22 = (v4 >> 62);
      if (v4 >> 62)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v58 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v58 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = v58 - v16;
      if (v58 < v16)
      {
        goto LABEL_66;
      }

      if (v16 < 0)
      {
        goto LABEL_67;
      }

      if (v22)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v60 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v60 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v60 < v58)
      {
        goto LABEL_68;
      }

      v81 = 0;
      v8 = v56;
      v61 = v16 - v58;
      if (__OFSUB__(0, v59))
      {
        goto LABEL_69;
      }

      if (v22)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v62 - v59;
      if (__OFADD__(v62, v61))
      {
        goto LABEL_70;
      }

      v80 = v27;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v82[v23] = v4;
      if (v22)
      {
        v65 = 0;
      }

      else
      {
        v65 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      if (v65 == 1 && (v27 = v4 & 0xFFFFFFFFFFFFFF8, v63 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v53 = v82;
      }

      else
      {
        if (v22)
        {
          sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v66 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v53 = v82;
        *&v82[v79] = v4;
        v27 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = (v27 + 32);
      v23 = v27 + 32 + 8 * v16;
      swift_arrayDestroy();
      if (v59)
      {
        if (v4 >> 62)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v67 = *(v27 + 16);
        }

        v68 = v67 - v58;
        if (__OFSUB__(v67, v58))
        {
          goto LABEL_71;
        }

        v69 = &v22[8 * v58];
        if (v58 != v16 || v23 >= &v69[8 * v68])
        {
          memmove((v27 + 32 + 8 * v16), v69, 8 * v68);
        }

        if (v4 >> 62)
        {
          v71 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v71 = *(v27 + 16);
        }

        if (__OFADD__(v71, v61))
        {
          goto LABEL_72;
        }

        *(v27 + 16) = v71 - v59;
      }

      v23 = v79;
      *&v53[v79] = v4;
      swift_endAccess();

      v8 = v81;
      v27 = v80 + 1;
    }

    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000633B8(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1);
  }

  return result;
}

unint64_t sub_1000633E4()
{
  result = qword_1000D3A30;
  if (!qword_1000D3A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D3A30);
  }

  return result;
}

void sub_100063428(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_100063640(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    sub_100082B18(v4);
LABEL_36:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_36;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v22 != v5)
        {
          if (v8 != v9)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_16;
          }

LABEL_26:
          v21 = __OFADD__(v8++, 1);
          if (v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v11)
        {
          goto LABEL_38;
        }

        v12 = *(v4 + 32 + 8 * v9);
        if (v12 != v5)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v11)
            {
              goto LABEL_42;
            }

            v13 = *(v4 + 32 + 8 * v8);
            v14 = v12;
LABEL_16:
            v15 = v14;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1000637F0(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_1000637F0(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_43;
            }

            v19 = v17 + 8 * v9;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v4;
          }

          goto LABEL_26;
        }
      }

      v21 = __OFADD__(v9++, 1);
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

uint64_t sub_100063640(uint64_t a1, void *a2)
{
  result = sub_100082B18(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100063714(void *a1)
{
  v1 = [a1 configurationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100063778(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000637F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100063854()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000638AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100063980;

  return sub_1000603A8(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_100063980()
{
  sub_100013A88();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100019370();

  return v2();
}

uint64_t sub_100063A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063ADC()
{
  result = qword_1000D3A60;
  if (!qword_1000D3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3A60);
  }

  return result;
}

uint64_t sub_100063B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100019360(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100063B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064AF8();
  *a1 = result;
  return result;
}

uint64_t sub_100063BC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100012634(a3, a4);
  sub_100019360(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100063C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100019360(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100063CD4()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);

  return sub_100063C20(v3, type metadata accessor for RemoteAlertConfiguration);
}

uint64_t sub_100063D00()
{
}

uint64_t sub_100063D1C()
{

  return swift_slowAlloc();
}

uint64_t sub_100063D54()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
}

uint64_t sub_100063D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a17;
  v20 = a18;

  return sub_1000847A8(v19, v20, &a16);
}

void sub_100063DAC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

void sub_100063DD4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_100063DF0()
{

  return swift_arrayDestroy();
}

uint64_t sub_100063E0C()
{

  return swift_beginAccess();
}

uint64_t sub_100063E48@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100063E70()
{

  return swift_arrayDestroy();
}

uint64_t sub_100063E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10001267C(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;
  v12 = v3;

  sub_10006BA84(0, 0, v9, &unk_100097E88, v11);
}

uint64_t sub_100063F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100063FA8, 0, 0);
}

uint64_t sub_100063FA8()
{
  v19 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for SKLogger();
  sub_1000128C0(v2, qword_1000E4560);
  v3 = *(v1 + OBJC_IVAR___AngelDialogContext_logKey);
  v4 = *(v1 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v5 = static os_log_type_t.error.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v18[0] = v8;
    v18[1] = 91;
    v18[2] = 0xE100000000000000;
    v9._countAndFlagsBits = v3;
    v9._object = v4;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8285;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_1000847A8(91, 0xE100000000000000, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000847A8(0xD00000000000001FLL, 0x80000001000A1660, v18);
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[3];
  v12 = v0[4];
  sub_100018F34();
  v14 = swift_allocError();
  *v15 = 9;
  v13(0, v14);

  v16 = v0[1];

  return v16();
}

void sub_100064294(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger();
  sub_1000128C0(v5, qword_1000E4560);
  v6 = *(a2 + OBJC_IVAR___AngelDialogContext_logKey);
  v7 = *(a2 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v8 = static os_log_type_t.error.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v17 = v11;
    v12._countAndFlagsBits = v6;
    v12._object = v7;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8285;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v14 = sub_1000847A8(91, 0xE100000000000000, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1000847A8(0xD000000000000019, 0x80000001000A1640, &v17);
    _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_100018F34();
  swift_allocError();
  *v15 = 9;
  v16 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v16);

  _Block_release(a3);
}

void sub_100064560(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger();
  sub_1000128C0(v6, qword_1000E4560);
  v7 = *(a3 + OBJC_IVAR___AngelDialogContext_logKey);
  v8 = *(a3 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v18 = v12;
    v13._countAndFlagsBits = v7;
    v13._object = v8;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1000847A8(0xD000000000000020, 0x80000001000A1610, &v18);
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_100018F34();
  swift_allocError();
  *v16 = 9;
  v17 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v17);

  _Block_release(a4);
}

uint64_t sub_1000648BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000648F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006493C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100064A04;

  return sub_100063F84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100064A04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100064AF8()
{
  sub_10006532C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100064B70(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RemoteAlertConfiguration();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_10004DA2C(a1, v8);
  v9 = type metadata accessor for StoreKitViewService();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10004DA90(a1);
  sub_1000497D8(v8, v12 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  *(v2 + 112) = v12;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_100064C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_100065390(sub_100064C68, v4);
}

uint64_t sub_100064C68()
{
  v0[10] = *(v0[9] + 112);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100064D0C;
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return sub_10006A760(v5, v4, v2, v3);
}

uint64_t sub_100064D0C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  v6[12] = v2;

  v9 = v6[9];
  if (v2)
  {
    v10 = sub_100064ED8;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v10 = sub_100064E4C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100064E4C()
{
  v1 = *(*(v0 + 72) + 120);
  *(v0 + 120) = v1;
  return sub_100065390(sub_100064E6C, v1);
}

uint64_t sub_100064E6C()
{
  v1 = *(v0 + 120);
  sub_100066960(*(v0 + 112), *(v0 + 104));
  v2 = *(v0 + 8);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  return v2(v3, v4);
}

uint64_t sub_100064ED8()
{
  v22 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = type metadata accessor for SKLogger();
  sub_1000128C0(v3, qword_1000E4560);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v4._object = 0x80000001000A16E0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v4);
  v0[4] = v1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  v7 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration + 8);

  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v19 = v12;
    v20 = 91;
    v21 = 0xE100000000000000;
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1000847A8(v6, v5, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0[9] + 120);
  v0[16] = v17;

  return _swift_task_switch(sub_1000651A4, v17, 0);
}

uint64_t sub_1000651A4()
{
  v1 = v0[16];
  v2 = v0[9];
  sub_100066568(v0[12]);

  return _swift_task_switch(sub_100065214, v2, 0);
}

uint64_t sub_100065214()
{
  v1 = *(v0 + 96);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_100065280()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000652B0()
{
  sub_100065280();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100065300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E578();
  *a1 = result;
  return result;
}

unint64_t sub_10006532C()
{
  result = qword_1000D3B98;
  if (!qword_1000D3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3B98);
  }

  return result;
}

NSObject *sub_100065398(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for SKLogger();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v127 = &v117 - v13;
  __chkstk_darwin(v12);
  v15 = &v117 - v14;
  v16 = [a1 activationContext];
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v16;
  v18 = [v16 actions];

  v19 = sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
  v20 = sub_100066EA8();
  v128 = v19;
  v126 = v20;
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100066DF8(v21) < 2)
  {

LABEL_4:
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v22 = sub_1000128C0(v7, qword_1000E4560);
    sub_100012C50(v22, v11);
    sub_100066FA8();
    _StringGuts.grow(_:)(75);
    v23._object = 0x80000001000A1870;
    v23._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v23);
    *&v129 = sub_100063714(a1);
    *(&v129 + 1) = v24;
    sub_100012634(&unk_1000D3A40, &qword_100094E90);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0xD000000000000021;
    v26._object = 0x80000001000A18A0;
    String.append(_:)(v26);
    v27 = v131;
    v28 = static os_log_type_t.error.getter();
    v29 = Logger.logObject.getter();
    if (os_log_type_enabled(v29, v28))
    {
      sub_10002FF14();
      v30 = swift_slowAlloc();
      sub_10002FE48();
      *&v129 = swift_slowAlloc();
      *v30 = 136446466;
      sub_10004A980();
      *&v131 = v31;
      *(&v131 + 1) = v32;
      v34._countAndFlagsBits = v33;
      v34._object = a3;
      String.append(_:)(v34);
      v35._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v35);
      sub_100067020();

      sub_1000670D0();
      v37 = sub_1000847A8(v27, *(&v27 + 1), v36);

      *(v30 + 14) = v37;
      sub_100067144(&_mh_execute_header, v38, v39, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    v40 = v11;
    goto LABEL_44;
  }

  v117 = v3;
  v121 = v7;
  v122 = a1;
  v118 = v15;
  v120 = a2;
  v123 = a3;
  v119 = v21 & 0xC000000000000001;
  v125 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v41 = v133;
    v42 = v134;
    v43 = v135;
    v44 = v136;
    v45 = v137;
  }

  else
  {
    v46 = -1 << *(v21 + 32);
    v42 = v21 + 56;
    v47 = *(v21 + 56);
    sub_100067008();
    v45 = v48 & v49;

    v43 = v3;
    v44 = 0;
    v41 = v21;
  }

  v124 = v43;
  v50 = (v43 + 64) >> 6;
  if ((v41 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v18 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
  v51 = __CocoaSet.Iterator.next()();
  if (!v51 || (*&v129 = v51, swift_dynamicCast(), v52 = v131, v53 = v44, v54 = v45, !v131))
  {
LABEL_39:
    sub_100066FE0();

    if (qword_1000D1AE8 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v57 = [v52 info];
    if (!v57)
    {
      v131 = 0u;
      v132 = 0u;
LABEL_35:
      sub_10002090C(&v131);
      goto LABEL_36;
    }

    v18 = v57;
    v143 = v52;
    v58 = [v57 objectForSetting:0];

    if (v58)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v131 = v129;
    v132 = v130;
    v52 = v143;
    if (!*(&v130 + 1))
    {
      goto LABEL_35;
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_36:

LABEL_37:
    v44 = v53;
    v45 = v54;
    if (v41 < 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v55 = v44;
    v56 = v45;
    v53 = v44;
    if (!v45)
    {
      while (1)
      {
        v53 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v53 >= v50)
        {
          goto LABEL_39;
        }

        v56 = *(v42 + 8 * v53);
        ++v55;
        if (v56)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_82:

LABEL_83:
      sub_10006703C();
      type metadata accessor for BSActionHandler();
      v29 = swift_allocObject();
      v116 = v123;

      sub_100066014(v143, v18, v120, v116);
      return v29;
    }

LABEL_21:
    v54 = (v56 - 1) & v56;
    v52 = *(*(v41 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v56)))));
    if (!v52)
    {
      goto LABEL_39;
    }
  }

  v18 = *(&v129 + 1);
  if (v129 != 0x6573616863727570 || *(&v129 + 1) != 0xE800000000000000)
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

LABEL_47:
  sub_100066FE0();
  if (v119)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v79 = v138;
    v78 = v139;
    v3 = v140;
    v80 = v141;
    v81 = v142;
  }

  else
  {
    v79 = v125;
    v82 = -1 << *(v125 + 32);
    v83 = *(v125 + 56);
    v78 = v125 + 56;
    sub_100067008();
    v81 = v84 & v85;

    v80 = 0;
  }

  v126 = v3;
  v124 = 0x80000001000A1930;
  v127 = v79;
  while (2)
  {
    if (v79 < 0)
    {
      v90 = __CocoaSet.Iterator.next()();
      if (!v90)
      {
        goto LABEL_75;
      }

      *&v129 = v90;
      swift_dynamicCast();
      v18 = v131;
      v88 = v80;
      v89 = v81;
LABEL_59:
      if (!v18)
      {
LABEL_75:
        sub_10006703C();
        if (qword_1000D1AE8 != -1)
        {
          sub_10002FBAC();
          swift_once();
        }

        v96 = sub_1000128C0(v121, qword_1000E4560);
        v97 = v118;
        sub_100012C50(v96, v118);
        sub_100066FA8();
        _StringGuts.grow(_:)(86);
        sub_100066F4C("Could not create view service for scene ");
        *&v129 = sub_100063714(v122);
        *(&v129 + 1) = v98;
        sub_100012634(&unk_1000D3A40, &qword_100094E90);
        v99._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v99);

        v100._countAndFlagsBits = 0xD00000000000002CLL;
        v100._object = 0x80000001000A1900;
        String.append(_:)(v100);
        v101 = v131;
        v102 = static os_log_type_t.error.getter();
        v29 = Logger.logObject.getter();
        v103 = os_log_type_enabled(v29, v102);
        v104 = v123;
        if (v103)
        {
          sub_10002FF14();
          v105 = swift_slowAlloc();
          v128 = v101;
          v106 = v105;
          sub_10002FE48();
          *&v129 = swift_slowAlloc();
          *v106 = 136446466;
          sub_10004A980();
          v108._countAndFlagsBits = sub_1000670BC(v107);
          v108._object = v104;
          String.append(_:)(v108);
          v109._countAndFlagsBits = sub_100037BA8();
          String.append(_:)(v109);
          sub_100067020();

          sub_1000670D0();
          v111 = sub_1000847A8(v128, *(&v101 + 1), v110);

          *(v106 + 14) = v111;
          sub_100067144(&_mh_execute_header, v112, v113, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        sub_1000498A0(v97);
        sub_100018F34();
        v114 = swift_allocError();
        sub_100067104(v114, v115);

        return v29;
      }

      v91 = [v18 info];
      if (!v91)
      {
        v131 = 0u;
        v132 = 0u;
LABEL_73:
        sub_10002090C(&v131);
LABEL_74:

        v80 = v88;
        v81 = v89;
        continue;
      }

      v92 = v91;
      v93 = [v91 objectForSetting:0];

      if (v93)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v129 = 0u;
        v130 = 0u;
      }

      v131 = v129;
      v132 = v130;
      v79 = v127;
      if (!*(&v130 + 1))
      {
        goto LABEL_73;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_74;
      }

      if (v129 == 0xD000000000000012 && v124 == *(&v129 + 1))
      {
        goto LABEL_82;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v95)
      {
        goto LABEL_83;
      }

      v80 = v88;
      v81 = v89;
      v79 = v127;
      continue;
    }

    break;
  }

  v86 = v80;
  v87 = v81;
  v88 = v80;
  if (v81)
  {
LABEL_56:
    v89 = (v87 - 1) & v87;
    v18 = *(*(v79 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v87)))));
    goto LABEL_59;
  }

  while (1)
  {
    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v88 >= ((v3 + 64) >> 6))
    {
      goto LABEL_75;
    }

    v87 = *(v78 + 8 * v88);
    ++v86;
    if (v87)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_85:
  sub_10002FBAC();
  swift_once();
LABEL_40:
  v61 = sub_1000128C0(v121, qword_1000E4560);
  v62 = v127;
  sub_100012C50(v61, v127);
  sub_100066FA8();
  _StringGuts.grow(_:)(82);
  sub_100066F4C("Could not create view service for scene ");
  *&v129 = sub_100063714(v122);
  *(&v129 + 1) = v63;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v64._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v64);

  sub_100066F4C(" because the purchase action is missing.");
  v65 = v131;
  v66 = static os_log_type_t.error.getter();
  v29 = Logger.logObject.getter();
  v67 = os_log_type_enabled(v29, v66);
  v68 = v123;
  if (v67)
  {
    sub_10002FF14();
    v69 = swift_slowAlloc();
    sub_10002FE48();
    *&v129 = swift_slowAlloc();
    *v69 = 136446466;
    sub_10004A980();
    v71._countAndFlagsBits = sub_1000670BC(v70);
    v71._object = v68;
    String.append(_:)(v71);
    v72._countAndFlagsBits = sub_100037BA8();
    String.append(_:)(v72);
    v73 = sub_100067020();

    *(v69 + 4) = v73;
    *(v69 + 12) = 2082;
    v74 = sub_1000847A8(v65, *(&v65 + 1), &v129);

    *(v69 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v29, v66, "%{public}s%{public}s", v69, 0x16u);
    sub_100066F98();
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {
  }

  v40 = v62;
LABEL_44:
  sub_1000498A0(v40);
  sub_100018F34();
  v75 = swift_allocError();
  sub_100067104(v75, v76);
  return v29;
}

void *sub_100066014(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
  sub_100012634(&qword_1000D3CA0, &qword_100098008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093340;
  *(inited + 32) = a1;
  *(inited + 40) = 1;
  *(inited + 48) = a2;
  *(inited + 56) = 1;
  sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
  sub_100066EA8();
  v10 = a1;
  v11 = a2;
  v4[18] = Dictionary.init(dictionaryLiteral:)();
  return v4;
}

void sub_1000660F4(uint64_t a1)
{
  v2 = v1;
  v4 = v1[15];
  sub_1000670E4();
  v5 = v1[18];

  v6 = sub_100021C6C(v4, v5);

  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_1000128C0(v21, qword_1000E4560);
    v22 = v2[16];
    v23 = v2[17];
    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_10002FF14();
      v26 = swift_slowAlloc();
      sub_10002FE48();
      v42[0] = swift_slowAlloc();
      *v26 = 136446466;
      sub_100066F18();
      v27._countAndFlagsBits = v22;
      v27._object = v23;
      String.append(_:)(v27);
      v28._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v28);
      sub_100066F6C(v29, v30, v31, v32);

      sub_100066F88();
      *(v26 + 14) = sub_1000847A8(0xD00000000000002ALL, 0x80000001000A1810, v42);
      sub_100066F2C(&_mh_execute_header, v33, v34, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    sub_1000128C0(v7, qword_1000E4560);
    sub_100067124();
    sub_10006707C("Presentation failed due to error: ");
    v42[0] = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v9 = v2[16];
    v8 = v2[17];
    v10 = static os_log_type_t.error.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      sub_10002FF14();
      v12 = swift_slowAlloc();
      sub_10002FE48();
      v42[0] = swift_slowAlloc();
      *v12 = 136446466;
      sub_100066F18();
      v13._countAndFlagsBits = v9;
      v13._object = v8;
      String.append(_:)(v13);
      v14._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v14);
      v19 = sub_100066F6C(v15, v16, v17, v18);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2082;
      v20 = sub_1000847A8(v40, v41, v42);

      *(v12 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      sub_100066F98();
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    sub_100012BAC(0, &qword_1000D3C90, BSActionResponse_ptr);
    sub_100018F34();
    v35 = swift_allocError();
    *v36 = 16;
    v37 = sub_1000664F8(v35);
    [v4 sendResponse:v37];
    [v4 invalidate];
    sub_100067164();
    v38 = v2[18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100066FB8(isUniquelyReferenced_nonNull_native);
    v2[18] = v42[0];
    swift_endAccess();
  }
}

id sub_1000664F8(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() responseForError:v1];

  return v2;
}

void sub_100066568(uint64_t a1)
{
  v2 = v1;
  v4 = v1[14];
  sub_1000670E4();
  v5 = v1[18];

  v6 = sub_100021C6C(v4, v5);

  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_1000128C0(v22, qword_1000E4560);
    v23 = v2[16];
    v24 = v2[17];
    v25 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v25))
    {
      sub_10002FF14();
      v27 = swift_slowAlloc();
      sub_10002FE48();
      v41[0] = swift_slowAlloc();
      *v27 = 136446466;
      sub_100066F18();
      v28._countAndFlagsBits = v23;
      v28._object = v24;
      String.append(_:)(v28);
      v29._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v29);
      sub_100066F6C(v30, v31, v32, v33);

      sub_100066F88();
      *(v27 + 14) = sub_1000847A8(0xD000000000000026, 0x80000001000A1780, v41);
      sub_100066F2C(&_mh_execute_header, v34, v35, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    sub_1000128C0(v7, qword_1000E4560);
    sub_100067124();
    sub_10006707C("Sending purchase failed response: ");
    v41[0] = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v9 = v2[16];
    v8 = v2[17];
    v10 = static os_log_type_t.error.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      sub_10002FF14();
      v12 = swift_slowAlloc();
      sub_10002FE48();
      v41[0] = swift_slowAlloc();
      *v12 = 136446466;
      sub_100066F18();
      v14._countAndFlagsBits = v13;
      v14._object = v8;
      String.append(_:)(v14);
      v15._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v15);
      v20 = sub_100066F6C(v16, v17, v18, v19);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2082;
      v21 = sub_1000847A8(v39, v40, v41);

      *(v12 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    sub_100012BAC(0, &qword_1000D3C90, BSActionResponse_ptr);
    swift_errorRetain();
    v36 = sub_1000664F8(a1);
    [v4 sendResponse:v36];
    [v4 invalidate];
    sub_100067164();
    v37 = v2[18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100066FB8(isUniquelyReferenced_nonNull_native);
    v2[18] = v41[0];
    swift_endAccess();
  }
}

void sub_100066960(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = v2[14];
  swift_beginAccess();
  v7 = v2[18];

  v8 = sub_100021C6C(v6, v7);

  if (v8 == 2 || (v8 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_1000128C0(v21, qword_1000E4560);
    v22 = v3[16];
    v23 = v3[17];
    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_10002FF14();
      v26 = swift_slowAlloc();
      sub_10002FE48();
      v43 = swift_slowAlloc();
      *v26 = 136446466;
      sub_10004A980();
      v40 = v27;
      v42 = v28;
      v29._countAndFlagsBits = v22;
      v29._object = v23;
      String.append(_:)(v29);
      v30._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v30);
      sub_1000847A8(v40, v42, &v43);

      sub_100066F88();
      *(v26 + 14) = sub_1000847A8(0xD000000000000026, 0x80000001000A1780, &v43);
      sub_100066F2C(&_mh_execute_header, v31, v32, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_1000128C0(v9, qword_1000E4560);
    _StringGuts.grow(_:)(39);

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    v11 = v3[17];
    v38 = v3[16];
    v12 = static os_log_type_t.default.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      sub_10002FF14();
      v14 = swift_slowAlloc();
      sub_10002FE48();
      v43 = swift_slowAlloc();
      *v14 = 136446466;
      sub_10004A980();
      v39 = v15;
      v41 = v16;
      v17._countAndFlagsBits = v38;
      v17._object = v11;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v18);
      v19 = sub_1000847A8(v39, v41, &v43);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v20 = sub_1000847A8(0xD000000000000025, 0x80000001000A17B0, &v43);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      sub_100066F98();
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    v33 = [objc_allocWithZone(BSMutableSettings) init];
    v34 = String._bridgeToObjectiveC()();
    [v33 setObject:v34 forSetting:1];

    v35 = [objc_opt_self() responseWithInfo:v33];
    [v6 sendResponse:v35];
    [v6 invalidate];
    swift_beginAccess();
    v36 = v3[18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v3[18];
    sub_100049028(0, v6, isUniquelyReferenced_nonNull_native);
    v3[18] = v43;
    swift_endAccess();
  }
}

uint64_t sub_100066DF8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaSet.count.getter(a1);
  }

  return __CocoaSet.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100066E18()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100066E58()
{
  sub_100066E18();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100066EA8()
{
  result = qword_1000D3C98;
  if (!qword_1000D3C98)
  {
    sub_100012BAC(255, &qword_1000D31B0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3C98);
  }

  return result;
}

void sub_100066F2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100066F6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000847A8(a2, a3, va);
}

unint64_t sub_100066FB8(char a1)
{
  v5 = *(v1 + 144);

  return sub_100049028(0, v2, a1);
}

uint64_t sub_100066FE0()
{
  v2 = *(v0 - 280);

  return sub_100066F10();
}

uint64_t sub_100067020()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);

  return sub_1000847A8(v2, v3, (v0 - 240));
}

uint64_t sub_10006703C()
{
  v1 = *(v0 - 264);
  sub_100066F10();
  v2 = *(v0 - 272);
}

uint64_t sub_1000670A0()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000670BC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 208) = a1;
  *(v2 - 200) = v1;
  return *(v2 - 312);
}

uint64_t sub_1000670E4()
{

  return swift_beginAccess();
}

uint64_t sub_100067104(uint64_t a1, _BYTE *a2)
{
  *a2 = 13;

  return swift_willThrow();
}

void sub_100067124()
{

  _StringGuts.grow(_:)(36);
}

void sub_100067144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100067164()
{

  return swift_beginAccess();
}

uint64_t sub_100067194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75)
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

uint64_t sub_10006726C(char a1)
{
  if (a1)
  {
    return 0x4274736575716572;
  }

  else
  {
    return 0x49746375646F7270;
  }
}

uint64_t sub_1000672B4(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a4;
  v19[1] = a5;
  v9 = sub_100012634(&qword_1000D3CB8, &qword_100098128);
  v10 = sub_100014A8C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v19 - v15;
  v17 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100067724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19[2] = a2;
  v20 = a3 & 1;
  v22 = 0;
  sub_100033C84();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_100067438(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D3CA8, &qword_100098120);
  v4 = sub_100014A8C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[3];
  sub_100012980(a1, v7);
  sub_100067724();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100033B34();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11;
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_100067984();
    v10(v9);
  }

  sub_100012A18(a1);
  return v7;
}

uint64_t sub_100067620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100067194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100067648(uint64_t a1)
{
  v2 = sub_100067724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067684(uint64_t a1)
{
  v2 = sub_100067724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000676C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100067438(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_100067724()
{
  result = qword_1000D3CB0;
  if (!qword_1000D3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleMerchandisingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100067844);
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

unint64_t sub_100067880()
{
  result = qword_1000D3CC0;
  if (!qword_1000D3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CC0);
  }

  return result;
}

unint64_t sub_1000678D8()
{
  result = qword_1000D3CC8;
  if (!qword_1000D3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CC8);
  }

  return result;
}

unint64_t sub_100067930()
{
  result = qword_1000D3CD0;
  if (!qword_1000D3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CD0);
  }

  return result;
}

uint64_t sub_10006799C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_1000679D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE7E0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067A2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0x74694B65726F7453;
  }
}

uint64_t sub_100067A8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000679D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100067ABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067A2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100067AE8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);

  v3 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067B28()
{
  sub_100067AE8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067B98()
{
  v15 = v0;
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) & 0xFE) == 4)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for SKLogger();
    sub_1000128C0(v2, qword_1000E4560);
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = static os_log_type_t.debug.getter();

    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136446466;
      v14[0] = v8;
      v14[1] = 91;
      v14[2] = 0xE100000000000000;
      v9._countAndFlagsBits = v3;
      v9._object = v4;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 8285;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11 = sub_1000847A8(91, 0xE100000000000000, v14);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A1B70, v14);
      _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 4;
    [*(v1 + 144) invalidate];
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100067DD0(void *a1)
{
  v2 = v1;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for SKLogger();
  sub_1000128C0(v8, qword_1000E4560);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v33 = 0xD000000000000015;
  v34 = 0x80000001000A1B30;
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x7461766974636120;
  v14._object = 0xEA00000000006465;
  String.append(_:)(v14);
  v16 = v33;
  v15 = v34;
  v18 = *(v2 + 112);
  v17 = *(v2 + 120);
  v19 = static os_log_type_t.default.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v31 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v32 = v23;
    v33 = 91;
    v34 = 0xE100000000000000;
    v24._countAndFlagsBits = v18;
    v24._object = v17;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v26 = sub_1000847A8(v33, v34, &v32);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_1000847A8(v31, v15, &v32);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v28 = type metadata accessor for TaskPriority();
  sub_10001267C(v7, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v2;

  sub_10006BA84(0, 0, v7, &unk_100098500, v29);
}

uint64_t sub_100068178(void *a1)
{
  v2 = v1;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for SKLogger();
  sub_1000128C0(v8, qword_1000E4560);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v33 = 0xD000000000000015;
  v34 = 0x80000001000A1B30;
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x7669746361656420;
  v14._object = 0xEC00000064657461;
  String.append(_:)(v14);
  v16 = v33;
  v15 = v34;
  v18 = *(v2 + 112);
  v17 = *(v2 + 120);
  v19 = static os_log_type_t.default.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v31 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v32 = v23;
    v33 = 91;
    v34 = 0xE100000000000000;
    v24._countAndFlagsBits = v18;
    v24._object = v17;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v26 = sub_1000847A8(v33, v34, &v32);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_1000847A8(v31, v15, &v32);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v28 = type metadata accessor for TaskPriority();
  sub_10001267C(v7, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v2;

  sub_10006BA84(0, 0, v7, &unk_1000984F0, v29);
}

uint64_t sub_1000684E4()
{
  sub_100013A88();
  *(*(v0 + 16) + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 3;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100068584;
  v2 = *(v0 + 16);

  return sub_100067B78();
}

uint64_t sub_100068584()
{
  sub_100013A88();
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10006868C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1000686EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v54 - v8;
  if (!a2)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for SKLogger();
    sub_1000128C0(v34, qword_1000E4560);
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v58[0] = 0xD000000000000015;
    v58[1] = 0x80000001000A1B30;
    v35 = [a1 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x64696C61766E6920;
    v40._object = 0xEC00000064657461;
    String.append(_:)(v40);
    v41 = v58[1];
    v55 = v58[0];
    v42 = *(v3 + 112);
    v43 = *(v3 + 120);
    v44 = static os_log_type_t.default.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v9;
      v57 = v46;
      *v45 = 136446466;
      v58[0] = 91;
      v58[1] = 0xE100000000000000;
      v47._countAndFlagsBits = v42;
      v47._object = v43;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_1000847A8(v58[0], v58[1], &v57);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_1000847A8(v55, v41, &v57);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v27, v44, "%{public}s%{public}s", v45, 0x16u);
      swift_arrayDestroy();
      v9 = v56;

      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  swift_errorRetain();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger();
  sub_1000128C0(v10, qword_1000E4560);
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  strcpy(v58, "Remote alert ");
  HIWORD(v58[1]) = -4864;
  v11 = [a1 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000019;
  v16._object = 0x80000001000A1B50;
  String.append(_:)(v16);
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = v58[1];
  v55 = v58[0];
  v24 = *(v3 + 112);
  v25 = *(v3 + 120);
  v26 = static os_log_type_t.error.getter();

  v27 = Logger.logObject.getter();

  if (!os_log_type_enabled(v27, v26))
  {

    goto LABEL_13;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v56 = v9;
  v57 = v29;
  *v28 = 136446466;
  v58[0] = 91;
  v58[1] = 0xE100000000000000;
  v30._countAndFlagsBits = v24;
  v30._object = v25;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 8285;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = sub_1000847A8(v58[0], v58[1], &v57);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2082;
  v33 = sub_1000847A8(v55, v23, &v57);

  *(v28 + 14) = v33;
  _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
  swift_arrayDestroy();
  v9 = v56;

LABEL_10:

LABEL_14:
  v51 = type metadata accessor for TaskPriority();
  sub_10001267C(v9, 1, 1, v51);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v3;
  v52[5] = a2;
  swift_errorRetain();

  sub_10006BA84(0, 0, v9, &unk_1000984E0, v52);
}