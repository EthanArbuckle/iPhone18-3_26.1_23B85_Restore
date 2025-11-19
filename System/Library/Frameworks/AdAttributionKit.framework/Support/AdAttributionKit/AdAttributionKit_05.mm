id sub_100072410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoutStoryEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007246C()
{
  result = qword_10023B628;
  if (!qword_10023B628)
  {
    type metadata accessor for SnoutStoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B628);
  }

  return result;
}

id sub_100072664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostbackEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000726C0()
{
  result = qword_10023B670;
  if (!qword_10023B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B670);
  }

  return result;
}

uint64_t sub_100072714()
{
  v1[450] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[451] = v2;
  v3 = *(v2 - 8);
  v1[452] = v3;
  v4 = *(v3 + 64) + 15;
  v1[453] = swift_task_alloc();
  v5 = type metadata accessor for RegisterConversionTask();
  v1[454] = v5;
  v6 = *(v5 - 8);
  v1[455] = v6;
  v1[456] = *(v6 + 64);
  v1[457] = swift_task_alloc();
  v7 = type metadata accessor for AccountIdentity();
  v1[458] = v7;
  v8 = *(v7 - 8);
  v1[459] = v8;
  v9 = *(v8 + 64) + 15;
  v1[460] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v1[461] = v10;
  v11 = *(v10 - 8);
  v1[462] = v11;
  v12 = *(v11 + 64) + 15;
  v1[463] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v1[464] = v13;
  v14 = *(v13 - 8);
  v1[465] = v14;
  v15 = *(v14 + 64) + 15;
  v1[466] = swift_task_alloc();

  return _swift_task_switch(sub_10007294C, 0, 0);
}

uint64_t sub_10007294C()
{
  v1 = *(*(v0 + 3600) + 99);
  *(v0 + 2628) = v1;
  if (ConversionType.isInstall.getter(v1))
  {
    v2 = *(v0 + 3600);
    sub_10000DA7C(v2 + 32, v2[35]);
    v3 = v2[4];
    *(v0 + 3736) = v3;
    v4 = swift_task_alloc();
    *(v0 + 3744) = v4;
    *v4 = v0;
    v4[1] = sub_100072BF0;

    return sub_1001260DC(v3, 0, 1);
  }

  else
  {
    v6 = *(v0 + 3600);
    v7 = *v6;
    v8 = v6[1];
    *(v0 + 1952) = v6[2];
    *(v0 + 1936) = v8;
    *(v0 + 1920) = v7;
    v9 = v6[3];
    v10 = v6[4];
    v11 = v6[5];
    *(v0 + 2015) = *(v6 + 95);
    *(v0 + 2000) = v11;
    *(v0 + 1984) = v10;
    *(v0 + 1968) = v9;
    *(v0 + 3760) = *(v0 + 1952);
    v13 = v6[1];
    v12 = v6[2];
    *(v0 + 2520) = *v6;
    *(v0 + 2536) = v13;
    *(v0 + 2552) = v12;
    v15 = v6[4];
    v14 = v6[5];
    v16 = v6[3];
    *(v0 + 2616) = *(v6 + 48);
    *(v0 + 2584) = v15;
    *(v0 + 2600) = v14;
    *(v0 + 2568) = v16;
    *(v0 + 3768) = *(v6 + 20);
    *(v0 + 3776) = *(v6 + 21);
    *(v0 + 3784) = *(v6 + 22);
    v17 = *v6;
    v18 = v6[1];
    *(v0 + 1728) = v6[2];
    *(v0 + 1712) = v18;
    *(v0 + 1696) = v17;
    v19 = v6[3];
    v20 = v6[4];
    v21 = v6[5];
    *(v0 + 1792) = *(v6 + 48);
    *(v0 + 1776) = v21;
    *(v0 + 1760) = v20;
    *(v0 + 1744) = v19;
    *(v0 + 1794) = 1;
    v22 = swift_allocObject();
    *(v0 + 3792) = v22;
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1776);
    *(v22 + 80) = *(v0 + 1760);
    *(v22 + 96) = v24;
    *(v22 + 111) = *(v0 + 1791);
    v25 = *(v0 + 1712);
    *(v22 + 16) = *(v0 + 1696);
    *(v22 + 32) = v25;
    *(v22 + 48) = *(v0 + 1728);
    *(v22 + 64) = v23;
    sub_10001B9B0(v0 + 1920, v0 + 2032);
    sub_10001B9B0(v0 + 1696, v0 + 2152);
    v26 = swift_task_alloc();
    *(v0 + 3800) = v26;
    *v26 = v0;
    v26[1] = sub_100073530;

    return (sub_10010EB50)();
  }
}

uint64_t sub_100072BF0()
{
  v2 = *(*v1 + 3744);
  v5 = *v1;
  *(*v1 + 3752) = v0;

  if (v0)
  {
    v3 = sub_100072EFC;
  }

  else
  {
    v3 = sub_100072D04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100072D04()
{
  v1 = *(v0 + 3600);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 1952) = v1[2];
  *(v0 + 1936) = v3;
  *(v0 + 1920) = v2;
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *(v0 + 2015) = *(v1 + 95);
  *(v0 + 2000) = v6;
  *(v0 + 1984) = v5;
  *(v0 + 1968) = v4;
  *(v0 + 3760) = *(v0 + 1952);
  v8 = v1[1];
  v7 = v1[2];
  *(v0 + 2520) = *v1;
  *(v0 + 2536) = v8;
  *(v0 + 2552) = v7;
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];
  *(v0 + 2616) = *(v1 + 48);
  *(v0 + 2584) = v10;
  *(v0 + 2600) = v9;
  *(v0 + 2568) = v11;
  *(v0 + 3768) = *(v1 + 20);
  *(v0 + 3776) = *(v1 + 21);
  *(v0 + 3784) = *(v1 + 22);
  v12 = *v1;
  v13 = v1[1];
  *(v0 + 1728) = v1[2];
  *(v0 + 1712) = v13;
  *(v0 + 1696) = v12;
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  *(v0 + 1792) = *(v1 + 48);
  *(v0 + 1776) = v16;
  *(v0 + 1760) = v15;
  *(v0 + 1744) = v14;
  *(v0 + 1794) = 1;
  v17 = swift_allocObject();
  *(v0 + 3792) = v17;
  v18 = *(v0 + 1744);
  v19 = *(v0 + 1776);
  *(v17 + 80) = *(v0 + 1760);
  *(v17 + 96) = v19;
  *(v17 + 111) = *(v0 + 1791);
  v20 = *(v0 + 1712);
  *(v17 + 16) = *(v0 + 1696);
  *(v17 + 32) = v20;
  *(v17 + 48) = *(v0 + 1728);
  *(v17 + 64) = v18;
  sub_10001B9B0(v0 + 1920, v0 + 2032);
  sub_10001B9B0(v0 + 1696, v0 + 2152);
  v21 = swift_task_alloc();
  *(v0 + 3800) = v21;
  *v21 = v0;
  v21[1] = sub_100073530;

  return (sub_10010EB50)();
}

uint64_t sub_100072EFC()
{
  v1 = *(v0 + 3752);
  v56 = *(v0 + 3736);
  *(v0 + 4152) = v1;
  v2 = *(v0 + 3600);
  v3 = *(*(v0 + 3632) + 64);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register conversion: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 2628);
  v53 = (v0 + 2618);
  v54 = (v0 + 2505);
  v10 = *(v0 + 3728);
  v50 = (v0 + 1802);
  v51 = (v0 + 2498);
  v47 = (v0 + 1690);
  v48 = (v0 + 2378);
  v11 = *(v0 + 3720);
  v52 = (v0 + 1907);
  v42 = *(v0 + 3712);
  v57 = *(v0 + 3632);
  v12 = *(v0 + 3624);
  v13 = *(v0 + 3616);
  v14 = *(v0 + 3608);
  v55 = *(v0 + 3600);

  v49 = v9 > 1;
  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v45 = v16;
  v46 = v15;
  v43 = v18;
  v44 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v10, v12);
  LOBYTE(v9) = v20;
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v10, v42);
  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v47;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v46;
  *(v0 + 928) = v45;
  *(v0 + 936) = v44;
  *(v0 + 944) = v43;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v21;
  *(v0 + 976) = v23;
  *(v0 + 984) = v25;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v26 = *(v0 + 4176);
  *(v0 + 1008) = v26;
  *(v0 + 1009) = *v48;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v27 = *(v0 + 4192);
  *(v0 + 1024) = v27;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v50;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v28 = *(v0 + 4232);
  *(v0 + 1040) = v28;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v51;
  *(v0 + 1048) = 0;
  v29 = *(v0 + 4272);
  *(v0 + 1056) = v29;
  *(v0 + 1057) = v49;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v53;
  *(v0 + 1064) = 0;
  v30 = *(v0 + 4256);
  *(v0 + 1072) = v30;
  v31 = *v52;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v31;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v32 = *v54;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v32;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v22) = *v47;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v22;
  *(v0 + 1144) = v46;
  *(v0 + 1152) = v45;
  *(v0 + 1160) = v44;
  *(v0 + 1168) = v43;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v21;
  *(v0 + 1200) = v23;
  *(v0 + 1208) = v25;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v26;
  v33 = *v48;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v33;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v27;
  *(v0 + 1249) = 3;
  v34 = *v50;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v34;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v28;
  v35 = *v51;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v35;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v29;
  *(v0 + 1281) = v49;
  *(v0 + 1282) = 3;
  v36 = *v53;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v36;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v30;
  v37 = *v52;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v37;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v38 = *v54;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v38;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v55 + *(v57 + 68)), *(v55 + *(v57 + 68) + 24));
  v39 = type metadata accessor for SnoutManager();
  v40 = swift_task_alloc();
  *(v0 + 4160) = v40;
  *v40 = v0;
  v40[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v56, 0, 0, v39, &off_100223858);
}

uint64_t sub_100073530()
{
  v2 = *v1;
  v3 = *(*v1 + 3800);
  v11 = *v1;
  *(*v1 + 3808) = v0;

  if (v0)
  {
    v4 = *(v2 + 2552);
    *(v2 + 2320) = *(v2 + 2568);
    v5 = *(v2 + 2600);
    *(v2 + 2336) = *(v2 + 2584);
    *(v2 + 2352) = v5;
    v6 = *(v2 + 2536);
    *(v2 + 2272) = *(v2 + 2520);
    *(v2 + 2288) = v6;
    v7 = *(v2 + 3792);
    *(v2 + 2368) = *(v2 + 2616);
    *(v2 + 2304) = v4;
    *(v2 + 2370) = 1;
    sub_10003BF38(v2 + 2272);

    v8 = sub_100076AD8;
  }

  else
  {
    v9 = *(v2 + 3792);

    v8 = sub_100073698;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100073698()
{
  v1 = (v0 + 2520);
  v2 = *(*(v0 + 3600) + 120);
  *(v0 + 2629) = v2;
  if (v2 == 1)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v5 = v0 + 2392;
      v6 = 2490;
LABEL_9:
      v7 = *(v0 + 2600);
      *(v5 + 64) = *(v0 + 2584);
      *(v5 + 80) = v7;
      *(v5 + 96) = *(v0 + 2616);
      v8 = *(v0 + 2536);
      *v5 = *v1;
      *(v5 + 16) = v8;
      v9 = *(v0 + 2568);
      *(v5 + 32) = *(v0 + 2552);
      *(v5 + 48) = v9;
      *(v0 + v6) = 1;
      sub_10003BF38(v5);
      v10 = *(v0 + 3600);
      v11 = *(v10 + 128);
      *(v0 + 3840) = v11;
      v12 = *(v10 + 136);
      *(v0 + 2630) = v12;
      if (v12)
      {
LABEL_20:
        v36 = *(v0 + 3632);
        v37 = *(v0 + 1936);
        *(v0 + 3888) = v37;
        v38 = *(v0 + 1944);
        *(v0 + 3896) = v38;
        sub_10000DA7C((v10 + *(v36 + 68)), *(v10 + *(v36 + 68) + 24));
        v39 = type metadata accessor for SnoutManager();
        *(v0 + 3904) = v39;
        v40 = swift_task_alloc();
        *(v0 + 3912) = v40;
        *v40 = v0;
        v40[1] = sub_100074524;
        v41 = *(v0 + 3760);

        return (sub_10016E534)(v41, v37, v38, v39, &off_100223858);
      }

      if (*(v0 + 2628) && *(v0 + 2628) != 1)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          v10 = *(v0 + 3600);
          goto LABEL_20;
        }
      }

      v42 = *(v0 + 3728);
      v43 = *(v0 + 3720);
      v44 = *(v0 + 3712);
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v46 = v45;
      v47 = *(v43 + 8);
      *(v0 + 3848) = v47;
      *(v0 + 3856) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      result = v47(v42, v44);
      v48 = v46 * 1000.0;
      if (COERCE__INT64(fabs(v46 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v48 > -1.0)
        {
          if (v48 < 1.84467441e19)
          {
            v49 = *(v0 + 3760);
            v50 = v48;
            v51 = *(v0 + 3600);
            *(v0 + 4200) = 1;
            v53 = v51[23];
            v52 = v51[24];
            v54 = v51[25];
            v55 = swift_allocObject();
            *(v0 + 3864) = v55;
            *(v55 + 16) = 0;
            *(v55 + 24) = *(v0 + 4200);
            *(v55 + 25) = *(v0 + 1795);
            *(v55 + 28) = *(v0 + 1798);
            *(v55 + 32) = v49;
            *(v55 + 40) = v11;
            *(v55 + 48) = v50;
            v57 = sub_10010ECB0;
            v56 = swift_task_alloc();
            *(v0 + 3872) = v56;
            *v56 = v0;
            v56[1] = sub_100074274;
            v33 = sub_100079004;
            v34 = v55;
            v32 = v53;
            v31 = v52;
            v30 = v54;
            goto LABEL_28;
          }

LABEL_36:
          __break(1u);
          return result;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  if (*(v0 + 2628) && *(v0 + 2628) != 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = v0 + 1808;
      v6 = 1906;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 3728);
  v14 = *(v0 + 3720);
  v15 = *(v0 + 3712);
  v16 = *(v0 + 1712);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1728);
  v19 = *(v0 + 2600);
  *(v0 + 1648) = *(v0 + 2584);
  *(v0 + 1664) = v19;
  *(v0 + 1680) = *(v0 + 2616);
  v20 = *(v0 + 2536);
  *(v0 + 1584) = *v1;
  *(v0 + 1600) = v20;
  v21 = *(v0 + 2568);
  *(v0 + 1616) = *(v0 + 2552);
  *(v0 + 1632) = v21;
  *(v0 + 1682) = 1;

  sub_10003BF38(v0 + 1584);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  result = (*(v14 + 8))(v13, v15);
  v25 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v25 <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v25 >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(v0 + 2628);
  v27 = v25;
  *(v0 + 4264) = 1;
  v28 = swift_allocObject();
  *(v0 + 3816) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = *(v0 + 4264);
  *(v28 + 25) = *(v0 + 2019);
  *(v28 + 28) = *(v0 + 2022);
  *(v28 + 32) = v16;
  *(v28 + 40) = v17;
  *(v28 + 48) = v18;
  *(v28 + 56) = v26;
  *(v28 + 57) = *(v0 + 2258);
  *(v28 + 60) = *(v0 + 2261);
  v57 = sub_10010EB50;
  *(v28 + 64) = v27;
  v29 = swift_task_alloc();
  *(v0 + 3824) = v29;
  *v29 = v0;
  v29[1] = sub_100073D68;
  v30 = *(v0 + 3784);
  v31 = *(v0 + 3776);
  v32 = *(v0 + 3768);
  v33 = sub_10007906C;
  v34 = v28;
LABEL_28:

  return v57(v57, v33, v34, v32, v31, v30);
}

uint64_t sub_100073D68()
{
  v2 = *v1;
  v3 = *(*v1 + 3824);
  v4 = *v1;
  *(*v1 + 3832) = v0;

  v5 = *(v2 + 3816);

  if (v0)
  {
    v6 = sub_10007710C;
  }

  else
  {
    v6 = sub_100073E9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100073E9C()
{
  v1 = *(v0 + 3600);
  v2 = *(v1 + 128);
  *(v0 + 3840) = v2;
  v3 = *(v1 + 136);
  *(v0 + 2630) = v3;
  if (v3)
  {
LABEL_6:
    v5 = *(v0 + 3632);
    v6 = *(v0 + 1936);
    *(v0 + 3888) = v6;
    v7 = *(v0 + 1944);
    *(v0 + 3896) = v7;
    sub_10000DA7C((v1 + *(v5 + 68)), *(v1 + *(v5 + 68) + 24));
    v8 = type metadata accessor for SnoutManager();
    *(v0 + 3904) = v8;
    v9 = swift_task_alloc();
    *(v0 + 3912) = v9;
    *v9 = v0;
    v9[1] = sub_100074524;
    v10 = *(v0 + 3760);

    return (sub_10016E534)(v10, v6, v7, v8, &off_100223858);
  }

  if (*(v0 + 2628) && *(v0 + 2628) != 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v1 = *(v0 + 3600);
      goto LABEL_6;
    }
  }

  v12 = *(v0 + 3728);
  v13 = *(v0 + 3720);
  v14 = *(v0 + 3712);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = *(v13 + 8);
  *(v0 + 3848) = v17;
  *(v0 + 3856) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v17(v12, v14);
  v18 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = *(v0 + 3760);
  v20 = v18;
  v21 = *(v0 + 3600);
  *(v0 + 4200) = 1;
  v23 = v21[23];
  v22 = v21[24];
  v24 = v21[25];
  v25 = swift_allocObject();
  *(v0 + 3864) = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = *(v0 + 4200);
  *(v25 + 25) = *(v0 + 1795);
  *(v25 + 28) = *(v0 + 1798);
  *(v25 + 32) = v19;
  *(v25 + 40) = v2;
  *(v25 + 48) = v20;
  v26 = swift_task_alloc();
  *(v0 + 3872) = v26;
  *v26 = v0;
  v26[1] = sub_100074274;

  return sub_10010ECB0(sub_10010ECB0, sub_100079004, v25, v23, v22, v24);
}

uint64_t sub_100074274()
{
  v2 = *v1;
  v3 = *(*v1 + 3872);
  v4 = *v1;
  *(*v1 + 3880) = v0;

  v5 = *(v2 + 3864);

  if (v0)
  {
    v6 = sub_100077740;
  }

  else
  {
    v6 = sub_1000743A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000743A8()
{
  v1 = v0[454];
  v2 = v0[450];
  v3 = v0[242];
  v0[486] = v3;
  v4 = v0[243];
  v0[487] = v4;
  sub_10000DA7C((v2 + *(v1 + 68)), *(v2 + *(v1 + 68) + 24));
  v5 = type metadata accessor for SnoutManager();
  v0[488] = v5;
  v6 = swift_task_alloc();
  v0[489] = v6;
  *v6 = v0;
  v6[1] = sub_100074524;
  v7 = v0[470];

  return (sub_10016E534)(v7, v3, v4, v5, &off_100223858);
}

uint64_t sub_100074524()
{
  v1 = *(*v0 + 3912);
  v3 = *v0;

  return _swift_task_switch(sub_100074620, 0, 0);
}

uint64_t sub_100074620()
{
  v1 = *(v0 + 3728);
  v2 = *(v0 + 3720);
  v3 = *(v0 + 3712);
  v4 = *(v0 + 3600);
  v5 = sub_10000DA7C(v4 + 32, v4[35]);
  *(v0 + 3920) = v5;
  v6 = v4[13];
  *(v0 + 3928) = v6;
  v7 = v4[14];
  *(v0 + 3936) = v7;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  v10 = *(v2 + 8);
  *(v0 + 3944) = v10;
  *(v0 + 3952) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v10(v1, v3);
  v12 = v9 * 1000.0;
  if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 3888);
  v22 = *(v0 + 3896);
  v18 = v7;
  v13 = *(v0 + 2630);
  v14 = *(v0 + 3760);
  v19 = *(v0 + 2628);
  v20 = *(v0 + 2629);
  v23 = *(v0 + 3840);
  v24 = v12;
  v25 = v5[4];
  v26 = v5[3];
  v15 = v5[5];
  v16 = swift_allocObject();
  *(v0 + 3960) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 25) = *(v0 + 1683);
  *(v16 + 28) = *(v0 + 1686);
  *(v16 + 32) = v14;
  *(v16 + 40) = v6;
  *(v16 + 48) = v18;
  *(v16 + 56) = 0;
  *(v16 + 64) = 1;
  *(v16 + 65) = 3;
  *(v16 + 67) = 0;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  *(v16 + 88) = v19;
  *(v16 + 89) = v20;
  *(v16 + 90) = 0;
  *(v16 + 95) = *(v0 + 2627);
  *(v16 + 91) = *(v0 + 2623);
  *(v16 + 96) = v23;
  *(v16 + 104) = v13;
  *(v16 + 108) = *(v0 + 2254);
  *(v16 + 105) = *(v0 + 2251);
  *(v16 + 112) = v24;
  *(v16 + 120) = 0;
  *(v16 + 128) = 1;
  *(v16 + 129) = *(v0 + 2265);
  *(v16 + 132) = *(v0 + 2268);
  *(v16 + 136) = 0;
  *(v16 + 144) = 1;
  *(v16 + 145) = *(v0 + 2371);
  *(v16 + 148) = *(v0 + 2374);
  *(v16 + 152) = 0;

  v17 = swift_task_alloc();
  *(v0 + 3968) = v17;
  *v17 = v0;
  v17[1] = sub_10007493C;

  return sub_10010E9F0(sub_10010E9F0, sub_100078CB8, v16, v26, v25, v15);
}

uint64_t sub_10007493C()
{
  v2 = *v1;
  v3 = *(*v1 + 3968);
  v4 = *v1;
  *(*v1 + 3976) = v0;

  v5 = *(v2 + 3960);

  if (v0)
  {
    v6 = sub_10007511C;
  }

  else
  {
    v6 = sub_100074A70;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_100074A70()
{
  if (*(v0 + 2628) > 1u)
  {
    sub_10000DA7C((*(v0 + 3600) + 256), *(*(v0 + 3600) + 280));
    v19 = swift_task_alloc();
    *(v0 + 4072) = v19;
    *v19 = v0;
    v19[1] = sub_100076158;
    v20 = *(v0 + 3896);
    v21 = *(v0 + 3888);

    return sub_100137450(v21, v20, 2);
  }

  else
  {
    v1 = *(v0 + 3936);
    v2 = *(v0 + 3928);
    *(v0 + 2631) = *(v0 + 2016);
    v3 = v2 == 0xD000000000000012 && 0x80000001001CB3C0 == v1;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = *(v0 + 3600);
      v5 = *(*(v0 + 3632) + 64);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Deferred conversion attribution and scheduling", v8, 2u);
      }

      result = [objc_opt_self() defaultStore];
      if (!result)
      {
        goto LABEL_35;
      }

      v10 = result;
      v11 = [result ams_activeiTunesAccount];
      *(v0 + 4008) = v11;

      if (v11)
      {
        v12 = v11;
        if ([v12 ams_accountID])
        {
          v13 = *(v0 + 3680);
          AccountIdentity.init(amsAccountID:)();

          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "<Country code> Account found", v16, 2u);
          }

          type metadata accessor for AccountCachedServerData();
          *(v0 + 4016) = static AccountCachedServerData.shared.getter();
          v17 = swift_task_alloc();
          *(v0 + 4024) = v17;
          *v17 = v0;
          v17[1] = sub_100075B78;
          v18 = *(v0 + 3680);

          return sub_1000A6454(10, v18, 0);
        }
      }

      v28 = *(v0 + 3952);
      v29 = *(v0 + 3944);
      v30 = *(v0 + 3936);
      v31 = *(v0 + 3896);
      v32 = *(v0 + 3728);
      v33 = *(v0 + 3712);

      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v35 = v34;
      result = v29(v32, v33);
      v36 = v35 * 1000.0;
      if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v36 > -1.0)
      {
        if (v36 < 1.84467441e19)
        {
          v37 = *(v0 + 2631);
          v38 = *(v0 + 3936);
          v39 = *(v0 + 3928);
          v40 = *(v0 + 3896);
          v41 = *(v0 + 3888);
          v42 = *(v0 + 3760);
          *(v0 + 2720) = 0;
          *(v0 + 2728) = 1;
          *(v0 + 2736) = v42;
          *(v0 + 2744) = v37;
          *(v0 + 2752) = v36;
          *(v0 + 2760) = v41;
          *(v0 + 2768) = v40;
          *(v0 + 2776) = v39;
          *(v0 + 2784) = v38;
          *(v0 + 2792) = 0;
          *(v0 + 2800) = 0u;
          *(v0 + 2816) = 1;
          *(v0 + 2824) = v42;
          *(v0 + 2832) = v37;
          *(v0 + 2840) = v36;
          *(v0 + 2848) = v41;
          *(v0 + 2856) = v40;
          *(v0 + 2864) = v39;
          *(v0 + 2872) = v38;
          *(v0 + 2880) = 0u;
          sub_100047148(v0 + 2720, v0 + 2632);
          sub_10003BD1C(v0 + 2808);
          v43 = *(v0 + 2800);
          v54 = *(v0 + 2768);
          v55 = *(v0 + 2784);
          v53 = *(v0 + 2752);
          v44 = *(v0 + 2744);
          v45 = *(v0 + 2736);
          v46 = *(v0 + 2720);
          v47 = *(v0 + 2728);
          v48 = *(v0 + 3600);
          *(v0 + 4184) = v47;
          v49 = v48[26];
          v56 = v48[27];
          v50 = v48[28];
          v51 = swift_allocObject();
          *(v0 + 4048) = v51;
          *(v51 + 16) = v46;
          *(v51 + 24) = v47;
          *(v51 + 25) = *(v0 + 2385);
          *(v51 + 28) = *(v0 + 2388);
          *(v51 + 32) = v45;
          *(v51 + 40) = v44;
          *(v51 + 41) = *(v0 + 2491);
          *(v51 + 44) = *(v0 + 2494);
          *(v51 + 48) = v53;
          *(v51 + 64) = v54;
          *(v51 + 80) = v55;
          *(v51 + 96) = v43;
          v52 = swift_task_alloc();
          *(v0 + 4056) = v52;
          *v52 = v0;
          v52[1] = sub_100075F88;

          return (sub_10010EE10)();
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    v22 = *(v0 + 3600) + *(*(v0 + 3632) + 64);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Register conversion attribution", v25, 2u);
    }

    v26 = swift_task_alloc();
    *(v0 + 3992) = v26;
    *v26 = v0;
    v26[1] = sub_10007557C;
    v27 = *(v0 + 3600);

    return sub_1000782F4();
  }
}

uint64_t sub_10007511C()
{
  v1 = *(v0 + 3976);
  v2 = *(v0 + 3704);
  v3 = *(v0 + 3696);
  v4 = *(v0 + 3688);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 3976);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Creation of pending postback failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v0 + 3976);
  v13 = *(v0 + 3920);
  v14 = *(v0 + 3896);
  v15 = *(v0 + 3704);
  v16 = *(v0 + 3696);
  v17 = *(v0 + 3688);
  v18 = *(v0 + 2628);

  (*(v16 + 8))(v15, v17);
  swift_errorRetain();
  sub_1000C7DDC(v18, v12, (v0 + 1360));

  sub_10000DA7C((v13 + 560), *(v13 + 584));
  v19 = swift_task_alloc();
  *(v0 + 3984) = v19;
  *v19 = v0;
  v19[1] = sub_1000753CC;
  v20 = *(v0 + 3904);
  v21 = *(v0 + 3888);

  return (sub_10016E27C)(v0 + 1360, v21, v14, 1, v20, &off_100223858);
}

uint64_t sub_1000753CC()
{
  v1 = *v0;
  v2 = *(*v0 + 3984);
  v4 = *v0;

  sub_10003AE8C(v1 + 1360);

  return _swift_task_switch(sub_1000754D0, 0, 0);
}

uint64_t sub_1000754D0()
{
  v1 = v0[497];
  swift_willThrow();
  v2 = v0[497];
  v3 = v0[466];
  v4 = v0[463];
  v5 = v0[460];
  v6 = v0[457];
  v7 = v0[453];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007557C()
{
  v1 = *(*v0 + 3992);
  v3 = *v0;

  return _swift_task_switch(sub_100075678, 0, 0);
}

uint64_t sub_100075678()
{
  sub_10000DA7C((*(v0 + 3600) + 256), *(*(v0 + 3600) + 280));
  v1 = swift_task_alloc();
  *(v0 + 4000) = v1;
  *v1 = v0;
  v1[1] = sub_100075728;
  v2 = *(v0 + 3896);
  v3 = *(v0 + 3888);
  v4 = *(v0 + 2628);

  return sub_100137450(v3, v2, v4);
}

uint64_t sub_100075728()
{
  v2 = *v1;
  v3 = *(*v1 + 4000);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[466];
    v6 = v2[463];
    v7 = v2[460];
    v8 = v2[457];
    v9 = v2[453];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_1000758A8, 0, 0);
  }
}

uint64_t sub_1000758A8()
{
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v3 = *(v0 + 3936);
  v4 = *(v0 + 3896);
  v5 = *(v0 + 3728);
  v6 = *(v0 + 3712);
  v7 = *(v0 + 3600);
  v9 = *(v7 + 144);
  v8 = *(v7 + 152);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  result = v2(v5, v6);
  v13 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = *(v0 + 2631);
  v15 = *(v0 + 3936);
  v16 = *(v0 + 3928);
  v17 = *(v0 + 3896);
  v18 = *(v0 + 3888);
  v19 = *(v0 + 3760);
  *(v0 + 3072) = 0;
  *(v0 + 3080) = 1;
  *(v0 + 3088) = v19;
  *(v0 + 3096) = v14;
  *(v0 + 3104) = v13;
  *(v0 + 3112) = v18;
  *(v0 + 3120) = v17;
  *(v0 + 3128) = v16;
  *(v0 + 3136) = v15;
  *(v0 + 3144) = v9;
  *(v0 + 3152) = v8;
  *(v0 + 3160) = 0;
  *(v0 + 3168) = 1;
  *(v0 + 3176) = v19;
  *(v0 + 3184) = v14;
  *(v0 + 3192) = v13;
  *(v0 + 3200) = v18;
  *(v0 + 3208) = v17;
  *(v0 + 3216) = v16;
  *(v0 + 3224) = v15;
  *(v0 + 3232) = v9;
  *(v0 + 3240) = v8;
  sub_100047148(v0 + 3072, v0 + 2984);
  sub_10003BD1C(v0 + 3160);
  v20 = *(v0 + 3152);
  v31 = *(v0 + 3120);
  v32 = *(v0 + 3136);
  v30 = *(v0 + 3104);
  v21 = *(v0 + 3096);
  v22 = *(v0 + 3088);
  v23 = *(v0 + 3072);
  v24 = *(v0 + 3080);
  v25 = *(v0 + 3600);
  *(v0 + 4184) = v24;
  v26 = v25[26];
  v33 = v25[27];
  v27 = v25[28];
  v28 = swift_allocObject();
  *(v0 + 4048) = v28;
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  *(v28 + 25) = *(v0 + 2385);
  *(v28 + 28) = *(v0 + 2388);
  *(v28 + 32) = v22;
  *(v28 + 40) = v21;
  *(v28 + 41) = *(v0 + 2491);
  *(v28 + 44) = *(v0 + 2494);
  *(v28 + 48) = v30;
  *(v28 + 64) = v31;
  *(v28 + 80) = v32;
  *(v28 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 4056) = v29;
  *v29 = v0;
  v29[1] = sub_100075F88;

  return sub_10010EE10();
}

uint64_t sub_100075B78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 4024);
  v5 = *(*v2 + 4016);
  v7 = *v2;
  *(v3 + 4032) = a1;
  *(v3 + 4040) = a2;

  return _swift_task_switch(sub_100075C98, 0, 0);
}

uint64_t sub_100075C98()
{
  v1 = *(v0 + 3680);
  v2 = *(v0 + 3672);
  v3 = *(v0 + 3664);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 4040);
  v5 = *(v0 + 4032);
  v6 = *(v0 + 3952);
  v7 = *(v0 + 3944);
  v8 = *(v0 + 3936);
  v9 = *(v0 + 3896);
  v10 = *(v0 + 3728);
  v11 = *(v0 + 3712);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  result = v7(v10, v11);
  v15 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 2631);
  v17 = *(v0 + 3936);
  v18 = *(v0 + 3928);
  v19 = *(v0 + 3896);
  v20 = *(v0 + 3888);
  v21 = *(v0 + 3760);
  *(v0 + 2720) = 0;
  *(v0 + 2728) = 1;
  *(v0 + 2736) = v21;
  *(v0 + 2744) = v16;
  *(v0 + 2752) = v15;
  *(v0 + 2760) = v20;
  *(v0 + 2768) = v19;
  *(v0 + 2776) = v18;
  *(v0 + 2784) = v17;
  *(v0 + 2792) = v5;
  *(v0 + 2800) = v4;
  *(v0 + 2808) = 0;
  *(v0 + 2816) = 1;
  *(v0 + 2824) = v21;
  *(v0 + 2832) = v16;
  *(v0 + 2840) = v15;
  *(v0 + 2848) = v20;
  *(v0 + 2856) = v19;
  *(v0 + 2864) = v18;
  *(v0 + 2872) = v17;
  *(v0 + 2880) = v5;
  *(v0 + 2888) = v4;
  sub_100047148(v0 + 2720, v0 + 2632);
  sub_10003BD1C(v0 + 2808);
  v22 = *(v0 + 2800);
  v33 = *(v0 + 2768);
  v34 = *(v0 + 2784);
  v32 = *(v0 + 2752);
  v23 = *(v0 + 2744);
  v24 = *(v0 + 2736);
  v25 = *(v0 + 2720);
  v26 = *(v0 + 2728);
  v27 = *(v0 + 3600);
  *(v0 + 4184) = v26;
  v28 = v27[26];
  v35 = v27[27];
  v29 = v27[28];
  v30 = swift_allocObject();
  *(v0 + 4048) = v30;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 25) = *(v0 + 2385);
  *(v30 + 28) = *(v0 + 2388);
  *(v30 + 32) = v24;
  *(v30 + 40) = v23;
  *(v30 + 41) = *(v0 + 2491);
  *(v30 + 44) = *(v0 + 2494);
  *(v30 + 48) = v32;
  *(v30 + 64) = v33;
  *(v30 + 80) = v34;
  *(v30 + 96) = v22;
  v31 = swift_task_alloc();
  *(v0 + 4056) = v31;
  *v31 = v0;
  v31[1] = sub_100075F88;

  return sub_10010EE10();
}

uint64_t sub_100075F88()
{
  v2 = *v1;
  v3 = *(*v1 + 4056);
  v4 = *v1;
  *(*v1 + 4064) = v0;

  v5 = *(v2 + 4048);

  if (v0)
  {
    v6 = sub_100078024;
  }

  else
  {
    v6 = sub_1000760BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000760BC()
{
  v1 = v0[466];
  v2 = v0[463];
  v3 = v0[460];
  v4 = v0[457];
  v5 = v0[453];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100076158()
{
  v2 = *v1;
  v3 = *(*v1 + 4072);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[466];
    v6 = v2[463];
    v7 = v2[460];
    v8 = v2[457];
    v9 = v2[453];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_1000762D8, 0, 0);
  }
}

uint64_t sub_1000762D8()
{
  v1 = v0[457];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[450];
  v5 = v4[26];
  v0[510] = v5;
  v6 = v4[27];
  v0[511] = v6;
  v7 = v4[28];
  v0[512] = v7;
  sub_100078CD4(v4, v1);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[513] = v9;
  sub_100078EAC(v1, v9 + v8);
  v10 = swift_task_alloc();
  v0[514] = v10;
  *v10 = v0;
  v10[1] = sub_10007641C;

  return (sub_10010FF18)(v0 + 439, sub_100078F10, v9, v5, v6, v7);
}

uint64_t sub_10007641C()
{
  v2 = *v1;
  v3 = *(*v1 + 4112);
  v7 = *v1;
  *(*v1 + 4120) = v0;

  v4 = *(v2 + 4104);

  if (v0)
  {
    v5 = sub_100077EDC;
  }

  else
  {
    v5 = sub_100076540;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100076540()
{
  v1 = *(v0 + 3544);
  *(v0 + 3472) = *(v0 + 3560);
  *(v0 + 3456) = v1;
  *(v0 + 3488) = *(v0 + 3576);
  v2 = *(v0 + 3528);
  *(v0 + 3424) = *(v0 + 3512);
  *(v0 + 3504) = *(v0 + 3592);
  *(v0 + 3440) = v2;
  if (*(v0 + 3472))
  {
    v3 = *(v0 + 3504);
    v4 = *(v0 + 3496);

    sub_10000DAF8(v0 + 3424, &qword_10023B690, &qword_1001B9260);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 3952);
  v6 = *(v0 + 3944);
  v7 = *(v0 + 3936);
  v8 = *(v0 + 3896);
  v9 = *(v0 + 3728);
  v10 = *(v0 + 3712);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  result = v6(v9, v10);
  v14 = v12 * 1000.0;
  if (COERCE__INT64(fabs(v12 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = *(v0 + 3936);
  v16 = *(v0 + 3928);
  v17 = *(v0 + 3896);
  v18 = *(v0 + 3888);
  v19 = *(v0 + 3760);
  *(v0 + 2896) = 0;
  *(v0 + 2904) = 1;
  *(v0 + 2912) = v19;
  *(v0 + 2920) = 2;
  *(v0 + 2928) = v14;
  *(v0 + 2936) = v18;
  *(v0 + 2944) = v17;
  *(v0 + 2952) = v16;
  *(v0 + 2960) = v15;
  *(v0 + 2968) = v4;
  *(v0 + 2976) = v3;
  *(v0 + 3336) = 0;
  *(v0 + 3344) = 1;
  *(v0 + 3352) = v19;
  *(v0 + 3360) = 2;
  *(v0 + 3368) = v14;
  *(v0 + 3376) = v18;
  *(v0 + 3384) = v17;
  *(v0 + 3392) = v16;
  *(v0 + 3400) = v15;
  *(v0 + 3408) = v4;
  *(v0 + 3416) = v3;
  sub_100047148(v0 + 2896, v0 + 3248);
  sub_10003BD1C(v0 + 3336);
  v20 = swift_allocObject();
  *(v20 + 96) = *(v0 + 2976);
  *(v0 + 4128) = v20;
  v21 = *(v0 + 2944);
  *(v20 + 48) = *(v0 + 2928);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v0 + 2960);
  v22 = *(v0 + 2912);
  *(v20 + 16) = *(v0 + 2896);
  *(v20 + 32) = v22;
  v23 = swift_task_alloc();
  *(v0 + 4136) = v23;
  *v23 = v0;
  v23[1] = sub_1000767F4;
  v24 = *(v0 + 4096);
  v25 = *(v0 + 4088);
  v26 = *(v0 + 4080);

  return sub_10010EE10(sub_10010EE10, sub_100079528, v20, v26, v25, v24);
}

uint64_t sub_1000767F4()
{
  v2 = *v1;
  v3 = *(*v1 + 4136);
  v4 = *v1;
  *(*v1 + 4144) = v0;

  v5 = *(v2 + 4128);

  if (v0)
  {
    v6 = sub_100077F80;
  }

  else
  {
    v6 = sub_1000760BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100076928()
{
  v1 = *v0;
  v2 = *(*v0 + 4160);
  v4 = *v0;

  sub_10003AE8C(v1 + 912);

  return _swift_task_switch(sub_100076A2C, 0, 0);
}

uint64_t sub_100076A2C()
{
  v1 = v0[519];
  swift_willThrow();
  v2 = v0[519];
  v3 = v0[466];
  v4 = v0[463];
  v5 = v0[460];
  v6 = v0[457];
  v7 = v0[453];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100076AD8()
{
  v1 = *(v0 + 3808);
  v56 = *(v0 + 3760);
  *(v0 + 4152) = v1;
  v2 = *(v0 + 3600);
  v3 = *(*(v0 + 3632) + 64);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register conversion: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 2628);
  v53 = (v0 + 2618);
  v54 = (v0 + 2505);
  v10 = *(v0 + 3728);
  v50 = (v0 + 1802);
  v51 = (v0 + 2498);
  v47 = (v0 + 1690);
  v48 = (v0 + 2378);
  v11 = *(v0 + 3720);
  v52 = (v0 + 1907);
  v42 = *(v0 + 3712);
  v57 = *(v0 + 3632);
  v12 = *(v0 + 3624);
  v13 = *(v0 + 3616);
  v14 = *(v0 + 3608);
  v55 = *(v0 + 3600);

  v49 = v9 > 1;
  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v45 = v16;
  v46 = v15;
  v43 = v18;
  v44 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v10, v12);
  LOBYTE(v9) = v20;
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v10, v42);
  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v47;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v46;
  *(v0 + 928) = v45;
  *(v0 + 936) = v44;
  *(v0 + 944) = v43;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v21;
  *(v0 + 976) = v23;
  *(v0 + 984) = v25;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v26 = *(v0 + 4176);
  *(v0 + 1008) = v26;
  *(v0 + 1009) = *v48;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v27 = *(v0 + 4192);
  *(v0 + 1024) = v27;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v50;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v28 = *(v0 + 4232);
  *(v0 + 1040) = v28;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v51;
  *(v0 + 1048) = 0;
  v29 = *(v0 + 4272);
  *(v0 + 1056) = v29;
  *(v0 + 1057) = v49;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v53;
  *(v0 + 1064) = 0;
  v30 = *(v0 + 4256);
  *(v0 + 1072) = v30;
  v31 = *v52;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v31;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v32 = *v54;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v32;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v22) = *v47;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v22;
  *(v0 + 1144) = v46;
  *(v0 + 1152) = v45;
  *(v0 + 1160) = v44;
  *(v0 + 1168) = v43;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v21;
  *(v0 + 1200) = v23;
  *(v0 + 1208) = v25;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v26;
  v33 = *v48;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v33;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v27;
  *(v0 + 1249) = 3;
  v34 = *v50;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v34;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v28;
  v35 = *v51;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v35;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v29;
  *(v0 + 1281) = v49;
  *(v0 + 1282) = 3;
  v36 = *v53;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v36;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v30;
  v37 = *v52;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v37;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v38 = *v54;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v38;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v55 + *(v57 + 68)), *(v55 + *(v57 + 68) + 24));
  v39 = type metadata accessor for SnoutManager();
  v40 = swift_task_alloc();
  *(v0 + 4160) = v40;
  *v40 = v0;
  v40[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v56, 0, 0, v39, &off_100223858);
}

uint64_t sub_10007710C()
{
  v1 = *(v0 + 3832);
  v56 = *(v0 + 3760);
  *(v0 + 4152) = v1;
  v2 = *(v0 + 3600);
  v3 = *(*(v0 + 3632) + 64);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register conversion: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 2628);
  v53 = (v0 + 2618);
  v54 = (v0 + 2505);
  v10 = *(v0 + 3728);
  v50 = (v0 + 1802);
  v51 = (v0 + 2498);
  v47 = (v0 + 1690);
  v48 = (v0 + 2378);
  v11 = *(v0 + 3720);
  v52 = (v0 + 1907);
  v42 = *(v0 + 3712);
  v57 = *(v0 + 3632);
  v12 = *(v0 + 3624);
  v13 = *(v0 + 3616);
  v14 = *(v0 + 3608);
  v55 = *(v0 + 3600);

  v49 = v9 > 1;
  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v45 = v16;
  v46 = v15;
  v43 = v18;
  v44 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v10, v12);
  LOBYTE(v9) = v20;
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v10, v42);
  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v47;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v46;
  *(v0 + 928) = v45;
  *(v0 + 936) = v44;
  *(v0 + 944) = v43;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v21;
  *(v0 + 976) = v23;
  *(v0 + 984) = v25;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v26 = *(v0 + 4176);
  *(v0 + 1008) = v26;
  *(v0 + 1009) = *v48;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v27 = *(v0 + 4192);
  *(v0 + 1024) = v27;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v50;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v28 = *(v0 + 4232);
  *(v0 + 1040) = v28;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v51;
  *(v0 + 1048) = 0;
  v29 = *(v0 + 4272);
  *(v0 + 1056) = v29;
  *(v0 + 1057) = v49;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v53;
  *(v0 + 1064) = 0;
  v30 = *(v0 + 4256);
  *(v0 + 1072) = v30;
  v31 = *v52;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v31;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v32 = *v54;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v32;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v22) = *v47;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v22;
  *(v0 + 1144) = v46;
  *(v0 + 1152) = v45;
  *(v0 + 1160) = v44;
  *(v0 + 1168) = v43;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v21;
  *(v0 + 1200) = v23;
  *(v0 + 1208) = v25;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v26;
  v33 = *v48;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v33;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v27;
  *(v0 + 1249) = 3;
  v34 = *v50;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v34;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v28;
  v35 = *v51;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v35;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v29;
  *(v0 + 1281) = v49;
  *(v0 + 1282) = 3;
  v36 = *v53;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v36;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v30;
  v37 = *v52;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v37;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v38 = *v54;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v38;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v55 + *(v57 + 68)), *(v55 + *(v57 + 68) + 24));
  v39 = type metadata accessor for SnoutManager();
  v40 = swift_task_alloc();
  *(v0 + 4160) = v40;
  *v40 = v0;
  v40[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v56, 0, 0, v39, &off_100223858);
}

uint64_t sub_100077740()
{
  v1 = *(v0 + 3880);
  v2 = *(v0 + 3600);
  v3 = *(*(v0 + 3632) + 64);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3880);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create conversion tag: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v59 = (v0 + 2515);
  v10 = *(v0 + 3880);
  v52 = (v0 + 1914);
  v53 = (v0 + 2145);
  v46 = *(v0 + 3848);
  v47 = *(v0 + 3856);
  v55 = (v0 + 2026);
  v56 = (v0 + 2138);
  v57 = (v0 + 2131);
  v58 = (v0 + 2510);
  v11 = *(v0 + 2628);
  v12 = *(v0 + 3728);
  v13 = *(v0 + 3712);
  v14 = *(v0 + 3624);
  v15 = *(v0 + 3616);
  v16 = *(v0 + 3608);
  v60 = *(v0 + 3600);
  v61 = *(v0 + 3632);

  v54 = v11 > 1;
  swift_errorRetain();
  v17 = sub_1000C7C10(v10);
  v50 = v18;
  v51 = v17;
  v48 = v20;
  v49 = v19;
  static Date.now.getter();
  (*(v15 + 104))(v14, enum case for Calendar.Component.hour(_:), v16);
  v21 = sub_100025808(v12, v14);
  LOBYTE(v11) = v22;
  (*(v15 + 8))(v14, v16);
  v46(v12, v13);
  if (v11)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v24 = [objc_opt_self() buildVersion];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v0 + 4208) = 1;
  *(v0 + 4216) = 1;
  *(v0 + 4224) = 1;
  *(v0 + 4240) = 1;
  *(v0 + 4248) = 1;
  *(v0 + 16) = 5;
  *(v0 + 18) = *v52;
  *(v0 + 22) = *(v0 + 1918);
  *(v0 + 24) = v51;
  *(v0 + 32) = v50;
  *(v0 + 40) = v49;
  *(v0 + 48) = v48;
  *(v0 + 56) = 0u;
  *(v0 + 72) = v23;
  *(v0 + 80) = v25;
  *(v0 + 88) = v27;
  *(v0 + 96) = 0;
  *(v0 + 97) = 33686018;
  *(v0 + 101) = 0;
  *(v0 + 104) = 0;
  v28 = *(v0 + 4208);
  *(v0 + 112) = v28;
  *(v0 + 113) = *v53;
  *(v0 + 116) = *(v0 + 2148);
  *(v0 + 120) = 0;
  v29 = *(v0 + 4216);
  *(v0 + 128) = v29;
  *(v0 + 129) = 3;
  *(v0 + 130) = *v55;
  *(v0 + 134) = *(v0 + 2030);
  *(v0 + 136) = 0;
  v30 = *(v0 + 4224);
  *(v0 + 144) = v30;
  v31 = *v56;
  *(v0 + 148) = *(v0 + 2141);
  *(v0 + 145) = v31;
  *(v0 + 152) = 0;
  v32 = *(v0 + 4240);
  *(v0 + 160) = v32;
  *(v0 + 161) = v54;
  *(v0 + 162) = 3;
  *(v0 + 167) = *(v0 + 2514);
  *(v0 + 163) = *v58;
  *(v0 + 168) = 0;
  v33 = *(v0 + 4248);
  *(v0 + 176) = v33;
  *(v0 + 177) = *v57;
  *(v0 + 180) = *(v0 + 2134);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v34 = *v59;
  *(v0 + 207) = *(v0 + 2519);
  *(v0 + 203) = v34;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 464) = 5;
  v35 = *v52;
  *(v0 + 470) = *(v0 + 1918);
  *(v0 + 466) = v35;
  *(v0 + 472) = v51;
  *(v0 + 480) = v50;
  *(v0 + 488) = v49;
  *(v0 + 496) = v48;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v23;
  *(v0 + 528) = v25;
  *(v0 + 536) = v27;
  *(v0 + 544) = 0;
  *(v0 + 545) = 33686018;
  *(v0 + 549) = 0;
  *(v0 + 552) = 0;
  *(v0 + 560) = v28;
  v36 = *v53;
  *(v0 + 564) = *(v0 + 2148);
  *(v0 + 561) = v36;
  *(v0 + 568) = 0;
  *(v0 + 576) = v29;
  *(v0 + 577) = 3;
  v37 = *v55;
  *(v0 + 582) = *(v0 + 2030);
  *(v0 + 578) = v37;
  *(v0 + 584) = 0;
  *(v0 + 592) = v30;
  v38 = *v56;
  *(v0 + 596) = *(v0 + 2141);
  *(v0 + 593) = v38;
  *(v0 + 600) = 0;
  *(v0 + 608) = v32;
  *(v0 + 609) = v54;
  *(v0 + 610) = 3;
  v39 = *v58;
  *(v0 + 615) = *(v0 + 2514);
  *(v0 + 611) = v39;
  *(v0 + 616) = 0;
  *(v0 + 624) = v33;
  v40 = *v57;
  *(v0 + 628) = *(v0 + 2134);
  *(v0 + 625) = v40;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v41 = *v59;
  *(v0 + 655) = *(v0 + 2519);
  *(v0 + 651) = v41;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 16, v0 + 240);
  sub_10003AE8C(v0 + 464);
  sub_10000DA7C((v60 + *(v61 + 68)), *(v60 + *(v61 + 68) + 24));
  v42 = type metadata accessor for SnoutManager();
  v43 = swift_task_alloc();
  *(v0 + 4168) = v43;
  *v43 = v0;
  v43[1] = sub_100077D2C;
  v44 = *(v0 + 3760);

  return (sub_10016E27C)(v0 + 16, v44, 0, 0, v42, &off_100223858);
}

uint64_t sub_100077D2C()
{
  v1 = *v0;
  v2 = *(*v0 + 4168);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100077E30, 0, 0);
}

uint64_t sub_100077E30()
{
  v1 = v0[485];
  swift_willThrow();
  v2 = v0[485];
  v3 = v0[466];
  v4 = v0[463];
  v5 = v0[460];
  v6 = v0[457];
  v7 = v0[453];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100077EDC()
{
  v1 = v0[515];
  v2 = v0[466];
  v3 = v0[463];
  v4 = v0[460];
  v5 = v0[457];
  v6 = v0[453];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100077F80()
{
  v1 = v0[518];
  v2 = v0[466];
  v3 = v0[463];
  v4 = v0[460];
  v5 = v0[457];
  v6 = v0[453];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100078024()
{
  v1 = v0[508];
  v2 = v0[466];
  v3 = v0[463];
  v4 = v0[460];
  v5 = v0[457];
  v6 = v0[453];

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for RegisterConversionTask()
{
  result = qword_10023B6F8;
  if (!qword_10023B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078114(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDAEC(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_100078180()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[13];

  return _swift_deallocObject(v0, 115, 7);
}

void sub_1000781EC(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDDC0(a2, v4);

  if (!v2)
  {
  }
}

double sub_100078258@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = static ConversionType.downloadCases.getter();
  sub_1000E217C(v5, v9);

  if (!v2)
  {
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000782F4()
{
  v1[3] = v0;
  v2 = type metadata accessor for RegisterConversionTask();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000783B4, 0, 0);
}

uint64_t sub_1000783B4()
{
  v1 = *(*(v0 + 24) + 32);
  v2 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 16) = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 16];
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 bundleIdentifier];
    if (v7)
    {
      v8 = *(v0 + 24);
      v9 = v7;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 80) = 1;
      v13 = v8[29];
      v14 = v8[30];
      v15 = v8[31];
      v16 = swift_allocObject();
      *(v0 + 56) = v16;
      *(v16 + 16) = 0;
      *(v16 + 24) = *(v0 + 80);
      *(v16 + 32) = v1;
      *(v16 + 40) = v10;
      *(v16 + 48) = v12;
      v17 = swift_task_alloc();
      *(v0 + 64) = v17;
      *v17 = v0;
      v17[1] = sub_100078740;

      return sub_10010E48C(v17, sub_100079114, v16, v13, v14, v15);
    }

    sub_100079088();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v19 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v20 = *(*(v0 + 32) + 64);
  sub_100078CD4(*(v0 + 24), *(v0 + 40));
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 40);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 134218242;
    v27 = *(v24 + 32);
    sub_10005C8D8(v24);
    *(v25 + 4) = v27;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v28;
    *v26 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to add metadata mapping for app %llu with error: %@", v25, 0x16u);
    sub_10000DAF8(v26, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_10005C8D8(*(v0 + 40));
  }

  v29 = *(v0 + 40);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100078740()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);

  if (v0)
  {
    v6 = sub_100078934;
  }

  else
  {
    v6 = sub_1000788A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000788A0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100078934()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 32) + 64);
  sub_100078CD4(*(v0 + 24), *(v0 + 40));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    v9 = *(v6 + 32);
    sub_10005C8D8(v6);
    *(v7 + 4) = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to add metadata mapping for app %llu with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_10005C8D8(*(v0 + 40));
  }

  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

void sub_100078B0C(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDE00(a2, v4);

  if (!v2)
  {
  }
}

void sub_100078B78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = [a1 connection];
  v7 = a3(a2, v6);

  if (!v3)
  {
  }
}

uint64_t sub_100078BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100072714();
}

uint64_t sub_100078C78()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100078CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterConversionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078D38()
{
  v1 = (type metadata accessor for RegisterConversionTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 48);

  v7 = *(v0 + v3 + 64);

  v8 = *(v0 + v3 + 88);

  v9 = *(v0 + v3 + 112);

  v10 = *(v0 + v3 + 152);

  v11 = *(v0 + v3 + 168);

  v12 = *(v0 + v3 + 192);

  v13 = *(v0 + v3 + 216);

  v14 = *(v0 + v3 + 240);

  sub_10000DB58((v0 + v3 + 256));
  sub_10000DB58((v0 + v3 + 296));
  v15 = v1[18];
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  sub_10000DB58((v0 + v3 + v1[19]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100078EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterConversionTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078F90()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100079034()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100079088()
{
  result = qword_10023B698;
  if (!qword_10023B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B698);
  }

  return result;
}

uint64_t sub_1000790DC()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100079168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
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
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100079228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000792CC()
{
  sub_100079458(319, &qword_10023A198);
  if (v0 <= 0x3F)
  {
    sub_100079458(319, &qword_10023A190);
    if (v1 <= 0x3F)
    {
      sub_100054FCC(319, &qword_10023AE00);
      if (v2 <= 0x3F)
      {
        sub_100054FCC(319, &qword_10023AE18);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Logger();
          if (v4 <= 0x3F)
          {
            sub_100054FCC(319, &unk_10023AE20);
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

void sub_100079458(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000794A4(uint64_t a1)
{
  result = sub_100079088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000794D0()
{
  result = qword_10023B778;
  if (!qword_10023B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B778);
  }

  return result;
}

uint64_t sub_100079540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1136) = v5;
  *(v6 + 1305) = a5;
  *(v6 + 1128) = a4;
  *(v6 + 1120) = a3;
  *(v6 + 1112) = a2;
  *(v6 + 1104) = a1;
  v7 = type metadata accessor for URL();
  *(v6 + 1144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 1152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Component();
  *(v6 + 1176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 1184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 1192) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v6 + 1200) = v13;
  v14 = *(v13 - 8);
  *(v6 + 1208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 1216) = swift_task_alloc();

  return _swift_task_switch(sub_1000796D8, 0, 0);
}

uint64_t sub_1000796D8()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1152);
  v29 = *(v0 + 1144);
  v30 = *(v0 + 1168);
  v28 = *(v0 + 1112);
  static Date.now.getter();
  (*(v5 + 104))(v4, enum case for Calendar.Component.hour(_:), v6);
  v8 = sub_100025808(v1, v4);
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v10)
  {
    v8 = 0;
  }

  v11 = [objc_opt_self() buildVersion];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 1304) = 1;
  *(v0 + 1312) = 1;
  *(v0 + 1320) = 1;
  *(v0 + 1328) = 1;
  *(v0 + 1336) = 1;
  *(v0 + 464) = 2562;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v8;
  *(v0 + 528) = v12;
  *(v0 + 536) = v14;
  *(v0 + 544) = 0;
  *(v0 + 545) = 33686018;
  *(v0 + 549) = 2;
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0;
  *(v0 + 576) = 769;
  *(v0 + 584) = 0;
  v15 = *(v0 + 1320);
  *(v0 + 592) = v15;
  *(v0 + 600) = 0;
  v16 = *(v0 + 1328);
  *(v0 + 608) = v16;
  *(v0 + 609) = 770;
  *(v0 + 616) = 0;
  v17 = *(v0 + 1336);
  *(v0 + 624) = v17;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 240) = 2562;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = v8;
  *(v0 + 304) = v12;
  *(v0 + 312) = v14;
  *(v0 + 320) = 0;
  *(v0 + 325) = 2;
  *(v0 + 321) = 33686018;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 769;
  *(v0 + 360) = 0;
  *(v0 + 368) = v15;
  *(v0 + 376) = 0;
  *(v0 + 384) = v16;
  *(v0 + 385) = 770;
  *(v0 + 392) = 0;
  *(v0 + 400) = v17;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 464, v0 + 688);
  sub_10003AE8C(v0 + 240);
  v18 = *(v0 + 480);
  *(v0 + 1224) = *(v0 + 464);
  *(v0 + 1240) = v18;
  *(v0 + 1256) = *(v0 + 496);
  v19 = *(v0 + 648);
  *(v0 + 1040) = *(v0 + 632);
  *(v0 + 1056) = v19;
  *(v0 + 1072) = *(v0 + 664);
  *(v0 + 1088) = *(v0 + 680);
  v20 = *(v0 + 584);
  *(v0 + 976) = *(v0 + 568);
  *(v0 + 992) = v20;
  v21 = *(v0 + 616);
  *(v0 + 1008) = *(v0 + 600);
  *(v0 + 1024) = v21;
  v22 = *(v0 + 520);
  *(v0 + 912) = *(v0 + 504);
  *(v0 + 928) = v22;
  v23 = *(v0 + 552);
  *(v0 + 944) = *(v0 + 536);
  *(v0 + 960) = v23;
  (*(v7 + 16))(v30, v28, v29);
  v24 = swift_task_alloc();
  *(v0 + 1264) = v24;
  *v24 = v0;
  v24[1] = sub_100079A10;
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1112);

  return sub_10007A2D4(v25, v26);
}

uint64_t sub_100079A10()
{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v6 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v2[161] = v2[62];
    v2[162] = v2[60];
    v4 = sub_10007A0DC;
  }

  else
  {
    v4 = sub_100079B34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100079B34()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = *(v0 + 1256);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1224);
  sub_10000DA7C(*(v0 + 1136), *(*(v0 + 1136) + 24));
  *(v0 + 32) = v14;
  *(v0 + 16) = v15;
  *(v0 + 48) = v5;
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  *(v0 + 232) = *(v0 + 1088);
  v6 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v6;
  v7 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v7;
  v8 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v8;
  v9 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 104) = v9;
  v10 = type metadata accessor for SnoutManager();
  v11 = swift_task_alloc();
  *(v0 + 1280) = v11;
  *v11 = v0;
  v11[1] = sub_100079D44;
  v12 = *(v0 + 1120);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_100079D44()
{
  v1 = *v0;
  v2 = *(*v0 + 1280);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100079E48, 0, 0);
}

uint64_t sub_100079E48()
{
  if (*(v0 + 1305))
  {
    sub_10000CDE0(&qword_10023B780, &unk_1001B93D0);
    v1 = *(type metadata accessor for URLQueryItem() - 8);
    v2 = *(v1 + 72);
    v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    *(swift_allocObject() + 16) = xmmword_1001B93B0;
    v4 = PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();
    v6 = *v4;
    v5 = v4[1];

    URLQueryItem.init(name:value:)();
  }

  else
  {
    *(v0 + 1096) = *(v0 + 1128);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000CDE0(&qword_10023B780, &unk_1001B93D0);
    v7 = *(type metadata accessor for URLQueryItem() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001B93B0;
    v10 = PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];

    URLQueryItem.init(name:value:)();
  }

  v13 = *(v0 + 1216);
  v14 = *(v0 + 1192);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1104);

  URL.appending(queryItems:)();

  (*(v17 + 8))(v15, v18);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10007A0DC()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1288);
  v3 = sub_1000C7C10(*(v0 + 1272));
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = *(v0 + 1224);
  sub_10000DA7C(*(v0 + 1136), *(*(v0 + 1136) + 24));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v11 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v11;
  v12 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v12;
  v13 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v13;
  v14 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v10;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 40) = v7;
  *(v0 + 48) = v9;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v14;
  v15 = type metadata accessor for SnoutManager();
  v16 = swift_task_alloc();
  *(v0 + 1280) = v16;
  *v16 = v0;
  v16[1] = sub_100079D44;
  v17 = *(v0 + 1120);

  return (sub_10016E27C)(v0 + 16, v17, 0, 0, v15, &off_100223858);
}

uint64_t sub_10007A2D4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URLQueryItem();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = *(*(sub_10000CDE0(&qword_10023B788, &qword_1001B93E0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for URLComponents();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10007A484, 0, 0);
}

uint64_t sub_10007A484()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[7];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000DAF8(v0[15], &qword_10023B788, &qword_1001B93E0);
    sub_10007B120();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[18];
    v8 = v0[14];
    v7 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }

  v15 = v0 + 2;
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  result = URLComponents.queryItems.modify();
  v16 = result;
  v52 = v17;
  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_20;
  }

  v49 = *(v18 + 16);
  v48 = result;
  v19 = 0;
  if (!v49)
  {
    v31 = 0;
LABEL_19:
    sub_10007B728(v19, v31);
    v16 = v48;
    v15 = v0 + 2;
LABEL_20:
    v16(v15, 0);
    v35 = swift_task_alloc();
    v0[19] = v35;
    *v35 = v0;
    v35[1] = sub_10007AA14;

    return sub_10007B174(16);
  }

  v20 = v0[10];
  v53 = (v20 + 8);
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v50 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v54 = *(v20 + 72);
    v51 = *(v20 + 16);
    v51(v0[14], v18 + v50 + v54 * v19, v0[9]);
    v21 = URLQueryItem.name.getter();
    v23 = v22;
    v24 = PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();
    v25 = v21;
    v26 = v0[14];
    v27 = v0[9];
    if (v25 == *v24 && v23 == v24[1])
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = *v53;
    result = (*v53)(v26, v27);
    if (v29)
    {
      goto LABEL_18;
    }

    if (v49 == ++v19)
    {
      v19 = *(*v52 + 16);
      v31 = v19;
      goto LABEL_19;
    }
  }

  v30 = *v53;
  result = (*v53)(v26, v27);
LABEL_18:
  v31 = v19 + 1;
  v32 = v51;
  v33 = *v52;
  v34 = *(*v52 + 16);
  if (v34 - 1 == v19)
  {
    goto LABEL_19;
  }

  v47 = (v0[10] + 40);
  v36 = v50 + v54 * v31;
  while (v31 < v34)
  {
    v32(v0[13], v33 + v36, v0[9]);
    v37 = URLQueryItem.name.getter();
    v39 = v0[13];
    v40 = v0[9];
    if (v37 == *v24 && v38 == v24[1])
    {

      result = v30(v39, v40);
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v30(v39, v40);
      if ((v42 & 1) == 0)
      {
        if (v31 != v19)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v43 = *v52;
          v44 = *(*v52 + 16);
          if (v19 >= v44)
          {
            goto LABEL_48;
          }

          result = (v51)(v0[12], v43 + v50 + v19 * v54, v0[9]);
          if (v31 >= v44)
          {
            goto LABEL_49;
          }

          v51(v0[11], v43 + v36, v0[9]);
          result = swift_isUniquelyReferenced_nonNull_native();
          *v52 = v43;
          if ((result & 1) == 0)
          {
            result = sub_10007B10C(v43);
            v43 = result;
            *v52 = result;
          }

          if (v19 >= v43[2])
          {
            goto LABEL_50;
          }

          v45 = v43 + v50;
          v46 = *v47;
          result = (*v47)(&v45[v19 * v54], v0[11], v0[9]);
          if (v31 >= *(*v52 + 16))
          {
            goto LABEL_51;
          }

          result = v46(*v52 + v36, v0[12], v0[9]);
        }

        ++v19;
      }

      v32 = v51;
    }

    ++v31;
    v33 = *v52;
    v34 = *(*v52 + 16);
    v36 += v54;
    if (v31 == v34)
    {
      if (v31 >= v19)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_45;
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
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10007AA14(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10007AB14, 0, 0);
}

uint64_t sub_10007AB14()
{
  v1 = v0[18];
  if (!v0[20])
  {
    v11 = v0[16];
    v12 = v0[17];
    sub_10007B120();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    (*(v12 + 8))(v1, v11);
    goto LABEL_5;
  }

  v2 = v0[8];
  v3 = v0[18];
  sub_10007ADA8(v0[20]);

  URLComponents.url.getter();
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v6 == 1)
  {
    sub_10000DAF8(v0[8], &qword_10023C230, &qword_1001B4FB0);
    sub_10007B120();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
LABEL_5:
    v14 = v0[18];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = v0[8];

    v21 = v0[1];
    goto LABEL_7;
  }

  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[12];
  v26 = v0[11];
  (*(v5 + 32))(v0[6], v0[8], v4);
  (*(v8 + 8))(v7, v9);

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_10007ADA8(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;

    v10 = URLComponents.queryItems.modify();
    if (!*v11)
    {
      v10(v26, 0);
      goto LABEL_7;
    }

    v12 = v11;
    v25 = v10;

    v13 = v2;
    v14 = sub_10007B914(v12, v8, v9);

    v27 = v12;
    v15 = *v12;
    v16 = *(*v12 + 16);
    if (v16 < v14)
    {
      break;
    }

    if (v14 < 0)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v16, v14 - v16))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v15;
    v24 = v3;
    if (!isUniquelyReferenced_nonNull_native || v14 > v15[3] >> 1)
    {
      if (v16 <= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      v15 = sub_1000890A8(isUniquelyReferenced_nonNull_native, v18, 1, v15);
      *v27 = v15;
    }

    v19 = *(type metadata accessor for URLQueryItem() - 8);
    v20 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    v22 = v21 * v14;
    result = swift_arrayDestroy();
    if (v16 != v14)
    {
      if (v22 < v21 * v16 || &v20[v21 * v14] >= &v20[v21 * v16 + (v15[2] - v16) * v21])
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v22 != v21 * v16)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v15[2];
      v6 = __OFADD__(v5, v14 - v16);
      v7 = v5 - (v16 - v14);
      if (v6)
      {
        goto LABEL_30;
      }

      v15[2] = v7;
    }

    *v27 = v15;
    v25(v26, 0);
    v3 = v24;
    v2 = v13;
LABEL_7:

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10007B018(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

unint64_t sub_10007B120()
{
  result = qword_10023B790;
  if (!qword_10023B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B790);
  }

  return result;
}

uint64_t sub_10007B194()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 arrayForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10007B374;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023B798, qword_1001B93F0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10007B018;
  *(v0 + 104) = &unk_10021A6D0;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10007B374()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10007B508;
  }

  else
  {
    v3 = sub_10007B484;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007B484()
{
  v1 = *(v0 + 144);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10007B508()
{
  v21 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FC70);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 153);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = sub_100157958(v9);
    v15 = sub_10017AD04(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get bag value for key %s, error: %@", v10, 0x16u);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v12);
  }

  else
  {
    v17 = *(v0 + 168);
  }

  v18 = *(v0 + 8);

  return v18(0);
}

unint64_t sub_10007B728(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000890A8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000C04E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10007B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for URLQueryItem() - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (URLQueryItem.name.getter() != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v7;
    }

    ++v7;
    v9 += v10;
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_10007B914(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = *a1;
  v18 = v55;
  result = sub_10007B7E8(*a1, a2, a3);
  if (v18)
  {
    return result;
  }

  v54 = v16;
  v51 = a2;
  v45 = 0;
  if (v20)
  {
    return v17[2];
  }

  v46 = v14;
  v47 = result;
  v43 = a1;
  v44 = v11;
  v21 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_32;
  }

  v23 = v17 + 2;
  v22 = v17[2];
  v24 = v54;
  if (v21 == v22)
  {
    return v47;
  }

  v52 = v7 + 16;
  v48 = v7;
  v49 = (v7 + 8);
  v42 = (v7 + 40);
  while (v21 < v22)
  {
    v25 = *(v7 + 80);
    v55 = v17;
    v50 = (v25 + 32) & ~v25;
    v26 = v17 + v50;
    v27 = *(v7 + 72);
    v28 = *(v7 + 16);
    v53 = v27 * v21;
    v28(v24, &v26[v27 * v21], v6);
    if (URLQueryItem.name.getter() == v51 && v29 == a3)
    {

      v24 = v54;
      result = (*v49)(v54, v6);
      v7 = v48;
LABEL_10:
      v17 = v55;
      goto LABEL_11;
    }

    v30 = a3;
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v49)(v54, v6);
    if (v31)
    {
      a3 = v30;
      v7 = v48;
      v24 = v54;
      goto LABEL_10;
    }

    v32 = v47;
    if (v21 == v47)
    {
      a3 = v30;
      v7 = v48;
      v17 = v55;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v33 = *v23;
      if (v47 >= v33)
      {
        goto LABEL_29;
      }

      a3 = v30;
      v34 = v27 * v47;
      result = (v28)(v46, &v26[v34], v6);
      if (v21 >= v33)
      {
        goto LABEL_30;
      }

      v35 = &v26[v53];
      v36 = v44;
      v28(v44, v35, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_10007B10C(v55);
      }

      v37 = v46;
      v38 = v55 + v50;
      v39 = *v42;
      v40 = v55 + v50 + v34;
      v17 = v55;
      result = (*v42)(v40, v36, v6);
      if (v21 >= v17[2])
      {
        goto LABEL_31;
      }

      result = v39(&v38[v53], v37, v6);
      *v43 = v17;
      v32 = v47;
      v7 = v48;
    }

    v47 = v32 + 1;
    v24 = v54;
LABEL_11:
    ++v21;
    v23 = v17 + 2;
    v22 = v17[2];
    if (v21 == v22)
    {
      return v47;
    }
  }

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
  return result;
}

__n128 sub_10007BCF8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10007BD14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007BD5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007BDC0(uint64_t a1)
{
  result = sub_10007B120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007BDEC()
{
  result = qword_10023B7A0;
  if (!qword_10023B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B7A0);
  }

  return result;
}

id sub_10007BFE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllocatedTokenMetadataEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007C03C()
{
  result = qword_10023B7D0;
  if (!qword_10023B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B7D0);
  }

  return result;
}

id sub_10007C120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenHandoffServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007C188(void *a1)
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

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon27TokenHandoffServiceProtocol_];
    [a1 setExportedInterface:v12];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon35TokenHandoffServiceListenerDelegate_serviceBridge)];
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
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing entitlement for TokenHandoffService", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

unint64_t sub_10007C444()
{
  result = qword_10023B890;
  if (!qword_10023B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B890);
  }

  return result;
}

unint64_t sub_10007C49C()
{
  result = qword_10023B898;
  if (!qword_10023B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B898);
  }

  return result;
}

unint64_t sub_10007C4F0(uint64_t a1)
{
  *(a1 + 8) = sub_10003BB6C();
  result = sub_10007C520();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10007C520()
{
  result = qword_10023B8E8;
  if (!qword_10023B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8E8);
  }

  return result;
}

uint64_t sub_10007C574(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B918, &qword_1001B9758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10007C49C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[2];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007C6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x695F656C646E7562;
  }

  else
  {
    v4 = 0x64695F6D657469;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x695F656C646E7562;
  }

  else
  {
    v6 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE700000000000000;
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

Swift::Int sub_10007C7A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C828()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007C89C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C920@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216348, *a1);

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

void sub_10007C980(uint64_t *a1@<X8>)
{
  v2 = 0x64695F6D657469;
  if (*v1)
  {
    v2 = 0x695F656C646E7562;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10007C9C4()
{
  if (*v0)
  {
    result = 0x695F656C646E7562;
  }

  else
  {
    result = 0x64695F6D657469;
  }

  *v0;
  return result;
}

uint64_t sub_10007CA04@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216348, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10007CA78(uint64_t a1)
{
  v2 = sub_10007C49C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007CAB4(uint64_t a1)
{
  v2 = sub_10007C49C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007CAF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10007CC68(a1, v6);
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

unint64_t sub_10007CB54()
{
  result = qword_10023B8F0;
  if (!qword_10023B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8F0);
  }

  return result;
}

unint64_t sub_10007CBAC()
{
  result = qword_10023B8F8;
  if (!qword_10023B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8F8);
  }

  return result;
}

unint64_t sub_10007CC04()
{
  result = qword_10023B900;
  if (!qword_10023B900)
  {
    sub_10000CCC0(&qword_10023B908, &qword_1001B9710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B900);
  }

  return result;
}

uint64_t sub_10007CC68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023B910, &qword_1001B9750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10007C49C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v18 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_10007CE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007CE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007CED8()
{
  result = qword_10023B920;
  if (!qword_10023B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B920);
  }

  return result;
}

uint64_t sub_10007CF2C()
{
  *(v1 + 448) = v0;

  return _swift_task_switch(sub_10007CFBC, 0, 0);
}

void sub_10007CFBC()
{
  v1 = *(v0 + 448);
  Task = type metadata accessor for PostbackFetchTask();
  v57 = v1 + Task[5];
  v3 = (v1 + Task[8]);
  v4 = *v3 == 0xD000000000000012 && 0x80000001001CB3C0 == v3[1];
  v58 = *(v57 + 97);
  if (v4)
  {
    LOBYTE(v56) = 0;
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    v1 = *(v0 + 448);
  }

  v5 = *(v1 + Task[7]);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  v59 = v0;
  v60 = Task;
  if (v6)
  {
    sub_10014703C(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 208 * v8 + 233;
    v10 = (v5 + 233);
    do
    {
      v61 = v9;
      v75 = v6;
      v65 = *(v10 - 185);
      v11 = *(v10 - 169);
      v67 = *(v10 - 145);
      v12 = *(v10 - 121);
      v72 = *(v10 - 113);
      v73 = *(v10 - 129);
      v62 = *(v10 - 105);
      v63 = *(v10 - 161);
      v70 = *(v10 - 89);
      v71 = *(v10 - 97);
      v13 = *(v10 - 81);
      v69 = *(v10 - 73);
      v14 = *(v10 - 49);
      v76 = *(v10 - 41);
      v77 = *(v10 - 57);
      v15 = *(v10 - 17);
      v84 = *(v10 - 9);
      v86 = *(v10 - 25);
      v82 = *v10;
      v64 = *(v10 - 153);
      v68 = *(v10 - 137);
      v95[0] = v68;
      v74 = *(v10 - 65);
      v96[0] = v74;
      v79 = *(v10 - 33);
      v97[0] = v79;
      v89 = *(v10 - 1);
      v98[0] = v89;
      v66 = *(v10 - 201);
      v94 = v7;
      v16 = v8 + 1;
      v17 = v7[3];
      v18 = v7;

      v7 = v18;
      if (v8 >= v17 >> 1)
      {
        sub_10014703C((v17 > 1), v16, 1);
        v7 = v94;
      }

      v7[2] = v16;
      v19 = v7 + v61;
      *(v19 - 185) = v65;
      *(v19 - 201) = v66;
      *(v19 - 169) = v11;
      *(v19 - 161) = v63;
      *(v19 - 153) = v64;
      *(v19 - 38) = *v95;
      *(v19 - 149) = *&v95[3];
      *(v19 - 145) = v67;
      *(v19 - 137) = v68;
      *(v19 - 133) = *&v96[3];
      *(v19 - 34) = *v96;
      *(v19 - 129) = v73;
      *(v19 - 121) = v12;
      *(v19 - 113) = v72;
      *(v19 - 105) = v62;
      *(v19 - 97) = v71;
      *(v19 - 89) = v70;
      *(v19 - 81) = v13;
      *(v19 - 73) = v69;
      *(v19 - 65) = v74;
      *(v19 - 16) = *v97;
      *(v19 - 61) = *&v97[3];
      *(v19 - 57) = v77;
      *(v19 - 49) = v14;
      *(v19 - 41) = v76;
      *(v19 - 33) = v79;
      *(v19 - 8) = *v98;
      *(v19 - 29) = *&v98[3];
      *(v19 - 25) = v86;
      *(v19 - 17) = v15;
      *(v19 - 9) = v84;
      *(v19 - 1) = v89;
      *v19 = v82;
      v9 = v61 + 208;
      v10 += 224;
      ++v8;
      v6 = v75 - 1;
    }

    while (v75 != 1);
    v0 = v59;
    Task = v60;
    v1 = *(v59 + 448);
  }

  v85 = v7;
  v20 = *(v1 + Task[6]);
  v21 = *(v20 + 16);
  if (v21)
  {
    sub_10014701C(0, v21, 0);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = 48 * v22 + 72;
    v24 = (v20 + 72);
    do
    {
      v25 = *(v24 - 4);
      v26 = *(v24 - 24);
      v90 = *(v24 - 2);
      v93 = *(v24 - 5);
      v87 = *(v24 - 1);
      v27 = *v24;
      v28 = v22 + 1;
      v29 = _swiftEmptyArrayStorage[3];

      if (v22 >= v29 >> 1)
      {
        sub_10014701C((v29 > 1), v28, 1);
      }

      v24 += 8;
      _swiftEmptyArrayStorage[2] = v28;
      v30 = (_swiftEmptyArrayStorage + v23);
      *(v30 - 5) = v93;
      *(v30 - 4) = v25;
      *(v30 - 24) = v26;
      *(v30 - 2) = v90;
      *(v30 - 1) = v87;
      v23 += 48;
      ++v22;
      *v30 = v27;
      --v21;
    }

    while (v21);
    v0 = v59;
    Task = v60;
    v1 = *(v59 + 448);
  }

  v31 = Task[11];
  v32 = *(v1 + Task[10]);
  v83 = *(v57 + 32);
  v33 = *(v57 + 48);
  v81 = *(v57 + 40);
  v35 = *(v57 + 56);
  v34 = *(v57 + 64);
  v88 = *(v57 + 96);
  v80 = *(v57 + 72);
  v36 = *(v57 + 88);
  v78 = *(v57 + 80);
  v37 = (v1 + v31);
  v38 = v37[1];
  v91 = *v37;
  if (v32 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = v58;
  }

  if (v32 >= 2)
  {
    v40 = v58;
  }

  else
  {
    v40 = 2;
  }

  v41 = type metadata accessor for JSONEncoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  JSONEncoder.init()();
  *(v0 + 16) = 1;
  *(v0 + 24) = v83;
  *(v0 + 32) = v81;
  *(v0 + 40) = v33;
  *(v0 + 48) = v35;
  *(v0 + 56) = v34;
  *(v0 + 64) = v88;
  *(v0 + 72) = v80;
  *(v0 + 80) = v78;
  *(v0 + 88) = v36;
  *(v0 + 96) = v40;
  *(v0 + 104) = v85;
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 120) = v56 & 1;
  *(v0 + 121) = v39;
  *(v0 + 128) = v91;
  *(v0 + 136) = v38;
  sub_10007FFC0();
  *(v0 + 456) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 464) = v44;
  v45 = *(v0 + 448);
  v46 = *(v0 + 96);
  *(v0 + 336) = *(v0 + 80);
  *(v0 + 352) = v46;
  v47 = *(v0 + 128);
  *(v0 + 368) = *(v0 + 112);
  *(v0 + 384) = v47;
  v48 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 16);
  *(v0 + 288) = v48;
  v49 = *(v0 + 64);
  *(v0 + 304) = *(v0 + 48);
  *(v0 + 320) = v49;
  sub_100080014(v0 + 272);

  v50 = (v45 + v60[9]);
  v51 = *v50;
  v52 = *(v50[1] + 24);
  v92 = v52 + *v52;
  v53 = v52[1];
  v54 = swift_task_alloc();
  *(v0 + 472) = v54;
  *v54 = v0;
  v54[1] = sub_10007D738;
  v55 = *(v0 + 448);

  __asm { BRAA            X9, X16 }
}

uint64_t sub_10007D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 472);
  v9 = *v4;
  v5[60] = a1;
  v5[61] = a2;
  v5[62] = a3;
  v5[63] = v3;

  if (v3)
  {
    v7 = sub_10007DDFC;
  }

  else
  {
    v7 = sub_10007D87C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007D87C()
{
  v54 = v0;
  if ([*(v0 + 496) statusCode] != 200)
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000DAC0(v24, qword_10023FC88);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "The call failed", v27, 2u);
    }

    v28 = *(v0 + 488);
    v29 = *(v0 + 496);
    v30 = *(v0 + 480);
    v32 = *(v0 + 456);
    v31 = *(v0 + 464);

    sub_100080044();
    swift_allocError();
    v34 = 4;
LABEL_19:
    *v33 = v34;
    swift_willThrow();

    sub_10001BABC(v30, v28);
    v41 = v32;
    v42 = v31;
    goto LABEL_20;
  }

  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 432) = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v0 + 432];

  v6 = *(v0 + 432);
  if (v5)
  {
    v7 = v6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 440);
      if (qword_100239CC8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000DAC0(v9, qword_10023FC88);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 496);
      v14 = *(v0 + 456);
      v15 = *(v0 + 464);
      if (v12)
      {
        v52 = *(v0 + 464);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v53 = v17;
        *v16 = 136315138;
        v18 = Dictionary.description.getter();
        v20 = v19;

        v21 = sub_10017AD04(v18, v20, &v53);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "This is what we got %s", v16, 0xCu);
        sub_10000DB58(v17);

        v22 = v14;
        v23 = v52;
      }

      else
      {

        v22 = v14;
        v23 = v15;
      }

      sub_10001BABC(v22, v23);

      v49 = *(v0 + 8);
      v50 = *(v0 + 480);
      v51 = *(v0 + 488);

      return v49(v50, v51);
    }

    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000DAC0(v43, qword_10023FC88);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Decoding response failed", v46, 2u);
    }

    v28 = *(v0 + 488);
    v29 = *(v0 + 496);
    v30 = *(v0 + 480);
    v32 = *(v0 + 456);
    v31 = *(v0 + 464);

    sub_10001B95C();
    swift_allocError();
    v34 = 1;
    goto LABEL_19;
  }

  v35 = *(v0 + 488);
  v36 = *(v0 + 496);
  v37 = *(v0 + 480);
  v39 = *(v0 + 456);
  v38 = *(v0 + 464);
  v40 = v6;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001BABC(v37, v35);

  v41 = v39;
  v42 = v38;
LABEL_20:
  sub_10001BABC(v41, v42);
  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10007DDFC()
{
  sub_10001BABC(v0[57], v0[58]);
  v1 = v0[63];
  v2 = v0[1];

  return v2();
}

uint64_t type metadata accessor for PostbackFetchTask()
{
  result = qword_10023B998;
  if (!qword_10023B998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007DED8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BAE8, &qword_1001BA050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100081D54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v21[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v21[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 40);
    v21[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v21[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    v21[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21[9] = *(v3 + 72);
    v21[8] = 6;
    sub_10004465C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007E138(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10007E1C8;

  return sub_10007CF2C();
}

uint64_t sub_10007E1C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_10007E2FC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10007E450@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000808F0(*a1);
  *a2 = result;
  return result;
}

void sub_10007E480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265696669746ELL;
  v4 = 0x6564692D6D657469;
  v5 = 0xEB00000000657461;
  v6 = 0x6369666974726563;
  if (v2 != 5)
  {
    v6 = 0x6D6E6F7269766E65;
    v5 = 0xEB00000000746E65;
  }

  v7 = 0xED000064616F6C6ELL;
  v8 = 0x776F6465722D7369;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007475706E69;
  v10 = 0x2D65746176697270;
  if (v2 != 1)
  {
    v10 = 0x65696C632D667270;
    v9 = 0xEA0000000000746ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10007E59C()
{
  v1 = *v0;
  v2 = 0x6564692D6D657469;
  v3 = 0x6369666974726563;
  if (v1 != 5)
  {
    v3 = 0x6D6E6F7269766E65;
  }

  v4 = 0x776F6465722D7369;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x2D65746176697270;
  if (v1 != 1)
  {
    v5 = 0x65696C632D667270;
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

unint64_t sub_10007E6B4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000808F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007E6E8(uint64_t a1)
{
  v2 = sub_100081D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E724(uint64_t a1)
{
  v2 = sub_100081D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10007E760@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100080A20(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_10007E7C8(char a1)
{
  result = 0x642D656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x64692D6D616461;
      break;
    case 2:
      result = 0x6F7774656E2D6461;
      break;
    case 3:
      result = 0x6E676961706D6163;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = 0x727574616E676973;
      break;
    case 9:
      result = 0x612D6E696769726FLL;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    case 11:
      result = 0x7974696C65646966;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x676E69726564726FLL;
      break;
    case 14:
      result = 0x6D6E6F7269766E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007EA00(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA80, &qword_1001B9BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000815C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v39 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v39 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v39 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = *(v3 + 48);
    v39 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[7];
    v19 = *(v3 + 64);
    v39 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[9];
    v21 = v3[10];
    v39 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[11];
    v23 = v3[12];
    v39 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[13];
    v39 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[14];
    v26 = v3[15];
    v39 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v3[16];
    v28 = *(v3 + 136);
    v39 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v3[18];
    v30 = v3[19];
    v39 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = v3[20];
    v32 = *(v3 + 168);
    v39 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = v3[22];
    v34 = v3[23];
    v39 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = v3[24];
    v36 = *(v3 + 200);
    v39 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = *(v3 + 201);
    v38[14] = 14;
    sub_10004CEFC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007ED74(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA98, &qword_1001B9BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000818E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17[14] = *(v3 + 16);
    v17[13] = 1;
    sub_10004CE54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v17[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[4];
    v15 = v3[5];
    v17[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007EF40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10007E7C8(*a1);
  v5 = v4;
  if (v3 == sub_10007E7C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10007EFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007E7C8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007F02C()
{
  sub_10007E7C8(*v0);
  String.hash(into:)();
}

Swift::Int sub_10007F080()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007E7C8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007F0E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080988(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007F110@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007E7C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007F158@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100080988(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007F180(uint64_t a1)
{
  v2 = sub_1000815C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F1BC(uint64_t a1)
{
  v2 = sub_1000815C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10007F1F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100080E3C(a1, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 186) = *(v11 + 10);
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_10007F288()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007F368()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007F434()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007F510@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000809D4(*a1);
  *a2 = result;
  return result;
}

void sub_10007F540(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = 0xEE007865646E692DLL;
  v5 = 0x676E69726564726FLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x80000001001CA560;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA540;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10007F5DC()
{
  v1 = 0x697274732D73776ALL;
  v2 = 0x676E69726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10007F674@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000809D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007F69C(uint64_t a1)
{
  v2 = sub_1000818E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F6D8(uint64_t a1)
{
  v2 = sub_1000818E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007F714@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100081684(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10007F770(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA28, &qword_1001B9BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000806BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 56);
    v28[2] = *(v3 + 40);
    v29[0] = v13;
    *(v29 + 9) = *(v3 + 65);
    v28[0] = *(v3 + 8);
    v28[1] = v12;
    v14 = *(v3 + 40);
    v25 = *(v3 + 24);
    v26 = v14;
    v27[0] = *(v3 + 56);
    *(v27 + 9) = *(v3 + 65);
    v24 = *(v3 + 8);
    v23 = 1;
    sub_100080710(v28, v21);
    sub_100080748();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[2] = v26;
    *v22 = v27[0];
    *&v22[9] = *(v27 + 9);
    v21[1] = v25;
    v21[0] = v24;
    sub_10008079C(v21);
    v20 = *(v3 + 12);
    HIBYTE(v19) = 2;
    sub_10000CDE0(&qword_10023BA40, &qword_1001B9BC0);
    sub_100080820(&qword_10023BA48, &qword_10023BA40, &qword_1001B9BC0, sub_1000807CC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + 11);
    HIBYTE(v19) = 3;
    sub_10000CDE0(&qword_10023BA58, &qword_1001B9BC8);
    sub_100080820(&qword_10023BA60, &qword_10023BA58, &qword_1001B9BC8, sub_10008089C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[104];
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = v3[105];
    HIBYTE(v19) = 5;
    sub_10004465C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 14);
    v17 = *(v3 + 15);
    LOBYTE(v20) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007FB8C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10007FCCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008093C(*a1);
  *a2 = result;
  return result;
}

void sub_10007FCFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F66;
  v4 = 0x6E692D6E656B6F74;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D6E6F7269766E65;
  if (v2 != 5)
  {
    v6 = 0x2D7972746E756F63;
    v5 = 0xEC00000065646F63;
  }

  v7 = 0x80000001001CAD10;
  v8 = 0xD000000000000017;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001001CAD30;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x6973736572706D69;
    v3 = 0xEB00000000736E6FLL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000025;
    v3 = 0x80000001001CACD0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10007FE04()
{
  v1 = *v0;
  v2 = 0x6E692D6E656B6F74;
  v3 = 0x6D6E6F7269766E65;
  if (v1 != 5)
  {
    v3 = 0x2D7972746E756F63;
  }

  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6973736572706D69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000025;
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

unint64_t sub_10007FF08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008093C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007FF30(uint64_t a1)
{
  v2 = sub_1000806BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007FF6C(uint64_t a1)
{
  v2 = sub_1000806BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10007FFC0()
{
  result = qword_10023B928;
  if (!qword_10023B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B928);
  }

  return result;
}

unint64_t sub_100080044()
{
  result = qword_10023B930;
  if (!qword_10023B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B930);
  }

  return result;
}

__n128 sub_100080098(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1000800DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 202))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 202) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 202) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000801B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000801DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000802B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_10008038C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100080448()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1000805EC(319, &qword_10023B9A8, &type metadata for BlueDogImpression, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000805EC(319, &qword_10023B9B0, &type metadata for SKAdNetworkImpression, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100080598();
        if (v3 <= 0x3F)
        {
          sub_1000805EC(319, &qword_10023A190, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100080598()
{
  result = qword_10023B9B8;
  if (!qword_10023B9B8)
  {
    sub_10000CCC0(&unk_10023B9C0, &qword_1001B9A08);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10023B9B8);
  }

  return result;
}

void sub_1000805EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10008063C(uint64_t a1)
{
  result = sub_10001B95C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080668()
{
  result = qword_10023BA20;
  if (!qword_10023BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA20);
  }

  return result;
}

unint64_t sub_1000806BC()
{
  result = qword_10023BA30;
  if (!qword_10023BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA30);
  }

  return result;
}

unint64_t sub_100080748()
{
  result = qword_10023BA38;
  if (!qword_10023BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA38);
  }

  return result;
}

unint64_t sub_1000807CC()
{
  result = qword_10023BA50;
  if (!qword_10023BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA50);
  }

  return result;
}

uint64_t sub_100080820(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008089C()
{
  result = qword_10023BA68;
  if (!qword_10023BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA68);
  }

  return result;
}

unint64_t sub_1000808F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002153B0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008093C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215D58, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100080988(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216008, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000809D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002162C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080A20@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BAF8, &qword_1001BA058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100081D54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38[0]) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v13;
  v32 = v12;
  LOBYTE(v38[0]) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v15;
  v30 = v14;
  LOBYTE(v38[0]) = 3;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v38[0]) = 4;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38[0]) = 5;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v16;
  v45 = 6;
  sub_100044608();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v26 = v46;
  v17 = v32;
  *&v34 = v11;
  *(&v34 + 1) = v32;
  v18 = v33;
  v19 = v30;
  *&v35 = v33;
  *(&v35 + 1) = v30;
  v20 = v31;
  *&v36 = v31;
  v21 = v44;
  BYTE8(v36) = v44;
  *v37 = v29;
  *&v37[8] = v27;
  *&v37[16] = v28;
  v37[24] = v46;
  sub_100080710(&v34, v38);
  sub_10000DB58(a1);
  v38[0] = v11;
  v38[1] = v17;
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v39 = v21;
  v40 = v29;
  v41 = v27;
  v42 = v28;
  v43 = v26;
  result = sub_10008079C(v38);
  v23 = *v37;
  a2[2] = v36;
  a2[3] = v23;
  *(a2 + 57) = *&v37[9];
  v24 = v35;
  *a2 = v34;
  a2[1] = v24;
  return result;
}

uint64_t sub_100080E3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = sub_10000CDE0(&qword_10023BA70, &qword_1001B9BD0);
  v5 = *(v104 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v104);
  v8 = &v35 - v7;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000815C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v10 = v5;
  LOBYTE(v69[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  LOBYTE(v69[0]) = 1;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v69[0]) = 2;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = v14;
  LOBYTE(v69[0]) = 3;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v15 & 1;
  LOBYTE(v69[0]) = 4;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v16 & 1;
  LOBYTE(v69[0]) = 5;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v55 = v17;
  LOBYTE(v69[0]) = 6;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v54 = v18;
  LOBYTE(v69[0]) = 7;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v69[0]) = 8;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v19;
  LOBYTE(v69[0]) = 9;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v99 = v20 & 1;
  LOBYTE(v69[0]) = 10;
  *&v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v43 + 1) = v21;
  LOBYTE(v69[0]) = 11;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v22 & 1;
  LOBYTE(v69[0]) = 12;
  *&v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v41 + 1) = v23;
  LOBYTE(v69[0]) = 13;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v95 = v24 & 1;
  v93 = 14;
  sub_10004DBC4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v104);
  LODWORD(v104) = v94;
  *&v57 = v11;
  *(&v57 + 1) = v13;
  v25 = v13;
  v26 = v53;
  *&v58 = v53;
  *(&v58 + 1) = v52;
  v27 = v56;
  *&v59 = v56;
  *(&v59 + 1) = v51;
  HIDWORD(v35) = v103;
  LOBYTE(v60) = v103;
  *(&v60 + 1) = v50;
  v36 = v101;
  LOBYTE(v61) = v101;
  *(&v61 + 1) = v49;
  *&v62 = v55;
  *(&v62 + 1) = v48;
  *&v63 = v54;
  *(&v63 + 1) = v46;
  *&v64 = v45;
  *(&v64 + 1) = v47;
  *&v65 = v44;
  v37 = v99;
  BYTE8(v65) = v99;
  v66 = v43;
  *&v67 = v42;
  v38 = v97;
  BYTE8(v67) = v97;
  v68[0] = v41;
  *&v68[1] = v40;
  v39 = v95;
  BYTE8(v68[1]) = v95;
  BYTE9(v68[1]) = v94;
  sub_10008161C(&v57, v69);
  sub_10000DB58(a1);
  v69[0] = v11;
  v69[1] = v25;
  v69[2] = v26;
  v69[3] = v52;
  v69[4] = v27;
  v69[5] = v51;
  v70 = BYTE4(v35);
  *v71 = *v102;
  *&v71[3] = *&v102[3];
  v72 = v50;
  v73 = v36;
  *v74 = *v100;
  *&v74[3] = *&v100[3];
  v75 = v49;
  v76 = v55;
  v77 = v48;
  v78 = v54;
  v79 = v46;
  v80 = v45;
  v81 = v47;
  v82 = v44;
  v83 = v37;
  *v84 = *v98;
  *&v84[3] = *&v98[3];
  v85 = v43;
  v86 = v42;
  v87 = v38;
  *v88 = *v96;
  *&v88[3] = *&v96[3];
  v89 = v41;
  v90 = v40;
  v91 = v39;
  v92 = v104;
  result = sub_100081654(v69);
  v29 = v68[0];
  a2[10] = v67;
  a2[11] = v29;
  *(a2 + 186) = *(v68 + 10);
  v30 = v64;
  a2[6] = v63;
  a2[7] = v30;
  v31 = v66;
  a2[8] = v65;
  a2[9] = v31;
  v32 = v60;
  a2[2] = v59;
  a2[3] = v32;
  v33 = v62;
  a2[4] = v61;
  a2[5] = v33;
  v34 = v58;
  *a2 = v57;
  a2[1] = v34;
  return result;
}

unint64_t sub_1000815C8()
{
  result = qword_10023BA78;
  if (!qword_10023BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA78);
  }

  return result;
}

uint64_t sub_100081684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BA88, &qword_1001B9BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000818E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v28 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v27;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v14;
  v22 = v15;
  v24 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = sub_10000DB58(a1);
  *a2 = v23;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  return result;
}

unint64_t sub_1000818E8()
{
  result = qword_10023BA90;
  if (!qword_10023BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA90);
  }

  return result;
}

__n128 sub_10008196C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100081990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000819D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100081A40()
{
  result = qword_10023BAA0;
  if (!qword_10023BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAA0);
  }

  return result;
}

unint64_t sub_100081A98()
{
  result = qword_10023BAA8;
  if (!qword_10023BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAA8);
  }

  return result;
}

unint64_t sub_100081AF0()
{
  result = qword_10023BAB0;
  if (!qword_10023BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAB0);
  }

  return result;
}

unint64_t sub_100081B48()
{
  result = qword_10023BAB8;
  if (!qword_10023BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAB8);
  }

  return result;
}

unint64_t sub_100081BA0()
{
  result = qword_10023BAC0;
  if (!qword_10023BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAC0);
  }

  return result;
}

unint64_t sub_100081BF8()
{
  result = qword_10023BAC8;
  if (!qword_10023BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAC8);
  }

  return result;
}

unint64_t sub_100081C50()
{
  result = qword_10023BAD0;
  if (!qword_10023BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAD0);
  }

  return result;
}

unint64_t sub_100081CA8()
{
  result = qword_10023BAD8;
  if (!qword_10023BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAD8);
  }

  return result;
}

unint64_t sub_100081D00()
{
  result = qword_10023BAE0;
  if (!qword_10023BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAE0);
  }

  return result;
}

unint64_t sub_100081D54()
{
  result = qword_10023BAF0;
  if (!qword_10023BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAF0);
  }

  return result;
}

unint64_t sub_100081DC4()
{
  result = qword_10023BB00;
  if (!qword_10023BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB00);
  }

  return result;
}

unint64_t sub_100081E1C()
{
  result = qword_10023BB08;
  if (!qword_10023BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB08);
  }

  return result;
}

unint64_t sub_100081E74()
{
  result = qword_10023BB10;
  if (!qword_10023BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB10);
  }

  return result;
}

unint64_t sub_100081EEC()
{
  result = qword_10023BB18;
  if (!qword_10023BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB18);
  }

  return result;
}

Swift::Int sub_100081F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BA338[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100081FEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BA338[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100082038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000822FC(*a1);
  *a2 = result;
  return result;
}

void sub_10008208C(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_1000830A0(a2);
    }

    else if (v2 == 4)
    {
      sub_1000832D4(a2);
    }
  }

  else if (*a1)
  {
    if (v2 == 1)
    {
      sub_100082638(a2);
    }

    else
    {
      sub_1000829C8(a2);
    }
  }

  else
  {
    sub_100082378(a2);
  }
}

unint64_t sub_100082108(void *a1)
{
  a1[1] = sub_100082140();
  a1[2] = sub_100082194();
  result = sub_1000821E8();
  a1[3] = result;
  return result;
}

unint64_t sub_100082140()
{
  result = qword_10023BB60;
  if (!qword_10023BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB60);
  }

  return result;
}

unint64_t sub_100082194()
{
  result = qword_10023BB68;
  if (!qword_10023BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB68);
  }

  return result;
}

unint64_t sub_1000821E8()
{
  result = qword_10023BB70;
  if (!qword_10023BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB70);
  }

  return result;
}

unint64_t sub_100082240()
{
  result = qword_10023BB78;
  if (!qword_10023BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB78);
  }

  return result;
}

unint64_t sub_100082298()
{
  result = qword_10023BB80;
  if (!qword_10023BB80)
  {
    sub_10000CCC0(&qword_10023BB88, &qword_1001BA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB80);
  }

  return result;
}

uint64_t sub_1000822FC(uint64_t result)
{
  if (result > 17999)
  {
    switch(result)
    {
      case 18000:
        return 3;
      case 18001:
        return 4;
      case 18002:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 17400:
        return 1;
      case 17401:
        return 2;
    }
  }

  return 6;
}

void sub_100082378(uint64_t a1)
{
  _StringGuts.grow(_:)(128);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for FinalizedTokenEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x5F65746176697270;
  v11._object = 0xED00007475706E69;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x657A696C616E6966;
  v13._object = 0xEF6E656B6F745F64;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x776F6465725F7369;
  v15._object = 0xED000064616F6C6ELL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6D617473656D6974;
  v17._object = 0xE900000000000070;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEA00000000000A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6369666974726563;
  v19._object = 0xEB00000000657461;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x550A2C5458455420;
  v20._object = 0xEE0028455551494ELL;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA000;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x80000001001CB550;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v23);
}

void sub_100082638(uint64_t a1)
{
  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v8);

  _StringGuts.grow(_:)(137);
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x80000001001CB510;
  String.append(_:)(v9);
  v10 = [v2 databaseTable];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 665632;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x69737265766E6F63;
  v16._object = 0xED000064695F6E6FLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xA2C5458455420;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001001CA000;
  v18._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x52454745544E4920;
  v19._object = 0xEA00000000000A2CLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x5F65746176697270;
  v20._object = 0xED00007475706E69;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xA2C5458455420;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x657A696C616E6966;
  v22._object = 0xEF6E656B6F745F64;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xA2C5458455420;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x776F6465725F7369;
  v24._object = 0xED000064616F6C6ELL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x52454745544E4920;
  v25._object = 0xEA00000000000A2CLL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6D617473656D6974;
  v26._object = 0xE900000000000070;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x52454745544E4920;
  v27._object = 0xEA00000000000A2CLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6369666974726563;
  v28._object = 0xEB00000000657461;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x550A2C5458455420;
  v29._object = 0xEE0028455551494ELL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x69737265766E6F63;
  v30._object = 0xED000064695F6E6FLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000018;
  v31._object = 0x80000001001CB550;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v32);
}

void sub_1000829C8(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x69737265766E6F63;
  v9._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(37);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x4C4F432044444120;
  v17._object = 0xEC000000204E4D55;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x636F6C6C615F7369;
  v18._object = 0xEC00000064657461;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4E41454C4F4F4220;
  v19._object = 0xE90000000000003BLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v20);

  _StringGuts.grow(_:)(36);

  v21 = [v2 databaseTable];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x205445530ALL;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x69737265766E6F63;
  v27._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 656424224;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6F6C6E776F646572;
  v29._object = 0xEA00000000006461;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x2045524548570A27;
  v30._object = 0xE800000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x776F6465725F7369;
  v31._object = 0xED000064616F6C6ELL;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 824196384;
  v32._object = 0xE400000000000000;
  String.append(_:)(v32);
  v33 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v33);

  _StringGuts.grow(_:)(37);

  v34 = [v2 databaseTable];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x205445530ALL;
  v39._object = 0xE500000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x69737265766E6F63;
  v40._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 656424224;
  v41._object = 0xE400000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x64616F6C6E776F64;
  v42._object = 0xE800000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x2045524548570A27;
  v43._object = 0xE800000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x776F6465725F7369;
  v44._object = 0xED000064616F6C6ELL;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x31203D2120;
  v45._object = 0xE500000000000000;
  String.append(_:)(v45);
  v46 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v46);

  _StringGuts.grow(_:)(30);

  v47 = [v2 databaseTable];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x4F4320504F524420;
  v52._object = 0xED0000204E4D554CLL;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x776F6465725F7369;
  v53._object = 0xED000064616F6C6ELL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 59;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  v55 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v55);

  _StringGuts.grow(_:)(20);

  v56 = [v2 databaseTable];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60._countAndFlagsBits = v57;
  v60._object = v59;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x205445530ALL;
  v61._object = 0xE500000000000000;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 0x636F6C6C615F7369;
  v62._object = 0xEC00000064657461;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 824196384;
  v63._object = 0xE400000000000000;
  String.append(_:)(v63);
  v64 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v64);
}

void sub_1000830A0(uint64_t a1)
{
  _StringGuts.grow(_:)(107);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for AllocatedTokenMetadataEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x69737265766E6F63;
  v9._object = 0xED000064695F6E6FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._object = 0xEF657079745F6E6FLL;
  v13._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA620;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x69737265766E6F63;
  v17._object = 0xED000064695F6E6FLL;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001001CB550;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v19);
}

void sub_1000832D4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(24);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x205445530ALL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D6E6F7269766E65;
  v18._object = 0xEB00000000746E65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 656424224;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x69746375646F7270;
  v20._object = 0xEA00000000006E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 15143;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v22);
}

unint64_t sub_100083550(uint64_t a1, uint64_t a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return 0xD000000000000023;
      }

      if (a2 == 3)
      {
        return 0xD000000000000022;
      }

      return 0xD000000000000030;
    }

    if (!a2)
    {
      return 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v3 = 33;
      return v3 | 0xD000000000000014;
    }

    goto LABEL_23;
  }

  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        v3 = 10;
        return v3 | 0xD000000000000014;
      case 8:
        return 0xD000000000000017;
      case 9:
        return 0xD000000000000021;
    }

LABEL_23:
    _StringGuts.grow(_:)(22);

    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return 0xD000000000000014;
  }

  if (a2 == 5)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

void sub_100083774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 7:
        v3 = 8;
        goto LABEL_22;
      case 8:
        v3 = 9;
        goto LABEL_22;
      case 9:
        v3 = 10;
LABEL_22:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 3;
      }

      else if (a3 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_22;
    }

    if (!a3)
    {
      v3 = 1;
      goto LABEL_22;
    }

    if (a3 == 1)
    {
      v3 = 2;
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int sub_10008388C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100083774(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000838E0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100083774(v4, v1, v2);
  return Hasher._finalize()();
}

void sub_10008393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100083AAC(a1, v14);
  v6 = v15;
  if (v15)
  {
    v7 = sub_10000DA7C(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_10000DB58(v14);
  }

  else
  {
    v12 = 0;
  }

  sub_100083550(a2, a3);
  v13 = String._bridgeToObjectiveC()();

  [v3 setValue:v12 forKey:v13];
  swift_unknownObjectRelease();
}

uint64_t sub_100083AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        if (a4 == 5)
        {
          return 1;
        }
      }

      else if (a4 == 6)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        return a4 == 7;
      case 8:
        return a4 == 8;
      case 9:
        return a4 == 9;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  if (a4 < 0xA)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100083C4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100083C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

void *sub_100083D0C(void *result, int a2)
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

unint64_t sub_100083D40()
{
  result = qword_10023BB98;
  if (!qword_10023BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB98);
  }

  return result;
}

uint64_t sub_100083D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10000BD30;

  return sub_1000F9D50(a3, a4, a5);
}

uint64_t sub_100084068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1000152E0;

  return sub_1000F8700(a1, a4, a5, a6, a7);
}

uint64_t sub_1000844F8()
{
  v1 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  sub_10001BABC(*(v0 + 24), *(v0 + 32));
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100084618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1000152E0;

  return sub_100084068(a1, a2, a3, v10, v11, v12, v3 + v9);
}

uint64_t sub_100084734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100084838;

  return v10(a2, a3);
}

uint64_t sub_100084838()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100084968, 0, 0);
  }
}

uint64_t sub_10008498C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000849CC()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100084A04(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000BD30;

  return sub_100083D94(a1, a2, v6, v7, v8);
}

uint64_t sub_100084AC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v9);
}

id sub_100084BCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CurrencyExchangeRateEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1))
      {
        if (*(v7 - 1) == 1)
        {
          v10 = 0xD000000000000011;
          v11 = 0x80000001001CA600;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else
      {
        v10 = 0x79636E6572727563;
        v11 = 0xED000065646F635FLL;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100084E74(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for RetryCountEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v11 = 0x6F635F7972746572;
          v10 = 0xEB00000000746E75;
        }

        else
        {
          v11 = 0xD000000000000016;
          v10 = 0x80000001001CA100;
        }
      }

      else if (*(v7 - 1))
      {
        v11 = 0x616E5F70756F7267;
        v10 = 0xEA0000000000656DLL;
      }

      else
      {
        v10 = 0xEA00000000007265;
        v11 = 0x696669746E656469;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v10;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100085138(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnoutStoryEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v7 - 1);
      if (v10 <= 3)
      {
        if (*(v7 - 1) > 1u)
        {
          if (v10 == 2)
          {
            v11 = 0x69737265766E6F63;
            v12 = 0xED000064695F6E6FLL;
          }

          else
          {
            v11 = 0xD000000000000014;
            v12 = 0x80000001001CA030;
          }
        }

        else if (*(v7 - 1))
        {
          v11 = 0xD000000000000012;
          v12 = 0x80000001001CA000;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x64695F79726F7473;
        }
      }

      else if (*(v7 - 1) <= 5u)
      {
        if (v10 == 4)
        {
          v11 = 0xD000000000000010;
          v12 = 0x80000001001CA050;
        }

        else
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001001CA070;
        }
      }

      else if (v10 == 6)
      {
        v11 = 0x5F676E69646E6570;
        v12 = 0xEE0073746E657665;
      }

      else if (v10 == 7)
      {
        v11 = 0xD000000000000011;
        v12 = 0x80000001001CA0A0;
      }

      else
      {
        v11 = 0xD000000000000017;
        v12 = 0x80000001001CA0C0;
      }

      v13 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v12;
      if (v13)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v13)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100088BDC((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 2) = v20 + 1;
      v21 = &v8[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_1000854E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SoloEventEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_100088BDC((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = 0x76655F74756F6E73;
      *(v13 + 5) = 0xEB00000000746E65;
      v14 = v10 == 0;
      if (v10)
      {
        v15 = 1129530692;
      }

      else
      {
        v15 = 4412225;
      }

      if (v14)
      {
        v16 = 0xE300000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_100088BDC((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      ++v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v21);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v23, a4, a5);

  return v24;
}

id sub_100085760(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6(0);
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v11 = *(v8 - 1);
      if (v11 <= 3)
      {
        if (*(v8 - 1) > 1u)
        {
          if (v11 == 2)
          {
            v12 = 0xD000000000000012;
            v13 = 0x80000001001CA000;
          }

          else
          {
            v12 = 0x6F7774656E5F6461;
            v13 = 0xED000064695F6B72;
          }
        }

        else if (*(v8 - 1))
        {
          v12 = 0xD000000000000011;
          v13 = 0x80000001001CA650;
        }

        else
        {
          v13 = 0xED000064695F6E6FLL;
          v12 = 0x6973736572706D69;
        }
      }

      else if (*(v8 - 1) <= 5u)
      {
        if (v11 == 4)
        {
          v13 = 0xE900000000000070;
          v12 = 0x6D617473656D6974;
        }

        else
        {
          v12 = 0xD000000000000010;
          v13 = 0x80000001001CA670;
        }
      }

      else if (v11 == 6)
      {
        v12 = 0x5F746361706D6F63;
        v13 = 0xEB0000000073776ALL;
      }

      else if (v11 == 7)
      {
        v12 = 0xD000000000000012;
        v13 = 0x80000001001CA620;
      }

      else
      {
        v12 = 0x6D6E6F7269766E65;
        v13 = 0xEB00000000746E65;
      }

      v14 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100088BDC(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_100088BDC((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      v17 = &v10[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v13;
      if (v14)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v14)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_100088BDC((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v9);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100085B0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PostbackEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v8;
      v11 = sub_1000AF1D0(*(v8 - 1));
      v13 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v17 = v10 == 0;
      if (v10)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100088BDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        v7 = sub_100088BDC((v20 > 1), v21 + 1, 1, v7);
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v7);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100085D4C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversionTagEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1))
      {
        if (*(v7 - 1) == 1)
        {
          v10 = 0x69737265766E6F63;
          v11 = 0xEE006761745F6E6FLL;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100085FF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FinalizedTokenEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v7 - 1);
      if (v10 <= 3)
      {
        if (*(v7 - 1) > 1u)
        {
          if (v10 == 2)
          {
            v11 = 0x5F65746176697270;
            v13 = 0xED00007475706E69;
          }

          else
          {
            v11 = 0x657A696C616E6966;
            v13 = 0xEF6E656B6F745F64;
          }
        }

        else if (*(v7 - 1))
        {
          v11 = 0xD000000000000012;
          v13 = 0x80000001001CA000;
        }

        else
        {
          v11 = 0x69737265766E6F63;
          v13 = 0xED000064695F6E6FLL;
        }

        goto LABEL_21;
      }

      if (*(v7 - 1) <= 5u)
      {
        if (v10 != 4)
        {
          v11 = 0x6369666974726563;
          v12 = 6648929;
          goto LABEL_20;
        }

        v13 = 0xE900000000000070;
        v11 = 0x6D617473656D6974;
      }

      else if (v10 == 6)
      {
        v11 = 0x69737265766E6F63;
        v13 = 0xEF657079745F6E6FLL;
      }

      else
      {
        if (v10 == 7)
        {
          v11 = 0x6D6E6F7269766E65;
          v12 = 7630437;
LABEL_20:
          v13 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          goto LABEL_21;
        }

        v11 = 0x636F6C6C615F7369;
        v13 = 0xEC00000064657461;
      }

LABEL_21:
      v14 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100088BDC((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v13;
      if (v14)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v14)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        v8 = sub_100088BDC((v20 > 1), v21 + 1, 1, v8);
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_38;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_38:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100086388(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AllocatedTokenMetadataEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0x69737265766E6F63;
          v11 = 0xEF657079745F6E6FLL;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      else
      {
        v10 = 0x69737265766E6F63;
        v11 = 0xED000064695F6E6FLL;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100086658(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AppDistributorMetadataEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0x737265765F707061;
          v11 = 0xEE0064695F6E6F69;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000015;
        v11 = 0x80000001001CAEA0;
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_10008692C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversionHistoryEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v8 - 1);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001001CA030;
        }

        else if (v10 == 4)
        {
          v11 = 0x6C7074656B72616DLL;
          v12 = 0xEE0064695F656361;
        }

        else
        {
          v11 = 0x5F7972746E756F63;
          v12 = 0xEC00000065646F63;
        }
      }

      else if (*(v8 - 1))
      {
        v11 = 0x69737265766E6F63;
        v12 = 0xED000064695F6E6FLL;
        if (v10 != 1)
        {
          v12 = 0xEF657079745F6E6FLL;
        }
      }

      else
      {
        v11 = 0xD000000000000012;
        v12 = 0x80000001001CA000;
      }

      v13 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v12;
      if (v13)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v13)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100088BDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v7 = sub_100088BDC((v19 > 1), v20 + 1, 1, v7);
      }

      *(v7 + 2) = v20 + 1;
      v21 = &v7[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v7);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_100086C40(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FrozenImpressionEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA000;
        }

        else
        {
          v10 = 0x63616274736F6867;
          v11 = 0xEC00000064695F6BLL;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000014;
        v11 = 0x80000001001CADB0;
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CAD90;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100086F10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GhostbackEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      v11 = 0xE900000000000064;
      v12 = 0x656B636F6C5F7369;
      switch(*(v7 - 1))
      {
        case 1u:
          v12 = 0xD000000000000015;
          v11 = 0x80000001001CA900;
          break;
        case 2u:
          v12 = 0xD000000000000017;
          v11 = 0x80000001001CA920;
          break;
        case 3u:
          break;
        case 4u:
          v11 = 0xEA00000000006465;
          v12 = 0x7265747369676572;
          break;
        case 5u:
          v12 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
          break;
        case 6u:
          v12 = 0xD000000000000010;
          v11 = 0x80000001001CA960;
          break;
        case 7u:
          v12 = 0x6D69745F6B636F6CLL;
          v11 = 0xEE00706D61747365;
          break;
        case 8u:
          v12 = 0x69745F6863746566;
          v11 = 0xEF706D617473656DLL;
          break;
        case 9u:
          v12 = 0x63616274736F6867;
          v11 = 0xEC00000064695F6BLL;
          break;
        case 0xAu:
          v12 = 0x69737265766E6F63;
          v11 = 0xEF657079745F6E6FLL;
          break;
        case 0xBu:
          v12 = 0x6D6E6F7269766E65;
          v11 = 0xEB00000000746E65;
          break;
        case 0xCu:
          v12 = 0xD000000000000016;
          v11 = 0x80000001001CAA20;
          break;
        case 0xDu:
          v12 = 0x6C7074656B72616DLL;
          v11 = 0xEE0064695F656361;
          break;
        case 0xEu:
          v12 = 0x69737265766E6F63;
          v11 = 0xEE006761745F6E6FLL;
          break;
        default:
          v12 = 0xD000000000000012;
          v11 = 0x80000001001CA000;
          break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v16 = v10 == 0;
      if (v10)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v16)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100088BDC((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 2) = v20 + 1;
      v21 = &v8[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_1000873A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ItemIdentifierBundleIDMapEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      if (*(v7 - 1))
      {
        v11 = 0x695F656C646E7562;
      }

      else
      {
        v11 = 0x64695F6D657469;
      }

      if (*(v7 - 1))
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      if (v10)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v10)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

void *sub_10008760C(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1001470A0(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10004C9B4(v9, v6);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001470A0((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_100219220;
      v13 = sub_10005CA24(&v15);
      sub_10004C9B4(v6, v13);
      v8[2] = v12 + 1;
      sub_10000DA64(&v15, &v8[5 * v12 + 4]);
      sub_10004CA18(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_1000877A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_1001470A0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[11];
      v34 = v4[10];
      v35 = v5;
      v36[0] = v4[12];
      *(v36 + 9) = *(v4 + 201);
      v6 = v4[7];
      v30 = v4[6];
      v31 = v6;
      v7 = v4[9];
      v32 = v4[8];
      v33 = v7;
      v8 = v4[3];
      v26 = v4[2];
      v27 = v8;
      v9 = v4[5];
      v28 = v4[4];
      v29 = v9;
      v10 = v4[1];
      v24 = *v4;
      v25 = v10;
      sub_10000E870(&v24, &v21);
      v37 = v2;
      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001470A0((v11 > 1), v12 + 1, 1);
        v2 = v37;
      }

      v22 = &type metadata for SKAdNetworkImpression;
      v23 = &off_100219200;
      v13 = swift_allocObject();
      *&v21 = v13;
      v14 = v35;
      v13[11] = v34;
      v13[12] = v14;
      v13[13] = v36[0];
      *(v13 + 217) = *(v36 + 9);
      v15 = v31;
      v13[7] = v30;
      v13[8] = v15;
      v16 = v33;
      v13[9] = v32;
      v13[10] = v16;
      v17 = v27;
      v13[3] = v26;
      v13[4] = v17;
      v18 = v29;
      v13[5] = v28;
      v13[6] = v18;
      v19 = v25;
      v13[1] = v24;
      v13[2] = v19;
      v2[2] = v12 + 1;
      sub_10000DA64(&v21, &v2[5 * v12 + 4]);
      v4 += 14;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100087938(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_100147160(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
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
        sub_100147160((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100025CA4(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}