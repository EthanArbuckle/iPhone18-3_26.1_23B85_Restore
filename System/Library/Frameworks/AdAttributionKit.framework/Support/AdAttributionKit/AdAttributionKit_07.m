uint64_t sub_10009E5CC(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E634()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10009E5CC(v7);
  }

  return 0;
}

unint64_t sub_10009E8EC()
{
  result = qword_10023C120;
  if (!qword_10023C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C120);
  }

  return result;
}

uint64_t sub_10009E948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009E990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009EA60@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  sub_1000B44B4(a1 + 18);
  a1[26] = &type metadata for LaunchServicesRecordFactory;
  a1[27] = &off_10021CBA8;
  a1[31] = &type metadata for DogTokenClientFactory;
  a1[32] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v3 = qword_10023FC28;
  v9 = type metadata accessor for TaskGreyhound();
  a1[36] = v9;
  a1[37] = &off_1002169F0;
  a1[33] = v3;
  a1[41] = &type metadata for AMSDogBag;
  a1[42] = &off_100222F48;
  a1[46] = &type metadata for CasinoDog;
  a1[47] = &off_1002179A0;
  v4 = qword_100239D30;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_10023FD90;
  v6 = type metadata accessor for SnoutManager();
  a1[51] = v6;
  a1[52] = &off_100223858;
  a1[48] = v5;
  *a1 = 0x74735F6E656B6F74;
  a1[1] = 0xEB0000000065726FLL;
  a1[2] = v2;
  a1[3] = 0xD000000000000010;
  a1[4] = 0x80000001001CB320;
  a1[5] = v2;
  a1[6] = 0xD000000000000012;
  a1[7] = 0x80000001001CB340;
  a1[8] = v2;
  a1[9] = 0xD000000000000014;
  a1[10] = 0x80000001001CB360;
  a1[11] = v2;
  a1[12] = 0xD000000000000018;
  a1[13] = 0x80000001001CB380;
  a1[14] = v2;
  a1[15] = 0x63616274736F6867;
  a1[16] = 0xEF65726F74735F6BLL;
  a1[17] = v2;
  a1[56] = &type metadata for AggregatedReportingManager;
  a1[57] = &off_10021E0D0;
  v7 = swift_allocObject();
  a1[53] = v7;
  v7[11] = &type metadata for BiomeEventStreamDog;
  v7[12] = &off_10021F658;
  v7[16] = &type metadata for AMSDogBag;
  v7[17] = &off_100222F48;
  v7[21] = v9;
  v7[22] = &off_1002169F0;
  v7[18] = v3;
  v7[26] = &type metadata for LaunchServicesRecordFactory;
  v7[27] = &off_10021CBA8;
  v7[31] = v6;
  v7[32] = &off_100223858;
  v7[28] = v5;
  v7[2] = 0xD00000000000001ALL;
  v7[3] = 0x80000001001CB760;
  v7[4] = v2;
  v7[5] = 0xD000000000000018;
  v7[6] = 0x80000001001CB380;
  v7[7] = v2;
  a1[61] = v6;
  a1[62] = &off_100223858;
  a1[58] = v5;
  return swift_retain_n();
}

uint64_t sub_10009ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[91] = v5;
  v6[90] = a5;
  v6[89] = a4;
  v6[88] = a3;
  v6[87] = a2;
  v6[86] = a1;
  v7 = type metadata accessor for Calendar.Component();
  v6[92] = v7;
  v8 = *(v7 - 8);
  v6[93] = v8;
  v9 = *(v8 + 64) + 15;
  v6[94] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v6[95] = v10;
  v11 = *(v10 - 8);
  v6[96] = v11;
  v12 = *(v11 + 64) + 15;
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_10009EEC4, 0, 0);
}

uint64_t sub_10009EEC4()
{
  v26 = v0;
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 688);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Token handoff from: %llu", v5, 0xCu);
  }

  v6 = *(v0 + 720);
  v7 = *(v0 + 712);

  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000A0C7C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  *(v0 + 784) = 0;

  v11 = *(v0 + 855);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    *(v0 + 857) = v11;
    sub_10000CDE0(&unk_10023C150, qword_1001BAF38);
    v16 = Optional.debugDescription.getter();
    v18 = sub_10017AD04(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received skan environment: %s", v14, 0xCu);
    sub_10000DB58(v15);
  }

  v19 = swift_task_alloc();
  *(v0 + 792) = v19;
  *v19 = v0;
  v19[1] = sub_10009F700;
  v20 = *(v0 + 728);
  v21 = *(v0 + 704);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);

  return sub_1000D300C(v22, v21, v23, v11);
}

uint64_t sub_10009F700()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 752);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10009F830()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10009F934, 0, 0);
}

uint64_t sub_10009F934()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[94];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[98];

  return v4();
}

uint64_t sub_10009F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009F9DC, 0, 0);
}

uint64_t sub_10009F9DC()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Handoff UT metrics from: %llu", v5, 0xCu);
  }

  v6 = v0[5];

  v7 = *sub_10000DA7C((v6 + 464), *(v6 + 488));
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_10009FB54;
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  return sub_10016C6F0(v10, v9, v11);
}

uint64_t sub_10009FB54()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009FC6C, 0, 0);
}

uint64_t sub_10009FC6C()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] POD Token handoff from: %llu", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10009FDD0;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_1000D35B4(v10, v7, v9);
}

uint64_t sub_10009FDD0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009FEC8(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return _swift_task_switch(sub_10009FEE8, 0, 0);
}

uint64_t sub_10009FEE8()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Is eligible for purchase processing for app: %llu", v5, 0xCu);
  }

  v7 = v0[24];
  v6 = v0[25];

  v8 = sub_10000DA7C((v6 + 424), *(v6 + 448));
  v10 = v8[3];
  v9 = v8[4];
  v11 = v8[5];
  v12 = swift_allocObject();
  v0[26] = v12;
  *(v12 + 16) = v7;
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_1000A00C0;

  return sub_10010FF18((v0 + 2), sub_1000A0C60, v12, v10, v9, v11);
}

uint64_t sub_1000A00C0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);

  if (v0)
  {
    v5 = sub_1000A0290;
  }

  else
  {
    v5 = sub_1000A01E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A01E4()
{
  v1 = *(v0 + 48);
  *(v0 + 152) = *(v0 + 64);
  *(v0 + 136) = v1;
  *(v0 + 168) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 184) = *(v0 + 96);
  *(v0 + 120) = v2;
  v3 = *(v0 + 152) != 0;
  sub_10000DAF8(v0 + 104, &qword_10023B690, &qword_1001B9260);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000A02AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for InAppPurchaseDetails();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0350, 0, 0);
}

uint64_t sub_1000A0350()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Process In-App Purchase for app: %llu", v5, 0xCu);
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[3];
  v8 = v0[4];

  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000A0B38();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v0[10] = 0;

  v13 = v0[5];
  sub_1000A0BEC(v0[7], v0[8]);
  sub_10000DA7C((v13 + 424), *(v13 + 448));
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1000A0680;
  v15 = v0[8];
  v16 = v0[2];

  return sub_1000DA5C0(v15, v16);
}

uint64_t sub_1000A0680()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000A0804;
  }

  else
  {
    v3 = sub_1000A0794;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A0794()
{
  sub_1000A0B90(v0[8]);
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A0804()
{
  v1 = v0[12];
  v2 = v0[9];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get purchase intake request: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  if (!v0[10])
  {
    sub_1000A0B90(v0[8]);
  }

  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000A0980(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000A09A0, 0, 0);
}

uint64_t sub_1000A09A0()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FCD0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[TokenHandoffService] Reporting purchase intake failure for app %llu, error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = v0[1];

  return v10();
}

unint64_t sub_1000A0B38()
{
  result = qword_10023C140;
  if (!qword_10023C140)
  {
    type metadata accessor for InAppPurchaseDetails();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C140);
  }

  return result;
}

uint64_t sub_1000A0B90(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A0C7C()
{
  result = qword_10023C148;
  if (!qword_10023C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C148);
  }

  return result;
}

uint64_t sub_1000A0CD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_1000A0ED8(int a1, void *a2, void *aBlock)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a2;

  return _swift_task_switch(sub_1000A0F54, 0, 0);
}

void sub_1000A0F54()
{
  v1 = [*(v0 + 16) protectionSpace];
  v2 = [v1 serverTrust];

  if (v2)
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [objc_allocWithZone(NSURLCredential) initWithTrust:v2];

    (v3)[2](v3, 0, v5);
    _Block_release(v3);

    v6 = *(v0 + 8);

    v6();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000A1084()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureTaskDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A10DC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A112C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000BD30;

  return sub_1000A0ED8(v2, v3, v5);
}

Swift::Int sub_1000A11EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000A1260()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A12B4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216398, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000A1344@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216680, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000A139C(uint64_t a1)
{
  v2 = sub_1000A62D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A13D8(uint64_t a1)
{
  v2 = sub_1000A62D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1414(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023C270, &qword_1001BB140);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000A62D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000A154C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v20 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));

    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v23;
    *v11 = v21;
    *(v11 + 16) = v22;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t sub_1000A1794(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v13;
    v22 = v13[1];

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v25;
    *v11 = v23;
    *(v11 + 16) = v24;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t sub_1000A19C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A1A70;

  return sub_1000A4DF8(a1);
}

uint64_t sub_1000A1A70(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1000A1B80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000A6450;

  return sub_1000A45EC(a1, a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t sub_1000A1C74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A1D28;

  return (sub_1000A5718)(a1, a2);
}

uint64_t sub_1000A1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_1000A1E40()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023C160);
  v1 = sub_10000DAC0(v0, qword_10023C160);
  v2 = Logger.general.unsafeMutableAddressor();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A1ECC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000152E0;

  return v7();
}

uint64_t sub_1000A1FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000152E0;

  return sub_1000A1ECC(v2, v3, v5);
}

uint64_t sub_1000A2078(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000BD30;

  return v8();
}

uint64_t sub_1000A2160()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A21A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_1000A2078(a1, v4, v5, v7);
}

uint64_t sub_1000A226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000A2558(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000DAF8(v12, &qword_100239EE0, &qword_1001B3640);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
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

    sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);

    return v23;
  }

LABEL_8:
  sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);
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

uint64_t sub_1000A2558(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A25C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2600(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000152E0;

  return sub_1000147B8(a1, v5);
}

uint64_t sub_1000A26B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD30;

  return sub_1000147B8(a1, v5);
}

unint64_t sub_1000A2780()
{
  v0 = 0x4E574F4E4B4E55;
  v1 = MobileGestalt_get_current_device();
  if (v1 && (v2 = MobileGestalt_copy_marketingProductName_obj()) != 0)
  {
    v3 = v2;
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  _StringGuts.grow(_:)(23);

  v6._countAndFlagsBits = v0;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD000000000000015;
}

id sub_1000A2858()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  [v2 setHTTPShouldSetCookies:0];
  [v2 setHTTPCookieAcceptPolicy:1];
  [v2 setRequestCachePolicy:1];
  v3 = [objc_allocWithZone(type metadata accessor for SecureTaskDelegate()) init];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000A618C();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BABC(v7, v9);
  [v2 set_atsContext:isa];

  v11 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v3 delegateQueue:0];
  return v11;
}

uint64_t sub_1000A2B84(uint64_t a1, uint64_t a2)
{
  v2[46] = a1;
  v2[47] = a2;
  v3 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[50] = v4;
  v5 = *(v4 - 8);
  v2[51] = v5;
  v6 = *(v5 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2C94, 0, 0);
}

uint64_t sub_1000A2C94()
{
  v38 = v0;
  if (qword_100239CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[46];
  v5 = type metadata accessor for Logger();
  v0[54] = sub_10000DAC0(v5, qword_10023C160);
  v6 = *(v3 + 16);
  v0[55] = v6;
  v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[51];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315138;
    sub_1000A6144(&qword_10023C260, &type metadata accessor for URLRequest);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10017AD04(v14, v16, &v37);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending request: %s", v13, 0xCu);
    sub_10000DB58(v36);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[57] = v17;
  v19 = v0[49];
  v20 = v0[46];
  URLRequest.url.getter();
  v21 = type metadata accessor for URL();
  v0[58] = v21;
  v22 = *(v21 - 8);
  v0[59] = v22;
  v23 = *(v22 + 48);
  v0[60] = v23;
  v0[61] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v20) = v23(v19, 1, v21);
  sub_10000DAF8(v19, &qword_10023C230, &qword_1001B4FB0);
  if (v20 == 1)
  {
    sub_1000A60F0();
    swift_allocError();
    *v24 = 2;
    *(v24 + 8) = 1;
    swift_willThrow();
    v26 = v0[52];
    v25 = v0[53];
    v28 = v0[48];
    v27 = v0[49];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = [objc_allocWithZone(type metadata accessor for SecureTaskDelegate()) init];
    v0[62] = v31;
    v32 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v33 = swift_task_alloc();
    v0[63] = v33;
    *v33 = v0;
    v33[1] = sub_1000A306C;
    v34 = v0[46];
    v35 = v0[47];

    return NSURLSession.data(for:delegate:)(v34, v31);
  }
}

uint64_t sub_1000A306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 504);
  v9 = *v4;
  *(v5 + 512) = a1;
  *(v5 + 520) = a2;
  *(v5 + 528) = a3;
  *(v5 + 536) = v3;

  if (v3)
  {
    v7 = sub_1000A3920;
  }

  else
  {

    v7 = sub_1000A3194;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1000A3194()
{
  v83 = v0;
  v1 = *(v0 + 528);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v49 = *(v0 + 528);
    v50 = *(v0 + 520);
    v51 = *(v0 + 512);
    sub_1000A60F0();
    swift_allocError();
    *v52 = 0;
    *(v52 + 8) = 1;
    swift_willThrow();

    sub_10001BABC(v51, v50);
    v54 = *(v0 + 416);
    v53 = *(v0 + 424);
    v56 = *(v0 + 384);
    v55 = *(v0 + 392);

    v57 = *(v0 + 8);

    v57();
    return;
  }

  v3 = v2;
  if (!sub_1000125BC())
  {
LABEL_47:
    v59 = *(v0 + 416);
    v58 = *(v0 + 424);
    v61 = *(v0 + 384);
    v60 = *(v0 + 392);

    v62 = *(v0 + 8);
    v63 = *(v0 + 520);
    v64 = *(v0 + 512);

    v62(v64, v63, v3);
    return;
  }

  v4 = *(v0 + 472);
  v5 = *(v0 + 408);
  v6 = sub_10003FBA0(&off_1002130D8);
  swift_arrayDestroy();
  v73 = v3;
  v7 = [v3 allHeaderFields];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = 0;
  v10 = v8 + 64;
  v80 = v8;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  v14 = (63 - v11) >> 6;
  v81 = v6 + 56;
  v65 = (v4 + 8);
  while (v13)
  {
    v15 = v9;
LABEL_19:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    sub_100025CC4(*(v80 + 48) + 40 * v19, v0 + 160);
    sub_10002036C(*(v80 + 56) + 32 * v19, v0 + 240);
    v20 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v20;
    *(v0 + 120) = *(v0 + 192);
    sub_100025CA4((v0 + 240), (v0 + 128));
LABEL_20:
    *(v0 + 80) = *(v0 + 152);
    v21 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v21;
    v22 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v22;
    if (!*(v0 + 40))
    {

      v3 = v73;
      goto LABEL_47;
    }

    sub_100025CA4((v0 + 56), (v0 + 272));
    v23 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v23;
    *(v0 + 232) = *(v0 + 48);
    if (swift_dynamicCast())
    {
      v24 = *(v0 + 344);
      v76 = *(v0 + 336);
      v25 = String.lowercased()();
      if (!*(v6 + 16))
      {

        goto LABEL_8;
      }

      buf = v24;
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = v6;
      v29 = -1 << *(v6 + 32);
      v30 = v27 & ~v29;
      if (((*(v81 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
LABEL_31:

LABEL_32:
        sub_10000DB58((v0 + 272));
        goto LABEL_39;
      }

      v31 = ~v29;
      while (1)
      {
        v32 = *(v28 + 48) + 16 * v30;
        v33 = *v32 == v25._countAndFlagsBits && *(v32 + 8) == v25._object;
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v81 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      sub_10002036C(v0 + 272, v0 + 304);
      if (swift_dynamicCast())
      {
        v34 = *(v0 + 448);
        v35 = *(v0 + 432);
        v36 = *(v0 + 360);
        v74 = *(v0 + 352);
        (*(v0 + 440))(*(v0 + 416), *(v0 + 368), *(v0 + 400));

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v37, v38))
        {
          v77 = *(v0 + 456);
          v75 = *(v0 + 416);
          v44 = *(v0 + 400);

          v77(v75, v44);
          goto LABEL_32;
        }

        v71 = v38;
        v72 = v37;
        v69 = *(v0 + 480);
        v70 = *(v0 + 488);
        v67 = *(v0 + 416);
        v68 = *(v0 + 464);
        v66 = *(v0 + 384);
        v39 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v39 = 136315650;
        v40 = sub_10017AD04(v74, v36, v82);

        *(v39 + 4) = v40;
        *(v39 + 12) = 2080;
        v41 = sub_10017AD04(v76, buf, v82);

        *(v39 + 14) = v41;
        bufa = v39;
        *(v39 + 22) = 2080;
        URLRequest.url.getter();
        if (v69(v66, 1, v68) == 1)
        {
          sub_10000DAF8(*(v0 + 384), &qword_10023C230, &qword_1001B4FB0);
          v42 = 0xE100000000000000;
          v43 = 45;
        }

        else
        {
          v45 = *(v0 + 464);
          v46 = *(v0 + 384);
          v43 = URL.absoluteString.getter();
          v42 = v47;
          (*v65)(v46, v45);
        }

        v6 = v28;
        (*(v0 + 456))(*(v0 + 416), *(v0 + 400));
        v48 = sub_10017AD04(v43, v42, v82);

        *(bufa + 3) = v48;
        _os_log_impl(&_mh_execute_header, v72, v71, "Received '%s' for header '%s' for request %s", bufa, 0x20u);
        swift_arrayDestroy();

        sub_10000DB58((v0 + 272));
      }

      else
      {
        sub_10000DB58((v0 + 272));

LABEL_39:
        v6 = v28;
      }
    }

    else
    {
LABEL_8:
      sub_10000DB58((v0 + 272));
    }
  }

  if (v14 <= v9 + 1)
  {
    v16 = v9 + 1;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v13 = 0;
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      v9 = v17;
      *(v0 + 88) = 0u;
      goto LABEL_20;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1000A3920()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000A39B0()
{
  v1 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v29 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000DAF8(v4, &qword_10023C230, &qword_1001B4FB0);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v10 = URL.host.getter();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = URL.port.getter();
      if ((v15 & 1) == 0)
      {
        v29[0] = v14;
        sub_10000CDE0(&qword_10023C238, &qword_1001BB080);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001BAF80;
        v29[1] = v0;
        v31 = kSCPropNetProxiesHTTPEnable;
        type metadata accessor for CFString(0);
        sub_1000A6144(&qword_10023C240, type metadata accessor for CFString);
        v30 = v12;
        v19 = kSCPropNetProxiesHTTPEnable;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        v31 = kSCPropNetProxiesHTTPProxy;
        v20 = kSCPropNetProxiesHTTPProxy;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v30;
        *(inited + 152) = v13;
        v31 = kSCPropNetProxiesHTTPPort;

        v21 = kSCPropNetProxiesHTTPPort;
        AnyHashable.init<A>(_:)();
        *(inited + 240) = &type metadata for Int;
        v22 = v29[0];
        *(inited + 216) = v29[0];
        v31 = kSCPropNetProxiesHTTPSEnable;
        v23 = kSCPropNetProxiesHTTPSEnable;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for Bool;
        *(inited + 288) = 1;
        v31 = kSCPropNetProxiesHTTPSProxy;
        v24 = kSCPropNetProxiesHTTPSProxy;
        AnyHashable.init<A>(_:)();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v30;
        *(inited + 368) = v13;
        v31 = kSCPropNetProxiesHTTPSPort;
        v25 = kSCPropNetProxiesHTTPSPort;
        AnyHashable.init<A>(_:)();
        *(inited + 456) = &type metadata for Int;
        *(inited + 432) = v22;
        sub_1000C44D8(inited);
        swift_setDeallocating();
        sub_10000CDE0(&qword_10023C248, &qword_1001BCA90);
        swift_arrayDestroy();
        v26 = [objc_opt_self() ephemeralSessionConfiguration];
        [v26 set_preventsSystemHTTPProxyAuthentication:1];
        [v26 set_requiresSecureHTTPSProxyConnection:1];
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v26 setConnectionProxyDictionary:isa];

        v28 = [objc_opt_self() sessionWithConfiguration:v26];
        (*(v6 + 8))(v9, v5);
        return v28;
      }

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  sub_1000A60F0();
  swift_allocError();
  *v16 = 3;
  *(v16 + 8) = 1;
  return swift_willThrow();
}

id sub_1000A3ED4()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = String._bridgeToObjectiveC()();
  [v0 set_sourceApplicationSecondaryIdentifier:v1];

  v2 = sub_100028038(&off_100213148);
  sub_10000DAF8(&off_100213168, &unk_10023C250, &qword_1001B58B0);
  sub_1000A154C(v2);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 set_suppressedAutoAddedHTTPHeaders:isa];

  v4 = [objc_opt_self() sessionWithConfiguration:v0];
  return v4;
}

uint64_t sub_1000A4000(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000A4024, 0, 0);
}

uint64_t sub_1000A4024()
{
  if (*(v0 + 80))
  {
    if (*(v0 + 80) == 1)
    {
      v1 = sub_1000A3ED4();
    }

    else
    {
      v1 = sub_1000A2858();
    }
  }

  else
  {
    v1 = sub_1000A39B0();
  }

  v2 = v1;
  *(v0 + 32) = v1;
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v25 = v1;
      v26 = v0;
      sub_100146DA4(0, v4, 0);
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = 0xD000000000000015;
        if (v7 == 5)
        {
          v8 = 0x4C2D747065636341;
          v9 = 0xEF65676175676E61;
        }

        else
        {
          v9 = 0x80000001001CA360;
        }

        if (v6 == 3)
        {
          v10 = 0x65676E6152;
        }

        else
        {
          v10 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v11 = 0xE500000000000000;
        }

        else
        {
          v11 = 0x80000001001CA330;
        }

        if (v6 <= 4)
        {
          v8 = v10;
          v9 = v11;
        }

        if (v6 == 1)
        {
          v12 = 0x2D746E65746E6F43;
        }

        else
        {
          v12 = 0x6567412D72657355;
        }

        if (v6 == 1)
        {
          v13 = 0xEC00000065707954;
        }

        else
        {
          v13 = 0xEA0000000000746ELL;
        }

        if (!v6)
        {
          v12 = 0x7A69726F68747541;
          v13 = 0xED00006E6F697461;
        }

        if (v6 <= 2)
        {
          v14 = v12;
        }

        else
        {
          v14 = v8;
        }

        if (v6 <= 2)
        {
          v15 = v13;
        }

        else
        {
          v15 = v9;
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100146DA4((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v14;
        v18[5] = v15;
        --v4;
      }

      while (v4);
      v2 = v25;
      v0 = v26;
    }

    v19 = [v2 configuration];
    v20 = sub_10003FBA0(_swiftEmptyArrayStorage);

    sub_1000A1794(v20);

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v19 set_suppressedAutoAddedHTTPHeaders:isa];
  }

  v22 = swift_task_alloc();
  *(v0 + 40) = v22;
  *v22 = v0;
  v22[1] = sub_1000A43E0;
  v23 = *(v0 + 16);

  return sub_1000A2B84(v23, v2);
}

uint64_t sub_1000A43E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  v10 = *v4;
  *(*v4 + 48) = v3;

  if (v3)
  {
    v11 = sub_1000A4588;
  }

  else
  {
    v8[7] = a3;
    v8[8] = a2;
    v8[9] = a1;
    v11 = sub_1000A451C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000A451C()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  return v1(v2, v3, v4);
}

uint64_t sub_1000A4588()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A45EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 161) = a5;
  *(v7 + 160) = a4;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = type metadata accessor for URL();
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v7 + 88) = v11;
  v12 = *(v11 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1000A4730, 0, 0);
}

uint64_t sub_1000A4B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 120);
  v10 = *v4;
  *(*v4 + 128) = v3;

  if (v3)
  {
    v11 = sub_1000A4D54;
  }

  else
  {
    v8[17] = a3;
    v8[18] = a2;
    v8[19] = a1;
    v11 = sub_1000A4CA8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000A4CA8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v4 = v0[1];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  return v4(v5, v6, v7);
}

uint64_t sub_1000A4D54()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1000A4DF8(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000A4F14, 0, 0);
}

uint64_t sub_1000A4F14()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  _StringGuts.grow(_:)(22);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v5._object = 0x80000001001CC6D0;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  v6._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 59;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v2 + 8))(v1, v3);
  Double.write<A>(to:)();
  v8 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v8;
  sub_10003E5C8();
  StringProtocol.removingPercentEncoding.getter();
  v10 = v9;

  if (!v10)
  {
    goto LABEL_3;
  }

  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 72);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  *(v0 + 120) = v14;
  *(v0 + 128) = v16;
  v17 = *(v12 + 8);
  *(v0 + 136) = v17;
  *(v0 + 144) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v13);
  if (v16 >> 60 == 15)
  {
LABEL_3:
    sub_1000A60F0();
    swift_allocError();
    *v18 = 4;
    *(v18 + 8) = 1;
    swift_willThrow();
LABEL_4:
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = Data.base64EncodedString(options:)(0);
  *(v0 + 152) = v23;
  v24 = (v23._object >> 56) & 0xF;
  if ((v23._object & 0x2000000000000000) == 0)
  {
    v24 = v23._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    sub_1000A60F0();
    swift_allocError();
    *v31 = 4;
    *(v31 + 8) = 1;
    swift_willThrow();
    sub_10005CB30(v14, v16);
    goto LABEL_4;
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() bagForProfile:v25 profileVersion:v26];
  *(v0 + 168) = v27;

  v28 = swift_task_alloc();
  *(v0 + 176) = v28;
  v28[2] = v14;
  v28[3] = v16;
  v28[4] = v27;
  v29 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v30 = swift_task_alloc();
  *(v0 + 184) = v30;
  *v30 = v0;
  v30[1] = sub_1000A52F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000022, 0x80000001001CC6F0, sub_1000A61E0, v28, &type metadata for Data);
}

uint64_t sub_1000A52F8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[22];
  if (v0)
  {
    v6 = v2[20];

    v7 = sub_1000A5690;
  }

  else
  {

    v7 = sub_1000A5440;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000A5440()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  v7 = *(v0 + 56);
  v24 = *(v0 + 48);
  v8 = Data.base64EncodedString(options:)(0);
  v9._countAndFlagsBits = 58;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v8);

  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  v4(v5, v6);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  if (v12 >> 60 == 15)
  {
    sub_1000A60F0();
    swift_allocError();
    *v15 = 4;
    *(v15 + 8) = 1;
    swift_willThrow();
    sub_10001BABC(v24, v7);
    sub_10005CB30(v14, v13);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 112);
    v23 = *(v0 + 88);
    v21 = Data.base64EncodedString(options:)(0);
    String.append(_:)(v21);

    sub_10005CB30(v10, v12);
    sub_10001BABC(v24, v7);
    sub_10005CB30(v14, v13);

    v22 = *(v0 + 8);

    return v22(0x206369736142, 0xE600000000000000);
  }
}

uint64_t sub_1000A5690()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_10005CB30(v1, v2);
  v3 = *(v0 + 192);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000A5718(uint64_t a1, uint64_t a2)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return _swift_task_switch(sub_1000A5738, 0, 0);
}

uint64_t sub_1000A5738()
{
  v1 = v0[47];
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[48]];
  v0[49] = v2;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v4 = [v2 requestByEncodingRequest:isa parameters:0];
  v0[50] = v4;

  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = sub_1000A58B4;
  v5 = swift_continuation_init();
  v0[34] = sub_10000CDE0(&qword_10023C208, &qword_1001BB050);
  v0[27] = _NSConcreteStackBlock;
  v0[28] = 1107296256;
  v0[29] = sub_100021DA0;
  v0[30] = &unk_10021B9C0;
  v0[31] = v5;
  [v4 resultWithCompletion:v0 + 27];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000A58B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_1000A5FC4;
  }

  else
  {
    v3 = sub_1000A59C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A59C4()
{
  v1 = v0[50];
  v2 = v0[45];
  v0[52] = v2;

  sub_1000A2780();
  v3 = String._bridgeToObjectiveC()();

  [v2 setValue:v3 forHTTPHeaderField:AMSHTTPHeaderUserAgent];

  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderAcceptLanguage];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderStoreFront];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderCookie];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderTimezoneOffset];
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[53] = v4;
  [v4 setHTTPShouldSetCookies:0];
  [v4 setHTTPCookieAcceptPolicy:1];
  sub_10000CDE0(&unk_10023C210, &qword_1001BB058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B93B0;
  v0[43] = 0x4C2D747065636341;
  v0[44] = 0xEF65676175676E61;
  AnyHashable.init<A>(_:)();
  sub_10003FC38(inited);
  swift_setDeallocating();
  sub_100025D20(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 set_suppressedAutoAddedHTTPHeaders:isa];

  v7 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v4];
  v0[54] = v7;
  v8 = [v7 dataTaskPromiseWithRequest:v2];
  v0[55] = v8;
  v0[10] = v0;
  v0[15] = v0 + 46;
  v0[11] = sub_1000A5CF8;
  v9 = swift_continuation_init();
  v0[42] = sub_10000CDE0(&qword_10023AA18, &unk_1001B60D0);
  v0[35] = _NSConcreteStackBlock;
  v0[36] = 1107296256;
  v0[37] = sub_100021DA0;
  v0[38] = &unk_10021B9E8;
  v0[39] = v9;
  [v8 resultWithCompletion:v0 + 35];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1000A5CF8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_1000A603C;
  }

  else
  {
    v3 = sub_1000A5E08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A5E08()
{
  v1 = *(v0 + 368);

  v2 = [v1 response];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 424);
      v6 = *(v0 + 432);
      v8 = *(v0 + 416);
      v9 = *(v0 + 392);
      v10 = [v1 data];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = *(v0 + 8);

      return v14(v11, v13, v5);
    }
  }

  v17 = *(v0 + 424);
  v16 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  sub_1000A60F0();
  swift_allocError();
  *v20 = 0;
  *(v20 + 8) = 1;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000A5FC4()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  swift_willThrow();

  v4 = v0[51];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A603C()
{
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[49];
  swift_willThrow();

  v7 = v0[56];
  v8 = v0[1];

  return v8();
}

unint64_t sub_1000A60F0()
{
  result = qword_10023C220;
  if (!qword_10023C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C220);
  }

  return result;
}

uint64_t sub_1000A6144(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A618C()
{
  result = qword_10023C268;
  if (!qword_10023C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTP.ATSContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1000A62AC(uint64_t a1)
{
  result = sub_1000A60F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A62D4()
{
  result = qword_10023C278;
  if (!qword_10023C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C278);
  }

  return result;
}

unint64_t sub_1000A633C()
{
  result = qword_10023C280;
  if (!qword_10023C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C280);
  }

  return result;
}

unint64_t sub_1000A6394()
{
  result = qword_10023C288;
  if (!qword_10023C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C288);
  }

  return result;
}

unint64_t sub_1000A63EC()
{
  result = qword_10023C290;
  if (!qword_10023C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C290);
  }

  return result;
}

uint64_t sub_1000A6454(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for AccountIdentity();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  *(v4 + 80) = *(v9 + 64);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000A6580, 0, 0);
}

uint64_t sub_1000A6580()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(v3 + 16))(v1, *(v0 + 24), v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1000A66C0;
  v10 = *(v0 + 120);

  return sub_1000A75F0(v10, sub_1000A6AC4, v7);
}

uint64_t sub_1000A66C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000A6840, 0, 0);
  }

  else
  {
    v9 = v6[12];

    v10 = v6[11];
    v11 = v6[7];

    v12 = *(v8 + 8);

    return v12(a1, a2);
  }
}

uint64_t sub_1000A6840()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = Logger.general.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Value fetch failed %@", v11, 0xCu);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v14 = v0[14];
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v15 = v0[11];
  v16 = v0[7];

  v17 = v0[1];

  return v17(0, 0);
}

uint64_t sub_1000A6A00()
{
  v1 = type metadata accessor for AccountIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A6AC4()
{
  v1 = *(type metadata accessor for AccountIdentity() - 8);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v0 + 16);
  return AccountCachedServerData.stringSequence(forKey:accountID:)();
}

uint64_t sub_1000A6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6C10, 0, 0);
}

uint64_t sub_1000A6C10()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v20 = v0[11];
  v21 = v0[10];
  v18 = v0[14];
  v19 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v10 = *(v3 + 8);
  v0[17] = v10;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v3 + 32))(v12 + v11, v1, v4);
  sub_1000A7140(v6, v5, v19, &unk_1001BB2F8, v12);

  sub_1000A7140(v6, v5, v19, v21, v20);
  v13 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v14 = swift_task_alloc();
  v0[19] = v14;
  v15 = sub_10000CDE0(&qword_10023C300, &unk_1001BB300);
  *v14 = v0;
  v14[1] = sub_1000A6E10;
  v16 = v0[4];

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v15);
}

uint64_t sub_1000A6E10()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1000A70C4;
  }

  else
  {
    v3 = sub_1000A6F24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A6F24()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  if (v1 == 1)
  {
    v5 = *(v0 + 96);
    sub_1000A7E24();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v3(v4, v5);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 16);
    v14 = **(v0 + 32);
    sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    ThrowingTaskGroup.cancelAll()();
    v3(v4, v12);

    v15 = *(v0 + 8);

    return v15(v13, v1);
  }
}

uint64_t sub_1000A70C4()
{
  v1 = *(v0 + 144);
  (*(v0 + 136))(*(v0 + 128), *(v0 + 96));
  v2 = *(v0 + 160);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000A7140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v25 - v13;
  sub_1000A2558(a3, v25 - v13);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000DAF8(v14, &qword_100239EE0, &qword_1001B3640);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:
    v18 = 0;
    v20 = 0;
    v21 = *v6;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  TaskPriority.rawValue.getter();
  (*(v16 + 8))(v14, v15);
  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v20 = v19;
  swift_unknownObjectRelease();
  v21 = *v6;
  if (a1)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
    v22 = (v20 | v18);
    if (v20 | v18)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v18;
      v27[3] = v20;
    }

    v26[0] = 1;
    v26[1] = v22;
    v26[2] = v21;
    if (a1 != 1)
    {
      v25[1] = 6;
      v25[2] = v26;
      v25[3] = a1;
      v25[4] = a2;
    }

    goto LABEL_13;
  }

LABEL_10:
  sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v29[0] = 0;
    v29[1] = 0;
    v23 = v29;
    v29[2] = v18;
    v29[3] = v20;
  }

  v28[0] = 1;
  v28[1] = v23;
  v28[2] = v21;
  v27[4] = 6;
  v27[5] = v28;
  v27[6] = 0;
  v27[7] = a2;
LABEL_13:
  swift_task_create();
}

uint64_t sub_1000A73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1000A9160;

  return sub_1000A7E78(a4, a5, a6);
}

uint64_t sub_1000A746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_10007E1C8;

  return sub_1000A6B30(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1000A7558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1000A9160;

  return sub_1000A8B18(a4);
}

uint64_t sub_1000A75F0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 88) = a1;
  v4 = *(*(sub_10000CDE0(&qword_100239EE0, &qword_1001B3640) - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000A7690, 0, 0);
}

uint64_t sub_1000A7690()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;

  v7 = sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = xmmword_1001BB2A0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v2;
  *(v8 + 56) = &unk_1001BB2C8;
  *(v8 + 64) = v6;
  v9 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1000A7838;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v7, 0, 0, &unk_1001BB2E0, v8, v7);
}

uint64_t sub_1000A7838()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A79BC, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];
    v6 = v3[6];

    v8 = v3[2];
    v7 = v3[3];
    sub_10000DAF8(v6, &qword_100239EE0, &qword_1001B3640);

    v9 = v3[1];

    return v9(v8, v7);
  }
}

uint64_t sub_1000A79BC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  sub_10000DAF8(v3, &qword_100239EE0, &qword_1001B3640);

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1000A7A4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000A7A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1000A73BC(a1, v4, v5, v6, v7, v8);
}

void sub_1000A7B68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000BD30;

  JUMPOUT(0x1000A746CLL);
}

uint64_t sub_1000A7C64()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A7D28(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_1000A7558(a1, v6, v7, v1 + v5);
}

unint64_t sub_1000A7E24()
{
  result = qword_10023C308;
  if (!qword_10023C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C308);
  }

  return result;
}

uint64_t sub_1000A7E78(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 296) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = sub_10000CDE0(&qword_10023C318, &qword_1001BB320);
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v3 + 120) = v7;
  v8 = *(v7 - 8);
  *(v3 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v10 = type metadata accessor for AccountCachedServerData.Error();
  *(v3 + 144) = v10;
  v11 = *(v10 - 8);
  *(v3 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v13 = sub_10000CDE0(&qword_10023C320, &qword_1001BB328);
  *(v3 + 168) = v13;
  v14 = *(v13 - 8);
  *(v3 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v16 = *(*(sub_10000CDE0(&qword_10023C328, &qword_1001BB330) - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v17 = sub_10000CDE0(&qword_10023C330, &qword_1001BB338);
  *(v3 + 200) = v17;
  v18 = *(v17 - 8);
  *(v3 + 208) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v20 = sub_10000CDE0(&qword_10023C338, &qword_1001BB340);
  *(v3 + 224) = v20;
  v21 = *(v20 - 8);
  *(v3 + 232) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  v23 = *(*(sub_10000CDE0(&qword_10023C340, qword_1001BB348) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1000A81C0, 0, 0);
}

uint64_t sub_1000A81C0()
{
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = *(v7 + 56);
  v0[33] = v10;
  v0[34] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11 = v10(v1, 1, 1, v6);
  v9(v11);
  AsyncValueSequence.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v12 = sub_1000A8F44();
  v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_1000A82EC;
  v15 = v0[30];
  v16 = v0[28];
  v17 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v16, v12);
}

uint64_t sub_1000A82EC()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1000A8A8C;
  }

  else
  {
    v3 = sub_1000A8400;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A841C()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5 = Logger.general.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sequence abruptly ended or timed out without returning a value", v8, 2u);
    }

    v9 = *(v0 + 256);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);

    (*(v11 + 8))(v10, v12);
    if (!(*(v14 + 48))(v9, 1, v13))
    {
      v46 = *(v0 + 112);
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      (*(v48 + 16))(v46, *(v0 + 256), v47);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v48 + 8))(v46, v47);
      v45 = *(v0 + 24);
      if (v45)
      {
        v71 = *(v0 + 16);
LABEL_22:
        v54 = *(v0 + 248);
        v55 = *(v0 + 240);
        v56 = *(v0 + 216);
        v58 = *(v0 + 184);
        v57 = *(v0 + 192);
        v59 = *(v0 + 160);
        v60 = *(v0 + 136);
        v68 = *(v0 + 112);
        v70 = *(v0 + 104);
        sub_10000DAF8(*(v0 + 256), &qword_10023C340, qword_1001BB348);

        v61 = *(v0 + 8);

        return v61(v71, v45);
      }
    }

    sub_1000A7E24();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
LABEL_8:
    v23 = *(v0 + 248);
    v24 = *(v0 + 240);
    v25 = *(v0 + 216);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 160);
    v29 = *(v0 + 136);
    v30 = *(v0 + 112);
    v69 = *(v0 + 104);
    sub_10000DAF8(*(v0 + 256), &qword_10023C340, qword_1001BB348);

    v31 = *(v0 + 8);

    return v31();
  }

  sub_1000A8FA8(v1, *(v0 + 184));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 224);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 152) + 32);
    v21(v19, *(v0 + 184), v20);
    sub_1000A9018(&qword_10023C350, &type metadata accessor for AccountCachedServerData.Error);
    swift_willThrowTypedImpl();
    swift_allocError();
    v21(v22, v19, v20);
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v34 = *(v0 + 264);
  v33 = *(v0 + 272);
  v35 = *(v0 + 248);
  v36 = *(v0 + 256);
  v37 = *(v0 + 88);
  v38 = *(v0 + 96);
  v39 = *(v0 + 296);
  (*(v38 + 32))(v35, *(v0 + 184), v37);
  v34(v35, 0, 1, v37);
  sub_1000A9060(v35, v36);
  v40 = (*(v38 + 48))(v36, 1, v37);
  if (v39)
  {
    if (v40)
    {
      goto LABEL_25;
    }

    v41 = *(v0 + 112);
    v42 = *(v0 + 88);
    v43 = *(v0 + 96);
    (*(v43 + 16))(v41, *(v0 + 256), v42);
    AccountCachedServerData.CachedValue.value.getter();
    (*(v43 + 8))(v41, v42);
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);
  }

  else
  {
    if (v40)
    {
      goto LABEL_25;
    }

    (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 256), *(v0 + 88));
    v49 = AccountCachedServerData.CachedValue.isStale.getter();
    v51 = *(v0 + 96);
    v50 = *(v0 + 104);
    v52 = *(v0 + 88);
    if (v49)
    {
      (*(v51 + 8))(*(v0 + 104), *(v0 + 88));
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v53 = *(v0 + 88);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v51 + 8))(v50, v52);
      v44 = *(v0 + 32);
      v45 = *(v0 + 40);
    }
  }

  if (v45)
  {
    v71 = v44;
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_22;
  }

LABEL_25:
  v62 = sub_1000A8F44();
  v63 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v64 = swift_task_alloc();
  *(v0 + 280) = v64;
  *v64 = v0;
  v64[1] = sub_1000A82EC;
  v65 = *(v0 + 240);
  v66 = *(v0 + 224);
  v67 = *(v0 + 192);

  return dispatch thunk of AsyncIteratorProtocol.next()(v67, v66, v62);
}

uint64_t sub_1000A8A8C()
{
  *(v0 + 64) = *(v0 + 288);
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000A8B18(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8BD8, 0, 0);
}

uint64_t sub_1000A8BD8()
{
  v1 = *(v0 + 64);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v2 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = sub_1000A9018(&qword_10023E100, &type metadata accessor for ContinuousClock);
  *v3 = v0;
  v3[1] = sub_1000A8CCC;
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v6, v0 + 16, v5, v7, v4);
}

uint64_t sub_1000A8CCC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v4 = sub_1000A8EE0;
  }

  else
  {
    v4 = sub_1000A8E10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000A8E10()
{
  type metadata accessor for CancellationError();
  sub_1000A9018(&qword_10023C310, &type metadata accessor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A8EE0()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000A8F44()
{
  result = qword_10023C348;
  if (!qword_10023C348)
  {
    sub_10000CCC0(&qword_10023C338, &qword_1001BB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C348);
  }

  return result;
}

uint64_t sub_1000A8FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C320, &qword_1001BB328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A9060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C340, qword_1001BB348);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A90E0(uint64_t a1)
{
  result = sub_1000A7E24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A910C()
{
  result = qword_10023C358;
  if (!qword_10023C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C358);
  }

  return result;
}

unint64_t sub_1000A9168()
{
  result = qword_10023C360;
  if (!qword_10023C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C360);
  }

  return result;
}

unint64_t sub_1000A91C0()
{
  result = qword_10023C368;
  if (!qword_10023C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C368);
  }

  return result;
}

unint64_t sub_1000A9214(uint64_t a1)
{
  *(a1 + 8) = sub_10003BF98();
  result = sub_1000A9244();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A9244()
{
  result = qword_10023C3B8;
  if (!qword_10023C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3B8);
  }

  return result;
}

uint64_t sub_1000A9298(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C3E8, &qword_1001BB598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000A91C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[2];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[3];
  v15[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[4];
  v15[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000A9438(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE006761745F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x69737265766E6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v6 = 0xEE006761745F6E6FLL;
  }

  else
  {
    v6 = 0x80000001001CA620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001001CA000;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001001CA000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000A951C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A95D4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000A9678()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A972C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A9A68(*a1);
  *a2 = result;
  return result;
}

void sub_1000A975C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006761745F6E6FLL;
  v4 = 0x69737265766E6F63;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001001CA620;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001001CA000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000A97D0()
{
  v1 = 0x69737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1000A9840@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A9A68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A9878(uint64_t a1)
{
  v2 = sub_1000A91C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A98B4(uint64_t a1)
{
  v2 = sub_1000A91C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A98F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A9AB4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1000A9954()
{
  result = qword_10023C3C0;
  if (!qword_10023C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3C0);
  }

  return result;
}

unint64_t sub_1000A99AC()
{
  result = qword_10023C3C8;
  if (!qword_10023C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3C8);
  }

  return result;
}

unint64_t sub_1000A9A04()
{
  result = qword_10023C3D0;
  if (!qword_10023C3D0)
  {
    sub_10000CCC0(&qword_10023C3D8, &qword_1001BB550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3D0);
  }

  return result;
}

unint64_t sub_1000A9A68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215AD8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A9AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C3E0, &qword_1001BB590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000A91C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = v16;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1000A9CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A9CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1000A9D0C()
{
  result = qword_10023C3F0;
  if (!qword_10023C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3F0);
  }

  return result;
}

uint64_t sub_1000A9D70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000A9E10();
}

uint64_t sub_1000A9E2C()
{
  v9 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v5[3] = &type metadata for SnoutStoryMetrics;
  v5[4] = &off_100216E60;
  v2 = swift_allocObject();
  v5[0] = v2;
  *(v2 + 40) = &type metadata for AMSDogBag;
  *(v2 + 48) = &off_100222F48;
  v7 = &type metadata for AMSDogBag;
  v8 = &off_100222F48;
  sub_1000AA134(v1, v5, &v6, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 808) = v3;
  *v3 = v0;
  v3[1] = sub_1000A9F4C;

  return sub_1000AA664();
}

uint64_t sub_1000A9F4C()
{
  v1 = *(*v0 + 808);
  v3 = *v0;

  return _swift_task_switch(sub_1000AA048, 0, 0);
}

uint64_t sub_1000AA048()
{
  sub_1000AA0E0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AA0A8()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AA134@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  *a4 = 0xD000000000000010;
  *(a4 + 8) = 0x80000001001CB740;
  *(a4 + 16) = a1;
  *(a4 + 24) = 0xD00000000000001ALL;
  *(a4 + 32) = 0x80000001001CB760;
  *(a4 + 40) = a1;
  *(a4 + 48) = 0xD000000000000010;
  *(a4 + 56) = 0x80000001001CB320;
  v28 = 0x80000001001CB320;
  *(a4 + 64) = a1;
  *(a4 + 72) = 0x74735F6E656B6F74;
  *(a4 + 80) = 0xEB0000000065726FLL;
  *(a4 + 88) = a1;
  strcpy((a4 + 96), "postback_store");
  *(a4 + 111) = -18;
  *(a4 + 112) = a1;
  *(a4 + 120) = 0xD000000000000011;
  v29 = 0x80000001001CB3A0;
  *(a4 + 128) = 0x80000001001CB3A0;
  *(a4 + 136) = a1;
  v6 = a1;
  v30 = a2;
  sub_10000CE28(a2, v33);
  v7 = v34;
  v8 = sub_100054C30(v33, v34);
  v9 = *(v7[-1].Description + 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = v6;
  v14 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v13, v11, 0);
  sub_10000DB58(v33);
  *(a4 + 144) = v14;
  *(a4 + 736) = type metadata accessor for SnoutManager();
  *(a4 + 744) = &off_100223858;
  *(a4 + 712) = v14;
  v15 = qword_100239CA8;
  v16 = v13;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_10023FC50;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 sharedScheduler];
  *(a4 + 344) = &type metadata for ActivityManager;
  *(a4 + 352) = &off_100223E90;
  v21 = swift_allocObject();
  *(a4 + 320) = v21;
  v21[5] = &type metadata for BackgroundSystemTaskScheduler;
  v21[6] = &off_100217910;
  v21[2] = v20;
  *(a4 + 408) = &type metadata for AttributionKitCanineArbiter;
  *(a4 + 416) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v22 = qword_10023FC28;
  *(a4 + 448) = type metadata accessor for TaskGreyhound();
  *(a4 + 456) = &off_1002169F0;
  *(a4 + 424) = v22;
  *(a4 + 488) = &type metadata for LaunchServicesRecordFactory;
  *(a4 + 496) = &off_10021CBA8;
  *(a4 + 528) = &type metadata for AMSDogBag;
  *(a4 + 536) = &off_100222F48;

  v23 = [v18 sharedScheduler];
  v34 = &type metadata for ActivityManager;
  v35 = &off_100223E90;
  v24 = swift_allocObject();
  v33[0] = v24;
  v24[5] = &type metadata for BackgroundSystemTaskScheduler;
  v24[6] = &off_100217910;
  v24[2] = v23;
  v32[3] = &type metadata for LaunchServicesRecordFactory;
  v32[4] = &off_10021CBA8;
  sub_1000B8524(v33, v32, a4 + 544);
  *(a4 + 656) = &type metadata for AppStoreDaemonSKANInterop;
  *(a4 + 664) = &off_100222C60;
  sub_1000B42E0((a4 + 672));

  sub_10000DB58(v30);
  strcpy((a4 + 152), "postback_store");
  *(a4 + 167) = -18;
  *(a4 + 168) = v16;
  *(a4 + 176) = 0x63616274736F6867;
  *(a4 + 184) = 0xEF65726F74735F6BLL;
  *(a4 + 192) = v16;
  v25 = v28;
  *(a4 + 200) = 0xD000000000000010;
  *(a4 + 208) = v25;
  *(a4 + 216) = v16;
  *(a4 + 224) = 0x74735F6E656B6F74;
  *(a4 + 232) = 0xEB0000000065726FLL;
  *(a4 + 240) = v16;
  *(a4 + 248) = 0xD000000000000012;
  *(a4 + 256) = 0x80000001001CB340;
  *(a4 + 264) = v16;
  *(a4 + 272) = 0xD000000000000014;
  *(a4 + 280) = 0x80000001001CB360;
  *(a4 + 288) = v19;
  *(a4 + 296) = 0xD000000000000018;
  *(a4 + 304) = 0x80000001001CB380;
  *(a4 + 312) = v19;
  v26 = v29;
  *(a4 + 360) = 0xD000000000000011;
  *(a4 + 368) = v26;
  *(a4 + 376) = v16;
  return sub_10000DA64(v31, a4 + 752);
}

uint64_t sub_1000AA664()
{
  v1[265] = v0;
  v2 = type metadata accessor for Date();
  v1[271] = v2;
  v3 = *(v2 - 8);
  v1[277] = v3;
  v1[278] = *(v3 + 64);
  v1[279] = swift_task_alloc();
  v1[280] = swift_task_alloc();
  v1[281] = swift_task_alloc();
  v1[282] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[284] = swift_task_alloc();
  v1[285] = swift_task_alloc();
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v1[288] = swift_task_alloc();
  v1[289] = swift_task_alloc();
  v1[290] = swift_task_alloc();

  return _swift_task_switch(sub_1000AA7B0, 0, 0);
}

uint64_t sub_1000AA7B0()
{
  v1 = v0[290];
  v2 = v0[265];
  static Date.now.getter();
  v3 = swift_task_alloc();
  v0[291] = v3;
  *(v3 + 16) = v2;
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[292] = v4;
  *(v4 + 16) = v2;
  swift_asyncLet_begin();
  v5 = swift_task_alloc();
  v0[293] = v5;
  *(v5 + 16) = v2;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 247, sub_1000AA8DC, v0 + 242);
}

uint64_t sub_1000AA948()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);
  v3 = *(v0 + 2224);
  v4 = *(v0 + 2216);
  v5 = *(v0 + 2168);
  v6 = *(v0 + 2120);
  *(v0 + 2368) = *(v0 + 2072);
  Date.init(timeIntervalSinceNow:)();
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v4 + 16);
  *(v0 + 2376) = v10;
  *(v0 + 2384) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v1, v5);
  v11 = *(v4 + 80);
  *(v0 + 2760) = v11;
  v12 = (v11 + 16) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 2392) = v13;
  v14 = *(v4 + 32);
  *(v0 + 2400) = v14;
  *(v0 + 2408) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v12, v2, v5);
  v15 = swift_task_alloc();
  *(v0 + 2416) = v15;
  *v15 = v0;
  v15[1] = sub_1000AAAF4;

  return sub_10010F0D0(sub_10010F0D0, sub_1000AEA14, v13, v8, v7, v9);
}

uint64_t sub_1000AAAF4()
{
  v2 = *(*v1 + 2416);
  v3 = *(*v1 + 2392);
  v6 = *v1;
  *(*v1 + 2424) = v0;

  if (v0)
  {
    v4 = sub_1000ACD60;
  }

  else
  {
    v4 = sub_1000AAC24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AAC24()
{
  if (qword_100239D10 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 2408);
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2384);
  v3 = *(v0 + 2376);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2120);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  v9 = sub_10000DAC0(v6, qword_10023FD60);
  v15 = v7[4];
  v16 = v7[3];
  v10 = v7[5];
  v3(v4, v9, v6);
  v11 = swift_allocObject();
  *(v0 + 2432) = v11;
  v1(v11 + v8, v4, v6);
  v12 = swift_task_alloc();
  *(v0 + 2440) = v12;
  *v12 = v0;
  v12[1] = sub_1000AADC0;

  return sub_10010F230(sub_10010F230, sub_1000AEAE8, v11, v16, v15, v10);
}

uint64_t sub_1000AADC0()
{
  v2 = *(*v1 + 2440);
  v3 = *(*v1 + 2432);
  v6 = *v1;
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v4 = sub_1000ACF1C;
  }

  else
  {
    v4 = sub_1000AAEF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AAEF0()
{
  v13 = *(v0 + 2400);
  v14 = *(v0 + 2408);
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2296);
  v12 = *(v0 + 2224);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2120);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  Date.addingTimeInterval(_:)();
  *(v0 + 2456) = v7[6];
  *(v0 + 2464) = v7[7];
  *(v0 + 2472) = v7[8];
  v2(v4, v5, v6);
  v9 = swift_allocObject();
  *(v0 + 2480) = v9;
  v13(v9 + v8, v4, v6);
  v10 = swift_task_alloc();
  *(v0 + 2488) = v10;
  *v10 = v0;
  v10[1] = sub_1000AB080;

  return (sub_10010E730)();
}

uint64_t sub_1000AB080()
{
  v2 = *(*v1 + 2488);
  v3 = *(*v1 + 2480);
  v6 = *v1;
  *(*v1 + 2496) = v0;

  if (v0)
  {
    v4 = sub_1000AD0D8;
  }

  else
  {
    v4 = sub_1000AB1B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AB1B0()
{
  v15 = *(v0 + 2400);
  v16 = *(v0 + 2408);
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2288);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2168);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v4, v5, v7);
  v9 = swift_allocObject();
  *(v0 + 2504) = v9;
  v15(v9 + v8, v4, v7);
  v10 = swift_task_alloc();
  *(v0 + 2512) = v10;
  *v10 = v0;
  v10[1] = sub_1000AB31C;
  v11 = *(v0 + 2472);
  v12 = *(v0 + 2464);
  v13 = *(v0 + 2456);

  return sub_10010E730(sub_10010E730, sub_1000AEB40, v9, v13, v12, v11);
}

uint64_t sub_1000AB31C()
{
  v2 = *(*v1 + 2512);
  v3 = *(*v1 + 2504);
  v6 = *v1;
  *(*v1 + 2520) = v0;

  if (v0)
  {
    v4 = sub_1000AD2B0;
  }

  else
  {
    v4 = sub_1000AB44C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AB44C()
{
  v15 = *(v0 + 2400);
  v16 = *(v0 + 2408);
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2280);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2168);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v4, v5, v7);
  v9 = swift_allocObject();
  *(v0 + 2528) = v9;
  v15(v9 + v8, v4, v7);
  v10 = swift_task_alloc();
  *(v0 + 2536) = v10;
  *v10 = v0;
  v10[1] = sub_1000AB5B8;
  v11 = *(v0 + 2472);
  v12 = *(v0 + 2464);
  v13 = *(v0 + 2456);

  return sub_10010E730(sub_10010E730, sub_1000AEB70, v9, v13, v12, v11);
}

uint64_t sub_1000AB5B8()
{
  v2 = *(*v1 + 2536);
  v3 = *(*v1 + 2528);
  v6 = *v1;
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v4 = sub_1000AD4A0;
  }

  else
  {
    v4 = sub_1000AB6E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AB6E8()
{
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2408);
  v13 = *(v0 + 2384);
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2320);
  v3 = *(v0 + 2304);
  v4 = *(v0 + 2272);
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2120);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  v9 = *(v0 + 2360) * -86400.0;
  Date.addingTimeInterval(_:)();
  *(v0 + 2552) = v7[12];
  *(v0 + 2560) = v7[13];
  *(v0 + 2568) = v7[14];
  v1(v3, v4, v6);
  v10 = swift_allocObject();
  *(v0 + 2576) = v10;
  v14(v10 + v8, v3, v6);
  v11 = swift_task_alloc();
  *(v0 + 2584) = v11;
  *v11 = v0;
  v11[1] = sub_1000AB880;

  return (sub_10010EF70)();
}

uint64_t sub_1000AB880()
{
  v2 = *(*v1 + 2584);
  v3 = *(*v1 + 2576);
  v6 = *v1;
  *(*v1 + 2592) = v0;

  if (v0)
  {
    v4 = sub_1000AD6A8;
  }

  else
  {
    v4 = sub_1000AB9B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AB9B0()
{
  v16 = *(v0 + 2400);
  v17 = *(v0 + 2408);
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2264);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2168);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  v9 = *(v0 + 2368) * -86400.0;
  Date.addingTimeInterval(_:)();
  v2(v4, v5, v7);
  v10 = swift_allocObject();
  *(v0 + 2600) = v10;
  v16(v10 + v8, v4, v7);
  v11 = swift_task_alloc();
  *(v0 + 2608) = v11;
  *v11 = v0;
  v11[1] = sub_1000ABB24;
  v12 = *(v0 + 2568);
  v13 = *(v0 + 2560);
  v14 = *(v0 + 2552);

  return sub_10010EF70(sub_10010EF70, sub_1000AEC1C, v10, v14, v13, v12);
}

uint64_t sub_1000ABB24()
{
  v2 = *(*v1 + 2608);
  v3 = *(*v1 + 2600);
  v6 = *v1;
  *(*v1 + 2616) = v0;

  if (v0)
  {
    v4 = sub_1000AD8D0;
  }

  else
  {
    v4 = sub_1000ABC54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000ABC54()
{
  v1 = v0[265];
  v2 = swift_task_alloc();
  v0[328] = v2;
  *v2 = v0;
  v2[1] = sub_1000ABCF0;
  v3 = v0[284];

  return sub_100121044(v3);
}

uint64_t sub_1000ABCF0()
{
  v1 = *(*v0 + 2624);
  v3 = *v0;

  return _swift_task_switch(sub_1000ABDEC, 0, 0);
}

uint64_t sub_1000ABDEC()
{
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2408);
  v13 = *(v0 + 2384);
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2320);
  v3 = *(v0 + 2304);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2120);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  v9 = -*(v0 + 2352);
  Date.addingTimeInterval(_:)();
  *(v0 + 2632) = v7[9];
  *(v0 + 2640) = v7[10];
  *(v0 + 2648) = v7[11];
  v1(v3, v4, v6);
  v10 = swift_allocObject();
  *(v0 + 2656) = v10;
  v14(v10 + v8, v3, v6);
  v11 = swift_task_alloc();
  *(v0 + 2664) = v11;
  *v11 = v0;
  v11[1] = sub_1000ABF78;

  return (sub_10010EB50)();
}

uint64_t sub_1000ABF78()
{
  v2 = *(*v1 + 2664);
  v3 = *(*v1 + 2656);
  v6 = *v1;
  *(*v1 + 2672) = v0;

  if (v0)
  {
    v4 = sub_1000ADB10;
  }

  else
  {
    v4 = sub_1000AC0A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AC0A8()
{
  v15 = *(v0 + 2400);
  v16 = *(v0 + 2408);
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2248);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2168);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v4, v5, v7);
  v9 = swift_allocObject();
  *(v0 + 2680) = v9;
  v15(v9 + v8, v4, v7);
  v10 = swift_task_alloc();
  *(v0 + 2688) = v10;
  *v10 = v0;
  v10[1] = sub_1000AC214;
  v11 = *(v0 + 2648);
  v12 = *(v0 + 2640);
  v13 = *(v0 + 2632);

  return sub_10010EB50(sub_10010EB50, sub_1000AED08, v9, v13, v12, v11);
}

uint64_t sub_1000AC214()
{
  v2 = *(*v1 + 2688);
  v3 = *(*v1 + 2680);
  v6 = *v1;
  *(*v1 + 2696) = v0;

  if (v0)
  {
    v4 = sub_1000ADD70;
  }

  else
  {
    v4 = sub_1000AC344;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AC344()
{
  v15 = *(v0 + 2400);
  v16 = *(v0 + 2408);
  v14 = *(v0 + 2384);
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2320);
  v3 = *(v0 + 2304);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2120);
  v8 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  Date.addingTimeInterval(_:)();
  v9 = v7[15];
  v17 = v7[16];
  v10 = v7[17];
  v1(v3, v4, v6);
  v11 = swift_allocObject();
  *(v0 + 2704) = v11;
  v15(v11 + v8, v3, v6);
  v12 = swift_task_alloc();
  *(v0 + 2712) = v12;
  *v12 = v0;
  v12[1] = sub_1000AC4C4;

  return sub_10010E890();
}

uint64_t sub_1000AC4C4()
{
  v2 = *(*v1 + 2712);
  v3 = *(*v1 + 2704);
  v6 = *v1;
  *(*v1 + 2720) = v0;

  if (v0)
  {
    v4 = sub_1000ADFEC;
  }

  else
  {
    v4 = sub_1000AC5F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AC5F4()
{
  v1 = v0[290];
  v2 = v0[288];
  v3 = v0[265];
  Date.addingTimeInterval(_:)();
  v0[341] = *(v3 + 144);
  v4 = swift_task_alloc();
  v0[342] = v4;
  *v4 = v0;
  v4[1] = sub_1000AC6AC;
  v5 = v0[288];

  return sub_10016AFAC(v5);
}

uint64_t sub_1000AC6AC()
{
  v1 = *(*v0 + 2736);
  v3 = *v0;

  return _swift_task_switch(sub_1000AC7A8, 0, 0);
}

uint64_t sub_1000AC7A8()
{
  v1 = v0[290];
  v2 = v0[279];
  Date.addingTimeInterval(_:)();
  v3 = swift_task_alloc();
  v0[343] = v3;
  *v3 = v0;
  v3[1] = sub_1000AC858;
  v4 = v0[341];
  v5 = v0[279];

  return sub_10016B978(v5);
}

uint64_t sub_1000AC858()
{
  v1 = *(*v0 + 2744);
  v3 = *v0;

  return _swift_task_switch(sub_1000AC954, 0, 0);
}

uint64_t sub_1000AC954()
{
  v1 = v0[288];
  v13 = v0[287];
  v14 = v0[289];
  v2 = v0[285];
  v11 = v2;
  v12 = v0[286];
  v3 = v0[284];
  v4 = v0[283];
  v5 = v0[282];
  v6 = v0[281];
  v7 = v0[280];
  v8 = v0[271];
  v9 = *(v0[277] + 8);
  v9(v0[279], v8);
  v9(v1, v8);
  v9(v7, v8);
  v9(v6, v8);
  v9(v5, v8);
  v9(v4, v8);
  v9(v3, v8);
  v9(v11, v8);
  v9(v12, v8);
  v9(v13, v8);
  v9(v14, v8);
  v0[344] = v9;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ACB10()
{
  v1 = *(v0 + 2344);

  return _swift_asyncLet_finish(v0 + 656, v0 + 2024, sub_1000ACB7C, v0 + 2128);
}

uint64_t sub_1000ACB98()
{
  v1 = *(v0 + 2336);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1976, sub_1000ACC04, v0 + 2176);
}

uint64_t sub_1000ACC20()
{
  v1 = v0[344];
  v2 = v0[291];
  v3 = v0[290];
  v4 = v0[289];
  v5 = v0[288];
  v6 = v0[287];
  v7 = v0[286];
  v8 = v0[285];
  v13 = v0[284];
  v14 = v0[283];
  v15 = v0[282];
  v16 = v0[281];
  v17 = v0[280];
  v18 = v0[279];
  v9 = v0[277];
  v10 = v0[271];

  v1(v3, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ACD60()
{
  v1 = *(v0[277] + 8);
  v1(v0[289], v0[271]);
  v2 = v0[303];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD00);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to clear stale entities: %@", v6, 0xCu);
    sub_1000AEA80(v7);
  }

  else
  {
  }

  v0[344] = v1;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ACF1C()
{
  v1 = *(v0[277] + 8);
  v1(v0[289], v0[271]);
  v2 = v0[306];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD00);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to clear stale entities: %@", v6, 0xCu);
    sub_1000AEA80(v7);
  }

  else
  {
  }

  v0[344] = v1;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD0D8()
{
  v1 = v0[289];
  v2 = v0[271];
  v3 = *(v0[277] + 8);
  v3(v0[287], v2);
  v3(v1, v2);
  v4 = v0[312];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000DAC0(v5, qword_10023FD00);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clear stale entities: %@", v8, 0xCu);
    sub_1000AEA80(v9);
  }

  else
  {
  }

  v0[344] = v3;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD2B0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[271];
  v4 = *(v0[277] + 8);
  v4(v0[286], v3);
  v4(v2, v3);
  v4(v1, v3);
  v5 = v0[315];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD00);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to clear stale entities: %@", v9, 0xCu);
    sub_1000AEA80(v10);
  }

  else
  {
  }

  v0[344] = v4;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD4A0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[271];
  v5 = *(v0[277] + 8);
  v5(v0[285], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);
  v6 = v0[318];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000DAC0(v7, qword_10023FD00);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to clear stale entities: %@", v10, 0xCu);
    sub_1000AEA80(v11);
  }

  else
  {
  }

  v0[344] = v5;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD6A8()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[271];
  v6 = *(v0[277] + 8);
  v6(v0[284], v5);
  v6(v4, v5);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);
  v7 = v0[324];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000DAC0(v8, qword_10023FD00);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clear stale entities: %@", v11, 0xCu);
    sub_1000AEA80(v12);
  }

  else
  {
  }

  v0[344] = v6;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD8D0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[284];
  v6 = v0[271];
  v7 = *(v0[277] + 8);
  v7(v0[283], v6);
  v7(v5, v6);
  v7(v4, v6);
  v7(v3, v6);
  v7(v2, v6);
  v7(v1, v6);
  v8 = v0[327];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000DAC0(v9, qword_10023FD00);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear stale entities: %@", v12, 0xCu);
    sub_1000AEA80(v13);
  }

  else
  {
  }

  v0[344] = v7;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADB10()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[284];
  v6 = v0[283];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[282], v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v1, v7);
  v9 = v0[334];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000DAC0(v10, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to clear stale entities: %@", v13, 0xCu);
    sub_1000AEA80(v14);
  }

  else
  {
  }

  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADD70()
{
  v17 = v0[289];
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[283];
  v6 = v0[282];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[281], v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v1, v7);
  v8(v17, v7);
  v9 = v0[337];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000DAC0(v10, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to clear stale entities: %@", v13, 0xCu);
    sub_1000AEA80(v14);
  }

  else
  {
  }

  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADFEC()
{
  v1 = v0[287];
  v18 = v1;
  v19 = v0[289];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[283];
  v6 = v0[282];
  v7 = v0[281];
  v8 = v0[271];
  v9 = *(v0[277] + 8);
  v9(v0[280], v8);
  v9(v7, v8);
  v9(v6, v8);
  v9(v5, v8);
  v9(v4, v8);
  v9(v3, v8);
  v9(v2, v8);
  v9(v18, v8);
  v9(v19, v8);
  v10 = v0[340];
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000DAC0(v11, qword_10023FD00);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to clear stale entities: %@", v14, 0xCu);
    sub_1000AEA80(v15);
  }

  else
  {
  }

  v0[344] = v9;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AE280(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE328;

  return sub_100158594(15);
}

uint64_t sub_1000AE328(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 48);
  v7 = *v2;
  *(v4 + 56) = a2;

  return _swift_task_switch(sub_1000AE430, 0, 0);
}

uint64_t sub_1000AE430()
{
  v1 = 0x4143C68000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE468(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000AE280(a1);
}

uint64_t sub_1000AE508(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE5B0;

  return sub_100158594(17);
}

uint64_t sub_1000AE5B0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 48);
  v7 = *v2;
  *(v4 + 56) = a2;

  return _swift_task_switch(sub_1000AE6B8, 0, 0);
}

uint64_t sub_1000AE6B8()
{
  v1 = 0x404E000000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE6EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return sub_1000AE508(a1);
}

uint64_t sub_1000AE78C(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE834;

  return sub_100158594(18);
}

uint64_t sub_1000AE834(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 48);
  v7 = *v2;
  *(v4 + 56) = a2;

  return _swift_task_switch(sub_1000AE93C, 0, 0);
}

uint64_t sub_1000AE93C()
{
  v1 = 0x4000000000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000AE78C(a1);
}

void sub_1000AEA40(uint64_t a1, uint64_t a2)
{
  sub_10004EB24(a2, 0);
  if (!v2)
  {
    sub_10004EB24(a2, 1);
  }
}

uint64_t sub_1000AEA80(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_100239F10, &qword_1001B4FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AED08()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = static ConversionType.allCasesSet.getter();
  sub_10009BCC0(v0 + v2, v3);
}

uint64_t sub_1000AEDA0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AEED0()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AEF10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 792))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AEF58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
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

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AF0A0()
{
  result = qword_10023C3F8;
  if (!qword_10023C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3F8);
  }

  return result;
}

unint64_t sub_1000AF0F8()
{
  result = qword_10023C400;
  if (!qword_10023C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C400);
  }

  return result;
}

unint64_t sub_1000AF14C(uint64_t a1)
{
  *(a1 + 8) = sub_10003BFF8();
  result = sub_1000AF17C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000AF17C()
{
  result = qword_10023C450;
  if (!qword_10023C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C450);
  }

  return result;
}

unint64_t sub_1000AF1D0(char a1)
{
  result = 0x6C7074656B72616DLL;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0x6B63616274736F70;
      break;
    case 2:
    case 13:
      result = 0xD000000000000012;
      break;
    case 3:
    case 10:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F7774656E5F6461;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 8:
      result = 0xD000000000000015;
      break;
    case 7:
    case 25:
      result = 0x69737265766E6F63;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x5F746361706D6F63;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x6D69745F6B636F6CLL;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x6E69775F646964;
      break;
    case 18:
      result = 0x65636E6575716573;
      break;
    case 19:
      result = 0x656B636F6C5F7369;
      break;
    case 20:
      result = 0x7265747369676572;
      break;
    case 21:
    case 24:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x69737265766E6F63;
      break;
    case 23:
      result = 0x6D6E6F7269766E65;
      break;
    case 26:
      result = 0x5F7972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000AF554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657372616F63;
  v5 = 1701736302;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701734758;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v5 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1701734758;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000AF62C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AF6B8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000AF730()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000AF7B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2D80(*a1);
  *a2 = result;
  return result;
}

void sub_1000AF7E8(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  v4 = 0x657372616F63;
  if (*v1 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_1000AF8E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 2003134838;
  }

  else
  {
    v4 = 0x6B63696C63;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 2003134838;
  }

  else
  {
    v6 = 0x6B63696C63;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000AF97C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AF9F4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000AFA58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000AFAD8(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (!*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000AFBBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65706F6C65766564;
  }

  else
  {
    v4 = 0x726F7774654E6461;
  }

  if (v3)
  {
    v5 = 0xE90000000000006BLL;
  }

  else
  {
    v5 = 0xE900000000000072;
  }

  if (*a2)
  {
    v6 = 0x65706F6C65766564;
  }

  else
  {
    v6 = 0x726F7774654E6461;
  }

  if (*a2)
  {
    v7 = 0xE900000000000072;
  }

  else
  {
    v7 = 0xE90000000000006BLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000AFC68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFCF0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000AFD64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000AFDF4(uint64_t *a1@<X8>)
{
  v2 = 0x726F7774654E6461;
  if (*v1)
  {
    v2 = 0x65706F6C65766564;
  }

  v3 = 0xE90000000000006BLL;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000AFEE8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000AF1D0(*a1);
  v5 = v4;
  if (v3 == sub_1000AF1D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000AFF70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000AF1D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFFD4()
{
  sub_1000AF1D0(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000B0028()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000AF1D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B0088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000B2D2C();
  *a2 = result;
  return result;
}

unint64_t sub_1000B00B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000AF1D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B00EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B2D2C();
  *a1 = result;
  return result;
}

uint64_t sub_1000B0130(uint64_t a1)
{
  v2 = sub_1000AF0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B016C(uint64_t a1)
{
  v2 = sub_1000AF0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B01A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v25 = &v45 - v24;
  if (*(v2 + 256))
  {
    v26 = 0;
    return v26 & 1;
  }

  v47 = v23;
  v48 = a1;
  v49 = v22;
  v27 = *(v2 + 248) / 1000.0;
  Date.init(timeIntervalSince1970:)();
  if (*(v2 + 192))
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      result = sub_1000B86A8();
      if (result)
      {
LABEL_20:
        v35 = *(v2 + 112);
        if (v35 == 2 || v35 == 1)
        {
          Date.addingTimeInterval(_:)();
          v36 = *(v18 + 56);
          v36(v16, 0, 1, v17);
        }

        else
        {
          if (v35)
          {
            v37 = *(v18 + 56);
            v37(v16, 1, 1, v17);
            v37(v14, 1, 1, v17);
            goto LABEL_27;
          }

          (*(v18 + 16))(v16, v25, v17);
          v36 = *(v18 + 56);
          v36(v16, 0, 1, v17);
        }

        Date.addingTimeInterval(_:)();
        v36(v14, 0, 1, v17);
LABEL_27:
        sub_1000B3C58(v16, v11);
        v38 = *(v18 + 48);
        if (v38(v11, 1, v17) == 1)
        {
          sub_1000B3CC8(v14);
          sub_1000B3CC8(v16);
          (*(v18 + 8))(v25, v17);
        }

        else
        {
          v46 = v16;
          v39 = *(v18 + 32);
          v40 = v49;
          v39(v49, v11, v17);
          v11 = v50;
          sub_1000B3C58(v14, v50);
          if (v38(v11, 1, v17) != 1)
          {
            v45 = v14;
            v42 = v47;
            v39(v47, v11, v17);
            sub_100070F78();
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              v26 = 0;
            }

            else
            {
              v26 = static Date.< infix(_:_:)();
            }

            v43 = v45;
            v44 = *(v18 + 8);
            v44(v42, v17);
            v44(v49, v17);
            sub_1000B3CC8(v43);
            sub_1000B3CC8(v46);
            v44(v25, v17);
            return v26 & 1;
          }

          v41 = *(v18 + 8);
          v41(v40, v17);
          sub_1000B3CC8(v14);
          sub_1000B3CC8(v46);
          v41(v25, v17);
        }

        sub_1000B3CC8(v11);
        v26 = 0;
        return v26 & 1;
      }
    }
  }

  else
  {

    result = sub_1000B86A8();
    if (result)
    {
      goto LABEL_20;
    }
  }

  if (*(a2 + 16) >= 3uLL)
  {
    v30 = a2;
  }

  else
  {
    v30 = &off_1002166B8;
  }

  v31 = v30[2];
  if (!v31)
  {
    __break(1u);
    goto LABEL_38;
  }

  v32 = v30[4];
  if (!is_mul_ok(v32, 0x18uLL))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!is_mul_ok(24 * v32, 0xE10uLL))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v31 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v30[5];
  if (!is_mul_ok(v33, 0x18uLL))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!is_mul_ok(24 * v33, 0xE10uLL))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v34 = v30[6];
  if (!is_mul_ok(v34, 0x18uLL))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (is_mul_ok(24 * v34, 0xE10uLL))
  {
    goto LABEL_20;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000B083C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 171) = 1;
  result = Date.timeIntervalSince1970.getter();
  v8 = v7 * 1000.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 264) = v8;
  *(v0 + 272) = 0;
  sub_1000F4FB4(*(v0 + 112), *(v0 + 192), v5);
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  result = (*(v2 + 8))(v5, v1);
  v11 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 < 1.84467441e19)
  {
    *(v0 + 280) = v11;
    *(v0 + 288) = 0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000B09EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v59 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v62 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v63 = &v59 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v59 - v22;
  v24 = *(v4 + 256);
  v67 = v21;
  if (v24)
  {
    v60 = v12;
    v61 = a3;
    updated = type metadata accessor for PostbackUpdateData();
    (*(v15 + 16))(v23, a1 + *(updated + 32), v14);
    result = Date.timeIntervalSince1970.getter();
    v28 = v27 * 1000.0;
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -1.0)
    {
      if (v28 < 1.84467441e19)
      {
        *(v4 + 248) = v28;
        *(v4 + 256) = 0;
        v12 = v60;
        a3 = v61;
        goto LABEL_7;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_24;
  }

  v29 = *(v4 + 248) / 1000.0;
  Date.init(timeIntervalSince1970:)();
LABEL_7:
  v66 = v15;
  v31 = *(v4 + 32);
  v30 = *(v4 + 40);
  if (*(v4 + 171))
  {
    v65 = v23;
    v32 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v12, v32, v7);

    v33 = v8;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v7;
      v37 = v31;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v69[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_10017AD04(v37, v30, v69);
      _os_log_impl(&_mh_execute_header, v34, v35, "Postback %s is locked", v38, 0xCu);
      sub_10000DB58(v39);

      (*(v33 + 8))(v12, v36);
    }

    else
    {

      (*(v33 + 8))(v12, v7);
    }

    return (*(v66 + 8))(v65, v67);
  }

  v61 = *(v4 + 32);
  v40 = v8;
  memcpy(v69, v4, 0x121uLL);
  v41 = type metadata accessor for PostbackUpdateData();
  if ((sub_1000B01A8(a1 + *(v41 + 32), v65) & 1) == 0)
  {
    v65 = v23;
    v42 = Logger.postback.unsafeMutableAddressor();
    v43 = v64;
    (*(v8 + 16))(v64, v42, v7);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10017AD04(v61, v30, &v68);
      _os_log_impl(&_mh_execute_header, v44, v45, "Postback %s is not currently active", v46, 0xCu);
      sub_10000DB58(v47);
    }

    (*(v40 + 8))(v43, v7);
    return (*(v66 + 8))(v65, v67);
  }

  *(v4 + 170) = 1;
  *(v4 + 120) = *a1;
  *(v4 + 128) = 0;
  *(v4 + 129) = *(a1 + 8);
  if (*(a1 + 9) == 1)
  {
    sub_1000B083C();
    return (*(v66 + 8))(v23, v67);
  }

  v48 = v69[14];
  v49 = v69[24];
  v50 = v62;
  sub_1000F52D8(v69[14], v65, a3, v69[24], v62);
  v51 = v63;
  sub_1000F4FB4(v48, v49, v63);
  v52 = *(v66 + 8);
  v53 = v50;
  v54 = v23;
  v55 = v67;
  v52(v53, v67);
  Date.timeIntervalSince1970.getter();
  v57 = v56;
  v52(v51, v55);
  result = (v52)(v54, v55);
  v58 = v57 * 1000.0;
  if (COERCE__INT64(fabs(v57 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v58 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v58 < 1.84467441e19)
  {
    *(v4 + 280) = v58;
    *(v4 + 288) = 0;
    return result;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000B1054(unint64_t a1, _UNKNOWN **a2, uint64_t a3)
{
  v4 = v3;
  v56 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - v18;
  __chkstk_darwin(v17);
  if (*(v4 + 170))
  {
    v21 = *(v4 + 32);
    v22 = *(v4 + 40);
    v23 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v23, v7);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10017AD04(v21, v22, &v57);
      _os_log_impl(&_mh_execute_header, v24, v25, "Runner up %s has already been registered", v26, 0xCu);
      sub_10000DB58(v27);
    }

    return (*(v8 + 8))(v11, v7);
  }

  v54 = &v48 - v20;
  *(v4 + 170) = 1;
  v29 = *(type metadata accessor for PostbackUpdateData() + 32);
  Date.timeIntervalSince1970.getter();
  v31 = v30 * 1000.0;
  v32 = *&v31 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (v31 <= -1.0)
  {
    goto LABEL_48;
  }

  v32 = 0x43F0000000000000;
  if (v31 >= 1.84467441e19)
  {
    goto LABEL_49;
  }

  *(v4 + 248) = v31;
  *(v4 + 256) = 0;
  v51 = *(v4 + 192);
  v52 = a1;
  v53 = v29;
  if ((v51 & 1) == 0)
  {

LABEL_12:
    if (sub_1000B86A8())
    {
      v29 = v13;
      a1 = v12;
      v57 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v32 = 3;
      if (is_mul_ok(3uLL, 0x3CuLL))
      {
        v12 = 180;
        v34 = v57;
        v13 = v57[2];
        v32 = v57[3];
        v7 = v13 + 1;
        if (v13 < v32 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_55;
      }

      goto LABEL_46;
    }

    goto LABEL_22;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (a2[2] < 3)
  {
    a2 = &off_1002166B8;
  }

  v7 = a2[2];
  v34 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = v13;
    v50 = v12;
    v57 = _swiftEmptyArrayStorage;

    sub_100147204(0, v7, 0);
    v39 = 4;
    v34 = v57;
    v13 = 86400;
    do
    {
      v12 = a2[v39];
      v32 = (v12 * 0x15180uLL) >> 64;
      if (!is_mul_ok(v12, 0x15180uLL))
      {
        __break(1u);
        goto LABEL_46;
      }

      v57 = v34;
      a1 = v34[2];
      v40 = v34[3];
      v29 = a1 + 1;
      if (a1 >= v40 >> 1)
      {
        sub_100147204((v40 > 1), a1 + 1, 1);
        v34 = v57;
      }

      v34[2] = v29;
      v34[a1 + 4] = 86400 * v12;
      ++v39;
      --v7;
    }

    while (v7);

    v13 = v49;
    v12 = v50;
  }

  v38 = v55;
  while (1)
  {
    v32 = v34[2];
    a1 = v53;
    if (v32)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_100147204((v32 > 1), v7, 1);
      v34 = v57;
LABEL_15:
      v34[2] = v7;
      v34[v13 + 4] = v12;
      v32 = 6;
      if (is_mul_ok(6uLL, 0x3CuLL))
      {
        v12 = 360;
        v57 = v34;
        v35 = v34[3];
        if (v7 >= v35 >> 1)
        {
          sub_100147204((v35 > 1), v13 + 2, 1);
          v34 = v57;
        }

        v34[2] = v13 + 2;
        v34[v7 + 4] = 360;
        v32 = 9;
        if (is_mul_ok(9uLL, 0x3CuLL))
        {
          break;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v57 = v34;
    v37 = v34[2];
    v36 = v34[3];
    v7 = v37 + 1;
    v38 = v55;
    if (v37 >= v36 >> 1)
    {
      sub_100147204((v36 > 1), v37 + 1, 1);
      v34 = v57;
    }

    v34[2] = v7;
    v34[v37 + 4] = 540;
    v12 = a1;
    v13 = v29;
  }

  v41 = v34[4];

  Date.addingTimeInterval(_:)();
  if (v51)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if ((sub_1000B86A8() & 1) == 0)
  {
LABEL_39:
    Date.addingTimeInterval(_:)();
    v43 = &off_1002132A0;
    goto LABEL_40;
  }

  (*(v13 + 16))(v38, v19, v12);
  v43 = &off_1002132D0;
LABEL_40:
  v32 = v43[2];
  if (!v32)
  {
    goto LABEL_51;
  }

  v44 = *(v43 + 8);

  arc4random_uniform(v44);
  v29 = v54;
  Date.addingTimeInterval(_:)();
  a1 = v13 + 8;
  v13 = *(v13 + 8);
  (v13)(v38, v12);
  (v13)(v19, v12);
  Date.timeIntervalSince1970.getter();
  v46 = v45;
  result = (v13)(v29, v12);
  v47 = v46 * 1000.0;
  v32 = fabs(v46 * 1000.0);
  if (v32 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v47 <= -1.0)
  {
    goto LABEL_53;
  }

  v32 = 0x43F0000000000000;
  if (v47 >= 1.84467441e19)
  {
    goto LABEL_54;
  }

  *(v4 + 280) = v47;
  *(v4 + 288) = 0;
  return result;
}

uint64_t sub_1000B17E0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v56 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v47[-v17];
  v19 = __chkstk_darwin(v16);
  result = __chkstk_darwin(v19);
  if (*(v3 + 170))
  {
    v25 = Logger.postback.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v25, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Registered postback should not be imprinted", v28, 2u);
    }

    (*(v9 + 8))(v12, v8);
    sub_1000B3D30();
    swift_allocError();
    *v29 = 3;
    return swift_willThrow();
  }

  *(v3 + 232) = *(a1 + 96);
  if (*(v3 + 105) == 1)
  {
    return sub_1000B1F4C(a1, a2, v56);
  }

  *(v3 + 170) = *(a1 + 50);
  v30 = *(a1 + 112);
  *(v3 + 248) = *(a1 + 104);
  *(v3 + 256) = v30;
  if ((v30 & 1) == 0)
  {
    v51 = &v47[-v21];
    v52 = v24;
    v54 = result;
    v55 = v23;
    v53 = v22;
    Date.init(timeIntervalSince1970:)();
    v50 = v3;
    LODWORD(v31) = *(v3 + 192);
    if (v31)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
LABEL_22:
        if (*(a2 + 16) >= 3uLL)
        {
          v12 = a2;
        }

        else
        {
          v12 = &off_1002166B8;
        }

        a1 = *(v12 + 16);
        v34 = _swiftEmptyArrayStorage;
        if (a1)
        {
          v48 = v31;
          v49 = v4;
          v57 = _swiftEmptyArrayStorage;

          sub_100147204(0, a1, 0);
          v9 = 32;
          v34 = v57;
          LOBYTE(v31) = 0x80;
          do
          {
            v5 = *(v12 + v9);
            v33 = (v5 * 0x15180uLL) >> 64;
            if (!is_mul_ok(v5, 0x15180uLL))
            {
              __break(1u);
              goto LABEL_47;
            }

            v57 = v34;
            v38 = v34[2];
            v37 = v34[3];
            if (v38 >= v37 >> 1)
            {
              sub_100147204((v37 > 1), v38 + 1, 1);
              v34 = v57;
            }

            v34[2] = v38 + 1;
            v34[v38 + 4] = 86400 * v5;
            v9 += 8;
            --a1;
          }

          while (a1);

          v5 = v49;
          LOBYTE(v31) = v48;
        }

        while (1)
        {
          v33 = v34[2];
          if (v33)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            sub_100147204((v33 > 1), a1, 1);
            v34 = v57;
LABEL_15:
            v34[2] = a1;
            v34[v12 + 4] = v5;
            v33 = 6;
            if (is_mul_ok(6uLL, 0x3CuLL))
            {
              v5 = 360;
              v57 = v34;
              v35 = v34[3];
              v12 += 2;
              if (a1 >= v35 >> 1)
              {
                sub_100147204((v35 > 1), v12, 1);
                v34 = v57;
              }

              v34[2] = v12;
              v34[a1 + 4] = 360;
              v33 = 9;
              if (is_mul_ok(9uLL, 0x3CuLL))
              {
                break;
              }
            }

LABEL_47:
            __break(1u);
          }

          v57 = v34;
          v12 = v34[2];
          v36 = v34[3];
          a1 = v12 + 1;
          if (v12 >= v36 >> 1)
          {
            sub_100147204((v36 > 1), v12 + 1, 1);
            v34 = v57;
          }

          v34[2] = a1;
          v34[v12 + 4] = 540;
          v5 = v9;
        }

        v39 = v34[4];

        Date.addingTimeInterval(_:)();
        a1 = v52 + 8;
        v12 = *(v52 + 8);
        (v12)(v18, v54);
        if (v31)
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v40 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
        }

        if (sub_1000B86A8())
        {
          (*(v52 + 16))(v53, v55, v54);
          v41 = &off_1002132D0;
LABEL_40:
          v33 = v41[2];
          if (!v33)
          {
            goto LABEL_49;
          }

          v42 = *(v41 + 8);

          arc4random_uniform(v42);
          v9 = v51;
          v43 = v53;
          Date.addingTimeInterval(_:)();
          v31 = v54;
          (v12)(v43, v54);
          (v12)(v55, v31);
          Date.timeIntervalSince1970.getter();
          v45 = v44;
          result = (v12)(v9, v31);
          v46 = v45 * 1000.0;
          v33 = fabs(v45 * 1000.0);
          if (v33 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_50;
          }

          v33 = v50;
          if (v46 <= -1.0)
          {
            goto LABEL_51;
          }

          if (v46 >= 1.84467441e19)
          {
            goto LABEL_52;
          }

          *(v50 + 280) = v46;
          *(v33 + 288) = 0;
          return result;
        }

LABEL_39:
        Date.addingTimeInterval(_:)();
        v41 = &off_1002132A0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (sub_1000B86A8())
    {
      v9 = v4;
      v57 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v33 = 3;
      if (is_mul_ok(3uLL, 0x3CuLL))
      {
        v5 = 180;
        v34 = v57;
        v12 = v57[2];
        v33 = v57[3];
        a1 = v12 + 1;
        if (v12 < v33 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000B1F4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v42 - v22;
  v24 = *(a1 + 112);
  *(v3 + 248) = *(a1 + 104);
  *(v3 + 256) = v24;
  if (!*(v3 + 112))
  {
    *(v3 + 170) = *(a1 + 50);
    *(v3 + 120) = *(a1 + 40);
    *(v3 + 128) = *(a1 + 48);
    if ((*(a1 + 51) & 1) != 0 && (*(a1 + 128) & 1) == 0)
    {
      v26 = *(a1 + 120) / 1000.0;
      Date.init(timeIntervalSince1970:)();
      sub_1000B083C();
      return (*(v7 + 8))(v23, v6);
    }

    if ((v24 & 1) == 0)
    {
      Date.init(timeIntervalSince1970:)();
      v46 = v3;
      v47 = *(v3 + 192);
      if (v47)
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if ((sub_1000B86A8() & 1) == 0)
      {
        goto LABEL_22;
      }

      v44 = v7;
      v45 = v20;
      v49 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v27 = 3;
      if (!is_mul_ok(3uLL, 0x3CuLL))
      {
        goto LABEL_45;
      }

      v20 = 180;
      v28 = v49;
      v7 = v49[2];
      v27 = v49[3];
      a2 = v7 + 1;
      if (v7 >= v27 >> 1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v28[2] = a2;
        v28[v7 + 4] = v20;
        v27 = 6;
        if (!is_mul_ok(6uLL, 0x3CuLL))
        {
          goto LABEL_45;
        }

        v20 = 360;
        v49 = v28;
        v29 = v28[3];
        if (a2 >= v29 >> 1)
        {
          sub_100147204((v29 > 1), v7 + 2, 1);
          v28 = v49;
        }

        v28[2] = v7 + 2;
        v28[a2 + 4] = 360;
        v27 = 9;
        if (!is_mul_ok(9uLL, 0x3CuLL))
        {
          goto LABEL_45;
        }

        v49 = v28;
        v31 = v28[2];
        v30 = v28[3];
        a2 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_100147204((v30 > 1), v31 + 1, 1);
          v28 = v49;
        }

        v28[2] = a2;
        v28[v31 + 4] = 540;
        v7 = v44;
        v20 = v45;
        if (!v28[2])
        {
          while (1)
          {
            __break(1u);
LABEL_22:
            if (*(a2 + 16) < 3uLL)
            {
              a2 = &off_1002166B8;
            }

            v32 = *(a2 + 16);
            v28 = _swiftEmptyArrayStorage;
            if (v32)
            {
              break;
            }

LABEL_31:
            if (v28[2])
            {
              goto LABEL_32;
            }
          }

          v44 = v7;
          v45 = v20;
          v42 = v11;
          v43 = v6;
          v49 = _swiftEmptyArrayStorage;

          sub_100147204(0, v32, 0);
          v11 = 32;
          v28 = v49;
          v7 = 86400;
          while (1)
          {
            v20 = *(a2 + v11);
            v27 = (v20 * 0x15180uLL) >> 64;
            if (!is_mul_ok(v20, 0x15180uLL))
            {
              break;
            }

            v49 = v28;
            v6 = v28[2];
            v33 = v28[3];
            if (v6 >= v33 >> 1)
            {
              sub_100147204((v33 > 1), v6 + 1, 1);
              v28 = v49;
            }

            v28[2] = v6 + 1;
            v28[v6 + 4] = 86400 * v20;
            v11 += 8;
            if (!--v32)
            {

              v11 = v42;
              v6 = v43;
              v7 = v44;
              v20 = v45;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_32:
        v34 = v28[4];

        Date.addingTimeInterval(_:)();
        a2 = *(v7 + 8);
        (a2)(v14, v6);
        if (v47)
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v35 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        if (sub_1000B86A8())
        {
          v36 = *(v7 + 16);
          v7 += 16;
          v36(v11, v17, v6);
          v37 = &off_1002132D0;
          goto LABEL_39;
        }

LABEL_38:
        Date.addingTimeInterval(_:)();
        v37 = &off_1002132A0;
LABEL_39:
        v27 = v37[2];
        if (!v27)
        {
          goto LABEL_46;
        }

        v38 = *(v37 + 8);

        arc4random_uniform(v38);
        Date.addingTimeInterval(_:)();
        (a2)(v11, v6);
        (a2)(v17, v6);
        Date.timeIntervalSince1970.getter();
        v40 = v39;
        result = (a2)(v20, v6);
        v41 = v40 * 1000.0;
        v27 = fabs(v40 * 1000.0);
        if (v27 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        v27 = v46;
        if (v41 <= -1.0)
        {
          goto LABEL_48;
        }

        if (v41 < 1.84467441e19)
        {
          *(v46 + 280) = v41;
          *(v27 + 288) = 0;
          return result;
        }

LABEL_49:
        __break(1u);
LABEL_50:
        sub_100147204((v27 > 1), a2, 1);
        v28 = v49;
      }
    }
  }

  return result;
}

uint64_t sub_1000B25C0(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C498, &qword_1001BBA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000AF0F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v49 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v49 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 64);
    v49 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v49 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 88);
    v19 = *(v3 + 96);
    v49 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v49 = *(v3 + 168);
    v48 = 5;
    sub_1000B3B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v49 = *(v3 + 169);
    v48 = 6;
    sub_1000B3BB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v49 = *(v3 + 104);
    v48 = 7;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + 120);
    v21 = *(v3 + 128);
    v49 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = *(v3 + 129);
    v48 = 9;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + 72);
    v23 = *(v3 + 80);
    v49 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 152);
    v25 = *(v3 + 160);
    v49 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 136);
    v27 = *(v3 + 144);
    v49 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + 240);
    v49 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v3 + 248);
    v30 = *(v3 + 256);
    v49 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + 264);
    v32 = *(v3 + 272);
    v49 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 280);
    v34 = *(v3 + 288);
    v49 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = *(v3 + 105);
    v49 = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v3 + 112);
    v49 = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + 171);
    v49 = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = *(v3 + 170);
    v49 = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    v49 = *(v3 + 172);
    v48 = 21;
    sub_1000B3C04();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = *(v3 + 176);
    v40 = *(v3 + 184);
    v49 = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    v49 = *(v3 + 192);
    v48 = 23;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41 = *(v3 + 232);
    v49 = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = *(v3 + 200);
    v43 = *(v3 + 208);
    v49 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v3 + 216);
    v45 = *(v3 + 224);
    v49 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1000B2BB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B2DCC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x121uLL);
  }

  return result;
}

unint64_t sub_1000B2C18()
{
  result = qword_10023C458;
  if (!qword_10023C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C458);
  }

  return result;
}

unint64_t sub_1000B2C70()
{
  result = qword_10023C460;
  if (!qword_10023C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C460);
  }

  return result;
}

unint64_t sub_1000B2CC8()
{
  result = qword_10023C468;
  if (!qword_10023C468)
  {
    sub_10000CCC0(&qword_10023C470, &qword_1001BBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C468);
  }

  return result;
}

uint64_t sub_1000B2D2C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1000B2D80(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215348, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_1000B2DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v76 = sub_10000CDE0(&qword_10023C478, &qword_1001BBA60);
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v76);
  v7 = &v35 - v6;
  v152 = 1;
  v8 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000AF0F8();
  v153 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v9 = v4;
  v10 = a1;
  v11 = v75;
  LOBYTE(v78) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v74 = v13;
  LOBYTE(v78) = 0;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v14;
  LOBYTE(v78) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = a1;
  v66 = v15;
  LOBYTE(v78) = 3;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v150 = v16 & 1;
  LOBYTE(v78) = 4;
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = v17;
  LOBYTE(v77[0]) = 5;
  sub_1000B3A28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v63 = v78;
  LOBYTE(v77[0]) = 6;
  sub_1000B3A7C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v62 = v78;
  LOBYTE(v77[0]) = 7;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = v78;
  LOBYTE(v78) = 8;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v146 = v18 & 1;
  LOBYTE(v77[0]) = 9;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v78;
  LOBYTE(v78) = 10;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v69 = v21;
  v22 = v20;
  LOBYTE(v78) = 11;
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v23;
  LOBYTE(v78) = 12;
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v24;
  LOBYTE(v78) = 13;
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78) = 14;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v138 = v25 & 1;
  LOBYTE(v78) = 15;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v136 = v26 & 1;
  LOBYTE(v78) = 16;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v27 & 1;
  LOBYTE(v78) = 17;
  v52 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v78) = 18;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78) = 19;
  v51 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v78) = 20;
  v50 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v77[0]) = 21;
  sub_1000B3AD0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v78;
  LOBYTE(v78) = 22;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v28;
  LOBYTE(v77[0]) = 23;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v78;
  LOBYTE(v78) = 24;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v78) = 25;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v140 = v29 & 1;
  v133 = 26;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v31;
  v43 = v30;
  (*(v9 + 8))(v153, v76);
  v77[0] = 0;
  v37 = v152;
  LOBYTE(v77[1]) = v152;
  *(&v77[1] + 1) = *v151;
  HIDWORD(v77[1]) = *&v151[3];
  v77[2] = v71;
  v77[3] = v73;
  v77[4] = v12;
  v77[5] = v74;
  v32 = v66;
  v77[6] = v65;
  v36 = v150;
  LOBYTE(v77[7]) = v150;
  *(&v77[7] + 1) = *v149;
  HIDWORD(v77[7]) = *&v149[3];
  v77[8] = v66;
  v77[9] = v22;
  v77[10] = v69;
  v77[11] = v64;
  v77[12] = v70;
  LOBYTE(v77[13]) = v60;
  BYTE1(v77[13]) = v52;
  *(&v77[13] + 2) = v147;
  HIWORD(v77[13]) = v148;
  v77[14] = v53;
  v77[15] = v61;
  LODWORD(v153) = v146;
  LOBYTE(v77[16]) = v146;
  v41 = v19;
  BYTE1(v77[16]) = v19;
  *(&v77[16] + 2) = v144;
  HIWORD(v77[16]) = v145;
  v77[17] = v58;
  v77[18] = v67;
  v77[19] = v59;
  v77[20] = v68;
  LOBYTE(v77[21]) = v63;
  BYTE1(v77[21]) = v62;
  BYTE2(v77[21]) = v50;
  BYTE3(v77[21]) = v51;
  BYTE4(v77[21]) = v48;
  HIBYTE(v77[21]) = v143;
  *(&v77[21] + 5) = v142;
  v77[22] = v47;
  v77[23] = v49;
  LOBYTE(v77[24]) = v45;
  HIDWORD(v77[24]) = *&v141[3];
  *(&v77[24] + 1) = *v141;
  v77[25] = v44;
  LODWORD(v76) = v140;
  LOBYTE(v77[26]) = v140;
  *(&v77[26] + 1) = *v139;
  HIDWORD(v77[26]) = *&v139[3];
  v77[27] = v43;
  v77[28] = v42;
  v77[29] = v46;
  v77[30] = v57;
  v77[31] = v56;
  *(&v77[32] + 1) = *v137;
  v40 = v138;
  LOBYTE(v77[32]) = v138;
  HIDWORD(v77[32]) = *&v137[3];
  v33 = v54;
  v77[33] = v55;
  *(&v77[34] + 1) = *v135;
  v38 = v136;
  LOBYTE(v77[34]) = v136;
  HIDWORD(v77[34]) = *&v135[3];
  v77[35] = v54;
  v39 = v134;
  LOBYTE(v77[36]) = v134;
  sub_1000B3B24(v77, &v78);
  sub_10000DB58(v10);
  v79 = v37;
  v81 = v71;
  v82 = v73;
  v83 = v12;
  v84 = v74;
  v85 = v65;
  v86 = v36;
  v88 = v32;
  v89 = v22;
  v90 = v69;
  v91 = v64;
  v92 = v70;
  v93 = v60;
  v94 = v52;
  *v80 = *v151;
  *&v80[3] = *&v151[3];
  *v87 = *v149;
  *&v87[3] = *&v149[3];
  v95 = v147;
  v96 = v148;
  v78 = 0;
  v97 = v53;
  v98 = v61;
  v99 = v153;
  v100 = v41;
  v101 = v144;
  v102 = v145;
  v103 = v58;
  v104 = v67;
  v105 = v59;
  v106 = v68;
  v107 = v63;
  v108 = v62;
  v109 = v50;
  v110 = v51;
  v111 = v48;
  v113 = v143;
  v112 = v142;
  v114 = v47;
  v115 = v49;
  v116 = v45;
  *&v117[3] = *&v141[3];
  *v117 = *v141;
  v118 = v44;
  v119 = v76;
  *&v120[3] = *&v139[3];
  *v120 = *v139;
  v121 = v43;
  v122 = v42;
  v123 = v46;
  v124 = v57;
  v125 = v56;
  v126 = v40;
  *v127 = *v137;
  *&v127[3] = *&v137[3];
  v128 = v55;
  v129 = v38;
  *v130 = *v135;
  *&v130[3] = *&v135[3];
  v131 = v33;
  v132 = v39;
  sub_10003C04C(&v78);
  return memcpy(v11, v77, 0x121uLL);
}

unint64_t sub_1000B3A28()
{
  result = qword_10023C480;
  if (!qword_10023C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C480);
  }

  return result;
}

unint64_t sub_1000B3A7C()
{
  result = qword_10023C488;
  if (!qword_10023C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C488);
  }

  return result;
}

unint64_t sub_1000B3AD0()
{
  result = qword_10023C490;
  if (!qword_10023C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C490);
  }

  return result;
}

unint64_t sub_1000B3B5C()
{
  result = qword_10023C4A0;
  if (!qword_10023C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4A0);
  }

  return result;
}

unint64_t sub_1000B3BB0()
{
  result = qword_10023C4A8;
  if (!qword_10023C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4A8);
  }

  return result;
}

unint64_t sub_1000B3C04()
{
  result = qword_10023C4B0;
  if (!qword_10023C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4B0);
  }

  return result;
}

uint64_t sub_1000B3C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3CC8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B3D30()
{
  result = qword_10023C4B8;
  if (!qword_10023C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostbackModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B3F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B3F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B4008()
{
  result = qword_10023C4C0;
  if (!qword_10023C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4C0);
  }

  return result;
}

unint64_t sub_1000B4060()
{
  result = qword_10023C4C8;
  if (!qword_10023C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4C8);
  }

  return result;
}

unint64_t sub_1000B40B8()
{
  result = qword_10023C4D0;
  if (!qword_10023C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4D0);
  }

  return result;
}

unint64_t sub_1000B4110()
{
  result = qword_10023C4D8;
  if (!qword_10023C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4D8);
  }

  return result;
}

unint64_t sub_1000B4164(uint64_t a1)
{
  result = sub_1000B3D30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B4190()
{
  result = qword_10023C4E0;
  if (!qword_10023C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4E0);
  }

  return result;
}

unint64_t sub_1000B41E4()
{
  result = qword_10023C4E8;
  if (!qword_10023C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4E8);
  }

  return result;
}

unint64_t sub_1000B4238()
{
  result = qword_10023C4F0;
  if (!qword_10023C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4F0);
  }

  return result;
}

unint64_t sub_1000B428C()
{
  result = qword_10023C4F8;
  if (!qword_10023C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4F8);
  }

  return result;
}

uint64_t sub_1000B42E0@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  a1[3] = &type metadata for AggregatedReportingManager;
  a1[4] = &off_10021E0D0;
  v3 = swift_allocObject();
  *a1 = v3;
  v3[11] = &type metadata for BiomeEventStreamDog;
  v3[12] = &off_10021F658;
  v3[16] = &type metadata for AMSDogBag;
  v3[17] = &off_100222F48;
  v4 = qword_100239C90;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  v3[21] = type metadata accessor for TaskGreyhound();
  v3[22] = &off_1002169F0;
  v3[18] = v6;
  v3[26] = &type metadata for LaunchServicesRecordFactory;
  v3[27] = &off_10021CBA8;
  v7 = qword_100239D30;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FD90;
  v3[31] = type metadata accessor for SnoutManager();
  v3[32] = &off_100223858;
  v3[28] = v8;
  v3[2] = 0xD00000000000001ALL;
  v3[3] = 0x80000001001CB760;
  v3[4] = v5;
  v3[5] = 0xD000000000000018;
  v3[6] = 0x80000001001CB380;
  v3[7] = v5;
}

uint64_t sub_1000B44B4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedScheduler];
  a1[3] = &type metadata for PostbackManager;
  a1[4] = &off_100222380;
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 208) = &type metadata for ActivityManager;
  *(v6 + 216) = &off_100223E90;
  v7 = swift_allocObject();
  *(v6 + 184) = v7;
  v7[5] = &type metadata for BackgroundSystemTaskScheduler;
  v7[6] = &off_100217910;
  v7[2] = v5;
  *(v6 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v6 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  *(v6 + 312) = type metadata accessor for TaskGreyhound();
  *(v6 + 320) = &off_1002169F0;
  *(v6 + 288) = v8;
  *(v6 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v6 + 360) = &off_10021CBA8;
  *(v6 + 392) = &type metadata for AMSDogBag;
  *(v6 + 400) = &off_100222F48;

  v9 = [v3 sharedScheduler];
  v14[3] = &type metadata for ActivityManager;
  v14[4] = &off_100223E90;
  v10 = swift_allocObject();
  v13[4] = &off_10021CBA8;
  v14[0] = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  v13[3] = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v14, v13, v6 + 408);
  *(v6 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v6 + 528) = &off_100222C60;
  sub_1000B42E0((v6 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FD90;
  *(v6 + 600) = type metadata accessor for SnoutManager();
  *(v6 + 608) = &off_100223858;
  *(v6 + 576) = v11;
  strcpy((v6 + 16), "postback_store");
  *(v6 + 31) = -18;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0x63616274736F6867;
  *(v6 + 48) = 0xEF65726F74735F6BLL;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0xD000000000000010;
  *(v6 + 72) = 0x80000001001CB320;
  *(v6 + 80) = v4;
  *(v6 + 88) = 0x74735F6E656B6F74;
  *(v6 + 96) = 0xEB0000000065726FLL;
  *(v6 + 104) = v4;
  *(v6 + 112) = 0xD000000000000012;
  *(v6 + 120) = 0x80000001001CB340;
  *(v6 + 128) = v4;
  *(v6 + 136) = 0xD000000000000014;
  *(v6 + 144) = 0x80000001001CB360;
  *(v6 + 152) = v4;
  *(v6 + 160) = 0xD000000000000018;
  *(v6 + 168) = 0x80000001001CB380;
  *(v6 + 176) = v4;
  *(v6 + 224) = 0xD000000000000011;
  *(v6 + 232) = 0x80000001001CB3A0;
  *(v6 + 240) = v4;
}

uint64_t sub_1000B4864()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];

  v3 = String._bridgeToObjectiveC()();
  [v2 addObserver:v0 selector:"handleApplicationRegisteredNotification:" name:v3 object:0];

  v4 = [v1 defaultCenter];

  v5 = String._bridgeToObjectiveC()();
  [v4 addObserver:v0 selector:"handleApplicationUnregisteredNotification:" name:v5 object:0];

  return v0;
}

void *sub_1000B499C()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000C3C20(v5), (v3 & 1) == 0))
  {

    sub_100025D20(v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_10002036C(*(v1 + 56) + 32 * v2, &v6);
  sub_100025D20(v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_10000DAF8(&v6, &qword_10023BB90, &qword_1001BA370);
    return _swiftEmptyArrayStorage;
  }

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000B4AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000BD30;

  return sub_1000B5198(a5);
}

uint64_t sub_1000B4B74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v7 = v4;
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v35 = v31 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000B499C();
  v17 = Logger.general.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v17, v11);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31[1] = a3;
    v23 = v22;
    v36 = v16;
    v37 = v22;
    *v21 = 136315138;
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    v33 = a4;
    sub_1000B5134();
    v24 = BidirectionalCollection<>.joined(separator:)();
    v26 = sub_10017AD04(v24, v25, &v37);

    *(v21 + 4) = v26;
    a4 = v33;
    _os_log_impl(&_mh_execute_header, v18, v19, v34, v21, 0xCu);
    sub_10000DB58(v23);

    v7 = v32;
  }

  (*(v12 + 8))(v15, v11);
  v27 = type metadata accessor for TaskPriority();
  v28 = v35;
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v7;
  v29[5] = v16;

  sub_10001267C(0, 0, v28, a4, v29);
}

uint64_t sub_1000B4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000152E0;

  return sub_1000B61A0(a5);
}

uint64_t sub_1000B4F2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000B4B74(v13, a4, a5, a6);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000B5074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_1000B4E70(a1, v4, v5, v7, v6);
}

unint64_t sub_1000B5134()
{
  result = qword_10023C598;
  if (!qword_10023C598)
  {
    sub_10000CCC0(&unk_10023C250, &qword_1001B58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C598);
  }

  return result;
}

uint64_t sub_1000B5198(uint64_t a1)
{
  v1[81] = a1;
  v2 = type metadata accessor for PostAppInstallTask();
  v1[82] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[83] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[84] = v4;
  v5 = *(v4 - 8);
  v1[85] = v5;
  v6 = *(v5 + 64) + 15;
  v1[86] = swift_task_alloc();

  return _swift_task_switch(sub_1000B52B4, 0, 0);
}

uint64_t sub_1000B52B4()
{
  v1 = v0[81];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_34:
    v50 = v0[86];
    v51 = v0[83];

    v52 = v0[1];

    return v52();
  }

  v66 = (v0 + 55);
  v69 = (v0 + 80);
  v70 = (v0 + 65);
  v3 = v0[85];
  sub_100147224(0, v2, 0);
  v67 = (v3 + 8);
  v68 = (v3 + 16);
  v4 = (v1 + 40);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = objc_allocWithZone(LSApplicationRecord);

    v8 = String._bridgeToObjectiveC()();

    *v69 = 0;
    v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:v69];

    v10 = *v69;
    if (v9)
    {
      v11 = sub_10006DF54();
      v12 = v10;
      v13 = &off_10021F840;
    }

    else
    {
      v14 = *(v71 + 688);
      v15 = *(v71 + 672);
      v16 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v17 = Logger.xpc.unsafeMutableAddressor();
      (*v68)(v14, v17, v15);
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get bundle record from bundle ID: %@", v20, 0xCu);
        sub_10000DAF8(v21, &qword_100239F10, &qword_1001B4FD0);
      }

      else
      {
      }

      (*v67)(*(v71 + 688), *(v71 + 672));
      v9 = 0;
      v11 = 0;
      v13 = 0;
    }

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_100147224((v23 > 1), v24 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[5 * v24];
    v25[4] = v9;
    v25[5] = 0;
    v25[6] = 0;
    v25[7] = v11;
    v25[8] = v13;
    v4 += 2;
    --v2;
  }

  while (v2);
  v26 = v24 + 1;
  v27 = _swiftEmptyArrayStorage;
  v28 = &_swiftEmptyArrayStorage[4];
  v29 = v71;
  do
  {
    sub_1000B6D74(v28, v66);
    v0[69] = v0[59];
    v30 = *(v0 + 57);
    *v70 = *v66;
    *(v0 + 67) = v30;
    if (v29[68])
    {
      sub_10000DA64(v70, (v29 + 60));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1000892AC(0, v27[2] + 1, 1, v27);
      }

      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        v27 = sub_1000892AC((v31 > 1), v32 + 1, 1, v27);
      }

      v27[2] = v32 + 1;
      v29 = v71;
      sub_10000DA64((v71 + 480), &v27[5 * v32 + 4]);
    }

    else
    {
      sub_10000DAF8(v70, &qword_10023A7E0, &qword_1001B5850);
    }

    v29[90] = v27;
    v28 += 5;
    --v26;
  }

  while (v26);

  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v33 = qword_10023FC50;
  v29[87] = qword_10023FC50;
  v34 = v33;
  sub_1000B44B4(v29 + 20);
  v29[28] = &type metadata for LaunchServicesRecordFactory;
  v29[29] = &off_10021CBA8;
  v29[33] = &type metadata for DogTokenClientFactory;
  v29[34] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v35 = qword_10023FC28;
  v36 = type metadata accessor for TaskGreyhound();
  v29[88] = v36;
  v29[38] = v36;
  v29[39] = &off_1002169F0;
  v29[35] = v35;
  v29[43] = &type metadata for AMSDogBag;
  v29[44] = &off_100222F48;
  v29[48] = &type metadata for CasinoDog;
  v29[49] = &off_1002179A0;
  v37 = qword_100239D30;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_10023FD90;
  v29[53] = type metadata accessor for SnoutManager();
  v29[54] = &off_100223858;
  v29[50] = v38;
  v29[2] = 0x74735F6E656B6F74;
  v29[3] = 0xEB0000000065726FLL;
  v29[4] = v34;
  v29[5] = 0xD000000000000010;
  v29[6] = 0x80000001001CB320;
  v29[7] = v34;
  v29[8] = 0xD000000000000012;
  v29[9] = 0x80000001001CB340;
  v29[10] = v34;
  v29[11] = 0xD000000000000014;
  v29[12] = 0x80000001001CB360;
  v29[13] = v34;
  v29[14] = 0xD000000000000018;
  v29[15] = 0x80000001001CB380;
  v29[16] = v34;
  v29[17] = 0x63616274736F6867;
  v29[18] = 0xEF65726F74735F6BLL;
  v29[19] = v34;
  v39 = v27[2];
  v29[89] = v39;
  if (!v39)
  {

LABEL_33:

    sub_1000463A0((v29 + 2));
    v0 = v29;
    goto LABEL_34;
  }

  v40 = 0;
  while (1)
  {
    v29[91] = v40;
    sub_10000CE28(v29[90] + 40 * v40 + 32, (v29 + 70));
    v41 = v29[73];
    v42 = v29[74];
    sub_10000DA7C(v29 + 70, v41);
    v43 = (*(v42 + 16))(v41, v42);
    v44 = v29[73];
    v45 = v29[74];
    sub_10000DA7C(v29 + 70, v44);
    v46 = (*(v45 + 24))(v44, v45);
    v48 = v47;
    sub_10000DB58(v29 + 70);
    if (v48)
    {
      break;
    }

    v40 = v29[91] + 1;
    if (v40 == v29[89])
    {
      v49 = v29[90];
      goto LABEL_33;
    }
  }

  v54 = v29[87];
  sub_10000CE28((v29 + 20), v29[83] + 120);
  v55 = qword_100239CE0;
  v56 = v54;
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v29[87];
  v58 = *(v71 + 680);
  v59 = *(v71 + 672);
  v60 = *(v71 + 664);
  v61 = *(v71 + 656);
  v62 = sub_10000DAC0(v59, qword_10023FCD0);
  (*(v58 + 16))(v60 + *(v61 + 44), v62, v59);
  *v60 = v43;
  v60[1] = v46;
  v60[2] = v48;
  v60[3] = 0x74735F6E656B6F74;
  v60[4] = 0xEB0000000065726FLL;
  v60[5] = v57;
  v60[6] = 0xD000000000000012;
  v60[7] = 0x80000001001CB340;
  v60[8] = v57;
  v60[9] = 0xD000000000000018;
  v60[10] = 0x80000001001CB380;
  v60[11] = v57;
  v60[12] = 0x63616274736F6867;
  v60[13] = 0xEF65726F74735F6BLL;
  v60[14] = v57;
  sub_10000DA7C((v71 + 280), *(v71 + 304));
  *(v71 + 624) = v61;
  *(v71 + 632) = &off_10023DEB8;
  v63 = sub_10005CA24((v71 + 600));
  sub_1000B6DD0(v60, v63);
  v64 = swift_task_alloc();
  *(v71 + 736) = v64;
  *v64 = v71;
  v64[1] = sub_1000B5C80;
  v65 = *(v71 + 704);

  return (sub_10000C9BC)(v71 + 600, v65, &off_1002169F0);
}

uint64_t sub_1000B5C80()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v4 = *v0;

  sub_10000DB58((v1 + 600));

  return _swift_task_switch(sub_1000B5DB0, 0, 0);
}

uint64_t sub_1000B5DB0()
{
  sub_1000B6E34(v0[83]);
  while (1)
  {
    v1 = v0[91] + 1;
    if (v1 == v0[89])
    {
      break;
    }

    v0[91] = v1;
    sub_10000CE28(v0[90] + 40 * v1 + 32, (v0 + 70));
    v2 = v0[73];
    v3 = v0[74];
    sub_10000DA7C(v0 + 70, v2);
    v4 = (*(v3 + 16))(v2, v3);
    v5 = v0[73];
    v6 = v0[74];
    sub_10000DA7C(v0 + 70, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v9 = v8;
    sub_10000DB58(v0 + 70);
    if (v9)
    {
      v10 = v0[87];
      sub_10000CE28((v0 + 20), v0[83] + 120);
      v11 = qword_100239CE0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = v0[87];
      v14 = v0[85];
      v15 = v0[84];
      v16 = v0[83];
      v17 = v0[82];
      v18 = sub_10000DAC0(v15, qword_10023FCD0);
      (*(v14 + 16))(v16 + *(v17 + 44), v18, v15);
      *v16 = v4;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = 0x74735F6E656B6F74;
      v16[4] = 0xEB0000000065726FLL;
      v16[5] = v13;
      v16[6] = 0xD000000000000012;
      v16[7] = 0x80000001001CB340;
      v16[8] = v13;
      v16[9] = 0xD000000000000018;
      v16[10] = 0x80000001001CB380;
      v16[11] = v13;
      v16[12] = 0x63616274736F6867;
      v16[13] = 0xEF65726F74735F6BLL;
      v16[14] = v13;
      sub_10000DA7C(v0 + 35, v0[38]);
      v0[78] = v17;
      v0[79] = &off_10023DEB8;
      v19 = sub_10005CA24(v0 + 75);
      sub_1000B6DD0(v16, v19);
      v20 = swift_task_alloc();
      v0[92] = v20;
      *v20 = v0;
      v20[1] = sub_1000B5C80;
      v21 = v0[88];

      return (sub_10000C9BC)(v0 + 75, v21, &off_1002169F0);
    }
  }

  v23 = v0[90];

  sub_1000463A0((v0 + 2));
  v24 = v0[86];
  v25 = v0[83];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000B61A0(uint64_t a1)
{
  v1[77] = a1;
  v2 = type metadata accessor for Logger();
  v1[78] = v2;
  v3 = *(v2 - 8);
  v1[79] = v3;
  v4 = *(v3 + 64) + 15;
  v1[80] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6260, 0, 0);
}

uint64_t sub_1000B6260()
{
  v20 = v0;
  v1 = *(*(v0 + 616) + 16);
  *(v0 + 648) = v1;
  if (v1)
  {
    if (qword_100239CA8 != -1)
    {
      swift_once();
    }

    v2 = qword_10023FC50;
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedScheduler];
    *(v0 + 208) = &type metadata for ActivityManager;
    *(v0 + 216) = &off_100223E90;
    v6 = swift_allocObject();
    *(v0 + 184) = v6;
    v6[5] = &type metadata for BackgroundSystemTaskScheduler;
    v6[6] = &off_100217910;
    v6[2] = v5;
    *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
    *(v0 + 280) = &off_1002191C8;
    if (qword_100239C90 != -1)
    {
      swift_once();
    }

    v7 = qword_10023FC28;
    *(v0 + 312) = type metadata accessor for TaskGreyhound();
    *(v0 + 320) = &off_1002169F0;
    *(v0 + 288) = v7;
    *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
    *(v0 + 360) = &off_10021CBA8;
    *(v0 + 392) = &type metadata for AMSDogBag;
    *(v0 + 400) = &off_100222F48;

    v8 = [v3 sharedScheduler];
    v18[3] = &type metadata for ActivityManager;
    v18[4] = &off_100223E90;
    v9 = swift_allocObject();
    v18[0] = v9;
    v9[5] = &type metadata for BackgroundSystemTaskScheduler;
    v9[6] = &off_100217910;
    v9[2] = v8;
    v19[3] = &type metadata for LaunchServicesRecordFactory;
    v19[4] = &off_10021CBA8;
    sub_1000B8524(v18, v19, v0 + 408);
    *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
    *(v0 + 528) = &off_100222C60;
    sub_1000B42E0((v0 + 536));
    if (qword_100239D30 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 616);
    v11 = qword_10023FD90;
    *(v0 + 600) = type metadata accessor for SnoutManager();
    *(v0 + 608) = &off_100223858;
    *(v0 + 576) = v11;
    strcpy((v0 + 16), "postback_store");
    *(v0 + 31) = -18;
    *(v0 + 32) = v4;
    *(v0 + 40) = 0x63616274736F6867;
    *(v0 + 48) = 0xEF65726F74735F6BLL;
    *(v0 + 56) = v4;
    *(v0 + 64) = 0xD000000000000010;
    *(v0 + 72) = 0x80000001001CB320;
    *(v0 + 80) = v4;
    *(v0 + 88) = 0x74735F6E656B6F74;
    *(v0 + 96) = 0xEB0000000065726FLL;
    *(v0 + 104) = v4;
    *(v0 + 112) = 0xD000000000000012;
    *(v0 + 120) = 0x80000001001CB340;
    *(v0 + 128) = v4;
    *(v0 + 136) = 0xD000000000000014;
    *(v0 + 144) = 0x80000001001CB360;
    *(v0 + 152) = v4;
    *(v0 + 160) = 0xD000000000000018;
    *(v0 + 168) = 0x80000001001CB380;
    *(v0 + 176) = v4;
    *(v0 + 224) = 0xD000000000000011;
    *(v0 + 232) = 0x80000001001CB3A0;
    *(v0 + 240) = v4;
    *(v0 + 656) = 0;
    v12 = *(v10 + 32);
    *(v0 + 664) = v12;
    v13 = *(v10 + 40);
    *(v0 + 672) = v13;

    v14 = swift_task_alloc();
    *(v0 + 680) = v14;
    *v14 = v0;
    v14[1] = sub_1000B66C4;

    return sub_100121B58(v12, v13);
  }

  else
  {
    v16 = *(v0 + 640);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1000B66C4()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v7 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v4 = sub_1000B6900;
  }

  else
  {
    v5 = *(v2 + 672);

    v4 = sub_1000B67E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B67E0()
{
  v1 = v0[82] + 1;
  if (v1 == v0[81])
  {
    sub_10004E7FC((v0 + 2));
    v2 = v0[80];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[82] = v1;
    v5 = v0[77] + 16 * v1;
    v6 = *(v5 + 32);
    v0[83] = v6;
    v7 = *(v5 + 40);
    v0[84] = v7;

    v8 = swift_task_alloc();
    v0[85] = v8;
    *v8 = v0;
    v8[1] = sub_1000B66C4;

    return sub_100121B58(v6, v7);
  }
}

uint64_t sub_1000B6900()
{
  v31 = v0;
  v1 = v0[84];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = Logger.general.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[86];
  v10 = v0[84];
  if (v8)
  {
    v11 = v0[83];
    v29 = v0[80];
    v12 = v0[79];
    v13 = v0[78];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = sub_10017AD04(v11, v10, &v30);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clean up state for app: %s", v14, 0xCu);
    sub_10000DB58(v15);

    (*(v12 + 8))(v29, v13);
  }

  else
  {
    v17 = v0[80];
    v18 = v0[79];
    v19 = v0[78];
    v20 = v0[84];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[82] + 1;
  if (v21 == v0[81])
  {
    sub_10004E7FC((v0 + 2));
    v22 = v0[80];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v0[82] = v21;
    v25 = v0[77] + 16 * v21;
    v26 = *(v25 + 32);
    v0[83] = v26;
    v27 = *(v25 + 40);
    v0[84] = v27;

    v28 = swift_task_alloc();
    v0[85] = v28;
    *v28 = v0;
    v28[1] = sub_1000B66C4;

    return sub_100121B58(v26, v27);
  }
}

uint64_t sub_1000B6BBC()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B6BF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_1000B6C6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B6CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD30;

  return sub_1000B4AB8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000B6DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostAppInstallTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6E34(uint64_t a1)
{
  v2 = type metadata accessor for PostAppInstallTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B6E90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);

  v6 = *(v0 + 144);

  v7 = *(v0 + 168);

  sub_10000DB58((v0 + 184));
  v8 = *(v0 + 232);

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));
  v9 = *(v0 + 488);

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));

  return _swift_deallocObject(v0, 616, 7);
}

uint64_t sub_1000B6FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1146049104;
  }

  else
  {
    v4 = 5653828;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1146049104;
  }

  else
  {
    v6 = 5653828;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000B7044()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B70B8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000B7118()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7188@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100215BA8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000B71E8(uint64_t *a1@<X8>)
{
  v2 = 5653828;
  if (*v1)
  {
    v2 = 1146049104;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000B721C()
{
  result = qword_10023C5A0;
  if (!qword_10023C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5A0);
  }

  return result;
}

unint64_t sub_1000B7320()
{
  result = qword_10023C5A8;
  if (!qword_10023C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5A8);
  }

  return result;
}

uint64_t sub_1000B7374()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FC58);
  sub_10000DAC0(v0, qword_10023FC58);
  v1 = Logger.aakSubsystem.unsafeMutableAddressor();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7500(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100026610(v3, a2);
  sub_10000DAC0(v3, a2);
  v4 = Logger.aakSubsystem.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7584()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FD30);
  sub_10000DAC0(v0, qword_10023FD30);
  v1 = Logger.aakSubsystem.unsafeMutableAddressor();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B760C()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FD48);
  sub_10000DAC0(v0, qword_10023FD48);
  v1 = Logger.aakSubsystem.unsafeMutableAddressor();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = objc_allocWithZone(LSApplicationRecord);
  v9 = sub_1000BB120(a1, a2, 0);
  result = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
  *a3 = v9;
  a3[3] = result;
  a3[4] = &off_10021F840;
  return result;
}

double sub_1000B78E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10001523C(0, &qword_10023C5B0, LSBundleRecord_ptr);
  sub_1000B7B64(a1, a2, a3, a4);
  sub_10000CDE0(&unk_10023BC70, &qword_1001BA568);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  result = *&v13;
  *a5 = v13;
  *(a5 + 16) = v14;
  *(a5 + 32) = v15;
  return result;
}

id sub_1000B7B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

double sub_1000B7C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(LSApplicationRecord);
  v23 = 0;
  v10 = [v9 initWithStoreItemIdentifier:a1 error:&v23];
  v22 = v23;
  if (v10)
  {
    v11 = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    *a2 = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = &off_10021F840;
    v12 = v22;

    v13 = v12;
  }

  else
  {
    v15 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v16, v4);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get bundle record from store item ID: %@", v19, 0xCu);
      sub_1000AEA80(v20);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}