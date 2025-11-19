uint64_t sub_1004F3014()
{
  v1 = *(*v0 + 752);
  *(*v0 + 4024) = v1;
  if (v1)
  {
    v2 = sub_1004F804C;
  }

  else
  {
    v2 = sub_1004F3150;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F3150()
{
  v1 = *(v0 + 4016);

  *(v0 + 4032) = *(v0 + 4008);
  *(v0 + 1072) = 3;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 0u;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 0;
  *(v0 + 1136) = 41;
  v2 = swift_task_alloc();
  *(v0 + 4040) = v2;
  *v2 = v0;
  v2[1] = sub_1004F3250;

  return sub_1006600F0(v0 + 1072);
}

uint64_t sub_1004F3250(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4048) = a1;
  *(v3 + 4056) = a2;

  return _swift_task_switch(sub_1004F3380, 0, 0);
}

uint64_t sub_1004F3380()
{
  v1 = *(v0 + 3464);
  v2 = *(v0 + 3456);
  String.append(_:)(*(v0 + 4048));
  v3._countAndFlagsBits = 10333;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v2 + *(v1 + 24)));
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  *(v0 + 4064) = 91;
  *(v0 + 4072) = 0xE100000000000000;
  v5 = (v2 + *(type metadata accessor for MediaAPIMetadata() + 56));
  *(v0 + 4080) = *v5;
  *(v0 + 4088) = v5[1];
  *(v0 + 1144) = 5;
  *(v0 + 1200) = 0;
  *(v0 + 1184) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1208) = 41;
  v6 = swift_task_alloc();
  *(v0 + 4096) = v6;
  *v6 = v0;
  v6[1] = sub_1004F34F4;

  return sub_1006600F0(v0 + 1144);
}

uint64_t sub_1004F34F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4104) = a1;
  *(v3 + 4112) = a2;

  *(v3 + 1216) = 6;
  *(v3 + 1224) = 0u;
  *(v3 + 1240) = 0u;
  *(v3 + 1256) = 0u;
  *(v3 + 1272) = 0;
  *(v3 + 1280) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4120) = v4;
  *v4 = v6;
  v4[1] = sub_1004F369C;

  return sub_1006600F0(v3 + 1216);
}

uint64_t sub_1004F369C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4128) = a1;
  *(v3 + 4136) = a2;

  *(v3 + 1288) = 41;
  *(v3 + 1296) = 0u;
  *(v3 + 1312) = 0u;
  *(v3 + 1328) = 0u;
  *(v3 + 1344) = 0;
  *(v3 + 1352) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4144) = v4;
  *v4 = v6;
  v4[1] = sub_1004F3840;

  return sub_1006600F0(v3 + 1288);
}

uint64_t sub_1004F3840(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4152) = a1;
  *(v3 + 4160) = a2;

  *(v3 + 1360) = 42;
  *(v3 + 1368) = 0u;
  *(v3 + 1384) = 0u;
  *(v3 + 1400) = 0u;
  *(v3 + 1416) = 0;
  *(v3 + 1424) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4168) = v4;
  *v4 = v6;
  v4[1] = sub_1004F39E8;

  return sub_1006600F0(v3 + 1360);
}

uint64_t sub_1004F39E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4176) = a1;
  *(v3 + 4184) = a2;

  *(v3 + 1432) = 43;
  *(v3 + 1440) = 0u;
  *(v3 + 1456) = 0u;
  *(v3 + 1472) = 0u;
  *(v3 + 1488) = 0;
  *(v3 + 1496) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4192) = v4;
  *v4 = v6;
  v4[1] = sub_1004F3B90;

  return sub_1006600F0(v3 + 1432);
}

uint64_t sub_1004F3B90(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4200) = a1;
  *(v3 + 4208) = a2;

  *(v3 + 1504) = 44;
  *(v3 + 1512) = 0u;
  *(v3 + 1528) = 0u;
  *(v3 + 1544) = 0u;
  *(v3 + 1560) = 0;
  *(v3 + 1568) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4216) = v4;
  *v4 = v6;
  v4[1] = sub_1004F3D38;

  return sub_1006600F0(v3 + 1504);
}

uint64_t sub_1004F3D38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3808);
  v5 = *(*v2 + 3800);
  v9 = *v2;
  *(v3 + 4224) = a1;
  *(v3 + 4232) = a2;

  *(v3 + 1576) = v5;
  *(v3 + 1584) = v4;
  v6 = *(v3 + 3216);
  *(v3 + 1592) = *(v3 + 3200);
  *(v3 + 1608) = v6;
  *(v3 + 1624) = *(v3 + 3232);
  *(v3 + 1640) = 14;
  v7 = swift_task_alloc();
  *(v3 + 4240) = v7;
  *v7 = v9;
  v7[1] = sub_1004F3F14;

  return sub_1006600F0(v3 + 1576);
}

uint64_t sub_1004F3F14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4248) = a1;
  *(v3 + 4256) = a2;

  return _swift_task_switch(sub_1004F4044, 0, 0);
}

uint64_t sub_1004F4044()
{
  v1 = *(v0 + 4072);
  v2 = *(v0 + 4064);
  v3 = *(v0 + 3808);
  v4 = *(v0 + 3800);
  v5 = *(v0 + 3456);
  v6 = *v5;
  v7 = v5[1];
  v8 = (v5 + *(*(v0 + 3464) + 20));
  v9 = *v8;
  v10 = v8[1];
  *(v0 + 2944) = v6;
  *(v0 + 2952) = v7;
  *(v0 + 2960) = v9;
  *(v0 + 2968) = v10;
  *(v0 + 2976) = v4;
  *(v0 + 2984) = v3;
  *(v0 + 2992) = v2;
  *(v0 + 3000) = v1;
  v11 = *(v0 + 2944);
  v12 = *(v0 + 2960);
  v13 = *(v0 + 2976);
  *(v0 + 1696) = *(v0 + 2992);
  *(v0 + 1680) = v13;
  *(v0 + 1664) = v12;
  *(v0 + 1648) = v11;
  *(v0 + 1712) = 15;
  swift_bridgeObjectRetain_n();

  v14 = swift_task_alloc();
  *(v0 + 4264) = v14;
  *v14 = v0;
  v14[1] = sub_1004F41AC;

  return sub_1006600F0(v0 + 1648);
}

uint64_t sub_1004F41AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4272) = a1;
  *(v3 + 4280) = a2;

  sub_1000032A8(v3 + 2944, &qword_1007860A8);
  *(v3 + 1720) = 33;
  *(v3 + 1728) = 0u;
  *(v3 + 1744) = 0u;
  *(v3 + 1760) = 0u;
  *(v3 + 1776) = 0;
  *(v3 + 1784) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4288) = v4;
  *v4 = v6;
  v4[1] = sub_1004F436C;

  return sub_1006600F0(v3 + 1720);
}

uint64_t sub_1004F436C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1065);
  v5 = *v2;
  *(v3 + 4296) = a1;
  *(v3 + 4304) = a2;

  v6 = 34;
  if (v4)
  {
    v6 = 35;
  }

  *(v3 + 2800) = v6;
  *(v3 + 2808) = 0u;
  *(v3 + 2824) = 0u;
  *(v3 + 2840) = 0u;
  *(v3 + 2856) = 0;
  *(v3 + 2864) = 41;
  *(v3 + 1856) = 41;
  *(v3 + 1808) = *(v3 + 2816);
  *(v3 + 1824) = *(v3 + 2832);
  *(v3 + 1840) = *(v3 + 2848);
  *(v3 + 1792) = *(v3 + 2800);
  v7 = swift_task_alloc();
  *(v3 + 4312) = v7;
  *v7 = v5;
  v7[1] = sub_1004F454C;

  return sub_1006600F0(v3 + 1792);
}

uint64_t sub_1004F454C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4320) = a1;
  *(v3 + 4328) = a2;

  *(v3 + 1864) = 36;
  *(v3 + 1872) = 0u;
  *(v3 + 1888) = 0u;
  *(v3 + 1904) = 0u;
  *(v3 + 1920) = 0;
  *(v3 + 1928) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4336) = v4;
  *v4 = v6;
  v4[1] = sub_1004F46F4;

  return sub_1006600F0(v3 + 1864);
}

uint64_t sub_1004F46F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4344) = a1;
  *(v3 + 4352) = a2;

  *(v3 + 1936) = 37;
  *(v3 + 1944) = 0u;
  *(v3 + 1960) = 0u;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = 0;
  *(v3 + 2000) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4360) = v4;
  *v4 = v6;
  v4[1] = sub_1004F489C;

  return sub_1006600F0(v3 + 1936);
}

uint64_t sub_1004F489C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4368) = a1;
  *(v3 + 4376) = a2;

  *(v3 + 2008) = 38;
  *(v3 + 2016) = 0u;
  *(v3 + 2032) = 0u;
  *(v3 + 2048) = 0u;
  *(v3 + 2064) = 0;
  *(v3 + 2072) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4384) = v4;
  *v4 = v6;
  v4[1] = sub_1004F4A44;

  return sub_1006600F0(v3 + 2008);
}

uint64_t sub_1004F4A44(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4392) = a1;
  *(v3 + 4400) = a2;

  *(v3 + 2080) = 39;
  *(v3 + 2088) = 0u;
  *(v3 + 2104) = 0u;
  *(v3 + 2120) = 0u;
  *(v3 + 2136) = 0;
  *(v3 + 2144) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4408) = v4;
  *v4 = v6;
  v4[1] = sub_1004F4BEC;

  return sub_1006600F0(v3 + 2080);
}

uint64_t sub_1004F4BEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4416) = a1;
  *(v3 + 4424) = a2;

  return _swift_task_switch(sub_1004F4D1C, 0, 0);
}

uint64_t sub_1004F4D1C()
{
  v30 = *(v0 + 4424);
  v40 = *(v0 + 4416);
  v28 = *(v0 + 4400);
  v42 = *(v0 + 4376);
  v38 = *(v0 + 4368);
  v39 = *(v0 + 4392);
  v1 = *(v0 + 4352);
  v37 = *(v0 + 4344);
  v2 = *(v0 + 4232);
  v3 = *(v0 + 4208);
  v33 = *(v0 + 4200);
  v34 = *(v0 + 4224);
  v4 = *(v0 + 4184);
  v5 = *(v0 + 4160);
  v31 = *(v0 + 4152);
  v32 = *(v0 + 4176);
  v24 = *(v0 + 4136);
  v36 = *(v0 + 4128);
  v23 = *(v0 + 4112);
  v35 = *(v0 + 4104);
  v25 = *(v0 + 4088);
  v29 = *(v0 + 3800);
  v27 = *(v0 + 4080);
  v41 = *(v0 + 4032);
  v26 = *(v0 + 3784);

  v22 = v3;
  v21 = v5;

  v19 = v1;
  DeveloperApprovalSheetContext.init(title:body:firstBulletTitle:firstBulletBody:secondBulletTitle:secondBulletBody:thirdBulletTitle:thirdBulletBody:allowButtonText:ignoreButtonText:developerID:developerName:supportURL:passcodeTitle:passcodeReason:touchIDTitle:touchIDReason:)();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1004F85E4(&qword_1007860B0, &type metadata accessor for DeveloperApprovalSheetContext);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 4432) = v6;
  *(v0 + 4440) = v7;
  if (v41)
  {
    v8 = *(v0 + 4000);
    (*(*(v0 + 3600) + 8))(*(v0 + 3608), *(v0 + 3592));

    sub_100222FFC(v0 + 2800);

    v9 = *(v0 + 8);

    return v9(1);
  }

  else
  {
    v11 = *(v0 + 3808);
    v12 = *(v0 + 3800);
    v13 = v6;
    v14 = v7;

    v15 = [objc_allocWithZone(FLFollowUpItem) init];
    *(v0 + 4448) = v15;
    sub_1001F0C48(&qword_100781440);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10069E680;
    *(v0 + 3416) = 0xD000000000000010;
    *(v0 + 3424) = 0x80000001006CC7B0;
    AnyHashable.init<A>(_:)();
    *(v16 + 96) = &type metadata for Data;
    *(v16 + 72) = v13;
    *(v16 + 80) = v14;
    sub_10020ABFC(v13, v14);
    sub_100528C10(v16);
    swift_setDeallocating();
    sub_1000032A8(v16 + 32, &qword_100781448);
    swift_deallocClassInstance();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setUserInfo:isa];

    *(v0 + 2152) = v12;
    *(v0 + 2160) = v11;
    *(v0 + 2216) = 13;
    v18 = swift_task_alloc();
    *(v0 + 4456) = v18;
    *v18 = v0;
    v18[1] = sub_1004F5460;

    return sub_1006600F0(v0 + 2152);
  }
}

uint64_t sub_1004F5460(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 4464) = a2;

  *(v3 + 2224) = 40;
  *(v3 + 2232) = 0u;
  *(v3 + 2248) = 0u;
  *(v3 + 2264) = 0u;
  *(v3 + 2280) = 0;
  *(v3 + 2288) = 41;
  v5 = swift_task_alloc();
  *(v3 + 4472) = v5;
  *v5 = v4;
  v5[1] = sub_1004F55FC;

  return sub_1006600F0(v3 + 2224);
}

uint64_t sub_1004F55FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4480) = a1;
  *(v3 + 4488) = a2;

  return _swift_task_switch(sub_1004F572C, 0, 0);
}

uint64_t sub_1004F572C()
{
  v1 = *(v0 + 3712);
  v2 = *(v0 + 3704);
  v3 = *(v0 + 3672);
  v4 = *(v1 + 56);
  *(v0 + 4496) = v4;
  *(v0 + 4504) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v3, 1, 1, v2);
  v5 = String._bridgeToObjectiveC()();
  v6 = *(v1 + 48);
  *(v0 + 4512) = v6;
  *(v0 + 4520) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 3712);
    v10 = *(v0 + 3704);
    v11 = *(v0 + 3672);
    URL._bridgeToObjectiveC()(v7);
    v8 = v12;
    (*(v9 + 8))(v11, v10);
  }

  v13 = objc_opt_self();
  *(v0 + 4528) = v13;
  v14 = [v13 actionWithLabel:v5 url:v8];
  *(v0 + 4536) = v14;

  if (!v14)
  {
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(v0 + 4448);
  v64 = *(v0 + 3584);
  v16 = *(v0 + 3568);
  v68 = *(v0 + 3552);
  v69 = *(v0 + 3560);
  v62 = *(v0 + 3544);
  v17 = *(v0 + 3536);
  v18 = *(v0 + 3528);
  v19 = *(v0 + 3520);
  v20 = *(v0 + 3512);
  v66 = *(v0 + 3504);
  v21 = String._bridgeToObjectiveC()();
  [v15 setExtensionIdentifier:v21];

  v22 = String._bridgeToObjectiveC()();
  [v15 setTypeIdentifier:v22];

  v23 = String._bridgeToObjectiveC()();
  [v15 setUniqueIdentifier:v23];

  static Calendar.current.getter();
  v24 = v62;
  v61 = *(v17 + 104);
  v61(v62, enum case for Calendar.Component.minute(_:), v18);
  Date.init()();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v25 = v19;
  v26 = *(v20 + 8);
  v26(v25, v66);
  v63 = *(v17 + 8);
  v63(v24, v18);
  v60 = *(v69 + 8);
  v60(v16, v68);
  v27 = *(v20 + 48);
  if (v27(v64, 1, v66) == 1)
  {
    isa = 0;
  }

  else
  {
    v29 = *(v0 + 3584);
    v30 = *(v0 + 3504);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26(v29, v30);
  }

  v31 = v26;
  v32 = *(v0 + 4448);
  [v32 setExpirationDate:isa];

  v33 = FLUserInfoPropertyDontDisplayDate;
  *(v0 + 3432) = FLUserInfoPropertyDontDisplayDate;
  type metadata accessor for FLUserInfoProperty(0);
  sub_1004F85E4(&qword_10077E8C8, type metadata accessor for FLUserInfoProperty);
  v34 = v33;
  AnyHashable.init<A>(_:)();
  *(v0 + 3360) = &type metadata for Bool;
  *(v0 + 3336) = 1;
  v35 = [v32 userInfo];
  if (!v35)
  {
LABEL_24:
    __break(1u);
  }

  v36 = v35;
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001F6498((v0 + 3336), (v0 + 3368));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005C2020((v0 + 3368), v0 + 3296, isUniquelyReferenced_nonNull_native);
  sub_10039DCC4(v0 + 3296);
  if (v37)
  {
    v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v39.super.isa = 0;
  }

  [*(v0 + 4448) setUserInfo:v39.super.isa];

  v40 = [objc_allocWithZone(NSUserDefaults) init];
  *(v0 + 4544) = v40;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 integerForKey:v41];

  if (v42 >= 1)
  {
    v43 = *(v0 + 3576);
    v44 = *(v0 + 3568);
    v65 = *(v0 + 3552);
    v67 = v27;
    v45 = *(v0 + 3544);
    v46 = *(v0 + 3528);
    v47 = *(v0 + 3520);
    v48 = *(v0 + 3504);
    static Calendar.current.getter();
    v61(v45, enum case for Calendar.Component.second(_:), v46);
    Date.init()();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v31(v47, v48);
    v63(v45, v46);
    v60(v44, v65);
    if (v67(v43, 1, v48) == 1)
    {
      v49 = 0;
    }

    else
    {
      v50 = *(v0 + 3576);
      v51 = *(v0 + 3504);
      v49 = Date._bridgeToObjectiveC()().super.isa;
      v31(v50, v51);
    }

    [*(v0 + 4448) setExpirationDate:v49];
  }

  v52 = *(v0 + 3832);
  v53 = *(v0 + 3752);
  v54 = *(v0 + 3736);
  (*(v0 + 3816))(v53, *(v0 + 956), v54);
  v55 = isFeatureEnabled(_:)();
  v52(v53, v54);
  if (v55)
  {

    sub_100222FFC(v0 + 2800);

    *(v0 + 2296) = 26;
    *(v0 + 2304) = 0u;
    *(v0 + 2320) = 0u;
    *(v0 + 2336) = 0u;
    *(v0 + 2352) = 0;
    *(v0 + 2360) = 41;
    v56 = swift_task_alloc();
    *(v0 + 4552) = v56;
    *v56 = v0;
    v56[1] = sub_1004F5FCC;
    v57 = v0 + 2296;
  }

  else
  {
    v58 = swift_task_alloc();
    *(v0 + 4664) = v58;
    *v58 = v0;
    v58[1] = sub_1004F6D38;
    v57 = v0 + 2152;
  }

  return sub_1006600F0(v57);
}

uint64_t sub_1004F5FCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4560) = a1;
  *(v3 + 4568) = a2;

  return _swift_task_switch(sub_1004F60FC, 0, 0);
}

uint64_t sub_1004F60FC()
{
  v1 = *(v0 + 4448);
  v2 = *(v0 + 1065);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  [v1 setDisplayStyle:16];
  [v1 setGroupIdentifier:FLGroupIdentifierNoGroup];
  v4 = *(v0 + 3808);
  if (v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *(v0 + 2368) = *(v0 + 3800);
  *(v0 + 2376) = v4;
  *(v0 + 2384) = *(v0 + 3248);
  *(v0 + 2400) = *(v0 + 3264);
  *(v0 + 2416) = *(v0 + 3280);
  *(v0 + 2432) = v5;

  v6 = swift_task_alloc();
  *(v0 + 4576) = v6;
  *v6 = v0;
  v6[1] = sub_1004F627C;

  return sub_1006600F0(v0 + 2368);
}

uint64_t sub_1004F627C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4584) = a1;
  *(v3 + 4592) = a2;

  return _swift_task_switch(sub_1004F63CC, 0, 0);
}

uint64_t sub_1004F63CC()
{
  v1 = *(v0 + 4448);
  v2 = String._bridgeToObjectiveC()();

  [v1 setInformativeText:v2];

  *(v0 + 4600) = [objc_allocWithZone(FLFollowUpAction) init];
  *(v0 + 2440) = 4;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = 0u;
  *(v0 + 2480) = 0u;
  *(v0 + 2496) = 0;
  *(v0 + 2504) = 41;
  v3 = swift_task_alloc();
  *(v0 + 4608) = v3;
  *v3 = v0;
  v3[1] = sub_1004F6510;

  return sub_1006600F0(v0 + 2440);
}

uint64_t sub_1004F6510(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4616) = a1;
  *(v3 + 4624) = a2;

  return _swift_task_switch(sub_1004F6640, 0, 0);
}

uint64_t sub_1004F6640()
{
  v1 = *(v0 + 4600);
  v2 = String._bridgeToObjectiveC()();

  [v1 setLabel:v2];

  *(v0 + 4632) = [objc_allocWithZone(FLFollowUpAction) init];
  *(v0 + 2512) = 10;
  *(v0 + 2520) = 0u;
  *(v0 + 2536) = 0u;
  *(v0 + 2552) = 0u;
  *(v0 + 2568) = 0;
  *(v0 + 2576) = 41;
  v3 = swift_task_alloc();
  *(v0 + 4640) = v3;
  *v3 = v0;
  v3[1] = sub_1004F6784;

  return sub_1006600F0(v0 + 2512);
}

uint64_t sub_1004F6784(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4648) = a1;
  *(v3 + 4656) = a2;

  return _swift_task_switch(sub_1004F68B4, 0, 0);
}

uint64_t sub_1004F68B4()
{
  v1 = v0[579];
  v2 = v0[575];
  v3 = v0[556];
  v4 = String._bridgeToObjectiveC()();

  [v1 setLabel:v4];

  [v1 setDestructive:1];
  sub_1001F0C48(&qword_10077E640);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006B00B0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  sub_100006190(0, &qword_1007860B8);
  v6 = v2;
  v7 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setActions:isa];

  v9 = v0[500];
  if (v9)
  {
    v10 = v0[556];
    v11 = v0[454];
    v12 = v0[453];
    v13 = v0[452];
    v0[82] = v0;
    v0[87] = v0 + 954;
    v0[83] = sub_1004F76A4;
    swift_continuation_init();
    v0[383] = v13;
    v14 = sub_10020A748(v0 + 380);
    v15 = v10;
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v12 + 32))(v14, v11, v13);
    v0[376] = _NSConcreteStackBlock;
    v0[377] = 1107296256;
    v0[378] = sub_10041DC48;
    v0[379] = &unk_1007680A8;
    [v9 postFollowUpItem:v15 completion:?];
    (*(v12 + 8))(v14, v13);

    return _swift_continuation_await(v0 + 82);
  }

  else
  {
    v16 = v0[568];
    v17 = v0[567];
    v18 = v0[556];
    v19 = v0[555];
    v20 = v0[554];
    (*(v0[450] + 8))(v0[451], v0[449]);
    sub_100007158(v20, v19);

    v21 = v0[1];

    return v21(1);
  }
}

uint64_t sub_1004F6D38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4672) = a1;
  *(v3 + 4680) = a2;

  return _swift_task_switch(sub_1004F6E68, 0, 0);
}

uint64_t sub_1004F6E68()
{
  v1 = *(v0 + 4448);
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2];

  [v1 setDisplayStyle:18];
  v3 = swift_task_alloc();
  *(v0 + 4688) = v3;
  *v3 = v0;
  v3[1] = sub_1004F6F74;

  return sub_1006600F0(v0 + 2224);
}

uint64_t sub_1004F6F74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 4696) = a1;
  *(v3 + 4704) = a2;

  return _swift_task_switch(sub_1004F70A4, 0, 0);
}

uint64_t sub_1004F70A4()
{
  v1 = *(v0 + 4512);
  v2 = *(v0 + 3704);
  v3 = *(v0 + 3664);
  (*(v0 + 4496))(v3, 1, 1, v2);
  v4 = String._bridgeToObjectiveC()();
  if (v1(v3, 1, v2) == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 3712);
    v8 = *(v0 + 3704);
    v9 = *(v0 + 3664);
    URL._bridgeToObjectiveC()(v5);
    v6 = v10;
    (*(v7 + 8))(v9, v8);
  }

  v11 = [*(v0 + 4528) actionWithLabel:v4 url:v6];

  if (!v11)
  {
    __break(1u);
  }

  v29 = *(v0 + 4448);

  sub_100222FFC(v0 + 2800);

  sub_1001F0C48(&qword_10077E640);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006A2450;
  *(v12 + 32) = v11;
  sub_100006190(0, &qword_1007860B8);
  v13 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 setActions:isa];

  v15 = *(v0 + 4000);
  if (v15)
  {
    v16 = *(v0 + 4448);
    v17 = *(v0 + 3632);
    v18 = *(v0 + 3624);
    v19 = *(v0 + 3616);
    *(v0 + 656) = v0;
    *(v0 + 696) = v0 + 954;
    *(v0 + 664) = sub_1004F76A4;
    swift_continuation_init();
    *(v0 + 3064) = v19;
    v20 = sub_10020A748((v0 + 3040));
    v21 = v16;
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v18 + 32))(v20, v17, v19);
    *(v0 + 3008) = _NSConcreteStackBlock;
    *(v0 + 3016) = 1107296256;
    *(v0 + 3024) = sub_10041DC48;
    *(v0 + 3032) = &unk_1007680A8;
    [v15 postFollowUpItem:v21 completion:?];
    (*(v18 + 8))(v20, v19);

    return _swift_continuation_await(v0 + 656);
  }

  else
  {
    v22 = *(v0 + 4544);
    v23 = *(v0 + 4536);
    v24 = *(v0 + 4448);
    v25 = *(v0 + 4440);
    v26 = *(v0 + 4432);
    (*(*(v0 + 3600) + 8))(*(v0 + 3608), *(v0 + 3592));
    sub_100007158(v26, v25);

    v27 = *(v0 + 8);

    return v27(1);
  }
}

uint64_t sub_1004F76A4()
{
  v1 = *(*v0 + 688);
  *(*v0 + 4712) = v1;
  if (v1)
  {
    v2 = sub_1004F8214;
  }

  else
  {
    v2 = sub_1004F77E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F77E0()
{
  v1 = *(v0 + 4536);
  v2 = *(v0 + 4448);
  v3 = *(v0 + 4440);
  v4 = *(v0 + 4432);
  v5 = *(v0 + 4000);
  v6 = *(v0 + 3608);
  v7 = *(v0 + 3600);
  v8 = *(v0 + 3592);

  sub_100007158(v4, v3);
  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_1004F79DC()
{
  v1 = *(v0 + 3984);
  v2 = *(v0 + 3976);
  v3 = *(v0 + 3720);
  v4 = *(v0 + 3712);
  v5 = *(v0 + 3704);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v6 = objc_allocWithZone(FLFollowUpController);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithClientIdentifier:v7];
  *(v0 + 4000) = v8;

  if (!v8)
  {
LABEL_7:
    *(v0 + 4032) = 0;
    *(v0 + 1072) = 3;
    *(v0 + 1128) = 0;
    *(v0 + 1080) = 0u;
    *(v0 + 1096) = 0u;
    *(v0 + 1112) = 0u;
    *(v0 + 1136) = 41;
    v20 = swift_task_alloc();
    *(v0 + 4040) = v20;
    *v20 = v0;
    v20[1] = sub_1004F3250;

    return sub_1006600F0(v0 + 1072);
  }

  *(v0 + 3440) = 0;
  v9 = [v8 pendingFollowUpItems:v0 + 3440];
  v10 = *(v0 + 3440);
  if (!v9)
  {
    v19 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_7;
  }

  v11 = v9;
  v12 = *(v0 + 3456);
  sub_100006190(0, &qword_1007860C0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v10;

  v15 = swift_task_alloc();
  v15[2] = v12;
  v16 = sub_1004F030C(sub_1004F8634, v15, v13);
  *(v0 + 4008) = 0;

  if (v16 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22 < 2)
    {
      goto LABEL_5;
    }

    v17 = v22;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v23);
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17;
    if (v17 < 2)
    {
LABEL_5:

      goto LABEL_7;
    }
  }

  v24 = v17 - 1;
  if (v18 < v24)
  {
    goto LABEL_40;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v25 = 0;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
    }

    while (v24 != v26);
  }

  if (v16 >> 62)
  {

    _CocoaArrayWrapper.subscript.getter();
    v28 = v29;
    v27 = v30;
    v24 = v31 >> 1;
  }

  else
  {
    v27 = 0;
    v28 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  swift_unknownObjectRetain();

  v32 = v24 - v27;
  if (__OFSUB__(v24, v27))
  {
    goto LABEL_41;
  }

  v50 = v8;
  if (!v32)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_36;
  }

  sub_10052640C(0, v32 & ~(v32 >> 63), 0);
  swift_unknownObjectRelease();
  if (v32 < 0)
  {
LABEL_42:
    __break(1u);
  }

  if (v24 <= v27)
  {
    v33 = v27;
  }

  else
  {
    v33 = v24;
  }

  v34 = v33 - v27;
  v35 = (v28 + 8 * v27);
  do
  {
    if (!v34)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v36 = *v35;
    v37 = [v36 uniqueIdentifier];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {

      v39 = 0;
      v41 = 0;
    }

    v43 = _swiftEmptyArrayStorage[2];
    v42 = _swiftEmptyArrayStorage[3];
    if (v43 >= v42 >> 1)
    {
      sub_10052640C((v42 > 1), v43 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v43 + 1;
    v44 = &_swiftEmptyArrayStorage[2 * v43];
    v44[4] = v39;
    v44[5] = v41;
    --v34;
    ++v35;
    --v32;
  }

  while (v32);
  swift_unknownObjectRelease();
LABEL_36:
  v45 = *(v0 + 3632);
  v46 = *(v0 + 3624);
  v47 = *(v0 + 3616);
  v51 = v50;
  sub_10023585C(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 4016) = isa;

  *(v0 + 720) = v0;
  *(v0 + 760) = v0 + 955;
  *(v0 + 728) = sub_1004F3014;
  swift_continuation_init();
  *(v0 + 3128) = v47;
  v49 = sub_10020A748((v0 + 3104));
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v46 + 32))(v49, v45, v47);
  *(v0 + 3072) = _NSConcreteStackBlock;
  *(v0 + 3080) = 1107296256;
  *(v0 + 3088) = sub_10041DC48;
  *(v0 + 3096) = &unk_1007680D0;
  [v51 clearPendingFollowUpItemsWithUniqueIdentifiers:isa completion:v0 + 3072];
  (*(v46 + 8))(v49, v47);
  v23 = v0 + 720;

  return _swift_continuation_await(v23);
}

uint64_t sub_1004F804C()
{
  v1 = v0[502];
  v2 = v0[500];
  swift_willThrow();

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_1004F8214()
{
  v1 = v0[568];
  v2 = v0[567];
  v3 = v0[556];
  v4 = v0[555];
  v5 = v0[554];
  v6 = v0[500];
  v7 = v0[450];
  v10 = v0[449];
  v11 = v0[451];
  swift_willThrow();

  sub_100007158(v5, v4);
  (*(v7 + 8))(v11, v10);

  v8 = v0[1];

  return v8(1);
}

uint64_t type metadata accessor for EnsureAllowedDeveloperTask()
{
  result = qword_100786120;
  if (!qword_100786120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F8470(id *a1, uint64_t a2)
{
  v3 = [*a1 uniqueIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == *(a2 + 32) && v7 == *(a2 + 40))
    {

      v10 = 0;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = v9 ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_1004F8524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnsureAllowedDeveloperTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F8588(uint64_t a1)
{
  v2 = type metadata accessor for EnsureAllowedDeveloperTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F85E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F867C()
{
  result = type metadata accessor for MediaAPIMetadata();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ApprovedDeveloperStore();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LogKey();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LocalizationJetPack();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004F8754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1002122FC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000032A8(v11, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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

uint64_t sub_1004F8A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1002122FC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000032A8(v11, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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

uint64_t sub_1004F8CAC(Swift::UInt a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_presentedAlert;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_1005221B4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    return CFUserNotificationCancel(v8);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    sub_1003F2AF4(&v10, a1);
    return swift_endAccess();
  }
}

uint64_t sub_1004F8D6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004F8D88, a2, 0);
}

uint64_t sub_1004F8D88()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 32) = qword_100786178;

  return _swift_task_switch(sub_1004F8E20, v1, 0);
}

uint64_t sub_1004F8E20()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1004FE810(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1004F8F58;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1004F8F58()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1004F9084, v1, 0);
}

uint64_t sub_1004F9084()
{
  v1 = *(v0 + 24);
  *(v0 + 57) = *(v0 + 56);
  return _swift_task_switch(sub_1004F90A8, v1, 0);
}

uint64_t sub_1004F90CC(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_100270180(0, 0, v4, 0, 0, &unk_1006B0310, v6);

  return sub_1000032A8(v4, &unk_100780380);
}

uint64_t sub_1004F9228()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 24) = qword_100786178;

  return _swift_task_switch(sub_1004F92C0, v1, 0);
}

uint64_t sub_1004F92C0()
{
  sub_1004F8CAC(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F9320(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 255)
  {
    v7 = *(v1 + 8);

    return v7(0, 0);
  }

  else
  {
    v3 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v3;
    v4 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v4;
    *(v1 + 80) = v2;
    v5 = swift_task_alloc();
    *(v1 + 88) = v5;
    *v5 = v1;
    v5[1] = sub_1004F9410;

    return sub_1006600F0(v1 + 16);
  }
}

uint64_t sub_1004F9410(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1004F9514()
{
  v1 = v0;
  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A4050;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = inited;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  v5 = v0[14];
  v4 = v0[15];
  v3[8] = &type metadata for String;
  v3[5] = v5;
  v3[6] = v4;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3[9] = kCFUserNotificationAlertMessageKey;
  v6 = v0[16];
  v7 = v0[17];
  v3[13] = &type metadata for String;
  v3[10] = v6;
  v3[11] = v7;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3[14] = kCFUserNotificationDefaultButtonTitleKey;
  v8 = v1[18];
  v9 = v1[19];
  v3[18] = &type metadata for String;
  v3[15] = v8;
  v3[16] = v9;

  v10 = kCFUserNotificationDefaultButtonTitleKey;
  v11 = kCFUserNotificationAlertMessageKey;
  v12 = kCFUserNotificationAlertHeaderKey;
  v13 = sub_1005289DC(v3);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  v30 = v13;
  v14 = v1[21];
  if (!v14)
  {
    goto LABEL_9;
  }

  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v1[20];
  v29 = &type metadata for String;
  *&v28 = v15;
  *(&v28 + 1) = v14;
  sub_1001F6498(&v28, v27);
  v16 = kCFUserNotificationAlternateButtonTitleKey;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005C2BB4(v27, v16, isUniquelyReferenced_nonNull_native);

  v30 = v13;
  if (*(v1 + 176) == 1)
  {
    v18 = SBUserNotificationAlternateButtonPresentationStyleKey;
    if (!SBUserNotificationAlternateButtonPresentationStyleKey)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v29 = &type metadata for UInt32;
    LODWORD(v28) = 1;
    sub_1001F6498(&v28, v27);
    v19 = v18;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1005C2BB4(v27, v19, v20);

    v30 = v13;
  }

LABEL_9:
  if (*(v1 + 177) != 1)
  {
    return;
  }

  v21 = SBUserNotificationPendInSetupIfNotAllowedKey;
  if (!SBUserNotificationPendInSetupIfNotAllowedKey)
  {
    goto LABEL_19;
  }

  if (kCFBooleanTrue)
  {
    type metadata accessor for CFBoolean(0);
    v29 = v22;
    *&v28 = kCFBooleanTrue;
    sub_1001F6498(&v28, v27);
    v23 = v21;
    v24 = kCFBooleanTrue;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1005C2BB4(v27, v23, v25);
  }

  else
  {
    v26 = SBUserNotificationPendInSetupIfNotAllowedKey;
    sub_1004FB5B4(v26, &v28);

    sub_1000032A8(&v28, &qword_100783A30);
  }
}

uint64_t sub_1004F97F8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004F986C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F0C48(&qword_1007862B8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1001F0C48(&qword_100786368);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v5 + 48);
  *v7 = a3;
  v13 = sub_1001F0C48(&qword_100786370);
  (*(*(v13 - 8) + 16))(&v7[v12], a1, v13);

  sub_1001F0C48(&qword_100786378);
  AsyncStream.Continuation.yield(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004F9A5C()
{
  type metadata accessor for SystemAlertCenter();
  swift_allocObject();
  result = sub_1004F9A9C();
  qword_100786178 = result;
  return result;
}

uint64_t sub_1004F9A9C()
{
  v1 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v1 - 8);
  v20 = &v19 - v2;
  v3 = sub_1001F0C48(&qword_100786380);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_1001F0C48(&qword_100786378);
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - v8;
  v10 = sub_1001F0C48(&qword_100786388);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_cancelledAlerts) = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_presentedAlert;
  *(v0 + v14) = sub_100528574(&_swiftEmptyArrayStorage);
  sub_1001F0C48(&qword_1007862B8);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_alertStream, v13, v10);
  (*(v7 + 32))(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_alertStreamContinuation, v9, v19);
  v15 = type metadata accessor for TaskPriority();
  v16 = v20;
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v0;

  sub_1004F8754(0xD000000000000011, 0x80000001006B0130, v16, &unk_1006B0288, v17);

  sub_1000032A8(v16, &unk_100780380);
  return v0;
}

uint64_t sub_1004F9E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[11] = a4;
  v4[12] = *a4;
  v5 = sub_1001F0C48(&qword_100786370);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  sub_1001F0C48(&qword_100786390);
  v4[16] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_100786398);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1004F9FF4, 0, 0);
}

uint64_t sub_1004F9FF4()
{
  sub_1001F0C48(&qword_100786388);
  AsyncStream.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_presentedAlert;
  v0[20] = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_cancelledAlerts;
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1004FA0E4;
  v3 = v0[16];
  v4 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v3, 0, 0, v4);
}

uint64_t sub_1004FA0E4()
{

  return _swift_task_switch(sub_1004FA1E0, 0, 0);
}

uint64_t sub_1004FA1E0()
{
  v1 = v0[16];
  v2 = sub_1001F0C48(&qword_1007862B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[11];
    v0[23] = *v1;
    (*(v6 + 32))(v5, &v1[*(v2 + 48)], v7);

    return _swift_task_switch(sub_1004FA338, v8, 0);
  }
}

uint64_t sub_1004FA338()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = sub_1004FD194(v1);
  swift_endAccess();
  if (v2)
  {
    v3 = v0 + 219;
LABEL_3:
    *v3 = 2;
    CheckedContinuation.resume(returning:)();

    return _swift_task_switch(sub_1004FA74C, 0, 0);
  }

  v4 = sub_1004FE3A0();
  v0[24] = v4;
  if (!v4)
  {
    v3 = v0 + 27;
    goto LABEL_3;
  }

  v5 = v4;
  v6 = v0[23];
  v7 = v0[11];
  v8 = v0[12];
  swift_beginAccess();
  v9 = v5;
  sub_1005B7F04(v5, v6);
  swift_endAccess();
  v10 = sub_1004FE810(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_1004FA55C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 217, v7, v10, 0xD00000000000001DLL, 0x80000001006CCA00, sub_1004FE4A0, v11, &type metadata for SystemAlert.Response);
}

uint64_t sub_1004FA55C()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1004FA688, v1, 0);
}

uint64_t sub_1004FA688()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  *(v0 + 218) = *(v0 + 217);
  CheckedContinuation.resume(returning:)();
  swift_beginAccess();
  sub_1005B7F04(0, v1);
  swift_endAccess();

  return _swift_task_switch(sub_1004FA74C, 0, 0);
}

uint64_t sub_1004FA74C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1004FA0E4;
  v5 = v0[16];
  v6 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_1004FA820()
{
  v6[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v6[0] - 8);
  __chkstk_darwin(v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_1001F0FB0();
  static DispatchQoS.unspecified.getter();
  v6[1] = _swiftEmptyArrayStorage;
  sub_1004FE810(&qword_1007863A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F0C48(&qword_1007863A8);
  sub_1004FE704(&qword_1007863B0, &qword_1007863A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6[0]);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100786180 = result;
  return result;
}

uint64_t sub_1004FAA74(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&qword_100786370);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  if (qword_10077E548 != -1)
  {
    swift_once();
  }

  v23[1] = qword_100786180;
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = v24;
  v19 = v25;
  *(v17 + v16) = v25;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1004FE4A8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100495FFC;
  aBlock[3] = &unk_100768250;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1004FE810(&qword_100780400, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F0C48(&qword_100780408);
  sub_1004FE704(&qword_100780410, &qword_100780408);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_1004FAE50(uint64_t a1, __CFUserNotification *a2)
{
  sub_1004FE554(a2);
  sub_1001F0C48(&qword_100786370);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004FAEA4()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_alertStream;
  v2 = sub_1001F0C48(&qword_100786388);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_8AB9186C323457347E751CF62AA7B26017SystemAlertCenter_alertStreamContinuation;
  v4 = sub_1001F0C48(&qword_100786378);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SystemAlertCenter()
{
  result = qword_1007862A0;
  if (!qword_1007862A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004FAFE8()
{
  sub_1004FB104(319, &qword_1007862B0, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    sub_1004FB104(319, &unk_1007862C0, &type metadata accessor for AsyncStream.Continuation);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004FB104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1001F76D0(&qword_1007862B8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1004FB184()
{
  result = qword_100786360;
  if (!qword_100786360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786360);
  }

  return result;
}

uint64_t sub_1004FB1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1005225DC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C47C4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ProgressCache.Progress();
    v20 = *(v13 - 8);
    sub_1004FE90C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ProgressCache.Progress);
    sub_1005C0358(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ProgressCache.Progress();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1004FB374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10052213C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1005C5170();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1005C09C8(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1004FB40C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100522E8C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C56F8();
      v9 = v20;
    }

    v10 = (*(v9 + 48) + 48 * v7);
    v12 = v10[1];
    v11 = v10[2];
    v19[0] = *v10;
    v19[1] = v12;
    v19[2] = v11;
    sub_1002FAFB0(v19);
    v13 = *(v9 + 56);
    v14 = type metadata accessor for RegisteredXPCClient();
    v15 = *(v14 - 8);
    sub_1004FE90C(v13 + *(v15 + 72) * v7, a2, type metadata accessor for RegisteredXPCClient);
    sub_1005C0B94(v7, v9);
    *v3 = v9;
    return (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v17 = type metadata accessor for RegisteredXPCClient();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

double sub_1004FB5B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10052221C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C66B8();
      v9 = v11;
    }

    sub_1001F6498((*(v9 + 56) + 32 * v7), a2);
    sub_1005C0E28(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1004FB654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10052213C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C6E3C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1005C1680(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1004FB7C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10052213C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C70EC();
      v10 = v12;
    }

    sub_1001F6498((*(v10 + 56) + 32 * v8), a3);
    sub_1005C069C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_1004FB868()
{
  v1 = v0;
  sub_1001F0C48(&qword_10077E928);
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

void *sub_1004FB9B8()
{
  v1 = v0;
  sub_1001F0C48(&unk_100783A70);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1004FBAF8()
{
  v1 = v0;
  sub_1001F0C48(&qword_100783A60);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1004FBC54()
{
  v1 = v0;
  sub_1001F0C48(&qword_100783A68);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1001DFDA4(v19, v20, v21);
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

void *sub_1004FBDBC()
{
  v1 = v0;
  sub_1001F0C48(&qword_10077E940);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_1004FBF50()
{
  v1 = v0;
  sub_1001F0C48(&qword_100783A90);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
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

void *sub_1004FC0B4()
{
  v1 = v0;
  sub_1001F0C48(&qword_10077E948);
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1001F71F4(v27, &v26);
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

void *sub_1004FC238()
{
  v1 = v0;
  sub_1001F0C48(&unk_100783A80);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1004FC378()
{
  v1 = v0;
  sub_1001F0C48(&unk_100783A10);
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

void *sub_1004FC4C8()
{
  v1 = v0;
  sub_1001F0C48(&qword_100783AB0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1004FC630(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1001F0C48(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1004FC868()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadRequest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&unk_100783AD0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10031DF08(*(v6 + 48) + v21, v5);
        result = sub_1004FE90C(v5, *(v8 + 48) + v21, type metadata accessor for DownloadRequest);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1004FCA60()
{
  v1 = v0;
  sub_1001F0C48(&qword_100783AB8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1004FCBA0()
{
  v1 = v0;
  v2 = *v0;
  Hasher.init(_seed:)();
  StoreAppIdentifier.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(v2 + 48) + 24 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    sub_1001DFDA4(*v7, v9, v10);
    v11 = static StoreAppIdentifier.== infix(_:_:)();
    sub_1001DFEBC(v8, v9, v10);
    if (v11)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004FBC54();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 24 * v5);
  sub_1004FD5F4(v5);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_1004FCD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MessageRegistration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1004FE810(&qword_100783A98, &type metadata accessor for MessageRegistration);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1004FE810(&qword_100783AA0, &type metadata accessor for MessageRegistration);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1004FC630(&type metadata accessor for MessageRegistration, &qword_100783AA8);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1004FD830(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1004FD00C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1004FD49C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004FC378();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1004FDB38(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1004FD194(Swift::UInt a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004FC4C8();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1004FDCD8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1004FD298@<X0>(Swift::UInt64 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DownloadRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3;
  Hasher.init(_seed:)();
  v11 = *a1;
  Hasher._combine(_:)(*a1);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v3;
    v25 = v6;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v7 + 72);
    while (1)
    {
      v17 = v16 * v14;
      sub_10031DF08(*(v10 + 48) + v16 * v14, v9);
      v18 = *v9;
      sub_100272F5C(v9);
      if (v18 == v11)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v19 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v20 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v27 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1004FC868();
      v22 = v27;
    }

    a2 = v26;
    sub_1004FE90C(*(v22 + 48) + v17, v26, type metadata accessor for DownloadRequest);
    sub_1004FDE80(v14);
    v19 = 0;
    *v20 = v27;
LABEL_10:
    v6 = v25;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a2, v19, 1, v6);
}

uint64_t sub_1004FD49C()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1003F3178(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1004FDB38(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004FD5F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v28 = v4;
      do
      {
        v10 = 24 * v6;
        v11 = v3;
        v12 = *(v3 + 48) + 24 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = v2;
        v16 = *(v12 + 16);
        v17 = v9;
        Hasher.init(_seed:)();
        sub_1001DFDA4(v13, v14, v16);
        StoreAppIdentifier.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = v16;
        v2 = v15;
        sub_1001DFEBC(v13, v14, v19);
        v9 = v17;
        v20 = v18 & v7;
        if (v15 >= v17)
        {
          if (v20 < v17)
          {
            v4 = v28;
            v3 = v11;
          }

          else
          {
            v4 = v28;
            v3 = v11;
            if (v2 >= v20)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v28;
          v3 = v11;
          if (v20 >= v9 || v2 >= v20)
          {
LABEL_12:
            v21 = *(v3 + 48);
            v22 = v21 + 24 * v2;
            v23 = (v21 + v10);
            if (24 * v2 < v10 || v22 >= v23 + 24 || v2 != v6)
            {
              v24 = *v23;
              *(v22 + 16) = *(v23 + 2);
              *v22 = v24;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1004FD830(int64_t a1)
{
  v3 = type metadata accessor for MessageRegistration();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1004FE810(&qword_100783A98, &type metadata accessor for MessageRegistration);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1004FDB38(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1004FDCD8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1004FDE80(unint64_t a1)
{
  v22 = type metadata accessor for DownloadRequest();
  v3 = *(v22 - 8);
  result = __chkstk_darwin(v22);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_10031DF08(*(v7 + 48) + v14 * v10, v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*v6);
        v16 = Hasher._finalize()();
        sub_100272F5C(v6);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if ((v14 * a1) < v15 || *(v7 + 48) + v14 * a1 >= *(v7 + 48) + v15 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1004FE0E4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1004FE1D8;

  return v5(v2 + 32);
}

uint64_t sub_1004FE1D8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1004FE2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004F9E60(a1, v4, v5, v6);
}

CFUserNotificationRef sub_1004FE3A0()
{
  error = 0;
  sub_1004F9514();
  type metadata accessor for CFString(0);
  sub_1004FE810(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v1 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  if (v1 && error)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1004FE4A8()
{
  v1 = *(sub_1001F0C48(&qword_100786370) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004FAE50(v0 + v2, v3);
}

uint64_t sub_1004FE554(__CFUserNotification *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&responseFlags - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10077E548 != -1)
  {
    swift_once();
  }

  v6 = qword_100786180;
  *v5 = qword_100786180;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  responseFlags = 3;
  if (CFUserNotificationReceiveResponse(a1, 0.0, &responseFlags))
  {
    return 2;
  }

  if ((responseFlags & 3) == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if ((responseFlags & 3) != 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004FE704(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FE758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_1004FE0E4(a1, v4);
}

uint64_t sub_1004FE810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004FE858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1004F9208(a1, v4, v5, v6);
}

uint64_t sub_1004FE90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for SystemAlertHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemAlertHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1004FEA08()
{
  result = qword_1007863B8;
  if (!qword_1007863B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007863B8);
  }

  return result;
}

__n128 sub_1004FEA60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1004FEA8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 111))
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

uint64_t sub_1004FEAD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 110) = 0;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 111) = 1;
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

    *(result + 111) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1004FEB48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100526304(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10020A6D0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100526304((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1004FEC5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_10052668C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10020A6D0(i, v9);
      sub_1001F0C48(&qword_1007870C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10052668C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1004FED84(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = MobileInstallationCheckCapabilitiesMatch();

  if (v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return &off_1007573D0;
}

uint64_t sub_1004FF1E8()
{
  v0 = type metadata accessor for Logger();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v3 = &v20 - v2;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL.homeDirectory.getter();
  sub_1001F0C48(&qword_10077E920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  v12 = NSURLVolumeAvailableCapacityKey;
  sub_1001F5C78(inited);
  swift_setDeallocating();
  sub_1001F643C(inited + 32);
  URL.resourceValues(forKeys:)();

  v13 = URLResourceValues.volumeAvailableCapacity.getter();
  if (v14)
  {
    static Logger.daemon.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get available capacity", v17, 2u);
    }

    (*(v20 + 8))(v3, v21);
    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v22);
    return 0;
  }

  else
  {
    v19 = v13;
    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v22);
    return v19;
  }
}

void sub_1004FF660(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() sharedManager];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 isSharedIPad];

  v6 = MobileGestalt_get_current_device();
  if (!v6)
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v1 = v6;
  v7 = MobileGestalt_copy_compatibleAppVariants_obj();
  if (!v7 || (v8 = v7, v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v8, v10 = sub_1004FEB48(v9), , !v10))
  {
LABEL_15:

    goto LABEL_17;
  }

  if (!v10[2])
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = v10[4];
  v11 = v10[5];

  v13 = MobileGestalt_copy_deviceClass_obj();
  if (!v13)
  {

    goto LABEL_17;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = MobileGestalt_copy_buildVersion_obj();
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v36 = v17;
  v37 = v15;
  v38 = v12;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = MobileGestalt_copy_productVersion_obj();
  if (v22)
  {
    v23 = v22;
    v24 = v5;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v24 = v5;
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  sub_10051BCFC(v25, v27, v39);
  mainScreenWidth = MobileGestalt_get_mainScreenWidth();
  mainScreenHeight = MobileGestalt_get_mainScreenHeight();
  MobileGestalt_get_deviceCornerRadius();
  v31 = v30;
  iPadCapability = MobileGestalt_get_iPadCapability();
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  v34 = v39[1];
  *(a1 + 56) = v39[0];
  *a1 = v38;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v35;
  *(a1 + 32) = v21;
  *(a1 + 40) = v37;
  *(a1 + 48) = v36;
  *(a1 + 72) = v34;
  *(a1 + 88) = v40;
  *(a1 + 96) = mainScreenWidth;
  *(a1 + 100) = mainScreenHeight;
  *(a1 + 104) = v31;
  *(a1 + 108) = iPadCapability;
  *(a1 + 109) = deviceClassNumber == 1;
  *(a1 + 110) = v24;
}

void *sub_1004FF904()
{
  v0 = sub_1001F0C48(qword_100781838);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Platform();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  static Platform.iOS.getter();
  v11 = *(v1 + 56);
  (*(v5 + 32))(v3, v10, v4);
  v3[v11] = 1;
  static Platform.macOS.getter();
  sub_1004FFB5C();
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v10 & 1) != 0 || (static Platform.visionOS.getter(), v13 = dispatch thunk of static Equatable.== infix(_:_:)(), v12(v8, v4), (v13))
  {
    sub_1001F0C48(&qword_1007863C8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10069E680;
    static Platform.iOS.getter();
    v12(v3, v4);
  }

  else
  {
    sub_1000032A8(v3, qword_100781838);
    return _swiftEmptyArrayStorage;
  }

  return v14;
}

unint64_t sub_1004FFB5C()
{
  result = qword_100780F10;
  if (!qword_100780F10)
  {
    type metadata accessor for Platform();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780F10);
  }

  return result;
}

void *sub_1004FFBB4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = MobileInstallationCheckCapabilitiesMatch();

  if (v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return &off_100757970;
}

uint64_t sub_100500028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_1001F0C48(&qword_100786428);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1001F0C48(&qword_100786720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = sub_1001F0C48(&qword_100786728);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStreamContinuation, v8);
  v16 = *(v5 + 48);
  v17 = sub_1001F0C48(&qword_1007866E0);
  (*(*(v17 - 8) + 16))(v7, a1, v17);
  sub_100509520(v20, &v7[v16]);
  AsyncStream.Continuation.yield(_:)();
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1005002C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 120) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_1001F0C48(&unk_100786710);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1005003C4, v5, 0);
}

uint64_t sub_1005003C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = sub_10050935C(&unk_100786700, type metadata accessor for AppStorePurchaseQueue);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = sub_1001F0C48(&qword_100784FE0);
  *v5 = v0;
  v5[1] = sub_10050050C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v3, 0xD000000000000016, 0x80000001006CC530, sub_1004C1F7C, v4, v6);
}

uint64_t sub_10050050C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100500980;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100500634;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100500634()
{
  v27 = v0;
  v1 = *(v0 + 88);
  sub_10039CFA8(*(v0 + 32), *(v0 + 40), *(v0 + 120) & 1, *(v0 + 16), v1);

  v2 = type metadata accessor for AppStoreItem(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 88);
  if (v3 == 1)
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 120);
    sub_1000032A8(v4, &unk_100786710);
    static Logger.vpp.getter();
    sub_1001DFDA4(v6, v5, v7 & 1);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1001DFEBC(v6, v5, v7 & 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    if (v10)
    {
      v25 = *(v0 + 80);
      v24 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v14 = 138412546;
      v17 = sub_100625FA0();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2082;
      v18 = StoreAppIdentifier.description.getter();
      v20 = sub_1002346CC(v18, v19, &v26);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Missing expected metadata for %{public}s", v14, 0x16u);
      sub_1000032A8(v15, &qword_10077F920);

      sub_10000710C(v16);

      (*(v12 + 8))(v25, v24);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    type metadata accessor for InternalError();
    sub_10050935C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v21 = *(v0 + 8);
  }

  else
  {
    sub_1005094B8(v4, *(v0 + 24), type metadata accessor for AppStoreItem);

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_100500980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005009F4()
{
  v0 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v0 - 8);
  v40 = &v31 - v1;
  v2 = sub_1001F0C48(&qword_100786740);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_1001F0C48(&qword_100786720);
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v31 - v6;
  v34 = sub_1001F0C48(&qword_1007866F0);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v31 - v7;
  v8 = type metadata accessor for ClientInfo();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for BagProfile();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for BagService();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BagService.AccountSource();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  swift_defaultActor_initialize();
  static BagService.AccountSource.currentActiveAccount.getter();
  BagProfile.init(name:version:)();
  v21 = *(v15 + 16);
  v33 = v14;
  v21(v18, v20, v14);
  ClientInfo.init(identifier:name:version:)();
  BagService.init(bagProfile:clientInfo:accountSource:)();
  v22 = v41;
  (*(v11 + 32))(v41 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_bagService, v13, v10);
  sub_1001F0C48(&qword_100786428);
  v24 = v38;
  v23 = v39;
  (*(v38 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v39);
  v25 = v31;
  v26 = v35;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v24 + 8))(v4, v23);
  (*(v32 + 32))(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStream, v25, v34);
  (*(v36 + 32))(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStreamContinuation, v26, v37);
  v27 = type metadata accessor for TaskPriority();
  v28 = v40;
  (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v22;

  sub_1004F8754(0xD00000000000001ALL, 0x80000001006CCE10, v28, &unk_1006B0770, v29);

  sub_1000032A8(v28, &unk_100780380);
  (*(v15 + 8))(v20, v33);
  return v22;
}

uint64_t sub_100501078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_100501108();
}

uint64_t sub_100501108()
{
  v1[12] = v0;
  v2 = type metadata accessor for Logger();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for AppStorePurchaseRequest(0);
  v1[21] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_1007866E0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  sub_1001F0C48(&qword_1007866E8);
  v1[25] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007866F0);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_1007866F8);
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1005013F8, v0, 0);
}

uint64_t sub_1005013F8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStream, v3);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_10050935C(&unk_100786700, type metadata accessor for AppStorePurchaseQueue);
  v0[32] = v4;
  v0[33] = 0;
  v5 = v0[12];
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_10050157C;
  v7 = v0[29];
  v8 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v8, v5, v4, v7);
}

uint64_t sub_10050157C()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1005016B8, v1, 0);
}

uint64_t sub_1005016B8()
{
  v1 = v0[25];
  v2 = sub_1001F0C48(&qword_100786428);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[24];
    v6 = v0[21];
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[12];
    v12 = *(v2 + 48);
    (*(v0[23] + 32))(v5, v1, v0[22]);
    sub_1005094B8(v1 + v12, v6, type metadata accessor for AppStorePurchaseRequest);
    v0[35] = *(v6 + *(v8 + 56));
    (*(v10 + 56))(v7, 1, 1, v9);
    v13 = swift_task_alloc();
    v0[36] = v13;
    v13[2] = v11;
    v13[3] = v6;
    v13[4] = v5;
    if (v11)
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v0[37] = v14;
    v0[38] = v16;

    return _swift_task_switch(sub_100501958, v14, v16);
  }
}

void sub_100501958()
{
  sub_100005934(v0[9].opaque[1], v0[9].opaque[0], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[19].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Performing Purchase", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  v4 = v0[17].opaque[1];
  if (v3)
  {
    v5 = v0[16].opaque[1];

    *(swift_task_alloc() + 16) = v4;

    v6 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v3 + 24));
      return;
    }

    v8 = v0[17].opaque[1];
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v7 = v4;
  }

  v40 = v1;
  v0[20].opaque[0] = v3;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v0[20].opaque[1] = v9;
  *(v9 + 16) = StaticString.description.getter();
  *(v9 + 24) = v10;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = off_100788658;
  if (*(off_100788658 + 2) && (v14 = sub_10052213C(*(v9 + 16), *(v9 + 24)), (v15 & 1) != 0))
  {
    v16 = (v13[7] + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    v18 = sub_1005B83F0(v12, v11);
    v17 = 0;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  v38 = v9;
  v36 = v0[9].opaque[0];
  v19 = v0[8].opaque[1];
  v20 = v12;
  v21 = v0[7].opaque[0];
  v37 = v0[6].opaque[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = off_100788658;
  sub_1005C1BAC(v17 + 1, v18, v20, v11, isUniquelyReferenced_nonNull_native);

  off_100788658 = v41;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v36, v19, &unk_10077F8E0);
  v23 = (*(v21 + 48))(v19, 1, v37);
  v24 = v0[9].opaque[0];
  if (v23 == 1)
  {
    sub_1000032A8(v0[9].opaque[0], &unk_10077F8E0);

    v25 = 0;
  }

  else
  {
    v26 = v0[8].opaque[0];
    v28 = v0[7].opaque[0];
    v27 = v0[7].opaque[1];
    v29 = v0[6].opaque[1];
    (*(v28 + 32))(v26, v0[8].opaque[1], v29);
    (*(v28 + 16))(v27, v26, v29);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v25 = sub_1005AD4D8("Performing Purchase", 19, 2, v27);

    (*(v28 + 8))(v26, v29);
    sub_1000032A8(v24, &unk_10077F8E0);
  }

  v30 = v38;
  v0[21].opaque[0] = v25;
  v32 = v0[17].opaque[1];
  v31 = v0[18].opaque[0];
  v39 = v0[16].opaque[0];
  v33 = v0[6].opaque[0];
  v0[3].opaque[0] = v40;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v30;
  v0[4].opaque[1] = v25;
  v34 = swift_task_alloc();
  v0[21].opaque[1] = v34;
  v34[2] = v32;
  v34[3] = v40;
  v34[4] = v3;
  v34[5] = v30;
  v34[6] = v25;
  v34[7] = &unk_1006B0748;
  v34[8] = v31;

  v35 = swift_task_alloc();
  v0[22].opaque[0] = v35;
  *v35 = v0;
  v35[1] = sub_100501F6C;

  TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v35, &v0[3], &unk_10069F3A0, v34, v33, v39, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100501F6C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_100502354;
  }

  else
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_100502130;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100502130()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_100502224, v2, 0);
}

uint64_t sub_100502224()
{
  v1 = v0;
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  sub_100509458(v1[21], type metadata accessor for AppStorePurchaseRequest);
  (*(v2 + 8))(v3, v4);
  v1[33] = v1[45];
  v5 = v1[32];
  v6 = v1[12];
  v7 = swift_task_alloc();
  v1[34] = v7;
  *v7 = v1;
  v7[1] = sub_10050157C;
  v8 = v1[29];
  v9 = v1[25];

  return AsyncStream.Iterator.next(isolation:)(v9, v6, v5, v8);
}

uint64_t sub_100502354()
{
}

uint64_t sub_1005023F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a2;
  v4[5] = a4;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_100502490;

  return sub_1005026E4(a3);
}

uint64_t sub_100502490(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_100502658;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_1005025CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005025CC()
{
  v0[3] = v0[8];
  sub_1001F0C48(&qword_1007866E0);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100502658()
{
  v0[2] = v0[7];
  sub_1001F0C48(&qword_1007866E0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1005026E4(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v3 = sub_1001F0C48(&qword_1007866B0);
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v4 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[62] = v6;
  v2[63] = *(v6 - 8);
  v2[64] = swift_task_alloc();
  sub_1001F0C48(&qword_1007866B8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_100502950, v1, 0);
}

uint64_t sub_100502950()
{
  v186 = v0;
  v1 = v0[46];
  v2 = *v1;
  v0[38] = *v1;
  v3 = v1[2];
  v4 = v0[67];
  if (v3)
  {
    v5 = v0[66];
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[1];
    v9 = v0;
    v10 = v1[6];
    v11 = v1[7];
    v182 = v2;

    sub_10026E620(v10, v11);
    sub_100506504(v8, v3, v7, v6, v10, v11, v4);
    v12 = type metadata accessor for VendorID(0);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v4, 0, 1, v12);
    sub_100005934(v4, v5, &qword_1007866B8);
    v14 = (*(v13 + 48))(v5, 1, v12);
    if (v14 == 1)
    {
      __break(1u);
      return _swift_task_switch(v14, v15, v16);
    }

    v17 = v9[66];
    v18 = v9[63];
    v19 = v9[64];
    v20 = v9[62];
    (*(v18 + 16))(v19, v17, v20);
    sub_100509458(v17, type metadata accessor for VendorID);
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v18 + 8))(v19, v20);
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v185 = v182;
    sub_1005C1D34(v21, v23, v24, v26, isUniquelyReferenced_nonNull_native);

    v9[38] = v182;
    v0 = v9;
  }

  else
  {
    v28 = type metadata accessor for VendorID(0);
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);

    static Logger.vpp.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[61];
    v33 = v0[54];
    v34 = v0[55];
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Vendor info not provided, receipt will be missing", v35, 2u);
    }

    v36 = *(v34 + 8);
    v21 = v34 + 8;
    v36(v32, v33);
  }

  v37 = [objc_opt_self() serialNumber];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = v0[46];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B7830(v39, v41, v43, v44);
  v45 = type metadata accessor for AppStorePurchaseRequest(0);
  v0[68] = v45;
  v46 = v42 + *(v45 + 52);
  v183 = v0;
  if ((*(v46 + 8) & 1) == 0)
  {
    v47 = *v46;
    v48 = AMSBuyParamPropertyAppExtVrsId;
    v0[22] = AMSBuyParamPropertyAppExtVrsId;
    v49 = v0 + 22;
    v50 = AMSBuyParamPropertyExternalVersionId;
    v51 = AMSBuyParamPropertySoftwareExternalVersionId;
    v49[1] = AMSBuyParamPropertyExternalVersionId;
    v49[2] = v51;
    v52 = v48;
    v53 = v50;
    v54 = v51;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    v58 = v49[16];
    v59 = v52;
    v21 = sub_10052213C(v55, v57);
    v61 = v60;

    if (v61)
    {
      v185 = v58;
      v62 = v53;
      v63 = v183;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_74:
        sub_1005C3CD4();
        v58 = v185;
        v62 = *(v63 + 184);
      }

      sub_1005BFE88(v21, v58);

      *(v63 + 304) = v58;
    }

    else
    {

      v62 = v53;
    }

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    v67 = v62;
    v68 = sub_10052213C(v64, v66);
    v70 = v69;

    if (v70)
    {
      v185 = v58;
      v71 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1005C3CD4();
        v58 = v185;
      }

      sub_1005BFE88(v68, v58);

      v183[38] = v58;
    }

    else
    {

      v71 = v183;
    }

    v72 = v71[24];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
    v76 = v72;
    v77 = sub_10052213C(v73, v75);
    v79 = v78;

    if (v79)
    {
      v185 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1005C3CD4();
        v58 = v185;
      }

      sub_1005BFE88(v77, v58);

      v0 = v183;
      v183[38] = v58;
    }

    else
    {

      v0 = v183;
    }

    type metadata accessor for AMSBuyParamProperty(0);
    swift_arrayDestroy();
    v0[45] = v47;
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v84;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v185 = v0[38];
    sub_1005C1D34(v80, v82, v83, v21, v85);

    v0[38] = v185;
  }

  v87 = v0[52];
  v86 = v0[53];
  v88 = v0[51];
  (*(v87 + 104))(v86, enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:), v88);
  v89 = static ManagedAppDeclaration.InstallBehavior.LicenseEnum.== infix(_:_:)();
  v90 = *(v87 + 8);
  v59 = (v87 + 8);
  v90(v86, v88);
  if (v89)
  {
    v91 = v0[46];
    v0[69] = *(v91 + 48);
    v0[70] = *(v91 + 56);
    v14 = sub_1005039BC;
LABEL_65:
    v15 = 0;
    v16 = 0;

    return _swift_task_switch(v14, v15, v16);
  }

  v0[74] = 0;
  v92 = *(v0[46] + *(v0[68] + 44));
  if (!v92)
  {
LABEL_49:
    static Logger.vpp.getter();
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    v120 = os_log_type_enabled(v118, v119);
    v121 = v0[60];
    v123 = v0[54];
    v122 = v0[55];
    if (v120)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v185 = v126;
      *v124 = 138412546;
      v127 = sub_100625FA0();
      *(v124 + 4) = v127;
      *v125 = v127;
      *(v124 + 12) = 2082;
      swift_beginAccess();
      v183[44] = v183[38];
      sub_100509308();
      v128 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = sub_1002346CC(v128, v129, &v185);

      *(v124 + 14) = v130;
      _os_log_impl(&_mh_execute_header, v118, v119, "[%@] Performing purchase with parameters: %{public}s", v124, 0x16u);
      sub_1000032A8(v125, &qword_10077F920);
      v0 = v183;

      sub_10000710C(v126);

      v131 = *(v122 + 8);
      v131(v121, v123);
    }

    else
    {

      v131 = *(v122 + 8);
      v131(v121, v123);
    }

    v0[75] = v131;
    v0[76] = sub_100006190(0, &qword_1007866C0);
    swift_beginAccess();
    v0[77] = v0[38];

    sub_100506748(v179);
    v133 = v132;
    v134 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:5 buyParams:v132];
    v0[78] = v134;

    v135 = sub_100625FA0();
    LogKey.stringValue.getter();

    v136 = String._bridgeToObjectiveC()();

    [v134 setLogUUID:v136];

    v137 = v0[68];
    v138 = v0[46];
    LODWORD(v136) = *(v138 + 40);
    [v134 setUserInitiated:*(v138 + 40)];
    v181 = v134;
    [v134 setIgnoreRequirePasswordRestriction:v136 ^ 1];
    v139 = v138 + *(v137 + 36);
    v140 = *(v139 + 16);
    v141 = _swiftEmptyDictionarySingleton;
    if (*(v140 + 16))
    {
      v0[39] = v140;

      sub_1001F0C48(&unk_10077FB40);
      sub_1001F766C();
      v142 = BidirectionalCollection<>.joined(separator:)();
      v144 = v143;

      v145 = swift_isUniquelyReferenced_nonNull_native();
      v185 = _swiftEmptyDictionarySingleton;
      sub_1005C1D34(v142, v144, 0xD000000000000011, 0x80000001006CCD40, v145);
      v141 = v185;
    }

    if (*(v139 + 110) == 1)
    {
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v185 = v141;
      sub_1005C1D34(1702195828, 0xE400000000000000, 0xD000000000000010, 0x80000001006CCD90, v146);
      v141 = v185;
    }

    v0[79] = v141;
    if (v141[2])
    {
      static Logger.vpp.getter();
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.default.getter();
      v149 = os_log_type_enabled(v147, v148);
      v150 = v0[59];
      v151 = v0[54];
      if (v149)
      {
        v177 = v0[59];
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v185 = v153;
        *v152 = 136446210;

        v154 = v131;
        v155 = Dictionary.description.getter();
        v157 = v156;

        v158 = sub_1002346CC(v155, v157, &v185);

        *(v152 + 4) = v158;
        v131 = v154;
        _os_log_impl(&_mh_execute_header, v147, v148, "Setting additional purchase headers: %{public}s", v152, 0xCu);
        sub_10000710C(v153);
        v0 = v183;

        v159 = v177;
      }

      else
      {

        v159 = v150;
      }

      v131(v159, v151);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v181 setAdditionalHeaders:isa];
    }

    static Logger.vpp.getter();
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    v163 = os_log_type_enabled(v161, v162);
    v164 = v0[58];
    v165 = v0[54];
    if (v163)
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v184 = v131;
      v185 = swift_slowAlloc();
      v168 = v185;
      *v166 = 138412546;
      v169 = sub_100625FA0();
      *(v166 + 4) = v169;
      *v167 = v169;
      *(v166 + 12) = 2082;
      v0[43] = v179;
      sub_100509308();
      v170 = dispatch thunk of CustomStringConvertible.description.getter();
      v172 = sub_1002346CC(v170, v171, &v185);

      *(v166 + 14) = v172;
      _os_log_impl(&_mh_execute_header, v161, v162, "[%@] Performing purchase with buy params: %{public}s", v166, 0x16u);
      sub_1000032A8(v167, &qword_10077F920);

      sub_10000710C(v168);

      v184(v164, v165);
    }

    else
    {

      v131(v164, v165);
    }

    type metadata accessor for AMSCachedBag();
    v173 = static AMSCachedBag.makeBag(bagService:)();
    v0[80] = v173;
    v174 = [objc_allocWithZone(AMSPurchaseTask) initWithPurchase:v181 bag:v173];
    v0[81] = v174;
    v175 = [objc_allocWithZone(type metadata accessor for AppStorePurchaseQueue.Delegate()) init];
    v0[82] = v175;
    [v174 setDelegate:v175];
    v14 = sub_100505024;
    goto LABEL_65;
  }

  v93 = v92 + 64;
  v94 = -1;
  v95 = -1 << *(v92 + 32);
  if (-v95 < 64)
  {
    v94 = ~(-1 << -v95);
  }

  v96 = v94 & *(v92 + 64);
  v47 = (63 - v95) >> 6;

  v98 = 0;
  for (i = v97; ; v97 = i)
  {
    if (!v96)
    {
      while (1)
      {
        v63 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          break;
        }

        if (v63 >= v47)
        {

          v0 = v183;
          goto LABEL_49;
        }

        v96 = *(v93 + 8 * v63);
        ++v98;
        if (v96)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v63 = v98;
LABEL_39:
    v100 = (*(v97 + 56) + 16 * (__clz(__rbit64(v96)) | (v63 << 6)));
    v101 = v100[1];
    v180 = *v100;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v183[38];
    v185 = v105;
    v106 = sub_10052213C(v59, v103);
    v108 = v105[2];
    v109 = (v107 & 1) == 0;
    v110 = __OFADD__(v108, v109);
    v111 = v108 + v109;
    if (v110)
    {
      goto LABEL_72;
    }

    v21 = v107;
    if (v105[3] < v111)
    {
      break;
    }

    if ((v104 & 1) == 0)
    {
      v117 = v106;
      sub_1005C3CD4();
      v106 = v117;
      v105 = v185;
    }

LABEL_45:
    v96 &= v96 - 1;
    if (v21)
    {
      v99 = (v105[7] + 16 * v106);
      *v99 = v180;
      v99[1] = v101;
    }

    else
    {
      v105[(v106 >> 6) + 8] |= 1 << v106;
      v113 = (v105[6] + 16 * v106);
      *v113 = v59;
      v113[1] = v103;
      v114 = (v105[7] + 16 * v106);
      *v114 = v180;
      v114[1] = v101;
      v115 = v105[2];
      v110 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v110)
      {
        goto LABEL_73;
      }

      v105[2] = v116;
    }

    v183[38] = v105;
    v98 = v63;
  }

  sub_1005B996C(v111, v104);
  v105 = v185;
  v106 = sub_10052213C(v59, v103);
  if ((v21 & 1) == (v112 & 1))
  {
    goto LABEL_45;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1005039BC()
{
  v0[71] = [objc_opt_self() ams_sharedAccountStore];
  v1 = swift_task_alloc();
  v0[72] = v1;
  *v1 = v0;
  v1[1] = sub_100503A8C;
  v2 = v0[70];
  v3 = v0[69];

  return sub_100621B5C(v3, v2);
}

uint64_t sub_100503A8C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 584) = a1;

  v4 = *(v3 + 568);
  v5 = *(v3 + 376);
  if (v1)
  {

    v6 = sub_100504670;
  }

  else
  {

    v6 = sub_100503BE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100503BE8()
{
  v112 = v0;
  v1 = v0[73];
  if (v1)
  {
    v2 = [v1 ams_DSID];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v0[38];
      sub_1005C1D34(v5, v7, v8, v10, isUniquelyReferenced_nonNull_native);

      v0[38] = v111;
    }

    v12 = v0[73];
  }

  else
  {
    v12 = 0;
  }

  v102 = v12;
  v0[74] = v12;
  v13 = *(v0[46] + *(v0[68] + 44));
  if (v13)
  {
    v14 = v13 + 64;
    v15 = -1;
    v16 = -1 << *(v13 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & *(v13 + 64);
    v18 = (63 - v16) >> 6;

    v22 = 0;
    v104 = v14;
    for (i = v19; ; v19 = i)
    {
      if (!v17)
      {
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v18)
          {

            goto LABEL_27;
          }

          v17 = *(v14 + 8 * v24);
          ++v22;
          if (v17)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return _swift_task_switch(v19, v20, v21);
      }

      v24 = v22;
LABEL_17:
      v25 = (*(v19 + 56) + 16 * (__clz(__rbit64(v17)) | (v24 << 6)));
      v26 = v25[1];
      v109 = *v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v0[38];
      v31 = v111;
      v19 = sub_10052213C(v27, v29);
      v32 = v111[2];
      v33 = (v20 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_51;
      }

      v36 = v20;
      if (v111[3] >= v35)
      {
        if ((v30 & 1) == 0)
        {
          v41 = v19;
          sub_1005C3CD4();
          v19 = v41;
          v31 = v111;
        }
      }

      else
      {
        sub_1005B996C(v35, v30);
        v31 = v111;
        v19 = sub_10052213C(v27, v29);
        if ((v36 & 1) != (v20 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v17 &= v17 - 1;
      if (v36)
      {
        v23 = (v31[7] + 16 * v19);
        *v23 = v109;
        v23[1] = v26;
      }

      else
      {
        v31[(v19 >> 6) + 8] |= 1 << v19;
        v37 = (v31[6] + 16 * v19);
        *v37 = v27;
        v37[1] = v29;
        v38 = (v31[7] + 16 * v19);
        *v38 = v109;
        v38[1] = v26;
        v39 = v31[2];
        v34 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v34)
        {
          goto LABEL_52;
        }

        v31[2] = v40;
      }

      v0[38] = v31;
      v22 = v24;
      v14 = v104;
    }
  }

LABEL_27:
  static Logger.vpp.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[60];
  v47 = v0[54];
  v46 = v0[55];
  if (v44)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v111 = v50;
    *v48 = 138412546;
    v51 = sub_100625FA0();
    *(v48 + 4) = v51;
    *v49 = v51;
    *(v48 + 12) = 2082;
    swift_beginAccess();
    v0[44] = v0[38];
    sub_100509308();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = sub_1002346CC(v52, v53, &v111);

    *(v48 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Performing purchase with parameters: %{public}s", v48, 0x16u);
    sub_1000032A8(v49, &qword_10077F920);

    sub_10000710C(v50);

    v55 = *(v46 + 8);
    v55(v45, v47);
  }

  else
  {

    v55 = *(v46 + 8);
    v55(v45, v47);
  }

  v0[75] = v55;
  v0[76] = sub_100006190(0, &qword_1007866C0);
  swift_beginAccess();
  v0[77] = v0[38];

  sub_100506748(v108);
  v57 = v56;
  v58 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:5 buyParams:v56];
  v0[78] = v58;

  v59 = sub_100625FA0();
  LogKey.stringValue.getter();

  v60 = String._bridgeToObjectiveC()();

  [v58 setLogUUID:v60];

  if (v102)
  {
    [v58 setAccount:?];
  }

  v61 = v0[68];
  v62 = v0[46];
  v63 = *(v62 + 40);
  [v58 setUserInitiated:{*(v62 + 40), v102}];
  v110 = v58;
  [v58 setIgnoreRequirePasswordRestriction:v63 ^ 1u];
  v64 = v62 + *(v61 + 36);
  v65 = *(v64 + 16);
  v66 = _swiftEmptyDictionarySingleton;
  if (*(v65 + 16))
  {
    v0[39] = v65;

    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    v70 = swift_isUniquelyReferenced_nonNull_native();
    v111 = _swiftEmptyDictionarySingleton;
    sub_1005C1D34(v67, v69, 0xD000000000000011, 0x80000001006CCD40, v70);
    v66 = v111;
  }

  if (*(v64 + 110) == 1)
  {
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v66;
    sub_1005C1D34(1702195828, 0xE400000000000000, 0xD000000000000010, 0x80000001006CCD90, v71);
    v66 = v111;
  }

  v72 = v110;
  v0[79] = v66;
  if (v66[2])
  {
    static Logger.vpp.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v0[59];
    v77 = v0[54];
    if (v75)
    {
      v105 = v0[59];
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v111 = v79;
      *v78 = 136446210;

      v80 = v55;
      v81 = Dictionary.description.getter();
      v103 = v77;
      v83 = v82;

      v84 = sub_1002346CC(v81, v83, &v111);

      *(v78 + 4) = v84;
      v55 = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "Setting additional purchase headers: %{public}s", v78, 0xCu);
      sub_10000710C(v79);

      v80(v105, v103);
    }

    else
    {

      v55(v76, v77);
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v72 = v110;
    [v110 setAdditionalHeaders:isa];
  }

  static Logger.vpp.getter();
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v0[58];
  v90 = v0[54];
  if (v88)
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v106 = v55;
    v93 = swift_slowAlloc();
    v111 = v93;
    *v91 = 138412546;
    v94 = sub_100625FA0();
    *(v91 + 4) = v94;
    *v92 = v94;
    *(v91 + 12) = 2082;
    v0[43] = v108;
    sub_100509308();
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = sub_1002346CC(v95, v96, &v111);

    *(v91 + 14) = v97;
    _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Performing purchase with buy params: %{public}s", v91, 0x16u);
    sub_1000032A8(v92, &qword_10077F920);

    sub_10000710C(v93);

    v72 = v110;

    v106(v89, v90);
  }

  else
  {

    v55(v89, v90);
  }

  type metadata accessor for AMSCachedBag();
  v98 = static AMSCachedBag.makeBag(bagService:)();
  v0[80] = v98;
  v99 = [objc_allocWithZone(AMSPurchaseTask) initWithPurchase:v72 bag:v98];
  v0[81] = v99;
  v100 = [objc_allocWithZone(type metadata accessor for AppStorePurchaseQueue.Delegate()) init];
  v0[82] = v100;
  [v99 setDelegate:v100];
  v19 = sub_100505024;
  v20 = 0;
  v21 = 0;

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100504670()
{
  v97 = v0;
  v0[74] = 0;
  v1 = *(v0[46] + *(v0[68] + 44));
  if (v1)
  {
    v2 = v1 + 64;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;

    v10 = 0;
    for (i = v7; ; v7 = i)
    {
      if (!v5)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v6)
          {

            v0 = v95;
            goto LABEL_22;
          }

          v5 = *(v2 + 8 * v12);
          ++v10;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return _swift_task_switch(v7, v8, v9);
      }

      v12 = v10;
LABEL_12:
      v13 = (*(v7 + 56) + 16 * (__clz(__rbit64(v5)) | (v12 << 6)));
      v14 = v13[1];
      v93 = *v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v95[38];
      v96 = v19;
      v7 = sub_10052213C(v15, v17);
      v20 = v19[2];
      v21 = (v8 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_44;
      }

      v24 = v8;
      if (v19[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v7;
          sub_1005C3CD4();
          v7 = v29;
          v19 = v96;
        }
      }

      else
      {
        sub_1005B996C(v23, isUniquelyReferenced_nonNull_native);
        v19 = v96;
        v7 = sub_10052213C(v15, v17);
        if ((v24 & 1) != (v8 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v5 &= v5 - 1;
      if (v24)
      {
        v11 = (v19[7] + 16 * v7);
        *v11 = v93;
        v11[1] = v14;
      }

      else
      {
        v19[(v7 >> 6) + 8] |= 1 << v7;
        v25 = (v19[6] + 16 * v7);
        *v25 = v15;
        v25[1] = v17;
        v26 = (v19[7] + 16 * v7);
        *v26 = v93;
        v26[1] = v14;
        v27 = v19[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_45;
        }

        v19[2] = v28;
      }

      v95[38] = v19;
      v10 = v12;
    }
  }

LABEL_22:
  static Logger.vpp.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[60];
  v35 = v0[54];
  v34 = v0[55];
  if (v32)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v96 = v38;
    *v36 = 138412546;
    v39 = sub_100625FA0();
    *(v36 + 4) = v39;
    *v37 = v39;
    *(v36 + 12) = 2082;
    swift_beginAccess();
    v0[44] = v0[38];
    sub_100509308();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = sub_1002346CC(v40, v41, &v96);

    *(v36 + 14) = v42;
    v0 = v95;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Performing purchase with parameters: %{public}s", v36, 0x16u);
    sub_1000032A8(v37, &qword_10077F920);

    sub_10000710C(v38);

    v43 = *(v34 + 8);
    v43(v33, v35);
  }

  else
  {

    v43 = *(v34 + 8);
    v43(v33, v35);
  }

  v0[75] = v43;
  v0[76] = sub_100006190(0, &qword_1007866C0);
  swift_beginAccess();
  v0[77] = v0[38];

  sub_100506748(v92);
  v45 = v44;
  v46 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:5 buyParams:v44];
  v0[78] = v46;

  v47 = sub_100625FA0();
  LogKey.stringValue.getter();

  v48 = String._bridgeToObjectiveC()();

  [v46 setLogUUID:v48];

  v49 = v0[68];
  v50 = v0[46];
  LODWORD(v48) = *(v50 + 40);
  [v46 setUserInitiated:*(v50 + 40)];
  v94 = v46;
  [v46 setIgnoreRequirePasswordRestriction:v48 ^ 1];
  v51 = v50 + *(v49 + 36);
  v52 = *(v51 + 16);
  v53 = _swiftEmptyDictionarySingleton;
  if (*(v52 + 16))
  {
    v0[39] = v52;

    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = v55;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v96 = _swiftEmptyDictionarySingleton;
    sub_1005C1D34(v54, v56, 0xD000000000000011, 0x80000001006CCD40, v57);
    v53 = v96;
  }

  if (*(v51 + 110) == 1)
  {
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v53;
    sub_1005C1D34(1702195828, 0xE400000000000000, 0xD000000000000010, 0x80000001006CCD90, v58);
    v53 = v96;
  }

  v0[79] = v53;
  if (v53[2])
  {
    static Logger.vpp.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v0[59];
    v63 = v0[54];
    if (v61)
    {
      v89 = v0[59];
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v96 = v65;
      *v64 = 136446210;

      v66 = v43;
      v67 = Dictionary.description.getter();
      v69 = v68;

      v70 = sub_1002346CC(v67, v69, &v96);

      *(v64 + 4) = v70;
      v43 = v66;
      v0 = v95;
      _os_log_impl(&_mh_execute_header, v59, v60, "Setting additional purchase headers: %{public}s", v64, 0xCu);
      sub_10000710C(v65);

      v71 = v89;
    }

    else
    {

      v71 = v62;
    }

    v43(v71, v63);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v94 setAdditionalHeaders:isa];
  }

  static Logger.vpp.getter();
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v0[58];
  v77 = v0[54];
  if (v75)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v90 = v43;
    v80 = swift_slowAlloc();
    v96 = v80;
    *v78 = 138412546;
    v81 = sub_100625FA0();
    *(v78 + 4) = v81;
    *v79 = v81;
    *(v78 + 12) = 2082;
    v95[43] = v92;
    sub_100509308();
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = sub_1002346CC(v82, v83, &v96);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Performing purchase with buy params: %{public}s", v78, 0x16u);
    sub_1000032A8(v79, &qword_10077F920);

    sub_10000710C(v80);
    v0 = v95;

    v90(v76, v77);
  }

  else
  {

    v43(v76, v77);
  }

  type metadata accessor for AMSCachedBag();
  v85 = static AMSCachedBag.makeBag(bagService:)();
  v0[80] = v85;
  v86 = [objc_allocWithZone(AMSPurchaseTask) initWithPurchase:v94 bag:v85];
  v0[81] = v86;
  v87 = [objc_allocWithZone(type metadata accessor for AppStorePurchaseQueue.Delegate()) init];
  v0[82] = v87;
  [v86 setDelegate:v87];
  v7 = sub_100505024;
  v8 = 0;
  v9 = 0;

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100505024()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 40;
  v4 = v0[81];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
  v8 = [v4 performPurchase];
  v1[83] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_100505210;
  swift_continuation_init();
  v1[17] = v7;
  v9 = sub_10020A748(v1 + 14);
  sub_100006190(0, &qword_1007866C8);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v5, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1005068A8;
  v1[13] = &unk_100768648;
  [v8 resultWithCompletion:?];
  (*(v6 + 8))(v9, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_100505210()
{
  v1 = *(*v0 + 48);
  *(*v0 + 672) = v1;
  if (v1)
  {
    v2 = sub_100505E40;
  }

  else
  {
    v2 = sub_100505320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100505320()
{
  v1 = v0[83];
  v2 = v0[47];
  v0[85] = v0[40];

  return _swift_task_switch(sub_100505394, v2, 0);
}

uint64_t sub_100505394()
{
  v92 = v0;
  static Logger.vpp.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Purchase completed successfully", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = *(v0 + 680);
  v7 = *(v0 + 600);
  v8 = *(v0 + 456);
  v9 = *(v0 + 432);

  v7(v8, v9);
  v10 = [v6 responseDictionary];
  if (v10)
  {
    v11 = v10;
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(v0 + 368) + *(*(v0 + 544) + 48));

  sub_100506748(v14);
  v16 = v15;
  v17 = [v15 stringValue];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = sub_10039D794(v12, v13, v18, v20);
  v89 = v23;
  v90 = v24;
  if (v22)
  {
    v87 = v21;
    v88 = v22;
    if (v24 >> 60 == 15)
    {
      v25 = *(v0 + 680);
      v26 = *(v0 + 656);
      v27 = *(v0 + 648);
      v28 = *(v0 + 592);
      v29 = *(v0 + 536);

      swift_unknownObjectRelease();
LABEL_33:
      sub_1000032A8(v29, &qword_1007866B8);
      goto LABEL_34;
    }

    v49 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v49 != 2)
      {
        goto LABEL_31;
      }

      v67 = *(v23 + 16);
      v66 = *(v23 + 24);
    }

    else
    {
      if (!v49)
      {
        if ((v24 & 0xFF000000000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        v73 = *(v0 + 680);
        v74 = *(v0 + 656);
        v75 = *(v0 + 648);
        v76 = *(v0 + 624);
        v77 = *(v0 + 592);
        v29 = *(v0 + 536);
        sub_10061D578();

        sub_10020B0E0(v89, v90);
        swift_unknownObjectRelease();

        goto LABEL_33;
      }

      v67 = v23;
      v66 = v23 >> 32;
    }

    sub_1001DFECC(v23, v24);
    if (v67 != v66)
    {
      goto LABEL_32;
    }

LABEL_31:
    v68 = *(v0 + 680);
    v69 = *(v0 + 656);
    v70 = *(v0 + 648);
    v71 = *(v0 + 624);
    v72 = *(v0 + 592);
    sub_1000032A8(*(v0 + 536), &qword_1007866B8);

    sub_10020B0E0(v89, v90);
    swift_unknownObjectRelease();

LABEL_34:

    sub_1005092BC(v87, v88, v89, v90);

    v78 = *(v0 + 8);

    return v78(v88);
  }

  v30 = *(v0 + 680);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  type metadata accessor for InternalError();
  sub_10050935C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  *v33 = 0;
  v33[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  swift_unknownObjectRelease();
  static Logger.vpp.getter();
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 600);
  v38 = *(v0 + 448);
  v39 = *(v0 + 432);
  if (v36)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v91 = v42;
    *v40 = 138412546;
    v43 = sub_100625FA0();
    *(v40 + 4) = v43;
    *v41 = v43;
    *(v40 + 12) = 2082;
    swift_getErrorValue();
    v85 = v38;
    v86 = v39;
    v84 = v37;
    v44 = *(*(v0 + 264) - 8);
    swift_task_alloc();
    (*(v44 + 16))();
    v45 = String.init<A>(describing:)();
    v47 = v46;

    v48 = sub_1002346CC(v45, v47, &v91);

    *(v40 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Purchase completed with error: %{public}s", v40, 0x16u);
    sub_1000032A8(v41, &qword_10077F920);

    sub_10000710C(v42);

    v84(v85, v86);
  }

  else
  {

    v37(v38, v39);
  }

  v50 = *(v0 + 520);
  sub_100005934(*(v0 + 536), v50, &qword_1007866B8);
  v51 = type metadata accessor for VendorID(0);
  v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
  v53 = *(v0 + 520);
  if (v52 == 1)
  {
    sub_1000032A8(v53, &qword_1007866B8);
  }

  else
  {
    if (*(v53 + *(v51 + 24)) == 1)
    {
      sub_100006190(0, &qword_1007866D0);
      sub_10060D950();
      v53 = *(v0 + 520);
    }

    sub_100509458(v53, type metadata accessor for VendorID);
  }

  v54 = _convertErrorToNSError(_:)();
  if ([v54 code] != 305)
  {
    goto LABEL_39;
  }

  v55 = [v54 userInfo];
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_38;
  }

  v59 = sub_10052213C(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_38:

LABEL_39:
    swift_willThrow();
    goto LABEL_40;
  }

  sub_10020A6D0(*(v56 + 56) + 32 * v59, v0 + 200);

  if (!swift_dynamicCast() || *(v0 + 328) != 9610)
  {
    goto LABEL_39;
  }

  swift_allocError();
  v63 = v62;
  v64 = enum case for ManagedAppDistributionError.licenseNotFound(_:);
  v65 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v65 - 8) + 104))(v63, v64, v65);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_40:
  v80 = *(v0 + 624);
  v81 = *(v0 + 592);
  v82 = *(v0 + 536);

  sub_1000032A8(v82, &qword_1007866B8);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_100505E40()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 376);
  swift_willThrow();

  return _swift_task_switch(sub_100505EBC, v2, 0);
}

uint64_t sub_100505EBC()
{
  v42 = v0;
  v1 = v0[82];
  v2 = v0[81];
  swift_unknownObjectRelease();

  static Logger.vpp.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v39 = v0[56];
    v40 = v0[75];
    v38 = v0[54];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v5 = 138412546;
    v8 = sub_100625FA0();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v9 = *(v0[33] - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v41);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Purchase completed with error: %{public}s", v5, 0x16u);
    sub_1000032A8(v6, &qword_10077F920);

    sub_10000710C(v7);

    v40(v39, v38);
  }

  else
  {
    v14 = v0[75];
    v15 = v0[56];
    v16 = v0[54];

    v14(v15, v16);
  }

  v17 = v0[65];
  sub_100005934(v0[67], v17, &qword_1007866B8);
  v18 = type metadata accessor for VendorID(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = v0[65];
  if (v19 == 1)
  {
    sub_1000032A8(v20, &qword_1007866B8);
  }

  else
  {
    if (*(v20 + *(v18 + 24)) == 1)
    {
      sub_100006190(0, &qword_1007866D0);
      sub_10060D950();
      v20 = v0[65];
    }

    sub_100509458(v20, type metadata accessor for VendorID);
  }

  v21 = _convertErrorToNSError(_:)();
  if ([v21 code] != 305)
  {
    goto LABEL_17;
  }

  v22 = [v21 userInfo];
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

    goto LABEL_16;
  }

  v26 = sub_10052213C(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_10020A6D0(*(v23 + 56) + 32 * v26, (v0 + 25));

  if (swift_dynamicCast() && v0[41] == 9610)
  {
    type metadata accessor for InternalError();
    sub_10050935C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v30 = v29;
    v31 = enum case for ManagedAppDistributionError.licenseNotFound(_:);
    v32 = type metadata accessor for ManagedAppDistributionError();
    (*(*(v32 - 8) + 104))(v30, v31, v32);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_18;
  }

LABEL_17:
  swift_willThrow();
LABEL_18:
  v33 = v0[78];
  v34 = v0[74];
  v35 = v0[67];

  sub_1000032A8(v35, &qword_1007866B8);

  v36 = v0[1];

  return v36();
}

uint64_t sub_100506504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for UUID();
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v31 = type metadata accessor for VendorID(0);
  v20 = (a7 + *(v31 + 20));
  *v20 = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  sub_100006190(0, &qword_100784500);

  v21 = sub_10060BC54(a3, a4, a5, a6, 0);
  sub_1004D2F70(a5, a6);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = [v21 deviceIdentifierForVendor];
  if (!v22)
  {

LABEL_5:
    sub_100006190(0, &qword_1007866D0);
    sub_10060D860();

    v27 = 1;
    goto LABEL_6;
  }

  v23 = v22;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v30;
  v25 = *(v29 + 32);
  v25(v19, v17, v30);
  result = (v25)(a7, v19, v24);
  v27 = 0;
LABEL_6:
  *(a7 + *(v31 + 24)) = v27;
  return result;
}

void sub_100506748(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        v9 = String._bridgeToObjectiveC()();

        v10 = String._bridgeToObjectiveC()();

        [v2 setObject:v10 forKeyedSubscript:v9];
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1005068BC()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_bagService;
  v2 = type metadata accessor for BagService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStream;
  v4 = sub_1001F0C48(&qword_1007866F0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon21AppStorePurchaseQueue_requestStreamContinuation;
  v6 = sub_1001F0C48(&qword_100786720);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1005069F4()
{
  type metadata accessor for BagService();
  if (v0 <= 0x3F)
  {
    sub_10050795C(319, &qword_100786420, &qword_100786428, &unk_1006B0498, &type metadata accessor for AsyncStream);
    if (v1 <= 0x3F)
    {
      sub_10050795C(319, &unk_100786430, &qword_100786428, &unk_1006B0498, &type metadata accessor for AsyncStream.Continuation);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100506B5C()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  _print_unlocked<A, B>(_:_:)();

  return 0;
}

uint64_t sub_100506BDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1005081AC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100506C1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(AMSBuyParams);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithString:v3];

  result = sub_100507E64(v4);
  *a1 = result;
  return result;
}

uint64_t sub_100506E28(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1005096EC;

  return sub_100508574();
}

uint64_t sub_100507064(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100507130;

  return sub_1005087F8(v9);
}

uint64_t sub_100507130(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100507498(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_100507530;

  return sub_100508E40();
}

uint64_t sub_100507530(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

id sub_1005076F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStorePurchaseQueue.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100507798()
{
  sub_10000585C(319, &qword_100786608);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    if (v1 <= 0x3F)
    {
      sub_1005078F8();
      if (v2 <= 0x3F)
      {
        sub_10050795C(319, &qword_100786618, qword_100786620, &unk_1006B04C8, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10000585C(319, &qword_100782068);
          if (v4 <= 0x3F)
          {
            type metadata accessor for LogKey();
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

unint64_t sub_1005078F8()
{
  result = qword_100786610;
  if (!qword_100786610)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100786610);
  }

  return result;
}

void sub_10050795C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001F76D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1005079F0()
{
  result = qword_100786680;
  if (!qword_100786680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786680);
  }

  return result;
}

unint64_t sub_100507A54()
{
  result = qword_100786688;
  if (!qword_100786688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786688);
  }

  return result;
}

uint64_t sub_100507AB4(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10052213C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1005B996C(v15, v4 & 1);
    v10 = sub_10052213C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1005C3CD4();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x80000001006C4E90;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10052213C(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1005B996C(v31, 1);
        v27 = sub_10052213C(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100507E64(void *a1)
{
  v2 = [a1 dictionary];
  v26 = a1;
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = sub_100528C10(_swiftEmptyArrayStorage);
  }

  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v9 << 6);
    sub_10043A310(*(v4 + 48) + 40 * v13, v31);
    sub_10020A6D0(*(v4 + 56) + 32 * v13, v32);
    sub_10043A310(v31, &v29);
    if (swift_dynamicCast())
    {
      sub_10020A6D0(v32, &v29);
      if (swift_dynamicCast())
      {
        v15 = v27;
        v14 = v28;
      }

      else
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_100006D8C(v32, v32[3]);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v15 = v29;
        v14 = v30;
      }

      v25 = v15;
      v24 = v14;
      sub_1000032A8(v31, &unk_100786690);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100362F5C(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100362F5C((v16 > 1), v17 + 1, 1, v10);
        v18 = v17 + 1;
        v10 = v20;
      }

      v10[2] = v18;
      v19 = &v10[4 * v17];
      v19[4] = v27;
      v19[5] = v28;
      v19[6] = v25;
      v19[7] = v24;
    }

    else
    {
      sub_1000032A8(v31, &unk_100786690);
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (v10[2])
  {
    sub_1001F0C48(&unk_100786E50);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  v31[0] = v21;

  sub_100507AB4(v22, 1, v31);

  return v31[0];
}

void *sub_1005081AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    swift_bridgeObjectRetain_n();
    v11 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10052213C(v8, v10);
    v15 = _swiftEmptyDictionarySingleton[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (_swiftEmptyDictionarySingleton[3] < v18)
    {
      sub_1005B996C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_10052213C(v8, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_1005C3CD4();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v3 = v13;

      v4 = (_swiftEmptyDictionarySingleton[7] + 16 * v3);
      *v4 = v6;
      v4[1] = v7;

      goto LABEL_4;
    }

LABEL_11:
    _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (_swiftEmptyDictionarySingleton[6] + 16 * v13);
    *v21 = v8;
    v21[1] = v10;
    v22 = (_swiftEmptyDictionarySingleton[7] + 16 * v13);
    *v22 = v6;
    v22[1] = v7;

    v23 = _swiftEmptyDictionarySingleton[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    _swiftEmptyDictionarySingleton[2] = v24;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100508388()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F0E54;

  return sub_100507498(v2, v3, v4);
}

void *sub_100508448(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1001F0C48(&unk_100786730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    v6 = AMSBuyParamPropertyBundleId;
    *(inited + 32) = AMSBuyParamPropertyBundleId;
    v7 = inited + 32;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    sub_1001DFDA4(a1, a2, 1);
    v8 = v6;
  }

  else
  {
    sub_1001F0C48(&unk_100786730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    v9 = AMSBuyParamPropertyItemId;
    *(inited + 32) = AMSBuyParamPropertyItemId;
    v7 = inited + 32;
    v10 = v9;
    *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 48) = v11;
  }

  v12 = sub_1005081AC(inited);
  swift_setDeallocating();
  sub_1000032A8(v7, &qword_100780EC0);
  return v12;
}

uint64_t sub_100508574()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100508630, 0, 0);
}

uint64_t sub_100508630()
{
  static Logger.vpp.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Received an engagement request but we don't deal with those here", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v7 + 8))(v6, v8);
  type metadata accessor for InternalError();
  sub_10050935C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005087F8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1001F0C48(&qword_1007866A0);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100508920, 0, 0);
}

uint64_t sub_100508920()
{
  static Logger.vpp.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Received authentication request for purchase", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  v16 = v0[22];
  v9 = v0[20];
  v10 = v0[21];
  v11 = v0[19];

  (*(v6 + 8))(v7, v8);
  v12 = [objc_allocWithZone(AMSAuthenticateTask) initWithRequest:v11];
  v0[26] = v12;
  v13 = [v12 performAuthentication];
  v0[27] = v13;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100508C0C;
  swift_continuation_init();
  v0[17] = v9;
  v14 = sub_10020A748(v0 + 14);
  sub_100006190(0, &qword_1007866A8);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v10 + 32))(v14, v16, v9);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100506EC0;
  v0[13] = &unk_1007685A8;
  [v13 resultWithCompletion:?];
  (*(v10 + 8))(v14, v9);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100508C0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100508DAC;
  }

  else
  {
    v2 = sub_100508D1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100508D1C()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100508DAC()
{
  v1 = v0[27];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100508E40()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100508EFC, 0, 0);
}

uint64_t sub_100508EFC()
{
  static Logger.vpp.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Received a dialog request but we don't display those here", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v7 + 8))(v6, v8);
  type metadata accessor for InternalError();
  sub_10050935C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005090C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100214EFC;

  return sub_100507064(v2, v3, v5, v4);
}

uint64_t sub_10050918C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005091DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100214EFC;

  return sub_100506E28(v2, v3, v4);
}

void sub_1005092BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_10020B0E0(a3, a4);
  }
}

unint64_t sub_100509308()
{
  result = qword_1007866D8;
  if (!qword_1007866D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007866D8);
  }

  return result;
}

uint64_t sub_10050935C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005093A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1005023F0(a1, v4, v5, v6);
}

uint64_t sub_100509458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005094B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100509520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePurchaseRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100509584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_100501078();
}

uint64_t sub_100509660()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005096F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for UUID();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = type metadata accessor for LogKey.Prefix();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_100509888, 0, 0);
}

uint64_t sub_100509888()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for LogKey.Prefix.restore(_:), *(v0 + 208));
  v3 = objc_allocWithZone(type metadata accessor for LogKey());
  v4 = LogKey.init(prefix:)();
  *(v0 + 232) = v4;
  v5 = objc_allocWithZone(LSApplicationRecord);

  v28 = v4;
  v6 = sub_10049E57C(v2, v1, 1);
  v7 = [v6 iTunesMetadata];
  v8 = [v7 distributorInfo];

  v9 = [v8 distributorID];
  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v27 = sub_10056E730(*(v0 + 120), *(v0 + 128));
  v18 = v17;
  if (v12)
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v13 + 8))(v14, v15);
  *(v0 + 16) = v21;
  *(v0 + 24) = v23;
  *(v0 + 32) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = v19;
  *(v0 + 56) = v20;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = v27;
  *(v0 + 88) = v18;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v24 = *sub_100006D8C(v16, v16[3]);
  v25 = swift_task_alloc();
  *(v0 + 240) = v25;
  *v25 = v0;
  v25[1] = sub_100509CC0;

  return (sub_10050CAC8)(v0 + 16, v28, v24);
}

uint64_t sub_100509CC0(char a1)
{
  v2 = *v1;
  *(v2 + 113) = a1;

  sub_10046DAE0(v2 + 16);

  return _swift_task_switch(sub_100509DC8, 0, 0);
}

uint64_t sub_100509DC8()
{
  v26 = v0;
  v1 = *(v0 + 232);
  if (*(v0 + 113))
  {
    static Logger.restore.getter();

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 232);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
    if (v5)
    {
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v24 = *(v0 + 184);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v9;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v6;
      *v13 = v6;
      *(v12 + 12) = 2080;
      v15 = v6;
      *(v12 + 14) = sub_1002346CC(v11, v10, &v25);
      v16 = "[%@] Localization user opted to install distributor: %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, v4, v16, v12, 0x16u);
      sub_1001F8084(v13);

      sub_10000710C(v14);

      (*(v7 + 8))(v24, v23);
      goto LABEL_8;
    }
  }

  else
  {
    static Logger.restore.getter();

    v17 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 232);
    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v7 = *(v0 + 176);
    if (v18)
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v24 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v9;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v6;
      *v13 = v6;
      *(v12 + 12) = 2080;
      v15 = v6;
      *(v12 + 14) = sub_1002346CC(v20, v19, &v25);
      v16 = "[%@] Localization user opted to not install distributor: %s";
      goto LABEL_6;
    }
  }

  (*(v7 + 8))(v8, v9);
LABEL_8:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10050A0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for LogKey.Prefix();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10050A1F4, 0, 0);
}

uint64_t sub_10050A1F4()
{
  v1 = v0[4];
  (*(v0[10] + 104))(v0[11], enum case for LogKey.Prefix.restore(_:), v0[9]);
  v2 = objc_allocWithZone(type metadata accessor for LogKey());
  v3 = LogKey.init(prefix:)();
  v0[12] = v3;
  v4 = *sub_100006D8C(v1, v1[3]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10050A308;
  v7 = v0[2];
  v6 = v0[3];

  return (sub_10050EF98)(v7, v6, v3, v4);
}

uint64_t sub_10050A308(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_10050A408, 0, 0);
}

uint64_t sub_10050A408()
{
  v26 = v0;
  v1 = *(v0 + 96);
  if (*(v0 + 112))
  {
    static Logger.restore.getter();
    v2 = v1;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 96);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    if (v5)
    {
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      v24 = *(v0 + 56);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v9;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v6;
      *v13 = v6;
      *(v12 + 12) = 2080;
      v15 = v6;
      *(v12 + 14) = sub_1002346CC(v11, v10, &v25);
      v16 = "[%@] Localization user opted to install distributor of: %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, v4, v16, v12, 0x16u);
      sub_1001F8084(v13);

      sub_10000710C(v14);

      (*(v7 + 8))(v24, v23);
      goto LABEL_8;
    }
  }

  else
  {
    static Logger.restore.getter();
    v17 = v1;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v7 = *(v0 + 48);
    if (v18)
    {
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v24 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v9;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v6;
      *v13 = v6;
      *(v12 + 12) = 2080;
      v15 = v6;
      *(v12 + 14) = sub_1002346CC(v20, v19, &v25);
      v16 = "[%@] User opted to not install distributor for bundleID: %s";
      goto LABEL_6;
    }
  }

  (*(v7 + 8))(v8, v9);
LABEL_8:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10050A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[128] = a2;
  v5[127] = a1;
  v9 = type metadata accessor for Logger();
  v5[129] = v9;
  v5[130] = *(v9 - 8);
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[122] = a4;
  v5[123] = a5;
  v10 = sub_10020A748(v5 + 119);
  (*(*(a4 - 8) + 16))(v10, a3, a4);

  return _swift_task_switch(sub_10050A850, 0, 0);
}

uint64_t sub_10050A850()
{
  v42 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  static Logger.restore.getter();
  v3 = *v2;
  *(v0 + 1104) = *v2;
  v4 = v2[1];
  *(v0 + 1112) = v4;
  v5 = v2[2];
  *(v0 + 1120) = v5;
  v6 = v2[3];
  *(v0 + 1128) = v6;
  v36 = v2[4];
  *(v0 + 1136) = v36;
  v7 = v2[5];
  *(v0 + 1144) = v7;

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1096);
  v13 = *(v0 + 1040);
  v38 = *(v0 + 1032);
  v39 = v5;
  v40 = v4;
  if (v11)
  {
    v34 = v3;
    v14 = *(v0 + 1024);
    v37 = v7;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v15 = 138413058;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2082;
    v17 = v14;
    v3 = v34;
    *(v15 + 14) = sub_1002346CC(v34, v4, v41);
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_1002346CC(v36, v37, v41);
    *(v15 + 32) = 2080;
    *(v15 + 34) = sub_1002346CC(v39, v6, v41);
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@][%{public}s] Going to prompt to sign in accountID: %{public}s distributorID: %s", v15, 0x2Au);
    sub_1001F8084(v16);
    v5 = v39;

    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v13 + 8))(v12, v38);
  v18 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v19 = sub_10049E57C(v5, v6, 1);
  v20 = [v19 localizedName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = objc_allocWithZone(LSApplicationRecord);

  v24 = sub_10049E57C(v3, v40, 1);
  v25 = [v24 localizedName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  swift_bridgeObjectRelease_n();
  *(v0 + 1160) = v28;
  *(v0 + 1152) = v22;
  *(v0 + 696) = 21;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 760) = 41;
  *(v0 + 880) = v35;
  *(v0 + 888) = v22;
  *(v0 + 944) = 21;
  v29 = *(*sub_100006D8C((v0 + 952), *(v0 + 976)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1168) = v29;
  *(v0 + 808) = v26;
  *(v0 + 816) = v28;
  *(v0 + 824) = v35;
  *(v0 + 832) = v22;
  *(v0 + 872) = 20;

  v30 = swift_allocObject();
  *(v0 + 1176) = v30;
  *(v30 + 16) = 56;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0;
  *(v30 + 80) = 41;
  *(v30 + 88) = v29;
  v31 = swift_task_alloc();
  *(v0 + 1184) = v31;
  *(v31 + 16) = &unk_1006B07B0;
  *(v31 + 24) = v30;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v32 = swift_task_alloc();
  *(v0 + 1192) = v32;
  *v32 = v0;
  v32[1] = sub_10050AF5C;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_10050AF5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[150] = a1;
  v3[151] = a2;

  v4 = swift_task_alloc();
  v3[152] = v4;
  *v4 = v6;
  v4[1] = sub_10050B0B4;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_10050B0B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[153] = a1;
  v3[154] = a2;

  v4 = swift_task_alloc();
  v3[155] = v4;
  *v4 = v6;
  v4[1] = sub_10050B24C;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10050B24C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_10050B374, v3 + 656);
}

uint64_t sub_10050B390()
{
  v6 = *(v0 + 1224);
  v7 = *(v0 + 1248);
  v5 = *(v0 + 1200);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1264) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 257;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_10050B46C, v0 + 768);
}

uint64_t sub_10050B46C()
{
  sub_100511988(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10050B520, v1, v0);
}

uint64_t sub_10050B520()
{
  v1 = *(v0 + 1264);

  return _swift_task_switch(sub_10050B5B8, v1, 0);
}

uint64_t sub_10050B5B8()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1272) = qword_100786178;

  return _swift_task_switch(sub_10050B650, v1, 0);
}

uint64_t sub_10050B650()
{
  v1 = v0[159];
  v2 = v0[158];
  v3 = sub_100511988(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[160] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[161] = v5;
  *v5 = v0;
  v5[1] = sub_10050B78C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10050B78C()
{
  v1 = *(*v0 + 1272);

  return _swift_task_switch(sub_10050B8B8, v1, 0);
}

uint64_t sub_10050B8B8()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_10050B928, 0, 0);
}

uint64_t sub_10050B928()
{
  v53 = v0;
  if (*(v0 + 762) == 1)
  {
    v12 = *(v0 + 1024);
    static Logger.restore.getter();

    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 1112);
      v17 = *(v0 + 1104);
      v47 = *(v0 + 1040);
      v49 = *(v0 + 1032);
      v51 = *(v0 + 1072);
      v18 = *(v0 + 1024);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v19 = 138412802;
      *(v19 + 4) = v18;
      *v20 = v18;
      *(v19 + 12) = 2082;
      v21 = v18;
      *(v19 + 14) = sub_1002346CC(v17, v16, &v52);
      *(v19 + 22) = 2082;
      *(v19 + 24) = sub_1002346CC(v17, v16, &v52);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@][%{public}s] Attempting to remove bundleID: %{public}s", v19, 0x20u);
      sub_1001F8084(v20);

      swift_arrayDestroy();

      v22 = *(v47 + 8);
      v22(v51, v49);
    }

    else
    {
      v33 = *(v0 + 1072);
      v34 = *(v0 + 1040);
      v35 = *(v0 + 1032);

      v22 = *(v34 + 8);
      v22(v33, v35);
    }

    *(v0 + 1320) = v22;
    v36 = objc_allocWithZone(IXApplicationIdentity);
    v37 = String._bridgeToObjectiveC()();
    v38 = [v36 initWithBundleID:v37];
    *(v0 + 1328) = v38;

    v32 = [objc_allocWithZone(IXUninstallOptions) init];
    *(v0 + 1336) = v32;
    if (!v32)
    {
      __break(1u);
      return static AppDistributor.requestAuthorization(_:account:)(v32, v31, v30, v29);
    }

    v39 = v32;
    [v32 setWaitForDeletion:0];
    [v39 setRequestUserConfirmation:0];
    v40 = sub_1005119D0();
    v41 = swift_task_alloc();
    *(v0 + 1344) = v41;
    v41[2] = v40;
    v41[3] = v38;
    v41[4] = v39;
    v42 = swift_task_alloc();
    *(v0 + 1352) = v42;
    type metadata accessor for IXUninstallDisposition(0);
    *v42 = v0;
    v42[1] = sub_10050C3C8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1008, 0, 0, 0xD00000000000001BLL, 0x80000001006C4EE0, sub_100271CF0, v41, v43);
  }

  else
  {
    if (!*(v0 + 762))
    {
      v1 = *(v0 + 1024);
      static Logger.restore.getter();

      v2 = v1;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v45 = *(v0 + 1120);
        v46 = *(v0 + 1128);
        v44 = *(v0 + 1112);
        v5 = *(v0 + 1104);
        v6 = *(v0 + 1040);
        v48 = *(v0 + 1032);
        v50 = *(v0 + 1088);
        v7 = *(v0 + 1024);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v8 = 138412802;
        *(v8 + 4) = v7;
        *v9 = v7;
        *(v8 + 12) = 2082;
        v10 = v7;
        *(v8 + 14) = sub_1002346CC(v5, v44, &v52);
        *(v8 + 22) = 2082;
        *(v8 + 24) = sub_1002346CC(v45, v46, &v52);
        _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Attempting to prompt for authorization with distributorID: %{public}s", v8, 0x20u);
        sub_1001F8084(v9);

        swift_arrayDestroy();

        v11 = *(v6 + 8);
        v11(v50, v48);
      }

      else
      {
        v25 = *(v0 + 1088);
        v26 = *(v0 + 1040);
        v27 = *(v0 + 1032);

        v11 = *(v26 + 8);
        v11(v25, v27);
      }

      *(v0 + 1296) = v11;
      v28 = swift_task_alloc();
      *(v0 + 1304) = v28;
      *v28 = v0;
      v28[1] = sub_10050BFC8;
      v29 = *(v0 + 1144);
      v30 = *(v0 + 1136);
      v31 = *(v0 + 1128);
      v32 = *(v0 + 1120);

      return static AppDistributor.requestAuthorization(_:account:)(v32, v31, v30, v29);
    }

    sub_10000710C(v0 + 952);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10050BFC8()
{
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v2 = sub_10050C1A8;
  }

  else
  {
    v2 = sub_10050C0DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10050C0DC()
{
  sub_10000710C(v0 + 952);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050C1A8()
{
  v1 = *(v0 + 1024);
  static Logger.restore.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1024);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2112;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to authorize with marketplace name due to error: %@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 1296))(*(v0 + 1080), *(v0 + 1032));
  sub_10000710C(v0 + 952);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10050C3C8()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_10050C7C0;
  }

  else
  {

    v2 = sub_10050C4E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10050C4E4()
{
  v23 = v0;
  v1 = *(v0 + 1024);
  static Logger.restore.getter();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1328);
  v7 = *(v0 + 1320);
  if (v5)
  {
    v8 = *(v0 + 1112);
    v9 = *(v0 + 1104);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 1064);
    v10 = *(v0 + 1024);
    v18 = *(v0 + 1336);
    v19 = *(v0 + 1320);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 138412802;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    v13 = v10;
    *(v11 + 14) = sub_1002346CC(v9, v8, &v22);
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_1002346CC(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Removed bundleID: %{public}s", v11, 0x20u);
    sub_1001F8084(v12);

    swift_arrayDestroy();

    v19(v21, v20);
  }

  else
  {
    v14 = *(v0 + 1064);
    v15 = *(v0 + 1032);

    v7(v14, v15);
  }

  sub_10000710C(v0 + 952);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10050C7C0()
{
  v25 = v0;
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[128];

  static Logger.restore.getter();

  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[165];
  if (v7)
  {
    v9 = v0[139];
    v10 = v0[138];
    v22 = v0[129];
    v23 = v0[132];
    v11 = v0[128];
    v21 = v0[165];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2082;
    v15 = v11;
    *(v12 + 14) = sub_1002346CC(v10, v9, &v24);
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    v13[1] = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%{public}s] Failed to remove with marketplace app due to error: %@", v12, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v14);

    v21(v23, v22);
  }

  else
  {
    v17 = v0[132];
    v18 = v0[129];

    v8(v17, v18);
  }

  sub_10000710C((v0 + 119));

  v19 = v0[1];

  return v19();
}

uint64_t sub_10050CAC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v3[128] = *a3;
  v3[127] = a2;
  v3[126] = a1;
  v6 = type metadata accessor for Logger();
  v3[129] = v6;
  v3[130] = *(v6 - 8);
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v3[133] = swift_task_alloc();
  v3[122] = v5;
  v3[123] = &off_100770208;
  v3[119] = a3;

  return _swift_task_switch(sub_10050CBFC, 0, 0);
}

uint64_t sub_10050CBFC()
{
  v28 = v0;
  v1 = *(v0 + 1008);
  v2 = v1[4];
  *(v0 + 1072) = v2;
  v3 = v1[5];
  *(v0 + 1080) = v3;
  if (v1[9])
  {
    v4 = v1[8];
    v5 = v1[9];
  }

  else
  {

    v4 = v2;
    v5 = v3;
  }

  *(v0 + 1088) = v5;
  v6 = *(v0 + 1016);

  static Logger.restore.getter();

  v7 = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1064);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1032);
  if (v10)
  {
    v26 = v4;
    v14 = *(v0 + 1016);
    v25 = *(v0 + 1032);
    v15 = swift_slowAlloc();
    v24 = v2;
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 138412802;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2082;
    v17 = v14;
    v4 = v26;
    *(v15 + 14) = sub_1002346CC(v24, v3, &v27);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1002346CC(v26, v5, &v27);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@][%{public}s] Prompting to install %s", v15, 0x20u);
    sub_1001F8084(v16);

    swift_arrayDestroy();

    (*(v12 + 8))(v11, v25);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 1024);
  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 760) = 19;
  *(v0 + 808) = v4;
  *(v0 + 816) = v5;
  *(v0 + 872) = 16;
  *(v0 + 880) = v4;
  *(v0 + 888) = v5;
  *(v0 + 944) = 18;
  v19 = *(*sub_100006D8C((v0 + 952), v18) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1096) = v19;
  swift_bridgeObjectRetain_n();

  v20 = swift_allocObject();
  *(v0 + 1104) = v20;
  *(v20 + 16) = 7;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0;
  *(v20 + 80) = 41;
  *(v20 + 88) = v19;
  v21 = swift_task_alloc();
  *(v0 + 1112) = v21;
  *(v21 + 16) = &unk_1006B07F0;
  *(v21 + 24) = v20;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v22 = swift_task_alloc();
  *(v0 + 1120) = v22;
  *v22 = v0;
  v22[1] = sub_10050CFB0;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_10050CFB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[141] = a1;
  v3[142] = a2;

  v4 = swift_task_alloc();
  v3[143] = v4;
  *v4 = v6;
  v4[1] = sub_10050D124;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_10050D124(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[144] = a1;
  v3[145] = a2;

  v4 = swift_task_alloc();
  v3[146] = v4;
  *v4 = v6;
  v4[1] = sub_10050D298;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10050D298(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_10050D3C0, v3 + 656);
}

uint64_t sub_10050D3DC()
{
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1176);
  v5 = *(v0 + 1128);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1192) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 257;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_10050D4BC, v0 + 768);
}

uint64_t sub_10050D4BC()
{
  sub_100511988(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10050D570, v1, v0);
}

uint64_t sub_10050D570()
{
  v1 = *(v0 + 1192);

  return _swift_task_switch(sub_10050D608, v1, 0);
}

uint64_t sub_10050D608()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1200) = qword_100786178;

  return _swift_task_switch(sub_10050D6A0, v1, 0);
}

uint64_t sub_10050D6A0()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = sub_100511988(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[151] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[152] = v5;
  *v5 = v0;
  v5[1] = sub_10050D7DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10050D7DC()
{
  v1 = *(*v0 + 1200);

  return _swift_task_switch(sub_10050D908, v1, 0);
}

uint64_t sub_10050D908()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_10050D978, 0, 0);
}

uint64_t sub_10050D978()
{
  v39 = v0;
  if (*(v0 + 762) == 1)
  {
    v13 = *(v0 + 1016);
    static Logger.restore.getter();

    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1080);
      v18 = *(v0 + 1072);
      v19 = *(v0 + 1040);
      v35 = *(v0 + 1032);
      v37 = *(v0 + 1048);
      v20 = *(v0 + 1016);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 2082;
      v24 = v20;
      *(v21 + 14) = sub_1002346CC(v18, v17, &v38);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@][%{public}s] Alternative button", v21, 0x16u);
      sub_1001F8084(v22);

      sub_10000710C(v23);

      (*(v19 + 8))(v37, v35);
    }

    else
    {
      v29 = *(v0 + 1048);
      v30 = *(v0 + 1040);
      v31 = *(v0 + 1032);

      (*(v30 + 8))(v29, v31);
    }
  }

  else if (!*(v0 + 762))
  {
    v1 = *(v0 + 1016);
    static Logger.restore.getter();

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1080);
      v6 = *(v0 + 1072);
      v7 = *(v0 + 1040);
      v34 = *(v0 + 1032);
      v36 = *(v0 + 1056);
      v8 = *(v0 + 1016);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2082;
      v12 = v8;
      *(v9 + 14) = sub_1002346CC(v6, v5, &v38);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Primary", v9, 0x16u);
      sub_1001F8084(v10);

      sub_10000710C(v11);

      (*(v7 + 8))(v36, v34);
    }

    else
    {
      v25 = *(v0 + 1056);
      v26 = *(v0 + 1040);
      v27 = *(v0 + 1032);

      (*(v26 + 8))(v25, v27);
    }

    v28 = 1;
    goto LABEL_11;
  }

  v28 = 0;
LABEL_11:
  sub_10000710C(v0 + 952);

  v32 = *(v0 + 8);

  return v32(v28);
}

uint64_t sub_10050DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[127] = a2;
  v5[126] = a1;
  v9 = type metadata accessor for Logger();
  v5[128] = v9;
  v5[129] = *(v9 - 8);
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[122] = a4;
  v5[123] = a5;
  v10 = sub_10020A748(v5 + 119);
  (*(*(a4 - 8) + 16))(v10, a3, a4);

  return _swift_task_switch(sub_10050DE64, 0, 0);
}

uint64_t sub_10050DE64()
{
  v27 = v0;
  v1 = *(v0 + 1008);
  v2 = v1[4];
  *(v0 + 1064) = v2;
  v3 = v1[5];
  *(v0 + 1072) = v3;
  if (v1[9])
  {
    v4 = v1[8];
    v5 = v1[9];
  }

  else
  {

    v4 = v2;
    v5 = v3;
  }

  *(v0 + 1080) = v5;
  v6 = *(v0 + 1016);

  static Logger.restore.getter();

  v7 = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1056);
  v12 = *(v0 + 1032);
  v13 = *(v0 + 1024);
  if (v10)
  {
    v25 = v4;
    v14 = *(v0 + 1016);
    v24 = *(v0 + 1024);
    v15 = swift_slowAlloc();
    v23 = v2;
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 138412802;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2082;
    v17 = v14;
    v4 = v25;
    *(v15 + 14) = sub_1002346CC(v23, v3, &v26);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1002346CC(v25, v5, &v26);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@][%{public}s] Prompting to install %s", v15, 0x20u);
    sub_1001F8084(v16);

    swift_arrayDestroy();

    (*(v12 + 8))(v11, v24);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 760) = 19;
  *(v0 + 808) = v4;
  *(v0 + 816) = v5;
  *(v0 + 872) = 16;
  *(v0 + 880) = v4;
  *(v0 + 888) = v5;
  *(v0 + 944) = 18;
  v18 = *(*sub_100006D8C((v0 + 952), *(v0 + 976)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1088) = v18;
  swift_bridgeObjectRetain_n();

  v19 = swift_allocObject();
  *(v0 + 1096) = v19;
  *(v19 + 16) = 7;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0;
  *(v19 + 80) = 41;
  *(v19 + 88) = v18;
  v20 = swift_task_alloc();
  *(v0 + 1104) = v20;
  *(v20 + 16) = &unk_1006B0798;
  *(v20 + 24) = v19;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v21 = swift_task_alloc();
  *(v0 + 1112) = v21;
  *v21 = v0;
  v21[1] = sub_10050E218;

  return sub_1006600F0(v0 + 696);
}