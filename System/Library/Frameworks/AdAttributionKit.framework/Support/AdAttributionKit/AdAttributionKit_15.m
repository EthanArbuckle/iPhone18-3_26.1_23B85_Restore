uint64_t sub_100159E90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1432);
  v6 = *v2;
  v4[180] = v1;

  v7 = v4[167];
  if (v1)
  {
    v8 = sub_10015A348;
  }

  else
  {
    v4[181] = a1;
    v8 = sub_100159FCC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100159FCC()
{
  v1 = (v0 + 1136);
  if ((*(v0 + 1448) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = *(v0 + 1424);
    v31 = *(v0 + 1408);
    v32 = *(v0 + 1392);
    sub_10000DA7C((*(v0 + 1336) + 152), *(*(v0 + 1336) + 176));
    *(v0 + 256) = v31;
    *(v0 + 240) = v32;
    v3 = v0 + 240;
    *(v0 + 272) = v2;
    v4 = *(v0 + 1280);
    *(v0 + 408) = *(v0 + 1264);
    *(v0 + 424) = v4;
    *(v0 + 440) = *(v0 + 1296);
    *(v0 + 456) = *(v0 + 1312);
    v5 = *(v0 + 1216);
    *(v0 + 344) = *(v0 + 1200);
    *(v0 + 360) = v5;
    v6 = *(v0 + 1248);
    *(v0 + 376) = *(v0 + 1232);
    *(v0 + 392) = v6;
    v7 = *(v0 + 1152);
    *(v0 + 280) = *v1;
    *(v0 + 296) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 312) = *(v0 + 1168);
    *(v0 + 328) = v8;
    v9 = type metadata accessor for SnoutManager();
    v10 = swift_task_alloc();
    *(v0 + 1456) = v10;
    *v10 = v0;
    v11 = sub_10015A554;
  }

  else
  {
    sub_10015A8DC();
    v12 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    *(v0 + 1464) = v12;
    v33 = *(v0 + 1392);
    v14 = *(v0 + 1336);
    v15 = *(v0 + 720);
    v16 = *(v0 + 704);
    v17 = sub_1000C7C10(v12);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_10000DA7C((v14 + 152), *(v14 + 176));
    v24 = *(v0 + 1280);
    *(v0 + 184) = *(v0 + 1264);
    *(v0 + 200) = v24;
    *(v0 + 216) = *(v0 + 1296);
    v25 = *(v0 + 1216);
    *(v0 + 120) = *(v0 + 1200);
    *(v0 + 136) = v25;
    v26 = *(v0 + 1248);
    *(v0 + 152) = *(v0 + 1232);
    *(v0 + 168) = v26;
    v27 = *(v0 + 1152);
    *(v0 + 56) = *v1;
    *(v0 + 72) = v27;
    v28 = *(v0 + 1184);
    *(v0 + 88) = *(v0 + 1168);
    *(v0 + 16) = v33;
    v3 = v0 + 16;
    *(v0 + 24) = v17;
    *(v0 + 32) = v19;
    *(v0 + 40) = v21;
    *(v0 + 48) = v23;
    *(v0 + 232) = *(v0 + 1312);
    *(v0 + 104) = v28;
    v9 = type metadata accessor for SnoutManager();
    v10 = swift_task_alloc();
    *(v0 + 1472) = v10;
    *v10 = v0;
    v11 = sub_10015A6DC;
  }

  v10[1] = v11;
  v29 = *(v0 + 1328);

  return (sub_10016E27C)(v3, v29, 0, 0, v9, &off_100223858);
}

uint64_t sub_10015A348()
{
  v1 = *(v0 + 1440);
  *(v0 + 1464) = v1;
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 720);
  v5 = *(v0 + 704);
  v6 = sub_1000C7C10(v1);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10000DA7C((v3 + 152), *(v3 + 176));
  *(v0 + 16) = v2;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  *(v0 + 40) = v10;
  *(v0 + 48) = v12;
  *(v0 + 184) = *(v0 + 1264);
  *(v0 + 200) = *(v0 + 1280);
  *(v0 + 216) = *(v0 + 1296);
  *(v0 + 232) = *(v0 + 1312);
  *(v0 + 120) = *(v0 + 1200);
  *(v0 + 136) = *(v0 + 1216);
  *(v0 + 152) = *(v0 + 1232);
  *(v0 + 168) = *(v0 + 1248);
  *(v0 + 56) = *(v0 + 1136);
  *(v0 + 72) = *(v0 + 1152);
  *(v0 + 88) = *(v0 + 1168);
  *(v0 + 104) = *(v0 + 1184);
  v13 = type metadata accessor for SnoutManager();
  v14 = swift_task_alloc();
  *(v0 + 1472) = v14;
  *v14 = v0;
  v14[1] = sub_10015A6DC;
  v15 = *(v0 + 1328);

  return (sub_10016E27C)(v0 + 16, v15, 0, 0, v13, &off_100223858);
}

uint64_t sub_10015A554()
{
  v1 = *v0;
  v2 = *(*v0 + 1456);
  v3 = *(*v0 + 1336);
  v5 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10015A66C, v3, 0);
}

uint64_t sub_10015A66C()
{
  v1 = v0[173];
  v2 = v0[170];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10015A6DC()
{
  v1 = *v0;
  v2 = *(*v0 + 1472);
  v3 = *(*v0 + 1336);
  v5 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10015A7F4, v3, 0);
}

uint64_t sub_10015A7F4()
{
  v1 = v0[183];
  v2 = v0[173];
  v3 = v0[170];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[183];

  return v4();
}

uint64_t sub_10015A878()
{
  sub_10000DB58((v0 + 112));
  sub_10000DB58((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015A8DC()
{
  result = qword_10023DD98;
  if (!qword_10023DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DD98);
  }

  return result;
}

unint64_t sub_10015A940(uint64_t a1)
{
  result = sub_10015A8DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015A96C()
{
  result = qword_10023DDA0;
  if (!qword_10023DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DDA0);
  }

  return result;
}

id sub_10015AAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015AB64(void *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
  [a1 setRemoteObjectInterface:v4];

  v5 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon15ServiceProtocol_];
  [a1 setExportedInterface:v5];

  [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC20AttributionKitDaemon23ServiceListenerDelegate_serviceBridge)];
  [a1 resume];
  v6 = [a1 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    XPCClientProtocol.handleMessage(_:)(0, 0);
    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_10015ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015ADAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PostAppInstallTask()
{
  result = qword_10023DE68;
  if (!qword_10023DE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10015AE9C()
{
  result = sub_10015AF64();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10015AF64()
{
  result = qword_10023AE00;
  if (!qword_10023AE00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10023AE00);
  }

  return result;
}

uint64_t sub_10015AFC8()
{
  v1[108] = v0;
  v2 = type metadata accessor for PostAppInstallTask();
  v1[109] = v2;
  v3 = *(v2 - 8);
  v1[110] = v3;
  v1[111] = *(v3 + 64);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();

  return _swift_task_switch(sub_10015B09C, 0, 0);
}

uint64_t sub_10015B09C()
{
  v1 = *(v0 + 864);
  *(v0 + 548) = *(*(v0 + 872) + 44);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running post app install task", v4, 2u);
  }

  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 880);
  v8 = *(v0 + 864);

  v10 = v8[3];
  v9 = v8[4];
  v11 = v8[5];
  sub_1000B6DD0(v8, v5);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v0 + 912) = v13;
  sub_10015C650(v5, v13 + v12);
  v14 = swift_task_alloc();
  *(v0 + 920) = v14;
  *v14 = v0;
  v14[1] = sub_10015B258;

  return sub_10010FC40(v0 + 448, sub_10015C6B4, v13, v10, v9, v11);
}

uint64_t sub_10015B258()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v7 = *v1;
  *(*v1 + 928) = v0;

  v4 = *(v2 + 912);

  if (v0)
  {
    v5 = sub_10015BE48;
  }

  else
  {
    v5 = sub_10015B37C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015B37C()
{
  v1 = (v0 + 448);
  v2 = *(v0 + 528);
  *(v0 + 616) = *(v0 + 512);
  *(v0 + 632) = v2;
  v3 = *(v0 + 464);
  *(v0 + 552) = *(v0 + 448);
  *(v0 + 568) = v3;
  v4 = *(v0 + 496);
  *(v0 + 584) = *(v0 + 480);
  *(v0 + 600) = v4;
  *(v0 + 647) = *(v0 + 543);
  v5 = *(v0 + 568);
  *(v0 + 936) = v5;
  v6 = *(v0 + 576);
  *(v0 + 944) = v6;
  v7 = *(v0 + 648);
  *(v0 + 547) = v7;
  if (v6)
  {
    v8 = *(v0 + 864);
    v9 = *(v0 + 649);
    v10 = v8[13];
    v33 = v8[12];
    v11 = v8[14];
    v12 = swift_allocObject();
    *(v0 + 952) = v12;
    v13 = *v1;
    v14 = *(v0 + 464);
    *(v12 + 16) = *v1;
    *(v12 + 32) = v5;
    *(v12 + 40) = v6;
    v15 = *(v0 + 496);
    *(v12 + 48) = *(v0 + 480);
    *(v12 + 64) = v15;
    v16 = *(v0 + 528);
    *(v12 + 80) = *(v0 + 512);
    *(v12 + 96) = v16;
    *(v12 + 112) = v7;
    *(v12 + 113) = v9;
    *(v0 + 656) = v13;
    *(v0 + 672) = v14;
    v17 = *(v0 + 480);
    v18 = *(v0 + 496);
    v19 = *(v0 + 512);
    v20 = *(v0 + 528);
    *(v0 + 751) = *(v0 + 543);
    *(v0 + 720) = v19;
    *(v0 + 736) = v20;
    *(v0 + 688) = v17;
    *(v0 + 704) = v18;
    sub_10001B9B0(v0 + 656, v0 + 760);
    v21 = swift_task_alloc();
    *(v0 + 960) = v21;
    *v21 = v0;
    v21[1] = sub_10015B630;

    return sub_10010FAD4(v0 + 16, sub_10015C7B8, v12, v33, v10, v11);
  }

  else
  {
    v23 = *(v0 + 548);
    sub_1000B6DD0(*(v0 + 864), *(v0 + 896));
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 896);
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = *v27;
      sub_1000B6E34(v27);
      *(v28 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "No allocated token found for app %llu", v28, 0xCu);
    }

    else
    {
      sub_1000B6E34(*(v0 + 896));
    }

    v30 = *(v0 + 904);
    v31 = *(v0 + 896);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10015B630()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 968) = v0;

  v4 = *(v2 + 952);

  if (v0)
  {
    sub_10000DAF8(v2 + 552, &qword_10023AFD8, qword_1001B7F28);
    v5 = sub_10015BEB8;
  }

  else
  {
    v5 = sub_10015B76C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015B76C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(v0 + 384) = v2;
  *(v0 + 400) = v1;
  v4 = *(v0 + 112);
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v0 + 416) = v6;
  *(v0 + 432) = v5;
  v8 = *(v0 + 32);
  v7 = *(v0 + 48);
  v9 = *(v0 + 16);
  *(v0 + 320) = v8;
  *(v0 + 336) = v7;
  v10 = *(v0 + 48);
  v12 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 352) = v12;
  *(v0 + 368) = v11;
  v13 = *(v0 + 16);
  *(v0 + 256) = v4;
  *(v0 + 272) = v6;
  *(v0 + 288) = *(v0 + 144);
  *(v0 + 304) = v13;
  *(v0 + 192) = v10;
  *(v0 + 208) = v12;
  *(v0 + 224) = v3;
  *(v0 + 240) = v2;
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  if (sub_10014B138(v0 + 160) == 1)
  {
    v14 = &qword_10023AFD8;
    v15 = qword_1001B7F28;
    v16 = v0 + 552;
    goto LABEL_3;
  }

  if ((*(v0 + 184) != 0xD000000000000012 || 0x80000001001CB3C0 != *(v0 + 192)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000DAF8(v0 + 552, &qword_10023AFD8, qword_1001B7F28);
    v14 = &qword_10023CBD8;
    v15 = &qword_1001C1840;
    v16 = v0 + 304;
LABEL_3:
    sub_10000DAF8(v16, v14, v15);
    v17 = *(v0 + 864) + *(v0 + 548);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Ignoring post app install task";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  sub_10000DAF8(v0 + 304, &qword_10023CBD8, &qword_1001C1840);
  v22 = *(v0 + 548);
  v23 = *(v0 + 864);
  if (*(v0 + 296))
  {
    sub_10000DAF8(v0 + 552, &qword_10023AFD8, qword_1001B7F28);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Ghostback is already scheduled";
      goto LABEL_11;
    }

LABEL_12:

    v24 = *(v0 + 904);
    v25 = *(v0 + 896);

    v26 = *(v0 + 8);

    return v26();
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Post app install conversion attribution", v30, 2u);
  }

  v31 = swift_task_alloc();
  *(v0 + 976) = v31;
  *v31 = v0;
  v31[1] = sub_10015BAA8;
  v32 = *(v0 + 864);

  return sub_10015BF28();
}

uint64_t sub_10015BAA8()
{
  v1 = *(*v0 + 976);
  v3 = *v0;

  return _swift_task_switch(sub_10015BBA4, 0, 0);
}

uint64_t sub_10015BBA4()
{
  v1 = *(v0 + 944);
  sub_10000DA7C((*(v0 + 864) + 120), *(*(v0 + 864) + 144));
  v2 = swift_task_alloc();
  *(v0 + 984) = v2;
  *v2 = v0;
  v2[1] = sub_10015BC5C;
  v3 = *(v0 + 936);
  v4 = *(v0 + 547);

  return sub_100137450(v3, v1, v4);
}

uint64_t sub_10015BC5C()
{
  v2 = *(*v1 + 984);
  v3 = *v1;
  v3[124] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10015BDC0, 0, 0);
  }

  else
  {
    sub_10000DAF8((v3 + 69), &qword_10023AFD8, qword_1001B7F28);
    v4 = v3[113];
    v5 = v3[112];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10015BDC0()
{
  sub_10000DAF8((v0 + 69), &qword_10023AFD8, qword_1001B7F28);
  v1 = v0[124];
  v2 = v0[113];
  v3 = v0[112];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015BE48()
{
  v1 = v0[116];
  v2 = v0[113];
  v3 = v0[112];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015BEB8()
{
  v1 = v0[121];
  v2 = v0[113];
  v3 = v0[112];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015BF28()
{
  v1[2] = v0;
  v2 = type metadata accessor for PostAppInstallTask();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015BFBC, 0, 0);
}

uint64_t sub_10015BFBC()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = 1;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = swift_allocObject();
  *(v0 + 40) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = *(v0 + 64);
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_10015C0F0;

  return sub_10010E48C(sub_10010E48C, sub_10015C858, v8, v6, v5, v7);
}

uint64_t sub_10015C0F0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_10015C280;
  }

  else
  {
    v4 = sub_10015C220;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015C220()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015C280()
{
  v1 = v0[7];
  v2 = *(v0[3] + 44);
  sub_1000B6DD0(v0[2], v0[4]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[4];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    v10 = *v7;
    sub_1000B6E34(v7);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to add metadata mapping for app %llu with error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_1000B6E34(v0[4]);
  }

  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

void sub_10015C428(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE0D4(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10015C494()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10015AFC8();
}

uint64_t sub_10015C520()
{
  v1 = (type metadata accessor for PostAppInstallTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 56);

  v8 = *(v0 + v3 + 80);

  v9 = *(v0 + v3 + 104);

  sub_10000DB58((v0 + v3 + 120));
  v10 = v1[13];
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015C650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostAppInstallTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10015C6B4@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for PostAppInstallTask() - 8);
  v5 = *(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  result.n128_u64[0] = sub_10005E248(v9).n128_u64[0];
  if (!v2)
  {
    v7 = *v10;
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    *(a1 + 95) = *&v10[15];
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10015C768()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[13];

  return _swift_deallocObject(v0, 115, 7);
}

__n128 sub_10015C7B8@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result.n128_u64[0] = sub_1000E3ED8(v10).n128_u64[0];
  if (!v2)
  {
    v7 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v7;
    *(a1 + 128) = v10[8];
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10015C820()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10015C874()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015C8B0(uint64_t *a1, int a2)
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

uint64_t sub_10015C8F8(uint64_t result, int a2, int a3)
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

uint64_t sub_10015C94C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return v7(a1);
}

uint64_t sub_10015CA44(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000152E0;

  return sub_10015C94C(a1, v5);
}

uint64_t sub_10015CAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10015CB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10015CBCC(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7954746C75736572;
      break;
    case 2:
      result = 0x726F7774654E6461;
      break;
    case 3:
      result = 0x657079546461;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    case 5:
      result = 0x74616E6974736564;
      break;
    case 6:
      result = 0x7461745370747468;
      break;
    case 7:
      result = 0x6B63616274736F70;
      break;
    case 8:
      result = 0x6D6F44726F727265;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x707954726566666FLL;
      break;
    case 12:
      result = 0x79636E6572727563;
      break;
    case 13:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015CDC8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023DF68, &qword_1001C3118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10015D2DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = *v3;
  v26 = 0;
  sub_1000CAFC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v27 = *(v3 + 1);
    v26 = 1;
    sub_1000CB01C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    v27 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 24);
    v26 = 3;
    sub_1000CB070();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + 25);
    v26 = 4;
    sub_10004CE54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + 26);
    v26 = 5;
    sub_1000CB1C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v27 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 41);
    v26 = 7;
    sub_1000CB16C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v27 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 64);
    v18 = *(v3 + 72);
    v27 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 73);
    v27 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 74);
    v26 = 11;
    sub_1000CB2BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    v27 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v27 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10015D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015D330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D1F8(uint64_t a1)
{
  v2 = sub_10015D2DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D234(uint64_t a1)
{
  v2 = sub_10015D2DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10015D270@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10015D7D4(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_10015D2DC()
{
  result = qword_10023DF70;
  if (!qword_10023DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF70);
  }

  return result;
}

uint64_t sub_10015D330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745370747468 && a2 == 0xEE0065646F437375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CCC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_10015D7D4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v94 = sub_10000CDE0(&qword_10023DF78, &qword_1001C3120);
  v5 = *(v94 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v94);
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10015D2DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v10 = v5;
  LOBYTE(v50) = 0;
  sub_1000CAC80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v57[0];
  LOBYTE(v50) = 1;
  sub_1000CACD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v11;
  v12 = v57[0];
  v57[0] = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v12;
  v47 = v13;
  v48 = v14;
  LOBYTE(v50) = 3;
  sub_1000CAD28();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v57[0];
  LOBYTE(v50) = 4;
  sub_10004DC18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = v15;
  v16 = v57[0];
  LOBYTE(v50) = 5;
  sub_1000CAE78();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v16;
  v17 = v57[0];
  v57[0] = 6;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = v18 & 1;
  LOBYTE(v50) = 7;
  sub_1000CAE24();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v57[0];
  v42 = v17;
  v57[0] = 8;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v20;
  v57[0] = 9;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v22 & 1;
  v57[0] = 10;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v50) = 11;
  sub_1000CAF74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = v57[0];
  v57[0] = 12;
  *&v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v38 + 1) = v23;
  v83 = 13;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v25;
  v26 = v24;
  (*(v10 + 8))(v8, v94);
  v27 = v49;
  LOBYTE(v50) = v49;
  LOBYTE(v10) = v46;
  BYTE1(v50) = v46;
  *(&v50 + 1) = v47;
  *&v51 = v48;
  BYTE8(v51) = v45;
  BYTE9(v51) = v44;
  BYTE10(v51) = v42;
  *&v52 = v43;
  v33 = v89;
  BYTE8(v52) = v89;
  BYTE9(v52) = v41;
  v34 = v21;
  v35 = v19;
  *&v53 = v19;
  *(&v53 + 1) = v40;
  *&v54 = v21;
  LODWORD(v94) = v86;
  BYTE8(v54) = v86;
  LOBYTE(v21) = v39;
  BYTE9(v54) = v39;
  LOBYTE(v19) = v37;
  BYTE10(v54) = v37;
  v55 = v38;
  *&v56 = v26;
  *(&v56 + 1) = v36;
  sub_10015DE70(&v50, v57);
  sub_10000DB58(a1);
  v57[0] = v27;
  v57[1] = v10;
  v58 = v92;
  v59 = v93;
  v60 = v47;
  v61 = v48;
  v62 = v45;
  v63 = v44;
  v64 = v42;
  v65 = v90;
  v66 = v91;
  v67 = v43;
  v68 = v33;
  v69 = v41;
  v71 = v88;
  v70 = v87;
  v72 = v35;
  v73 = v40;
  v74 = v34;
  v75 = v94;
  v76 = v21;
  v77 = v19;
  v78 = v84;
  v79 = v85;
  v80 = v38;
  v81 = v26;
  v82 = v36;
  result = sub_1000C8D6C(v57);
  v29 = v55;
  a2[4] = v54;
  a2[5] = v29;
  a2[6] = v56;
  v30 = v51;
  *a2 = v50;
  a2[1] = v30;
  v31 = v53;
  a2[2] = v52;
  a2[3] = v31;
  return result;
}

uint64_t getEnumTagSinglePayload for SnoutInteropPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutInteropPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10015DFFC()
{
  result = qword_10023DF80;
  if (!qword_10023DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF80);
  }

  return result;
}

unint64_t sub_10015E054()
{
  result = qword_10023DF88;
  if (!qword_10023DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF88);
  }

  return result;
}

unint64_t sub_10015E0AC()
{
  result = qword_10023DF90;
  if (!qword_10023DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DF90);
  }

  return result;
}

void sub_10015E100(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = [v3 connection];
  sub_10000CDE0(&qword_10023DFC0, &qword_1001C3288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v10 = String._bridgeToObjectiveC()();
  *&v24 = a1;
  *(&v24 + 1) = a2;

  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = objc_opt_self();
  v13 = [v12 predicateWithProperty:v10 equalToValue:v11];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  Date.timeIntervalSince1970.getter();
  v15 = v14 * 1000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v12 predicateWithProperty:v16 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 40) = v17;
  v18 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023DFC8, qword_1001C3290);
  swift_arrayDestroy();
  v19 = sub_100084BCC(v8, v18, _swiftEmptyArrayStorage, 0, 0);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  __chkstk_darwin(v19);
  v22[2] = &v24;
  sub_10003404C(sub_10015E4F0, v22, v19);
  if (v4)
  {

    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    sub_10015E568(v23);
  }

  else
  {

    v20 = v25;
    *a3 = v24;
    a3[1] = v20;
    v21 = v27;
    a3[2] = v26;
    a3[3] = v21;
  }
}

id sub_10015E498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregatedReportingDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015E4F0(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = a1[3];
  v18 = a1[2];
  v19 = v7;
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[1];
  v20[0] = *v5;
  v20[1] = v10;
  v20[2] = v9;
  v20[3] = v8;
  sub_10015E568(v20);
  v11 = v19;
  v13 = v16;
  v12 = v17;
  v5[2] = v18;
  v5[3] = v11;
  *v5 = v13;
  v5[1] = v12;
  *a3 = 1;
  return sub_10005DD10(&v16, &v15);
}

uint64_t sub_10015E568(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023D768, &qword_1001C1880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10015E660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImpressionIntakeServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015E6C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009E494();
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon31ImpressionIntakeServiceProtocol_];
    [a1 setExportedInterface:v12];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon39ImpressionIntakeServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v13 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v14, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing entitlement for ImpressionIntakeService", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

uint64_t sub_10015EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000152E0;

  return sub_10005061C(a2, a3, a4);
}

uint64_t sub_10015EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1000152E0;

  return sub_100051570(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10015F0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000152E0;

  return sub_100051C5C(a2, a3, a4, a5);
}

uint64_t sub_10015F380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000152E0;

  return sub_100052160(a2, a3, a4, a5);
}

uint64_t sub_10015F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_10000BD30;

  return sub_1000527E8(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10015FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000152E0;

  return sub_100053EE8(a2, a3, a4);
}

uint64_t sub_10015FDD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015FE14(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10015FA98(a1, a2, v7, v6);
}

uint64_t sub_10015FEC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10015FEE4, 0, 0);
}

uint64_t sub_10015FEE4()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1000504CC();
  *v1 = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10015FF50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015FF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v9);
}

uint64_t sub_100160058()
{
  v1 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 32);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100160180(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000BD30;

  return sub_10015F644(a1, a2, v8, v9, v10, v11, v2 + v7);
}

uint64_t sub_100160294()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001602CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_10015F380(a1, a2, v6, v7, v8);
}

uint64_t sub_10016038C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_10015F0BC(a1, a2, v6, v7, v8);
}

uint64_t sub_10016044C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016048C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000152E0;

  return sub_10015EDC8(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100160560(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10015EAFC(a1, a2, v7, v6);
}

uint64_t sub_100160644@<X0>(char *a1@<X8>)
{
  v63 = a1;
  v1 = type metadata accessor for Logger();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  v3 = __chkstk_darwin(v1);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v58 - v5;
  v60 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = [v20 URLsForDirectory:13 inDomains:1];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v22 + 16))
  {
    v23 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v58 = *(v12 + 16);
    v58(v16, v23, v11);

    (*(v12 + 32))(v18, v16, v11);
    v64[0] = 0xD000000000000019;
    v64[1] = 0x80000001001CB290;
    v24 = v60;
    (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v60);
    sub_10003E5C8();
    URL.append<A>(path:directoryHint:)();
    (*(v7 + 8))(v10, v24);
    v25 = [v19 defaultManager];
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v64[0] = 0;
    v29 = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v64];

    v30 = v64[0];
    if (v29)
    {
      v31 = v63;
      v58(v63, v18, v11);
      (*(v12 + 56))(v31, 0, 1, v11);
      v32 = *(v12 + 8);
      v33 = v30;
      return v32(v18, v11);
    }

    else
    {
      v41 = v18;
      v60 = v12;
      v42 = v11;
      v43 = v64[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v44 = Logger.general.unsafeMutableAddressor();
      v46 = v61;
      v45 = v62;
      v47 = v59;
      (*(v61 + 16))(v59, v44, v62);
      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v65 = v58;
        *v50 = 136315394;
        v52 = v41;
        swift_beginAccess();
        sub_100160D64();
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = sub_10017AD04(v53, v54, &v65);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2112;
        swift_errorRetain();
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v56;
        *v51 = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to create caches directory %s with error: %@", v50, 0x16u);
        sub_1000AEA80(v51);

        sub_10000DB58(v58);

        (*(v46 + 8))(v59, v62);
        v57 = v60;
      }

      else
      {

        (*(v46 + 8))(v47, v45);
        v57 = v60;
        v52 = v41;
      }

      (*(v57 + 56))(v63, 1, 1, v42);
      return (*(v57 + 8))(v52, v42);
    }
  }

  else
  {

    v35 = Logger.general.unsafeMutableAddressor();
    v36 = v61;
    v37 = v62;
    (*(v61 + 16))(v6, v35, v62);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "No caches directory url found", v40, 2u);
    }

    (*(v36 + 8))(v6, v37);
    return (*(v12 + 56))(v63, 1, 1, v11);
  }
}

unint64_t sub_100160D64()
{
  result = qword_10023E030;
  if (!qword_10023E030)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E030);
  }

  return result;
}

uint64_t sub_100160DBC()
{
  v1 = *v0;
  result = os_transaction_get_description();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

unint64_t sub_100160DEC()
{
  v1 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000CDE0(&qword_10023E0F0, &qword_1001C34A0);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = __chkstk_darwin(v10);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v64 = v0;
  v19 = *(v0 + 16);
  swift_unknownObjectRetain();
  v20 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  result = os_transaction_get_timestamp();
  v65 = result;
  if (v20 < result)
  {
    __break(1u);
  }

  else
  {
    v62 = v4;
    v22 = v9;
    v58 = objc_opt_self();
    v23 = [v58 nanoseconds];
    sub_1001620F4();
    Measurement.init(value:unit:)();
    v24 = Logger.general.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v24, v5);
    v25 = v63;
    (*(v63 + 16))(v16, v18, v10);
    swift_unknownObjectRetain();
    v26 = v5;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v59 = v28;
    v29 = os_log_type_enabled(v27, v28);
    v30 = v25;
    v61 = v18;
    if (v29)
    {
      v55 = v27;
      v56 = v22;
      v31 = v16;
      v54 = v6;
      v57 = v26;
      v32 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v32 = 33555202;
      *(v32 + 4) = v65;
      *(v32 + 6) = 2080;
      swift_unknownObjectRetain();
      if (os_transaction_get_description())
      {
        v33 = String.init(cString:)();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v37 = sub_10017AD04(v33, v35, &v66);

      *(v32 + 8) = v37;
      *(v32 + 16) = 2080;
      v38 = [v58 milliseconds];
      v39 = v60;
      Measurement<>.converted(to:)();

      v40 = Measurement<>.formatted()();
      v42 = v41;
      v43 = v39;
      v36 = *(v30 + 8);
      v36(v43, v10);
      v36(v31, v10);
      v44 = sub_10017AD04(v40, v42, &v66);

      *(v32 + 18) = v44;
      v45 = v55;
      _os_log_impl(&_mh_execute_header, v55, v59, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v32, 0x1Au);
      swift_arrayDestroy();

      (*(v54 + 8))(v56, v57);
    }

    else
    {

      v36 = *(v25 + 8);
      v36(v16, v10);
      (*(v6 + 8))(v22, v26);
    }

    v46 = v64;
    v47 = type metadata accessor for TaskPriority();
    v48 = v62;
    (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v50 = v65;
    v49[4] = v19;
    v49[5] = v50;
    swift_unknownObjectRetain();
    sub_100161968(0, 0, v48, &unk_1001C34B0, v49);
    swift_unknownObjectRelease();

    v36(v61, v10);
    v51 = *(v46 + 16);
    swift_unknownObjectRelease();
    v52 = *(v46 + 32);

    return v46;
  }

  return result;
}

uint64_t sub_1001613A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001614C0, 0, 0);
}

uint64_t sub_1001614C0()
{
  v1 = *(v0 + 72);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_10016158C;
  v3 = *(v0 + 72);

  return sub_100161C3C(0xB469471F80140000, 0, 0, 0, 1);
}

uint64_t sub_10016158C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1001618F8;
  }

  else
  {
    v6 = sub_1001616FC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001616FC()
{
  v27 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = Logger.general.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 33554946;
    *(v10 + 4) = v9;
    *(v10 + 6) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = String.init(cString:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];
    v21 = sub_10017AD04(description, v14, &v26);

    *(v10 + 8) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "[TXN%hx] 🐏 Releasing transaction (%s)", v10, 0x10u);
    sub_10000DB58(v11);

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];

    (*(v16 + 8))(v15, v17);
  }

  v22 = v0[9];
  v23 = v0[6];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001618F8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100161968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000A2558(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10009D7BC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10009D7BC(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10009D7BC(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100161BD4()
{
  sub_100160DEC();

  return swift_deallocClassInstance();
}

uint64_t sub_100161C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100161D3C, 0, 0);
}

uint64_t sub_100161D3C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100162240(&qword_10023E100, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100162240(&qword_10023E108, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100161ECC;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100161ECC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100162088, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100162088()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_1001620F4()
{
  result = qword_10023E0F8;
  if (!qword_10023E0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023E0F8);
  }

  return result;
}

uint64_t sub_100162140()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100162180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD30;

  return sub_1001613A4(a1, v4, v5, v7, v6);
}

uint64_t sub_100162240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10016229C()
{
  result = qword_10023E110;
  if (!qword_10023E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E110);
  }

  return result;
}

Swift::Int sub_1001622F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 19000;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100162340()
{
  if (*v0)
  {
    v1 = 19000;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100162378()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 19000;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_1001623C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 19000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1001623E8(uint64_t *a1@<X8>)
{
  v2 = 19000;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_100162410(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_10016263C(a2);
  }
}

unint64_t sub_100162448(void *a1)
{
  a1[1] = sub_100162480();
  a1[2] = sub_1001624D4();
  result = sub_100162528();
  a1[3] = result;
  return result;
}

unint64_t sub_100162480()
{
  result = qword_10023E158;
  if (!qword_10023E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E158);
  }

  return result;
}

unint64_t sub_1001624D4()
{
  result = qword_10023E160;
  if (!qword_10023E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E160);
  }

  return result;
}

unint64_t sub_100162528()
{
  result = qword_10023E168;
  if (!qword_10023E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E168);
  }

  return result;
}

unint64_t sub_100162580()
{
  result = qword_10023E170;
  if (!qword_10023E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E170);
  }

  return result;
}

unint64_t sub_1001625D8()
{
  result = qword_10023E178;
  if (!qword_10023E178)
  {
    sub_10000CCC0(&qword_10023E180, &qword_1001C3610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E178);
  }

  return result;
}

void sub_10016263C(uint64_t a1)
{
  _StringGuts.grow(_:)(95);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for CurrencyExchangeRateEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x79636E6572727563;
  v9._object = 0xED000065646F635FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA600;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C4C41455220;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x80000001001CA620;
  String.append(_:)(v13);
  v14._object = 0x80000001001CB530;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x79636E6572727563;
  v15._object = 0xED000065646F635FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v17);
}

unint64_t sub_100162850()
{
  result = qword_10023E188;
  if (!qword_10023E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E188);
  }

  return result;
}

unint64_t sub_1001628A8()
{
  result = qword_10023E190;
  if (!qword_10023E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E190);
  }

  return result;
}

unint64_t sub_1001628FC(uint64_t a1)
{
  *(a1 + 8) = sub_10003C0AC();
  result = sub_1000F19C8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10016292C(void *a1)
{
  v2 = v1;
  v4 = sub_10000CDE0(&qword_10023E208, &qword_1001C37D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001628A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[12];
  v29 = v2[11];
  v30 = v10;
  v11 = v2[14];
  v31 = v2[13];
  v32 = v11;
  v12 = v2[8];
  v25 = v2[7];
  v26 = v12;
  v13 = v2[10];
  v27 = v2[9];
  v28 = v13;
  v14 = v2[4];
  v21 = v2[3];
  v22 = v14;
  v15 = v2[6];
  v23 = v2[5];
  v24 = v15;
  v16 = v2[2];
  v19 = v2[1];
  v20 = v16;
  sub_100104824(v2, v18);
  sub_100010514();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18[10] = v29;
  v18[11] = v30;
  v18[12] = v31;
  v18[13] = v32;
  v18[6] = v25;
  v18[7] = v26;
  v18[8] = v27;
  v18[9] = v28;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[5] = v24;
  v18[0] = v19;
  v18[1] = v20;
  sub_10003AE8C(v18);
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_100162B04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100162B80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100162BD8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100215600, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100162C70@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216938, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100162CD8(uint64_t a1)
{
  v2 = sub_1001628A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162D14(uint64_t a1)
{
  v2 = sub_1001628A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100162D50@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100162F48(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v11[14];
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100162DC4(void *a1)
{
  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[14];
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10016292C(a1);
}

unint64_t sub_100162E34()
{
  result = qword_10023E1E0;
  if (!qword_10023E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1E0);
  }

  return result;
}

unint64_t sub_100162E8C()
{
  result = qword_10023E1E8;
  if (!qword_10023E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1E8);
  }

  return result;
}

unint64_t sub_100162EE4()
{
  result = qword_10023E1F0;
  if (!qword_10023E1F0)
  {
    sub_10000CCC0(&qword_10023E1F8, &qword_1001C3790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E1F0);
  }

  return result;
}

uint64_t sub_100162F48@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v4 = sub_10000CDE0(&qword_10023E200, &qword_1001C37D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v40 = 1;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001628A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_100010340();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v4);
  *&v39[167] = *&v37[183];
  *&v39[183] = *&v37[199];
  *&v39[199] = *&v37[215];
  *&v39[215] = v38;
  *&v39[103] = *&v37[119];
  *&v39[119] = *&v37[135];
  *&v39[135] = *&v37[151];
  *&v39[151] = *&v37[167];
  *&v39[39] = *&v37[55];
  *&v39[55] = *&v37[71];
  *&v39[71] = *&v37[87];
  *&v39[87] = *&v37[103];
  *&v39[7] = *&v37[23];
  *&v39[23] = *&v37[39];
  *(&v21[11] + 9) = *&v39[176];
  *(&v21[12] + 9) = *&v39[192];
  *(&v21[13] + 9) = *&v39[208];
  *(&v21[7] + 9) = *&v39[112];
  *(&v21[8] + 9) = *&v39[128];
  *(&v21[9] + 9) = *&v39[144];
  *(&v21[10] + 9) = *&v39[160];
  *(&v21[3] + 9) = *&v39[48];
  *(&v21[4] + 9) = *&v39[64];
  *(&v21[5] + 9) = *&v39[80];
  *(&v21[6] + 9) = *&v39[96];
  *(v21 + 9) = *v39;
  *(&v21[1] + 9) = *&v39[16];
  *&v21[0] = 0;
  v10 = v40;
  BYTE8(v21[0]) = v40;
  *(&v21[14] + 1) = *(&v38 + 1);
  *(&v21[2] + 9) = *&v39[32];
  sub_100104824(v21, &v22);
  sub_10000DB58(a1);
  v35 = *&v39[176];
  v36 = *&v39[192];
  *v37 = *&v39[208];
  v31 = *&v39[112];
  v32 = *&v39[128];
  v33 = *&v39[144];
  v34 = *&v39[160];
  v27 = *&v39[48];
  v28 = *&v39[64];
  v29 = *&v39[80];
  v30 = *&v39[96];
  v24 = *v39;
  v25 = *&v39[16];
  v22 = 0;
  v23 = v10;
  *&v37[15] = *&v39[223];
  v26 = *&v39[32];
  result = sub_10003C100(&v22);
  v12 = v21[13];
  v13 = v41;
  v41[12] = v21[12];
  v13[13] = v12;
  v13[14] = v21[14];
  v14 = v21[9];
  v13[8] = v21[8];
  v13[9] = v14;
  v15 = v21[11];
  v13[10] = v21[10];
  v13[11] = v15;
  v16 = v21[5];
  v13[4] = v21[4];
  v13[5] = v16;
  v17 = v21[7];
  v13[6] = v21[6];
  v13[7] = v17;
  v18 = v21[1];
  *v13 = v21[0];
  v13[1] = v18;
  v19 = v21[3];
  v13[2] = v21[2];
  v13[3] = v19;
  return result;
}

uint64_t sub_10016338C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001633D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100163464()
{
  result = qword_10023E210;
  if (!qword_10023E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E210);
  }

  return result;
}

void *sub_1001634B8(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v27 = v2;
    v35 = _swiftEmptyArrayStorage;
    sub_100147284(0, v8, 0);
    v9 = v35;
    v10 = (a1 + 32);
    swift_beginAccess();
    v11 = type metadata accessor for SnoutStoryModel();
    v29 = *(v5 + 16);
    v30 = v11;
    v31 = a2;
    v32 = v5 + 16;
    v28 = (v5 + 8);
    do
    {
      v12 = v10[11];
      v37[10] = v10[10];
      v37[11] = v12;
      v13 = v10[13];
      v37[12] = v10[12];
      v37[13] = v13;
      v14 = v10[7];
      v37[6] = v10[6];
      v37[7] = v14;
      v15 = v10[9];
      v37[8] = v10[8];
      v37[9] = v15;
      v16 = v10[3];
      v37[2] = v10[2];
      v37[3] = v16;
      v17 = v10[5];
      v37[4] = v10[4];
      v37[5] = v17;
      v18 = v10[1];
      v37[0] = *v10;
      v37[1] = v18;
      v19 = v33;
      v20 = v38;
      v29(v33, a2 + *(v30 + 20), v38);
      sub_100010568(v37, &v34);
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*v28)(v19, v20);
      sub_1000CF83C(v37, v21, v23, v36);
      sub_10003AE8C(v37);
      v35 = v9;
      v25 = v9[2];
      v24 = v9[3];
      if (v25 >= v24 >> 1)
      {
        sub_100147284((v24 > 1), v25 + 1, 1);
        v9 = v35;
      }

      v9[2] = v25 + 1;
      memcpy(&v9[59 * v25 + 4], v36, 0x1D8uLL);
      v10 += 14;
      --v8;
      a2 = v31;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_100163710()
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_10023FC50;
  v5 = &type metadata for AMSDogBag;
  v6 = &off_100222F48;
  sub_1000C2030(v4, v3);
  v1 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v0, v3, 1);
  result = sub_1000C208C(v4);
  qword_10023FD90 = v1;
  return result;
}

uint64_t sub_1001637D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100163860();
}

uint64_t sub_100163860()
{
  v1[154] = v0;
  v2 = sub_10000CDE0(&qword_10023E3B8, &qword_1001C3B70);
  v1[155] = v2;
  v3 = *(v2 - 8);
  v1[156] = v3;
  v4 = *(v3 + 64) + 15;
  v1[157] = swift_task_alloc();

  return _swift_task_switch(sub_10016392C, v0, 0);
}

uint64_t sub_10016392C()
{
  v1 = v0[157];
  v2 = v0[154];
  sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_10016F5A0(&qword_10023E3C8, type metadata accessor for SnoutManager);
  v0[158] = v3;
  v4 = v0[154];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[159] = v6;
  *v6 = v0;
  v6[1] = sub_100163A4C;
  v7 = v0[157];
  v8 = v0[155];

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, v4, v3, v8);
}

uint64_t sub_100163A4C()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return _swift_task_switch(sub_100163B5C, v2, 0);
}

uint64_t sub_100163B5C()
{
  v1 = *(v0 + 720);
  *(v0 + 456) = *(v0 + 704);
  *(v0 + 472) = v1;
  *(v0 + 488) = *(v0 + 736);
  *(v0 + 504) = *(v0 + 752);
  v2 = *(v0 + 656);
  *(v0 + 392) = *(v0 + 640);
  *(v0 + 408) = v2;
  v3 = *(v0 + 688);
  *(v0 + 424) = *(v0 + 672);
  *(v0 + 440) = v3;
  v4 = *(v0 + 592);
  *(v0 + 328) = *(v0 + 576);
  *(v0 + 344) = v4;
  v5 = *(v0 + 624);
  *(v0 + 360) = *(v0 + 608);
  *(v0 + 376) = v5;
  v6 = *(v0 + 528);
  *(v0 + 264) = *(v0 + 512);
  *(v0 + 280) = v6;
  v7 = *(v0 + 560);
  *(v0 + 296) = *(v0 + 544);
  *(v0 + 312) = v7;
  v8 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v8;
  *(v0 + 240) = *(v0 + 488);
  *(v0 + 256) = *(v0 + 504);
  v9 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v9;
  v10 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v10;
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v11;
  v12 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v12;
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v13;
  v14 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v14;
  if (sub_10016F5E8(v0 + 16) == 1)
  {
    (*(*(v0 + 1248) + 8))(*(v0 + 1256), *(v0 + 1240));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 224);
    *(v0 + 952) = *(v0 + 208);
    *(v0 + 968) = v17;
    *(v0 + 984) = *(v0 + 240);
    *(v0 + 1000) = *(v0 + 256);
    v18 = *(v0 + 160);
    *(v0 + 888) = *(v0 + 144);
    *(v0 + 904) = v18;
    v19 = *(v0 + 192);
    *(v0 + 920) = *(v0 + 176);
    *(v0 + 936) = v19;
    v20 = *(v0 + 96);
    *(v0 + 824) = *(v0 + 80);
    *(v0 + 840) = v20;
    v21 = *(v0 + 128);
    *(v0 + 856) = *(v0 + 112);
    *(v0 + 872) = v21;
    v22 = *(v0 + 32);
    *(v0 + 760) = *(v0 + 16);
    *(v0 + 776) = v22;
    v23 = *(v0 + 64);
    *(v0 + 792) = *(v0 + 48);
    *(v0 + 808) = v23;
    v24 = sub_10016F608(v0 + 760);
    v25 = sub_10016E1E8(v0 + 760);
    if (v24 == 1)
    {
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = swift_task_alloc();
      *(v0 + 1288) = v29;
      *v29 = v0;
      v29[1] = sub_10016402C;
      v30 = *(v0 + 1232);

      return sub_10016649C(v27, v26, v28);
    }

    else
    {
      v31 = *(v25 + 16);
      *(v0 + 1008) = *v25;
      *(v0 + 1024) = v31;
      v32 = *(v25 + 32);
      v33 = *(v25 + 48);
      v34 = *(v25 + 80);
      *(v0 + 1072) = *(v25 + 64);
      *(v0 + 1088) = v34;
      *(v0 + 1040) = v32;
      *(v0 + 1056) = v33;
      v35 = *(v25 + 96);
      v36 = *(v25 + 112);
      v37 = *(v25 + 144);
      *(v0 + 1136) = *(v25 + 128);
      *(v0 + 1152) = v37;
      *(v0 + 1104) = v35;
      *(v0 + 1120) = v36;
      v38 = *(v25 + 160);
      v39 = *(v25 + 176);
      v40 = *(v25 + 208);
      *(v0 + 1200) = *(v25 + 192);
      *(v0 + 1216) = v40;
      *(v0 + 1168) = v38;
      *(v0 + 1184) = v39;
      v41 = *(v25 + 224);
      v42 = *(v25 + 232);
      v43 = *(v25 + 241);
      v44 = *(v25 + 240);
      v45 = swift_task_alloc();
      *(v0 + 1280) = v45;
      *v45 = v0;
      v45[1] = sub_100163E4C;
      v46 = *(v0 + 1232);

      return sub_10016413C((v0 + 1008), v41, v42, v44, v43);
    }
  }
}

uint64_t sub_100163E4C()
{
  v1 = *(*v0 + 1280);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return _swift_task_switch(sub_100163F5C, v2, 0);
}

uint64_t sub_100163F5C()
{
  sub_10000DAF8((v0 + 33), &qword_10023E3D0, &unk_1001C3B80);
  v1 = v0[158];
  v2 = v0[154];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[159] = v4;
  *v4 = v0;
  v4[1] = sub_100163A4C;
  v5 = v0[157];
  v6 = v0[155];

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, v2, v1, v6);
}

uint64_t sub_10016402C()
{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return _swift_task_switch(sub_10016F834, v2, 0);
}

uint64_t sub_10016413C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 1384) = v5;
  *(v6 + 1586) = a5;
  *(v6 + 1585) = a4;
  *(v6 + 1376) = a3;
  *(v6 + 1368) = a2;
  *(v6 + 1360) = a1;
  v7 = a1[11];
  *(v6 + 176) = a1[10];
  *(v6 + 192) = v7;
  v8 = a1[13];
  *(v6 + 208) = a1[12];
  *(v6 + 224) = v8;
  v9 = a1[7];
  *(v6 + 112) = a1[6];
  *(v6 + 128) = v9;
  v10 = a1[9];
  *(v6 + 144) = a1[8];
  *(v6 + 160) = v10;
  v11 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v11;
  v12 = a1[5];
  *(v6 + 80) = a1[4];
  *(v6 + 96) = v12;
  v13 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v13;
  v14 = type metadata accessor for Date();
  *(v6 + 1392) = v14;
  v15 = *(v14 - 8);
  *(v6 + 1400) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 1408) = swift_task_alloc();
  v17 = type metadata accessor for SnoutStoryModel();
  *(v6 + 1416) = v17;
  v18 = *(v17 - 8);
  *(v6 + 1424) = v18;
  *(v6 + 1432) = *(v18 + 64);
  *(v6 + 1440) = swift_task_alloc();
  *(v6 + 1448) = swift_task_alloc();
  v19 = *(*(sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0) - 8) + 64) + 15;
  *(v6 + 1456) = swift_task_alloc();
  *(v6 + 1464) = swift_task_alloc();

  return _swift_task_switch(sub_1001642FC, v5, 0);
}

uint64_t sub_1001642FC()
{
  sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
  v1 = swift_task_alloc();
  *(v0 + 1472) = v1;
  *v1 = v0;
  v1[1] = sub_10016439C;

  return sub_100011A14();
}

uint64_t sub_10016439C(char a1)
{
  v2 = *(*v1 + 1472);
  v3 = *(*v1 + 1384);
  v5 = *v1;
  *(*v1 + 1587) = a1;

  return _swift_task_switch(sub_1001644B4, v3, 0);
}

uint64_t sub_1001644B4()
{
  if (*(v0 + 1587) == 1)
  {
    if (*(v0 + 1585) == 2 && *(v0 + 1368) == 0)
    {
      sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
      v15 = swift_task_alloc();
      *(v0 + 1480) = v15;
      *v15 = v0;
      v15[1] = sub_100164670;

      return sub_100012250();
    }

    else
    {
      v2 = swift_task_alloc();
      *(v0 + 1512) = v2;
      *v2 = v0;
      v2[1] = sub_100164BEC;
      v3 = *(v0 + 1464);
      v4 = *(v0 + 1384);
      v5 = *(v0 + 1376);
      v6 = *(v0 + 1368);
      v7 = *(v0 + 1585);

      return sub_10016CBA4(v3, v6, v5, v7);
    }
  }

  else
  {
    v9 = *(v0 + 1464);
    v10 = *(v0 + 1456);
    v11 = *(v0 + 1448);
    v12 = *(v0 + 1440);
    v13 = *(v0 + 1408);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100164670(char a1)
{
  v2 = *(*v1 + 1480);
  v3 = *(*v1 + 1384);
  v5 = *v1;
  *(*v1 + 1588) = a1;

  return _swift_task_switch(sub_100164788, v3, 0);
}

uint64_t sub_100164788()
{
  if (*(v0 + 1588) == 1)
  {
    *&v16[167] = *(v0 + 176);
    *&v16[183] = *(v0 + 192);
    *&v16[199] = *(v0 + 208);
    *&v16[215] = *(v0 + 224);
    *&v16[103] = *(v0 + 112);
    *&v16[119] = *(v0 + 128);
    *&v16[135] = *(v0 + 144);
    *&v16[151] = *(v0 + 160);
    *&v16[39] = *(v0 + 48);
    *&v16[55] = *(v0 + 64);
    *&v16[71] = *(v0 + 80);
    *&v16[87] = *(v0 + 96);
    v1 = *(v0 + 32);
    *&v16[7] = *(v0 + 16);
    v2 = *(v0 + 1384);
    v3 = *(v0 + 1360);
    *(v0 + 1584) = 1;
    *&v16[23] = v1;
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[16];
    v7 = swift_allocObject();
    *(v7 + 201) = *&v16[176];
    *(v7 + 217) = *&v16[192];
    *(v7 + 233) = *&v16[208];
    *(v7 + 137) = *&v16[112];
    *(v7 + 153) = *&v16[128];
    *(v7 + 169) = *&v16[144];
    *(v7 + 185) = *&v16[160];
    *(v7 + 73) = *&v16[48];
    *(v7 + 89) = *&v16[64];
    *(v7 + 105) = *&v16[80];
    *(v7 + 121) = *&v16[96];
    *(v7 + 25) = *v16;
    *(v7 + 41) = *&v16[16];
    *(v0 + 1488) = v7;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 248) = *&v16[223];
    *(v7 + 57) = *&v16[32];
    sub_100010568(v3, v0 + 1136);
    v8 = swift_task_alloc();
    *(v0 + 1496) = v8;
    *v8 = v0;
    v8[1] = sub_100164A0C;

    return sub_10010F390(sub_10010F390, sub_10016F584, v7, v5, v4, v6);
  }

  else
  {
    v10 = *(v0 + 1464);
    v11 = *(v0 + 1456);
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1440);
    v14 = *(v0 + 1408);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100164A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v4 = *(*v1 + 1488);
  v5 = *v1;
  *(*v1 + 1504) = v0;

  v6 = *(v2 + 1384);
  if (v0)
  {
    v7 = sub_100165AF8;
  }

  else
  {
    v7 = sub_100164B54;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100164B54()
{
  v1 = v0[183];
  v2 = v0[182];
  v3 = v0[181];
  v4 = v0[180];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100164BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 1512);
  v4 = *v1;
  *(*v1 + 1520) = v0;

  v5 = *(v2 + 1384);
  if (v0)
  {
    v6 = sub_100165D00;
  }

  else
  {
    v6 = sub_100164D18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100164D18()
{
  v52 = v0;
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = swift_allocBox();
  v7 = v6;
  *(v0 + 1528) = v5;
  sub_100014B50(v1, v2, &qword_10023C6F0, &unk_1001BC7B0);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v8 = *(v0 + 1586);
    v9 = *(v0 + 1585);
    sub_10000DAF8(*(v0 + 1456), &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (v9 || !v8)
    {
      if (qword_100239CF8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 1376);
      v30 = *(v0 + 1368);
      v31 = *(v0 + 1585);
      v32 = type metadata accessor for Logger();
      sub_10000DAC0(v32, qword_10023FD18);
      sub_10016E7C0(v30, v29, v31);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      sub_100098CA0(v30, v29, v31);
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 1464);
      if (v35)
      {
        v37 = *(v0 + 1376);
        v38 = *(v0 + 1368);
        v39 = *(v0 + 1585);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51 = v41;
        *v40 = 136315138;
        v42 = sub_1001663CC(v38, v37, v39);
        v44 = sub_10017AD04(v42, v43, &v51);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v33, v34, "No story found for identifier: '%s'", v40, 0xCu);
        sub_10000DB58(v41);
      }

      sub_10000DAF8(v36, &qword_10023C6F0, &unk_1001BC7B0);
      v45 = *(v0 + 1464);
      v46 = *(v0 + 1456);
      v47 = *(v0 + 1448);
      v48 = *(v0 + 1440);
      v49 = *(v0 + 1408);

      v50 = *(v0 + 8);

      return v50();
    }

    else
    {
      sub_10000DA7C((*(v0 + 1384) + 136), *(*(v0 + 1384) + 160));
      v10 = swift_task_alloc();
      *(v0 + 1552) = v10;
      *v10 = v0;
      v10[1] = sub_1001653C0;

      return sub_100012250();
    }
  }

  else
  {
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1360);
    sub_10016F314(*(v0 + 1456), v7);
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    v14 = swift_allocObject();
    v14[1] = xmmword_1001B93B0;
    v15 = v13[1];
    v14[2] = *v13;
    v14[3] = v15;
    v16 = v13[5];
    v18 = v13[2];
    v17 = v13[3];
    v14[6] = v13[4];
    v14[7] = v16;
    v14[4] = v18;
    v14[5] = v17;
    v19 = v13[9];
    v21 = v13[6];
    v20 = v13[7];
    v14[10] = v13[8];
    v14[11] = v19;
    v14[8] = v21;
    v14[9] = v20;
    v22 = v13[13];
    v24 = v13[10];
    v23 = v13[11];
    v14[14] = v13[12];
    v14[15] = v22;
    v14[12] = v24;
    v14[13] = v23;
    sub_100010568(v13, v0 + 912);
    sub_10000F500(v14);
    swift_setDeallocating();
    sub_10003AE8C((v14 + 2));
    swift_deallocClassInstance();
    v25 = v12[14];
    v26 = v12[15];
    v27 = v12[16];

    v28 = swift_task_alloc();
    *(v0 + 1536) = v28;
    *v28 = v0;
    v28[1] = sub_1001651BC;

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v5, v25, v26, v27);
  }
}

uint64_t sub_1001651BC()
{
  v2 = *v1;
  v3 = *(*v1 + 1536);
  v4 = *(*v1 + 1528);
  v5 = *v1;
  *(*v1 + 1544) = v0;

  v6 = *(v2 + 1384);
  if (v0)
  {
    v7 = sub_100165F08;
  }

  else
  {
    v7 = sub_100165304;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100165304()
{
  v1 = v0[191];
  sub_10000DAF8(v0[183], &qword_10023C6F0, &unk_1001BC7B0);

  v2 = v0[183];
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[176];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001653C0(char a1)
{
  v2 = *(*v1 + 1552);
  v3 = *(*v1 + 1384);
  v5 = *v1;
  *(*v1 + 1589) = a1;

  return _swift_task_switch(sub_1001654D8, v3, 0);
}

uint64_t sub_1001654D8()
{
  v48 = *(v0 + 1589);
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v49 = *(v0 + 1400);
  v50 = *(v0 + 1392);
  v47 = *(v0 + 1368);
  v4 = *(v0 + 1360);
  sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
  v5 = swift_allocObject();
  v5[1] = xmmword_1001B93B0;
  v6 = v4[1];
  v5[2] = *v4;
  v5[3] = v6;
  v7 = v4[5];
  v9 = v4[2];
  v8 = v4[3];
  v5[6] = v4[4];
  v5[7] = v7;
  v5[4] = v9;
  v5[5] = v8;
  v10 = v4[9];
  v12 = v4[6];
  v11 = v4[7];
  v5[10] = v4[8];
  v5[11] = v10;
  v5[8] = v12;
  v5[9] = v11;
  v13 = v4[13];
  v15 = v4[10];
  v14 = v4[11];
  v5[14] = v4[12];
  v5[15] = v13;
  v5[12] = v15;
  v5[13] = v14;
  *v1 = 0;
  v16 = 1;
  *(v1 + 8) = 1;
  v17 = (v1 + v2[7]);
  v18 = v1 + v2[8];
  v19 = v2[5];
  sub_100010568(v4, v0 + 240);
  UUID.init()();
  *(v1 + v2[6]) = v47;
  *v17 = 0;
  v17[1] = 0;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + v2[9]) = v48;
  *(v1 + v2[10]) = 0;
  v20 = v2[11];
  *(v1 + v20) = _swiftEmptyArrayStorage;
  v21 = v2[12];
  *(v1 + v21) = 0;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  (*(v49 + 8))(v3, v50);
  v25 = v23 * 1000.0;
  v26 = fabs(v23 * 1000.0);
  if (v26 > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v25 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = 0x43F0000000000000;
  if (v25 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = *(v0 + 1589);
  *(*(v0 + 1448) + *(*(v0 + 1416) + 52)) = v25;
  if (v27)
  {
    v28 = v5[13];
    *(v0 + 624) = v5[12];
    *(v0 + 640) = v28;
    v29 = v5[15];
    *(v0 + 656) = v5[14];
    *(v0 + 672) = v29;
    v30 = v5[9];
    *(v0 + 560) = v5[8];
    *(v0 + 576) = v30;
    v31 = v5[11];
    *(v0 + 592) = v5[10];
    *(v0 + 608) = v31;
    v32 = v5[5];
    *(v0 + 496) = v5[4];
    *(v0 + 512) = v32;
    v33 = v5[7];
    *(v0 + 528) = v5[6];
    *(v0 + 544) = v33;
    v34 = v5[3];
    *(v0 + 464) = v5[2];
    *(v0 + 480) = v34;
    sub_100010568(v0 + 464, v0 + 688);

    v5 = *(v0 + 520);
    v51 = *(v0 + 464);
    v52 = *(v0 + 480);
    v53 = *(v0 + 496);
    v54 = *(v0 + 512);
    v61 = *(v0 + 624);
    v62 = *(v0 + 640);
    v63 = *(v0 + 656);
    v64 = *(v0 + 672);
    v57 = *(v0 + 560);
    v58 = *(v0 + 576);
    v59 = *(v0 + 592);
    v60 = *(v0 + 608);
    v55 = *(v0 + 528);
    v56 = *(v0 + 544);
    *(v1 + v21) = 1;
    v24 = sub_100088AB4(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v24 + 2);
    v26 = *(v24 + 3);
    v3 = v16 + 1;
    if (v16 < v26 >> 1)
    {
LABEL_6:
      *(v24 + 2) = v3;
      v35 = &v24[224 * v16];
      *(v35 + 2) = v51;
      *(v35 + 3) = v52;
      *(v35 + 4) = v53;
      *(v35 + 10) = v54;
      *(v35 + 11) = v5;
      *(v35 + 12) = v61;
      *(v35 + 13) = v62;
      *(v35 + 14) = v63;
      *(v35 + 15) = v64;
      *(v35 + 8) = v57;
      *(v35 + 9) = v58;
      *(v35 + 10) = v59;
      *(v35 + 11) = v60;
      *(v35 + 6) = v55;
      *(v35 + 7) = v56;
      *(v1 + v20) = v24;
      goto LABEL_8;
    }

LABEL_14:
    v24 = sub_100088AB4((v26 > 1), v3, 1, v24);
    goto LABEL_6;
  }

LABEL_8:
  v36 = *(v0 + 1440);
  v37 = *(v0 + 1432);
  v38 = *(v0 + 1424);
  v39 = *(v0 + 1384);
  v41 = v39[14];
  v40 = v39[15];
  v42 = v39[16];
  sub_100010394(*(v0 + 1448), v36);
  v43 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v44 = swift_allocObject();
  *(v0 + 1560) = v44;
  sub_10016F314(v36, v44 + v43);
  v45 = swift_task_alloc();
  *(v0 + 1568) = v45;
  *v45 = v0;
  v45[1] = sub_1001658F4;

  return sub_10010F390(sub_10010F390, sub_10016F4A8, v44, v41, v40, v42);
}

uint64_t sub_1001658F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1568);
  v4 = *(*v1 + 1560);
  v5 = *v1;
  *(*v1 + 1576) = v0;

  v6 = *(v2 + 1384);
  if (v0)
  {
    v7 = sub_100166134;
  }

  else
  {
    v7 = sub_100165A3C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100165A3C()
{
  v1 = v0[181];
  sub_10000DAF8(v0[183], &qword_10023C6F0, &unk_1001BC7B0);
  sub_1000103F8(v1);
  v2 = v0[183];
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[176];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100165AF8()
{
  v24 = v0;
  v1 = *(v0 + 1504);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1376);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1585);
  v5 = type metadata accessor for Logger();
  sub_10000DAC0(v5, qword_10023FD18);
  sub_10016E7C0(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_100098CA0(v3, v2, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1376);
    v9 = *(v0 + 1368);
    v10 = *(v0 + 1585);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = sub_1001663CC(v9, v8, v10);
    v15 = sub_10017AD04(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error while logging event to story: '%s'", v11, 0xCu);
    sub_10000DB58(v12);
  }

  v16 = *(v0 + 1464);
  v17 = *(v0 + 1456);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 1408);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100165D00()
{
  v24 = v0;
  v1 = *(v0 + 1520);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1376);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1585);
  v5 = type metadata accessor for Logger();
  sub_10000DAC0(v5, qword_10023FD18);
  sub_10016E7C0(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_100098CA0(v3, v2, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1376);
    v9 = *(v0 + 1368);
    v10 = *(v0 + 1585);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = sub_1001663CC(v9, v8, v10);
    v15 = sub_10017AD04(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error while logging event to story: '%s'", v11, 0xCu);
    sub_10000DB58(v12);
  }

  v16 = *(v0 + 1464);
  v17 = *(v0 + 1456);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 1408);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100165F08()
{
  v25 = v0;
  v1 = *(v0 + 1528);
  sub_10000DAF8(*(v0 + 1464), &qword_10023C6F0, &unk_1001BC7B0);

  v2 = *(v0 + 1544);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1585);
  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD18);
  sub_10016E7C0(v4, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_100098CA0(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1376);
    v10 = *(v0 + 1368);
    v11 = *(v0 + 1585);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_1001663CC(v10, v9, v11);
    v16 = sub_10017AD04(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered error while logging event to story: '%s'", v12, 0xCu);
    sub_10000DB58(v13);
  }

  v17 = *(v0 + 1464);
  v18 = *(v0 + 1456);
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1440);
  v21 = *(v0 + 1408);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100166134()
{
  v25 = v0;
  v1 = *(v0 + 1448);
  sub_10000DAF8(*(v0 + 1464), &qword_10023C6F0, &unk_1001BC7B0);
  sub_1000103F8(v1);
  v2 = *(v0 + 1576);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1585);
  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD18);
  sub_10016E7C0(v4, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_100098CA0(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1376);
    v10 = *(v0 + 1368);
    v11 = *(v0 + 1585);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_1001663CC(v10, v9, v11);
    v16 = sub_10017AD04(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered error while logging event to story: '%s'", v12, 0xCu);
    sub_10000DB58(v13);
  }

  v17 = *(v0 + 1464);
  v18 = *(v0 + 1456);
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1440);
  v21 = *(v0 + 1408);

  v22 = *(v0 + 8);

  return v22();
}

void sub_100166360(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000ECBDC(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10016649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100166548, v3, 0);
}

uint64_t sub_100166548()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1[14];
  v0[8] = v3;
  v4 = v1[15];
  v0[9] = v4;
  v5 = v1[16];
  v0[10] = v5;
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100166664;
  v8 = v0[7];

  return sub_10011115C(v8, sub_10016F378, v6, v3, v4, v5);
}

uint64_t sub_100166664()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100166C38;
  }

  else
  {
    v7 = sub_1001667AC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001667AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for SnoutStoryModel();
  v4 = swift_allocBox();
  v6 = v5;
  v0[14] = v4;
  sub_100014B50(v1, v2, &qword_10023C6F0, &unk_1001BC7B0);
  v7 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_10000DAF8(v8, &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000DAC0(v9, qword_10023FD18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[2];
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "No story found to rotate for app %llu", v13, 0xCu);
    }

    v14 = v0[7];

    sub_10000DAF8(v14, &qword_10023C6F0, &unk_1001BC7B0);
    v16 = v0[6];
    v15 = v0[7];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v20 = v0[3];
    v19 = v0[4];
    sub_10016F314(v8, v6);
    sub_10000F740(v20, v19);

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_100166A64;
    v22 = v0[9];
    v23 = v0[10];
    v24 = v0[8];

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v4, v24, v22, v23);
  }
}

uint64_t sub_100166A64()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100166DF8;
  }

  else
  {
    v7 = sub_100166BAC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100166BAC()
{
  v1 = v0[14];
  sub_10000DAF8(v0[7], &qword_10023C6F0, &unk_1001BC7B0);

  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100166C38()
{
  v1 = v0[13];
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 134218242;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while logging event to story for app: %llu, error: %@", v6, 0x16u);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100166DF8()
{
  v1 = v0[14];
  sub_10000DAF8(v0[7], &qword_10023C6F0, &unk_1001BC7B0);

  v2 = v0[16];
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Encountered error while logging event to story for app: %llu, error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100166FDC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 960) = v3;
  *(v4 + 1143) = a3;
  *(v4 + 952) = a2;
  *(v4 + 944) = a1;
  v5 = type metadata accessor for Calendar.Component();
  *(v4 + 968) = v5;
  v6 = *(v5 - 8);
  *(v4 + 976) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 984) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v4 + 992) = v8;
  v9 = *(v8 - 8);
  *(v4 + 1000) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 1008) = swift_task_alloc();
  v11 = *(*(sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0) - 8) + 64) + 15;
  *(v4 + 1016) = swift_task_alloc();

  return _swift_task_switch(sub_10016713C, v3, 0);
}

uint64_t sub_10016713C()
{
  sub_10000DA7C((*(v0 + 960) + 136), *(*(v0 + 960) + 160));
  v1 = swift_task_alloc();
  *(v0 + 1024) = v1;
  *v1 = v0;
  v1[1] = sub_1001671DC;

  return sub_100011A14();
}

uint64_t sub_1001671DC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1024);
  v5 = *v1;

  if (a1)
  {
    *(v3 + 1032) = type metadata accessor for SnoutStoryModel();
    *(v3 + 1040) = swift_allocBox();
    *(v3 + 1048) = v6;
    v7 = swift_task_alloc();
    *(v3 + 1056) = v7;
    *v7 = v5;
    v7[1] = sub_100167398;
    v8 = *(v3 + 1016);
    v9 = *(v3 + 960);
    v10 = *(v3 + 952);
    v11 = *(v3 + 944);
    v12 = *(v3 + 1143);

    return sub_10016CBA4(v8, v11, v10, v12);
  }

  else
  {
    v14 = *(v3 + 1016);
    v15 = *(v3 + 1008);
    v16 = *(v3 + 984);

    v17 = *(v5 + 8);

    return v17();
  }
}

uint64_t sub_100167398()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v4 = *v1;
  *(*v1 + 1064) = v0;

  v5 = *(v2 + 960);
  if (v0)
  {
    v6 = sub_100167F1C;
  }

  else
  {
    v6 = sub_1001674C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001674C4()
{
  v90 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 1040);
    sub_10000DAF8(v2, &qword_10023C6F0, &unk_1001BC7B0);
    swift_deallocBox();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 952);
    v5 = *(v0 + 944);
    v6 = *(v0 + 1143);
    v7 = type metadata accessor for Logger();
    sub_10000DAC0(v7, qword_10023FD18);
    sub_10016E7C0(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100098CA0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 952);
      v11 = *(v0 + 944);
      v12 = *(v0 + 1143);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v89[0] = v14;
      *v13 = 136315138;
      v15 = sub_1001663CC(v11, v10, v12);
      v17 = sub_10017AD04(v15, v16, v89);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "No story found for identifier: %s", v13, 0xCu);
      sub_10000DB58(v14);
    }

    sub_10016F2C0();
    swift_allocError();
    swift_willThrow();
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 952);
    v19 = *(v0 + 944);
    v20 = *(v0 + 1143);
    sub_10000DAC0(v7, qword_10023FD18);
    sub_10016E7C0(v19, v18, v20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_100098CA0(v19, v18, v20);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 952);
      v24 = *(v0 + 944);
      v25 = *(v0 + 1143);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v89[0] = v27;
      *v26 = 136315138;
      v28 = sub_1001663CC(v24, v23, v25);
      v30 = sub_10017AD04(v28, v29, v89);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Encountered error while completing story for app: '%s'", v26, 0xCu);
      sub_10000DB58(v27);
    }

    v31 = *(v0 + 1016);
    v32 = *(v0 + 1008);
    v33 = *(v0 + 984);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v84 = (v0 + 1138);
    v85 = *(v0 + 1048);
    v82 = (v0 + 1121);
    v83 = (v0 + 1113);
    v87 = v1;
    v88 = *(v0 + 1040);
    v81 = (v0 + 1105);
    v79 = (v0 + 1126);
    v80 = (v0 + 1097);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1000);
    v38 = *(v0 + 992);
    v39 = *(v0 + 984);
    v40 = *(v0 + 976);
    v41 = *(v0 + 968);
    v86 = *(v0 + 960);
    sub_10016F314(v2, v85);
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    inited = swift_initStackObject();
    *(v0 + 1072) = inited;
    inited[1] = xmmword_1001B93B0;
    static Date.now.getter();
    (*(v40 + 104))(v39, enum case for Calendar.Component.hour(_:), v41);
    v43 = sub_100025808(v36, v39);
    v45 = v44;
    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v43;
    }

    v47 = [objc_opt_self() buildVersion];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v0 + 1096) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1112) = 1;
    *(v0 + 1120) = 1;
    *(v0 + 1144) = 1;
    *(v0 + 496) = 2568;
    *(v0 + 498) = *v79;
    *(v0 + 502) = *(v0 + 1130);
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = v46;
    *(v0 + 560) = v48;
    *(v0 + 568) = v50;
    *(v0 + 576) = 0;
    *(v0 + 577) = 33686018;
    *(v0 + 581) = 2;
    *(v0 + 584) = 0;
    v51 = *(v0 + 1096);
    *(v0 + 592) = v51;
    *(v0 + 593) = *v80;
    *(v0 + 596) = *(v0 + 1100);
    *(v0 + 600) = 0;
    v52 = *(v0 + 1104);
    *(v0 + 608) = v52;
    *(v0 + 609) = 3;
    *(v0 + 610) = *(v0 + 1132);
    *(v0 + 614) = *(v0 + 1136);
    *(v0 + 616) = 0;
    v53 = *(v0 + 1112);
    *(v0 + 624) = v53;
    *(v0 + 628) = *(v0 + 1108);
    *(v0 + 625) = *v81;
    *(v0 + 632) = 0;
    v54 = *(v0 + 1120);
    *(v0 + 640) = v54;
    *(v0 + 641) = 770;
    *(v0 + 647) = *(v0 + 1125);
    *(v0 + 643) = *v82;
    *(v0 + 648) = 0;
    v55 = *(v0 + 1144);
    *(v0 + 656) = v55;
    *(v0 + 660) = *(v0 + 1116);
    *(v0 + 657) = *v83;
    *(v0 + 664) = 0u;
    *(v0 + 680) = 514;
    *(v0 + 682) = 2;
    v56 = *v84;
    *(v0 + 687) = *(v0 + 1142);
    *(v0 + 683) = v56;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 272) = 2568;
    v57 = *v79;
    *(v0 + 278) = *(v0 + 1130);
    *(v0 + 274) = v57;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 328) = v46;
    *(v0 + 336) = v48;
    *(v0 + 344) = v50;
    *(v0 + 352) = 0;
    *(v0 + 357) = 2;
    *(v0 + 353) = 33686018;
    *(v0 + 360) = 0;
    *(v0 + 368) = v51;
    v58 = *v80;
    *(v0 + 372) = *(v0 + 1100);
    *(v0 + 369) = v58;
    *(v0 + 376) = 0;
    *(v0 + 384) = v52;
    *(v0 + 385) = 3;
    v59 = *(v0 + 1132);
    *(v0 + 390) = *(v0 + 1136);
    *(v0 + 386) = v59;
    *(v0 + 392) = 0;
    *(v0 + 400) = v53;
    v60 = *v81;
    *(v0 + 404) = *(v0 + 1108);
    *(v0 + 401) = v60;
    *(v0 + 408) = 0;
    *(v0 + 416) = v54;
    *(v0 + 417) = 770;
    v61 = *v82;
    *(v0 + 423) = *(v0 + 1125);
    *(v0 + 419) = v61;
    *(v0 + 424) = 0;
    *(v0 + 432) = v55;
    v62 = *v83;
    *(v0 + 436) = *(v0 + 1116);
    *(v0 + 433) = v62;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 514;
    *(v0 + 458) = 2;
    v63 = *v84;
    *(v0 + 463) = *(v0 + 1142);
    *(v0 + 459) = v63;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_100010568(v0 + 496, v0 + 720);
    sub_10003AE8C(v0 + 272);
    v64 = *(v0 + 512);
    inited[2] = *(v0 + 496);
    inited[3] = v64;
    v65 = *(v0 + 576);
    v67 = *(v0 + 528);
    v66 = *(v0 + 544);
    inited[6] = *(v0 + 560);
    inited[7] = v65;
    inited[4] = v67;
    inited[5] = v66;
    v68 = *(v0 + 640);
    v70 = *(v0 + 592);
    v69 = *(v0 + 608);
    inited[10] = *(v0 + 624);
    inited[11] = v68;
    inited[8] = v70;
    inited[9] = v69;
    v71 = *(v0 + 704);
    v73 = *(v0 + 656);
    v72 = *(v0 + 672);
    inited[14] = *(v0 + 688);
    inited[15] = v71;
    inited[12] = v73;
    inited[13] = v72;
    sub_10000F500(inited);
    swift_setDeallocating();
    sub_10003AE8C((inited + 2));
    *(v85 + *(v87 + 40)) = 1;
    v75 = v86[14];
    v74 = v86[15];
    v76 = v86[16];

    v77 = swift_task_alloc();
    *(v0 + 1080) = v77;
    *v77 = v0;
    v77[1] = sub_100167D54;
    v78 = *(v0 + 1040);

    return sub_10010F390(sub_10010F390, sub_10016F7E0, v78, v75, v74, v76);
  }
}

uint64_t sub_100167D54()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v4 = *v1;
  *(*v1 + 1088) = v0;

  v5 = *(v2 + 1040);
  v6 = *(v2 + 960);

  if (v0)
  {
    v7 = sub_100168114;
  }

  else
  {
    v7 = sub_100167E9C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100167E9C()
{
  v1 = v0[130];

  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[123];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100167F1C()
{
  v23 = v0;
  v1 = *(v0 + 1040);
  swift_deallocBox();
  v2 = *(v0 + 1064);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 1143);
  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD18);
  sub_10016E7C0(v4, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_100098CA0(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 952);
    v10 = *(v0 + 944);
    v11 = *(v0 + 1143);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_1001663CC(v10, v9, v11);
    v16 = sub_10017AD04(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered error while completing story for app: '%s'", v12, 0xCu);
    sub_10000DB58(v13);
  }

  v17 = *(v0 + 1016);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 984);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100168114()
{
  v23 = v0;
  v1 = *(v0 + 1040);

  v2 = *(v0 + 1088);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 1143);
  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD18);
  sub_10016E7C0(v4, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_100098CA0(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 952);
    v10 = *(v0 + 944);
    v11 = *(v0 + 1143);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_1001663CC(v10, v9, v11);
    v16 = sub_10017AD04(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered error while completing story for app: '%s'", v12, 0xCu);
    sub_10000DB58(v13);
  }

  v17 = *(v0 + 1016);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 984);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016832C()
{
  sub_10000DA7C((*(v0 + 56) + 136), *(*(v0 + 56) + 160));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001683CC;

  return sub_100011A14();
}

uint64_t sub_1001683CC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    *(v3 + 72) = v6;
    *v6 = v5;
    v6[1] = sub_100168530;
    v7 = *(v3 + 56);

    return sub_100168D2C();
  }

  else
  {
    v9 = *(v5 + 8);

    return v9();
  }
}

uint64_t sub_100168530()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_1001689EC, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_10016869C;
    v6 = v3[7];

    return sub_10016A64C();
  }
}

uint64_t sub_10016869C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100168B8C;
  }

  else
  {
    v6 = sub_1001687C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001687C8()
{
  *(v0 + 104) = sub_10000DA7C((*(v0 + 56) + 136), *(*(v0 + 56) + 160));

  return _swift_task_switch(sub_10016883C, 0, 0);
}

uint64_t sub_10016883C()
{
  sub_10000CE28(*(v0 + 104), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1001688F0;

  return sub_1000215A0(0xD000000000000010, 0x80000001001CCE30);
}

uint64_t sub_1001688F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v5 = *v0;

  sub_10016F144(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001689EC()
{
  v1 = *(v0 + 80);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "encountered error during pending event flush %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100168B8C()
{
  v1 = *(v0 + 96);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "encountered error during pending event flush %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100168D4C()
{
  v1 = v0[149];
  v2 = v1[14];
  v0[150] = v2;
  v3 = v1[15];
  v0[151] = v3;
  v4 = v1[16];
  v0[152] = v4;
  v5 = swift_task_alloc();
  v0[153] = v5;
  *v5 = v0;
  v5[1] = sub_100168E34;

  return sub_100110E84(sub_10016F800, 0, v2, v3, v4);
}

uint64_t sub_100168E34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1224);
  v5 = *v2;
  v3[154] = a1;
  v3[155] = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = v3[149];

    return _swift_task_switch(sub_100168F80, v8, 0);
  }
}

uint64_t sub_100168F80(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1232);
  v5 = *(v3 + 1192);
  v6 = *(v4 + 16);
  *(v3 + 1248) = v6;
  if (v6)
  {
    v7 = *(v3 + 1240);
    *(v3 + 1256) = 0;
    if (*(v4 + 16))
    {
      v8 = type metadata accessor for SnoutStoryModel();
      *(v3 + 1264) = v8;
      v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
      v10 = swift_allocBox();
      v12 = v11;
      *(v3 + 1272) = v10;
      *(v3 + 1280) = v11;
      sub_100010394(v4 + v9, v11);
      swift_beginAccess();
      v13 = *(v8 + 44);
      v14 = *(v12 + v13);
      *(v12 + v13) = _swiftEmptyArrayStorage;
      v15 = sub_1001634B8(v14, v12);

      *(v3 + 1288) = sub_10000DA7C((v5 + 136), *(v5 + 160));
      v16 = v15[2];
      if (v16)
      {
        *(v3 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v16, 0);
        v17 = *(v3 + 1184);
        v18 = sub_1000898EC();
        v34 = v16 - 1;
        v19 = 32;
        v32 = v15;
        while (1)
        {
          memcpy((v3 + 16), v15 + v19, 0x1D8uLL);
          *(v3 + 984) = &type metadata for SnoutEventPayload;
          *(v3 + 992) = v18;
          v20 = swift_allocObject();
          *(v3 + 960) = v20;
          v33 = v19;
          memmove((v20 + 16), v15 + v19, 0x1D8uLL);
          sub_100089A30(v3 + 16, v3 + 488);
          *(v3 + 1184) = v17;
          v22 = v17[2];
          v21 = v17[3];
          v23 = v18;
          if (v22 >= v21 >> 1)
          {
            sub_100147244((v21 > 1), v22 + 1, 1);
            v17 = *(v3 + 1184);
          }

          v24 = *(v3 + 984);
          v25 = sub_100054C30(v3 + 960, v24);
          v26 = *(v24 - 8);
          v27 = *(v26 + 64) + 15;
          v28 = swift_task_alloc();
          (*(v26 + 16))(v28, v25, v24);
          *(v3 + 1024) = &type metadata for SnoutEventPayload;
          *(v3 + 1032) = v23;
          v29 = swift_allocObject();
          *(v3 + 1000) = v29;
          memmove((v29 + 16), v28, 0x1D8uLL);
          v17[2] = v22 + 1;
          sub_100054C8C((v3 + 1000), &v17[5 * v22 + 4]);
          sub_10000DB58((v3 + 960));

          if (!v34)
          {
            break;
          }

          v18 = v23;
          --v34;
          v15 = v32;
          v19 = v33 + 472;
        }
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      *(v3 + 1296) = v17;
      a1 = sub_100169310;
      a2 = 0;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {

    v30 = *(v3 + 8);

    return v30();
  }
}

uint64_t sub_100169310()
{
  sub_10000CE28(v0[161], (v0 + 130));
  v1 = swift_task_alloc();
  v0[163] = v1;
  *v1 = v0;
  v1[1] = sub_1001693B4;
  v2 = v0[162];

  return sub_1000203E0(v2);
}

uint64_t sub_1001693B4()
{
  v1 = *v0;
  v2 = *(*v0 + 1304);
  v3 = *(*v0 + 1296);
  v4 = *(*v0 + 1192);
  v6 = *v0;

  sub_10016F144(v1 + 1040);

  return _swift_task_switch(sub_1001694F0, v4, 0);
}

uint64_t sub_1001694F0()
{
  v1 = v0[159];
  v2 = *(v0[160] + *(v0[158] + 40));

  if (v2 == 1)
  {
    v3 = sub_100169580;
  }

  else
  {
    v3 = sub_100169CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100169580()
{
  v1 = v0[159];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v0[143] = &type metadata for SnoutDatabaseStore;
  v0[144] = sub_10014AB1C();
  v0[140] = v4;
  v0[141] = v3;
  v0[142] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[164] = v6;
  v6[2] = v5;
  v6[3] = v0 + 140;
  v6[4] = sub_10016F2A4;
  v6[5] = v1;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[165] = v8;
  *v8 = v0;
  v8[1] = sub_1001696D0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D28C, v6, &type metadata for () + 8);
}

uint64_t sub_1001696D0()
{
  v2 = *v1;
  v3 = (*v1)[165];
  v12 = *v1;
  (*v1)[166] = v0;

  if (v0)
  {
    v4 = v2[164];
    v5 = v2[154];

    v6 = sub_100169BF8;
    v7 = 0;
  }

  else
  {
    v8 = v2[164];
    v9 = v2[159];
    v10 = v2[149];

    sub_10000DB58(v2 + 140);
    v6 = sub_100169828;
    v7 = v10;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100169828()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1248);

  if (v3 + 1 == v4)
  {
    v8 = *(v0 + 1232);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 1256) + 1;
    *(v0 + 1256) = v11;
    v12 = *(v0 + 1232);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 1192);
      v14 = type metadata accessor for SnoutStoryModel();
      *(v0 + 1264) = v14;
      v15 = v12 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v11;
      v16 = swift_allocBox();
      v18 = v17;
      *(v0 + 1272) = v16;
      *(v0 + 1280) = v17;
      sub_100010394(v15, v17);
      swift_beginAccess();
      v19 = *(v14 + 44);
      v20 = *(v18 + v19);
      *(v18 + v19) = _swiftEmptyArrayStorage;
      v21 = sub_1001634B8(v20, v18);

      *(v0 + 1288) = sub_10000DA7C((v13 + 136), *(v13 + 160));
      v22 = v21[2];
      if (v22)
      {
        *(v0 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v22, 0);
        v23 = *(v0 + 1184);
        v24 = sub_1000898EC();
        v38 = v22 - 1;
        v25 = 32;
        v36 = v21;
        while (1)
        {
          memcpy((v0 + 16), v21 + v25, 0x1D8uLL);
          *(v0 + 984) = &type metadata for SnoutEventPayload;
          *(v0 + 992) = v24;
          v26 = swift_allocObject();
          *(v0 + 960) = v26;
          v37 = v25;
          memmove((v26 + 16), v21 + v25, 0x1D8uLL);
          sub_100089A30(v0 + 16, v0 + 488);
          *(v0 + 1184) = v23;
          v28 = v23[2];
          v27 = v23[3];
          v29 = v24;
          if (v28 >= v27 >> 1)
          {
            sub_100147244((v27 > 1), v28 + 1, 1);
            v23 = *(v0 + 1184);
          }

          v30 = *(v0 + 984);
          v31 = sub_100054C30(v0 + 960, v30);
          v32 = *(v30 - 8);
          v33 = *(v32 + 64) + 15;
          v34 = swift_task_alloc();
          (*(v32 + 16))(v34, v31, v30);
          *(v0 + 1024) = &type metadata for SnoutEventPayload;
          *(v0 + 1032) = v29;
          v35 = swift_allocObject();
          *(v0 + 1000) = v35;
          memmove((v35 + 16), v34, 0x1D8uLL);
          v23[2] = v28 + 1;
          sub_100054C8C((v0 + 1000), &v23[5 * v28 + 4]);
          sub_10000DB58((v0 + 960));

          if (!v38)
          {
            break;
          }

          v24 = v29;
          --v38;
          v21 = v36;
          v25 = v37 + 472;
        }
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      *(v0 + 1296) = v23;
      v5 = sub_100169310;
      v6 = 0;
      v7 = 0;
    }

    return _swift_task_switch(v5, v6, v7);
  }
}

uint64_t sub_100169BF8()
{
  v1 = v0[159];
  v2 = v0[149];

  sub_10000DB58(v0 + 140);

  return _swift_task_switch(sub_100169C6C, v2, 0);
}

uint64_t sub_100169C6C()
{
  v1 = v0[159];

  v2 = v0[166];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100169CD0()
{
  v1 = v0[159];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v0[138] = &type metadata for SnoutDatabaseStore;
  v0[139] = sub_10014AB1C();
  v0[135] = v4;
  v0[136] = v3;
  v0[137] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[167] = v6;
  v6[2] = v5;
  v6[3] = v0 + 135;
  v6[4] = sub_10016F288;
  v6[5] = v1;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[168] = v8;
  *v8 = v0;
  v8[1] = sub_100169E20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014AC48, v6, &type metadata for () + 8);
}

uint64_t sub_100169E20()
{
  v2 = *v1;
  v3 = (*v1)[168];
  v12 = *v1;
  (*v1)[169] = v0;

  if (v0)
  {
    v4 = v2[167];
    v5 = v2[154];

    v6 = sub_10016A348;
    v7 = 0;
  }

  else
  {
    v8 = v2[167];
    v9 = v2[159];
    v10 = v2[149];

    sub_10000DB58(v2 + 135);
    v6 = sub_100169F78;
    v7 = v10;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100169F78()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1248);

  if (v3 + 1 == v4)
  {
    v8 = *(v0 + 1232);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 1256) + 1;
    *(v0 + 1256) = v11;
    v12 = *(v0 + 1232);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 1192);
      v14 = type metadata accessor for SnoutStoryModel();
      *(v0 + 1264) = v14;
      v15 = v12 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v11;
      v16 = swift_allocBox();
      v18 = v17;
      *(v0 + 1272) = v16;
      *(v0 + 1280) = v17;
      sub_100010394(v15, v17);
      swift_beginAccess();
      v19 = *(v14 + 44);
      v20 = *(v18 + v19);
      *(v18 + v19) = _swiftEmptyArrayStorage;
      v21 = sub_1001634B8(v20, v18);

      *(v0 + 1288) = sub_10000DA7C((v13 + 136), *(v13 + 160));
      v22 = v21[2];
      if (v22)
      {
        *(v0 + 1184) = _swiftEmptyArrayStorage;
        sub_100147244(0, v22, 0);
        v23 = *(v0 + 1184);
        v24 = sub_1000898EC();
        v38 = v22 - 1;
        v25 = 32;
        v36 = v21;
        while (1)
        {
          memcpy((v0 + 16), v21 + v25, 0x1D8uLL);
          *(v0 + 984) = &type metadata for SnoutEventPayload;
          *(v0 + 992) = v24;
          v26 = swift_allocObject();
          *(v0 + 960) = v26;
          v37 = v25;
          memmove((v26 + 16), v21 + v25, 0x1D8uLL);
          sub_100089A30(v0 + 16, v0 + 488);
          *(v0 + 1184) = v23;
          v28 = v23[2];
          v27 = v23[3];
          v29 = v24;
          if (v28 >= v27 >> 1)
          {
            sub_100147244((v27 > 1), v28 + 1, 1);
            v23 = *(v0 + 1184);
          }

          v30 = *(v0 + 984);
          v31 = sub_100054C30(v0 + 960, v30);
          v32 = *(v30 - 8);
          v33 = *(v32 + 64) + 15;
          v34 = swift_task_alloc();
          (*(v32 + 16))(v34, v31, v30);
          *(v0 + 1024) = &type metadata for SnoutEventPayload;
          *(v0 + 1032) = v29;
          v35 = swift_allocObject();
          *(v0 + 1000) = v35;
          memmove((v35 + 16), v34, 0x1D8uLL);
          v23[2] = v28 + 1;
          sub_100054C8C((v0 + 1000), &v23[5 * v28 + 4]);
          sub_10000DB58((v0 + 960));

          if (!v38)
          {
            break;
          }

          v24 = v29;
          --v38;
          v21 = v36;
          v25 = v37 + 472;
        }
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      *(v0 + 1296) = v23;
      v5 = sub_100169310;
      v6 = 0;
      v7 = 0;
    }

    return _swift_task_switch(v5, v6, v7);
  }
}

uint64_t sub_10016A348()
{
  v1 = v0[159];
  v2 = v0[149];

  sub_10000DB58(v0 + 135);

  return _swift_task_switch(sub_10016A3BC, v2, 0);
}

uint64_t sub_10016A3BC()
{
  v1 = v0[159];

  v2 = v0[169];
  v3 = v0[1];

  return v3();
}

void *sub_10016A420@<X0>(void *a1@<X8>)
{
  result = sub_1001039F8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10016A450()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SnoutStoryModel();
  v6 = swift_projectBox();
  swift_beginAccess();
  (*(v1 + 16))(v4, v6 + *(v5 + 20), v0);
  sub_10001EF6C(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10016A588()
{
  v0 = type metadata accessor for SnoutStoryModel();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_projectBox();
  swift_beginAccess();
  sub_100010394(v4, v3);
  sub_10001ED70(v3);
  return sub_1000103F8(v3);
}

uint64_t sub_10016A66C()
{
  v1 = v0[154];
  v2 = v1[14];
  v0[155] = v2;
  v3 = v1[15];
  v0[156] = v3;
  v4 = v1[16];
  v0[157] = v4;
  v5 = swift_task_alloc();
  v0[158] = v5;
  *v5 = v0;
  v5[1] = sub_10016A754;

  return sub_100111604(sub_10016AE44, 0, v2, v3, v4);
}

uint64_t sub_10016A754(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v5 = *v2;
  *(*v2 + 1272) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 1232);

    return _swift_task_switch(sub_10016A89C, v8, 0);
  }
}

uint64_t sub_10016A89C()
{
  v1 = *(v0 + 1272);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100147284(0, v2, 0);
    v3 = v2 - 1;
    for (i = (v1 + 48); ; i += 15)
    {
      v5 = *(i - 1);
      v6 = i[1];
      *(v0 + 504) = *i;
      *(v0 + 520) = v6;
      *(v0 + 488) = v5;
      v7 = i[2];
      v8 = i[3];
      v9 = i[5];
      *(v0 + 568) = i[4];
      *(v0 + 584) = v9;
      *(v0 + 536) = v7;
      *(v0 + 552) = v8;
      v10 = i[6];
      v11 = i[7];
      v12 = i[9];
      *(v0 + 632) = i[8];
      *(v0 + 648) = v12;
      *(v0 + 600) = v10;
      *(v0 + 616) = v11;
      v13 = i[10];
      v14 = i[11];
      v15 = i[13];
      *(v0 + 696) = i[12];
      *(v0 + 712) = v15;
      *(v0 + 664) = v13;
      *(v0 + 680) = v14;
      v16 = i[1];
      *(v0 + 968) = *i;
      *(v0 + 984) = v16;
      v17 = i[2];
      v18 = i[3];
      v19 = i[5];
      *(v0 + 1032) = i[4];
      *(v0 + 1048) = v19;
      *(v0 + 1000) = v17;
      *(v0 + 1016) = v18;
      v20 = i[6];
      v21 = i[7];
      v22 = i[9];
      *(v0 + 1096) = i[8];
      *(v0 + 1112) = v22;
      *(v0 + 1064) = v20;
      *(v0 + 1080) = v21;
      v23 = i[10];
      v24 = i[11];
      v25 = i[13];
      *(v0 + 1160) = i[12];
      *(v0 + 1176) = v25;
      *(v0 + 1128) = v23;
      *(v0 + 1144) = v24;
      sub_100104824(v0 + 488, v0 + 728);
      sub_1000CF83C((v0 + 968), 0, 0, v0 + 16);
      sub_10003C100(v0 + 488);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_100147284((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      memcpy(&_swiftEmptyArrayStorage[59 * v27 + 4], (v0 + 16), 0x1D8uLL);
      if (!v3)
      {
        break;
      }

      --v3;
    }
  }

  v28 = *(v0 + 1272);

  *(v0 + 1280) = sub_10000DA7C((*(v0 + 1232) + 136), *(*(v0 + 1232) + 160));
  *(v0 + 1288) = sub_100087E14(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10016AAA0, 0, 0);
}

uint64_t sub_10016AAA0()
{
  sub_10000CE28(v0[160], (v0 + 149));
  v1 = swift_task_alloc();
  v0[162] = v1;
  *v1 = v0;
  v1[1] = sub_10016AB44;
  v2 = v0[161];

  return sub_1000203E0(v2);
}

uint64_t sub_10016AB44()
{
  v1 = *v0;
  v2 = *(*v0 + 1296);
  v3 = *(*v0 + 1288);
  v4 = *v0;

  sub_10016F144((v1 + 149));
  v5 = swift_task_alloc();
  v1[163] = v5;
  *v5 = v4;
  v5[1] = sub_10016AD00;
  v6 = v1[157];
  v7 = v1[156];
  v8 = v1[155];

  return (sub_10010F390)();
}

uint64_t sub_10016AD00()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v4 = *v1;
  *(*v1 + 1312) = v0;

  v5 = *(v2 + 1232);
  if (v0)
  {
    v6 = sub_10016AE2C;
  }

  else
  {
    v6 = sub_1000FB99C;
  }

  return _swift_task_switch(v6, v5, 0);
}

void *sub_10016AE44@<X0>(void *a1@<X8>)
{
  result = sub_1001044C8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_10016AE74(void *a1)
{
  v1 = [a1 connection];
  v2 = sub_1000854E0(v1, 0, _swiftEmptyArrayStorage, 0, 0);
  if (![v2 deleteAllEntities])
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10016F5A0(&qword_100239FA8, type metadata accessor for AKSQLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10016AFAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SnoutStoryModel();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10016B0D0, v1, 0);
}

uint64_t sub_10016B0D0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v6 = v4[14];
  v5 = v4[15];
  v7 = v4[16];
  (*(v3 + 16))(v1, v0[2], v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[11] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10016B224;

  return sub_100110E84(sub_10016F088, v9, v6, v5, v7);
}

uint64_t sub_10016B224(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_10016B844;
  }

  else
  {
    v9 = sub_10016B374;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10016B374()
{
  v26 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_10017AD04(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stories: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  v12 = *(v0 + 104);
  v13 = *(v12 + 16);
  *(v0 + 120) = v13;
  if (v13)
  {
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(*(v0 + 32) + 24);
    *(v0 + 152) = v16;
    v17 = *(v14 + 80);
    *(v0 + 156) = v17;
    *(v0 + 128) = *(v14 + 72);
    *(v0 + 136) = 0;
    sub_100010394(v12 + ((v17 + 32) & ~v17), v15);
    v18 = *(v15 + v16);
    sub_1000103F8(v15);
    v19 = swift_task_alloc();
    *(v0 + 144) = v19;
    *v19 = v0;
    v19[1] = sub_10016B5FC;
    v20 = *(v0 + 24);

    return sub_100166FDC(v18, 0, 0);
  }

  else
  {

    v22 = *(v0 + 80);
    v23 = *(v0 + 48);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10016B5FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10016B70C, v2, 0);
}

uint64_t sub_10016B70C()
{
  v1 = *(v0 + 136) + 1;
  if (v1 == *(v0 + 120))
  {
    v2 = *(v0 + 104);

    v3 = *(v0 + 80);
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 136) = v1;
    v7 = *(v0 + 152);
    v8 = *(v0 + 48);
    sub_100010394(*(v0 + 104) + ((*(v0 + 156) + 32) & ~*(v0 + 156)) + *(v0 + 128) * v1, v8);
    v9 = *(v8 + v7);
    sub_1000103F8(v8);
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_10016B5FC;
    v11 = *(v0 + 24);

    return sub_100166FDC(v9, 0, 0);
  }
}

uint64_t sub_10016B844()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete expired stories", v6, 2u);
  }

  v7 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016B978(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SnoutStoryModel();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10016BAA8, v1, 0);
}

uint64_t sub_10016BAA8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  v6 = v4[14];
  v5 = v4[15];
  v7 = v4[16];
  (*(v3 + 16))(v1, v0[2], v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[12] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10016BBFC;

  return sub_100110E84(sub_10016F05C, v9, v6, v5, v7);
}

uint64_t sub_10016BBFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_10016C5B4;
  }

  else
  {
    v9 = sub_10016BD4C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10016BD4C()
{
  v51 = v0;
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000DAC0(v2, qword_10023FD18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_10017AD04(v9, v10, &v50);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stories: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  v12 = *(v0 + 112);
  v13 = *(v12 + 16);
  *(v0 + 136) = v13;
  if (v13)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v14 + 80);
    *(v0 + 168) = v16;
    *(v0 + 144) = *(v14 + 72);
    *(v0 + 152) = 0;
    v17 = *(v0 + 56);
    sub_100010394(v12 + ((v16 + 32) & ~v16), v17);
    v18 = (v17 + *(v15 + 28));
    v19 = v18[1];
    if (v19)
    {
LABEL_12:
      v41 = *v18;
      v42 = swift_task_alloc();
      *(v0 + 160) = v42;
      *v42 = v0;
      v42[1] = sub_10016C1A8;
      v43 = *(v0 + 24);

      return sub_100166FDC(v41, v19, 1);
    }

    while (1)
    {
      v20 = *(v0 + 128);
      sub_100010394(*(v0 + 56), *(v0 + 48));
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 48);
      if (v23)
      {
        v25 = *(v0 + 32);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v50 = v27;
        *v26 = 136315138;
        v28 = *(v25 + 20);
        type metadata accessor for UUID();
        sub_10016F5A0(&qword_10023C610, &type metadata accessor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        sub_1000103F8(v24);
        v32 = sub_10017AD04(v29, v31, &v50);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to get conversion id from post-conversion story: %s", v26, 0xCu);
        sub_10000DB58(v27);
      }

      else
      {

        sub_1000103F8(v24);
      }

      v33 = *(v0 + 136);
      v34 = *(v0 + 152) + 1;
      sub_1000103F8(*(v0 + 56));
      if (v34 == v33)
      {
        break;
      }

      v35 = *(v0 + 144);
      v36 = *(v0 + 152) + 1;
      v37 = *(v0 + 168);
      v38 = *(v0 + 112);
      *(v0 + 152) = v36;
      v39 = *(v0 + 56);
      v40 = *(v0 + 32);
      sub_100010394(v38 + ((v37 + 32) & ~v37) + v35 * v36, v39);
      v18 = (v39 + *(v40 + 28));
      v19 = v18[1];
      if (v19)
      {
        goto LABEL_12;
      }
    }

    v45 = *(v0 + 112);
  }

  v46 = *(v0 + 88);
  v47 = *(v0 + 48);
  v48 = *(v0 + 56);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10016C1A8()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10016C2B8, v2, 0);
}

uint64_t sub_10016C2B8()
{
  v34 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 152) + 1;
  sub_1000103F8(*(v0 + 56));
  if (v2 == v1)
  {
LABEL_2:
    v3 = *(v0 + 112);

    v4 = *(v0 + 88);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    while (1)
    {
      v19 = *(v0 + 144);
      v20 = *(v0 + 152) + 1;
      *(v0 + 152) = v20;
      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      sub_100010394(*(v0 + 112) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + v19 * v20, v21);
      v23 = (v21 + *(v22 + 28));
      v24 = v23[1];
      if (v24)
      {
        break;
      }

      v25 = *(v0 + 128);
      sub_100010394(*(v0 + 56), *(v0 + 48));
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 48);
      if (v28)
      {
        v9 = *(v0 + 32);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v33 = v11;
        *v10 = 136315138;
        v12 = *(v9 + 20);
        type metadata accessor for UUID();
        sub_10016F5A0(&qword_10023C610, &type metadata accessor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        sub_1000103F8(v29);
        v16 = sub_10017AD04(v13, v15, &v33);

        *(v10 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get conversion id from post-conversion story: %s", v10, 0xCu);
        sub_10000DB58(v11);
      }

      else
      {

        sub_1000103F8(v29);
      }

      v17 = *(v0 + 136);
      v18 = *(v0 + 152) + 1;
      sub_1000103F8(*(v0 + 56));
      if (v18 == v17)
      {
        goto LABEL_2;
      }
    }

    v30 = *v23;
    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *v31 = v0;
    v31[1] = sub_10016C1A8;
    v32 = *(v0 + 24);

    return sub_100166FDC(v30, v24, 1);
  }
}

uint64_t sub_10016C5B4()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete expired stories", v6, 2u);
  }

  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10016C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[96] = v3;
  v4[95] = a3;
  v4[94] = a2;
  v4[93] = a1;
  v5 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  v4[97] = v5;
  v6 = *(v5 - 8);
  v4[98] = v6;
  v7 = *(v6 + 64) + 15;
  v4[99] = swift_task_alloc();

  return _swift_task_switch(sub_10016C7C8, v3, 0);
}

uint64_t sub_10016C7C8()
{
  v38 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
  sub_10016EF8C(&qword_10023E3A0, sub_10016F004);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v6 = *(v0 + 736);
  v7 = *(v6 + 16);
  if (v7)
  {
    v36 = *(v0 + 768);
    v8 = (*(v0 + 784) + 8);
    v9 = v7 - 1;
    for (i = 32; ; i += 112)
    {
      v11 = *(v0 + 792);
      v12 = *(v0 + 776);
      v13 = *(v0 + 760);
      v14 = *(v6 + i);
      v15 = *(v6 + i + 32);
      *(v0 + 528) = *(v6 + i + 16);
      *(v0 + 544) = v15;
      *(v0 + 512) = v14;
      v16 = *(v6 + i + 48);
      v17 = *(v6 + i + 64);
      v18 = *(v6 + i + 96);
      *(v0 + 592) = *(v6 + i + 80);
      *(v0 + 608) = v18;
      *(v0 + 560) = v16;
      *(v0 + 576) = v17;
      sub_10015DE70(v0 + 512, v0 + 624);
      sub_1000C8888((v0 + 512), v37);
      v19 = v37[11];
      *(v0 + 176) = v37[10];
      *(v0 + 192) = v19;
      v20 = v37[13];
      *(v0 + 208) = v37[12];
      *(v0 + 224) = v20;
      v21 = v37[7];
      *(v0 + 112) = v37[6];
      *(v0 + 128) = v21;
      v22 = v37[9];
      *(v0 + 144) = v37[8];
      *(v0 + 160) = v22;
      v23 = v37[3];
      *(v0 + 48) = v37[2];
      *(v0 + 64) = v23;
      v24 = v37[5];
      *(v0 + 80) = v37[4];
      *(v0 + 96) = v24;
      v25 = v37[1];
      *(v0 + 16) = v37[0];
      *(v0 + 32) = v25;
      *(v0 + 240) = v13;
      *(v0 + 248) = 0;
      *(v0 + 256) = 0;
      sub_1000E191C(v0 + 16);
      v26 = *(v0 + 224);
      *(v0 + 456) = *(v0 + 208);
      *(v0 + 472) = v26;
      *(v0 + 488) = *(v0 + 240);
      *(v0 + 504) = *(v0 + 256);
      v27 = *(v0 + 160);
      *(v0 + 392) = *(v0 + 144);
      *(v0 + 408) = v27;
      v28 = *(v0 + 192);
      *(v0 + 424) = *(v0 + 176);
      *(v0 + 440) = v28;
      v29 = *(v0 + 96);
      *(v0 + 328) = *(v0 + 80);
      *(v0 + 344) = v29;
      v30 = *(v0 + 128);
      *(v0 + 360) = *(v0 + 112);
      *(v0 + 376) = v30;
      v31 = *(v0 + 32);
      *(v0 + 264) = *(v0 + 16);
      *(v0 + 280) = v31;
      v32 = *(v0 + 64);
      *(v0 + 296) = *(v0 + 48);
      *(v0 + 312) = v32;
      sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
      AsyncStream.Continuation.yield(_:)();
      (*v8)(v11, v12);
      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  v33 = *(v0 + 792);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10016CBA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10016CC54, v4, 0);
}

uint64_t sub_10016CC54()
{
  if (!*(v0 + 112))
  {
    v15 = *(v0 + 40);
    v16 = *(v0 + 24);
    v18 = v15[14];
    v17 = v15[15];
    v19 = v15[16];
    v20 = swift_allocObject();
    *(v0 + 88) = v20;
    *(v20 + 16) = v16;
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_10016D010;
    v9 = *(v0 + 56);
    v10 = sub_10016F818;
    v11 = v20;
    v12 = v18;
    v13 = v17;
    v14 = v19;
    goto LABEL_5;
  }

  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = v1[14];
    v5 = v1[15];
    v6 = v1[16];
    v7 = swift_allocObject();
    *(v0 + 64) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10016CEC8;
    v9 = *(v0 + 48);
    v10 = sub_10016EEE0;
    v11 = v7;
    v12 = v4;
    v13 = v5;
    v14 = v6;
LABEL_5:

    return (sub_10011115C)(v9, v10, v11, v12, v13, v14);
  }

  v23 = *(v0 + 16);
  v24 = type metadata accessor for SnoutStoryModel();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10016CEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_10016D2B4;
  }

  else
  {
    v7 = sub_10016D1D0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10016D010()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_10016D248;
  }

  else
  {
    v7 = sub_10016D158;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10016D158()
{
  sub_10016EF0C(v0[7], v0[2]);
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10016D1D0()
{
  sub_10016EF0C(v0[6], v0[2]);
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10016D248()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016D2B4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016D340()
{
  v1 = *(v0 + 24);
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[16];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10016D418;

  return sub_100110E84(sub_10016F800, 0, v3, v2, v4);
}

uint64_t sub_10016D418(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_10016D778;
  }

  else
  {
    v8 = sub_10016D54C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10016D54C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  sub_10000CDE0(&qword_10023D690, &qword_1001C1718);
  sub_10016EDF4();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;
  v9 = v0[5];

  if (v2)
  {
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FD18);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to retrieve stories: %@", v13, 0xCu);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v16 = v6;
    v17 = v8;
  }

  v18 = v0[1];

  return v18(v16, v17);
}

uint64_t sub_10016D778()
{
  v1 = *(v0 + 48);
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve stories: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xF000000000000000);
}

uint64_t sub_10016D920(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10016D944, v2, 0);
}

uint64_t sub_10016D944()
{
  v1 = v0[3];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
  sub_10016EF8C(&qword_10023D850, sub_10014C9AC);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v0[6] = v7;
  v0[7] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10016DC30;
  v9 = v0[4];

  return sub_1001553C8(v5, v7, v9);
}

uint64_t sub_10016DC30()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10016DD40, v2, 0);
}

uint64_t sub_10016DD40()
{
  sub_10001BABC(v0[7], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DDA0()
{
  v1 = *(v0 + 120);

  sub_10000DB58((v0 + 136));
  sub_10000DB58((v0 + 176));
  v2 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionStream;
  v3 = sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionContinuation;
  v5 = sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SnoutManager()
{
  result = qword_10023E250;
  if (!qword_10023E250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016DEE4()
{
  sub_10016E004(319, &qword_10023E260, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10016E004(319, &unk_10023E268, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10016E004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SnoutManager.SnoutAction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016E058(uint64_t a1)
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

__n128 sub_10016E080(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_10016E0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 86) | ((*(a1 + 96) >> 1) << 16);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10016E124(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 232) = 0;
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 240) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 242) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      v4 = -a2;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = v4 << 48;
      *(a1 + 88) = 0;
      *(a1 + 96) = (v4 >> 15) & 0x1FFFE;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 226) = 0u;
      return result;
    }

    *(a1 + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016E1F8(uint64_t result, __int16 a2)
{
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 0xFF01;
  v4 = *(result + 128) & 1;
  v5 = *(result + 144) & 0xFFFF01;
  v6 = *(result + 160) & 1;
  v7 = *(result + 184) & 0xFFFFFFLL;
  v8 = *(result + 240) & 0x103 | (a2 << 15);
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 184) = v7;
  *(result + 240) = v8;
  return result;
}

uint64_t sub_10016E27C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 258) = a4;
  *(v5 + 976) = a3;
  *(v5 + 968) = a2;
  *(v5 + 960) = a1;
  v6 = a1[11];
  *(v5 + 672) = a1[10];
  *(v5 + 688) = v6;
  v7 = a1[13];
  *(v5 + 704) = a1[12];
  *(v5 + 720) = v7;
  v8 = a1[7];
  *(v5 + 608) = a1[6];
  *(v5 + 624) = v8;
  v9 = a1[9];
  *(v5 + 640) = a1[8];
  *(v5 + 656) = v9;
  v10 = a1[3];
  *(v5 + 544) = a1[2];
  *(v5 + 560) = v10;
  v11 = a1[5];
  *(v5 + 576) = a1[4];
  *(v5 + 592) = v11;
  v12 = a1[1];
  *(v5 + 512) = *a1;
  *(v5 + 528) = v12;
  v13 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v5 + 984) = v13;
  v14 = *(v13 - 8);
  *(v5 + 992) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 1000) = swift_task_alloc();
  v16 = *v4;
  *(v5 + 1008) = *v4;

  return _swift_task_switch(sub_10016E390, v16, 0);
}

uint64_t sub_10016E390()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v24 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 688);
  *(v0 + 176) = *(v0 + 672);
  *(v0 + 192) = v7;
  v8 = *(v0 + 720);
  *(v0 + 208) = *(v0 + 704);
  *(v0 + 224) = v8;
  v9 = *(v0 + 624);
  *(v0 + 112) = *(v0 + 608);
  *(v0 + 128) = v9;
  v10 = *(v0 + 656);
  *(v0 + 144) = *(v0 + 640);
  *(v0 + 160) = v10;
  v11 = *(v0 + 560);
  *(v0 + 48) = *(v0 + 544);
  *(v0 + 64) = v11;
  v12 = *(v0 + 592);
  *(v0 + 80) = *(v0 + 576);
  *(v0 + 96) = v12;
  v13 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v13;
  v14 = *(v0 + 258);
  *(v0 + 240) = v5;
  *(v0 + 248) = v4;
  *(v0 + 256) = v14;
  *(v0 + 257) = 1;
  sub_1000E191C(v0 + 16);
  v15 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v15;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v16 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v16;
  v17 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v17;
  v18 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v18;
  v19 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v19;
  v20 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v20;
  v21 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v21;
  sub_100010568(v6, v0 + 736);
  sub_10016E7C0(v5, v4, v14);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v24);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10016E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[66] = a3;
  v4[65] = a2;
  v4[64] = a1;
  v5 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  v4[67] = v5;
  v6 = *(v5 - 8);
  v4[68] = v6;
  v7 = *(v6 + 64) + 15;
  v4[69] = swift_task_alloc();
  v8 = *v3;
  v4[70] = *v3;

  return _swift_task_switch(sub_10016E60C, v8, 0);
}

uint64_t sub_10016E60C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v5;
  sub_10016E74C(v0 + 16);
  v6 = *(v0 + 224);
  v7 = *(v0 + 240);
  v8 = *(v0 + 192);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v6;
  *(v0 + 488) = v7;
  v9 = *(v0 + 160);
  v10 = *(v0 + 176);
  v11 = *(v0 + 128);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v9;
  *(v0 + 424) = v10;
  *(v0 + 440) = v8;
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v14 = *(v0 + 64);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v12;
  *(v0 + 360) = v13;
  *(v0 + 376) = v11;
  v15 = *(v0 + 32);
  v16 = *(v0 + 48);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v15;
  *(v0 + 504) = *(v0 + 256);
  *(v0 + 296) = v16;
  *(v0 + 312) = v14;

  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10016E74C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 0xFF01;
  v3 = *(result + 128) & 1;
  v4 = *(result + 144) & 0xFFFF01;
  v5 = *(result + 160) & 1;
  v6 = *(result + 184) & 0xFFFFFFLL;
  v7 = *(result + 240) & 0x103 | 0x8000;
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 184) = v6;
  *(result + 240) = v7;
  return result;
}

uint64_t sub_10016E7C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *sub_10016E7D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v50 = a5;
  v49 = a3;
  v51 = a2;
  v48 = a1;
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v47 = &v47 - v8;
  v9 = sub_10000CDE0(&qword_10023E3D8, &qword_1001C3B90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = sub_10000CDE0(&qword_10023E3E0, &qword_1001C3B98);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v55[3] = &type metadata for SnoutStoryMetrics;
  v55[4] = &off_100216E60;
  v22 = swift_allocObject();
  v55[0] = v22;
  v23 = *(a4 + 16);
  *(v22 + 16) = *a4;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a4 + 32);
  v54[3] = &type metadata for AppStoreDaemonSKANInterop;
  v54[4] = &off_100222C60;
  v24 = type metadata accessor for SnoutManager();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = sub_100054C30(v55, &type metadata for SnoutStoryMetrics);
  __chkstk_darwin(v28);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_100054C30(v54, &type metadata for AppStoreDaemonSKANInterop);
  v53[3] = &type metadata for SnoutStoryMetrics;
  v53[4] = &off_100216E60;
  v32 = swift_allocObject();
  v53[0] = v32;
  v33 = *(v30 + 1);
  *(v32 + 16) = *v30;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v30 + 4);
  v52[3] = &type metadata for AppStoreDaemonSKANInterop;
  v52[4] = &off_100222C60;
  swift_defaultActor_initialize();
  v34 = v51;
  *(v27 + 14) = v48;
  *(v27 + 15) = v34;
  v35 = v49;
  *(v27 + 16) = v49;
  sub_10000CE28(v53, (v27 + 136));
  sub_10000CE28(v52, (v27 + 176));
  v36 = *(v15 + 56);
  (*(v10 + 104))(v13, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v9);

  v49 = v35;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v10 + 8))(v13, v9);
  sub_100014B50(v21, v19, &qword_10023E3E0, &qword_1001C3B98);
  v37 = *(v15 + 56);
  v38 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionStream;
  v39 = sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  v40 = *(v39 - 8);
  (*(v40 + 32))(&v27[v38], v19, v39);
  v41 = sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  v42 = *(v41 - 8);
  (*(v42 + 8))(&v19[v37], v41);
  sub_100014B50(v21, v19, &qword_10023E3E0, &qword_1001C3B98);
  (*(v42 + 32))(&v27[OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionContinuation], &v19[*(v15 + 56)], v41);
  (*(v40 + 8))(v19, v39);
  if (v50)
  {
    v43 = type metadata accessor for TaskPriority();
    v44 = v47;
    (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v27;

    sub_10001267C(0, 0, v44, &unk_1001C3BA8, v45);

    sub_10000DAF8(v21, &qword_10023E3E0, &qword_1001C3B98);
  }

  else
  {
    sub_10000DAF8(v21, &qword_10023E3E0, &qword_1001C3B98);
  }

  sub_10000DB58(v52);
  sub_10000DB58(v53);
  sub_10000DB58(v54);
  sub_10000DB58(v55);
  return v27;
}

unint64_t sub_10016EDF4()
{
  result = qword_10023E398;
  if (!qword_10023E398)
  {
    sub_10000CCC0(&qword_10023D690, &qword_1001C1718);
    sub_10016F5A0(&qword_10023A0B0, type metadata accessor for SnoutStoryModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E398);
  }

  return result;
}

uint64_t sub_10016EEA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016EF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016EF8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023D848, &unk_1001C19E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016F004()
{
  result = qword_10023E3A8;
  if (!qword_10023E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3A8);
  }

  return result;
}

uint64_t sub_10016F0B4@<X0>(uint64_t (*a1)(unint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v6 = *(type metadata accessor for Date() - 8);
  result = a1(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10016F198()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 248);

  v15 = *(v0 + 264);

  v16 = *(v0 + 296);

  v17 = *(v0 + 344);

  v18 = *(v0 + 360);

  v19 = *(v0 + 392);

  v20 = *(v0 + 424);

  v21 = *(v0 + 448);

  v22 = *(v0 + 464);

  v23 = *(v0 + 480);

  return _swift_deallocObject(v0, 488, 7);
}

unint64_t sub_10016F2C0()
{
  result = qword_10023E3B0;
  if (!qword_10023E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3B0);
  }

  return result;
}

uint64_t sub_10016F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnoutStoryModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F3A4()
{
  v1 = type metadata accessor for SnoutStoryModel();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + *(v2 + 36) + 8);

  v9 = *(v0 + v4 + *(v2 + 52));

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10016F51C()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[26];

  v6 = v0[29];

  v7 = v0[31];

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_10016F5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016F5E8(uint64_t a1)
{
  v1 = *(a1 + 86) | ((*(a1 + 96) >> 1) << 16);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016F614()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016F64C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016F68C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BD30;

  return sub_1001637D0();
}

unint64_t sub_10016F760(uint64_t a1)
{
  result = sub_10016F2C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10016F78C()
{
  result = qword_10023E3E8;
  if (!qword_10023E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3E8);
  }

  return result;
}

void sub_10016F838(void *a1)
{
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    return;
  }

  v3 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v3))
  {
    return;
  }

  v4 = String.init(cString:)();
  v6 = v5;
  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000DAC0(v7, qword_10023FC70);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10017AD04(v4, v6, &v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "Received xpc event: %s", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v12 = xpc_dictionary_get_dictionary(a1, "UserInfo");
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = xpc_get_type(v12);
  if (v13 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_unknownObjectRelease();
LABEL_11:
    v14 = [objc_opt_self() defaultCenter];
    v20 = String._bridgeToObjectiveC()();

    [v14 postNotificationName:v20 object:0];

    return;
  }

  v15 = _CFXPCCreateCFObjectFromXPCObject();
  if (v15 && (v22 = v15, sub_10000CDE0(&qword_10023A758, &qword_1001B5880), swift_dynamicCast()))
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() defaultCenter];
  v18 = String._bridgeToObjectiveC()();

  if (v16)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v17 postNotificationName:v18 object:0 userInfo:v19.super.isa];
  swift_unknownObjectRelease();
}

uint64_t sub_10016FB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 72) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_10016FBB0, 0, 0);
}

uint64_t sub_10016FBB0()
{
  v1 = *(v0 + 72);
  if (v1 == 255)
  {
    v7 = *(v0 + 40);
    os_unfair_lock_lock((v7 + 36));
    v5 = *(v7 + 16);
    v6 = *(v7 + 24);
    v4 = *(v7 + 32);
    sub_100014BB8(v5, v6, *(v7 + 32));
    os_unfair_lock_unlock((v7 + 36));
    if (v4 == 255)
    {
      goto LABEL_6;
    }

    LOBYTE(v1) = *(v0 + 72);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    LOBYTE(v4) = *(v0 + 72);
    v5 = v2;
    v6 = v3;
  }

  sub_100014BB8(v2, v3, v1);
  sub_1000262C0(v5, v6, v4 & 1);
  sub_100014BF8(v5, v6, v4 & 1);
LABEL_6:
  v13 = (*(v0 + 48) + **(v0 + 48));
  v8 = *(*(v0 + 48) + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_10016FD30;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return v13(v11);
}

uint64_t sub_10016FD30()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10016FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10016FE7C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_100014ECC(a6, v47);
    sub_1000B6D74(v48, v45);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v42;
    *(v25 + 56) = v43;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v47, 0x260uLL);
    v26 = v45[1];
    *(v25 + 680) = v45[0];
    *(v25 + 696) = v26;
    *(v25 + 712) = v46;
    *(v25 + 720) = v9;
    *(v25 + 728) = v44;
    *(v25 + 736) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C4008, v25);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v41;
  (*(v41 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v44();
  sub_10001BABC(v37, v39);
}

uint64_t sub_1001702C4(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a4;
  v43 = a3;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v48);
  if (*(&v48[1] + 1) != 1)
  {
    v49[0] = v48[0];
    v49[1] = v48[1];
    v50 = *&v48[2];
    goto LABEL_5;
  }

  v41 = a5;
  sub_10000DAF8(v48, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v48[0], *(&v48[0] + 1), *&v48[1], *(&v48[1] + 1), v49);

    a5 = v41;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_10001518C(a6, v48);
    sub_1000B6D74(v49, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v43;
    *(v25 + 56) = v44;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v48, 0x408uLL);
    v26 = v46[1];
    *(v25 + 1104) = v46[0];
    *(v25 + 1120) = v26;
    *(v25 + 1136) = v47;
    *(v25 + 1144) = v9;
    *(v25 + 1152) = v45;
    *(v25 + 1160) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3F90, v25);

    return sub_1000D5894(v49);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v42;
  (*(v42 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v45();
  sub_10001BABC(v37, v39);
}

uint64_t sub_100170708(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a4;
  v41 = a3;
  v15 = type metadata accessor for Logger();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v39 - v21;
  sub_1000F2AD4(v46);
  if (*(&v46[1] + 1) != 1)
  {
    v47[0] = v46[0];
    v47[1] = v46[1];
    v48 = *&v46[2];
    goto LABEL_5;
  }

  v39 = a5;
  sub_10000DAF8(v46, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), v47);

    a5 = v39;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_10001518C(a6, v46);
    sub_1000B6D74(v47, v44);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v41;
    *(v25 + 56) = v42;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v46, 0x408uLL);
    v26 = v44[1];
    *(v25 + 1104) = v44[0];
    *(v25 + 1120) = v26;
    *(v25 + 1136) = v45;
    *(v25 + 1144) = v9;
    *(v25 + 1152) = v43;
    *(v25 + 1160) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3FB8, v25);

    return sub_1000D5894(v47);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v40;
  (*(v40 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  sub_1000F2D3C();
  v36 = sub_10017B8D8();
  v38 = v37;
  v43();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100170B38(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a4;
  v43 = a3;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v48);
  if (*(&v48[1] + 1) != 1)
  {
    v49[0] = v48[0];
    v49[1] = v48[1];
    v50 = *&v48[2];
    goto LABEL_5;
  }

  v41 = a5;
  sub_10000DAF8(v48, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v48[0], *(&v48[0] + 1), *&v48[1], *(&v48[1] + 1), v49);

    a5 = v41;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_100014F7C(a6, v48);
    sub_1000B6D74(v49, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v43;
    *(v25 + 56) = v44;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v48, 0x1F8uLL);
    v26 = v46[1];
    *(v25 + 576) = v46[0];
    *(v25 + 592) = v26;
    *(v25 + 608) = v47;
    *(v25 + 616) = v9;
    *(v25 + 624) = v45;
    *(v25 + 632) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3F40, v25);

    return sub_1000D5894(v49);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v42;
  (*(v42 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v45();
  sub_10001BABC(v37, v39);
}

uint64_t sub_100170F78(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a4;
  v43 = a3;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v48);
  if (*(&v48[1] + 1) != 1)
  {
    v49[0] = v48[0];
    v49[1] = v48[1];
    v50 = *&v48[2];
    goto LABEL_5;
  }

  v41 = a5;
  sub_10000DAF8(v48, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v48[0], *(&v48[0] + 1), *&v48[1], *(&v48[1] + 1), v49);

    a5 = v41;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_100014F7C(a6, v48);
    sub_1000B6D74(v49, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v43;
    *(v25 + 56) = v44;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v48, 0x1F8uLL);
    v26 = v46[1];
    *(v25 + 576) = v46[0];
    *(v25 + 592) = v26;
    *(v25 + 608) = v47;
    *(v25 + 616) = v9;
    *(v25 + 624) = v45;
    *(v25 + 632) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3F68, v25);

    return sub_1000D5894(v49);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v42;
  (*(v42 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v39 = v38;
  v45();
  sub_10001BABC(v37, v39);
}

uint64_t sub_1001713B8(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a4;
  v43 = a3;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v48);
  if (*(&v48[1] + 1) != 1)
  {
    v49[0] = v48[0];
    v49[1] = v48[1];
    v50 = *&v48[2];
    goto LABEL_5;
  }

  v41 = a5;
  sub_10000DAF8(v48, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v48[0], *(&v48[0] + 1), *&v48[1], *(&v48[1] + 1), v49);

    a5 = v41;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_1000150DC(a6, v48);
    sub_1000B6D74(v49, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v43;
    *(v25 + 56) = v44;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v48, 0x258uLL);
    v26 = v46[1];
    *(v25 + 672) = v46[0];
    *(v25 + 688) = v26;
    *(v25 + 704) = v47;
    *(v25 + 712) = v9;
    *(v25 + 720) = v45;
    *(v25 + 728) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3F18, v25);

    return sub_1000D5894(v49);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v42;
  (*(v42 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v45();
  sub_10001BABC(v37, v39);
}

uint64_t sub_1001717F8(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a4;
  v43 = a3;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v48);
  if (*(&v48[1] + 1) != 1)
  {
    v49[0] = v48[0];
    v49[1] = v48[1];
    v50 = *&v48[2];
    goto LABEL_5;
  }

  v41 = a5;
  sub_10000DAF8(v48, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v48[0], *(&v48[0] + 1), *&v48[1], *(&v48[1] + 1), v49);

    a5 = v41;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_100014E1C(a6, v48);
    sub_1000B6D74(v49, v46);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v43;
    *(v25 + 56) = v44;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v48, 0x5C8uLL);
    v26 = v46[1];
    *(v25 + 1552) = v46[0];
    *(v25 + 1568) = v26;
    *(v25 + 1584) = v47;
    *(v25 + 1592) = v9;
    *(v25 + 1600) = v45;
    *(v25 + 1608) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3EF0, v25);

    return sub_1000D5894(v49);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v42;
  (*(v42 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v45();
  sub_10001BABC(v37, v39);
}

uint64_t sub_100171C3C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v47);
    sub_1000B6D74(v48, v45);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v42;
    *(v25 + 56) = v43;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v47, 0x2B0uLL);
    v26 = v45[1];
    *(v25 + 760) = v45[0];
    *(v25 + 776) = v26;
    *(v25 + 792) = v46;
    *(v25 + 800) = v9;
    *(v25 + 808) = v44;
    *(v25 + 816) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3EC0, v25);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v41;
  (*(v41 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v39 = v38;
  v44();
  sub_10001BABC(v37, v39);
}

uint64_t sub_100172084(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - v21;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    [v23 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v22, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v47);
    sub_1000B6D74(v48, v45);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 48) = v42;
    *(v25 + 56) = v43;
    *(v25 + 64) = a9;
    memcpy((v25 + 72), v47, 0x2B0uLL);
    v26 = v45[1];
    *(v25 + 760) = v45[0];
    *(v25 + 776) = v26;
    *(v25 + 792) = v46;
    *(v25 + 800) = v9;
    *(v25 + 808) = v44;
    *(v25 + 816) = a5;

    v27 = v9;

    sub_10001267C(0, 0, v22, &unk_1001C3DE8, v25);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v29 = Logger.xpc.unsafeMutableAddressor();
  v30 = v41;
  (*(v41 + 16))(v18, v29, v15);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v30 + 8))(v18, v15);
  v36 = sub_1000F2D3C();
  v37 = sub_10017BB68(v36 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v39 = v38;
  v44();
  sub_10001BABC(v37, v39);
}

uint64_t sub_1001724CC(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v48 = a4;
  v49 = a5;
  v46 = a3;
  v44 = a1;
  v45 = a2;
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v43 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v43 - v23;
  sub_1000F2AD4(v52);
  if (*(&v52[1] + 1) != 1)
  {
    v53[0] = v52[0];
    v53[1] = v52[1];
    v54 = *&v52[2];
    goto LABEL_5;
  }

  v43[1] = v12;
  sub_10000DAF8(v52, &qword_10023CF98, &unk_1001C3DD0);
  v25 = [objc_opt_self() currentConnection];
  if (v25)
  {
    v26 = v25;
    [v25 auditToken];
    sub_1000B78E0(*&v52[0], *(&v52[0] + 1), *&v52[1], *(&v52[1] + 1), v53);

LABEL_5:
    sub_100014B50(a7, v24, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v52);
    sub_1000B6D74(v53, v50);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v28 = v45;
    *(v27 + 32) = v44;
    *(v27 + 40) = v28;
    *(v27 + 48) = v46;
    *(v27 + 56) = v47;
    *(v27 + 64) = a9;
    memcpy((v27 + 72), v52, 0x2B0uLL);
    v29 = v50[1];
    *(v27 + 760) = v50[0];
    *(v27 + 776) = v29;
    *(v27 + 792) = v51;
    *(v27 + 800) = v9;
    v30 = v49;
    *(v27 + 808) = v48;
    *(v27 + 816) = v30;

    v31 = v9;

    sub_10001267C(0, 0, v24, &unk_1001C3E78, v27);

    return sub_1000D5894(v53);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v33 = Logger.xpc.unsafeMutableAddressor();
  v34 = v17;
  (*(v17 + 16))(v20, v33, v16);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Received error while getting client: %@", v37, 0xCu);
    sub_10000DAF8(v38, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v34 + 8))(v20, v16);
  *v15 = sub_1000F2D3C();
  swift_storeEnumTagMultiPayload();
  v40 = sub_10017B65C();
  v42 = v41;
  sub_10000DAF8(v15, &qword_10023CF90, &unk_1001BF9B8);
  v48(v40, v42);
  sub_10001BABC(v40, v42);
}

uint64_t sub_100172970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100172AE4, 0, 0);
}

uint64_t sub_100172AE4()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C4018;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100172F54()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v15 = *v1;

  if (v0)
  {
    v5 = v2[37];
    v4 = v2[38];
    v8 = v2 + 35;
    v6 = v2[35];
    v7 = v8[1];

    v9 = sub_10017E0EC;
  }

  else
  {
    v11 = v2[37];
    v10 = v2[38];
    v12 = v2[35];
    v13 = v2[36];

    v9 = sub_10017E060;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001730F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100173268, 0, 0);
}

uint64_t sub_100173268()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3FF0;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001736D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10017384C, 0, 0);
}

uint64_t sub_10017384C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3FA0;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100173CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100173E30, 0, 0);
}

uint64_t sub_100173E30()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3FC8;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001742A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100174414, 0, 0);
}

uint64_t sub_100174414()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3F50;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}