uint64_t sub_100869368()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = sub_100C69B58();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "(CoreRE) [%{public}@] loadScene(%@)", 35, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  v0[21] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_100854640;

  return sub_10086AA34(v13, 0x6E65635364616F6CLL, 0xEB00000000292865, dword_1014825B8);
}

uint64_t sub_1008695D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a3;
  v3[39] = a2;
  sub_1005B981C(&unk_1019F33C0);
  v3[63] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[75] = v4;
  v3[87] = *(v4 - 8);
  v3[99] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[135] = type metadata accessor for MainActor();
  v3[145] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[148] = v6;
  v3[149] = v5;

  return _swift_task_switch(sub_100869724, v6, v5);
}

uint64_t sub_100869724()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);
  if (*(*(v0 + 312) + 40))
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 408);
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    v3 = *(v1 + 16);
    v3(v4, v5, v2);
    (*(v1 + 56))(v4, 0, 1, v2);
    URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
    v6 = *(v0 + 984);
    v7 = *(v0 + 888);
    v8 = *(v0 + 696);
    v9 = *(v0 + 600);
    sub_10000CAAC(*(v0 + 504), &unk_1019F33C0);
    (*(v8 + 32))(v6, v7, v9);
  }

  else
  {
    v3 = *(v1 + 16);
    v3(*(v0 + 984), *(v0 + 408), *(v0 + 600));
  }

  v10 = *(v0 + 792);
  v11 = *(v0 + 696);
  v12 = *(v0 + 600);
  v13 = *(v0 + 408);
  v3(v10, *(v0 + 984), v12);
  type metadata accessor for CRLUSDRendering.LoadReceipt(0);
  v14 = swift_allocObject();
  *(v0 + 1200) = v14;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering11LoadReceipt_url, v10, v12);
  v15 = v13 + *(type metadata accessor for CRLUSDRendering.SceneRequest(0) + 20);
  *(v0 + 1368) = *v15;
  *(v0 + 1168) = *(v15 + 16);
  *(v0 + 1208) = *(v15 + 32);
  *(v0 + 1216) = *(v15 + 40);
  *(v0 + 1224) = *(v15 + 48);
  *(v0 + 1232) = *(v15 + 56);
  *(v0 + 1240) = *(v15 + 64);

  *(v0 + 1248) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1256) = v17;
  *(v0 + 1264) = v16;

  return _swift_task_switch(sub_100869A8C, v17, v16);
}

uint64_t sub_100869A8C()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 312);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1224);
  v8 = *(v5 + 64);
  *(v0 + 16) = *(v5 + 48);
  *(v0 + 32) = v8;
  v10 = *(v5 + 96);
  v9 = *(v5 + 112);
  v11 = *(v5 + 80);
  *(v0 + 96) = *(v5 + 128);
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  *(v0 + 48) = v11;
  v12 = *(v5 + 64);
  *(v0 + 224) = *(v5 + 48);
  *(v0 + 240) = v12;
  v14 = *(v5 + 96);
  v13 = *(v5 + 112);
  v15 = *(v5 + 80);
  *(v0 + 304) = *(v5 + 128);
  *(v0 + 272) = v14;
  *(v0 + 288) = v13;
  *(v0 + 256) = v15;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = 0;
  *(v5 + 80) = v2;
  *(v5 + 96) = v6;
  *(v5 + 112) = v7;
  *(v5 + 128) = v1;

  sub_10086E4D4(v0 + 16, v0 + 320);
  sub_10086E4A4(v0 + 224);
  sub_100868730((v0 + 16));
  sub_10086E4A4(v0 + 16);
  v16 = swift_task_alloc();
  *(v0 + 1272) = v16;
  *v16 = v0;
  v16[1] = sub_100869BB8;

  return sub_100868BA4();
}

uint64_t sub_100869BB8()
{
  v1 = *v0;

  v2 = *(v1 + 1264);
  v3 = *(v1 + 1256);

  return _swift_task_switch(sub_100869CD8, v3, v2);
}

uint64_t sub_100869CD8()
{

  v1 = swift_task_alloc();
  *(v0 + 1280) = v1;
  *v1 = v0;
  v1[1] = sub_100869D7C;

  return sub_100C70FFC();
}

uint64_t sub_100869D7C(uint64_t a1)
{
  v3 = *v2;
  v3[161] = a1;
  v3[162] = v1;

  if (v1)
  {
    v4 = v3[149];
    v5 = v3[148];

    return _swift_task_switch(sub_10086A890, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[163] = v6;
    *v6 = v3;
    v6[1] = sub_100869EEC;

    return sub_100C719C8();
  }
}

uint64_t sub_100869EEC(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 1312) = a1;
  *(v4 + 1372) = a2;
  *(v4 + 1320) = v2;

  v5 = *(v4 + 1192);
  v6 = *(v4 + 1184);
  if (v2)
  {
    v7 = sub_10086A958;
  }

  else
  {
    v7 = sub_10086A010;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10086A010()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000053B0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "(CoreRE) [%{public}@] loadScene(): entity loaded", 48, 2, v3);
  swift_setDeallocating();
  sub_100005070(v3 + 32);
  swift_deallocClassInstance();
  v8 = *(v1 + 48);
  *(v0 + 432) = *(v1 + 64);
  v9 = *(v1 + 80);
  v10 = *(v1 + 96);
  v11 = *(v1 + 112);
  *(v0 + 496) = *(v1 + 128);
  *(v0 + 464) = v10;
  *(v0 + 480) = v11;
  *(v0 + 448) = v9;
  *(v0 + 416) = v8;
  if (*(v0 + 440) >> 62)
  {

    goto LABEL_7;
  }

  v12 = *(v0 + 1200);
  v13 = *(v0 + 496);
  v14 = *(v0 + 416);
  *(v0 + 1088) = *(v0 + 432);
  v15 = *(v0 + 464);
  *(v0 + 1104) = *(v0 + 448);
  *(v0 + 1120) = v15;
  *(v0 + 1136) = *(v0 + 480);
  *(v0 + 1152) = v13;
  if (v12 != v14)
  {
    v16 = *(v0 + 312);
    v17 = *(v16 + 48);
    *(v0 + 528) = *(v16 + 64);
    v19 = *(v16 + 96);
    v18 = *(v16 + 112);
    v20 = *(v16 + 80);
    *(v0 + 592) = *(v16 + 128);
    *(v0 + 560) = v19;
    *(v0 + 576) = v18;
    *(v0 + 544) = v20;
    *(v0 + 512) = v17;
    *(v0 + 536) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_10000BE14(v0 + 512, v0 + 608, &qword_101A04DD8);

    sub_10086E4A4(v0 + 416);
LABEL_7:

    (*(*(v0 + 696) + 8))(*(v0 + 984), *(v0 + 600));

    v21 = *(v0 + 8);
LABEL_8:

    return v21();
  }

  v23 = *(v0 + 312);
  v24 = *(v23 + 48);
  *(v0 + 720) = *(v23 + 64);
  v26 = *(v23 + 96);
  v25 = *(v23 + 112);
  v27 = *(v23 + 80);
  *(v0 + 784) = *(v23 + 128);
  *(v0 + 752) = v26;
  *(v0 + 768) = v25;
  *(v0 + 736) = v27;
  *(v0 + 704) = v24;
  *(v0 + 728) &= 0x3FFFFFFFFFFFFFFFuLL;
  sub_10000BE14(v0 + 704, v0 + 800, &qword_101A04DD8);
  if (qword_1019F1AB0 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1320);
  v29 = sub_1009FA790(*(v0 + 312), *(v0 + 1288), *(v0 + 1312), *(v0 + 1372) & 1, v0 + 1088);
  *(v0 + 1328) = v29;
  if (v28)
  {
    (*(*(v0 + 696) + 8))(*(v0 + 984), *(v0 + 600));

    sub_10086E4A4(v0 + 416);

    v21 = *(v0 + 8);
    goto LABEL_8;
  }

  *(v29 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_loadReceipt) = *(v0 + 1200);

  *(v0 + 1336) = static MainActor.shared.getter();
  v31 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1344) = v31;
  *(v0 + 1352) = v30;

  return _swift_task_switch(sub_10086A508, v31, v30);
}

uint64_t sub_10086A508()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 312);
  v3 = *(v2 + 64);
  *(v0 + 128) = *(v2 + 48);
  *(v0 + 144) = v3;
  v5 = *(v2 + 96);
  v4 = *(v2 + 112);
  v6 = *(v2 + 80);
  *(v0 + 208) = *(v2 + 128);
  *(v0 + 176) = v5;
  *(v0 + 192) = v4;
  *(v0 + 160) = v6;
  v7 = *(v2 + 64);
  *(v0 + 896) = *(v2 + 48);
  *(v0 + 912) = v7;
  v9 = *(v2 + 96);
  v8 = *(v2 + 112);
  v10 = *(v2 + 80);
  *(v0 + 976) = *(v2 + 128);
  *(v0 + 944) = v9;
  *(v0 + 960) = v8;
  *(v0 + 928) = v10;
  *(v2 + 48) = v1;
  *(v2 + 64) = xmmword_101482170;

  sub_10086E4D4(v0 + 128, v0 + 992);
  sub_10086E4A4(v0 + 896);
  sub_100868730((v0 + 128));
  sub_10086E4A4(v0 + 128);
  v11 = swift_task_alloc();
  *(v0 + 1360) = v11;
  *v11 = v0;
  v11[1] = sub_10086A618;

  return sub_100868BA4();
}

uint64_t sub_10086A618()
{
  v1 = *v0;

  v2 = *(v1 + 1352);
  v3 = *(v1 + 1344);

  return _swift_task_switch(sub_10086A738, v3, v2);
}

uint64_t sub_10086A738()
{

  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);

  return _swift_task_switch(sub_10086A7AC, v2, v1);
}

uint64_t sub_10086A7AC()
{

  sub_10086E4A4((v0 + 52));

  (*(v0[87] + 8))(v0[123], v0[75]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10086A890()
{
  v1 = v0[123];
  v2 = v0[87];
  v3 = v0[75];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10086A958()
{
  v1 = v0[123];
  v2 = v0[87];
  v3 = v0[75];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10086AA34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5[71] = v4;
  v5[70] = a3;
  v5[69] = a2;
  v5[72] = type metadata accessor for MainActor();
  v5[73] = static MainActor.shared.getter();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v5[74] = v8;
  *v8 = v5;
  v8[1] = sub_10086AB60;

  return v10(a1);
}

uint64_t sub_10086AB60()
{
  *(*v1 + 600) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10086AD1C;
  }

  else
  {
    v4 = sub_10086ACB8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10086ACB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086AD1C()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v26;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v10, "(CoreRE) [%{public}@] %{public}@ error: %{public}@", 50, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 528) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
  }

  else
  {
    *(v0 + 536) = *(v0 + 600);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 504);
      v12 = *(v0 + 512);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 568);
  v16 = *(v15 + 64);
  *(v0 + 16) = *(v15 + 48);
  *(v0 + 32) = v16;
  v18 = *(v15 + 96);
  v17 = *(v15 + 112);
  v19 = *(v15 + 80);
  *(v0 + 96) = *(v15 + 128);
  *(v0 + 64) = v18;
  *(v0 + 80) = v17;
  *(v0 + 48) = v19;
  v20 = *(v15 + 64);
  *(v0 + 256) = *(v15 + 48);
  *(v0 + 272) = v20;
  v22 = *(v15 + 96);
  v21 = *(v15 + 112);
  v23 = *(v15 + 80);
  *(v0 + 336) = *(v15 + 128);
  *(v0 + 304) = v22;
  *(v0 + 320) = v21;
  *(v0 + 288) = v23;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = 0x8000000000000000;
  sub_10086756C(v11, v12, v13);
  sub_10086756C(v11, v12, v13);
  sub_10086E4D4(v0 + 16, v0 + 368);
  sub_10086E4A4(v0 + 256);
  sub_100868730((v0 + 16));
  sub_10086E4A4(v0 + 16);
  sub_100863EEC(v11, v12, v13);
  sub_10086880C();
  sub_100863EEC(v11, v12, v13);
  swift_willThrow();
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10086B0CC(uint64_t a1)
{
  *(v2 + 200) = v1;
  *(v2 + 952) = *a1;
  v3 = *(a1 + 40);
  *(v2 + 296) = *(a1 + 32);
  *(v2 + 392) = v3;
  v4 = *(a1 + 56);
  *(v2 + 488) = *(a1 + 48);
  *(v2 + 104) = a1;
  *(v2 + 880) = *(a1 + 16);
  *(v2 + 584) = v4;
  *(v2 + 680) = *(a1 + 64);
  *(v2 + 776) = type metadata accessor for MainActor();
  *(v2 + 872) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 896) = v6;
  *(v2 + 904) = v5;

  return _swift_task_switch(sub_10086B1A0, v6, v5);
}

uint64_t sub_10086B1A0()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 128);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 16);
  *(v0 + 912) = v6;
  v7 = *(v0 + 40) >> 62;
  if (v7 == 1)
  {
    v14 = *(v0 + 104);

    v15 = v6 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration;
    *v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    v18 = *(v14 + 48);
    *(v15 + 64) = *(v14 + 64);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    sub_10086E4A4(v0 + 16);
  }

  else
  {
    if (!v7)
    {
      v8 = *(v1 + 64);
      *(v0 + 304) = *(v1 + 48);
      *(v0 + 320) = v8;
      v9 = *(v1 + 80);
      v10 = *(v1 + 96);
      v11 = *(v1 + 112);
      *(v0 + 384) = *(v1 + 128);
      *(v0 + 352) = v10;
      *(v0 + 368) = v11;
      *(v0 + 336) = v9;
      *(v0 + 328) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_10086E4D4(v0 + 16, v0 + 400);
      sub_10086E4D4(v0 + 16, v0 + 496);
      sub_10000BE14(v0 + 304, v0 + 592, &qword_101A04DD8);
      *(v0 + 920) = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 928) = v13;
      *(v0 + 936) = v12;

      return _swift_task_switch(sub_10086B36C, v13, v12);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10086B36C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 680);
  v3 = *(v0 + 584);
  v4 = *(v0 + 488);
  v5 = *(v0 + 392);
  v6 = *(v0 + 296);
  v7 = *(v0 + 880);
  v8 = *(v0 + 952);
  v9 = *(v0 + 200);
  v10 = *(v9 + 64);
  *(v0 + 112) = *(v9 + 48);
  *(v0 + 128) = v10;
  v12 = *(v9 + 96);
  v11 = *(v9 + 112);
  v13 = *(v9 + 80);
  *(v0 + 192) = *(v9 + 128);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;
  v15 = *(v9 + 96);
  v14 = *(v9 + 112);
  v16 = *(v9 + 80);
  *(v0 + 288) = *(v9 + 128);
  *(v0 + 256) = v15;
  *(v0 + 272) = v14;
  *(v0 + 240) = v16;
  v17 = *(v9 + 64);
  *(v0 + 208) = *(v9 + 48);
  *(v0 + 224) = v17;
  *(v9 + 48) = v1;
  *(v9 + 64) = v8;
  *(v9 + 72) = 0;
  *(v9 + 80) = v7;
  *(v9 + 96) = v6;
  *(v9 + 104) = v5;
  *(v9 + 112) = v4;
  *(v9 + 120) = v3;
  *(v9 + 128) = v2;
  sub_10086E4D4(v0 + 16, v0 + 688);
  sub_10086E4D4(v0 + 112, v0 + 784);
  sub_10086E4A4(v0 + 208);
  sub_100868730((v0 + 112));
  sub_10086E4A4(v0 + 112);
  v18 = swift_task_alloc();
  *(v0 + 944) = v18;
  *v18 = v0;
  v18[1] = sub_10086B4AC;

  return sub_100868BA4();
}

uint64_t sub_10086B4AC()
{
  v1 = *v0;

  v2 = *(v1 + 936);
  v3 = *(v1 + 928);

  return _swift_task_switch(sub_10086B5CC, v3, v2);
}

uint64_t sub_10086B5CC()
{

  sub_10086E4A4(v0 + 16);
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);

  return _swift_task_switch(sub_10086B63C, v2, v1);
}

uint64_t sub_10086B63C()
{

  sub_10086E4A4(v0 + 16);
  sub_10086E4A4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086B6B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_10086B748, v4, v3);
}

uint64_t sub_10086B748()
{
  v1 = v0[3];
  v0[7] = v1[6];
  v0[8] = v1[7];
  v0[9] = v1[8];
  v2 = v1[9];
  v0[10] = v2;
  v0[11] = v1[10];
  v0[12] = v1[11];
  v0[13] = v1[12];
  v0[14] = v1[13];
  v0[15] = v1[14];
  v0[16] = v1[15];
  v0[17] = v1[16];
  if (v2 >> 62 == 1 && (v3 = v0[2], v4 = *(v3 + 16), (v0[18] = v4) != 0))
  {
    v0[19] = 0;
    v5 = *(v3 + 40);

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v13 = swift_task_alloc();
        v0[24] = v13;
        *v13 = v0;
        v13[1] = sub_10086BEFC;

        return sub_100CECFA8();
      }

      else
      {
        if (v5 != 5)
        {
LABEL_17:
          v10 = *(v3 + 32);
          v11 = swift_task_alloc();
          v0[20] = v11;
          *v11 = v0;
          v11[1] = sub_10086BA7C;

          return sub_100CEBCD0(v5 & 1, v10);
        }

        v9 = swift_task_alloc();
        v0[23] = v9;
        *v9 = v0;
        v9[1] = sub_10086BDDC;

        return sub_100CECA08();
      }
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = swift_task_alloc();
          v0[22] = v6;
          *v6 = v0;
          v6[1] = sub_10086BCBC;

          return sub_100CEC6B4();
        }

        goto LABEL_17;
      }

      v12 = swift_task_alloc();
      v0[21] = v12;
      *v12 = v0;
      v12[1] = sub_10086BB9C;

      return sub_100CEC300();
    }
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10086BA7C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10086E960, v3, v2);
}

uint64_t sub_10086BB9C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10086E960, v3, v2);
}

uint64_t sub_10086BCBC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10086E960, v3, v2);
}

uint64_t sub_10086BDDC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10086E960, v3, v2);
}

uint64_t sub_10086BEFC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10086C01C, v3, v2);
}

uint64_t sub_10086C01C()
{
  v1 = v0[19] + 1;
  if (v1 == v0[18])
  {
    v3 = v0[9];
    v2 = v0[10];
    v5 = v0[7];
    v4 = v0[8];

    sub_10086E484(v5, v4, v3, v2);
    v6 = v0[1];

    return v6();
  }

  v0[19] = v1;
  v8 = v0[2] + 16 * v1;
  v9 = *(v8 + 40);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_10086BEFC;

      return sub_100CECFA8();
    }

    else
    {
      if (v9 != 5)
      {
LABEL_16:
        v12 = *(v8 + 32);
        v13 = swift_task_alloc();
        v0[20] = v13;
        *v13 = v0;
        v13[1] = sub_10086BA7C;

        return sub_100CEBCD0(v9 & 1, v12);
      }

      v11 = swift_task_alloc();
      v0[23] = v11;
      *v11 = v0;
      v11[1] = sub_10086BDDC;

      return sub_100CECA08();
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = swift_task_alloc();
        v0[22] = v10;
        *v10 = v0;
        v10[1] = sub_10086BCBC;

        return sub_100CEC6B4();
      }

      goto LABEL_16;
    }

    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_10086BB9C;

    return sub_100CEC300();
  }
}

uint64_t sub_10086C3A8(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 168) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_10086C444, v4, v3);
}

uint64_t sub_10086C444()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = v1[6];
  *(v0 + 56) = v1[7];
  *(v0 + 64) = v1[8];
  v2 = v1[9];
  *(v0 + 72) = v2;
  *(v0 + 80) = v1[10];
  *(v0 + 88) = v1[11];
  *(v0 + 96) = v1[12];
  *(v0 + 104) = v1[13];
  *(v0 + 112) = v1[14];
  *(v0 + 120) = v1[15];
  *(v0 + 128) = v1[16];
  if (v2 >> 62 == 1)
  {

    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_10086C590;
    v4 = *(v0 + 168);

    return sub_100CED1E4(v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0, 0, 1);
  }
}

uint64_t sub_10086C590(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 144) = v3;

  if (v3)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_10086C7A8;
  }

  else
  {
    *(v8 + 172) = a3;
    *(v8 + 152) = a2;
    *(v8 + 160) = a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_10086C6CC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10086C6CC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_10086E484(v4, v3, v2, v1);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 8);
  v8 = *(v0 + 172) & 1;

  return v7(v5, v6, v8);
}

uint64_t sub_10086C7A8()
{
  sub_10086E484(v0[6], v0[7], v0[8], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10086C834(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_1005B981C(&qword_1019FB750);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v33 - v12;
  v14 = [a1 device];
  v15 = *(v4 + 32);
  if (v15)
  {
    v35 = a4;
    v16 = v15;
    v17 = [v16 device];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 registryID];
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
    }

    v34 = v13;
    v36 = v5;
    v20 = [v14 registryID];
    if (v18)
    {
      v21 = v19 == v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      [v16 setDevice:v14];
    }

    v22 = &v16[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v23 = *&v16[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v24 = *&v16[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 8];
    v25 = *&v16[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 16];
    v26 = *&v16[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 24];
    *v22 = a1;
    *(v22 + 1) = a2;
    a4 = v35;
    *(v22 + 2) = a3;
    *(v22 + 3) = a4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v27 = a4;
    sub_100863DD8(v23, v24, v25, v26);
    sub_100B4F184();

    v5 = v36;
    v13 = v34;
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = a4;
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v5;
  v31[5] = a1;
  v31[6] = a2;
  v31[7] = a3;
  v31[8] = v29;
  sub_100641C1C(0, 0, v13, &unk_1014825D0, v31);
  swift_unknownObjectRelease();
}

uint64_t sub_10086CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[9] = v10;
  v8[10] = v9;

  return _swift_task_switch(sub_10086CB70, v10, v9);
}

uint64_t sub_10086CB70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
    v13 = (*(v3 + 24) + **(v3 + 24));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10086CD14;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    return v13(v2 + v5, v9, v10, v7, v8, ObjectType, v3);
  }

  else
  {

    **(v0 + 16) = 1;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10086CD14()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10086CEC0;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10086CE58;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10086CE58()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086CEC0()
{

  **(v0 + 16) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086CF2C(uint64_t a1, uint64_t a2)
{
  v2[88] = a2;
  type metadata accessor for MainActor();
  v2[89] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[90] = v4;
  v2[91] = v3;

  return _swift_task_switch(sub_10086CFC8, v4, v3);
}

uint64_t sub_10086CFC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 736) = Strong;
  if (!Strong)
  {
LABEL_21:

    goto LABEL_22;
  }

  v2 = *(Strong + 48);
  v3 = *(Strong + 72) >> 62;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = *(Strong + 64);
      v4 = *(Strong + 56);
      v10 = Strong;
      sub_10086756C(*(Strong + 48), v4, v5);
      Strong = v10;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x4000000000000000;
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x8000000000000000;
    }
  }

  else if (v3)
  {
    v11 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v2 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v4 = *(v11 + 8);
    v5 = *(v11 + 16);
    v6 = *(v11 + 24);
    v7 = *(v11 + 32);
    v9 = *(v11 + 40);
    v8 = *(v11 + 48);
    v12 = Strong;

    Strong = v12;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0x8000000000000000;
    v2 = 2;
  }

  *(v0 + 792) = v8;
  *(v0 + 784) = v9;
  *(v0 + 776) = v7;
  *(v0 + 768) = v6;
  *(v0 + 760) = v5;
  *(v0 + 752) = v4;
  *(v0 + 744) = v2;
  *(v0 + 544) = v2;
  *(v0 + 552) = v4;
  *(v0 + 560) = v5;
  *(v0 + 568) = v6;
  *(v0 + 576) = v7;
  *(v0 + 584) = v9;
  *(v0 + 592) = v8;
  v13 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  *(v0 + 800) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  v56 = Strong;
  v57 = v2;
  v14 = (Strong + v13);
  v16 = *v14;
  v15 = v14[1];
  v18 = v14[2];
  v17 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  v21 = v14[6];
  v55 = v5;
  v59 = v7;
  v60 = v4;
  v58 = (v0 + 544);
  v62 = v17;
  v64 = v18;
  v61 = v15;
  if (v20 >> 1 == 0xFFFFFFFF)
  {
    v22 = v16;
    v53 = v19;
    sub_10086E56C(v2, v4, v5, v6, v7, v9);
    sub_10086E56C(v2, v4, v5, v6, v7, v9);
    sub_10086E5CC(v2, v4, v5, v6, v7, v9);
    sub_10086E5CC(v22, v61, v64, v62, v53, v20);
LABEL_14:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 808) = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 816) = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v27 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
    *(v0 + 824) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
    v63 = v27;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v28 = static String._fromSubstring(_:)();
    v30 = v29;

    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    *(v0 + 832) = v31;
    *(inited + 64) = v31;
    *(inited + 32) = v28;
    *(inited + 40) = v30;
    v32 = *(v0 + 560);
    *(v0 + 624) = *v58;
    *(v0 + 640) = v32;
    *(v0 + 656) = *(v0 + 576);
    *(v0 + 672) = *(v0 + 592);
    sub_10086E56C(v57, v60, v55, v6, v59, v9);
    v33 = String.init<A>(describing:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    *(inited + 72) = v33;
    *(inited + 80) = v34;
    v35 = static os_log_type_t.debug.getter();
    sub_100005404(v65, &_mh_execute_header, v35, "(CoreRE) [%{public}@] new state (with acknowledge): %{public}@", 62, 2, inited);
    swift_setDeallocating();
    *(v0 + 840) = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v36 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 848) = v36;
    if (v36)
    {
      v37 = *(v56 + 24);
      ObjectType = swift_getObjectType();
      v66 = (*(v37 + 16) + **(v37 + 16));
      v39 = swift_task_alloc();
      *(v0 + 856) = v39;
      *v39 = v0;
      v39[1] = sub_10086D6E0;

      return v66(v56 + v63, v58, ObjectType, v37);
    }

    sub_100863E8C(v57, v60, v55, v6, v59, v9);

    v41 = *(v0 + 792);
    v42 = (*(v0 + 736) + *(v0 + 800));
    v43 = *v42;
    v44 = v42[1];
    v45 = v42[2];
    v46 = v42[3];
    v47 = v42[4];
    v48 = v42[5];
    v49 = *(v0 + 760);
    v50 = *(v0 + 776);
    *v42 = *(v0 + 744);
    *(v42 + 1) = v49;
    *(v42 + 2) = v50;
    v42[6] = v41;
    sub_10086E5CC(v43, v44, v45, v46, v47, v48);
    goto LABEL_21;
  }

  *(v0 + 464) = v16;
  *(v0 + 472) = v15;
  *(v0 + 480) = v18;
  *(v0 + 488) = v17;
  *(v0 + 496) = v19;
  *(v0 + 504) = v20;
  *(v0 + 512) = v21;
  v23 = v5;
  v24 = v16;
  v54 = v20;
  v25 = v19;
  sub_10086E56C(v2, v4, v23, v6, v7, v9);
  sub_10086E56C(v2, v4, v23, v6, v7, v9);
  sub_10086E5E0(v24, v61, v64, v62, v25, v54);
  v52 = sub_100C728B8(v58, v0 + 464);
  sub_10086E5CC(v24, v61, v64, v62, v25, v54);
  sub_100863E8C(v2, v4, v23, v6, v7, v9);
  if ((v52 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100863E8C(v2, v4, v55, v6, v7, v9);

  sub_100863E8C(v2, v4, v55, v6, v7, v9);
LABEL_22:
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10086D6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *(*v1 + 776);
  v5 = *(*v1 + 768);
  v6 = *(*v1 + 760);
  v7 = *(*v1 + 752);
  v8 = *(*v1 + 744);
  *(*v1 + 864) = v0;

  sub_100863E8C(v8, v7, v6, v5, v4, v3);
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_100863E8C(v2[93], v2[94], v2[95], v2[96], v2[97], v2[98]);
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_10086D9B8;
  }

  else
  {
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_10086D910;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10086D910()
{

  v1 = *(v0 + 792);
  v2 = (*(v0 + 736) + *(v0 + 800));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v0 + 760);
  v10 = *(v0 + 776);
  *v2 = *(v0 + 744);
  *(v2 + 1) = v9;
  *(v2 + 2) = v10;
  v2[6] = v1;
  sub_10086E5CC(v3, v4, v5, v6, v7, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10086D9B8()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 832);
  v3 = *(v0 + 808);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v2;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  v10 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v10, "(CoreRE) [%{public}@] error sending state: %{public}@", 53, 2, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 680) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 520);
    v12 = *(v0 + 528);
    v13 = *(v0 + 536);
  }

  else
  {
    *(v0 + 688) = *(v0 + 864);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 600);
      v12 = *(v0 + 608);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 736);
  v16 = *(v15 + 64);
  *(v0 + 16) = *(v15 + 48);
  *(v0 + 32) = v16;
  v18 = *(v15 + 96);
  v17 = *(v15 + 112);
  v19 = *(v15 + 80);
  *(v0 + 96) = *(v15 + 128);
  *(v0 + 64) = v18;
  *(v0 + 80) = v17;
  *(v0 + 48) = v19;
  v20 = *(v15 + 64);
  *(v0 + 240) = *(v15 + 48);
  *(v0 + 256) = v20;
  v22 = *(v15 + 96);
  v21 = *(v15 + 112);
  v23 = *(v15 + 80);
  *(v0 + 320) = *(v15 + 128);
  *(v0 + 288) = v22;
  *(v0 + 304) = v21;
  *(v0 + 272) = v23;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = 0x8000000000000000;
  sub_10086756C(v11, v12, v13);
  sub_10086756C(v11, v12, v13);
  sub_10086E4D4(v0 + 16, v0 + 352);
  sub_10086E4A4(v0 + 240);
  sub_100868730((v0 + 16));
  sub_10086E4A4(v0 + 16);
  sub_100863EEC(v11, v12, v13);
  sub_10086880C();
  sub_100863EEC(v11, v12, v13);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10086DD08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10086DD80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008692D0(a1);
}

uint64_t sub_10086DE14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10086B0CC(a1);
}

uint64_t sub_10086DEA8(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  type metadata accessor for MainActor();
  *(v3 + 80) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return _swift_task_switch(sub_10086DF44, v5, v4);
}

uint64_t sub_10086DF44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  sub_1005B981C(&qword_101A04BE0);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_10086E020;

  return sub_10086B6B0(inited);
}

uint64_t sub_10086E020()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10086E1A0;
  }

  else
  {
    swift_setDeallocating();
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10086E13C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10086E13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086E1A0()
{

  swift_setDeallocating();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086E210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_10086B6B0(a1);
}

uint64_t sub_10086E2A4(float a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10086E338;

  return sub_10086C3A8(a1);
}

uint64_t sub_10086E338(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = *(v8 + 8);

    return v11(a1, a2, a3 & 1);
  }
}

uint64_t sub_10086E484(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  if ((a4 >> 62) <= 1)
  {
  }

  if (a4 >> 62 == 2)
  {
    return sub_100863EEC(result, a2, a3);
  }

  return result;
}

unint64_t sub_10086E50C()
{
  result = qword_101A04DE0;
  if (!qword_101A04DE0)
  {
    type metadata accessor for CRLUSDRendering.TaskQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04DE0);
  }

  return result;
}

uint64_t sub_10086E56C(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {

    return sub_10086756C(result, a2, a3);
  }

  else if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t sub_10086E5CC(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_100863E8C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10086E5E0(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_10086E56C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10086E5F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D3D4;

  return sub_1008695D4(a1, v5, v4);
}

unint64_t sub_10086E6A0()
{
  result = qword_101A09C40;
  if (!qword_101A09C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09C40);
  }

  return result;
}

uint64_t sub_10086E6F4(uint64_t a1)
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
  v11[1] = sub_10002D3D4;

  return sub_10086CAD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10086E7D8(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  if ((a4 >> 62) <= 1)
  {
  }

  if (a4 >> 62 == 2)
  {
    return sub_10086756C(result, a2, a3);
  }

  return result;
}

uint64_t sub_10086E7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_100867E24();
}

uint64_t sub_10086E8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100868174(a1, v4, v5, v6);
}

void *sub_10086E964(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v39 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v47 = v10;
    v39 = v1;
    v55 = _swiftEmptyArrayStorage;
    sub_100776524(0, v11, 0);
    v54 = v55;
    v13 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v48 = v8;
    v49 = (v8 + 48);
    v16 = (v8 + 32);
    v41 = "odel index path %@";
    v42 = "00-0000-000000000001";
    v40 = a1 + 64;
    v17 = a1;
    v45 = v11;
    v46 = a1 + 56;
    v50 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v17 + 32))
    {
      v20 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      v21 = *(v17 + 36);
      v51 = v15;
      v52 = v21;
      LOBYTE(v21) = *(*(v17 + 48) + v14);
      v53 = 1 << v14;
      if (v21)
      {
        v22 = v44;
        UUID.init(uuidString:)();
        result = (*v49)(v22, 1, v7);
        v23 = v22;
        if (result == 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v24 = v43;
        UUID.init(uuidString:)();
        result = (*v49)(v24, 1, v7);
        v23 = v24;
        if (result == 1)
        {
          goto LABEL_31;
        }
      }

      v25 = *v16;
      v26 = v47;
      (*v16)(v47, v23, v7);
      v27 = v54;
      v55 = v54;
      v28 = v7;
      v30 = v54[2];
      v29 = v54[3];
      if (v30 >= v29 >> 1)
      {
        sub_100776524(v29 > 1, v30 + 1, 1);
        v27 = v55;
      }

      v27[2] = v30 + 1;
      v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v54 = v27;
      result = (v25)(v27 + v31 + *(v48 + 72) * v30, v26, v28);
      v17 = v50;
      v18 = 1 << *(v50 + 32);
      if (v14 >= v18)
      {
        goto LABEL_28;
      }

      v13 = v46;
      v32 = *(v46 + 8 * v20);
      if ((v32 & v53) == 0)
      {
        goto LABEL_29;
      }

      if (v52 != *(v50 + 36))
      {
        goto LABEL_30;
      }

      v7 = v28;
      v33 = v32 & (-2 << (v14 & 0x3F));
      if (v33)
      {
        v18 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v19 = v45;
      }

      else
      {
        v34 = v20 << 6;
        v35 = v20 + 1;
        v36 = (v40 + 8 * v20);
        v19 = v45;
        while (v35 < (v18 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_1000341AC(v14, v52, 0);
            v18 = __clz(__rbit64(v37)) + v34;
            goto LABEL_23;
          }
        }

        result = sub_1000341AC(v14, v52, 0);
LABEL_23:
        v7 = v28;
        v17 = v50;
      }

      v15 = v51 + 1;
      v14 = v18;
      if (v51 + 1 == v19)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_10086EDC0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v44 = a3;
  v45 = a4;
  v6 = a2(0);
  v43 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v42 = &v34 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v40 = v11;
  v34 = v4;
  v48 = _swiftEmptyArrayStorage;
  sub_100776524(0, v12, 0);
  v13 = v48;
  v14 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v16 = result;
  v17 = 0;
  v41 = v9;
  v38 = v9 + 32;
  v39 = (v9 + 16);
  v35 = a1 + 64;
  v36 = v12;
  v37 = a1 + 56;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v46 = v17;
    v47 = v20;
    v21 = v42;
    sub_1000651A4(*(a1 + 48) + *(v43 + 72) * v16, v42, v44);
    v22 = a1;
    v23 = v40;
    (*v39)(v40, v21, v8);
    sub_100872278(v21, v45);
    v48 = v13;
    v24 = v8;
    v26 = v13[2];
    v25 = v13[3];
    if (v26 >= v25 >> 1)
    {
      sub_100776524(v25 > 1, v26 + 1, 1);
      v13 = v48;
    }

    v13[2] = v26 + 1;
    result = (*(v41 + 32))(v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v23, v24);
    v18 = 1 << *(v22 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    a1 = v22;
    v14 = v37;
    v27 = *(v37 + 8 * v19);
    if ((v27 & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v8 = v24;
    v28 = v27 & (-2 << (v16 & 0x3F));
    if (v28)
    {
      v18 = __clz(__rbit64(v28)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v19 << 6;
      v30 = v19 + 1;
      v31 = (v35 + 8 * v19);
      while (v30 < (v18 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000341AC(v16, v47, 0);
          v18 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v16, v47, 0);
    }

LABEL_4:
    v17 = v46 + 1;
    v16 = v18;
    if (v46 + 1 == v36)
    {
      return v13;
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

uint64_t sub_10086F168(unint64_t a1, int a2, int a3)
{
  v115 = a2;
  v116 = a3;
  v135 = type metadata accessor for UUID();
  v139 = *(v135 - 8);
  v5 = __chkstk_darwin(v135);
  v141 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v134 = &v108 - v7;
  v118 = sub_1005B981C(&qword_101A04F50);
  v109 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v108 - v8;
  v9 = sub_1005B981C(&qword_101A04F48);
  v10 = __chkstk_darwin(v9 - 8);
  v136 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v126 = &v108 - v12;
  v137 = sub_1005B981C(&qword_1019F6700);
  v129 = *(v137 - 8);
  v13 = __chkstk_darwin(v137);
  v123 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v108 - v15;
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v16);
  v125 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s4NodeVMa(0);
  v133 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F20E0 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v21 = static OS_os_log.crlStorageHierachy;
    v114 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = *(a1 + 16);
    v143[0] = *a1;
    v143[1] = v23;
    v144 = *(a1 + 32);
    v128 = a1;
    sub_10000BE14(a1, v146, &qword_101A04F58);
    sub_1005B981C(&qword_101A04F58);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *(inited + 56) = &type metadata for String;
    v113 = sub_1000053B0();
    *(inited + 64) = v113;
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v21, &_mh_execute_header, v27, "Refreshing snapshots for update info: %@", 40, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    a1 = *(v3 + 5);
    v28 = (*(v3 + 7) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v29 = v28[2];
    *(v3 + 5) = v29;
    v30 = *v28;
    v31 = *(*v28 + 16);
    v127 = v3;
    v138 = a1;
    v142 = v29;
    if (!v31)
    {
      break;
    }

    v3 = v133;
    v140 = (v30 + ((v3[80] + 32) & ~v3[80]));
    v130 = (v129 + 48);
    v111 = (v129 + 8);
    v112 = (v129 + 32);
    swift_bridgeObjectRetain_n();

    a1 = 0;
    v124 = 0;
    v110 = xmmword_10146CA70;
    v32 = v128;
    v34 = v125;
    v33 = v126;
    v121 = v16;
    v131 = v31;
    v132 = v30;
    while (a1 < *(v30 + 16))
    {
      sub_1000651A4(v140 + *(v3 + 9) * a1, v20, _s4NodeVMa);
      sub_1000651A4(v20, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (!swift_getEnumCaseMultiPayload())
      {
        v35 = *v34;
        v36 = *v32;
        if (!*v32)
        {
          goto LABEL_15;
        }

        if (*(v36 + 16))
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v35);
          v37 = Hasher._finalize()();
          v38 = -1 << *(v36 + 32);
          v39 = v37 & ~v38;
          if ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
          {
            v40 = ~v38;
            v3 = v133;
            while (v35 != *(*(v36 + 48) + v39))
            {
              v39 = (v39 + 1) & v40;
              if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

LABEL_15:
            v41 = v136;
            sub_100B07CA4(v136);
            v42 = v137;
            v129 = *v130;
            if ((v129)(v41, 1, v137) == 1)
            {
              v120 = objc_opt_self();
              v43 = [v120 _atomicIncrementAssertCount];
              *&v143[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v143);
              StaticString.description.getter();
              v119 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v44 = String._bridgeToObjectiveC()();

              v45 = [v44 lastPathComponent];

              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v49 = static OS_os_log.crlAssert;
              v50 = swift_initStackObject();
              *(v50 + 16) = v110;
              *(v50 + 56) = &type metadata for Int32;
              *(v50 + 64) = &protocol witness table for Int32;
              *(v50 + 32) = v43;
              v51 = sub_1005CF000();
              *(v50 + 96) = v51;
              v52 = sub_100872024(&qword_1019F52E0, sub_1005CF000);
              v53 = v119;
              *(v50 + 72) = v119;
              v54 = v113;
              *(v50 + 136) = &type metadata for String;
              *(v50 + 144) = v54;
              *(v50 + 104) = v52;
              *(v50 + 112) = v46;
              *(v50 + 120) = v48;
              *(v50 + 176) = &type metadata for UInt;
              *(v50 + 152) = 135;
              v55 = *&v143[0];
              *(v50 + 216) = v51;
              *(v50 + 224) = v52;
              *(v50 + 184) = &protocol witness table for UInt;
              *(v50 + 192) = v55;
              v56 = v53;
              v57 = v55;
              v58 = static os_log_type_t.error.getter();
              sub_100005404(v49, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v50);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v59 = static os_log_type_t.error.getter();
              sub_100005404(v49, &_mh_execute_header, v59, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v60 = swift_allocObject();
              v60[2] = 8;
              v60[3] = 0;
              v60[4] = 0;
              v60[5] = 0;
              v61 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v62 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v63 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v64 = String._bridgeToObjectiveC()();

              [v120 handleFailureInFunction:v62 file:v63 lineNumber:135 isFatal:0 format:v64 args:v61];

              v32 = v128;
              v33 = v126;
              v42 = v137;
              v16 = v121;
            }

            sub_10003DFF8(v136, v33, &qword_101A04F48);
            if ((v129)(v33, 1, v42) == 1)
            {
              sub_100872278(v20, _s4NodeVMa);
              sub_10000CAAC(v33, &qword_101A04F48);
              v34 = v125;
            }

            else
            {
              v65 = v122;
              (*v112)(v122, v33, v42);
              LOBYTE(v143[0]) = v35;
              v66 = v123;
              UICollectionViewDiffableDataSource.snapshot(for:)();
              v67 = NSDiffableDataSourceSectionSnapshot.items.getter();
              v68 = sub_100E93A84(v67);

              v69 = NSDiffableDataSourceSectionSnapshot.items.getter();
              __chkstk_darwin(v69);
              *(&v108 - 2) = v66;
              *(&v108 - 1) = v68;
              v70 = v124;
              v72 = sub_1009A3C8C(sub_100872258, (&v108 - 4), v71);
              v124 = v70;

              if (*(v72 + 16))
              {
                NSDiffableDataSourceSectionSnapshot.expand(_:)(v72);
              }

              v32 = v128;
              v34 = v125;
              if ((v115 & 1) != 0 && v35)
              {
                v73 = NSDiffableDataSourceSectionSnapshot.rootItems.getter();
                v65 = v122;
                NSDiffableDataSourceSectionSnapshot.expand(_:)(v73);
              }

              sub_100871748(v65, v35);
              v74 = *v111;
              v75 = v137;
              (*v111)(v65, v137);
              sub_100872278(v20, _s4NodeVMa);
              v74(v123, v75);
              v33 = v126;
              v16 = v121;
            }

            v3 = v133;
LABEL_30:
            v31 = v131;
            v30 = v132;
            goto LABEL_5;
          }

          v3 = v133;
        }

LABEL_29:
        sub_100872278(v20, _s4NodeVMa);
        goto LABEL_30;
      }

      sub_100872278(v20, _s4NodeVMa);
      sub_100872278(v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_5:
      if (++a1 == v31)
      {

        a1 = v138;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  swift_bridgeObjectRetain_n();
  v124 = 0;
LABEL_33:
  v76 = v117;
  v132 = *(v127 + 6);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v3 = v76;
  v77 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v20 = v134;
  v78 = v135;
  v137 = *(v77 + 16);
  if (v137)
  {
    v79 = 0;
    v136 = v139 + 16;
    v140 = (v139 + 32);
    v133 = (v139 + 8);
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v79 >= *(v77 + 16))
      {
        goto LABEL_64;
      }

      v80 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v81 = *(v139 + 72);
      (*(v139 + 16))(v20, v77 + v80 + v81 * v79, v78);
      if (*(a1 + 16) && (v82 = sub_10003E994(v20), (v83 & 1) != 0))
      {
        v84 = *(*(a1 + 56) + 8 * v82);
      }

      else
      {
        v84 = 0;
      }

      v3 = v142;
      if (*(v142 + 16) && (v85 = sub_10003E994(v20), (v86 & 1) != 0))
      {
        if (v84 != *(*(v142 + 56) + 8 * v85))
        {
          goto LABEL_47;
        }
      }

      else if (v84)
      {
LABEL_47:
        v87 = *v140;
        (*v140)(v141, v20, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v143[0] = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = v143;
          sub_100776524(0, v16[2] + 1, 1);
          v16 = *&v143[0];
        }

        v90 = v16[2];
        v89 = v16[3];
        if (v90 >= v89 >> 1)
        {
          v3 = v143;
          sub_100776524(v89 > 1, v90 + 1, 1);
          v16 = *&v143[0];
        }

        v16[2] = v90 + 1;
        v78 = v135;
        v87(v16 + v80 + v90 * v81, v141, v135);
        v20 = v134;
        goto LABEL_36;
      }

      (*v133)(v20, v78);
LABEL_36:
      ++v79;
      a1 = v138;
      if (v137 == v79)
      {
        goto LABEL_53;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_53:

  if (*v128)
  {
    v91 = v128[3];
    v92 = v128[1];
    v93 = sub_10086E964(*v128);
    v94 = sub_10086EDC0(v92, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v145 = v93;
    sub_100799B18(v94);
    v95 = sub_10086EDC0(v91, type metadata accessor for CRLFolderIdentifier, type metadata accessor for CRLFolderIdentifier, type metadata accessor for CRLFolderIdentifier);
    sub_100799B18(v95);
    v96 = sub_100E93A84(v145);
  }

  else
  {
    v96 = _swiftEmptySetSingleton;
  }

  *&v143[0] = v16;
  sub_100799F40(v96);
  v97 = *&v143[0];
  if (!*(*&v143[0] + 16))
  {
    goto LABEL_60;
  }

  v98 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v99 = sub_100E93A84(v98);

  v100 = sub_100E93A84(v97);

  v101 = sub_10119E374(v100, v99);

  v102 = v101[2];
  if (v102)
  {
    v103 = sub_100B39BF4(v101[2], 0);
    v104 = sub_100B3AA50(v143, &v103[(*(v139 + 80) + 32) & ~*(v139 + 80)], v102, v101);
    sub_100035F90();
    if (v104 != v102)
    {
      __break(1u);
LABEL_60:
      (*(v109 + 8))(v117, v118);
    }
  }

  else
  {

    v103 = _swiftEmptyArrayStorage;
  }

  v107 = v117;
  v106 = v118;
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v103);

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v109 + 8))(v107, v106);
}

uint64_t sub_1008701F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4 + 64;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = v33 - v7 + 64;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CAAC(v8, &qword_1019F6990);
    if (qword_1019F20E0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlStorageHierachy;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_100872024(&qword_101A23D10, &type metadata accessor for IndexPath);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "Could not find view model item identifier for index path %@", 59, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v19 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  else
  {
    v32 = a1;
    (*(v10 + 32))(v12, v8, v9);
    v21 = (*(v1 + 56) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v22 = v21[1];
    v34 = *v21;
    v35 = v22;
    v36 = v21[2];
    v37 = v34;
    v38 = v22;
    v39 = v36;
    sub_10000BE14(&v37, v33, &unk_101A23CC0);
    sub_10000BE14(&v37 + 8, v33, &unk_101A23CC0);
    sub_10000BE14(&v38, v33, &qword_1019F66A8);
    sub_10000BE14(&v38 + 8, v33, &unk_101A23CD0);
    sub_10000BE14(&v39, v33, &qword_1019FFF30);
    sub_10000BE14(&v39 + 8, v33, &unk_101A23CE0);
    sub_100825120(v12, v5);
    sub_10000CAAC(&v37, &unk_101A23CC0);
    sub_10000CAAC(&v37 + 8, &unk_101A23CC0);
    sub_10000CAAC(&v38, &qword_1019F66A8);
    sub_10000CAAC(&v38 + 8, &unk_101A23CD0);
    sub_10000CAAC(&v39, &qword_1019FFF30);
    sub_10000CAAC(&v39 + 8, &unk_101A23CE0);
    v23 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v5, 1, v23) == 1)
    {
      sub_10000CAAC(v5, &unk_101A15B20);
      if (qword_1019F20E0 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.crlStorageHierachy;
      sub_1005B981C(&qword_1019F54E0);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_10146C6B0;
      sub_100872024(&qword_101A02180, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_1000053B0();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Could not find view model item for identifier %@", 48, 2, v26);
      swift_setDeallocating();
      sub_100005070(v26 + 32);
      (*(v10 + 8))(v12, v9);
      return (*(v24 + 56))(v32, 1, 1, v23);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v31 = v32;
      sub_100065C80(v5, v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      return (*(v24 + 56))(v31, 0, 1, v23);
    }
  }
}

uint64_t sub_1008708B0(uint64_t a1, int a2)
{
  v78 = a2;
  v87 = a1;
  v3 = sub_1005B981C(&qword_1019F6990);
  v4 = __chkstk_darwin(v3 - 8);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v88 = &v76 - v7;
  __chkstk_darwin(v6);
  v91 = &v76 - v8;
  v9 = sub_1005B981C(&qword_101A04F30);
  __chkstk_darwin(v9 - 8);
  v85 = (&v76 - v10);
  v84 = sub_1005B981C(&qword_101A04F38);
  __chkstk_darwin(v84);
  v83 = &v76 - v11;
  v12 = sub_1005B981C(&qword_1019F6700);
  v79 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = (&v76 - v13);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v76 - v20;
  v22 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v22 - 8);
  v24 = &v76 - v23;
  v80 = v2;
  sub_100F87E04(v21);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v89 = v16[1];
  v90 = v16 + 1;
  v89(v21, v15);
  v25 = type metadata accessor for IndexPath();
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  result = sub_10000CAAC(v24, &unk_101A23C40);
  if (v26 == 1)
  {
    inited = v85;
    sub_100871A1C(v87, v85);
    v29 = sub_1005B981C(&qword_101A04F40);
    if ((*(*(v29 - 1) + 48))(inited, 1, v29) == 1)
    {
      sub_10000CAAC(inited, &qword_101A04F30);
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v30 = sub_100F8903C();
      v32 = v31;
      v16 = &type metadata for String;
      *(inited + 56) = &type metadata for String;
      v33 = sub_1000053B0();
      *(inited + 32) = v30;
      v90 = v33;
      v91 = inited + 32;
      *(inited + 64) = v33;
      *(inited + 40) = v32;
      v89 = objc_opt_self();
      LODWORD(v34) = [v89 _atomicIncrementAssertCount];
      v92 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v92);
      StaticString.description.getter();
      v12 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 lastPathComponent];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v37;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v38 = static OS_os_log.crlAssert;
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_10146CA70;
        *(v39 + 56) = &type metadata for Int32;
        *(v39 + 64) = &protocol witness table for Int32;
        *(v39 + 32) = v34;
        v40 = sub_1005CF000();
        *(v39 + 96) = v40;
        v41 = sub_100872024(&qword_1019F52E0, sub_1005CF000);
        *(v39 + 72) = v12;
        v42 = v90;
        *(v39 + 136) = v16;
        *(v39 + 144) = v42;
        *(v39 + 104) = v41;
        *(v39 + 112) = v29;
        *(v39 + 120) = v21;
        *(v39 + 176) = &type metadata for UInt;
        *(v39 + 184) = &protocol witness table for UInt;
        *(v39 + 152) = 206;
        v16 = v92;
        *(v39 + 216) = v40;
        *(v39 + 224) = v41;
        *(v39 + 192) = v16;
        v43 = v12;
        v44 = v16;
        v45 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
        swift_setDeallocating();
        v88 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v46, "Didn't find item to expose: %@", 30, 2, inited);

        type metadata accessor for __VaListBuilder();
        v12 = swift_allocObject();
        v12[2] = 8;
        v12[3] = 0;
        v14 = v12 + 3;
        v12[4] = 0;
        v12[5] = 0;
        v90 = inited;
        v19 = *(inited + 16);
        if (!v19)
        {
LABEL_34:
          v72 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v73 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v74 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v75 = String._bridgeToObjectiveC()();

          [v89 handleFailureInFunction:v73 file:v74 lineNumber:206 isFatal:0 format:v75 args:v72];

          swift_setDeallocating();
          return swift_arrayDestroy();
        }

        v15 = 0;
        inited = 40;
        while (1)
        {
          v47 = (v91 + 40 * v15);
          v29 = v47[3];
          LODWORD(v34) = sub_100020E58(v47, v29);
          v48 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v21 = *v14;
          v49 = *(v48 + 16);
          v50 = __OFADD__(*v14, v49);
          v51 = *v14 + v49;
          if (v50)
          {
            break;
          }

          v34 = v12[4];
          if (v34 >= v51)
          {
            goto LABEL_21;
          }

          if (v34 + 0x4000000000000000 < 0)
          {
            goto LABEL_40;
          }

          v29 = v12[5];
          if (2 * v34 > v51)
          {
            v51 = 2 * v34;
          }

          v12[4] = v51;
          if ((v51 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_41;
          }

          v16 = v48;
          v52 = swift_slowAlloc();
          v53 = v52;
          v12[5] = v52;
          if (v29)
          {
            if (v52 != v29 || v52 >= &v29[2 * v21])
            {
              memmove(v52, v29, 8 * v21);
            }

            LODWORD(v34) = v12;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v48 = v16;
LABEL_21:
            v53 = v12[5];
            if (!v53)
            {
              goto LABEL_28;
            }

            goto LABEL_22;
          }

          v48 = v16;
          if (!v53)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_22:
          v55 = *(v48 + 16);
          if (v55)
          {
            v56 = (v48 + 32);
            v57 = *v14;
            while (1)
            {
              v58 = *v56++;
              *&v53[2 * v57] = v58;
              v57 = *v14 + 1;
              if (__OFADD__(*v14, 1))
              {
                break;
              }

              *v14 = v57;
              if (!--v55)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
            break;
          }

LABEL_6:

          if (++v15 == v19)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
      }
    }

LABEL_29:
    v59 = v29[12];
    v60 = v83;
    v61 = *(v84 + 48);
    *v83 = *inited;
    v62 = inited + v59;
    v63 = *(v79 + 32);
    v63(&v60[v61], v62, v12);
    v77 = *v60;
    v63(v14, &v60[*(v84 + 48)], v12);
    sub_100F87E04(v21);
    v64 = v91;
    NSDiffableDataSourceSectionSnapshot.parent(of:)();
    v89(v21, v15);
    v65 = v88;
    sub_10000BE14(v64, v88, &qword_1019F6990);
    v66 = v16[6];
    v87 = v16 + 6;
    v85 = v66;
    if (v66(v65, 1, v15) == 1)
    {
LABEL_33:
      sub_10000CAAC(v65, &qword_1019F6990);
    }

    else
    {
      v83 = v16[4];
      v84 = (v16 + 4);
      v82 = v16 + 2;
      v81 = xmmword_10146C6B0;
      while (1)
      {
        (v83)(v19, v65, v15);
        if (NSDiffableDataSourceSectionSnapshot.isExpanded(_:)())
        {
          break;
        }

        sub_1005B981C(&qword_101A1DBB0);
        v67 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v81;
        (v16[2])(v68 + v67, v19, v15);
        NSDiffableDataSourceSectionSnapshot.expand(_:)(v68);

        v69 = v86;
        NSDiffableDataSourceSectionSnapshot.parent(of:)();
        v89(v19, v15);
        v70 = v91;
        sub_10000CAAC(v91, &qword_1019F6990);
        v71 = v69;
        v65 = v88;
        sub_10003DFF8(v71, v70, &qword_1019F6990);
        sub_10000BE14(v70, v65, &qword_1019F6990);
        if (v85(v65, 1, v15) == 1)
        {
          goto LABEL_33;
        }
      }

      v89(v19, v15);
    }

    sub_100871748(v14, v77);
    sub_10000CAAC(v91, &qword_1019F6990);
    return (*(v79 + 8))(v14, v12);
  }

  return result;
}

uint64_t sub_1008714BC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v5 + 16))(v4, a1);
  result = sub_100F7CC80(v4, v13);
  v7 = v13[0];
  if (v13[0])
  {
    v8 = v13[1];
    v9 = v13[2];
    v10 = v13[3];
    v11 = v13[4];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14[0] = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      sub_10086F168(v14, 0, 0);
      sub_10000CAAC(v13, &qword_101A04F58);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100871634()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];

    swift_unknownObjectRelease();
    *(v0 + 72) = 0;
    swift_unknownObjectRelease();
  }

  sub_1000C1024(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1008716F0()
{
  sub_100871634();

  return swift_deallocClassInstance();
}

uint64_t sub_100871748(uint64_t a1, char a2)
{
  v4 = sub_1005B981C(&qword_101A04F48);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10062B5F0();
    swift_unknownObjectRelease();
  }

  v7 = sub_1005B981C(&qword_1019F6700);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  v9 = a2 & 1;
  sub_100BC26C4(v6, v9);
  swift_endAccess();
  v11[8] = v9;
  swift_allocObject();
  swift_weakInit();

  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
}

uint64_t sub_10087192C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1006301D4();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008719A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1005B981C(&qword_1019F6700);
  if (NSDiffableDataSourceSectionSnapshot.isExpanded(_:)())
  {
    return sub_10079C3B4(a1, a3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100871A1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v44 = a2;
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v6 - 8);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  v9 = __chkstk_darwin(v8 - 8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v42 - v11;
  v57 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v57);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v55 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v54 = sub_1005B981C(&qword_1019F6700);
  __chkstk_darwin(v54);
  v21 = &v42 - v20;
  v22 = 0;
  v23 = 0;
  v56 = *(v3 + 48);
  v46 = "00-0000-000000000001";
  v49 = (v15 + 48);
  v50 = (v15 + 16);
  v24 = (v15 + 32);
  v45 = "odel index path %@";
  v25 = (v15 + 8);
  v43 = v26;
  v53 = (v26 + 8);
  while (1)
  {
    v27 = v22;
    v28 = *(&off_101873F20 + v23 + 32);
    v59 = v28;
    UICollectionViewDiffableDataSource.snapshot(for:)();
    sub_1000651A4(v58, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v30 = v51;
      sub_100065C80(v13, v51, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v31 = v55;
      sub_10003E264(v55);
      v32 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {
      v30 = v52;
      sub_100065C80(v13, v52, _s5BoardVMa);
      v31 = v55;
      (*v50)(v55, v30, v14);
      v32 = _s5BoardVMa;
    }

    sub_100872278(v30, v32);
LABEL_12:
    (*v24)(v19, v31, v14);
    v35 = v54;
    v36 = NSDiffableDataSourceSectionSnapshot.contains(_:)();
    (*v25)(v19, v14);
    if (v36)
    {
      v38 = sub_1005B981C(&qword_101A04F40);
      v39 = *(v38 + 48);
      v40 = v43;
      v41 = v44;
      *v44 = v28;
      (*(v40 + 32))(&v41[v39], v21, v35);
      return (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    }

    (*v53)(v21, v35);
    v22 = 1;
    v23 = &_mh_execute_header.magic + 1;
    if (v27)
    {
      v37 = sub_1005B981C(&qword_101A04F40);
      return (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
    }
  }

  if (*v13)
  {
    v33 = v48;
    UUID.init(uuidString:)();
    result = (*v49)(v33, 1, v14);
    if (result == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v33 = v47;
  UUID.init(uuidString:)();
  result = (*v49)(v33, 1, v14);
  if (result != 1)
  {
LABEL_11:
    v31 = v55;
    (*v24)(v55, v33, v14);
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100872024(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100872074(void *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = _swiftEmptyDictionarySingleton;
  v3[5] = _swiftEmptyDictionarySingleton;
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  v3[9] = 0;
  v7 = objc_opt_self();
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = [v7 defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD8948;
  v11 = swift_allocObject();
  swift_weakInit();
  v17 = sub_100872250;
  v18 = v11;
  *&v15 = _NSConcreteStackBlock;
  *(&v15 + 1) = *"";
  *&v16 = sub_100059694;
  *(&v16 + 1) = &unk_101889F10;
  v12 = _Block_copy(&v15);
  swift_unknownObjectRetain();

  v13 = [v9 addObserverForName:v10 object:a2 queue:0 usingBlock:v12];
  _Block_release(v12);

  swift_unknownObjectRelease();
  v3[9] = v13;
  swift_unknownObjectRelease();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  sub_10086F168(&v15, 1, 0);
  return v3;
}

uint64_t sub_100872278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008722D8()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLAssetDatabaseRow()
{
  result = qword_101A04F88;
  if (!qword_101A04F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008723DC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_100872490(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)())
  {
    v4 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
    v5 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
    if (v4)
    {
      if (v5)
      {
        v6 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) == *(a2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) && v4 == v5;
        if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return *(a1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) == *(a2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate);
        }
      }
    }

    else if (!v5)
    {
      return *(a1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) == *(a2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate);
    }
  }

  return 0;
}

uint64_t sub_100872530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100872554, 0, 0);
}

uint64_t sub_100872554()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v6 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100872664;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x6164286574697277, 0xEC000000293A6174, sub_100873328, v3, &type metadata for Int);
}

uint64_t sub_100872664()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100739620;
  }

  else
  {

    v2 = sub_100872780;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10087279C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_100872830(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 88) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return _swift_task_switch(sub_100872858, 0, 0);
}

uint64_t sub_100872858()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100872968;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000026, 0x800000010156FD50, sub_10087419C, v4, &type metadata for Data);
}

uint64_t sub_100872968()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100872AA0;
  }

  else
  {

    v2 = sub_100872A84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100872AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100872B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v21 = a2;
  v22 = a3;
  v7 = sub_1005B981C(&qword_101A003B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  type metadata accessor for DispatchData();
  v13 = swift_allocBox();
  static DispatchData.empty.getter();
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v8 + 32))(v15 + v14, v11, v7);
  v16 = v15 + ((v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v13;
  *(v16 + 8) = v20;
  *(v15 + ((v14 + v9 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_1008741AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10087279C;
  aBlock[3] = &unk_10188A118;
  v17 = _Block_copy(aBlock);

  [v21 readFromOffset:v22 length:a4 handler:v17];
  _Block_release(v17);
}

void sub_100872D4C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v32 = a8;
  v13 = type metadata accessor for DispatchData();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      v35 = a3;
      swift_errorRetain();
      sub_1005B981C(&qword_101A003B8);
      CheckedContinuation.resume(throwing:)();
      return;
    }

    if (a2)
    {
      static DispatchData._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      v18 = a2;
      DispatchData.append(_:)();
      swift_endAccess();

      (*(v14 + 8))(v16, v13);
    }

    if (a1)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      v19 = objc_opt_self();
      swift_beginAccess();
      (*(v14 + 16))(v16, v17, v13);
      v20 = DispatchData._bridgeToObjectiveC()();
      (*(v14 + 8))(v16, v13);
      v21 = [v19 crl_dataFromDispatchData:v20];

      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if ((a7 & 1) == 0)
      {
LABEL_18:
        v33 = v22;
        v34 = v24;
        sub_1005B981C(&qword_101A003B8);
        CheckedContinuation.resume(returning:)();
        return;
      }

      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v25 != 2)
        {
          if (!v32)
          {
            goto LABEL_18;
          }

LABEL_20:
          sub_1006B305C();
          v30 = swift_allocError();
          *v31 = 2;
          v33 = v30;
          sub_1005B981C(&qword_101A003B8);
          CheckedContinuation.resume(throwing:)();
          sub_10002640C(v22, v24);
          return;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (!v29)
        {
LABEL_17:
          if (v26 == v32)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        __break(1u);
      }

      else if (!v25)
      {
        v26 = BYTE6(v24);
        goto LABEL_17;
      }

      LODWORD(v26) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        __break(1u);
        return;
      }

      v26 = v26;
      goto LABEL_17;
    }
  }
}

uint64_t sub_1008730C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1005B981C(&qword_101A050E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [(objc_class *)isa crl_dispatchData];

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  (*(v7 + 32))(v16 + v15, v10, v6);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_100873458;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10087351C;
  aBlock[3] = &unk_101889FB0;
  v17 = _Block_copy(aBlock);

  [a4 writeData:v13 handler:v17];
  _Block_release(v17);
}

uint64_t sub_100873334(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      swift_errorRetain();
      sub_1005B981C(&qword_101A050E8);
      return CheckedContinuation.resume(throwing:)();
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(a6 + 16);
      if (__OFADD__(v12, a2))
      {
        __break(1u);
      }

      else
      {
        *(a6 + 16) = v12 + a2;
        if (a1)
        {
          swift_beginAccess();
          *(a4 + 16) = 1;
          sub_1005B981C(&qword_101A050E8);
          return CheckedContinuation.resume(returning:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100873458(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1005B981C(&qword_101A050E8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100873334(a1, a2, a3, v9, v3 + v8, v10);
}

void sub_10087351C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1008735A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1008735C8, 0, 0);
}

uint64_t sub_1008735C8()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_1008736C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000012, 0x800000010156FD00, sub_100873D5C, v2, &type metadata for () + 8);
}

uint64_t sub_1008736C8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1005DA3B0;
  }

  else
  {

    v2 = sub_1005DA098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008737E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1005B981C(&unk_101A050F0);
  v9 = *(v35 - 8);
  v34 = *(v9 + 64);
  __chkstk_darwin(v35);
  v33 = &v31 - v10;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = v16;
  v36 = v16;
  v18[4] = v15;
  v18[5] = v17;
  v18[6] = a3;
  v50 = sub_100873F8C;
  v51 = v18;
  aBlock = _NSConcreteStackBlock;
  v47 = *"";
  v31 = &v48;
  v48 = sub_10087279C;
  v49 = &unk_10188A028;
  v19 = _Block_copy(&aBlock);

  v32 = v17;
  swift_unknownObjectRetain();

  [v37 readWithHandler:v19];
  _Block_release(v19);
  sub_100618868();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v21 = v33;
  v22 = v35;
  (*(v9 + 16))(v33, v38, v35);
  v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  (*(v9 + 32))(v24 + v23, v21, v22);
  v50 = sub_100874120;
  v51 = v24;
  aBlock = _NSConcreteStackBlock;
  v47 = *"";
  v48 = sub_100007638;
  v49 = &unk_10188A078;
  v25 = _Block_copy(&aBlock);

  v26 = v39;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  v28 = v40;
  v27 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v32;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v25);

  (*(v44 + 8))(v28, v27);
  (*(v42 + 8))(v26, v43);
}

void sub_100873D68(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      swift_beginAccess();
      *(a5 + 16) = a3;
      swift_errorRetain();
      swift_errorRetain();

      dispatch_group_leave(a6);
    }

    else if (a2)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = a2;
      dispatch_group_enter(a6);
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = a5;
      v16[4] = a6;
      aBlock[4] = sub_100874190;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_10087351C;
      aBlock[3] = &unk_10188A0C8;
      v17 = _Block_copy(aBlock);

      v18 = a6;

      [a7 writeData:v15 handler:v17];
      _Block_release(v17);
    }

    if (a1)
    {
      swift_beginAccess();
      if ((*(a4 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a4 + 16) = 1;
        dispatch_group_leave(a6);
      }
    }
  }
}

void sub_100873F9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      swift_beginAccess();
      *(a5 + 16) = a3;
      swift_errorRetain();
      swift_errorRetain();

      dispatch_group_leave(a6);
    }

    else if (a1)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      dispatch_group_leave(a6);
    }
  }
}

uint64_t sub_100874090(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100874120()
{
  sub_1005B981C(&unk_101A050F0);
  v1 = *(v0 + 16);

  return sub_100874090(v1);
}

void sub_1008741AC(char a1, void *a2, uint64_t a3)
{
  v7 = *(sub_1005B981C(&qword_101A003B8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(v3 + 16);
  v11 = v3 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_100872D4C(a1, a2, a3, v10, v3 + v8, v12, v13, v14);
}

void sub_1008742A4(void *a1, double a2, double a3)
{
  v37.receiver = v3;
  v37.super_class = type metadata accessor for CRLFileEditor();
  v36 = a1;
  objc_msgSendSuper2(&v37, "addMiniFormatterElementsToArray:atPoint:", a1, a2, a3);
  v7 = [v3 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (v9 <= 1)
  {
    v10 = objc_opt_self();
    v11 = [v10 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = objc_opt_self();
    v17 = [v16 crl_quickInspectorImageNamed:v15];

    v18 = [objc_allocWithZone(CRLQuickInspectorElement) initWithName:v14 image:v17 type:2 options:1024];
    [v18 setTag:13];
    v19 = [v10 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    [v18 setToolTip:v22];

    [v36 addObject:v18];
    v23 = [v10 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = String._bridgeToObjectiveC()();
    v28 = [v16 crl_quickInspectorImageNamed:v27];

    v29 = [objc_opt_self() elementWithName:v26 image:v28 type:2 action:"showPreview:"];
    [v29 setTag:23];
    v30 = [v3 boardItems];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = sub_100BC17C8(v31);

    if (v32)
    {
      (*((swift_isaMask & *v32) + 0x2D8))(v33);
      v35 = v34;

      if (v35)
      {
        v32 = String._bridgeToObjectiveC()();
      }

      else
      {
        v32 = 0;
      }
    }

    [v29 setToolTip:v32];

    [v36 addObject:v29];
  }
}

id sub_1008749B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100874AC8(uint64_t a1, uint64_t a2, NSString a3, void *a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:v5];
  type metadata accessor for CRLAsset();
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = *"";
    v11[2] = sub_1008E899C;
    v11[3] = &unk_10188A1B8;
    a4 = _Block_copy(v11);
  }

  [v9 replaceSelectedMediaWithData:v10.super.isa actionString:a3 completion:a4];
  _Block_release(a4);
}

void sub_100874D00(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, NSString a5, void *a6, uint64_t a7)
{
  v13 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:v7];
  type metadata accessor for URL();
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  if (a6)
  {
    v15[4] = a6;
    v15[5] = a7;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = *"";
    v15[2] = sub_100007638;
    v15[3] = &unk_10188A168;
    a6 = _Block_copy(v15);
  }

  [v13 replaceCanvasElementInfo:a1 withFilesAtURLs:v14.super.isa allowedTypes:isa actionString:a5 completion:a6];
  _Block_release(a6);
}

uint64_t CRLStroke.isValid.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() emptyStroke];
  sub_100006370(0, &qword_101A0C7F0);
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 pattern];
    v6 = [objc_opt_self() emptyPattern];
    sub_100006370(0, &qword_101A05138);
    v7 = static NSObject.== infix(_:_:)();

    v4 = v7 ^ 1;
  }

  return v4 & 1;
}

uint64_t CRLStroke.withWidth(_:)(double a1)
{
  [v1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1005B981C(&qword_101A05140);
  swift_dynamicCast();
  [v4 setWidth:a1];
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t sub_1008751F0(uint64_t a1, SEL *a2)
{
  [v2 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1005B981C(&qword_101A05140);
  swift_dynamicCast();
  [v6 *a2];
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t sub_1008752B4@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1005B981C(&qword_101A051A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_1005B981C(&qword_1019F6280);
  v16 = 0xD00000000000001FLL;
  v17 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v18 = AppDependency.__allocating_init(key:manager:)();
  v19[3] = type metadata accessor for CRLBoardEntityQueryPerformer();
  v19[4] = &off_1018ADAB0;
  sub_10002C58C(v19);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.appIntents;
  Logger.init(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100877088();
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  type metadata accessor for CRLBoardEntity();
  sub_100876FCC();
  sub_100877024();
  static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1008756C8()
{
  v0 = sub_1005B981C(&qword_101A05148);
  __chkstk_darwin(v0 - 8);
  v148 = &v129 - v1;
  v146 = sub_1005B981C(&qword_101A05150);
  __chkstk_darwin(v146);
  v145 = &v129 - v2;
  v3 = sub_1005B981C(&qword_101A05158);
  __chkstk_darwin(v3 - 8);
  v147 = &v129 - v4;
  v5 = sub_1005B981C(&qword_101A05160);
  __chkstk_darwin(v5 - 8);
  v149 = &v129 - v6;
  v144 = sub_1005B981C(&qword_101A05168);
  __chkstk_darwin(v144);
  v143 = &v129 - v7;
  v155 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v158 = *(v155 - 8);
  __chkstk_darwin(v155);
  v142 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v153 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v152 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v157 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppShortcutPhraseToken();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&qword_101A05170);
  __chkstk_darwin(v19);
  v141 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v140 = &v129 - v22;
  __chkstk_darwin(v23);
  v138 = &v129 - v24;
  __chkstk_darwin(v25);
  v137 = &v129 - v26;
  __chkstk_darwin(v27);
  v136 = &v129 - v28;
  __chkstk_darwin(v29);
  v135 = &v129 - v30;
  __chkstk_darwin(v31);
  v134 = &v129 - v32;
  __chkstk_darwin(v33);
  v133 = &v129 - v34;
  __chkstk_darwin(v35);
  v132 = &v129 - v36;
  __chkstk_darwin(v37);
  v131 = &v129 - v38;
  __chkstk_darwin(v39);
  v130 = &v129 - v40;
  __chkstk_darwin(v41);
  v129 = &v129 - v42;
  __chkstk_darwin(v43);
  v154 = type metadata accessor for AppShortcut();
  v156 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007513E8(v169);
  sub_1005B981C(&qword_101A05178);
  v45 = *(sub_1005B981C(&qword_101A05180) - 8);
  v161 = *(v45 + 72);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  v139 = v47;
  *(v47 + 16) = xmmword_1014827A0;
  v162 = v47 + v46;
  v48 = sub_1006896D0();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0x20657461657243;
  v49._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v49);
  v50 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v51 = *(v16 + 104);
  v165 = v16 + 104;
  v166 = v51;
  LODWORD(KeyPath) = enum case for AppShortcutPhraseToken.applicationName(_:);
  v51(v18, enum case for AppShortcutPhraseToken.applicationName(_:), v15);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v164 = *(v16 + 8);
  v160 = v16 + 8;
  v164(v18, v15);
  v52._countAndFlagsBits = 0x6472616F6220;
  v52._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v52);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v53._countAndFlagsBits = 0x20657461657243;
  v53._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v53);
  v163 = v15;
  v54 = v166;
  v166(v18, v50, v15);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v55 = v164;
  v164(v18, v15);
  v56._countAndFlagsBits = 0x7361766E616320;
  v56._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v56);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0x20657461657243;
  v57._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v57);
  v58 = v163;
  v54(v18, KeyPath, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v55(v18, v58);
  v59._countAndFlagsBits = 0x6E656D75636F6420;
  v59._object = 0xE900000000000074;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v59);
  v60 = v162;
  AppShortcutPhrase.init(stringInterpolation:)();
  v61 = v161;
  AppShortcutPhrase.init(stringLiteral:)();
  v159 = v48;
  AppShortcutPhrase.init(stringLiteral:)();
  v130 = 5 * v61;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._object = 0xE900000000000020;
  v62._countAndFlagsBits = 0x77656E20656B614DLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v62);
  v63 = KeyPath;
  v64 = v163;
  v65 = v166;
  v166(v18, KeyPath, v163);
  v150 = v18;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v66 = v164;
  v164(v18, v64);
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v67);
  AppShortcutPhrase.init(stringInterpolation:)();
  v131 = v60 + 6 * v61;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._countAndFlagsBits = 0x20656B614DLL;
  v68._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v68);
  v69 = v150;
  v70 = v163;
  v65(v150, v63, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v66(v69, v70);
  v71._countAndFlagsBits = 0x6472616F6220;
  v71._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v71);
  AppShortcutPhrase.init(stringInterpolation:)();
  v132 = (8 * v161);
  v131 = 7 * v161;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v72._countAndFlagsBits = 0x20656B614DLL;
  v72._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v72);
  v73 = v63;
  v74 = v166;
  v166(v69, v73, v70);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v75 = v69;
  v76 = v164;
  v164(v69, v70);
  v77._countAndFlagsBits = 0x7361766E616320;
  v77._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v77);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78._countAndFlagsBits = 0x20656B614DLL;
  v78._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v78);
  v74(v69, KeyPath, v70);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v76(v69, v70);
  v79._countAndFlagsBits = 0x6E656D75636F6420;
  v79._object = 0xE900000000000074;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v79);
  v80 = v162;
  AppShortcutPhrase.init(stringInterpolation:)();
  v81 = v161;
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  v134 = 0xE900000000000064;
  AppShortcutPhrase.init(stringLiteral:)();
  v133 = (v80 + 12 * v81);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v82._countAndFlagsBits = 544695630;
  v82._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v82);
  v83 = KeyPath;
  v166(v69, KeyPath, v70);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v164(v69, v70);
  v84._countAndFlagsBits = 0x6472616F6220;
  v84._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v84);
  AppShortcutPhrase.init(stringInterpolation:)();
  v135 = (v80 + 13 * v81);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v85._countAndFlagsBits = 544695630;
  v85._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v85);
  v86 = v83;
  v87 = v83;
  v88 = v163;
  v89 = v166;
  v166(v69, v86, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v90 = v164;
  v164(v75, v88);
  v91._countAndFlagsBits = 0x7361766E616320;
  v91._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v91);
  AppShortcutPhrase.init(stringInterpolation:)();
  v136 = v162 + 14 * v161;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v92._countAndFlagsBits = 544695630;
  v92._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v92);
  v93 = v87;
  v94 = v163;
  v89(v75, v93, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v90(v75, v94);
  v95._countAndFlagsBits = 0x6E656D75636F6420;
  v95._object = 0xE900000000000074;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v95);
  AppShortcutPhrase.init(stringInterpolation:)();
  v137 = (16 * v161);
  v136 = 15 * v161;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v96._countAndFlagsBits = 0xD000000000000015;
  v96._object = 0x800000010156FE70;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v96);
  v97 = KeyPath;
  v89(v75, KeyPath, v94);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v90(v75, v94);
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v98);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v99._countAndFlagsBits = 0xD000000000000016;
  v99._object = 0x800000010156FE90;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v99);
  v100 = v97;
  v101 = v166;
  v166(v75, v100, v94);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v102 = v164;
  v164(v75, v94);
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v103);
  v104 = v137;
  AppShortcutPhrase.init(stringInterpolation:)();
  v161 = &v161[v104];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v105._countAndFlagsBits = 0x656E207472617453;
  v105._object = 0xEA00000000002077;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v105);
  v106 = v163;
  v101(v75, KeyPath, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v102(v75, v106);
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v107);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  LODWORD(v140) = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v108 = *(v158 + 104);
  v158 += 104;
  v141 = v108;
  v109 = v142;
  (v108)(v142);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v110 = v151;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v162 = static AppShortcutsBuilder.buildExpression(_:)();
  v111 = *(v156 + 8);
  v156 += 8;
  v161 = v111;
  (v111)(v110, v154);
  v168 = sub_100B0768C();
  sub_1005B981C(&qword_101A05188);
  sub_1005B981C(&qword_101A05190);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_10146C6B0;
  v159 = v112;
  sub_10068984C();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v113._countAndFlagsBits = 0x206E65704FLL;
  v113._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v113);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A05198);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v114._countAndFlagsBits = 544106784;
  v114._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v114);
  v115 = v150;
  v116 = v163;
  v166(v150, KeyPath, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v164(v115, v116);
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v117);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v141)(v109, v140, v155);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  KeyPath = swift_getKeyPath();
  v118 = type metadata accessor for CRLBoardEntity();
  sub_1005B981C(&qword_1019F6278);
  v119 = sub_100876FCC();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v120._countAndFlagsBits = 0x206E65704FLL;
  v120._object = 0xE500000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v120);
  swift_getKeyPath();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)();

  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v121);
  AppShortcutParameterPresentationSummaryString.init(stringInterpolation:)();
  AppShortcutParameterPresentationSummary.init(_:table:)();
  sub_1005B981C(&qword_101A051A0);
  v122 = sub_1005C4E5C(&qword_101A051A8);
  v123 = sub_100877024();
  v169[0] = v118;
  v169[1] = v122;
  v169[2] = v119;
  v169[3] = v123;
  swift_getOpaqueTypeConformance2();
  AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)();
  v124 = v151;
  AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)();
  v125 = static AppShortcutsBuilder.buildExpression(_:)();
  (v161)(v124, v154);
  sub_1005B981C(&qword_101A051B8);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_10146BDE0;
  *(v126 + 32) = v162;
  *(v126 + 40) = v125;
  v127 = static AppShortcutsBuilder.buildBlock(_:)();

  return v127;
}

unint64_t sub_100876FCC()
{
  result = qword_1019F7410;
  if (!qword_1019F7410)
  {
    type metadata accessor for CRLBoardEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7410);
  }

  return result;
}

unint64_t sub_100877024()
{
  result = qword_101A051B0;
  if (!qword_101A051B0)
  {
    sub_1005C4E5C(&qword_101A051A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A051B0);
  }

  return result;
}

unint64_t sub_100877088()
{
  result = qword_101A051C0;
  if (!qword_101A051C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A051C0);
  }

  return result;
}

uint64_t related decl e for CKErrorCode.recoveryState.getter()
{
  type metadata accessor for CKError(0);
  sub_100877178();
  _BridgedStoredNSError.code.getter();
  if (v1 > 0x20)
  {
    return 0;
  }

  if (((1 << v1) & 0x1C500004) != 0)
  {
    return 2;
  }

  return ((1 << v1) & 0x102048402) != 0;
}

unint64_t sub_100877178()
{
  result = qword_1019F3348;
  if (!qword_1019F3348)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3348);
  }

  return result;
}

unint64_t sub_1008771D4()
{
  result = qword_101A051C8;
  if (!qword_101A051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A051C8);
  }

  return result;
}

id CRLLastSubmittedTaskQueue.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  static DispatchQoS.userInitiated.getter();
  v9 = objc_allocWithZone(v2);
  v10 = CRLLastSubmittedTaskQueue.init(label:qos:)(a1, a2, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id CRLLastSubmittedTaskQueue.init(label:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchQoS.userInitiated.getter();
  v8 = objc_allocWithZone(ObjectType);
  v9 = CRLLastSubmittedTaskQueue.init(label:qos:)(a1, a2, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id CRLLastSubmittedTaskQueue.init(label:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v22 = a1;
  v23 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC8Freeform25CRLLastSubmittedTaskQueue_lastWorkItem) = 0;
  v17[1] = sub_100618868();
  (*(v10 + 16))(v12, a3, v9);
  v26 = _swiftEmptyArrayStorage;
  sub_10001F6CC(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v18;
  *&v18[OBJC_IVAR____TtC8Freeform25CRLLastSubmittedTaskQueue_queue] = v13;
  v25.receiver = v14;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "init");
  (*(v10 + 8))(v19, v9);
  return v15;
}

uint64_t sub_100877818(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v5);
  v6 = OBJC_IVAR____TtC8Freeform25CRLLastSubmittedTaskQueue_lastWorkItem;
  if (*(v2 + OBJC_IVAR____TtC8Freeform25CRLLastSubmittedTaskQueue_lastWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    *(v2 + v6) = 0;
  }

  sub_1005B981C(&qword_101A05208);
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  sub_10001F6CC(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188A2B8;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v7 = DispatchWorkItem.init(flags:block:)();

  *(v2 + v6) = v7;

  OS_dispatch_queue.async(execute:)();
  return v7;
}

uint64_t CRLLastSubmittedTaskQueue.async(_:)(uint64_t a1, uint64_t a2)
{
  sub_100877818(a1, a2);
}

char *sub_100877D00()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData();
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 movieItem];
  if (result)
  {
    v9 = result;
    if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_1008786E0(v3, v7);
      sub_10077ABDC(v3, type metadata accessor for CRLMovieItemAssetData);
      v10 = *&v7[*(v4 + 20)];

      sub_10077ABDC(v7, type metadata accessor for CRLAssetData);
      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100878330(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC8Freeform22CRLAudioRepPlaceHolder_previewItemURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC8Freeform22CRLAudioRepPlaceHolder_audioRep] = a1;
  v9 = a1;
  v10 = sub_100877D00();
  v11 = &v2[OBJC_IVAR____TtC8Freeform22CRLAudioRepPlaceHolder_previewItemTitle];
  *v11 = v10;
  v11[1] = v12;
  result = [v9 movieItem];
  if (result)
  {
    v14 = result;
    v15 = v11[1];
    if (v15)
    {
      v16 = *v11;
      v17 = v15;
    }

    else
    {
      v17 = 0xE500000000000000;
      v16 = 0x6F69647561;
    }

    v18 = sub_10125AF90(v6, v16, v17);

    swift_beginAccess();
    sub_10067DE0C(v6, &v2[v7]);
    swift_endAccess();
    v19 = type metadata accessor for CRLAudioRepPlaceHolder();
    v22.receiver = v2;
    v22.super_class = v19;
    v20 = objc_msgSendSuper2(&v22, "init");
    if (v18)
    {
      [v18 setAssociatedLifetimeObject:v9];

      v9 = v18;
    }

    sub_100686028(v6);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10087854C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAudioRepPlaceHolder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLAudioRepPlaceHolder()
{
  result = qword_101A05238;
  if (!qword_101A05238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100878638()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1008786E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10087899C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLLauncher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008789F4(uint64_t result)
{
  if ((result & 1) == 0)
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v3 = URL.description.getter();
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v1, &_mh_execute_header, v6, "Unable to open URL: %@", 22, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }

  return result;
}

void sub_100878B04(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_100878CE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1005CC4AC;
  aBlock[3] = &unk_10188A338;
  v11 = _Block_copy(aBlock);

  [v5 openURL:v8 withCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100878CE0(uint64_t a1)
{
  type metadata accessor for URL();

  return sub_1008789F4(a1);
}

uint64_t sub_100878D60()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD67B8);
  sub_1005EB3DC(v0, qword_101AD67B8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100878E10()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD67D0);
  sub_1005EB3DC(v0, qword_101AD67D0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100878EC0()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD67E8);
  sub_1005EB3DC(v0, qword_101AD67E8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100878F78()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD6800);
  sub_1005EB3DC(v0, qword_101AD6800);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100879028()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD6818);
  sub_1005EB3DC(v0, qword_101AD6818);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_1008790A0@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1005B981C(&qword_1019FE720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1005B981C(&qword_1019FE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1005B981C(&qword_1019FE738);
  a2[4] = sub_100758DC4();
  sub_10002C58C(a2);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100879308@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FE6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&qword_1019FE6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1005B981C(&qword_1019FE6B8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1005B981C(&qword_1019FE6C0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 1;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1005B981C(&qword_1019FE6E8);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_100758C5C();
  sub_10002C58C(v31);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_100879A1C@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E858();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100879A60()
{
  result = qword_101A05270;
  if (!qword_101A05270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05270);
  }

  return result;
}

unint64_t sub_100879AB4(uint64_t a1)
{
  result = sub_10067E858();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100879ADC()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v24 = v21 - v1;
  v2 = sub_1005B981C(&unk_1019F6CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = type metadata accessor for Tips.Rule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F16A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1005EB3DC(v2, qword_101AD67B8);
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v5, v10, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (qword_1019F16B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v2, qword_101AD67D0);
  swift_beginAccess();
  v11(v5, v13, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  if (qword_1019F16B8 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v2, qword_101AD67E8);
  swift_beginAccess();
  v11(v5, v14, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  v15 = v6;
  if (qword_1019F16C0 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v2, qword_101AD6800);
  swift_beginAccess();
  v11(v5, v16, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  if (qword_1019F16C8 != -1)
  {
    swift_once();
  }

  v17 = v23;
  v18 = sub_1005EB3DC(v23, qword_101AD6818);
  (*(v22 + 16))(v24, v18, v17);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v19 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v19;
}

size_t sub_10087A324(unint64_t a1)
{
  v22 = type metadata accessor for UUID();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10087A5F8();
  *(v1 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems) = a1;

  v6 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = _swiftEmptyArrayStorage;
LABEL_14:
    *(v6 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs) = v10;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = _swiftEmptyArrayStorage;

  result = sub_100776524(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v23;
    v11 = a1;
    v20 = v6;
    v21 = a1 & 0xC000000000000001;
    do
    {
      v12 = v7;
      if (v21)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v11 + 8 * v9 + 32);
      }

      v14 = v13;
      (*((swift_isaMask & *v13) + 0x3F8))();
      v16 = v15;
      ObjectType = swift_getObjectType();
      (*(v16 + 40))(ObjectType, v16);

      swift_unknownObjectRelease();
      v23 = v10;
      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        sub_100776524(v18 > 1, v19 + 1, 1);
        v10 = v23;
      }

      ++v9;
      v10[2] = v19 + 1;
      (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v5, v22);
      v7 = v12;
      v11 = a1;
    }

    while (v12 != v9);

    v6 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_10087A5F8()
{
  v102 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v102);
  v2 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v96 - v4;
  v5 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v100 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v7 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems;
  v108 = *&v0[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems];

  sub_1005B981C(&qword_101A05430);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 32) = v8;
  v105 = v11;
  v106 = (inited + 32);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v103 = v0;
  v12 = *&v0[v7];
  v13 = &static OS_os_log.crlAssert;
  v104 = v5;
  if (!v12)
  {

    goto LABEL_29;
  }

  v99 = v2;
  v97 = objc_opt_self();
  LODWORD(v14) = [v97 _atomicIncrementAssertCount];
  v108 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v108);
  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v13 = *v13;
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146CA70;
    *(v21 + 56) = &type metadata for Int32;
    *(v21 + 64) = &protocol witness table for Int32;
    *(v21 + 32) = v14;
    v22 = sub_1005CF000();
    *(v21 + 96) = v22;
    v23 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
    *(v21 + 72) = v15;
    v24 = v105;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v24;
    *(v21 + 104) = v23;
    *(v21 + 112) = v18;
    *(v21 + 120) = v20;
    *(v21 + 176) = &type metadata for UInt;
    *(v21 + 152) = 117;
    v25 = v108;
    *(v21 + 216) = v22;
    *(v21 + 224) = v23;
    *(v21 + 184) = &protocol witness table for UInt;
    *(v21 + 192) = v25;
    v26 = v15;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v29, "Pasteboard object has board items already. boardItems=%@", 56, 2, inited);

    type metadata accessor for __VaListBuilder();
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    *(v15 + 24) = 0;
    v20 = v15 + 24;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    v98 = inited;
    v18 = *(inited + 16);
    if (!v18)
    {
LABEL_27:
      v43 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      [v97 handleFailureInFunction:v44 file:v45 lineNumber:117 isFatal:0 format:v46 args:v43];

      v2 = v99;
LABEL_29:
      v47 = swift_initStackObject();
      *(v47 + 16) = v100;
      v48 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
      v49 = v103;
      v50 = *&v103[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData];
      v51 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
      swift_beginAccess();
      v52 = v50 + v51;
      v53 = v47;
      sub_10000BE14(v52, v101, &unk_101A0B1C0);
      *(v47 + 32) = String.init<A>(describing:)();
      inited = v47 + 32;
      v54 = v105;
      v53[7] = &type metadata for String;
      v53[8] = v54;
      v53[5] = v55;
      v56 = *&v49[v48];
      v57 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
      swift_beginAccess();
      sub_10000BE14(v56 + v57, v2, &unk_101A0B1C0);
      v58 = type metadata accessor for CRLWPStorageCRDTData(0);
      if ((*(*(v58 - 8) + 48))(v2, 1, v58) == 1)
      {

        sub_10000CAAC(v2, &unk_101A0B1C0);
        return;
      }

      sub_10000CAAC(v2, &unk_101A0B1C0);
      v103 = objc_opt_self();
      v59 = [v103 _atomicIncrementAssertCount];
      v107 = [objc_allocWithZone(NSString) init];
      sub_100604538(v53, &v107);
      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v61 = String._bridgeToObjectiveC()();

      v62 = [v61 lastPathComponent];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v106 = v53;
      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v66 = static OS_os_log.crlAssert;
      v67 = swift_initStackObject();
      *(v67 + 16) = xmmword_10146CA70;
      *(v67 + 56) = &type metadata for Int32;
      *(v67 + 64) = &protocol witness table for Int32;
      *(v67 + 32) = v59;
      v68 = sub_1005CF000();
      *(v67 + 96) = v68;
      v69 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
      *(v67 + 72) = v60;
      v70 = v105;
      *(v67 + 136) = &type metadata for String;
      *(v67 + 144) = v70;
      *(v67 + 104) = v69;
      *(v67 + 112) = v63;
      *(v67 + 120) = v65;
      *(v67 + 176) = &type metadata for UInt;
      *(v67 + 152) = 118;
      v71 = v107;
      *(v67 + 216) = v68;
      *(v67 + 224) = v69;
      *(v67 + 184) = &protocol witness table for UInt;
      *(v67 + 192) = v71;
      v72 = v60;
      v73 = v71;
      v74 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v75 = static os_log_type_t.error.getter();
      v76 = v106;
      sub_100005404(v66, &_mh_execute_header, v75, "Pasteboard object has text CRDT already. textCRDT=%@", 52, 2, v106);

      type metadata accessor for __VaListBuilder();
      v77 = swift_allocObject();
      v77[2] = 8;
      v77[3] = 0;
      v13 = v77 + 3;
      v77[4] = 0;
      v77[5] = 0;
      v18 = *(v76 + 16);
      if (!v18)
      {
LABEL_58:
        v92 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v93 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v94 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v95 = String._bridgeToObjectiveC()();

        [v103 handleFailureInFunction:v93 file:v94 lineNumber:118 isFatal:0 format:v95 args:v92];

        return;
      }

      v15 = 0;
      v20 = 40;
      while (1)
      {
        LODWORD(v14) = sub_100020E58((inited + 40 * v15), *(inited + 40 * v15 + 24));
        v78 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v79 = *v13;
        v80 = *(v78 + 16);
        v34 = __OFADD__(*v13, v80);
        v81 = *v13 + v80;
        if (v34)
        {
          goto LABEL_62;
        }

        v14 = v77[4];
        if (v14 >= v81)
        {
          goto LABEL_50;
        }

        if (v14 + 0x4000000000000000 < 0)
        {
          goto LABEL_65;
        }

        v82 = v77[5];
        if (2 * v14 > v81)
        {
          v81 = 2 * v14;
        }

        v77[4] = v81;
        if ((v81 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_66;
        }

        v83 = inited;
        v84 = v78;
        v85 = swift_slowAlloc();
        v86 = v85;
        v77[5] = v85;
        if (v82)
        {
          break;
        }

        v78 = v84;
        inited = v83;
        v20 = 40;
        if (!v86)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v88 = *(v78 + 16);
        if (v88)
        {
          v89 = (v78 + 32);
          v90 = *v13;
          do
          {
            v91 = *v89++;
            *&v86[8 * v90] = v91;
            v90 = *v13 + 1;
            if (__OFADD__(*v13, 1))
            {
              goto LABEL_60;
            }

            *v13 = v90;
          }

          while (--v88);
        }

        if (++v15 == v18)
        {
          goto LABEL_58;
        }
      }

      if (v85 != v82 || v85 >= &v82[8 * v79])
      {
        memmove(v85, v82, 8 * v79);
      }

      LODWORD(v14) = v77;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v78 = v84;
      inited = v83;
      v20 = 40;
LABEL_50:
      v86 = v77[5];
      if (!v86)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

    v30 = 0;
    inited = 40;
LABEL_6:
    LODWORD(v14) = sub_100020E58(&v106[5 * v30], v106[5 * v30 + 3]);
    v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v32 = *v20;
    v33 = *(v31 + 16);
    v34 = __OFADD__(*v20, v33);
    v35 = *v20 + v33;
    if (v34)
    {
      goto LABEL_61;
    }

    v13 = v31;
    v14 = *(v15 + 32);
    if (v14 >= v35)
    {
      goto LABEL_20;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_63;
    }

    v36 = *(v15 + 40);
    if (2 * v14 > v35)
    {
      v35 = 2 * v14;
    }

    *(v15 + 32) = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_64;
    }

    v37 = swift_slowAlloc();
    *(v15 + 40) = v37;
    if (v36)
    {
      if (v37 != v36 || v37 >= &v36[8 * v32])
      {
        memmove(v37, v36, 8 * v32);
      }

      LODWORD(v14) = v15;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_20:
      v37 = *(v15 + 40);
    }

    if (!v37)
    {
      break;
    }

    v39 = v13[2];
    if (!v39)
    {
LABEL_5:

      if (++v30 == v18)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }

    v40 = v13 + 4;
    v41 = *v20;
    while (1)
    {
      v42 = *v40++;
      *&v37[8 * v41] = v42;
      v41 = *v20 + 1;
      if (__OFADD__(*v20, 1))
      {
        break;
      }

      *v20 = v41;
      if (!--v39)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
}

void sub_10087B224(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
  v7 = *(*(v1 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData) + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs);
  v23 = _swiftEmptyArrayStorage;
  sub_1009FA384(*(v7 + 16));
  v18 = v1;
  v8 = *(*(v1 + v6) + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs);
  v9 = *(v8 + 16);

  v19 = v9;
  if (v9)
  {
    v10 = 0;
    v20 = v22 + 16;
    v21 = (v22 + 8);
    while (v10 < *(v8 + 16))
    {
      (*(v22 + 16))(v5, v8 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v10, v3);
      if (!*(a1 + 16) || (v11 = sub_10003E994(v5), (v12 & 1) == 0))
      {

        (*v21)(v5, v3);

        sub_1006B305C();
        swift_allocError();
        *v17 = 4;
        swift_willThrow();
        return;
      }

      v13 = *v21;
      v14 = *(*(a1 + 56) + 8 * v11);
      v15 = v3;
      v13(v5, v3);
      v16 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v10;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v15;
      if (v19 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    *(v18 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems) = v23;
  }
}

void sub_10087B4DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLWPStorageCRDTData(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0B1C0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v48 - v11;
  v13 = a1;
  v49 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v10);
    v48 = v2;
    sub_1005E0A78(&v4[*(v2 + 20)], v8);
    sub_100881158(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_1008811B8(&qword_101A0D160, type metadata accessor for CRLWPStorageCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100881158(v8, type metadata accessor for CRLWPStorageCRDTData);
    (*(v6 + 56))(v12, 0, 1, v5);
    v15 = v50;
    sub_10087A5F8();
    v16 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
    v17 = *(v15 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
    v18 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
    swift_beginAccess();

    sub_10002C638(v12, v17 + v18, &unk_101A0B1C0);
    swift_endAccess();

    v19 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
    v116 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
    v20 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
    v117 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
    v21 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
    v118 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
    v22 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
    v112 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
    v23 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
    v113 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
    v24 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
    v114 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
    v25 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
    v115 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
    v26 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
    v108 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
    v27 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
    v109 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
    v28 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
    v110 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
    v29 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
    v111 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
    v30 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
    v104 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
    v31 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
    v105 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
    v106 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
    v32 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
    v107 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
    v120[12] = v20;
    v120[13] = v21;
    v120[14] = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
    v120[8] = v23;
    v120[9] = v24;
    v120[10] = v25;
    v120[11] = v19;
    v120[4] = v27;
    v120[5] = v28;
    v120[6] = v29;
    v120[7] = v22;
    v120[0] = v31;
    v120[1] = v30;
    v120[2] = v32;
    v119 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
    v121 = *(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
    v120[3] = v26;
    v33 = v15;
    if (sub_100695050(v120) != 1)
    {
      v100 = v116;
      v101 = v117;
      v102 = v118;
      v103 = v119;
      v96 = v112;
      v97 = v113;
      v98 = v114;
      v99 = v115;
      v92 = v108;
      v93 = v109;
      v94 = v110;
      v95 = v111;
      v88 = v104;
      v89 = v105;
      v90 = v106;
      v91 = v107;
      goto LABEL_6;
    }

    v34 = *(v13 + v49);
    if (v34)
    {
      (*(*v34 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_100881158(v4, type metadata accessor for CRLWPShapeItemCRDTData);
      v100 = v84;
      v101 = v85;
      v102 = v86;
      v96 = v80;
      v97 = v81;
      v98 = v82;
      v99 = v83;
      v92 = v76;
      v93 = v77;
      v94 = v78;
      v95 = v79;
      v88 = v72;
      v89 = v73;
      v90 = v74;
      v103 = v87;
      v91 = v75;
LABEL_6:
      v68 = v100;
      v69 = v101;
      v70 = v102;
      v71 = v103;
      v64 = v96;
      v65 = v97;
      v66 = v98;
      v67 = v99;
      v60 = v92;
      v61 = v93;
      v62 = v94;
      v63 = v95;
      v56 = v88;
      v57 = v89;
      v58 = v90;
      v59 = v91;
      sub_10000BE14(&v104, &v72, &unk_101A0D830);
      sub_1005B981C(&unk_101A0D830);
      sub_100881200();
      CRType.copy(renamingReferences:)();
      v52[12] = v68;
      v52[13] = v69;
      v52[14] = v70;
      v53 = v71;
      v52[8] = v64;
      v52[9] = v65;
      v52[10] = v66;
      v52[11] = v67;
      v52[4] = v60;
      v52[5] = v61;
      v52[6] = v62;
      v52[7] = v63;
      v52[0] = v56;
      v52[1] = v57;
      v52[2] = v58;
      v52[3] = v59;
      sub_10000CAAC(v52, &unk_101A0D830);
      v54[12] = v84;
      v54[13] = v85;
      v54[14] = v86;
      v55 = v87;
      v54[8] = v80;
      v54[9] = v81;
      v54[10] = v82;
      v54[11] = v83;
      v54[4] = v76;
      v54[5] = v77;
      v54[6] = v78;
      v54[7] = v79;
      v54[0] = v72;
      v54[1] = v73;
      v35 = *(v33 + v16);
      v54[2] = v74;
      v54[3] = v75;
      v36 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 48);
      v38 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData);
      v37 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 16);
      v58 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 32);
      v59 = v36;
      v56 = v38;
      v57 = v37;
      v39 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 112);
      v41 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 64);
      v40 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 80);
      v62 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 96);
      v63 = v39;
      v60 = v41;
      v61 = v40;
      v42 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 176);
      v44 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 128);
      v43 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 144);
      v66 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 160);
      v67 = v42;
      v64 = v44;
      v65 = v43;
      v46 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 208);
      v45 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 224);
      v47 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 192);
      v71 = *(v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 240);
      v69 = v46;
      v70 = v45;
      v68 = v47;
      memmove((v35 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData), &v72, 0xF8uLL);

      sub_10000BE14(v54, &v51, &unk_101A0D830);
      sub_10000CAAC(&v56, &unk_101A0D830);

      sub_10000CAAC(v54, &unk_101A0D830);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10087BD0C(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v53 - v7;
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
  v58 = v1;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
  v13 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
  swift_beginAccess();
  sub_10000BE14(v12 + v13, v5, &unk_101A0B1C0);
  v14 = *(v9 + 48);
  v59 = v5;
  v60 = v8;
  if (v14(v5, 1, v8) == 1)
  {
    v54 = v14;
    v55 = v11;
    v56 = a1;
    v53 = objc_opt_self();
    v15 = [v53 _atomicIncrementAssertCount];
    *&v63[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v63);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_1005CF000();
    *(inited + 96) = v24;
    v25 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 96;
    v27 = *&v63[0];
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v53 handleFailureInFunction:v34 file:v35 lineNumber:96 isFatal:0 format:v36 args:v33];

    v11 = v55;
    v14 = v54;
  }

  v37 = v61;
  sub_100880C80(v59, v61);
  if (v14(v37, 1, v60) == 1)
  {
    sub_10000CAAC(v37, &unk_101A0B1C0);
    return 0;
  }

  else
  {
    sub_100880B2C(v37, v11);
    v39 = *(v58 + v57) + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData;
    v40 = *(v39 + 48);
    v42 = *v39;
    v41 = *(v39 + 16);
    v63[2] = *(v39 + 32);
    v63[3] = v40;
    v63[0] = v42;
    v63[1] = v41;
    v43 = *(v39 + 112);
    v45 = *(v39 + 64);
    v44 = *(v39 + 80);
    v63[6] = *(v39 + 96);
    v63[7] = v43;
    v63[4] = v45;
    v63[5] = v44;
    v46 = *(v39 + 176);
    v48 = *(v39 + 128);
    v47 = *(v39 + 144);
    v63[10] = *(v39 + 160);
    v63[11] = v46;
    v63[8] = v48;
    v63[9] = v47;
    v50 = *(v39 + 208);
    v49 = *(v39 + 224);
    v51 = *(v39 + 192);
    v64 = *(v39 + 240);
    v63[13] = v50;
    v63[14] = v49;
    v63[12] = v51;
    sub_10000BE14(v63, &v62, &unk_101A0D830);
    v52 = sub_10110D3E4(v11, v63);
    sub_10000CAAC(v63, &unk_101A0D830);
    sub_100881158(v11, type metadata accessor for CRLWPStorageCRDTData);
    return v52;
  }
}

uint64_t sub_10087C4D8(void *a1)
{
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v15[3] = type metadata accessor for CRContext();
    v15[0] = a1;
    v11 = a1;
    v12 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_100BC291C(v15, v9);
    v12(v14, 0);
    v15[0] = v1;
    sub_1008811B8(&qword_101A053E0, type metadata accessor for CRLPasteboardObjectData);
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

    return v13;
  }

  return result;
}

__n128 sub_10087C844@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_f64[0] = sub_100880890(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_10087C890(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v89 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v81 - v9;
  __chkstk_darwin(v10);
  v90 = v81 - v11;
  __chkstk_darwin(v12);
  v94 = v81 - v13;
  __chkstk_darwin(v14);
  v16 = v81 - v15;
  __chkstk_darwin(v17);
  v99 = v81 - v18;
  __chkstk_darwin(v19);
  v21 = v81 - v20;
  __chkstk_darwin(v22);
  v24 = v81 - v23;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) != 1)
  {
    return;
  }

  v82 = v1;
  v25 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID;
  swift_beginAccess();
  v100 = *(v6 + 16);
  v101 = v6 + 16;
  v100(v21, v82 + v25, v5);
  sub_100C03B78(v21, v24);
  v97 = *(v6 + 8);
  v98 = v6 + 8;
  v97(v21, v5);
  swift_beginAccess();
  v26 = *(v6 + 40);
  v27 = v82 + v25;
  v28 = v82;
  v84 = v6 + 40;
  v83 = v26;
  v26(v27, v24, v5);
  swift_endAccess();
  v29 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs;
  v30 = *(v28 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs);
  v31 = *(v30 + 16);
  v32 = _swiftEmptyArrayStorage;
  if (!v31)
  {
LABEL_34:
    *(v28 + v29) = v32;

    return;
  }

  v33 = v6;
  v81[0] = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs;
  v81[1] = v3;
  v103 = _swiftEmptyArrayStorage;

  v86 = v31;
  sub_100776524(0, v31, 0);
  v34 = 0;
  v32 = v103;
  v35 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap;
  v85 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v88 = v30 + v85;
  v91 = v16;
  v92 = (v6 + 32);
  v87 = v30;
  while (v34 < *(v30 + 16))
  {
    v95 = v32;
    v36 = *(v33 + 72);
    v100(v16, v88 + v36 * v34, v5);
    swift_beginAccess();
    v37 = *(a1 + v35);
    if (*(v37 + 16))
    {
      v38 = sub_10003E994(v16);
      if (v39)
      {
        v100(v99, *(v37 + 56) + v38 * v36, v5);
        goto LABEL_30;
      }
    }

    v96 = v36;
    v40 = v33;
    swift_endAccess();
    v41 = v99;
    UUID.init()();
    v42 = v94;
    v43 = v100;
    v100(v94, v16, v5);
    swift_beginAccess();
    v43(v90, v41, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a1 + v35);
    v45 = v102;
    *(a1 + v35) = 0x8000000000000000;
    v47 = sub_10003E994(v42);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_37;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v102;
        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_100AA4CB8();
        v54 = v102;
        if ((v51 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_100A8A7C4(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_10003E994(v94);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_41;
      }

      v47 = v52;
      v54 = v102;
      if ((v51 & 1) == 0)
      {
LABEL_17:
        v54[(v47 >> 6) + 8] |= 1 << v47;
        v55 = v47 * v96;
        v56 = v94;
        v100((v54[6] + v47 * v96), v94, v5);
        (*v92)(v54[7] + v55, v90, v5);
        v97(v56, v5);
        v57 = v54[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_39;
        }

        v54[2] = v59;
        goto LABEL_19;
      }
    }

    v83(v54[7] + v47 * v96, v90, v5);
    v97(v94, v5);
LABEL_19:
    *(a1 + v35) = v54;

    v60 = v93;
    v61 = v99;
    v62 = v100;
    v100(v93, v99, v5);
    v62(v89, v61, v5);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a1 + v35);
    v64 = v102;
    *(a1 + v35) = 0x8000000000000000;
    v65 = sub_10003E994(v60);
    v67 = v64[2];
    v68 = (v66 & 1) == 0;
    v58 = __OFADD__(v67, v68);
    v69 = v67 + v68;
    if (v58)
    {
      goto LABEL_38;
    }

    v70 = v66;
    v33 = v40;
    if (v64[3] >= v69)
    {
      v36 = v96;
      if ((v63 & 1) == 0)
      {
        v80 = v65;
        sub_100AA4CB8();
        v65 = v80;
      }
    }

    else
    {
      sub_100A8A7C4(v69, v63);
      v65 = sub_10003E994(v93);
      v36 = v96;
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_41;
      }
    }

    v16 = v91;
    v72 = v102;
    if (v70)
    {
      v83(v102[7] + v65 * v36, v89, v5);
      v97(v93, v5);
    }

    else
    {
      v102[(v65 >> 6) + 8] |= 1 << v65;
      v73 = v65 * v36;
      v74 = v72[6] + v65 * v36;
      v75 = v93;
      v100(v74, v93, v5);
      (*v92)(v72[7] + v73, v89, v5);
      v97(v75, v5);
      v76 = v72[2];
      v58 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v58)
      {
        goto LABEL_40;
      }

      v72[2] = v77;
      v36 = v96;
    }

    *(a1 + v35) = v72;

LABEL_30:
    swift_endAccess();
    v97(v16, v5);
    v32 = v95;
    v103 = v95;
    v79 = v95[2];
    v78 = v95[3];
    if (v79 >= v78 >> 1)
    {
      sub_100776524(v78 > 1, v79 + 1, 1);
      v32 = v103;
    }

    ++v34;
    v32[2] = v79 + 1;
    (*v92)(v32 + v85 + v79 * v36, v99, v5);
    v16 = v91;
    v30 = v87;
    if (v86 == v34)
    {

      v28 = v82;
      v29 = v81[0];
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10087D120()
{
  v1 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT, &unk_101A0B1C0);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 208);
  v11[12] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 192);
  v11[13] = v3;
  v11[14] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 224);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 240);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 128);
  v11[9] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 176);
  v11[10] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 160);
  v11[11] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 32);
  v11[3] = v9;
  sub_10000CAAC(v11, &unk_101A0D830);
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData, &qword_101A0B1E0);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLPasteboardObjectData()
{
  result = qword_101A05310;
  if (!qword_101A05310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10087D2C8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10087D3DC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10087D3DC()
{
  if (!qword_101A05320)
  {
    type metadata accessor for CRLWPStorageCRDTData(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A05320);
    }
  }
}

uint64_t sub_10087D44C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

__n128 sub_10087D4EC@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1)[3].n128_u8[0];
  result = (*v1)[1];
  v4 = (*v1)[2];
  *a1 = result;
  a1[1] = v4;
  a1[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_10087D504@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100094F5C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10087D5E0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x756F53656C797473;
  if (v1 != 5)
  {
    v3 = 0x7365725074786574;
  }

  v4 = 1954047348;
  if (v1 != 3)
  {
    v4 = 0x656C797473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6574496472616F62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10087D6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10088193C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10087D6F4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100094F5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10087D71C(uint64_t a1)
{
  v2 = sub_100880A28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10087D758(uint64_t a1)
{
  v2 = sub_100880A28();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10087D794(void *a1)
{
  v2 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v2 - 8);
  v89 = &v85 - v3;
  v90 = type metadata accessor for CRLWPStorageCRDTData(0);
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A053E8);
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v164 = &v85 - v8;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v85 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  sub_100020E58(a1, v16);
  v18 = dispatch thunk of Encoder.userInfo.getter();
  CodingUserInfoKey.init(rawValue:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  (*(v13 + 32))(v15, v11, v12);
  if (!*(v18 + 16) || (v19 = sub_1007C8514(v15), (v20 & 1) == 0))
  {

    (*(v13 + 8))(v15, v12);
    goto LABEL_8;
  }

  sub_100064288(*(v18 + 56) + 32 * v19, &v148);
  (*(v13 + 8))(v15, v12);

  type metadata accessor for CRContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1006B305C();
    swift_allocError();
    *v28 = 9;
    swift_willThrow();
    return;
  }

  v86 = v132;
  sub_100020E58(a1, a1[3]);
  sub_100880A28();
  v21 = v164;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID;
  v16 = v97;
  swift_beginAccess();
  v24 = v91;
  v23 = v92;
  v25 = v93;
  (*(v92 + 16))(v91, v16 + v22, v93);
  LOBYTE(v148) = 0;
  sub_1008811B8(&qword_1019F43C0, &type metadata accessor for UUID);
  v26 = v96;
  v27 = v94;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v27;
  if (v27)
  {

    (*(v23 + 8))(v24, v25);
    (*(v95 + 8))(v21, v26);
    return;
  }

  (*(v23 + 8))(v24, v25);
  LOBYTE(v148) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  *&v148 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs);
  LOBYTE(v132) = 2;

  sub_1005B981C(&qword_101A0A360);
  sub_100880B90(&qword_101A053F8, &qword_1019F43C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = v26;

  v29 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
  swift_beginAccess();
  v30 = v16 + v29;
  v31 = v89;
  sub_10000BE14(v30, v89, &unk_101A0B1C0);
  if ((*(v88 + 48))(v31, 1, v90) == 1)
  {
    sub_10000CAAC(v31, &unk_101A0B1C0);
  }

  else
  {
    sub_100880B2C(v31, v87);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v47, qword_101AD6348);
    sub_1008811B8(&qword_101A0D180, type metadata accessor for CRLWPStorageCRDTData);
    v55 = CRDT.serializedData(_:version:)();
    *&v148 = v55;
    v57 = v56;
    *(&v148 + 1) = v56;
    LOBYTE(v132) = 3;
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100881158(v87, type metadata accessor for CRLWPStorageCRDTData);
    sub_10002640C(v55, v57);
  }

  v32 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 208);
  v33 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 176);
  v144 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 192);
  v145 = v32;
  v34 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 208);
  v146 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 224);
  v35 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 144);
  v36 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 112);
  v140 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 128);
  v141 = v35;
  v37 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 144);
  v38 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 176);
  v142 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 160);
  v143 = v38;
  v39 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 80);
  v40 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 48);
  v136 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 64);
  v137 = v39;
  v41 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 80);
  v42 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 112);
  v138 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 96);
  v139 = v42;
  v43 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 16);
  v132 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData);
  v133 = v43;
  v44 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 48);
  v46 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData);
  v45 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 16);
  v134 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 32);
  v135 = v44;
  v160 = v144;
  v161 = v34;
  v162 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 224);
  v156 = v140;
  v157 = v37;
  v158 = v142;
  v159 = v33;
  v152 = v136;
  v153 = v41;
  v154 = v138;
  v155 = v36;
  v148 = v46;
  v149 = v45;
  v147 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 240);
  v163 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData + 240);
  v150 = v134;
  v151 = v40;
  if (sub_100695050(&v148) != 1)
  {
    v111 = v160;
    v112 = v161;
    v113 = v162;
    v114 = v163;
    v107 = v156;
    v108 = v157;
    v109 = v158;
    v110 = v159;
    v103 = v152;
    v104 = v153;
    v105 = v154;
    v106 = v155;
    v99 = v148;
    v100 = v149;
    v101 = v150;
    v102 = v151;
    v127 = v144;
    v128 = v145;
    v129 = v146;
    v130 = v147;
    v123 = v140;
    v124 = v141;
    v125 = v142;
    v126 = v143;
    v119 = v136;
    v120 = v137;
    v121 = v138;
    v122 = v139;
    v115 = v132;
    v116 = v133;
    v117 = v134;
    v118 = v135;
    sub_100880AD0(&v115, v98);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v48, qword_101AD6348);
    sub_100694290();
    v58 = CRValue.serializedData(_:version:)();
    v60 = v59;
    sub_10000CAAC(&v132, &unk_101A0D830);
    *&v99 = v58;
    *(&v99 + 1) = v60;
    v98[0] = 6;
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v58, v60);
  }

  LODWORD(v16) = *(v16 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind);
  if (v16 != 6)
  {
    LOBYTE(v115) = v16;
    LOBYTE(v99) = 5;
    sub_100880A7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v49 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  v50 = v97;
  swift_beginAccess();
  sub_10000BE14(v50 + v49, &v99, &qword_101A0B1E0);
  v17 = *(&v100 + 1);
  if (!*(&v100 + 1))
  {
    sub_10000CAAC(&v99, &qword_101A0B1E0);
    goto LABEL_25;
  }

  sub_100050F74(&v99, &v115);
  sub_100020E58(&v115, *(&v116 + 1));
  if (qword_1019F1520 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v51 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v51, qword_101AD6348);
  v52 = v86;
  v53 = CRValue.serializedData(_:version:)();
  if (v12)
  {
    (*(v95 + 8))(v164, v15);

    sub_100005070(&v115);
    return;
  }

  v83 = v53;
  *&v99 = v53;
  *(&v99 + 1) = v54;
  v84 = v54;
  v131 = 4;
  sub_1006D63D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10002640C(v83, v84);
  sub_100005070(&v115);
  v26 = v15;
LABEL_25:
  if ((v16 != 6) != (v17 != 0))
  {
    v94 = objc_opt_self();
    v61 = [v94 _atomicIncrementAssertCount];
    *&v115 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v115);
    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    v63 = [v62 lastPathComponent];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v65;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_10146CA70;
    *(v67 + 56) = &type metadata for Int32;
    *(v67 + 64) = &protocol witness table for Int32;
    *(v67 + 32) = v61;
    v68 = sub_1005CF000();
    *(v67 + 96) = v68;
    v69 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
    *(v67 + 104) = v69;
    v70 = v97;
    *(v67 + 72) = v97;
    *(v67 + 136) = &type metadata for String;
    v71 = sub_1000053B0();
    v72 = v93;
    *(v67 + 112) = v64;
    *(v67 + 120) = v72;
    *(v67 + 176) = &type metadata for UInt;
    *(v67 + 184) = &protocol witness table for UInt;
    *(v67 + 144) = v71;
    *(v67 + 152) = 283;
    v73 = v115;
    *(v67 + 216) = v68;
    *(v67 + 224) = v69;
    *(v67 + 192) = v73;
    v74 = v70;
    v75 = v73;
    v76 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v77, "Should have both or neither for preset information", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v78 = swift_allocObject();
    v78[2] = 8;
    v78[3] = 0;
    v78[4] = 0;
    v78[5] = 0;
    v79 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    [v94 handleFailureInFunction:v80 file:v81 lineNumber:283 isFatal:0 format:v82 args:v79];

    (*(v95 + 8))(v164, v96);
  }

  else
  {
    (*(v95 + 8))(v164, v26);
  }
}

uint64_t sub_10087E900(void *a1)
{
  v2 = 39;
  v3 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v3 - 8);
  v125 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = &v119 - v6;
  __chkstk_darwin(v7);
  v126 = &v119 - v8;
  v129 = type metadata accessor for UUID();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v119 - v11;
  v136 = sub_1005B981C(&qword_101A05408);
  v128 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v119 - v12;
  v13 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v13 - 8);
  *&v133 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  *&v134 = &v119 - v16;
  __chkstk_darwin(v17);
  v19 = &v119 - v18;
  v20 = type metadata accessor for CodingUserInfoKey();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v130 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v132 = &v119 - v24;
  __chkstk_darwin(v25);
  v27 = &v119 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v196 = a1;
  v140 = sub_100020E58(a1, v28);
  v141 = v29;
  v30 = dispatch thunk of Decoder.userInfo.getter();
  CodingUserInfoKey.init(rawValue:)();
  v31 = v21 + 48;
  v139 = *(v21 + 48);
  if (v139(v19, 1, v20) == 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v2 = v21 + 32;
  v32 = v19;
  v33 = *(v21 + 32);
  (v33)(v27, v32, v20);
  if (!*(v30 + 16) || (v34 = sub_1007C8514(v27), (v35 & 1) == 0))
  {

    (*(v21 + 8))(v27, v20);
    goto LABEL_12;
  }

  sub_100064288(*(v30 + 56) + 32 * v34, &v176);
  v36 = *(v21 + 8);
  v21 += 8;
  v122 = v36;
  v36(v27, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1006B305C();
    swift_allocError();
    *v45 = 11;
    swift_willThrow();
    v46 = v196;
    goto LABEL_13;
  }

  v120 = v160;
  v37 = dispatch thunk of Decoder.userInfo.getter();
  v121 = "preset information";
  v38 = v134;
  CodingUserInfoKey.init(rawValue:)();
  if (v139(v38, 1, v20) == 1)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = v132;
  v33();
  if (*(v37 + 16) && (v40 = sub_1007C8514(v39), (v41 & 1) != 0))
  {
    sub_100064288(*(v37 + 56) + 32 * v40, &v176);
    v122(v39, v20);

    v42 = swift_dynamicCast();
    v43 = v160;
    if (!v42)
    {
      v43 = 0;
    }

    v132 = v43;
    v44 = v42 ^ 1;
  }

  else
  {

    v122(v39, v20);
    v132 = 0;
    v44 = 1;
  }

  LODWORD(v134) = v44;
  v48 = dispatch thunk of Decoder.userInfo.getter();
  v49 = v133;
  CodingUserInfoKey.init(rawValue:)();
  if (v139(v49, 1, v20) == 1)
  {
    goto LABEL_50;
  }

  v50 = v130;
  (v33)(v130, v49, v20);
  v51 = v50;
  v52 = v196;
  v53 = v138;
  if (*(v48 + 16) && (v54 = sub_1007C8514(v51), (v55 & 1) != 0))
  {
    sub_100064288(*(v48 + 56) + 32 * v54, &v176);
    v122(v51, v20);

    v56 = swift_dynamicCast();
    if (v56)
    {
      v21 = v160;
    }

    else
    {
      v21 = 0;
    }

    v57 = v56 ^ 1;
  }

  else
  {

    v122(v51, v20);
    v21 = 0;
    v57 = 1;
  }

  if (v134)
  {
    sub_10068434C(v137, &off_10188A3B8, v192);
    v132 = v193;
  }

  if (v57)
  {
    sub_10068434C(v137, &off_10188A3B8, v194);
    v21 = v195;
  }

  v30 = sub_100020E58(v52, v52[3]);
  sub_100880A28();
  v58 = v131;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v58)
  {
    LOBYTE(v176) = 0;
    sub_1008811B8(&qword_1019F43A8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v176) = 1;
    LODWORD(v141) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&qword_101A0A360);
    LOBYTE(v160) = 2;
    sub_100880B90(&qword_101A05410, &qword_1019F43A8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v140 = v176;
    LOBYTE(v176) = 3;
    v59 = KeyedDecodingContainer.contains(_:)();
    if (v59)
    {
      LOBYTE(v160) = 3;
      sub_1006D6258();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v139 = v176;
      v62 = type metadata accessor for CRLWPStorageCRDTData(0);
      sub_1008811B8(&qword_101A0D180, type metadata accessor for CRLWPStorageCRDTData);
      v63 = v123;
      CRDT.init(serializedData:)();
      (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
      sub_100880C80(v63, v126);
      v53 = v138;
    }

    else
    {
      v60 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v60 - 8) + 56))(v126, 1, 1, v60);
    }

    LOBYTE(v160) = 6;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v144) = 6;
      sub_1006D6258();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      sub_100694290();
      CRValue.init(serializedData:)();
      v156 = v172;
      v157 = v173;
      v158 = v174;
      v159 = v175;
      v152 = v168;
      v153 = v169;
      v154 = v170;
      v155 = v171;
      v148 = v164;
      v149 = v165;
      v150 = v166;
      v151 = v167;
      v144 = v160;
      v145 = v161;
      v146 = v162;
      v147 = v163;
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v144, v118);
      v188 = v156;
      v189 = v157;
      v190 = v158;
      v191 = v159;
      v184 = v152;
      v185 = v153;
      v186 = v154;
      v187 = v155;
      v180 = v148;
      v181 = v149;
      v182 = v150;
      v183 = v151;
      v176 = v144;
      v177 = v145;
      v178 = v146;
      v179 = v147;
    }

    else
    {
      sub_1006950BC(&v176);
    }

    LOBYTE(v160) = 5;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v144) = 5;
      sub_100880C2C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v61 = v160;
    }

    else
    {
      v61 = 6;
    }

    LODWORD(v139) = v61;
    LOBYTE(v160) = 4;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      v64 = 0;
      v133 = 0u;
      v134 = 0u;
LABEL_43:
      v65 = v127;
      v66 = v129;
      (*(v127 + 16))(v124, v53, v129);
      v67 = v126;
      sub_10000BE14(v126, v125, &unk_101A0B1C0);
      v142[1] = v133;
      v142[0] = v134;
      v143 = v64;
      v30 = swift_allocObject();
      v68 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectOptions;
      sub_10000CAAC(v67, &unk_101A0B1C0);
      (*(v65 + 8))(v53, v66);
      (*(v128 + 8))(v135, v136);
      *(v30 + v68) = 7;
      v69 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
      v70 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v70 - 8) + 56))(v30 + v69, 1, 1, v70);
      v71 = v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData;
      sub_1006950BC(&v144);
      v72 = v157;
      *(v71 + 192) = v156;
      *(v71 + 208) = v72;
      *(v71 + 224) = v158;
      *(v71 + 240) = v159;
      v73 = v153;
      *(v71 + 128) = v152;
      *(v71 + 144) = v73;
      v74 = v155;
      *(v71 + 160) = v154;
      *(v71 + 176) = v74;
      v75 = v149;
      *(v71 + 64) = v148;
      *(v71 + 80) = v75;
      v76 = v151;
      *(v71 + 96) = v150;
      *(v71 + 112) = v76;
      v77 = v145;
      *v71 = v144;
      *(v71 + 16) = v77;
      v78 = v147;
      *(v71 + 32) = v146;
      *(v71 + 48) = v78;
      v79 = v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
      *v79 = 0u;
      *(v79 + 16) = 0u;
      *(v79 + 32) = 0;
      v80 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind;
      *(v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind) = 6;
      v81 = v132;
      *(v30 + 16) = v120;
      *(v30 + 24) = v81;
      *(v30 + 32) = v21;
      *(v30 + 40) = 0;
      *(v30 + 48) = 1;
      (*(v65 + 32))(v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID, v124, v129);
      *(v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_isSmartCopyPaste) = v141 & 1;
      *(v30 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs) = v140;
      swift_beginAccess();
      sub_10002C638(v125, v30 + v69, &unk_101A0B1C0);
      swift_endAccess();
      v82 = *(v71 + 208);
      v172 = *(v71 + 192);
      v173 = v82;
      v174 = *(v71 + 224);
      v175 = *(v71 + 240);
      v83 = *(v71 + 144);
      v168 = *(v71 + 128);
      v169 = v83;
      v84 = *(v71 + 176);
      v170 = *(v71 + 160);
      v171 = v84;
      v85 = *(v71 + 80);
      v164 = *(v71 + 64);
      v165 = v85;
      v86 = *(v71 + 112);
      v166 = *(v71 + 96);
      v167 = v86;
      v87 = *(v71 + 16);
      v160 = *v71;
      v161 = v87;
      v88 = *(v71 + 48);
      v162 = *(v71 + 32);
      v163 = v88;
      v89 = v189;
      *(v71 + 192) = v188;
      *(v71 + 208) = v89;
      *(v71 + 224) = v190;
      *(v71 + 240) = v191;
      v90 = v185;
      *(v71 + 128) = v184;
      *(v71 + 144) = v90;
      v91 = v187;
      *(v71 + 160) = v186;
      *(v71 + 176) = v91;
      v92 = v181;
      *(v71 + 64) = v180;
      *(v71 + 80) = v92;
      v93 = v183;
      *(v71 + 96) = v182;
      *(v71 + 112) = v93;
      v94 = v177;
      *v71 = v176;
      *(v71 + 16) = v94;
      v95 = v179;
      *(v71 + 32) = v178;
      *(v71 + 48) = v95;
      sub_10000CAAC(&v160, &unk_101A0D830);
      swift_beginAccess();
      sub_10002C638(v142, v79, &qword_101A0B1E0);
      swift_endAccess();
      *(v30 + v80) = v139;
      sub_100005070(v196);
      return v30;
    }

    LOBYTE(v144) = 4;
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v96 = v160;
    if (v139 != 6)
    {
      sub_100B69A54(v160, *(&v160 + 1), v139, &v160);
      sub_10002640C(v96, *(&v96 + 1));
      v133 = v161;
      v134 = v160;
      v64 = v162;
      goto LABEL_43;
    }

    v130 = *(&v160 + 1);
    *&v133 = v160;
    v131 = objc_opt_self();
    v2 = [v131 _atomicIncrementAssertCount];
    *&v160 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v160);
    StaticString.description.getter();
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    v98 = [v97 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v99;

    if (qword_1019F20A0 == -1)
    {
LABEL_46:
      *&v134 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_10146CA70;
      *(v100 + 56) = &type metadata for Int32;
      *(v100 + 64) = &protocol witness table for Int32;
      *(v100 + 32) = v2;
      v101 = sub_1005CF000();
      *(v100 + 96) = v101;
      v102 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
      *(v100 + 104) = v102;
      v103 = v123;
      *(v100 + 72) = v123;
      *(v100 + 136) = &type metadata for String;
      v104 = sub_1000053B0();
      v105 = v122;
      *(v100 + 112) = v31;
      *(v100 + 120) = v105;
      *(v100 + 176) = &type metadata for UInt;
      *(v100 + 184) = &protocol witness table for UInt;
      *(v100 + 144) = v104;
      *(v100 + 152) = 345;
      v106 = v103;
      v107 = v160;
      *(v100 + 216) = v101;
      *(v100 + 224) = v102;
      *(v100 + 192) = v107;
      v108 = v106;
      v109 = v107;
      v110 = static os_log_type_t.error.getter();
      v111 = v134;
      sub_100005404(v134, &_mh_execute_header, v110, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v100);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v112 = static os_log_type_t.error.getter();
      sub_100005404(v111, &_mh_execute_header, v112, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v113 = swift_allocObject();
      *(v113 + 16) = 8;
      *(v113 + 24) = 0;
      v134 = 0u;
      *(v113 + 32) = 0u;
      v114 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v115 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v116 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v117 = String._bridgeToObjectiveC()();

      [v131 handleFailureInFunction:v115 file:v116 lineNumber:345 isFatal:0 format:v117 args:v114];

      sub_10002640C(v133, v130);
      v64 = 0;
      v133 = 0u;
      v53 = v138;
      goto LABEL_43;
    }

LABEL_51:
    swift_once();
    goto LABEL_46;
  }

  v46 = v52;
LABEL_13:
  sub_100005070(v46);
  return v30;
}

uint64_t sub_10087FD98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10087E900(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10087FE2C()
{
  v1 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  v7 = [objc_allocWithZone(CRLDescription) initWithObject:v0];
  v52 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
  v9 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
  swift_beginAccess();
  sub_10000BE14(v8 + v9, v6, &unk_101A0B1C0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10);

  sub_10000CAAC(v6, &unk_101A0B1C0);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();

  [v7 addField:v12 value:v13];

  if (v11 != 1)
  {
    v14 = String._bridgeToObjectiveC()();
    sub_10000BE14(v8 + v9, v3, &unk_101A0B1C0);
    String.init<A>(describing:)();
    v15 = String._bridgeToObjectiveC()();

    [v7 addField:v14 value:v15];
  }

  v16 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10000BE14(v8 + v16, v53, &qword_101A0B1E0);
  v17 = v53[3];
  sub_10000CAAC(v53, &qword_101A0B1E0);
  if (v17)
  {
    v18 = *(v8 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind);
    if (v18 == 6)
    {
      v51 = objc_opt_self();
      v19 = [v51 _atomicIncrementAssertCount];
      v53[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v53);
      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v20 = String._bridgeToObjectiveC()();

      v21 = [v20 lastPathComponent];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v23;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v19;
      v26 = sub_1005CF000();
      *(inited + 96) = v26;
      v27 = sub_1008811B8(&qword_1019F52E0, sub_1005CF000);
      *(inited + 104) = v27;
      v28 = v50;
      *(inited + 72) = v50;
      *(inited + 136) = &type metadata for String;
      v29 = sub_1000053B0();
      v30 = v49;
      *(inited + 112) = v22;
      *(inited + 120) = v30;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v29;
      *(inited + 152) = 378;
      v31 = v53[0];
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v31;
      v32 = v28;
      v33 = v31;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v36 = swift_allocObject();
      v36[2] = 8;
      v36[3] = 0;
      v36[4] = 0;
      v36[5] = 0;
      v37 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      [v51 handleFailureInFunction:v38 file:v39 lineNumber:378 isFatal:0 format:v40 args:v37];
    }

    else
    {
      v39 = String._bridgeToObjectiveC()();
      LOBYTE(v53[0]) = v18;
      String.init<A>(describing:)();
      v40 = String._bridgeToObjectiveC()();

      [v7 addField:v39 value:v40];
    }
  }

  v41 = String._bridgeToObjectiveC()();
  type metadata accessor for UUID();

  Array.description.getter();

  v42 = String._bridgeToObjectiveC()();

  [v7 addField:v41 value:v42];

  v43 = String._bridgeToObjectiveC()();
  type metadata accessor for CRLBoardItem(0);

  Array.description.getter();

  v44 = String._bridgeToObjectiveC()();

  [v7 addField:v43 value:v44];

  v45 = [v7 descriptionString];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v46;
}

uint64_t sub_100880670(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_100776524(result, v5, 0);
  }

  return result;
}

uint64_t sub_1008806E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v8);
  v11 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
  v12 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
  v13 = *(a4 + 24);

  v13(v19, a3, a4);
  v14 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10002C638(v19, v12 + v14, &qword_101A0B1E0);
  swift_endAccess();

  v15 = *(a2 + v11);
  v16 = *(a4 + 16);

  *(v15 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind) = v16(a3, a4);

  return (*(v7 + 8))(v10, a3);
}

double sub_100880890@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *(v4 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);

  v8 = sub_10087C4D8(a1);
  if (v3)
  {
  }

  else
  {
    v11 = v8;
    v12 = v9;
    sub_1005B981C(&unk_101A22760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = 0;
    *(inited + 40) = v11;
    *(inited + 48) = v12;
    sub_100024E98(v11, v12);
    v19 = sub_100BD5754(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &unk_101A0B000);
    v14 = sub_100BD5554(_swiftEmptyArrayStorage);
    v18 = *(v7 + 16);
    v15 = *(v7 + 32);
    if (*(v4 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems))
    {
      v16 = *(v4 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems);
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    v17 = sub_100640564(v16);
    sub_10002640C(v11, v12);

    *a2 = v18;
    *(a2 + 16) = v15;
    *&result = 7;
    *(a2 + 24) = xmmword_101482B40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    *(a2 + 56) = v19;
    *(a2 + 64) = v14;
    *(a2 + 72) = v17;
  }

  return result;
}

unint64_t sub_100880A28()
{
  result = qword_101A053F0;
  if (!qword_101A053F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A053F0);
  }

  return result;
}

unint64_t sub_100880A7C()
{
  result = qword_101A05400;
  if (!qword_101A05400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05400);
  }

  return result;
}

uint64_t sub_100880B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100880B90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A0A360);
    sub_1008811B8(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100880C2C()
{
  result = qword_101A05418;
  if (!qword_101A05418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05418);
  }

  return result;
}

uint64_t sub_100880C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100880CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a2;
  v33 = a4;
  v34 = a1;
  v38 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v6 - 8);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for CodingUserInfoKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v32 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v37 = &v32 - v18;
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v45 = PropertyListDecoder.init()();
  CodingUserInfoKey.init(rawValue:)();
  v41 = *(v15 + 48);
  result = v41(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v23 = *(v15 + 32);
  v23(v21, v13, v14);
  v44 = ObjectType;
  v43[0] = a5;
  v24 = a5;
  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_100BC291C(v43, v21);
  v25(v42, 0);
  CodingUserInfoKey.init(rawValue:)();
  result = v41(v10, 1, v14);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = v37;
  v23(v37, v10, v14);
  v44 = &type metadata for UInt64;
  v43[0] = v38;
  v27 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_100BC291C(v43, v26);
  v27(v42, 0);
  v28 = v39;
  CodingUserInfoKey.init(rawValue:)();
  result = v41(v28, 1, v14);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v29 = v32;
  v23(v32, v28, v14);
  v44 = &type metadata for UInt64;
  v43[0] = v33;
  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_100BC291C(v43, v29);
  v30(v42, 0);
  type metadata accessor for CRLPasteboardObjectData();
  sub_1008811B8(&qword_101A05420, type metadata accessor for CRLPasteboardObjectData);
  v31 = v36;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v31)
  {
    return v43[0];
  }

  return result;
}

uint64_t sub_100881158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008811B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100881200()
{
  result = qword_101A05428;
  if (!qword_101A05428)
  {
    sub_1005C4E5C(&unk_101A0D830);
    sub_100694290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05428);
  }

  return result;
}

id sub_100881284(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v41 = &v41 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  sub_1006950BC(&v47);
  type metadata accessor for CRLPasteboardObjectData();
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectOptions) = 7;
  v12 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
  v10((v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT), 1, 1, v9);
  v13 = v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textPresetData;
  v14 = v60;
  *(v13 + 192) = v59;
  *(v13 + 208) = v14;
  *(v13 + 224) = v61;
  *(v13 + 240) = v62;
  v15 = v56;
  *(v13 + 128) = v55;
  *(v13 + 144) = v15;
  v16 = v58;
  *(v13 + 160) = v57;
  *(v13 + 176) = v16;
  v17 = v52;
  *(v13 + 64) = v51;
  *(v13 + 80) = v17;
  v18 = v54;
  *(v13 + 96) = v53;
  *(v13 + 112) = v18;
  v19 = v48;
  *v13 = v47;
  *(v13 + 16) = v19;
  v20 = v50;
  *(v13 + 32) = v49;
  *(v13 + 48) = v20;
  v21 = v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind;
  *(v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind) = 6;
  v23 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v23;
  *(v11 + 48) = *(a2 + 32);
  (*(v6 + 32))(v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_objectUUID, v8, v42);
  *(v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_isSmartCopyPaste) = 0;
  *(v11 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_boardItemUUIDs) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  sub_10002C638(v41, v11 + v12, &unk_101A0B1C0);
  swift_endAccess();
  v24 = *(v13 + 208);
  v63[12] = *(v13 + 192);
  v63[13] = v24;
  v63[14] = *(v13 + 224);
  v64 = *(v13 + 240);
  v25 = *(v13 + 144);
  v63[8] = *(v13 + 128);
  v63[9] = v25;
  v26 = *(v13 + 176);
  v63[10] = *(v13 + 160);
  v63[11] = v26;
  v27 = *(v13 + 80);
  v63[4] = *(v13 + 64);
  v63[5] = v27;
  v28 = *(v13 + 112);
  v63[6] = *(v13 + 96);
  v63[7] = v28;
  v29 = *(v13 + 16);
  v63[0] = *v13;
  v63[1] = v29;
  v30 = *(v13 + 48);
  v63[2] = *(v13 + 32);
  v63[3] = v30;
  v31 = v60;
  *(v13 + 192) = v59;
  *(v13 + 208) = v31;
  *(v13 + 224) = v61;
  *(v13 + 240) = v62;
  v32 = v56;
  *(v13 + 128) = v55;
  *(v13 + 144) = v32;
  v33 = v58;
  *(v13 + 160) = v57;
  *(v13 + 176) = v33;
  v34 = v52;
  *(v13 + 64) = v51;
  *(v13 + 80) = v34;
  v35 = v54;
  *(v13 + 96) = v53;
  *(v13 + 112) = v35;
  v36 = v48;
  *v13 = v47;
  *(v13 + 16) = v36;
  v37 = v50;
  *(v13 + 32) = v49;
  *(v13 + 48) = v37;
  sub_10000CAAC(v63, &unk_101A0D830);
  swift_beginAccess();
  sub_10002C638(v45, v21, &qword_101A0B1E0);
  swift_endAccess();
  *(v11 + v22) = 6;
  v38 = type metadata accessor for CRLPasteboardObject();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems] = 0;
  *&v39[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData] = v11;
  *&v39[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_context] = v43;
  v44.receiver = v39;
  v44.super_class = v38;
  return objc_msgSendSuper2(&v44, "init");
}

uint64_t getEnumTagSinglePayload for CRLSmartStrokeData.SmartStrokeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLSmartStrokeData.SmartStrokeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100881838()
{
  result = qword_101A05438;
  if (!qword_101A05438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05438);
  }

  return result;
}

unint64_t sub_100881890()
{
  result = qword_101A05440;
  if (!qword_101A05440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05440);
  }

  return result;
}

unint64_t sub_1008818E8()
{
  result = qword_101A05448;
  if (!qword_101A05448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05448);
  }

  return result;
}

uint64_t sub_10088193C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101570180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574496472616F62 && a2 == 0xEA0000000000736DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F53656C797473 && a2 == 0xEB00000000656372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365725074786574 && a2 == 0xEA00000000007465)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_100881B90()
{
  result = qword_101A05450;
  if (!qword_101A05450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05450);
  }

  return result;
}

void *sub_100881BE4(uint64_t a1)
{
  v1 = sub_1007891CC(a1);
  v2 = v1[2];
  if (v2)
  {
    v3 = (v1 + 4);
    v4 = _swiftEmptyArrayStorage;
    v5 = 0.0;
    while (1)
    {
      sub_1007894E0(v3, v23);
      v6 = v25;
      v18 = v24;
      v7 = v24;
      sub_100020E58(v23, v24);
      v8 = *(v6 + 16);
      v21 = v18;
      v22 = v6;
      sub_10002C58C(v20);
      v8(v7, v6, v5);
      v9 = v24;
      sub_100020E58(v23, v24);
      v10 = (*(*(*(&v9 + 1) + 8) + 40))(v9);
      sub_1005B981C(&qword_101A009D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v19 = v21;
      v12 = v21;
      v13 = sub_100020E58(v20, v21);
      *(inited + 56) = v19;
      v14 = sub_10002C58C((inited + 32));
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      v15 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v17 = v4[3] >> 1, v17 <= v15))
      {
        result = sub_100B364B4(result, v15 + 1, 1, v4);
        v4 = result;
        v17 = result[3] >> 1;
      }

      if (v17 <= v4[2])
      {
        break;
      }

      v5 = v5 + v10;
      sub_1005B981C(&qword_1019F7320);
      swift_arrayInitWithCopy();

      ++v4[2];
      sub_100005070(v20);
      sub_100005070(v23);
      v3 += 48;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100881E5C(uint64_t a1)
{
  v1 = sub_100881BE4(a1);
  v2 = v1[2];
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v3 = _swiftEmptyArrayStorage;
  for (i = (v1 + 4); ; i += 40)
  {
    sub_10000630C(i, v16);
    v6 = v17;
    v7 = v18;
    sub_100020E58(v16, v17);
    v8 = (*(v7 + 40))(v6, v7);
    result = sub_100005070(v16);
    v9 = *(v8 + 16);
    v10 = v3[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v3[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_100B36A2C(result, v12, 1, v3);
      v3 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((v3[3] >> 1) - v3[2] < v9)
        {
          goto LABEL_23;
        }

        sub_1005B981C(&qword_1019F5870);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v3[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_24;
          }

          v3[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10088201C(uint64_t a1)
{
  v1 = sub_100881BE4(a1);
  v2 = v1;
  v3 = v1[2];
  if (!v3)
  {
  }

  result = sub_10000630C((v1 + 4), &v14);
  if (v3 == 1)
  {
LABEL_3:

    sub_100050F74(&v14, &v17);
    v5 = v18;
    v6 = v19;
    sub_100020E58(&v17, v18);
    (*(*(v6 + 8) + 40))(v5);
    return sub_100005070(&v17);
  }

  else
  {
    v7 = (v2 + 9);
    v8 = 1;
    while (v8 < v2[2])
    {
      sub_10000630C(v7, &v17);
      v10 = v15;
      v9 = v16;
      sub_100020E58(&v14, v15);
      v11 = (*(*(v9 + 8) + 40))(v10);
      v13 = v18;
      v12 = v19;
      sub_100020E58(&v17, v18);
      if (v11 >= (*(*(v12 + 8) + 40))(v13))
      {
        result = sub_100005070(&v17);
      }

      else
      {
        sub_100005070(&v14);
        result = sub_100050F74(&v17, &v14);
      }

      ++v8;
      v7 += 40;
      if (v3 == v8)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_1008821BC(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100789900(v4, &v22);
      v17[0] = v22;
      v17[1] = v23;
      v18 = v24;
      if (*(&v23 + 1))
      {
        sub_100050F74(v17, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_100B364B4(0, v5[2] + 1, 1, v5);
          v25 = v5;
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          v5 = sub_100B364B4((v7 > 1), v8 + 1, 1, v5);
          v25 = v5;
        }

        v9 = v20;
        v10 = v21;
        v11 = sub_10002A948(v19, v20);
        v12 = __chkstk_darwin(v11);
        v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14, v12);
        sub_100725200(v8, v14, &v25, v9, v10);
        sub_100005070(v19);
      }

      else
      {
        sub_100882398(v17);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return a2;
}

uint64_t sub_100882398(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A09F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100882410()
{
  v1 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData();
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 imageInfo];
  if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A25280)
  {
    v9 = result;
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v3, v7);
    sub_100885B18(v3, type metadata accessor for CRLImageItemAssetData);
    v10 = *&v7[*(v4 + 20)];

    sub_100885B18(v7, type metadata accessor for CRLAssetData);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1008826E4()
{
  v1 = v0;
  v2 = [v0 imageInfo];
  v3 = sub_100BB30D8();
  v4 = [objc_opt_self() sharedPool];
  v5 = [v4 providerForAsset:v3 shouldValidate:1];

  [v5 naturalSize];
  v7 = v6;

  v8 = [v1 imageInfo];
  v9 = sub_100BBF54C();
  if (v9)
  {
    v10 = v9;
    v11 = [v10 geometry];
    v12 = *(**&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v14 = v12(v13);

    v15 = [v11 geometryWithParentGeometry:v14];
  }

  else
  {
    v16 = *(**&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v15 = v16(v17);
  }

  [v15 size];
  v19 = v18;

  v20 = [v1 imageInfo];
  v21 = *(**&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v23 = v21(v22);

  [v23 size];
  v25 = v24;

  return floor(v7 * (v19 / v25));
}

uint64_t sub_1008829A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 canvas];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 boardItemOwner];

  if (!v15)
  {
    goto LABEL_15;
  }

  type metadata accessor for CRLBoard(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_15:
    v42 = objc_opt_self();
    v43 = [v42 _atomicIncrementAssertCount];
    *&v177.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v177);
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v43;
    v52 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v52;
    v53 = sub_1005CF04C();
    *(inited + 104) = v53;
    *(inited + 72) = v44;
    *(inited + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(inited + 112) = v47;
    *(inited + 120) = v49;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v54;
    *(inited + 152) = 61;
    a = v177.a;
    *(inited + 216) = v52;
    *(inited + 224) = v53;
    *(inited + 192) = a;
    v56 = v44;
    v57 = *&a;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v60[4] = 0;
    v60[5] = 0;
    v61 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    [v42 handleFailureInFunction:v62 file:v63 lineNumber:61 isFatal:0 format:v64 args:v61];

    return 0;
  }

  v158 = v16;
  v17 = [v5 interactiveCanvasController];
  if (!v17 || (v18 = v17, v19 = [v17 editingCoordinator], v18, !v19))
  {
LABEL_41:
    swift_unknownObjectRelease();
    return 0;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];
  v21 = [v5 imageInfo];
  v22 = sub_10110D5CC(v21);

  v157 = v19;
  if (!v22)
  {
LABEL_20:
    *&v161 = objc_opt_self();
    v65 = [v161 _atomicIncrementAssertCount];
    *&v177.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v177);
    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v72 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_10146CA70;
    *(v73 + 56) = &type metadata for Int32;
    *(v73 + 64) = &protocol witness table for Int32;
    *(v73 + 32) = v65;
    v74 = sub_100006370(0, &qword_1019F4D30);
    *(v73 + 96) = v74;
    v75 = sub_1005CF04C();
    *(v73 + 104) = v75;
    *(v73 + 72) = v66;
    *(v73 + 136) = &type metadata for String;
    v76 = sub_1000053B0();
    *(v73 + 112) = v69;
    *(v73 + 120) = v71;
    *(v73 + 176) = &type metadata for UInt;
    *(v73 + 184) = &protocol witness table for UInt;
    *(v73 + 144) = v76;
    *(v73 + 152) = 63;
    v77 = v177.a;
    *(v73 + 216) = v74;
    *(v73 + 224) = v75;
    *(v73 + 192) = v77;
    v78 = v66;
    v79 = *&v77;
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v80, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v81, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v82 = swift_allocObject();
    v82[2] = 8;
    v82[3] = 0;
    v82[4] = 0;
    v82[5] = 0;
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    [v161 handleFailureInFunction:v84 file:v85 lineNumber:63 isFatal:0 format:v86 args:v83];
    swift_unknownObjectRelease();

    return 0;
  }

  type metadata accessor for CRLImageItem();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    goto LABEL_20;
  }

  v24 = v23;
  v154 = v8;
  v25 = v22;
  v26 = sub_1011255D4(v25);
  v151 = v9;
  if (v26)
  {
    *&v160 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v27 = v24;
    v28 = *(**(v24 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);
    *&v161 = v25;

    v30 = v28(v29);
    v25 = v161;
    v24 = v27;
    v31 = v30;

    if (v31)
    {

      v32 = *(**(v27 + v160) + 448);

      v32(0);
      v25 = v161;
    }
  }

  v33 = v25;
  v34 = sub_1011255D0(v33);
  v155 = v33;
  v156 = v24;
  if (v34)
  {
    v35 = *(v24 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v37 = result;
    sub_1005D0BD8(&v162);
    v187 = v172;
    v188 = v173;
    v189 = v174;
    v183 = v168;
    v184 = v169;
    v186 = v171;
    v185 = v170;
    v179 = v164;
    v180 = v165;
    v181 = v166;
    v182 = v167;
    v177 = v162;
    v178 = v163;
    v38 = *v35;
    *&v176.a = v35;
    v39 = *(v37 + 16);

    v39(&v177, v38, v37);

    v40 = v155;
    v41 = *(v156 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
    *(v156 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;
  }

  else
  {
  }

  v87 = sub_100BBF54C();
  if (v87)
  {
    v88 = v87;
    v89 = [v88 pathSource];
    objc_opt_self();
    v90 = swift_dynamicCastObjCClass();
    if (v90 && ([v90 shouldShowKnob] & 1) == 0)
    {
      v91 = sub_100BB9950(0.0);
      sub_100BB584C(v91);
    }
  }

  v153 = v15;
  Strong = [v5 imageInfo];
  b = 0.0;
  v94 = 1.0;
  v152 = Strong;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  do
  {
    v99 = *((swift_isaMask & *Strong) + 0xE0);
    v100 = Strong;
    v101 = v99();
    [v101 transform];
    v160 = *&v162.c;
    v161 = *&v162.a;
    v159 = *&v162.tx;

    v162.a = v94;
    v162.b = b;
    v162.c = c;
    v162.d = d;
    v162.tx = tx;
    v162.ty = ty;
    *&v176.a = v161;
    *&v176.c = v160;
    *&v176.tx = v159;
    CGAffineTransformConcat(&v175, &v162, &v176);
    v94 = v175.a;
    b = v175.b;
    c = v175.c;
    d = v175.d;
    tx = v175.tx;
    ty = v175.ty;
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  while (Strong);

  v162.a = v94;
  v162.b = b;
  v162.c = c;
  v162.d = d;
  v162.tx = tx;
  v162.ty = ty;
  v102 = -sub_100139980(&v162);
  v103 = [v5 imageInfo];
  v104 = *(**&v103[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v106 = v104(v105);

  [v106 position];
  v108 = v107;
  v110 = v109;

  v111 = [v5 imageInfo];
  v112 = *(**&v111[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v114 = v112(v113);

  [v114 size];
  v116 = v115;
  v118 = v117;

  v119 = [v5 imageInfo];
  v120 = *(**&v119[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v122 = v120(v121);

  v123 = [v122 horizontalFlip];

  v124 = [v5 imageInfo];
  v125 = *(**&v124[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v127 = v125(v126);

  v128 = [v127 verticalFlip];

  v129 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:v123 heightValid:v128 horizontalFlip:v108 verticalFlip:v110 angle:{v116, v118, v102}];
  v130 = v156;
  if ((sub_1011255D4(v129) & 1) != 0 && (v131 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v132 = *(**(v130 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v133 = , v134 = v132(v133), , sub_100006370(0, &unk_1019F5730), v135 = static NSObject.== infix(_:_:)(), v134, (v135 & 1) == 0))
  {
    v137 = *(**(v130 + v131) + 304);

    v137(v129);
    v136 = v155;
  }

  else
  {
    v136 = v155;
  }

  v138 = objc_allocWithZone(CRLCanvasImager);
  v139 = [v138 initWithBoard:v158];
  sub_1005B981C(&unk_1019F4D60);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_101465920;
  *(v140 + 32) = v130;
  v141 = v136;
  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v139 setInfos:isa];

  [v139 setScaledImageSize:{a3, a4}];
  v143 = sub_100BB2384();
  v144 = v154;
  if (v143)
  {
    v145 = v143;
    static UTType.pdf.getter();
    UTType.identifier.getter();
    (*(v151 + 8))(v12, v144);
    v146 = String._bridgeToObjectiveC()();

    v147 = [v145 hasRepresentationConformingToTypeIdentifier:v146 fileOptions:0];

    if (v147)
    {
      v148 = [v139 pdfData];
      if (v148)
      {
        v149 = v148;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        return 0;
      }

      goto LABEL_41;
    }
  }

  v150 = [v139 newImage];
  swift_unknownObjectRelease();

  return v150;
}

id sub_100883B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v222 = a2;
  v223 = a3;
  v215 = a1;
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v206 = &v187 - v4;
  v5 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v5 - 8);
  v214 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v7 - 8);
  v212 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v216 = (&v187 - v10);
  v11 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v11 - 8);
  v200 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v208 = &v187 - v14;
  v221 = type metadata accessor for URL();
  v15 = *(v221 - 8);
  __chkstk_darwin(v221 - 8);
  v190 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v191 = &v187 - v18;
  __chkstk_darwin(v19);
  v193 = &v187 - v20;
  __chkstk_darwin(v21);
  v207 = &v187 - v22;
  __chkstk_darwin(v23);
  v201 = &v187 - v24;
  __chkstk_darwin(v25);
  v202 = &v187 - v26;
  __chkstk_darwin(v27);
  v220 = &v187 - v28;
  __chkstk_darwin(v29);
  v198 = &v187 - v30;
  v31 = type metadata accessor for UTType();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v203 = &v187 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v195 = &v187 - v35;
  __chkstk_darwin(v36);
  v38 = &v187 - v37;
  static UTType.png.getter();
  v217 = UTType.preferredFilenameExtension.getter();
  v40 = v39;
  v204 = v32;
  v205 = v31;
  v196 = *(v32 + 8);
  v197 = v32 + 8;
  v196(v38, v31);
  v224 = v40;
  if (v40)
  {
    goto LABEL_4;
  }

  v218 = v15;
  v41 = objc_opt_self();
  LODWORD(v42) = [v41 _atomicIncrementAssertCount];
  v226[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v226);
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 lastPathComponent];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v49 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v42;
    v51 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v51;
    v52 = sub_1005CF04C();
    *(inited + 104) = v52;
    *(inited + 72) = v43;
    *(inited + 136) = &type metadata for String;
    v53 = sub_1000053B0();
    *(inited + 112) = v46;
    *(inited + 120) = v48;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v53;
    *(inited + 152) = 132;
    v54 = v226[0];
    *(inited + 216) = v51;
    *(inited + 224) = v52;
    *(inited + 192) = v54;
    v55 = v43;
    v56 = v54;
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v58, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v59 = swift_allocObject();
    v59[2] = 8;
    v59[3] = 0;
    v59[4] = 0;
    v59[5] = 0;
    v60 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v61 file:v62 lineNumber:132 isFatal:0 format:v63 args:v60];

    v224 = 0xE300000000000000;
    v217 = 6778480;
    v15 = v218;
LABEL_4:
    v64 = [v225 imageInfo];
    v65 = sub_100BBF54C();
    v219 = v65;

    if (v65)
    {
      v66 = [v225 imageInfo];
      LODWORD(v218) = sub_100BB60A8();
    }

    else
    {
      LODWORD(v218) = 0;
    }

    v67 = v225;
    v68 = [v225 imageInfo];
    v69 = *(**&v68[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v71 = v69(v70);

    [v71 angle];
    v73 = v72;

    v74 = [v67 imageInfo];
    v75 = *(**&v74[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v77 = v75(v76);

    v78 = [v77 horizontalFlip];

    v79 = v15;
    if ((v78 & 1) == 0)
    {
      v91 = [v225 imageInfo];
      v92 = *(**&v91[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

      v94 = v92(v93);
      v79 = v15;
      v95 = v94;

      v96 = [v95 verticalFlip];

      if (!(v218 & 1 | (v73 != 0.0)) && !v96)
      {

        v97 = [v225 imageInfo];
        v98 = sub_10125B790(v215, v222, v223);

        return v98;
      }
    }

    v80 = objc_allocWithZone(CRLTemporaryDirectory);
    v226[0] = 0;
    v48 = [v80 initWithError:v226];
    v81 = v226[0];
    v188 = v48;
    if (!v48)
    {
      v82 = v81;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v48 = 0;
    }

    v189 = 0;
    v42 = String._bridgeToObjectiveC()();
    v83 = [v42 stringByDeletingPathExtension];

    v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v213 = v84;

    LODWORD(v42) = v225;
    v85 = sub_1008826E4();
    v210 = sub_1008829A8(v85, v86, v85, v86);
    v211 = v87;
    v46 = v88;
    v41 = &unk_101A21000;
    v192 = v88 >> 60;
    v209 = v48;
    if (v88 >> 60 == 15)
    {
      if (v65)
      {
        v42 = v219;
        v89 = [v42 pathSource];
        v90 = [v89 isRectangular];

        if (v90)
        {
        }

        else
        {
          v100 = [v42 pathSource];
          objc_opt_self();
          v101 = swift_dynamicCastObjCClass();
          if (!v101)
          {

            goto LABEL_26;
          }

          v102 = [v101 shouldShowKnob];

          if (v102)
          {
            goto LABEL_26;
          }
        }
      }

      if (v73 != 0.0)
      {
        goto LABEL_26;
      }
    }

    v103 = [v225 imageInfo];
    v43 = *&v103[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (*v43 != &off_101A25280)
    {
      __break(1u);
      goto LABEL_88;
    }

    v104 = v103;
    v105 = v46;
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    v106 = v214;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v106, v216);
    sub_100885B18(v106, type metadata accessor for CRLImageItemAssetData);
    v107 = [v225 imageInfo];
    v108 = *&v107[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];

    v109 = *&v108[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v109 + 16));
    v110 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v111 = *&v108[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v111)
    {
      v112 = *&v108[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v113 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v114 = v108;
      v115 = sub_10001F1A0(v114);

      v116 = *&v108[v110];
      *&v108[v110] = v115;
      v112 = v115;

      v111 = 0;
    }

    v117 = *(v109 + 16);
    v118 = v111;
    os_unfair_lock_unlock(v117);
    v119 = v208;
    v120 = v216;
    sub_10108CAF4(v216, 0, 3, 0, 0, v208);

    sub_100885B18(v120, type metadata accessor for CRLAssetData);
    v121 = v221;
    v46 = v105;
    if ((*(v79 + 48))(v119, 1, v221) != 1)
    {
      v127 = v198;
      (*(v79 + 32))(v198, v119, v121);
      v223 = URL.pathExtension.getter();
      v129 = v128;
      (*(v79 + 8))(v127, v121);
      v48 = v209;
      if (!v209)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

    sub_10000CAAC(v119, &unk_1019F33C0);
    v48 = v209;
LABEL_26:
    v122 = String._bridgeToObjectiveC()();
    v123 = [v122 pathExtension];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static UTType.data.getter();
    v124 = v206;
    UTType.init(filenameExtension:conformingTo:)();
    v125 = v204;
    v126 = v205;
    if ((*(v204 + 48))(v124, 1, v205) == 1)
    {
      sub_10000CAAC(v124, &unk_1019F8DB0);
      goto LABEL_36;
    }

    v132 = v195;
    (*(v125 + 32))(v195, v124, v126);
    sub_1005B981C(&qword_101A054A0);
    *(swift_allocObject() + 16) = xmmword_10146BDE0;
    static UTType.png.getter();
    static UTType.heic.getter();
    v133 = sub_100CDBAF0();

    if ((v133 & 1) == 0)
    {
      break;
    }

    v134 = String._bridgeToObjectiveC()();
    v135 = [v134 pathExtension];

    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;

    v129 = v137;
    v196(v132, v126);
    v121 = v221;
    if (!v48)
    {
      goto LABEL_29;
    }

LABEL_37:
    v199 = v46;
    v42 = [v48 URL];
    v46 = v129;
    v43 = v207;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v138 = v201;
    URL.appendingPathComponent(_:)();
    v139 = *(v79 + 8);
    (v139)(v43, v121);
    v140 = v202;
    v208 = v46;
    URL.appendingPathExtension(_:)();
    v222 = v79 + 8;
    v216 = v139;
    (v139)(v138, v121);
    v218 = v79;
    v141 = *(v79 + 32);
    LODWORD(v42) = v220;
    v141(v220, v140, v121);
    if (v192 <= 0xE)
    {
      v143 = v211;
      v43 = v199;
      sub_100024E98(v211, v199);
      v144 = v189;
      Data.write(to:options:)();
      v142 = &unk_101A21000;
      if (v144)
      {
        sub_100025870(v143, v43);

        v206 = 0;
        v48 = 0;
      }

      else
      {
        if (URL.isFileURL.getter())
        {
          v145 = URL.path.getter();
        }

        else
        {
          v145 = URL.absoluteString.getter();
        }

        v206 = v145;
        v48 = v146;
        sub_100025870(v143, v199);
      }
    }

    else
    {
      v206 = 0;
      v48 = 0;
      v142 = &unk_101A21000;
    }

    v147 = [v225 imageInfo];
    v41 = *&v147[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (*v41 == &off_101A25280)
    {
      v148 = v147;
      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0);
      v149 = v214;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_1008786E0(v149, v212);
      sub_100885B18(v149, type metadata accessor for CRLImageItemAssetData);
      v150 = *&v148[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];
      v151 = *&v150[v142[300]];
      os_unfair_lock_lock(*(v151 + 16));
      v152 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v153 = *&v150[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      if (v153)
      {
        v154 = *&v150[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      }

      else
      {
        v155 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v156 = v150;
        v157 = sub_10001F1A0(v156);

        v158 = *&v150[v152];
        *&v150[v152] = v157;
        v154 = v157;

        v153 = 0;
      }

      v159 = *(v151 + 16);
      v160 = v153;
      os_unfair_lock_unlock(v159);
      v161 = v200;
      v162 = v212;
      sub_10108CAF4(v212, 0, 3, 0, 0, v200);

      sub_100885B18(v162, type metadata accessor for CRLAssetData);
      v163 = v221;
      if ((*(v218 + 48))(v161, 1, v221) == 1)
      {

        sub_10000CAAC(v161, &unk_1019F33C0);
        v164 = 0;
      }

      else
      {
        v165 = v193;
        v141(v193, v161, v163);
        v164 = sub_10126BDEC(v166);

        (v216)(v165, v163);
      }

      v167 = v210;
      v168 = v218;
      if (v210)
      {
        v169 = v210;

        v170 = v169;
        if (URL.isFileURL.getter())
        {
          URL.path.getter();
        }

        else
        {
          URL.absoluteString.getter();
        }

        v171 = String._bridgeToObjectiveC()();

        if (v164)
        {

          v172.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v172.super.isa = 0;
        }

        v173 = sub_100511630(v170, v171, v172.super.isa);

        if (v173)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_64:
          v174 = v215;
LABEL_65:
          URL.init(fileURLWithPath:)();

          sub_100025870(v211, v199);
          (v216)(v220, v163);
          (*(v168 + 56))(v174, 0, 1, v163);
          return v209;
        }

        v167 = v210;
      }

      else if (v48)
      {

        v170 = 0;
        goto LABEL_64;
      }

      if (v223 == v217 && v208 == v224)
      {

        v175 = v211;
        goto LABEL_71;
      }

      v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v175 = v211;
      if ((v176 & 1) != 0 || !v167)
      {
LABEL_71:

        v174 = v215;
      }

      else
      {

        v179 = [v209 URL];
        v180 = v190;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v181 = v207;
        URL.appendingPathComponent(_:)();

        v182 = v216;
        (v216)(v180, v163);
        v183 = v191;
        URL.appendingPathExtension(_:)();

        v182(v181, v163);
        if (URL.isFileURL.getter())
        {
          URL.path.getter();
        }

        else
        {
          URL.absoluteString.getter();
        }

        v184 = String._bridgeToObjectiveC()();

        if (v164)
        {
          v185.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v185.super.isa = 0;
        }

        v174 = v215;
        v186 = sub_100511630(v167, v184, v185.super.isa);

        if (v186)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v163 = v221;
          (v216)(v183, v221);
          v170 = v167;
          goto LABEL_65;
        }

        v163 = v221;
        (v216)(v183, v221);
        v175 = v211;
      }

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v177 = static OS_os_log.crlDefault;
      v178 = static os_log_type_t.error.getter();
      sub_100005404(v177, &_mh_execute_header, v178, "unable to make temp file for caching copy of masked image to temp", 65, 2, _swiftEmptyArrayStorage);

      sub_100025870(v175, v199);
      (v216)(v220, v163);
      (*(v168 + 56))(v174, 1, 1, v163);
      return 0;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v196(v132, v126);
LABEL_36:
  v121 = v221;
  v129 = v224;

  v223 = v217;
  if (v48)
  {
    goto LABEL_37;
  }

LABEL_29:

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v130 = static OS_os_log.crlDefault;
  v131 = static os_log_type_t.error.getter();
  sub_100005404(v130, &_mh_execute_header, v131, "unable to make temp file url", 28, 2, _swiftEmptyArrayStorage);

  sub_100025870(v211, v46);
  (*(v79 + 56))(v215, 1, 1, v121);
  return 0;
}