uint64_t sub_100248760()
{
  v1 = *(v0 + 376);
  v2 = *(*sub_100006D8C(*(v0 + 408), *(*(v0 + 408) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 616) = v2;
  v3 = swift_task_alloc();
  *(v0 + 624) = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  *(v0 + 632) = v4;
  *v4 = v0;
  v4[1] = sub_10024886C;

  return sub_10052EBA8(sub_10052EBA8, sub_100271EB4, v3, v2);
}

uint64_t sub_10024886C()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_10024A608;
  }

  else
  {
    v4 = sub_1002489D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002489D8()
{
  v1 = *(v0 + 408);
  v2 = [*(v0 + 384) applicationMissingRequiredSINF];
  v3 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v0 + 408);
    v5 = *(v4 + 56);
    v19 = *(v4 + 40);
    v6 = sub_100006D8C(v4, v3);
    *(v0 + 256) = v3;
    *(v0 + 264) = v19;
    *(v0 + 280) = v5;
    v7 = sub_10020A748((v0 + 232));
    (*(*(v3 - 8) + 16))(v7, v6, v3);
    v8 = swift_task_alloc();
    *(v0 + 648) = v8;
    *v8 = v0;
    v8[1] = sub_100248BC4;
    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);

    return sub_100255784(v12, v11, v9, v10, v0 + 232);
  }

  else
  {
    v14 = *(*sub_100006D8C(*(v0 + 408), v3) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 664) = v14;

    v15 = sub_100625FA0();
    *(v0 + 672) = v15;
    v16 = swift_task_alloc();
    *(v0 + 680) = v16;
    *v16 = v0;
    v16[1] = sub_100248DB4;
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);

    return sub_1002530B0(v18, v17, v14, v15);
  }
}

uint64_t sub_100248BC4()
{
  v2 = *v1;
  v2[82] = v0;

  if (v0)
  {
    v3 = v2[52];

    return _swift_task_switch(sub_10024A708, v3, 0);
  }

  else
  {
    sub_10000710C((v2 + 29));

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100248DB4(char a1)
{
  v2 = *(*v1 + 672);
  v3 = *(*v1 + 416);
  *(*v1 + 754) = a1;

  return _swift_task_switch(sub_100248F08, v3, 0);
}

uint64_t sub_100248F08()
{
  v29 = v0;
  if (!*(v0 + 754))
  {
    static Logger.ddm.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 608);
    v16 = *(v0 + 584);
    v17 = *(v0 + 576);
    if (v14)
    {
      v27 = *(v0 + 608);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v18 = 138412546;
      v21 = sub_100625FA0();
      *(v18 + 4) = v21;
      *v19 = v21;
      *(v18 + 12) = 2082;
      *(v0 + 752) = 0;
      v22 = String.init<A>(describing:)();
      v24 = sub_1002346CC(v22, v23, &v28);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Existing app has an update available, or current version below pinned version, requesting install (%{public}s)", v18, 0x16u);
      sub_1000032A8(v19, &qword_10077F920);

      sub_10000710C(v20);

      (*(v16 + 8))(v27, v17);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v9 = sub_100625FA0();
    *(v0 + 688) = v9;
    v10 = swift_task_alloc();
    *(v0 + 696) = v10;
    *v10 = v0;
    v11 = sub_1002492F0;
LABEL_13:
    v10[1] = v11;
    v25 = *(v0 + 376);

    return sub_100307250(v25, 1, v9);
  }

  if (*(v0 + 754) == 1)
  {
    static Logger.ddm.getter();
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
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] No update available, or current version is pinned, skipping install", v3, 0xCu);
      sub_1000032A8(v4, &qword_10077F920);
    }

    v6 = *(v0 + 600);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);

    (*(v7 + 8))(v6, v8);
    v9 = sub_100625FA0();
    *(v0 + 704) = v9;
    v10 = swift_task_alloc();
    *(v0 + 712) = v10;
    *v10 = v0;
    v11 = sub_100249788;
    goto LABEL_13;
  }

  (*(*(v0 + 520) + 104))(*(v0 + 528), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v0 + 512));
  *(v0 + 720) = sub_100625FA0();

  return _swift_task_switch(sub_100249BFC, 0, 0);
}

uint64_t sub_1002492F0()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 416);

  return _swift_task_switch(sub_100249418, v2, 0);
}

uint64_t sub_100249418()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v23 = v2;
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);
  v24 = *(v0 + 753);
  v8 = *(v0 + 376);
  v25 = *(v0 + 392);
  v26 = *(v0 + 384);
  v9 = (v8 + *(*(v0 + 536) + 52));
  v28 = v1;
  v29 = *v9;
  v27 = v9[1];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_100271284(v8, v2, type metadata accessor for DDMDeclaration);
  sub_10026FE78(v6, v0 + 160);
  sub_10020A980(v7, v0 + 288);
  v11 = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = v12 + v3;
  v14 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 79) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v11;
  v16[4] = v5;
  sub_1002711BC(v23, v16 + v12, type metadata accessor for DDMDeclaration);
  *(v16 + v13) = v24;
  *(v16 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8) = v25;
  sub_10026FEE4(v0 + 160, v16 + v14);
  sub_1001DFDBC((v0 + 288), v16 + v15);
  *(v16 + ((v15 + 47) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_retain_n();

  v17 = v26;
  v18 = sub_1002FBE70(0, 0, v28, 0, 0, &unk_10069FBF0, v16);

  sub_1000032A8(v28, &unk_100780380);
  v19 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + v19);
  *(v5 + v19) = 0x8000000000000000;
  sub_1005C26B4(v18, v29, v27, isUniquelyReferenced_nonNull_native);

  *(v5 + v19) = v30;
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100249788()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 416);

  return _swift_task_switch(sub_1002498B0, v2, 0);
}

uint64_t sub_1002498B0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v22 = *(v0 + 392);
  v21 = *(v0 + 753);
  v7 = *(v0 + 376);
  v23 = *(v0 + 384);
  v8 = (v7 + *(*(v0 + 536) + 52));
  v24 = v8[1];
  v25 = *v8;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_100271284(v7, v2, type metadata accessor for DDMDeclaration);
  sub_10026FE78(v6, v0 + 88);
  v10 = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = v11 + v3;
  v13 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v10;
  v14[4] = v5;
  sub_1002711BC(v2, v14 + v11, type metadata accessor for DDMDeclaration);
  *(v14 + v12) = v21;
  *(v14 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8) = v22;
  sub_10026FEE4(v0 + 88, v14 + v13);
  *(v14 + ((v13 + 79) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_retain_n();

  v15 = v23;

  v16 = sub_1002FBE70(0, 0, v1, 0, 0, &unk_10069FBE0, v14);

  sub_1000032A8(v1, &unk_100780380);
  v17 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v5 + v17);
  *(v5 + v17) = 0x8000000000000000;
  sub_1005C26B4(v16, v25, v24, isUniquelyReferenced_nonNull_native);

  *(v5 + v17) = v26;
  swift_endAccess();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100249BFC()
{
  v1 = v0[90];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[90];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: installFailed", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v3;
  v13 = v0[67];
  v15 = v0[59];
  v14 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v25 = v0[56];
  v27 = v0[55];
  v26 = v0[54];
  v18 = v0[47];

  (*(v10 + 8))(v9, v11);
  if (*(v18 + *(v13 + 76)))
  {
    v19 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v19 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v15, *v19, v17);
  (*(v16 + 32))(v14, v15, v17);
  DMCAppsClient.init(scope:)();
  v20 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v20, v21, 0, v25);

  v0[5] = v26;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v22 = sub_10020A748(v0 + 2);
  (*(v27 + 16))(v22, v25, v26);
  v23 = swift_task_alloc();
  v0[91] = v23;
  *v23 = v0;
  v23[1] = sub_100249F0C;

  return DMCAppsClient.installFailed(_:)(v0 + 2);
}

uint64_t sub_100249F0C()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_10024A010, 0, 0);
}

uint64_t sub_10024A010()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[53];
  (*(v1 + 16))(v3, v0[66], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[92] = v4;
  *v4 = v0;
  v4[1] = sub_10024A108;
  v5 = v0[90];
  v6 = v0[53];
  v7 = v0[47];

  return sub_10030B39C(v7, v6, 1, v5);
}

uint64_t sub_10024A108()
{
  v1 = *(*v0 + 424);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_10024A230, 0, 0);
}

uint64_t sub_10024A230()
{
  v1 = v0[90];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[52];
  (*(v0[55] + 8))(v0[56], v0[54]);
  (*(v7 + 8))(v5, v6);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10024A30C, v8, 0);
}

uint64_t sub_10024A30C()
{
  v1 = v0[47];
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[93] = v4;
  *v4 = v0;
  v4[1] = sub_10024A3B4;
  v5 = v0[51];

  return sub_100248324(v3, v2, v5);
}

uint64_t sub_10024A3B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024A608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024A708()
{
  sub_10000710C(v0 + 232);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024A810(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = v6;
  *(v7 + 184) = a2;
  *(v7 + 192) = a5;
  *(v7 + 147) = a4;
  *(v7 + 146) = a3;
  *(v7 + 176) = a1;
  sub_1001F0C48(&qword_10077F380);
  *(v7 + 216) = swift_task_alloc();
  v8 = type metadata accessor for DDMDeclaration(0);
  *(v7 + 224) = v8;
  v9 = *(v8 - 8);
  *(v7 + 232) = v9;
  *(v7 + 240) = *(v9 + 64);
  *(v7 + 248) = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  *(v7 + 256) = swift_task_alloc();
  type metadata accessor for EnterpriseApp();
  *(v7 + 264) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v7 + 272) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v7 + 280) = v10;
  *(v7 + 288) = *(v10 - 8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v11 = type metadata accessor for DDMPurchaseMethod();
  *(v7 + 312) = v11;
  *(v7 + 320) = *(v11 - 8);
  *(v7 + 328) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v7 + 336) = v12;
  *(v7 + 344) = *(v12 - 8);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_10024AAF4, v6, 0);
}

uint64_t sub_10024AAF4()
{
  static Logger.ddm.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Updating declaration for managed installed", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[46];
  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[28];
  v10 = v0[22];

  v11 = *(v8 + 8);
  v0[47] = v11;
  v0[48] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v7);
  v12 = (v10 + *(v9 + 52));
  v13 = *v12;
  v0[49] = *v12;
  v14 = v12[1];
  v0[50] = v14;
  v15 = swift_task_alloc();
  v0[51] = v15;
  *v15 = v0;
  v15[1] = sub_10024ACAC;

  return sub_10060C41C(v13, v14);
}

uint64_t sub_10024ACAC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 208);

    return _swift_task_switch(sub_10024AE88, v6, 0);
  }
}

uint64_t sub_10024AE88()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  (*(v2 + 104))(v1, enum case for DDMPurchaseMethod.manifest(_:), v3);
  v4 = static DDMPurchaseMethod.== infix(_:_:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    v8 = *(*sub_100006D8C(*(v0 + 200), *(*(v0 + 200) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 472) = v8;

    v9 = sub_100625FA0();
    *(v0 + 480) = v9;
    v10 = swift_task_alloc();
    *(v0 + 488) = v10;
    *v10 = v0;
    v10[1] = sub_10024B6D0;
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);

    return sub_1002530B0(v12, v11, v8, v9);
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  sub_100005934(*(v0 + 176) + *(*(v0 + 224) + 80), v7, &unk_1007809F0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1000032A8(*(v0 + 272), &unk_1007809F0);
    goto LABEL_4;
  }

  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  (*(v17 + 32))(v14, *(v0 + 272), v16);
  v18 = [objc_opt_self() ephemeralSessionConfiguration];
  [v18 setHTTPShouldSetCookies:0];
  [v18 setHTTPCookieAcceptPolicy:1];
  [v18 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v19 = [objc_opt_self() sessionWithConfiguration:v18];

  type metadata accessor for PlainHTTP();
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 24) = 1;
  *(inited + 16) = v19;
  (*(v17 + 16))(v15, v14, v16);

  v21 = sub_100625FA0();
  v22 = swift_task_alloc();
  *(v0 + 424) = v22;
  *v22 = v0;
  v22[1] = sub_10024B1D8;
  v23 = *(v0 + 296);
  v24 = *(v0 + 264);

  return sub_10035562C(v24, v23, inited, v21);
}

uint64_t sub_10024B1D8()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_10024C4B4;
  }

  else
  {
    v4 = sub_10024B304;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024B304()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  *(v0 + 440) = *(*sub_100006D8C(*(v0 + 200), *(*(v0 + 200) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  v3 = swift_task_alloc();
  *(v0 + 448) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  *(v0 + 456) = v4;
  *v4 = v0;
  v4[1] = sub_10024B418;

  return (sub_10052EF68)();
}

uint64_t sub_10024B418()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_10024C5EC;
  }

  else
  {
    v4 = sub_10024B584;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024B584()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  swift_setDeallocating();
  v6 = *(v1 + 16);
  [v6 invalidateAndCancel];

  (*(v4 + 8))(v2, v3);
  sub_100271224(v5, type metadata accessor for EnterpriseApp);
  v7 = *(*sub_100006D8C(*(v0 + 200), *(*(v0 + 200) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  *(v0 + 472) = v7;

  v8 = sub_100625FA0();
  *(v0 + 480) = v8;
  v9 = swift_task_alloc();
  *(v0 + 488) = v9;
  *v9 = v0;
  v9[1] = sub_10024B6D0;
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);

  return sub_1002530B0(v11, v10, v7, v8);
}

uint64_t sub_10024B6D0(char a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 208);
  *(*v1 + 148) = a1;

  return _swift_task_switch(sub_10024B824, v3, 0);
}

uint64_t sub_10024B824()
{
  v39 = v0;
  if (*(v0 + 148))
  {
    if (*(v0 + 148) == 1)
    {
      static Logger.ddm.getter();
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
        _os_log_impl(&_mh_execute_header, v1, v2, "[%@] The app is up to date, and already managed - nothing further to be done", v3, 0xCu);
        sub_1000032A8(v4, &qword_10077F920);
      }

      v6 = *(v0 + 376);
      v7 = *(v0 + 352);
      v8 = *(v0 + 336);

      v6(v7, v8);

      v9 = *(v0 + 8);

      return v9();
    }

    else
    {
      v24 = *(v0 + 216);
      *(v0 + 520) = *(*sub_100006D8C(*(v0 + 200), *(*(v0 + 200) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
      v25 = enum case for ManagedAppStatus.Reason.updateFailed(_:);
      v26 = type metadata accessor for ManagedAppStatus.Reason();
      v27 = *(v26 - 8);
      (*(v27 + 104))(v24, v25, v26);
      (*(v27 + 56))(v24, 0, 1, v26);

      v28 = sub_100625FA0();
      *(v0 + 528) = v28;
      v29 = swift_task_alloc();
      *(v0 + 536) = v29;
      *v29 = v0;
      v29[1] = sub_10024C218;
      v30 = *(v0 + 216);
      v31 = *(v0 + 176);

      return sub_10030B39C(v31, v30, 1, v28);
    }
  }

  else
  {
    static Logger.ddm.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 376);
    v15 = *(v0 + 360);
    v16 = *(v0 + 336);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v14;
      v19 = swift_slowAlloc();
      v38 = v19;
      *v17 = 138412546;
      v20 = sub_100625FA0();
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2082;
      *(v0 + 145) = 0;
      v21 = String.init<A>(describing:)();
      v23 = sub_1002346CC(v21, v22, &v38);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] The app is already managed but there is an update available, requesting install (%{public}s)", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      v37(v15, v16);
    }

    else
    {

      v14(v15, v16);
    }

    v32 = *(*sub_100006D8C(*(v0 + 200), *(*(v0 + 200) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
    *(v0 + 496) = v32;

    v33 = sub_100625FA0();
    *(v0 + 504) = v33;
    v34 = swift_task_alloc();
    *(v0 + 512) = v34;
    *v34 = v0;
    v34[1] = sub_10024BD60;
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);

    return sub_1003E0BFC(v36, v35, v32, v33);
  }
}

uint64_t sub_10024BD60(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 504);

  v9 = *(v6 + 208);
  if (v2)
  {
    *(v7 + 544) = a2;
    *(v7 + 552) = a1;
    v10 = sub_10024C744;
  }

  else
  {
    v10 = sub_10024BEDC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10024BEDC()
{
  v26 = *(v0 + 400);
  v27 = *(v0 + 392);
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v23 = *(v0 + 146);
  v24 = *(v0 + 147);
  v7 = *(v0 + 192);
  v25 = *(v0 + 184);
  v8 = *(v0 + 176);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_100271284(v8, v2, type metadata accessor for DDMDeclaration);
  sub_10020A980(v7, v0 + 80);
  sub_1002708C4(v6, v0 + 16);
  v10 = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = v11 + v4;
  v13 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v10;
  v15[4] = v5;
  sub_1002711BC(v2, v15 + v11, type metadata accessor for DDMDeclaration);
  v16 = v15 + v12;
  *v16 = v23;
  v16[1] = v24;
  sub_1001DFDBC((v0 + 80), v15 + v13);
  *(v15 + v14) = v25;
  sub_100270928((v0 + 16), (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)));
  swift_retain_n();

  v17 = v25;
  v18 = sub_1002FBE70(0, 0, v1, 0, 0, &unk_10069FBA0, v15);

  sub_1000032A8(v1, &unk_100780380);
  v19 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v5 + v19);
  *(v5 + v19) = 0x8000000000000000;
  sub_1005C26B4(v18, v27, v26, isUniquelyReferenced_nonNull_native);

  *(v5 + v19) = v28;
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10024C218()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 216);
  v5 = *v0;

  sub_1000032A8(v2, &qword_10077F380);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10024C4B4()
{
  v1 = v0[52];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  swift_setDeallocating();
  v5 = *(v1 + 16);
  [v5 invalidateAndCancel];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10024C5EC()
{
  v1 = v0[52];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  swift_setDeallocating();
  v6 = *(v1 + 16);
  [v6 invalidateAndCancel];

  (*(v4 + 8))(v2, v3);
  sub_100271224(v5, type metadata accessor for EnterpriseApp);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10024C744()
{
  v1 = v0[69];
  v2 = v0[68];
  sub_100270870();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10024C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v5[23] = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v5[24] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F320);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for DDMDeclaration(0);
  v5[33] = v8;
  v9 = *(v8 - 8);
  v5[34] = v9;
  v5[35] = *(v9 + 64);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_10024CAA0, v4, 0);
}

uint64_t sub_10024CAA0()
{
  v1 = *(v0 + 176);
  *(v0 + 304) = *(*sub_100006D8C(*(v0 + 168), *(*(v0 + 168) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v2 = *(v1 + 112);
  *(v0 + 312) = v2;

  return _swift_task_switch(sub_10024CB34, v2, 0);
}

uint64_t sub_10024CB34()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v0[39] + 112);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_10024CC24;
  v6 = v0[32];

  return (sub_10052D2C0)(v6, sub_100271350, v4, v3);
}

uint64_t sub_10024CC24()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_10024D4AC;
  }

  else
  {
    v4 = sub_10024CD6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024CD6C()
{
  v1 = *(v0 + 256);
  if ((*(*(v0 + 272) + 48))(v1, 1, *(v0 + 264)) == 1)
  {

    sub_1000032A8(v1, &unk_1007809E0);
LABEL_3:

    v2 = *(v0 + 8);

    return v2();
  }

  sub_1002711BC(v1, *(v0 + 296), type metadata accessor for DDMDeclaration);
  sub_1001F0C48(&qword_10077E910);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10069E680;
  v5 = String.hashValue.getter();
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  v6._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v6);

  v7 = objc_allocWithZone(type metadata accessor for LogKey());
  v8 = LogKey.init(string:)();
  *(v0 + 344) = v8;
  static Logger.ddm.getter();
  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Removing declaration", v12, 0xCu);
    sub_1000032A8(v13, &qword_10077F920);
  }

  v16 = *(v0 + 296);
  v15 = *(v0 + 304);
  v17 = *(v0 + 288);
  v52 = *(v0 + 280);
  v53 = v9;
  v51 = *(v0 + 272);
  v18 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 176);

  (*(v18 + 8))(v19, v20);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_100271284(v16, v17, type metadata accessor for DDMDeclaration);
  v24 = *(v51 + 80);
  v25 = (v24 + 40) & ~v24;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v15;
  sub_1002711BC(v17, v26 + v25, type metadata accessor for DDMDeclaration);
  *(v26 + ((v25 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;

  v27 = v53;
  sub_1004A673C(0, 0, v21, &unk_10069FC70, v26);

  v28 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_stateRemovalTimer;
  v29 = *(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_stateRemovalTimer);
  if (!v29)
  {
    v31 = *(v0 + 288);
    v30 = *(v0 + 296);
    v32 = *(v0 + 160);
    sub_1002708C4(*(v0 + 168), v0 + 16);
    sub_100271284(v30, v31, type metadata accessor for DDMDeclaration);
    sub_10020A980(v32, v0 + 80);
    v33 = (v24 + 80) & ~v24;
    v34 = (v33 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_100270928((v0 + 16), (v35 + 16));
    sub_1002711BC(v31, v35 + v33, type metadata accessor for DDMDeclaration);
    *(v35 + v34) = v27;
    sub_1001DFDBC((v0 + 80), v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    sub_1001F0C48(&qword_10077F370);
    v36 = swift_allocObject();
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    *(v36 + 48) = 0;
    *(v36 + 16) = xmmword_10069F940;
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = &unk_10069FC80;
    v37[5] = v35;
    *(v36 + 32) = &unk_10069FC88;
    *(v36 + 40) = v37;
    *(v22 + v28) = v36;
    v38 = v27;

    v29 = *(v22 + v28);
    if (!v29)
    {
      v45 = *(v0 + 144);
      v44 = *(v0 + 152);
      swift_beginAccess();
      v46 = sub_1004FB374(v45, v44);
      swift_endAccess();
      if (v46)
      {
        sub_1001F0C48(&unk_10077F940);
        Task.cancel()();
      }

      v47 = *(v0 + 344);
      v48 = *(v0 + 296);
      v50 = *(v0 + 208);
      v49 = *(v0 + 216);
      v54 = *(v0 + 200);
      sub_100271284(v48, *(v0 + 192), type metadata accessor for DDMDeclaration);
      swift_storeEnumTagMultiPayload();
      sub_1001F0C48(&qword_10077F328);
      AsyncStream.Continuation.yield(_:)();

      (*(v50 + 8))(v49, v54);
      sub_100271224(v48, type metadata accessor for DDMDeclaration);
      goto LABEL_3;
    }
  }

  *(v0 + 352) = v29;
  v39 = *(v0 + 296);
  v40 = *(v39 + 48);
  v41 = *(v39 + 56);

  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_10024D570;
  v43 = *(v0 + 176);

  return sub_100262CEC(v40, v41, v43, v29);
}

uint64_t sub_10024D4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024D570()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_10024D69C, v1, 0);
}

uint64_t sub_10024D69C()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_beginAccess();
  v3 = sub_1004FB374(v2, v1);
  swift_endAccess();
  if (v3)
  {
    sub_1001F0C48(&unk_10077F940);
    Task.cancel()();
  }

  v4 = v0[43];
  v5 = v0[37];
  v7 = v0[26];
  v6 = v0[27];
  v10 = v0[25];
  sub_100271284(v5, v0[24], type metadata accessor for DDMDeclaration);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_10077F328);
  AsyncStream.Continuation.yield(_:)();

  (*(v7 + 8))(v6, v10);
  sub_100271224(v5, type metadata accessor for DDMDeclaration);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10024D894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10024D964, 0, 0);
}

uint64_t sub_10024D964()
{
  v1 = *(v0 + 24);
  v2 = *(*sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_10024DA6C;

  return sub_10052EBA8(sub_10052EBA8, sub_1002716BC, v3, v2);
}

uint64_t sub_10024DA6C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10024DFE0;
  }

  else
  {
    v2 = sub_10024DBC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024DBC0()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10024DC58;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  return sub_10034278C(1, v2, v3, v4);
}

uint64_t sub_10024DC58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_10024E1D4;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_10024DD80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10024DD80()
{
  v1 = *(*sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 136) = v1;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_10024DE6C;
  v3 = *(v0 + 128);

  return sub_10066FD90(v1, v3);
}

uint64_t sub_10024DE6C()
{
  v3 = *v0;

  swift_bridgeObjectRelease_n();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024DFE0()
{
  v1 = v0[4];
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to remove install history: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[9], v0[6]);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10024DC58;
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[2];

  return sub_10034278C(1, v11, v12, v13);
}

uint64_t sub_10024E1D4()
{
  static Logger.ddm.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Catalog update after declaration removal failed: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

void sub_10024E368(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);

  v5 = sub_100619E6C(0, 0, v3, v4, sub_100619DF8, 0, v2);

  if (v5)
  {
    [v5 deleteFromDatabase];
  }
}

uint64_t sub_10024E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1001F0E54;

  return sub_10026E70C(a2, a3, a4, a5);
}

uint64_t sub_10024E4AC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for DDMDeclaration(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10024E5D8, v1, 0);
}

uint64_t sub_10024E5D8()
{
  v42 = v0;
  v1 = sub_1004DA6EC();
  v3 = v2;
  v5 = v4;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 224) = v4;
  sub_100006190(0, &qword_100784500);
  if (v5)
  {
    v6 = sub_10060BC54(v1, v3, 0, 0, 0);
  }

  else
  {
    v6 = sub_10060DA14(v1, 0, 0, 0);
  }

  v7 = v6;
  *(v0 + 136) = v6;
  if (!v6)
  {
LABEL_13:
    static Logger.ddm.getter();
    sub_1001DFDA4(v1, v3, v5 & 1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_1001DFEBC(v1, v3, v5 & 1);
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 88);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    if (v21)
    {
      v40 = *(v0 + 64);
      v25 = swift_slowAlloc();
      log = v19;
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v25 = 138412546;
      v27 = sub_100625FA0();
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 2082;
      v39 = v22;
      v28 = StoreAppIdentifier.description.getter();
      v30 = v29;
      sub_1001DFEBC(v1, v3, v5 & 1);
      v31 = sub_1002346CC(v28, v30, &v41);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, log, v20, "[%@] Unable to find installed app with identifier %{public}s", v25, 0x16u);
      sub_1000032A8(v26, &qword_10077F920);

      sub_10000710C(v38);

      (*(v23 + 8))(v39, v40);
    }

    else
    {
      sub_1001DFEBC(v1, v3, v5 & 1);

      (*(v23 + 8))(v22, v24);
    }

    v32 = *(v0 + 8);

    return v32();
  }

  v8 = sub_10060D18C();
  if (!v8 || (v9 = v8, v10 = [v8 managementDeclarationIdentifier], v9, !v10))
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = (v12 + *(v11 + 52));
  if (v13 == *v16 && v15 == v16[1])
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v34 = sub_100625FA0();
  *(v0 + 144) = v34;
  v35 = swift_task_alloc();
  *(v0 + 152) = v35;
  *v35 = v0;
  v35[1] = sub_10024E9D8;
  v36 = *(v0 + 24);

  return sub_1003DEFC0(v36, v34);
}

uint64_t sub_10024E9D8(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 32);
  *(*v1 + 225) = a1;

  return _swift_task_switch(sub_10024EB08, v3, 0);
}

uint64_t sub_10024EB08()
{
  if (*(v0 + 225) == 1)
  {
    v1 = [*(v0 + 136) bundleIdentifier];
    if (v1 && (v2 = v1, v3 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v1], *(v0 + 160) = v3, v2, v3))
    {
      static Logger.ddm.getter();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = sub_100625FA0();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Uninstalling application", v6, 0xCu);
        sub_1000032A8(v7, &qword_10077F920);
      }

      v9 = *(v0 + 112);
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);

      (*(v11 + 8))(v9, v10);
      v12 = [objc_allocWithZone(IXUninstallOptions) init];
      *(v0 + 168) = v12;
      if (v12)
      {
        v15 = v12;
        sub_1001DFEBC(*(v0 + 120), *(v0 + 128), *(v0 + 224) & 1);
        [v15 setRequestUserConfirmation:0];
        [v15 setIgnoreAppProtection:1];
        [v15 setIgnoreRemovability:1];
        [v15 setIgnoreRestrictions:1];
        [v15 setWaitForDeletion:1];
        *(v0 + 176) = sub_100006190(0, &qword_10077FC30);
        v12 = sub_10024EF60;
        v13 = 0;
        v14 = 0;
      }

      else
      {
        __break(1u);
      }

      return _swift_task_switch(v12, v13, v14);
    }

    else
    {
      sub_1001DFEBC(*(v0 + 120), *(v0 + 128), *(v0 + 224) & 1);
      static Logger.ddm.getter();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 136);
      if (v20)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = sub_100625FA0();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Unable to uninstall apps without a bundle identifier", v22, 0xCu);
        sub_1000032A8(v23, &qword_10077F920);
      }

      (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    sub_1001DFEBC(*(v0 + 120), *(v0 + 128), *(v0 + 224) & 1);
    v16 = swift_task_alloc();
    *(v0 + 208) = v16;
    *v16 = v0;
    v16[1] = sub_10024F3A4;

    return sub_10060C1F4();
  }
}

uint64_t sub_10024EF60()
{
  v1 = *(v0 + 176);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  v3 = *(v0 + 160);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  type metadata accessor for IXUninstallDisposition(0);
  *v4 = v0;
  v4[1] = sub_10024F064;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001006C4EE0, sub_100271CF0, v2, v5);
}

uint64_t sub_10024F064()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10024F260;
  }

  else
  {

    v2 = sub_10024F180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024F19C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024F260()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_10024F2CC, v1, 0);
}

uint64_t sub_10024F2CC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024F3A4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10024F770;
  }

  else
  {
    v4 = sub_10024F4D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024F4D0()
{
  v26 = v0;
  v1 = v0[7];
  v2 = v0[3];
  static Logger.ddm.getter();
  sub_100271284(v2, v1, type metadata accessor for DDMDeclaration);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v5)
  {
    v24 = v0[12];
    v11 = v0[5];
    v23 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 138412546;
    v15 = sub_100625FA0();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2082;
    v16 = (v10 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];

    sub_100271224(v10, type metadata accessor for DDMDeclaration);
    v19 = sub_1002346CC(v18, v17, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Leaving app in place, but removed declaration identifier %{public}s", v12, 0x16u);
    sub_1000032A8(v13, &qword_10077F920);

    sub_10000710C(v14);

    (*(v8 + 8))(v24, v23);
  }

  else
  {

    sub_100271224(v10, type metadata accessor for DDMDeclaration);
    (*(v8 + 8))(v7, v9);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10024F770()
{
  v27 = v0;
  v1 = v0[6];
  v2 = v0[3];
  static Logger.ddm.getter();
  sub_100271284(v2, v1, type metadata accessor for DDMDeclaration);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[6];
  if (v5)
  {
    v25 = v0[10];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v6;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 138412802;
    v15 = sub_100625FA0();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2082;
    v16 = (v10 + *(v11 + 52));
    v23 = v9;
    v18 = *v16;
    v17 = v16[1];

    sub_100271224(v10, type metadata accessor for DDMDeclaration);
    v19 = sub_1002346CC(v18, v17, &v26);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    v13[1] = v20;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to remove declaration identifier %{public}s: %{public}@", v12, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v14);

    (*(v8 + 8))(v25, v23);
  }

  else
  {

    sub_100271224(v10, type metadata accessor for DDMDeclaration);
    (*(v8 + 8))(v7, v9);
  }

  v21 = v0[1];

  return v21();
}

void sub_10024FA70(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = sub_10024FB50(a2);
  v6 = sub_100563BA8(0, 0, v5, sub_100563B34, 0, v4);

  if (v6)
  {
    v7 = v6;
    sub_100535A10(v7, a3);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

void *sub_10024FB50(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v1;
  v2 = v1[1];
  v14 = sub_1001F0C48(&unk_10077FDB0);
  v15 = sub_100213FA0(&unk_1007843D0, &unk_10077FDB0);
  LOWORD(v12) = 10;
  *(&v12 + 1) = v3;
  v13 = v2;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v12, inited + 32);
  v10 = sub_1001F0C48(&unk_1007843E0);
  LOWORD(v9) = 283;
  v11 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  *(&v9 + 1) = &off_100757CE0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v9, v5 + 32);
  sub_1001F0C48(&unk_1007843F0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10069F6E0;
  *(v6 + 32) = inited;
  *(v6 + 40) = v5;

  v7 = sub_1005AE994(v6);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10024FD34()
{
  v1[2] = v0;
  v2 = type metadata accessor for DDMDeclaration(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10024FDF4, v0, 0);
}

uint64_t sub_10024FDF4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_10024FE18, v1, 0);
}

uint64_t sub_10024FE18()
{
  v1 = *(*(v0 + 48) + 112);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10024FEDC;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_10024FEDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_10025002C, v7, 0);
  }
}

uint64_t sub_10025002C()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    sub_100526304(0, v2, 0);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[5];
      sub_100271284(v5, v7, type metadata accessor for DDMDeclaration);
      v8 = (v7 + *(v4 + 56));
      v10 = *v8;
      v9 = v8[1];

      sub_100271224(v7, type metadata accessor for DDMDeclaration);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100526304((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v10;
      v13[5] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1002501BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  sub_1001F0C48(&qword_10077F398);
  v6[7] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for ManagedAppStatus.State();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3B0);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DDMDeclarationStatus(0);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for DDMDeclaration(0);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002503FC, v5, 0);
}

uint64_t sub_1002503FC()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 160) = v1;
  return _swift_task_switch(sub_100250420, v1, 0);
}

uint64_t sub_100250420()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v0[20] + 112);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100250510;
  v6 = v0[19];

  return (sub_1003B0094)(v6, sub_100271184, v4, v3);
}

uint64_t sub_100250510()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100250970;
  }

  else
  {
    v4 = sub_100250658;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100250658()
{
  *(v0 + 192) = *(*sub_100006D8C(*(v0 + 40), *(*(v0 + 40) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 200) = v2;
  *(v0 + 208) = v1;

  return _swift_task_switch(sub_100250744, v2, v1);
}

uint64_t sub_100250744()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[27] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_10025083C;
  v5 = v0[14];

  return sub_1003B1A50(v5, sub_1002711A0, v3);
}

uint64_t sub_10025083C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_100250F34;
  }

  else
  {
    v6 = v2[6];

    v5 = sub_100250A34;
    v3 = v6;
    v4 = 0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100250970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100250A34()
{
  v1 = v0[14];
  v2 = (*(v0[16] + 48))(v1, 1, v0[15]);
  v3 = v0[19];
  if (v2 == 1)
  {
    sub_100271224(v0[19], type metadata accessor for DDMDeclaration);
    sub_1000032A8(v1, &qword_10077F3B0);
    v4 = 1;
    goto LABEL_15;
  }

  v5 = v0[13];
  sub_1002711BC(v1, v0[17], type metadata accessor for DDMDeclarationStatus);
  v6 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_100006190(0, &qword_100784500);
  v9 = *(v3 + 48);
  v8 = *(v3 + 56);

  v10 = sub_10060BC54(v9, v8, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = sub_10060D18C();
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = v12;
    v14 = [v12 managementDeclarationIdentifier];

    if (!v14)
    {
      goto LABEL_11;
    }

    v16 = v0[18];
    v15 = v0[19];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = (v15 + *(v16 + 52));
    if (v17 == *v20 && v19 == v20[1])
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
LABEL_11:

        goto LABEL_14;
      }
    }

    v24 = v0[12];
    v23 = v0[13];
    sub_10025108C(v11, v24);
    sub_1000032A8(v23, &qword_10077F3A8);
    v7(v24, 0, 1, v6);
    sub_10020A668(v24, v23, &qword_10077F3A8);
  }

LABEL_14:
  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[17];
  v28 = v0[15];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[8];
  v40 = v29;
  v32 = v0[7];
  (*(v0[10] + 16))();
  sub_100005934(v27 + *(v28 + 32), v31, &qword_10077F3A0);
  sub_100005934(v29, v30, &qword_10077F3A8);
  v33 = *(v26 + 100);
  v34 = type metadata accessor for DDMPurchaseMethod();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v32, v25 + v33, v34);
  (*(v35 + 56))(v32, 0, 1, v34);

  ManagedAppStatus.init(bundleID:declarationIdentifier:declarationKey:state:updateState:reasons:name:installedVersionInfo:purchaseMethod:)();
  sub_1000032A8(v40, &qword_10077F3A8);
  sub_100271224(v27, type metadata accessor for DDMDeclarationStatus);
  sub_100271224(v25, type metadata accessor for DDMDeclaration);
  v4 = 0;
LABEL_15:
  v36 = v0[2];
  v37 = type metadata accessor for ManagedAppStatus();
  (*(*(v37 - 8) + 56))(v36, v4, 1, v37);

  v38 = v0[1];

  return v38();
}

uint64_t sub_100250F34()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100250FAC, v1, 0);
}

uint64_t sub_100250FAC()
{
  sub_100271224(*(v0 + 152), type metadata accessor for DDMDeclaration);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10025108C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10060BB74();
  v19 = v11;
  v12 = [a1 exactBundleVersion];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v14;
  }

  else
  {
    v18 = 0xE100000000000000;
  }

  v15 = [a1 shortVersionString];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  FilePath.init(_:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    ManagedAppStatus.InstalledVersionInfo.init(appleVersionID:bundleVersion:bundleShortVersion:bundlePath:)();
  }
}

uint64_t sub_10025131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F398);
  v4[11] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for ManagedAppStatus();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for URL.DirectoryHint();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for DDMDeclarationStatus(0);
  v4[29] = v10;
  v4[30] = *(v10 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = type metadata accessor for DDMDeclaration(0);
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_100251720, v3, 0);
}

uint64_t sub_100251720()
{
  *(v0 + 296) = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100251848;

  return sub_1003B1FCC(sub_1003047B4, 0);
}

uint64_t sub_100251848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100251C20;
  }

  else
  {
    v6 = sub_1002519FC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1002519FC()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100251A94, v1, 0);
}

uint64_t sub_100251A94()
{
  v10 = v0;
  if (*(*(v0 + 312) + 16))
  {
    sub_1001F0C48(&qword_10077F3B8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = *(v0 + 320);
  v3 = *(v0 + 40);
  v9 = v1;
  v4 = v3;

  sub_10026F32C(v5, sub_100252C28, 0, 1, &v9, v4);
  if (v2)
  {
  }

  else
  {
    v7 = *(v0 + 56);

    *(v0 + 328) = v9;
    v8 = *(v7 + 112);
    *(v0 + 336) = v8;

    return _swift_task_switch(sub_100251D7C, v8, 0);
  }
}

uint64_t sub_100251C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100251D7C()
{
  v1 = *(*(v0 + 336) + 112);
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_100251E6C;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_100251E6C(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[7];

    return _swift_task_switch(sub_1002520C4, v6, 0);
  }
}

uint64_t sub_1002520C4()
{
  v122 = v0;
  v1 = v0[44];
  v2 = *(v1 + 16);
  v3 = v0[41];
  if (v2)
  {
    v4 = v0[34];
    v116 = v0[33];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v0[23];
    v99 = (v6 + 32);
    v7 = v0[20];
    v97 = (v7 + 8);
    v98 = (v7 + 104);
    v96 = (v6 + 8);
    v103 = (v0[14] + 16);
    v104 = v0[17];
    v111 = (v0[9] + 8);
    v113 = _swiftEmptyArrayStorage;
    v102 = v0[36];
    v101 = v0[30];
    v100 = v0[29];
    v105 = v0[5];
    v112 = *(v4 + 72);
    v95 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v110 = v0[41];
    while (1)
    {
      v9 = v0[36];
      sub_100271284(v5, v9, type metadata accessor for DDMDeclaration);
      if (*(v3 + 16))
      {
        v10 = (v9 + *(v116 + 52));
        v11 = *v10;
        v12 = v10[1];
        v13 = sub_10052213C(*v10, v12);
        if (v14)
        {
          break;
        }
      }

      v36 = v0[35];
      v37 = v0[36];
      v38 = v0[5];
      static Logger.ddm.getter();
      sub_100271284(v37, v36, type metadata accessor for DDMDeclaration);
      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[35];
      v44 = v0[36];
      v45 = v0[10];
      v120 = v0[8];
      if (v42)
      {
        v118 = v2;
        v46 = v0[5];
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v115 = v5;
        v49 = swift_slowAlloc();
        v121[0] = v49;
        *v47 = 138412546;
        *(v47 + 4) = v46;
        *v48 = v105;
        *(v47 + 12) = 2082;
        v50 = (v43 + *(v116 + 52));
        v107 = v45;
        v109 = v44;
        v51 = *v50;
        v52 = v50[1];
        v53 = v46;

        sub_100271224(v43, type metadata accessor for DDMDeclaration);
        v54 = sub_1002346CC(v51, v52, v121);

        *(v47 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v40, v41, "[%@] No app declaration status found for %{public}s", v47, 0x16u);
        sub_1000032A8(v48, &qword_10077F920);

        sub_10000710C(v49);
        v5 = v115;

        (*v111)(v107, v120);
        v8 = v109;
        v3 = v110;
        v2 = v118;
      }

      else
      {

        sub_100271224(v43, type metadata accessor for DDMDeclaration);
        (*v111)(v45, v120);
        v8 = v44;
      }

      sub_100271224(v8, type metadata accessor for DDMDeclaration);
LABEL_5:
      v5 += v112;
      if (!--v2)
      {

        goto LABEL_33;
      }
    }

    v108 = v12;
    v119 = v11;
    v15 = v0[31];
    v16 = v0[32];
    v17 = v0[28];
    sub_100271284(*(v3 + 56) + *(v101 + 72) * v13, v15, type metadata accessor for DDMDeclarationStatus);
    sub_1002711BC(v15, v16, type metadata accessor for DDMDeclarationStatus);
    v18 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo();
    v19 = *(*(v18 - 8) + 56);
    v19(v17, 1, 1, v18);
    sub_100006190(0, &qword_100784500);
    v20 = *(v102 + 48);
    v21 = *(v102 + 56);

    v22 = sub_10060BC54(v20, v21, 0, 0, 0);
    v117 = v2;
    v114 = v5;
    if (!v22)
    {
LABEL_23:
      v73 = v0[36];
      v74 = v0[32];
      v76 = v0[27];
      v75 = v0[28];
      v77 = v0[12];
      v78 = v0[11];
      (*v103)(v0[15], v74 + *(v100 + 28), v0[13], v23, v24);
      sub_100005934(v74 + *(v100 + 32), v77, &qword_10077F3A0);
      sub_100005934(v75, v76, &qword_10077F3A8);
      v79 = *(v116 + 100);
      v80 = type metadata accessor for DDMPurchaseMethod();
      v81 = *(v80 - 8);
      (*(v81 + 16))(v78, v73 + v79, v80);
      (*(v81 + 56))(v78, 0, 1, v80);

      ManagedAppStatus.init(bundleID:declarationIdentifier:declarationKey:state:updateState:reasons:name:installedVersionInfo:purchaseMethod:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_100363114(0, v113[2] + 1, 1, v113);
      }

      v2 = v117;
      v83 = v113[2];
      v82 = v113[3];
      v3 = v110;
      if (v83 >= v82 >> 1)
      {
        v113 = sub_100363114(v82 > 1, v83 + 1, 1, v113);
      }

      v84 = v0[36];
      v85 = v0[32];
      v86 = v0[18];
      v87 = v0[16];
      sub_1000032A8(v0[28], &qword_10077F3A8);
      sub_100271224(v85, type metadata accessor for DDMDeclarationStatus);
      sub_100271224(v84, type metadata accessor for DDMDeclaration);
      v113[2] = v83 + 1;
      (*(v104 + 32))(v113 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v83, v86, v87);
      v5 = v114;
      goto LABEL_5;
    }

    v25 = v22;
    v26 = [v22 bundleContainerURL];
    if (v26)
    {
      v106 = v19;
      v28 = v0[25];
      v27 = v0[26];
      v30 = v0[21];
      v29 = v0[22];
      v31 = v0[19];
      v32 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v99)(v27, v28, v29);
      v0[2] = 0xD000000000000014;
      v0[3] = 0x80000001006C46D0;
      (*v98)(v30, v95, v31);
      sub_100005E50();
      URL.appending<A>(component:directoryHint:)();
      (*v97)(v30, v31);
      v33 = URL.checkResourceIsReachable()();
      if (v35)
      {

LABEL_21:
        v70 = v0[26];
        v71 = v0[22];
        v72 = *v96;
        (*v96)(v0[24], v71);
        v72(v70, v71);
        goto LABEL_22;
      }

      if (!v33)
      {
        goto LABEL_21;
      }

      URL._bridgeToObjectiveC()(v34);
      v56 = v55;
      v57 = objc_opt_self();
      v0[4] = 0;
      v58 = [v57 metadataFromPlistAtURL:v56 error:v0 + 4];

      v59 = v0[4];
      v60 = v0[26];
      v61 = v0[24];
      v62 = v0[22];
      if (v58)
      {
        v63 = *v96;
        v64 = v59;
        v63(v61, v62);
        v63(v60, v62);
        v65 = [v58 managementDeclarationIdentifier];

        if (v65)
        {
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          if (v66 == v119 && v68 == v108)
          {

            v69 = v106;
          }

          else
          {
            v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v69 = v106;
            if ((v90 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v92 = v0[27];
          v91 = v0[28];
          sub_10025108C(v25, v92);
          sub_1000032A8(v91, &qword_10077F3A8);
          v69(v92, 0, 1, v18);
          sub_10020A668(v92, v91, &qword_10077F3A8);
          goto LABEL_23;
        }
      }

      else
      {
        v88 = v59;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v89 = *v96;
        (*v96)(v61, v62);
        v89(v60, v62);
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  v113 = _swiftEmptyArrayStorage;
LABEL_33:

  v93 = v0[1];

  return v93(v113);
}

uint64_t sub_100252C28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_1001F0C48(&qword_10077F3C8) + 48);
  v5 = *(a1 + 16);
  *a2 = *(a1 + 8);
  a2[1] = v5;
  sub_100271284(a1, a2 + v4, type metadata accessor for DDMDeclarationStatus);
}

uint64_t sub_100252CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v8 = type metadata accessor for DDMDeclarationStatus(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v37[-v13];
  __chkstk_darwin(v12);
  v16 = &v37[-v15];
  v17 = type metadata accessor for Logger();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin(v17);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.ddm.getter();
  sub_100271284(a1, v16, type metadata accessor for DDMDeclarationStatus);
  sub_100271284(a1, v14, type metadata accessor for DDMDeclarationStatus);
  v45 = a2;
  sub_100271284(a2, v11, type metadata accessor for DDMDeclarationStatus);
  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v41 = v4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v39 = v25;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v24 = 138413058;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2082;
    v38 = v22;
    v27 = *(v16 + 1);
    v26 = *(v16 + 2);
    v28 = v20;

    sub_100271224(v16, type metadata accessor for DDMDeclarationStatus);
    v29 = sub_1002346CC(v27, v26, &v46);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2082;
    v30 = *(v14 + 3);
    v31 = *(v14 + 4);

    sub_100271224(v14, type metadata accessor for DDMDeclarationStatus);
    v32 = sub_1002346CC(v30, v31, &v46);

    *(v24 + 24) = v32;
    *(v24 + 32) = 2082;
    v33 = *(v11 + 3);
    v34 = *(v11 + 4);

    sub_100271224(v11, type metadata accessor for DDMDeclarationStatus);
    v35 = sub_1002346CC(v33, v34, &v46);

    *(v24 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v21, v38, "[%@] Found duplicate app declaration status for %{public}s: %{public}s & %{public}s", v24, 0x2Au);
    sub_1000032A8(v39, &qword_10077F920);

    swift_arrayDestroy();
  }

  else
  {

    sub_100271224(v11, type metadata accessor for DDMDeclarationStatus);
    sub_100271224(v14, type metadata accessor for DDMDeclarationStatus);
    sub_100271224(v16, type metadata accessor for DDMDeclarationStatus);
  }

  (*(v42 + 8))(v19, v43);
  return sub_100271284(v45, v44, type metadata accessor for DDMDeclarationStatus);
}

uint64_t sub_1002530B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[123] = v4;
  v5[117] = a4;
  v5[111] = a3;
  v5[105] = a2;
  v5[99] = a1;
  v6 = type metadata accessor for Logger();
  v5[129] = v6;
  v5[130] = *(v6 - 8);
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v7 = type metadata accessor for DDMPurchaseMethod();
  v5[137] = v7;
  v5[138] = *(v7 - 8);
  v5[139] = swift_task_alloc();
  v8 = type metadata accessor for DDMDeclaration(0);
  v5[140] = v8;
  v9 = *(v8 - 8);
  v5[141] = v9;
  v5[142] = *(v9 + 64);
  v5[143] = swift_task_alloc();

  return _swift_task_switch(sub_10025327C, v4, 0);
}

uint64_t sub_10025327C()
{
  v82 = v0;
  v1 = v0[143];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[138];
  v6 = v0[137];
  v7 = v0[111];
  v8 = v0[99];
  sub_100271284(v8, v1, type metadata accessor for DDMDeclaration);
  v9 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  sub_1002711BC(v1, v10 + v9, type metadata accessor for DDMDeclaration);
  v11 = swift_allocObject();
  v0[144] = v11;
  *(v11 + 16) = &unk_10069FBB0;
  *(v11 + 24) = v10;

  swift_asyncLet_begin();
  (*(v5 + 16))(v4, v8 + *(v3 + 100), v6);
  v12 = (*(v5 + 88))(v4, v6);
  if (v12 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v13 = v0[99] + *(v0[140] + 92);
    if (*(v13 + 8) & 1) != 0 || (v14 = *v13, v15 = sub_10060BB74(), (v16))
    {
      v17 = sub_10025423C;
      v18 = v0 + 2;
      v19 = v0 + 145;
      v20 = v0 + 88;
LABEL_7:

      return _swift_asyncLet_get_throwing(v18, v19, v17, v20);
    }

    if (v15 >= v14)
    {
      v52 = v0[117];
      if (v14 >= v15)
      {
        static Logger.ddm.getter();
        v68 = v52;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = v0[117];
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412290;
          *(v72 + 4) = v71;
          *v73 = v71;
          v74 = v71;
          _os_log_impl(&_mh_execute_header, v69, v70, "[%@] Installed version is equal to the pinned version", v72, 0xCu);
          sub_1000032A8(v73, &qword_10077F920);
        }

        v75 = v0[133];
        v76 = v0[130];
        v77 = v0[129];

        (*(v76 + 8))(v75, v77);
        v32 = sub_100254144;
        v33 = v0 + 2;
        v34 = v0 + 145;
        v35 = v0 + 100;
      }

      else
      {
        static Logger.ddm.getter();
        v53 = v52;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        v56 = os_log_type_enabled(v54, v55);
        v57 = v0[134];
        v58 = v0[130];
        v59 = v0[129];
        if (v56)
        {
          v80 = v0[134];
          v60 = v0[117];
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v81 = v63;
          *v61 = 138412546;
          *(v61 + 4) = v60;
          *v62 = v60;
          *(v61 + 12) = 2082;
          v0[87] = v14;
          v64 = v60;
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = sub_1002346CC(v65, v66, &v81);

          *(v61 + 14) = v67;
          _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Installed version is later than pinned version %{public}s", v61, 0x16u);
          sub_1000032A8(v62, &qword_10077F920);

          sub_10000710C(v63);

          (*(v58 + 8))(v80, v59);
        }

        else
        {

          (*(v58 + 8))(v57, v59);
        }

        v32 = sub_10025404C;
        v33 = v0 + 2;
        v34 = v0 + 145;
        v35 = v0 + 106;
      }
    }

    else
    {
      v36 = v0[117];
      static Logger.ddm.getter();
      v37 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[135];
      v42 = v0[130];
      v43 = v0[129];
      if (v40)
      {
        v79 = v0[135];
        v44 = v0[117];
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v81 = v47;
        *v45 = 138412546;
        *(v45 + 4) = v44;
        *v46 = v44;
        *(v45 + 12) = 2082;
        v0[93] = v14;
        v48 = v44;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = sub_1002346CC(v49, v50, &v81);

        *(v45 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Update is available, to pinned version %{public}s", v45, 0x16u);
        sub_1000032A8(v46, &qword_10077F920);

        sub_10000710C(v47);

        (*(v42 + 8))(v79, v43);
      }

      else
      {

        (*(v42 + 8))(v41, v43);
      }

      v32 = sub_100253F54;
      v33 = v0 + 2;
      v34 = v0 + 145;
      v35 = v0 + 112;
    }
  }

  else
  {
    if (v12 == enum case for DDMPurchaseMethod.manifest(_:))
    {
      v17 = sub_100253AC8;
      v18 = v0 + 2;
      v19 = v0 + 145;
      v20 = v0 + 118;
      goto LABEL_7;
    }

    if (v12 != enum case for DDMPurchaseMethod.preInstalled(_:) && v12 != enum case for DDMPurchaseMethod.other(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v21 = v0[117];
    static Logger.ddm.getter();
    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[117];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Updates not available for preinstalled apps", v26, 0xCu);
      sub_1000032A8(v27, &qword_10077F920);
    }

    v29 = v0[131];
    v30 = v0[130];
    v31 = v0[129];

    (*(v30 + 8))(v29, v31);
    v32 = sub_1002546C8;
    v33 = v0 + 2;
    v34 = v0 + 145;
    v35 = v0 + 82;
  }

  return _swift_asyncLet_finish(v33, v34, v32, v35);
}

uint64_t sub_100253AC8()
{
  v2 = v0;
  v3 = *(v1 + 984);
  if (v2)
  {

    v4 = sub_100253CCC;
  }

  else
  {
    v4 = sub_100253B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100253B48()
{
  v1 = *(v0 + 1160);
  *(v0 + 1161) = v1;
  v2 = *(v0 + 936);
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 936);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v1;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Previously polled update is available for manifest: %{BOOL}d", v7, 0x12u);
    sub_1000032A8(v8, &qword_10077F920);
  }

  v10 = *(v0 + 1088);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);

  (*(v11 + 8))(v10, v12);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1160, sub_100253E4C, v0 + 992);
}

uint64_t sub_100253CCC()
{
  *(v0 + 1161) = 0;
  v1 = *(v0 + 936);
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 936);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Previously polled update is available for manifest: %{BOOL}d", v6, 0x12u);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = *(v0 + 1088);
  v10 = *(v0 + 1040);
  v11 = *(v0 + 1032);

  (*(v10 + 8))(v9, v11);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1160, sub_100253E4C, v0 + 992);
}

uint64_t sub_100253E68()
{
  v1 = *(v0 + 1161);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_100253F70()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100254068()
{

  v1 = *(v0 + 8);

  return v1(2);
}

uint64_t sub_100254160()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10025423C()
{
  v2 = v0;
  v3 = *(v1 + 984);
  if (v2)
  {

    v4 = sub_100254440;
  }

  else
  {
    v4 = sub_1002542BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002542BC()
{
  v1 = *(v0 + 1160);
  *(v0 + 1162) = v1;
  v2 = *(v0 + 936);
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 936);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v1;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Previously polled update available: %{BOOL}d", v7, 0x12u);
    sub_1000032A8(v8, &qword_10077F920);
  }

  v10 = *(v0 + 1056);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);

  (*(v11 + 8))(v10, v12);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1160, sub_1002545C0, v0 + 752);
}

uint64_t sub_100254440()
{
  *(v0 + 1162) = 0;
  v1 = *(v0 + 936);
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 936);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Previously polled update available: %{BOOL}d", v6, 0x12u);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = *(v0 + 1056);
  v10 = *(v0 + 1040);
  v11 = *(v0 + 1032);

  (*(v10 + 8))(v9, v11);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1160, sub_1002545C0, v0 + 752);
}

uint64_t sub_1002545DC()
{
  v1 = *(v0 + 1162);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_1002546E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100254704, 0, 0);
}

uint64_t sub_100254704()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1002547DC;
  v4 = v0[2];

  return (sub_1003B254C)(sub_100270D8C, v2, v4);
}

uint64_t sub_1002547DC(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

void sub_10025490C(void **a1@<X0>, BOOL *a2@<X8>)
{
  v2 = *a1;
  v3 = sub_1004DA6EC();
  v5 = v3;
  if (v6)
  {
    v7 = v4;
    sub_1003AA7F4(v3, v4, v2, &v12);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    sub_1001DFEBC(v5, v7, 1);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1003AA5D4(v3, v2, &v12);
  v8 = v12;
  v9 = v13;
  v10 = v14;
  if (v14)
  {
LABEL_5:
    sub_100270DA8(v8, v9, v10);
  }

LABEL_6:
  *a2 = v10 != 0;
}

uint64_t sub_1002549F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100254AE4;

  return v5();
}

uint64_t sub_100254AE4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100254BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 96) = v13;
  *(v8 + 72) = a5;
  *(v8 + 80) = a8;
  *(v8 + 137) = a7;
  *(v8 + 136) = a6;
  *(v8 + 64) = a4;
  *(v8 + 104) = type metadata accessor for ManagedAppInstallationTask();
  *(v8 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100254CA8, a4, 0);
}

uint64_t sub_100254CA8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 137);
  v5 = *(v0 + 136);
  sub_100271284(*(v0 + 72), v1, type metadata accessor for DDMDeclaration);
  v6 = sub_100625FA0();
  v7 = [objc_opt_self() ephemeralSessionConfiguration];
  [v7 setHTTPShouldSetCookies:0];
  [v7 setHTTPCookieAcceptPolicy:1];
  [v7 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v8 = [objc_opt_self() sessionWithConfiguration:v7];

  type metadata accessor for PlainHTTP();
  v9 = swift_allocObject();
  *(v9 + 24) = 1;
  *(v9 + 16) = v8;
  *(v1 + v2[6]) = v5;
  *(v1 + v2[7]) = v6;
  *(v1 + v2[5]) = v9;
  v10 = v1 + v2[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + v2[9]) = v4;
  *(v1 + v2[10]) = 1;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_100254E88;
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);

  return sub_1004B5EE8(v13, v3, v12);
}

uint64_t sub_100254E88()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1002550A0;
  }

  else
  {
    v4 = sub_100254FB4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100254FB4()
{
  v1 = v0[9];
  sub_100271224(v0[14], type metadata accessor for ManagedAppInstallationTask);
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002550A0()
{
  v1 = v0[9];
  sub_100271224(v0[14], type metadata accessor for ManagedAppInstallationTask);
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10025518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 160) = v13;
  *(v8 + 136) = a5;
  *(v8 + 144) = a8;
  *(v8 + 201) = a7;
  *(v8 + 200) = a6;
  *(v8 + 128) = a4;
  *(v8 + 168) = type metadata accessor for ManagedAppInstallationTask();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10025523C, a4, 0);
}

uint64_t sub_10025523C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 201);
  v5 = *(v0 + 200);
  sub_100271284(*(v0 + 136), v1, type metadata accessor for DDMDeclaration);
  v6 = sub_100625FA0();
  v7 = [objc_opt_self() ephemeralSessionConfiguration];
  [v7 setHTTPShouldSetCookies:0];
  [v7 setHTTPCookieAcceptPolicy:1];
  [v7 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v8 = [objc_opt_self() sessionWithConfiguration:v7];

  type metadata accessor for PlainHTTP();
  v9 = swift_allocObject();
  *(v9 + 24) = 1;
  *(v9 + 16) = v8;
  *(v1 + v2[6]) = v5;
  *(v1 + v2[7]) = v6;
  *(v1 + v2[5]) = v9;
  v10 = v1 + v2[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + v2[9]) = v4;
  *(v1 + v2[10]) = 0;
  v11 = *(v3 + 24);
  v18 = *(v3 + 56);
  v19 = *(v3 + 40);
  v12 = sub_100006D8C(v3, v11);
  *(v0 + 40) = v11;
  *(v0 + 48) = v19;
  *(v0 + 64) = v18;
  v13 = sub_10020A748((v0 + 16));
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_10025547C;
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);

  return sub_1004B5EE8(v16, v15, v0 + 16);
}

uint64_t sub_10025547C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_100255690;
  }

  else
  {
    v5 = *(v2 + 128);
    sub_10000710C(v2 + 16);
    v4 = sub_1002555A4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002555A4()
{
  v1 = v0[17];
  sub_100271224(v0[22], type metadata accessor for ManagedAppInstallationTask);
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100255690()
{
  v1 = v0[17];
  sub_100271224(v0[22], type metadata accessor for ManagedAppInstallationTask);
  sub_10000710C((v0 + 2));
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100255784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[138] = v5;
  v6[137] = a5;
  v6[136] = a4;
  v6[135] = a3;
  v6[134] = a2;
  v6[133] = a1;
  type metadata accessor for URL();
  v6[139] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v7 = type metadata accessor for AppInstallRequestType();
  v6[142] = v7;
  v6[143] = *(v7 - 8);
  v6[144] = swift_task_alloc();
  v6[145] = type metadata accessor for AppStorePreflightTask();
  v6[146] = swift_task_alloc();
  type metadata accessor for AppInstall();
  v6[147] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[148] = v8;
  v6[149] = *(v8 - 8);
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  v6[153] = swift_task_alloc();
  v6[154] = type metadata accessor for InternalError();
  v6[155] = swift_task_alloc();
  v6[156] = type metadata accessor for DDMDeclaration(0);
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();
  v6[159] = swift_task_alloc();
  type metadata accessor for AppStoreMetadata(0);
  v6[160] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F390);
  v6[161] = swift_task_alloc();
  v9 = type metadata accessor for AppStorePackage(0);
  v6[162] = v9;
  v6[163] = *(v9 - 8);
  v6[164] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[165] = v10;
  v6[166] = *(v10 - 8);
  v6[167] = swift_task_alloc();
  v6[168] = swift_task_alloc();
  v6[169] = swift_task_alloc();
  v6[170] = swift_task_alloc();
  v6[171] = swift_task_alloc();
  v6[172] = swift_task_alloc();
  v6[173] = swift_task_alloc();
  v6[174] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  v6[175] = swift_task_alloc();
  v6[176] = type metadata accessor for AppStorePurchaseRequest(0);
  v6[177] = swift_task_alloc();
  v6[178] = type metadata accessor for AppStoreItem(0);
  v6[179] = swift_task_alloc();
  v6[180] = swift_task_alloc();
  v6[181] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F360);
  v6[182] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F368);
  v6[183] = swift_task_alloc();
  v11 = type metadata accessor for Platform();
  v6[184] = v11;
  v6[185] = *(v11 - 8);
  v6[186] = swift_task_alloc();
  v6[187] = swift_task_alloc();
  v6[188] = swift_task_alloc();
  v12 = type metadata accessor for MediaAPIApp(0);
  v6[189] = v12;
  v6[190] = *(v12 - 8);
  v6[191] = swift_task_alloc();
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v13 = type metadata accessor for DDMPurchaseMethod();
  v6[194] = v13;
  v6[195] = *(v13 - 8);
  v6[196] = swift_task_alloc();

  return _swift_task_switch(sub_100255E50, v5, 0);
}

uint64_t sub_100255E50()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  (*(v2 + 104))(v1, enum case for DDMPurchaseMethod.volumePurchaseProgram(_:), v3);
  v4 = static DDMPurchaseMethod.== infix(_:_:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
  }

  v5 = sub_100625FA0();
  v0[197] = v5;
  v6 = swift_task_alloc();
  v0[198] = v6;
  *v6 = v0;
  v6[1] = sub_100255FA4;
  v7 = v0[135];
  v8 = v0[133];

  return sub_1003E4794(v8, v7, v5);
}

uint64_t sub_100255FA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 1576);
    v8 = *(v6 + 1104);
    *(v6 + 1856) = a2;
    *(v6 + 1864) = a1;

    v9 = sub_100259B50;
    v10 = v8;
  }

  else
  {
    v11 = *(v6 + 1104);

    v9 = sub_100256138;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100256138()
{
  v1 = sub_100625FA0();
  v0[199] = v1;
  v2 = swift_task_alloc();
  v0[200] = v2;
  *v2 = v0;
  v2[1] = sub_100256218;
  v3 = v0[133];

  return sub_100307250(v3, 1, v1);
}

uint64_t sub_100256218()
{
  v1 = *(*v0 + 1592);
  v2 = *(*v0 + 1104);

  return _swift_task_switch(sub_100256374, v2, 0);
}

uint64_t sub_100256374()
{
  v1 = *(v0 + 1088);
  v2 = (*sub_100006D8C(*(v0 + 1096), *(*(v0 + 1096) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  *(v0 + 455) = *(v2 + 95);
  *(v0 + 424) = v4;
  *(v0 + 440) = v3;
  *(v0 + 408) = v5;
  v7 = v2[1];
  v6 = v2[2];
  *(v0 + 360) = *v2;
  *(v0 + 376) = v7;
  *(v0 + 392) = v6;
  sub_10020A7AC(v0 + 360, v0 + 472);
  *(v0 + 1608) = sub_1004DA6EC();
  *(v0 + 1616) = v8;
  *(v0 + 193) = v9;
  sub_10020A7AC(v0 + 360, v0 + 584);
  static Platform.current.getter();
  sub_10020A980(v1, v0 + 976);

  return _swift_task_switch(sub_1002564A4, 0, 0);
}

uint64_t sub_1002564A4()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 1456);
  *(*(v0 + 1536) + *(*(v0 + 1512) + 28)) = 1;
  sub_10020A980(v0 + 976, v0 + 200);
  v3 = *(v0 + 440);
  *(v0 + 304) = *(v0 + 424);
  *(v0 + 320) = v3;
  *(v0 + 335) = *(v0 + 455);
  v4 = *(v0 + 376);
  *(v0 + 240) = *(v0 + 360);
  *(v0 + 256) = v4;
  v5 = *(v0 + 408);
  *(v0 + 272) = *(v0 + 392);
  *(v0 + 288) = v5;
  *(v0 + 352) = 0;
  v6 = type metadata accessor for Locale.Language();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 1624) = v7;
  *v7 = v0;
  v7[1] = sub_100256618;
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1608);
  v10 = *(v0 + 1504);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1456);

  return sub_1003726D4(v11, v9, v8, v1 & 1, v10, v12);
}

uint64_t sub_100256618()
{
  v2 = *v1;
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v3 = *(v2 + 1616);
    v4 = *(v2 + 1608);
    v5 = *(v2 + 193);
    sub_1000032A8(*(v2 + 1456), &qword_10077F360);
    sub_1001DFEBC(v4, v3, v5 & 1);
    sub_10020A92C(v2 + 360);
    v6 = sub_100256A70;
  }

  else
  {
    sub_1000032A8(*(v2 + 1456), &qword_10077F360);
    v6 = sub_1002567BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002567BC()
{
  v1 = *(v0 + 1464);
  if ((*(*(v0 + 1520) + 48))(v1, 1, *(v0 + 1512)) == 1)
  {
    v2 = *(v0 + 1616);
    v3 = *(v0 + 1608);
    v4 = *(v0 + 193);
    sub_10020A92C(v0 + 360);
    sub_1000032A8(v1, &qword_10077F368);
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v5 = swift_allocError();
    v7 = v6;
    v8 = StoreAppIdentifier.description.getter();
    v10 = v9;
    sub_1001DFEBC(v3, v2, v4 & 1);
    *v7 = v8;
    v7[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *(v0 + 1656) = v5;
    v11 = *(v0 + 1504);
    v12 = *(v0 + 1480);
    v13 = *(v0 + 1472);
    v14 = *(v0 + 1104);
    sub_100262C04(v0 + 200);
    sub_10000710C(v0 + 976);
    (*(v12 + 8))(v11, v13);
    v15 = sub_1002575B0;
    v16 = v14;
  }

  else
  {
    v17 = *(v0 + 1544);
    v18 = *(v0 + 1536);
    v19 = *(v0 + 1528);
    v20 = *(v0 + 1504);
    v21 = *(v0 + 1480);
    v22 = *(v0 + 1472);
    v23 = *(v0 + 1104);
    sub_1001DFEBC(*(v0 + 1608), *(v0 + 1616), *(v0 + 193) & 1);
    sub_100262C04(v0 + 200);
    sub_10000710C(v0 + 976);
    v24 = *(v21 + 8);
    *(v0 + 1640) = v24;
    *(v0 + 1648) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v20, v22);
    sub_1002711BC(v1, v19, type metadata accessor for MediaAPIApp);
    sub_1002711BC(v19, v18, type metadata accessor for MediaAPIApp);
    sub_1002711BC(v18, v17, type metadata accessor for MediaAPIApp);
    v15 = sub_100256B4C;
    v16 = v23;
  }

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_100256A70()
{
  v0[207] = v0[204];
  v1 = v0[188];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[138];
  sub_100262C04((v0 + 25));
  sub_10000710C((v0 + 122));
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002575B0, v4, 0);
}

uint64_t sub_100256B4C()
{
  v113 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  static Platform.current.getter();
  v4 = sub_1004FF904();
  sub_100373074(v2, v3, v4, v101);
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1472);
  if (v1)
  {
    v8 = *(v0 + 1544);

    sub_10020A92C(v0 + 360);
    v5(v6, v7);
    v9 = v8;
LABEL_14:
    sub_100271224(v9, type metadata accessor for MediaAPIApp);

    v53 = *(v0 + 8);

    return v53();
  }

  v10 = *(&v101[0] + 1);
  v11 = v101[1];
  v12 = v101[2];
  v13 = v101[3];
  v14 = v102;
  v15 = v103;
  v16 = v104;
  v17 = v105;
  v18 = v106;
  v19 = v107;
  v20 = v109;
  v21 = v108;
  v22 = v110;
  v23 = v111;
  v24 = v112;
  v25 = *(v0 + 1496);
  *(v0 + 16) = *&v101[0];
  *(v0 + 24) = v10;
  *(v0 + 32) = v11;
  *(v0 + 48) = v12;
  *(v0 + 64) = v13;
  *(v0 + 80) = v14;
  *(v0 + 88) = v15;
  *(v0 + 96) = v16;
  *(v0 + 112) = v17;
  *(v0 + 128) = v18;
  *(v0 + 136) = v19;
  *(v0 + 144) = v21;
  *(v0 + 152) = v20;
  *(v0 + 168) = v22;
  *(v0 + 176) = v23;
  *(v0 + 192) = v24;

  v5(v6, v7);
  v5(v25, v7);
  v26 = *(v0 + 128);
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_9:
    v31 = *(v0 + 1272);
    v32 = *(v0 + 1064);
    sub_10026E6B8(v0 + 16);
    sub_10020A92C(v0 + 360);
    static Logger.ddm.getter();
    sub_100271284(v32, v31, type metadata accessor for DDMDeclaration);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 1272);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v101[0] = v38;
      *v36 = 138412546;
      result = sub_100625FA0();
      *(v36 + 4) = result;
      *v37 = result;
      *(v36 + 12) = 2082;
      if (*(v35 + 16))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      v40 = *(v0 + 1328);
      v97 = *(v0 + 1320);
      v99 = *(v0 + 1360);
      v41 = *(v0 + 1272);
      *(v0 + 1056) = *(v41 + 8);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_100271224(v41, type metadata accessor for DDMDeclaration);
      v45 = sub_1002346CC(v42, v44, v101);

      *(v36 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Unable to purchase '%{public}s' with missing metadata", v36, 0x16u);
      sub_1000032A8(v37, &qword_10077F920);

      sub_10000710C(v38);

      (*(v40 + 8))(v99, v97);
    }

    else
    {
      v46 = *(v0 + 1360);
      v47 = *(v0 + 1328);
      v48 = *(v0 + 1320);
      v49 = *(v0 + 1272);

      sub_100271224(v49, type metadata accessor for DDMDeclaration);
      (*(v47 + 8))(v46, v48);
    }

    v50 = *(v0 + 1544);
    v51 = type metadata accessor for ManagedAppDistributionError();
    sub_100262B9C(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, enum case for ManagedAppDistributionError.unrecoverableError(_:), v51);
    swift_willThrow();
    v9 = v50;
    goto LABEL_14;
  }

  v28 = 0;
  v29 = (v26 + 48);
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
    }

    *(v0 + 1664) = *(v29 - 1);
    if ((*v29 & 1) == 0)
    {
      break;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_18;
    }

    ++v28;

    v29 += 24;
    if (v27 == v28)
    {
      goto LABEL_9;
    }
  }

LABEL_18:
  v54 = *(v0 + 1248);
  v55 = *(v0 + 1064);
  v56 = (v55 + v54[26]);
  v57 = v56[1];
  if (v57)
  {
    v98 = *(v55 + 48);
    v100 = *v56;
    v96 = *(v55 + 56);
  }

  else
  {
    v98 = 0;
    v100 = 0;
    v96 = 0;
  }

  v58 = *(v0 + 1400);
  v59 = objc_allocWithZone(AMSBuyParams);

  v60 = String._bridgeToObjectiveC()();
  v61 = [v59 initWithString:v60];

  v95 = sub_100507E64(v61);
  v62 = (v55 + v54[22]);
  v63 = *v62;
  *(v0 + 1672) = *v62;
  v64 = v62[1];
  *(v0 + 1680) = v64;
  sub_100005934(v55 + v54[18], v58, &qword_10077F340);
  v65 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v66 = *(v65 - 8);
  v94 = v65;
  result = (*(v66 + 48))(v58, 1);
  v93 = v57;
  if (result == 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v67 = *(v0 + 1416);
  v68 = *(v0 + 1408);
  v90 = *(v0 + 1400);
  v69 = *(v0 + 1248);
  v92 = *(v0 + 1096);
  v70 = *(v0 + 1088);
  v71 = *(v0 + 1064);
  sub_10026E620(v63, v64);
  sub_10026E6B8(v0 + 16);
  sub_10020A980(v70, v67 + v68[10]);
  v72 = (v71 + *(v69 + 92));
  v73 = *v72;
  v91 = *(v72 + 8);
  v74 = sub_100625FA0();
  *v67 = v95;
  *(v67 + 8) = v100;
  *(v67 + 16) = v93;
  *(v67 + 24) = v98;
  *(v67 + 32) = v96;
  *(v67 + 40) = 0;
  *(v67 + 48) = v63;
  *(v67 + 56) = v64;
  (*(v66 + 32))(v67 + v68[8], v90, v94);
  v75 = (v67 + v68[9]);
  v76 = *(v0 + 455);
  v78 = *(v0 + 424);
  v77 = *(v0 + 440);
  v75[3] = *(v0 + 408);
  v75[4] = v78;
  v75[5] = v77;
  *(v75 + 95) = v76;
  v80 = *(v0 + 376);
  v79 = *(v0 + 392);
  *v75 = *(v0 + 360);
  v75[1] = v80;
  v75[2] = v79;
  *(v67 + v68[11]) = 0;
  *(v67 + v68[12]) = 1;
  v81 = v67 + v68[13];
  *v81 = v73;
  *(v81 + 8) = v91;
  *(v67 + v68[14]) = v74;
  *(v0 + 1688) = *(*sub_100006D8C(v92, v92[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);

  v82 = sub_1004DA6EC();
  v84 = v83;
  v86 = v85;
  *(v0 + 1696) = v82;
  *(v0 + 1704) = v83;
  *(v0 + 194) = v85;
  v87 = swift_task_alloc();
  *(v0 + 1712) = v87;
  *v87 = v0;
  v87[1] = sub_10025786C;
  v88 = *(v0 + 1440);
  v89 = *(v0 + 1416);

  return sub_1005002C0(v88, v82, v84, v86 & 1, v89);
}

uint64_t sub_1002575B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025786C()
{
  v2 = *v1;
  *(v2 + 1720) = v0;

  v3 = *(v2 + 1104);
  sub_1001DFEBC(*(v2 + 1696), *(v2 + 1704), *(v2 + 194) & 1);

  if (v0)
  {
    v4 = sub_100259E30;
  }

  else
  {
    v4 = sub_100257A20;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100257A20()
{
  v102 = v0;
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[178];
  sub_100271224(v0[177], type metadata accessor for AppStorePurchaseRequest);
  sub_1002711BC(v2, v1, type metadata accessor for AppStoreItem);
  v4 = (v1 + *(v3 + 24));
  v91 = v4[3];
  v95 = v4[2];
  v96 = v91;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v0[128] = *v1;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v90 = v4;
  v0[129] = v4[12];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v10 = v95;
  v9 = v96;
  sub_1006258D8();
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  sub_1002710CC(v0[165], qword_1007B88E8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v95 = v14;
    *v13 = 136446210;

    *(v13 + 4) = sub_1002346CC(v10, v9, &v95);
    _os_log_impl(&_mh_execute_header, v11, v12, "Activity associated with %{public}s", v13, 0xCu);
    sub_10000710C(v14);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  static Logger.ddm.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = sub_100625FA0();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Purchase completed, performing compatiblity checks", v17, 0xCu);
    sub_1000032A8(v18, &qword_10077F920);
  }

  v20 = v0[181];
  v21 = v0[178];
  v22 = v0[174];
  v23 = v0[166];
  v24 = v0[165];
  v25 = v0[134];

  v26 = *(v23 + 8);
  v0[216] = v26;
  v0[217] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94 = v26;
  v26(v22, v24);
  v93 = *(v20 + *(v21 + 28));
  v27 = [v25 iTunesMetadata];
  v28 = [v27 variantID];

  if (v28)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_10033AA60(v29, v31, &v95);
    v32 = v95;
    v33 = v96;
    v34 = v97;
    v35 = v98;
    v36 = v99;
    v28 = v100;
    v37 = v101;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v38 = v0[163];
  v92 = v0[162];
  v39 = v0[161];
  v0[115] = v32;
  v0[116] = v33;
  v0[117] = v34;
  v0[118] = v35;
  v0[119] = v36;
  v0[120] = v28;
  v0[121] = v37;
  sub_10025C640(v0 + 115, v93, v39);
  sub_100271104(v32, v33);
  if ((*(v38 + 48))(v39, 1, v92) == 1)
  {
    sub_1000032A8(v0[161], &qword_10077F390);
    static Logger.ddm.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Skipping update due to missing variant", v42, 2u);
    }

    v43 = v0[171];
    v44 = v0[165];

    v94(v43, v44);
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v45 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_30;
  }

  v46 = v0[164];
  v47 = v0[162];
  sub_1002711BC(v0[161], v46, type metadata accessor for AppStorePackage);
  v48 = (v46 + *(v47 + 32));
  v49 = *v48;
  v0[218] = *v48;
  v50 = v48[1];
  v0[219] = v50;
  if (v50 >> 60 == 15)
  {
    static Logger.ddm.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Skipping update due to missing SINF data", v53, 2u);
    }

    v54 = v0[172];
    v55 = v0[165];
    v56 = v0[164];

    v94(v54, v55);
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v45 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_28;
  }

  sub_10020ABFC(v49, v50);
  static Logger.ddm.getter();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Updating app metadata", v59, 2u);
  }

  v60 = v0[173];
  v61 = v0[165];

  v94(v60, v61);
  v62 = objc_allocWithZone(IXApplicationIdentity);
  v63 = String._bridgeToObjectiveC()();
  v64 = [v62 initWithBundleIdentifier:v63];
  v0[220] = v64;

  if (!v64)
  {
    v73 = v0[164];
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v45 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1001CEE68(v49, v50);
    v74 = v73;
LABEL_29:
    sub_100271224(v74, type metadata accessor for AppStorePackage);
LABEL_30:
    v0[240] = v45;
    static Logger.ddm.getter();
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412546;
      v80 = sub_100625FA0();
      *(v78 + 4) = v80;
      *v79 = v80;
      *(v78 + 12) = 2114;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v81;
      v79[1] = v81;

      _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Claim failed, falling back to reinstallation due to error: %{public}@", v78, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {
    }

    v82 = v0[137];
    v83 = v0[133];
    (v0[216])(v0[167], v0[165]);
    v0[241] = *(*sub_100006D8C(v82, v82[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v84 = *(v83 + 48);
    v85 = *(v83 + 56);

    UUID.init()();
    v86 = swift_task_alloc();
    v0[242] = v86;
    *v86 = v0;
    v86[1] = sub_10025B040;
    v87 = v0[152];
    v88 = v0[151];

    return sub_10054ADF8(v88, v84, v85, 0, 2, v87, 0);
  }

  v65 = objc_opt_self();
  v0[221] = v65;
  sub_1001DFECC(v49, v50);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001CEE68(v49, v50);
  v0[130] = 0;
  LODWORD(v65) = [v65 updateSINFForAppWithIdentity:v64 sinfData:isa options:0 error:v0 + 130];

  v67 = v0[130];
  if (!v65)
  {
    v56 = v0[164];
    v75 = v67;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001CEE68(v49, v50);
LABEL_28:
    v74 = v56;
    goto LABEL_29;
  }

  v68 = v0[160];
  sub_100006190(0, &qword_1007813E0);
  sub_100271284(v90, v68, type metadata accessor for AppStoreMetadata);
  v69 = v67;
  sub_10061AAE8(v68);
  v71 = v70;
  v0[222] = v70;
  v72 = String._bridgeToObjectiveC()();
  [v71 setManagementDeclarationIdentifier:v72];

  return _swift_task_switch(sub_100258668, 0, 0);
}

uint64_t sub_100258668()
{
  v0[223] = [objc_opt_self() ams_sharedAccountStore];
  v1 = swift_task_alloc();
  v0[224] = v1;
  *v1 = v0;
  v1[1] = sub_100258764;
  v2 = v0[210];
  v3 = v0[209];

  return sub_100621B5C(v3, v2);
}

uint64_t sub_100258764(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1800) = a1;

  v4 = *(v3 + 1784);
  v5 = *(v3 + 1104);
  if (v1)
  {

    v6 = sub_100258EBC;
  }

  else
  {

    v6 = sub_1002588F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002588F4()
{
  v55 = v0;
  v1 = *(v0 + 1800);
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = [*(v0 + 1800) username];
    [v2 setAppleID:v3];

    v4 = [v1 ams_DSID];
    [v2 setDSPersonID:v4];

    v5 = [v1 ams_altDSID];
    [v2 setAltDSID:v5];
  }

  v6 = *(v0 + 1072);
  sub_10061B3A0(*(v0 + 1744), *(v0 + 1752), 1);
  v7 = [v6 iTunesMetadata];
  v8 = [v7 variantID];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_10033AA60(v9, v11, &v52);
    object = v52._object;
    if (v52._object)
    {
      countAndFlagsBits = v52._countAndFlagsBits;
      v14 = v53;
      v15 = v54;
      if (v54)
      {
        v52._countAndFlagsBits = 14897;
        v52._object = 0xE200000000000000;
        v16._countAndFlagsBits = countAndFlagsBits;
        v16._object = object;
        String.append(_:)(v16);
        v17._countAndFlagsBits = 47;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        v18 = v14;
        v19 = v15;
      }

      else
      {
        v52._countAndFlagsBits = 14896;
        v52._object = 0xE200000000000000;
        v18 = countAndFlagsBits;
        v19 = object;
      }

      String.append(_:)(*&v18);
      sub_100271104(countAndFlagsBits, object);
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }
  }

  v20 = *(v0 + 1776);
  v21 = *(v0 + 1768);
  v22 = *(v0 + 1760);
  [v20 setVariantID:v8];

  *(v0 + 1048) = 0;
  v23 = [v21 updateiTunesMetadata:v20 forAppWithIdentity:v22 error:v0 + 1048];
  v24 = *(v0 + 1048);
  if (v23)
  {
    v25 = v24;
    v26 = sub_100625FA0();
    *(v0 + 1808) = v26;
    v27 = swift_task_alloc();
    *(v0 + 1816) = v27;
    *v27 = v0;
    v27[1] = sub_1002593D8;
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1064);

    return sub_1003E5984(v30, v29, 0, v28, v26);
  }

  else
  {
    v32 = *(v0 + 1776);
    v33 = *(v0 + 1760);
    v34 = *(v0 + 1752);
    v35 = *(v0 + 1744);
    v36 = *(v0 + 1312);
    v37 = v24;
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001CEE68(v35, v34);
    sub_100271224(v36, type metadata accessor for AppStorePackage);
    *(v0 + 1920) = v38;
    static Logger.ddm.getter();
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412546;
      v43 = sub_100625FA0();
      *(v41 + 4) = v43;
      *v42 = v43;
      *(v41 + 12) = 2114;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v44;
      v42[1] = v44;

      _os_log_impl(&_mh_execute_header, v39, v40, "[%@] Claim failed, falling back to reinstallation due to error: %{public}@", v41, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {
    }

    v45 = *(v0 + 1096);
    v46 = *(v0 + 1064);
    (*(v0 + 1728))(*(v0 + 1336), *(v0 + 1320));
    *(v0 + 1928) = *(*sub_100006D8C(v45, v45[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v47 = *(v46 + 48);
    v48 = *(v46 + 56);

    UUID.init()();
    v49 = swift_task_alloc();
    *(v0 + 1936) = v49;
    *v49 = v0;
    v49[1] = sub_10025B040;
    v50 = *(v0 + 1216);
    v51 = *(v0 + 1208);

    return sub_10054ADF8(v51, v47, v48, 0, 2, v50, 0);
  }
}

uint64_t sub_100258EBC()
{
  v50 = v0;
  v1 = *(v0 + 1072);
  sub_10061B3A0(*(v0 + 1744), *(v0 + 1752), 1);
  v2 = [v1 iTunesMetadata];
  v3 = [v2 variantID];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10033AA60(v4, v6, &v47);
    object = v47._object;
    if (v47._object)
    {
      countAndFlagsBits = v47._countAndFlagsBits;
      v9 = v48;
      v10 = v49;
      if (v49)
      {
        v47._countAndFlagsBits = 14897;
        v47._object = 0xE200000000000000;
        v11._countAndFlagsBits = countAndFlagsBits;
        v11._object = object;
        String.append(_:)(v11);
        v12._countAndFlagsBits = 47;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        v13 = v9;
        v14 = v10;
      }

      else
      {
        v47._countAndFlagsBits = 14896;
        v47._object = 0xE200000000000000;
        v13 = countAndFlagsBits;
        v14 = object;
      }

      String.append(_:)(*&v13);
      sub_100271104(countAndFlagsBits, object);
      v3 = String._bridgeToObjectiveC()();
    }

    else
    {
      v3 = 0;
    }
  }

  v15 = *(v0 + 1776);
  v16 = *(v0 + 1768);
  v17 = *(v0 + 1760);
  [v15 setVariantID:v3];

  *(v0 + 1048) = 0;
  v18 = [v16 updateiTunesMetadata:v15 forAppWithIdentity:v17 error:v0 + 1048];
  v19 = *(v0 + 1048);
  if (v18)
  {
    v20 = v19;
    v21 = sub_100625FA0();
    *(v0 + 1808) = v21;
    v22 = swift_task_alloc();
    *(v0 + 1816) = v22;
    *v22 = v0;
    v22[1] = sub_1002593D8;
    v23 = *(v0 + 1080);
    v24 = *(v0 + 1072);
    v25 = *(v0 + 1064);

    return sub_1003E5984(v25, v24, 0, v23, v21);
  }

  else
  {
    v27 = *(v0 + 1776);
    v28 = *(v0 + 1760);
    v29 = *(v0 + 1752);
    v30 = *(v0 + 1744);
    v31 = *(v0 + 1312);
    v32 = v19;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001CEE68(v30, v29);
    sub_100271224(v31, type metadata accessor for AppStorePackage);
    *(v0 + 1920) = v33;
    static Logger.ddm.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412546;
      v38 = sub_100625FA0();
      *(v36 + 4) = v38;
      *v37 = v38;
      *(v36 + 12) = 2114;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v39;
      v37[1] = v39;

      _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Claim failed, falling back to reinstallation due to error: %{public}@", v36, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 1096);
    v41 = *(v0 + 1064);
    (*(v0 + 1728))(*(v0 + 1336), *(v0 + 1320));
    *(v0 + 1928) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v42 = *(v41 + 48);
    v43 = *(v41 + 56);

    UUID.init()();
    v44 = swift_task_alloc();
    *(v0 + 1936) = v44;
    *v44 = v0;
    v44[1] = sub_10025B040;
    v45 = *(v0 + 1216);
    v46 = *(v0 + 1208);

    return sub_10054ADF8(v46, v42, v43, 0, 2, v45, 0);
  }
}

uint64_t sub_1002593D8()
{
  v1 = *(*v0 + 1808);
  v2 = *(*v0 + 1104);

  return _swift_task_switch(sub_100259534, v2, 0);
}

uint64_t sub_100259534()
{
  v1 = *(v0 + 1064);
  v2 = *(*sub_100006D8C(*(v0 + 1096), *(*(v0 + 1096) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 1824) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1832) = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  *(v0 + 1840) = v4;
  *v4 = v0;
  v4[1] = sub_10025966C;

  return sub_10052EBA8(v4, sub_100271148, v3, v2);
}

uint64_t sub_10025966C()
{
  v2 = *v1;
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v3 = *(v2 + 1104);

    v4 = sub_10025C394;
  }

  else
  {
    v3 = *(v2 + 1104);

    v4 = sub_100259814;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100259814()
{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1312);

  sub_1001CEE68(v3, v2);
  sub_100271224(v5, type metadata accessor for AppStorePackage);
  sub_100271224(v4, type metadata accessor for MediaAPIApp);
  sub_100271224(*(v0 + 1448), type metadata accessor for AppStoreItem);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100259B50()
{
  v1 = v0[233];
  v2 = v0[232];
  sub_100270870();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100259E30()
{
  v73 = v0;
  v1 = *(v0 + 1720);
  sub_100271224(*(v0 + 1416), type metadata accessor for AppStorePurchaseRequest);
  *(v0 + 1016) = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1240);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100271224(v2, type metadata accessor for InternalError);
    }

    else
    {
      v3 = type metadata accessor for ManagedAppDistributionError();
      *(v0 + 1872) = v3;
      v4 = *(v3 - 8);
      v5 = v4;
      *(v0 + 1880) = v4;
      v6 = (*(v4 + 88))(v2, v3);
      *(v0 + 196) = v6;
      if (v6 == enum case for ManagedAppDistributionError.licenseNotFound(_:))
      {
        v7 = *(v0 + 1264);
        v8 = *(v0 + 1064);

        static Logger.ddm.getter();
        sub_100271284(v8, v7, type metadata accessor for DDMDeclaration);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        v11 = os_log_type_enabled(v9, v10);
        v12 = *(v0 + 1352);
        v13 = *(v0 + 1328);
        v14 = *(v0 + 1320);
        v15 = *(v0 + 1264);
        if (v11)
        {
          v64 = v10;
          v16 = swift_slowAlloc();
          log = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v72 = v66;
          *v16 = 138412546;
          v17 = sub_100625FA0();
          *(v16 + 4) = v17;
          log->isa = v17;
          *(v16 + 12) = 2082;
          v68 = v14;
          v70 = v12;
          v18 = sub_1004DA6EC();
          v20 = v19;
          v22 = v21;
          v23 = StoreAppIdentifier.description.getter();
          v25 = v24;
          sub_1001DFEBC(v18, v20, v22 & 1);
          sub_100271224(v15, type metadata accessor for DDMDeclaration);
          v26 = sub_1002346CC(v23, v25, &v72);

          *(v16 + 14) = v26;

          _os_log_impl(&_mh_execute_header, v9, v64, "[%@] License not found for: %{public}s", v16, 0x16u);
          sub_1000032A8(log, &qword_10077F920);

          sub_10000710C(v66);

          (*(v13 + 8))(v70, v68);
        }

        else
        {

          sub_100271224(v15, type metadata accessor for DDMDeclaration);
          (*(v13 + 8))(v12, v14);
        }

        v58 = *(v0 + 1224);
        v59 = enum case for ManagedAppStatus.Reason.licenseNotFound(_:);
        v60 = type metadata accessor for ManagedAppStatus.Reason();
        v61 = *(v60 - 8);
        (*(v61 + 104))(v58, v59, v60);
        (*(v61 + 56))(v58, 0, 1, v60);
        v52 = sub_100625FA0();
        *(v0 + 1888) = v52;
        v53 = swift_task_alloc();
        *(v0 + 1896) = v53;
        *v53 = v0;
        v54 = sub_10025A624;
        goto LABEL_12;
      }

      (*(v5 + 8))(*(v0 + 1240), v3);
    }
  }

  v27 = *(v0 + 1256);
  v28 = *(v0 + 1064);

  static Logger.ddm.getter();
  sub_100271284(v28, v27, type metadata accessor for DDMDeclaration);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v67 = *(v0 + 1328);
    v69 = *(v0 + 1320);
    v71 = *(v0 + 1344);
    v31 = *(v0 + 1256);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v72 = v65;
    *v32 = 138412802;
    v34 = sub_100625FA0();
    *(v32 + 4) = v34;
    *v33 = v34;
    *(v32 + 12) = 2114;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v35;
    v33[1] = v35;
    *(v32 + 22) = 2082;
    loga = v29;
    v36 = v31;
    v37 = sub_1004DA6EC();
    v39 = v38;
    v41 = v40;
    v42 = StoreAppIdentifier.description.getter();
    v44 = v43;
    sub_1001DFEBC(v37, v39, v41 & 1);
    sub_100271224(v36, type metadata accessor for DDMDeclaration);
    v45 = sub_1002346CC(v42, v44, &v72);

    *(v32 + 24) = v45;

    _os_log_impl(&_mh_execute_header, loga, v30, "[%@] Unknown purchase error: %{public}@ for: %{public}s", v32, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v65);

    (*(v67 + 8))(v71, v69);
  }

  else
  {
    v46 = *(v0 + 1344);
    v47 = *(v0 + 1328);
    v48 = *(v0 + 1320);
    v49 = *(v0 + 1256);

    sub_100271224(v49, type metadata accessor for DDMDeclaration);
    (*(v47 + 8))(v46, v48);
  }

  v50 = *(v0 + 1224);
  v51 = type metadata accessor for ManagedAppStatus.Reason();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  v52 = sub_100625FA0();
  *(v0 + 1904) = v52;
  v53 = swift_task_alloc();
  *(v0 + 1912) = v53;
  *v53 = v0;
  v54 = sub_10025AB20;
LABEL_12:
  v53[1] = v54;
  v55 = *(v0 + 1224);
  v56 = *(v0 + 1064);

  return sub_10030B39C(v56, v55, 1, v52);
}

uint64_t sub_10025A624()
{
  v1 = *(*v0 + 1888);
  v2 = *(*v0 + 1224);
  v3 = *(*v0 + 1104);

  sub_1000032A8(v2, &qword_10077F380);

  return _swift_task_switch(sub_10025A7AC, v3, 0);
}

uint64_t sub_10025A7AC()
{
  v1 = *(v0 + 196);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1872);
  v4 = *(v0 + 1544);
  sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  (*(v2 + 104))(v5, v1, v3);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_100271224(v4, type metadata accessor for MediaAPIApp);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10025AB20()
{
  v1 = *(*v0 + 1904);
  v2 = *(*v0 + 1224);
  v3 = *(*v0 + 1104);

  sub_1000032A8(v2, &qword_10077F380);

  return _swift_task_switch(sub_10025ACA8, v3, 0);
}

uint64_t sub_10025ACA8()
{
  v1 = *(v0 + 1544);
  sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  v3 = v2;
  v4 = enum case for ManagedAppDistributionError.networkError(_:);
  v5 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_100271224(v1, type metadata accessor for MediaAPIApp);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10025B040()
{
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v2 = sub_10025B984;
  }

  else
  {
    v2 = sub_10025B180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025B180()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1072);
  (*(*(v0 + 1192) + 16))(*(v0 + 1200), *(v0 + 1208), *(v0 + 1184));
  sub_100271284(v1, v2, type metadata accessor for AppStoreItem);
  (*(v4 + 104))(v3, enum case for AppInstallRequestType.update(_:), v5);
  v8 = [v7 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  FilePath.init(_:)();
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    __break(1u);
  }

  v40 = *(v0 + 1672);
  v41 = *(v0 + 1680);
  v11 = *(v0 + 1192);
  v34 = *(v0 + 1184);
  v35 = *(v0 + 1200);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v36 = *(v0 + 1144);
  v37 = *(v0 + 1432);
  v38 = *(v0 + 1136);
  v39 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1096);
  v16 = *(v0 + 1064);
  (*(v10 + 32))(v14, *(v0 + 1120), v9);
  (*(v10 + 56))(v14, 0, 1, v9);
  sub_100271284(v16, v12 + v13[8], type metadata accessor for DDMDeclaration);
  v17 = (*sub_100006D8C(v15, v15[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v18 = *(v17 + 95);
  v19 = v17[5];
  v20 = v17[3];
  *(v0 + 760) = v17[4];
  *(v0 + 776) = v19;
  *(v0 + 791) = v18;
  *(v0 + 744) = v20;
  v21 = *v17;
  v22 = v17[2];
  *(v0 + 712) = v17[1];
  *(v0 + 728) = v22;
  *(v0 + 696) = v21;
  (*(v11 + 32))(v12, v35, v34);
  sub_1002711BC(v37, v12 + v13[5], type metadata accessor for AppStoreItem);
  (*(v36 + 32))(v12 + v13[6], v39, v38);
  sub_10020A668(v14, v12 + v13[7], &qword_10077E958);
  v23 = (v12 + v13[9]);
  v24 = *(v0 + 791);
  v26 = *(v0 + 760);
  v25 = *(v0 + 776);
  v23[3] = *(v0 + 744);
  v23[4] = v26;
  v23[5] = v25;
  *(v23 + 95) = v24;
  v28 = *(v0 + 712);
  v27 = *(v0 + 728);
  *v23 = *(v0 + 696);
  v23[1] = v28;
  v23[2] = v27;
  v29 = (v12 + v13[10]);
  *v29 = v40;
  v29[1] = v41;
  *(v12 + v13[11]) = 0;
  sub_10026E620(v40, v41);
  sub_10020A7AC(v0 + 696, v0 + 808);
  v30 = swift_task_alloc();
  *(v0 + 1952) = v30;
  *v30 = v0;
  v30[1] = sub_10025B54C;
  v31 = *(v0 + 1176);
  v32 = *(v0 + 1088);

  return sub_100476BD8(v31, v32);
}

uint64_t sub_10025B54C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1960) = a1;
  *(v3 + 1968) = v1;

  if (v1)
  {
    v4 = sub_10025B8D4;
  }

  else
  {
    v4 = sub_10025B690;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10025B690()
{
  sub_100271224(v0[146], type metadata accessor for AppStorePreflightTask);
  v1 = swift_task_alloc();
  v0[247] = v1;
  *v1 = v0;
  v1[1] = sub_10025B774;
  v2 = v0[245];
  v3 = v0[147];

  return sub_10054CDE0(v3, v2);
}

uint64_t sub_10025B774()
{
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v2 = sub_10025BE54;
  }

  else
  {
    v2 = sub_10025BA48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025B8D4()
{
  sub_100271224(v0[146], type metadata accessor for AppStorePreflightTask);
  v0[249] = v0[246];
  v1 = v0[241];

  return _swift_task_switch(sub_10025BF04, v1, 0);
}

uint64_t sub_10025B984()
{
  v1 = v0[149];

  v2 = *(v1 + 8);
  v0[250] = v0[243];
  v3 = v0[138];
  v2(v0[152], v0[148]);

  return _swift_task_switch(sub_10025C090, v3, 0);
}

uint64_t sub_10025BA48()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[149];
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[138];

  sub_100271224(v5, type metadata accessor for AppInstall);
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);

  return _swift_task_switch(sub_10025BB54, v6, 0);
}

uint64_t sub_10025BB54()
{
  v1 = v0[193];

  sub_100271224(v1, type metadata accessor for MediaAPIApp);
  sub_100271224(v0[181], type metadata accessor for AppStoreItem);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10025BE54()
{
  sub_100271224(v0[147], type metadata accessor for AppInstall);
  v0[249] = v0[248];
  v1 = v0[241];

  return _swift_task_switch(sub_10025BF04, v1, 0);
}

uint64_t sub_10025BF04()
{
  sub_10054C8D0(*(v0 + 1208));

  return _swift_task_switch(sub_10025BF9C, 0, 0);
}

uint64_t sub_10025BF9C()
{
  v1 = v0[151];
  v2 = v0[149];
  v3 = v0[148];
  swift_willThrow();

  v4 = *(v2 + 8);
  v4(v1, v3);
  v0[250] = v0[249];
  v5 = v0[138];
  v4(v0[152], v0[148]);

  return _swift_task_switch(sub_10025C090, v5, 0);
}

uint64_t sub_10025C090()
{
  v1 = v0[193];
  v2 = v0[181];

  sub_100271224(v1, type metadata accessor for MediaAPIApp);
  sub_100271224(v2, type metadata accessor for AppStoreItem);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10025C394()
{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1312);

  sub_1001CEE68(v3, v2);
  sub_100271224(v4, type metadata accessor for AppStorePackage);
  *(v0 + 1920) = *(v0 + 1848);
  static Logger.ddm.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = sub_100625FA0();
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;

    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Claim failed, falling back to reinstallation due to error: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 1096);
  v12 = *(v0 + 1064);
  (*(v0 + 1728))(*(v0 + 1336), *(v0 + 1320));
  *(v0 + 1928) = *(*sub_100006D8C(v11, v11[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v13 = *(v12 + 48);
  v14 = *(v12 + 56);

  UUID.init()();
  v15 = swift_task_alloc();
  *(v0 + 1936) = v15;
  *v15 = v0;
  v15[1] = sub_10025B040;
  v16 = *(v0 + 1216);
  v17 = *(v0 + 1208);

  return sub_10054ADF8(v17, v13, v14, 0, 2, v16, 0);
}

uint64_t sub_10025C640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 2);
  v18 = *(a1 + 1);
  v19 = v7;
  v8 = a1[6];
  v9 = type metadata accessor for AppStorePackage(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v20[0] = v6;
    v20[1] = v5;
    v21 = v18;
    v22 = v19;
    v23 = v8;
    __chkstk_darwin(v11);
    *(&v18 - 2) = v20;

    sub_100209BD4(sub_100271164, a2, a3);
  }

  else
  {
    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v17 = *(v10 + 72);
      while (1)
      {
        sub_100271284(v16, v13, type metadata accessor for AppStorePackage);
        if (!*&v13[*(v9 + 48) + 8])
        {
          break;
        }

        sub_100271224(v13, type metadata accessor for AppStorePackage);
        v16 += v17;
        if (!--v15)
        {
          return (*(v10 + 56))(a3, 1, 1, v9);
        }
      }

      sub_1002711BC(v13, a3, type metadata accessor for AppStorePackage);
      return (*(v10 + 56))(a3, 0, 1, v9);
    }

    else
    {
      return (*(v10 + 56))(a3, 1, 1, v9);
    }
  }
}

uint64_t sub_10025C868(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10025C910, a4, 0);
}

uint64_t sub_10025C910()
{
  if (*(v0 + 80) == 1)
  {
    v1 = sub_100625FA0();
    *(v0 + 48) = v1;
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_10025CA14;
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    return sub_1006262F8(v4, v3, 0, v1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(1);
  }
}

uint64_t sub_10025CA14(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  *(*v1 + 81) = a1;

  return _swift_task_switch(sub_10025CB44, v3, 0);
}

uint64_t sub_10025CB44()
{
  if (*(v0 + 81))
  {
    v3 = *(v0 + 40);
    v4 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v5 = type metadata accessor for ManagedAppStatus.Reason();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v3, v4, v5);
    (*(v6 + 56))(v3, 0, 1, v5);
    v7 = sub_100625FA0();
    *(v0 + 64) = v7;
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10025CCDC;
    v9 = *(v0 + 40);
    v10 = *(v0 + 16);

    return sub_10030B39C(v10, v9, 1, v7);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1(1);
  }
}

uint64_t sub_10025CCDC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v5 = *v0;

  sub_1000032A8(v2, &qword_10077F380);

  v3 = *(v5 + 8);

  return v3(0);
}

void sub_10025CE28(id *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;

  v6 = sub_100619E6C(0, 0, v3, v4, sub_100619DF8, 0, v5);

  if (v6)
  {

    v5 = v6;
  }

  else
  {

    v7 = sub_100564C98(0, v3, v4, v5);
    if (!v2)
    {
    }
  }
}

uint64_t sub_10025CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v16;
  *(v8 + 184) = v17;
  *(v8 + 160) = a5;
  *(v8 + 168) = a8;
  *(v8 + 240) = a6;
  *(v8 + 152) = a4;
  *(v8 + 192) = type metadata accessor for ManagedAppInstallationTask();
  *(v8 + 200) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 208) = v13;
  *v13 = v8;
  v13[1] = sub_10025CFEC;

  return sub_10025C868(a6, a5, a7, a4);
}

uint64_t sub_10025CFEC(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_10025D104, v2, 0);
}

uint64_t sub_10025D104()
{
  if (*(v0 + 241) == 1)
  {
    v2 = *(v0 + 192);
    v1 = *(v0 + 200);
    v3 = *(v0 + 184);
    v4 = *(v0 + 240);
    v5 = *(v0 + 168);
    sub_100271284(*(v0 + 160), v1, type metadata accessor for DDMDeclaration);
    v6 = sub_100625FA0();
    v7 = [objc_opt_self() ephemeralSessionConfiguration];
    [v7 setHTTPShouldSetCookies:0];
    [v7 setHTTPCookieAcceptPolicy:1];
    [v7 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v8 = [objc_opt_self() sessionWithConfiguration:v7];

    type metadata accessor for PlainHTTP();
    v9 = swift_allocObject();
    *(v9 + 24) = 1;
    *(v9 + 16) = v8;
    *(v1 + v2[6]) = 0;
    *(v1 + v2[7]) = v6;
    *(v1 + v2[5]) = v9;
    v10 = v1 + v2[8];
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v1 + v2[9]) = v4;
    *(v1 + v2[10]) = 0;
    v11 = *(v5 + 24);
    v22 = *(v5 + 56);
    v23 = *(v5 + 40);
    v12 = sub_100006D8C(v5, v11);
    *(v0 + 40) = v11;
    *(v0 + 48) = v23;
    *(v0 + 64) = v22;
    v13 = sub_10020A748((v0 + 16));
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_10025D3DC;
    v15 = *(v0 + 176);

    return sub_1004B5EE8(v15, v3, v0 + 16);
  }

  else
  {
    v17 = *(v0 + 160);
    v19 = *(v17 + 48);
    v18 = *(v17 + 56);
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v20[1] = sub_10025D5F0;
    v21 = *(v0 + 168);

    return sub_100248324(v19, v18, v21);
  }
}

uint64_t sub_10025D3DC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_10025D83C;
  }

  else
  {
    v5 = *(v2 + 152);
    sub_10000710C(v2 + 16);
    v4 = sub_10025D504;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10025D504()
{
  v1 = v0[20];
  sub_100271224(v0[25], type metadata accessor for ManagedAppInstallationTask);
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10025D5F0()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_10025D700, v1, 0);
}

uint64_t sub_10025D700()
{
  v1 = *(v0 + 160);
  type metadata accessor for InternalError();
  sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025D83C()
{
  v1 = v0[20];
  sub_100271224(v0[25], type metadata accessor for ManagedAppInstallationTask);
  sub_10000710C((v0 + 2));
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10025D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v16;
  v8[15] = a5;
  v8[16] = a7;
  v8[14] = a4;
  v13 = swift_task_alloc();
  v8[19] = v13;
  *v13 = v8;
  v13[1] = sub_10025D9EC;

  return sub_10025C868(a6, a5, a7, a4);
}

uint64_t sub_10025D9EC(char a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10025DB04, v2, 0);
}

uint64_t sub_10025DB04()
{
  if (*(v0 + 256) == 1)
  {
    v1 = sub_100625FA0();
    *(v0 + 160) = v1;
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_10025DC3C;
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);

    return sub_1003E4794(v4, v3, v1);
  }

  else
  {
    v6 = *(v0 + 120);
    v8 = *(v6 + 48);
    v7 = *(v6 + 56);
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_10025E4A4;
    v10 = *(v0 + 136);

    return sub_100248324(v8, v7, v10);
  }
}

uint64_t sub_10025DC3C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v6[27] = a2;
    v6[28] = a1;

    return _swift_task_switch(sub_10025E0E4, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v6[22] = v8;
    *v8 = v7;
    v8[1] = sub_10025DDCC;
    v9 = v6[20];
    v10 = v6[18];
    v11 = v6[16];
    v12 = v6[15];

    return sub_1003E5984(v12, v10, 0, v11, v9);
  }
}

uint64_t sub_10025DDCC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 112);

  return _swift_task_switch(sub_10025DEF4, v2, 0);
}

uint64_t sub_10025DEF4()
{
  v1 = v0[15];
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v0[23] = *v2;
  v4 = v2[1];
  v0[24] = v4;
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10025DFB8;

  return sub_10060C41C(v3, v4);
}

uint64_t sub_10025DFB8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_10025E6E8;
  }

  else
  {
    v4 = sub_10025E23C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10025E0E4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[20];
  v4 = v0[14];
  sub_100270870();
  v0[29] = swift_allocError();
  *v5 = v1;
  v5[1] = v2;

  return _swift_task_switch(sub_10025E180, v4, 0);
}

uint64_t sub_10025E180()
{
  v1 = *(v0 + 120);
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025E23C()
{
  v1 = v0[15];
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_10025E2E8;
  v5 = v0[17];

  return sub_100248324(v3, v2, v5);
}

uint64_t sub_10025E2E8()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10025E3F8, v1, 0);
}

uint64_t sub_10025E3F8()
{
  v2 = v0[23];
  v1 = v0[24];
  swift_beginAccess();

  sub_1005B7E0C(0, v2, v1);
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10025E4A4()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10025E5B4, v1, 0);
}

uint64_t sub_10025E5B4()
{
  v1 = *(v0 + 120);
  type metadata accessor for InternalError();
  sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v2 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();

  sub_1005B7E0C(0, v3, v4);
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025E6E8()
{
  v2 = v0[23];
  v1 = v0[24];
  swift_beginAccess();

  sub_1005B7E0C(0, v2, v1);
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10025E794(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for LogKey.Prefix();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10025E938, 0, 0);
}

uint64_t sub_10025E938()
{
  v1 = v0[10].i64[0];
  v2 = v0[7].i64[0];
  v3 = v0[7].i64[1];
  v6 = v0[6];
  (*(v0[11].i64[0] + 104))(v0[11].i64[1], enum case for LogKey.Prefix.ddm(_:), v0[10].i64[1]);
  objc_allocWithZone(type metadata accessor for LogKey());
  v0[12].i64[0] = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  v0[12].i64[1] = v4;
  v4[1] = vextq_s8(v6, v6, 8uLL);

  return _swift_task_switch(sub_10025EA60, 0, 0);
}

uint64_t sub_10025EA60()
{
  sub_100005934(*(v0 + 160), *(v0 + 152), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "App postStateChanges", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 192);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 216) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 224) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_100005934(*(v0 + 152), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 152), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v22 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("App postStateChanges", 20, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0);
  }

  *(v0 + 232) = v12;
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069FB28;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 248) = v20;
  *v20 = v0;
  v20[1] = sub_10025EF90;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069FB30, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10025EF90()
{

  if (v0)
  {

    v1 = sub_10025F318;
  }

  else
  {

    v1 = sub_10025F150;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10025F150()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_10025F248, 0, 0);
}

uint64_t sub_10025F248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025F318()
{
}

uint64_t sub_10025F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[137] = a3;
  v3[136] = a2;
  v4 = type metadata accessor for Logger();
  v3[138] = v4;
  v3[139] = *(v4 - 8);
  v3[140] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_10077F378);
  v3[141] = v5;
  v3[142] = *(v5 - 8);
  v3[143] = swift_task_alloc();
  v6 = type metadata accessor for AppState();
  v3[144] = v6;
  v3[145] = *(v6 - 8);
  v3[146] = swift_task_alloc();
  updated = type metadata accessor for AppStateUpdateIdentifier();
  v3[147] = updated;
  v3[148] = *(updated - 8);
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();

  return _swift_task_switch(sub_10025F5A4, 0, 0);
}

uint64_t sub_10025F5A4()
{
  sub_10026FE78(*(v0 + 1088), v0 + 696);
  v1 = swift_allocObject();
  *(v0 + 1208) = v1;
  sub_10026FEE4(v0 + 696, v1 + 16);
  sub_1001F0C48(&unk_10077FE00);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 968, sub_10025F67C, v0 + 656);
}

uint64_t sub_10025F67C()
{
  *(v1 + 1216) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 968, sub_1002607B8, v1 + 768);
  }

  else
  {
    return _swift_task_switch(sub_10025F6C0, 0, 0);
  }
}

uint64_t sub_10025F6C0()
{
  v1 = *(v0 + 1088);
  v12 = *(v0 + 992);
  v2 = *(v0 + 992);
  v3 = sub_100006D8C((v0 + 968), v2);
  *(v0 + 1072) = v12;
  v4 = sub_10020A748((v0 + 1048));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_100625FA0();
  *(v0 + 1224) = v5;
  v6 = *(v1 + 24);
  v11 = *(v1 + 56);
  v13 = *(v1 + 40);
  v7 = sub_100006D8C(v1, v6);
  *(v0 + 832) = v6;
  *(v0 + 840) = v13;
  *(v0 + 856) = v11;
  v8 = sub_10020A748((v0 + 808));
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  v9 = swift_task_alloc();
  *(v0 + 1232) = v9;
  *v9 = v0;
  v9[1] = sub_10025F840;

  return sub_10034278C(1, v0 + 1048, v5, v0 + 808);
}

uint64_t sub_10025F840(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  *(*v2 + 1240) = v1;

  if (v1)
  {
    v6 = sub_1002609BC;
  }

  else
  {
    *(v4 + 1248) = a1;
    sub_10000710C(v4 + 808);
    sub_10000710C(v4 + 1048);
    v6 = sub_10025F998;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10025F998()
{
  v1 = *(*sub_100006D8C(*(v0 + 1088), *(*(v0 + 1088) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 1256) = v1;

  v2 = swift_task_alloc();
  *(v0 + 1264) = v2;
  *v2 = v0;
  v2[1] = sub_10025FA84;
  v3 = *(v0 + 1248);

  return sub_10066FD90(v1, v3);
}

uint64_t sub_10025FA84()
{

  swift_bridgeObjectRelease_n();

  return _swift_task_switch(sub_10025FBBC, 0, 0);
}

uint64_t sub_10025FBBC()
{
  v1 = *(v0 + 1096);
  v2 = *(v1 + 32);
  *(v0 + 1348) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  *(v0 + 1344) = enum case for AppStateUpdateIdentifier.managedAppDistribution(_:);
  *(v0 + 1272) = _swiftEmptyArrayStorage;

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 1288) = v7;
    *(v0 + 1280) = v5;
    v9 = *(v0 + 1088);
    v10 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 1296) = v12;
    v13 = *(v9 + 24);
    v14 = *(v9 + 64);
    v41 = *(v9 + 48);
    v15 = sub_100006D8C(v9, v13);
    *(v0 + 896) = v13;
    *(v0 + 904) = v41;
    *(v0 + 920) = v14;
    v16 = sub_10020A748((v0 + 872));
    (*(*(v13 - 8) + 16))(v16, v15, v13);
    sub_100006190(0, &qword_100784500);

    v17 = sub_10060BC54(v11, v12, 0, 0, 2);
    if (v17)
    {
      v18 = v17;
      v19 = [v18 iTunesMetadata];
      v20 = [v19 storeItemIdentifier];

      if (v20)
      {
        v21 = [v18 iTunesMetadata];
        v22 = [v21 storeItemIdentifier];
      }

      else
      {
        v22 = 0;
      }

      v30 = *(v0 + 1192);
      v31 = *(v0 + 1184);
      *v30 = v11;
      *(v30 + 8) = v12;
      *(v30 + 16) = v22;
      *(v30 + 24) = v20 == 0;
      (*(v31 + 104))();

      v32 = [v18 iTunesMetadata];
      v33 = [v32 distributorInfo];

      v34 = [v33 distributorID];
      if (!v34)
      {
        v25 = 0;
        v26 = 0;
        v27 = -1;
        v28 = 3;
        goto LABEL_20;
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v36;
      v27 = 0;
      v28 = v37;
      v26 = v37;
    }

    else
    {
      v23 = *(v0 + 1192);
      v24 = *(v0 + 1184);
      *v23 = v11;
      *(v23 + 8) = v12;
      *(v23 + 16) = 0;
      *(v23 + 24) = 1;
      (*(v24 + 104))();
      v18 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
      v28 = 3;
    }

LABEL_20:
    *(v0 + 1349) = v27;
    *(v0 + 1328) = v26;
    *(v0 + 1320) = v28;
    *(v0 + 1312) = v25;
    *(v0 + 1304) = v18;
    v38 = swift_task_alloc();
    *(v0 + 1336) = v38;
    *v38 = v0;
    v38[1] = sub_1002600EC;
    v39 = *(v0 + 1168);

    return sub_10060FC18(v39, v11, v12, 1, 0, 0, v0 + 872, v25);
  }

  v8 = 0;
  while (((63 - v4) >> 6) - 1 != v8)
  {
    v7 = v8 + 1;
    v5 = *(v6 + 8 * v8++ + 64);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v29 = *(v0 + 1088);

  sub_100006D8C(v29, v29[3]);

  sub_10066969C(_swiftEmptyArrayStorage);

  return _swift_asyncLet_finish(v0 + 16, v0 + 968, sub_10026002C, v0 + 1008);
}

uint64_t sub_100260048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002600EC()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_10026021C, 0, 0);
}

uint64_t sub_10026021C()
{
  v58 = *(v0 + 1349);
  v61 = *(v0 + 1328);
  v1 = *(v0 + 1304);
  v57 = *(v0 + 1312);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v56 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  v9 = *(v0 + 1128);

  v10 = *(v4 + 32);
  v10(v2, v3, v5);
  sub_10000710C(v0 + 872);
  v11 = *(v9 + 48);
  v12 = v8 + *(v9 + 64);
  v10(v8, v2, v5);
  (*(v6 + 32))(v8 + v11, v56, v7);
  *v12 = v57;
  *(v12 + 8) = v61;
  *(v12 + 16) = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 1272);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v14 = sub_10036313C(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10036313C(v15 > 1, v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1144);
  v18 = *(v0 + 1136);
  v14[2] = v16 + 1;
  sub_10020A668(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, &qword_10077F378);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  *(v0 + 1272) = v14;
  v21 = (v20 - 1) & v20;
  if (v21)
  {
    v22 = *(v0 + 1096);
LABEL_10:
    *(v0 + 1288) = v19;
    *(v0 + 1280) = v21;
    v24 = *(v0 + 1088);
    v25 = (*(v22 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v21)))));
    v26 = *v25;
    v27 = v25[1];
    *(v0 + 1296) = v27;
    v28 = *(v24 + 24);
    v29 = *(v24 + 64);
    v59 = *(v24 + 48);
    v30 = sub_100006D8C(v24, v28);
    *(v0 + 896) = v28;
    *(v0 + 904) = v59;
    *(v0 + 920) = v29;
    v31 = sub_10020A748((v0 + 872));
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    sub_100006190(0, &qword_100784500);

    v32 = sub_10060BC54(v26, v27, 0, 0, 2);
    if (v32)
    {
      v33 = v32;
      v34 = [v33 iTunesMetadata];
      v35 = [v34 storeItemIdentifier];

      if (v35)
      {
        v36 = [v33 iTunesMetadata];
        v37 = [v36 storeItemIdentifier];
      }

      else
      {
        v37 = 0;
      }

      v44 = *(v0 + 1192);
      v45 = *(v0 + 1184);
      *v44 = v26;
      *(v44 + 8) = v27;
      *(v44 + 16) = v37;
      *(v44 + 24) = v35 == 0;
      (*(v45 + 104))();

      v46 = [v33 iTunesMetadata];
      v47 = [v46 distributorInfo];

      v48 = [v47 distributorID];
      if (!v48)
      {
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v43 = 3;
        goto LABEL_19;
      }

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = v50;
      v42 = 0;
      v43 = v51;
      v41 = v51;
    }

    else
    {
      v38 = *(v0 + 1192);
      v39 = *(v0 + 1184);
      *v38 = v26;
      *(v38 + 8) = v27;
      *(v38 + 16) = 0;
      *(v38 + 24) = 1;
      (*(v39 + 104))();
      v33 = 0;
      v40 = 0;
      v41 = 0;
      v42 = -1;
      v43 = 3;
    }

LABEL_19:
    *(v0 + 1349) = v42;
    *(v0 + 1328) = v41;
    *(v0 + 1320) = v43;
    *(v0 + 1312) = v40;
    *(v0 + 1304) = v33;
    v52 = swift_task_alloc();
    *(v0 + 1336) = v52;
    *v52 = v0;
    v52[1] = sub_1002600EC;
    v53 = *(v0 + 1168);

    return sub_10060FC18(v53, v26, v27, 1, 0, 0, v0 + 872, v40);
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v23 >= (((1 << *(v0 + 1348)) + 63) >> 6))
    {
      break;
    }

    v22 = *(v0 + 1096);
    v21 = *(v22 + 8 * v23 + 56);
    ++v19;
    if (v21)
    {
      v19 = v23;
      goto LABEL_10;
    }
  }

  v55 = *(v0 + 1088);

  sub_100006D8C(v55, v55[3]);

  sub_10066969C(v14);

  return _swift_asyncLet_finish(v0 + 16, v0 + 968, sub_10026002C, v0 + 1008);
}

uint64_t sub_1002607D4()
{
  static Logger.ddm.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error when posting state changes: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[139] + 8))(v0[140], v0[138]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002609BC()
{
  sub_10000710C(v0 + 808);
  sub_10000710C(v0 + 1048);

  return _swift_asyncLet_finish(v0 + 16, v0 + 968, sub_100260A30, v0 + 928);
}

uint64_t sub_100260A4C()
{
  static Logger.ddm.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error when posting state changes: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[139] + 8))(v0[140], v0[138]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100260C34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for BagService();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100260CF4, 0, 0);
}

uint64_t sub_100260CF4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24));
  (*(v2 + 16))(v1, *v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v3);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100260DD0;
  v6 = *(v0 + 16);

  return sub_100324268(v6);
}

uint64_t sub_100260DD0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100260F78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100260F78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100260FDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10025E794(a1, a2);
}

uint64_t sub_100261078()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_operationStream;
  v2 = sub_1001F0C48(&qword_10077F3D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_operationContinuation;
  v4 = sub_1001F0C48(&qword_10077F328);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1002611A8()
{
  sub_1002612D8(319, &qword_10077F1C0, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    sub_1002612D8(319, &unk_10077F1C8, &type metadata accessor for AsyncStream.Continuation);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002612D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ManagedAppDeclarationIngester.Operation(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100261388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_10023C2DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100261450(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100214EFC;

  return v8(a1);
}

uint64_t sub_100261544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  swift_getObjectType();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[12] = v10;
  v7[13] = v9;

  return _swift_task_switch(sub_100261628, v10, v9);
}

uint64_t sub_100261628()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = sub_100262B9C(&qword_10077EA80, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100261720;
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 16, v3, v4, v2);
}

uint64_t sub_100261720()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[9];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
  }

  v6 = v2[12];
  v7 = v2[13];

  return _swift_task_switch(sub_100261880, v6, v7);
}

uint64_t sub_100261880()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_10026195C;
    v4 = v0[7];
    v5 = v0[6];

    return sub_100261E88(v5, v4);
  }
}

uint64_t sub_10026195C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100261A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  swift_getObjectType();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[12] = v10;
  v7[13] = v9;

  return _swift_task_switch(sub_100261B54, v10, v9);
}

uint64_t sub_100261B54()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = sub_100262B9C(&qword_10077EA80, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100261C4C;
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 16, v3, v4, v2);
}

uint64_t sub_100261C4C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[9];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
  }

  v6 = v2[12];
  v7 = v2[13];

  return _swift_task_switch(sub_100261DAC, v6, v7);
}

uint64_t sub_100261DAC()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_100271EB0;
    v4 = v0[7];
    v5 = v0[6];

    return sub_100262304(v5, v4);
  }
}

uint64_t sub_100261E88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1001F0C48(&unk_100780380);
  v3[5] = swift_task_alloc();
  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100261F54, v5, v4);
}

uint64_t sub_100261F54()
{
  v1 = v0[4];
  v4 = *(v1 + 48);
  v3 = (v1 + 48);
  v2 = v4;
  v0[8] = v4;
  if (v4)
  {
    v5 = *(v2 + 16);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_100262074;
      v9 = v0[3];
      v8 = v0[4];
      v10 = v0[2];

      return sub_1005F6364(v10, v8, ObjectType, v9);
    }

    v2 = *v3;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_10027070C(v2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100262074(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10026219C, v4, v3);
}

uint64_t sub_10026219C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v3 + 48);
  *(v3 + 48) = &_swiftEmptySetSingleton;
  *(v3 + 56) = v1;
  sub_10027070C(v7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v5;
  v9[7] = v6;
  swift_unknownObjectRetain_n();

  sub_100270180(0, 0, v4, 0, 0, &unk_10069FB70, v9);

  sub_1000032A8(v4, &unk_100780380);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100262304(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1001F0C48(&unk_100780380);
  v3[5] = swift_task_alloc();
  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1002623D0, v5, v4);
}

uint64_t sub_1002623D0()
{
  v1 = v0[4];
  v4 = *(v1 + 48);
  v3 = (v1 + 48);
  v2 = v4;
  v0[8] = v4;
  if (v4)
  {
    v5 = *(v2 + 16);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_1002624F0;
      v9 = v0[3];
      v8 = v0[4];
      v10 = v0[2];

      return sub_1005F66C4(v10, v8, ObjectType, v9);
    }

    v2 = *v3;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_10027070C(v2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002624F0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100262618, v4, v3);
}

uint64_t sub_100262618()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v3 + 48);
  *(v3 + 48) = &_swiftEmptySetSingleton;
  *(v3 + 56) = v1;
  sub_10027070C(v7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v5;
  v9[7] = v6;
  swift_unknownObjectRetain_n();

  sub_100270180(0, 0, v4, 0, 0, &unk_10069FB00, v9);

  sub_1000032A8(v4, &unk_100780380);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100262780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  swift_getObjectType();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100262804, v7, v6);
}

uint64_t sub_100262804()
{
  v4 = (*(v0[2] + 32) + **(v0[2] + 32));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002628F8;
  v2 = v0[3];

  return v4(v2);
}

uint64_t sub_1002628F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002629EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  swift_getObjectType();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100262A70, v7, v6);
}

uint64_t sub_100262A70()
{
  v4 = (*(v0[2] + 32) + **(v0[2] + 32));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100271EAC;
  v2 = v0[3];

  return v4(v2);
}

uint64_t sub_100262B9C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100262C58(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v7 = a2[6];
  if (!a1[6])
  {
    return !v7;
  }

  if (!v7)
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4];
}

uint64_t sub_100262CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_100262DA8, v6, v5);
}

uint64_t sub_100262DA8()
{
  v14 = v0;
  v1 = v0[11];
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(v1 + 56);
    v12 = *(v1 + 48);
    sub_10027006C(v2);

    sub_1003F155C(&v13, v4, v3);

    v6 = *(v1 + 48);
    *(v1 + 48) = v12;
    *(v1 + 56) = v5;
    sub_10027070C(v6);
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_100262ED8;
    v11 = v0[10];
    v10 = v0[11];

    return sub_100263290(v11, v10);
  }
}

uint64_t sub_100262ED8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return _swift_task_switch(sub_100263000, v4, v3);
}

uint64_t sub_100263000()
{
  v1 = v0[15];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v2[6];
  v2[6] = &_swiftEmptySetSingleton;
  v2[7] = v1;
  sub_10027070C(v5);
  v6 = v2[4];
  sub_1001F0C48(&qword_100784460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  v8 = sub_1001F64A8(inited);
  v0[16] = v8;
  swift_setDeallocating();
  sub_10023215C(inited + 32);
  v11 = (v6 + *v6);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_100263180;

  return v11(v8);
}

uint64_t sub_100263180()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100263290(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1001F0C48(&unk_100780380);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002633F4, v6, v5);
}

uint64_t sub_1002633F4()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v18 = v0[3];
  v8 = v0[2];
  static ContinuousClock.now.getter();
  v17 = v1;
  ContinuousClock.Instant.advanced(by:)();
  v19 = *(v5 + 8);
  v19(v3, v6);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v5 + 16))(v3, v1, v6);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v2;
  (*(v5 + 32))(v12 + v10, v3, v6);
  v13 = (v12 + v11);
  *v13 = v8;
  v13[1] = v2;
  *(v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v14 = sub_100494DB4(0, 0, v7, &unk_1006B8870, v12);
  v19(v17, v6);

  v15 = v0[1];

  return v15(v14);
}

BOOL sub_100263610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v2;
  v14[2] = *(a2 + 32);
  v15 = *(a2 + 48);
  v3 = (a1 + *(type metadata accessor for AppStorePackage(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v6 = v3[5];
    v5 = v3[6];
    v8 = v3[3];
    v7 = v3[4];
    v9 = v3[2];
    v13[0] = *v3;
    v10 = v13[0];
    v13[1] = v4;
    v13[2] = v9;
    v13[3] = v8;
    v13[4] = v7;
    v13[5] = v6;
    v13[6] = v5;

    v11 = sub_100262C58(v13, v14);
    sub_100271104(v10, v4);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_1002636FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[50] = a3;
  v6[51] = a4;
  v6[49] = a1;
  v11 = type metadata accessor for DDMDeclaration(0);
  v6[52] = v11;
  v12 = *(v11 - 8);
  v6[53] = v12;
  v6[54] = *(v12 + 64);
  v6[55] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v6[56] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  v6[57] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[58] = v13;
  v6[59] = *(v13 - 8);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v14 = type metadata accessor for DDMPurchaseMethod();
  v6[71] = v14;
  v6[72] = *(v14 - 8);
  v6[73] = swift_task_alloc();
  v6[31] = a5;
  v6[32] = a6;
  v15 = sub_10020A748(v6 + 28);
  (*(*(a5 - 8) + 16))(v15, a2, a5);

  return _swift_task_switch(sub_1002639C4, a4, 0);
}

uint64_t sub_1002639C4()
{
  v1 = v0[52];
  v3 = v0[49];
  v2 = v0[50];
  v4 = *(v3 + 48);
  v0[74] = v4;
  v5 = *(v3 + 56);
  v0[75] = v5;
  sub_1001F0C48(&qword_10077E910);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10069E680;
  v7 = (v3 + *(v1 + 52));
  v0[76] = *v7;
  v0[77] = v7[1];
  v8 = String.hashValue.getter();
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v8;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v5;
  String.append(_:)(v11);
  v12 = objc_allocWithZone(type metadata accessor for LogKey());
  v13 = LogKey.init(string:)();
  v0[78] = v13;
  sub_100006190(0, &qword_100784500);
  v14 = sub_10060BC54(v4, v5, 0, 0, 0);
  v0[79] = v14;
  v15 = *(*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[80] = v15;

  v16 = swift_task_alloc();
  v0[81] = v16;
  *v16 = v0;
  v16[1] = sub_100263BE4;
  v17 = v0[49];

  return sub_1003DB4BC(v17, v14, v15, v13);
}

uint64_t sub_100263BE4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 656) = a1;

  v7 = *(v5 + 408);
  if (v2)
  {
    *(v6 + 664) = a2;

    v8 = sub_1002649D8;
  }

  else
  {

    v8 = sub_100263D48;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100263D48()
{
  v100 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  (*(v2 + 104))(v1, enum case for DDMPurchaseMethod.other(_:), v3);
  v4 = static DDMPurchaseMethod.== infix(_:_:)();
  v5 = (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 656);
  if (v4)
  {
    if (*(v0 + 656) <= 2u)
    {
      if (*(v0 + 656))
      {
        if (v8 != 1)
        {
          v9 = *(v0 + 632);
          if (v9)
          {
            v10 = *(v0 + 400);
            v11 = v9;
            v12 = *(*sub_100006D8C(v10, v10[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
            *(v0 + 704) = v12;

            v13 = swift_task_alloc();
            *(v0 + 712) = v13;
            *v13 = v0;
            v13[1] = sub_100264ECC;
            v14 = *(v0 + 624);
            v15 = *(v0 + 392);

            return sub_1003E4794(v15, v12, v14);
          }

          goto LABEL_59;
        }

        goto LABEL_27;
      }

      v44 = *(*sub_100006D8C(*(v0 + 400), *(*(v0 + 400) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      *(v0 + 672) = v44;
      v45 = sub_100264C98;
LABEL_35:
      v55 = v45;

      v5 = v55;
      v6 = v44;
      v7 = 0;

      return _swift_task_switch(v5, v6, v7);
    }

    if (v8 == 3 || v8 != 4)
    {
      v29 = *(v0 + 624);
      static Logger.ddm.getter();
      v30 = v29;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v31 = *(v0 + 656);
        v32 = *(v0 + 624);
        v97 = *(v0 + 552);
        v23 = *(v0 + 464);
        v22 = *(v0 + 472);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v99 = v26;
        *v24 = 138412546;
        *(v24 + 4) = v32;
        *v25 = v32;
        *(v24 + 12) = 2080;
        *(v0 + 1137) = v31;
        v33 = v32;
        goto LABEL_20;
      }

      v56 = *(v0 + 552);
      goto LABEL_50;
    }

    v46 = *(v0 + 632);
    if (!v46)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      return _swift_task_switch(v5, v6, v7);
    }

    v47 = *(v0 + 400);
    v48 = v46;
    v49 = *(*sub_100006D8C(v47, v47[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
    *(v0 + 720) = v49;

    v50 = swift_task_alloc();
    *(v0 + 728) = v50;
    *v50 = v0;
    v50[1] = sub_100265068;
    v51 = *(v0 + 624);
    v52 = *(v0 + 392);

    return sub_1006262F8(v52, v49, 0, v51);
  }

  else
  {
    if (*(v0 + 656) <= 2u)
    {
      if (!*(v0 + 656))
      {
LABEL_27:
        v43 = *(v0 + 632);

LABEL_55:
        sub_10000710C(v0 + 224);

        v95 = *(v0 + 8);

        return v95();
      }

      if (v8 != 1)
      {
        v54 = *(v0 + 400);
        *(v0 + 936) = *(*sub_100006D8C(v54, v54[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

        v44 = *(*sub_100006D8C(v54, v54[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
        *(v0 + 944) = v44;
        v45 = sub_100267ED8;
        goto LABEL_35;
      }

      v17 = *(v0 + 624);
      static Logger.ddm.getter();
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 624);
        v97 = *(v0 + 496);
        v23 = *(v0 + 464);
        v22 = *(v0 + 472);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v99 = v26;
        *v24 = 138412546;
        *(v24 + 4) = v21;
        *v25 = v21;
        *(v24 + 12) = 2080;
        *(v0 + 1136) = 1;
        v27 = v21;
LABEL_20:
        v34 = String.init<A>(describing:)();
        v36 = sub_1002346CC(v34, v35, &v99);

        *(v24 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Inconsistency: Unexpected state '%s", v24, 0x16u);
        sub_1000032A8(v25, &qword_10077F920);

        sub_10000710C(v26);

        (*(v22 + 8))(v97, v23);
LABEL_51:
        type metadata accessor for InternalError();
        sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v81 = *(v0 + 624);
        static Logger.ddm.getter();
        v82 = v81;
        swift_errorRetain();
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        v85 = os_log_type_enabled(v83, v84);
        v86 = *(v0 + 632);
        if (v85)
        {
          v87 = *(v0 + 624);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v88 = 138412546;
          *(v88 + 4) = v87;
          *v89 = v87;
          *(v88 + 12) = 2114;
          v90 = v87;
          swift_errorRetain();
          v91 = _swift_stdlib_bridgeErrorToNSError();
          *(v88 + 14) = v91;
          v89[1] = v91;
          _os_log_impl(&_mh_execute_header, v83, v84, "[%@] Ingest failed, error: %{public}@", v88, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        else
        {
        }

        v92 = *(v0 + 560);
        v93 = *(v0 + 464);
        v94 = *(v0 + 472);

        (*(v94 + 8))(v92, v93);
        goto LABEL_55;
      }

      v56 = *(v0 + 496);
LABEL_50:
      v79 = *(v0 + 464);
      v80 = *(v0 + 472);

      (*(v80 + 8))(v56, v79);
      goto LABEL_51;
    }

    if (v8 == 3)
    {
      v53 = *(v0 + 400);
      *(v0 + 1016) = *(*sub_100006D8C(v53, v53[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

      v44 = *(*sub_100006D8C(v53, v53[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
      *(v0 + 1024) = v44;
      v45 = sub_100269524;
      goto LABEL_35;
    }

    if (v8 == 4)
    {
      v37 = *(v0 + 632);
      if (!v37)
      {
        v65 = *(v0 + 624);
        static Logger.ddm.getter();
        v66 = v65;
        v19 = Logger.logObject.getter();
        v67 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v19, v67))
        {
          v68 = *(v0 + 624);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          *(v69 + 4) = v68;
          *v70 = v68;
          v71 = v68;
          _os_log_impl(&_mh_execute_header, v19, v67, "[%@] Inconsistency: Expected installed application to take over, but there was none!", v69, 0xCu);
          sub_1000032A8(v70, &qword_10077F920);
        }

        v56 = *(v0 + 488);
        goto LABEL_50;
      }

      v38 = *(*sub_100006D8C(*(v0 + 400), *(*(v0 + 400) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
      *(v0 + 1096) = v38;
      v39 = v37;

      v40 = swift_task_alloc();
      *(v0 + 1104) = v40;
      *v40 = v0;
      v40[1] = sub_10026AB74;
      v41 = *(v0 + 400);
      v42 = *(v0 + 392);

      return sub_100248420(v42, 1, v39, v38, v0 + 224, v41);
    }

    else
    {
      v57 = *(v0 + 632);
      if (!v57)
      {
        v72 = *(v0 + 624);
        static Logger.ddm.getter();
        v73 = v72;
        v19 = Logger.logObject.getter();
        v74 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v19, v74))
        {
          v75 = *(v0 + 624);
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v76 = 138412290;
          *(v76 + 4) = v75;
          *v77 = v75;
          v78 = v75;
          _os_log_impl(&_mh_execute_header, v19, v74, "[%@] Inconsistency: Expected installed application to update, but there was none!", v76, 0xCu);
          sub_1000032A8(v77, &qword_10077F920);
        }

        v56 = *(v0 + 480);
        goto LABEL_50;
      }

      v58 = *(v0 + 400);
      v59 = *(v58 + 24);
      v96 = *(v58 + 56);
      v98 = *(v58 + 40);
      v60 = sub_100006D8C(v58, v59);
      *(v0 + 184) = v59;
      *(v0 + 192) = v98;
      *(v0 + 208) = v96;
      v61 = sub_10020A748((v0 + 160));
      (*(*(v59 - 8) + 16))(v61, v60, v59);
      v62 = v57;
      v63 = swift_task_alloc();
      *(v0 + 1120) = v63;
      *v63 = v0;
      v63[1] = sub_10026ACAC;
      v64 = *(v0 + 392);

      return sub_10024A810(v64, v62, 0, 0, v0 + 224, v0 + 160);
    }
  }
}

uint64_t sub_1002649D8()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  sub_100270870();
  swift_allocError();
  *v3 = v2;
  v3[1] = v1;
  v4 = *(v0 + 624);
  static Logger.ddm.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 632);
  if (v8)
  {
    v10 = *(v0 + 624);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Ingest failed, error: %{public}@", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = *(v0 + 560);
  v16 = *(v0 + 464);
  v17 = *(v0 + 472);

  (*(v17 + 8))(v15, v16);
  sub_10000710C(v0 + 224);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100264C98()
{
  v1 = v0[49];
  v2 = *(v0[84] + 112);
  v3 = swift_task_alloc();
  v0[85] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  v4 = swift_task_alloc();
  v0[86] = v4;
  *v4 = v0;
  v4[1] = sub_100264D84;

  return sub_10052D7DC(sub_10052D7DC, sub_100271EE8, v3, v2);
}

uint64_t sub_100264D84()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 672);

  if (v0)
  {
    v4 = sub_100265640;
  }

  else
  {
    v4 = sub_100265348;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100264ECC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v6[96] = a2;
    v6[97] = a1;

    return _swift_task_switch(sub_100265BDC, 0, 0);
  }

  else
  {
    v8 = v6[79];
    v9 = swift_task_alloc();
    v6[93] = v9;
    *v9 = v7;
    v9[1] = sub_100265944;
    v10 = v6[88];
    v11 = v6[78];
    v12 = v6[49];

    return sub_1003E5984(v12, v8, 0, v10, v11);
  }
}

uint64_t sub_100265068(char a1)
{
  v2 = *(*v1 + 408);
  *(*v1 + 1138) = a1;

  return _swift_task_switch(sub_100265180, v2, 0);
}

uint64_t sub_100265180()
{
  if (*(v0 + 1138))
  {
    v6 = *(v0 + 456);
    v7 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v8 = type metadata accessor for ManagedAppStatus.Reason();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v6, v7, v8);
    (*(v9 + 56))(v6, 0, 1, v8);
    v10 = swift_task_alloc();
    *(v0 + 840) = v10;
    *v10 = v0;
    v10[1] = sub_100266C3C;
    v11 = *(v0 + 624);
    v12 = *(v0 + 456);
    v13 = *(v0 + 392);

    return sub_10030B39C(v13, v12, 1, v11);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 832) = v1;
    *v1 = v0;
    v1[1] = sub_100266AA0;
    v2 = *(v0 + 720);
    v3 = *(v0 + 624);
    v4 = *(v0 + 392);

    return sub_1003E4794(v4, v2, v3);
  }
}

uint64_t sub_100265348()
{

  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_1002653EC;
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[50];

  return sub_100248324(v3, v2, v4);
}

uint64_t sub_1002653EC()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_1002654FC, v1, 0);
}

uint64_t sub_1002654FC()
{
  v1 = *(v0 + 632);

  sub_10000710C(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100265640()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_1002656AC, v1, 0);
}

uint64_t sub_1002656AC()
{
  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100265944()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[94] = v3;
  *v3 = v2;
  v3[1] = sub_100265AB0;
  v4 = v1[77];
  v5 = v1[76];

  return sub_10060C41C(v5, v4);
}

uint64_t sub_100265AB0()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_1002661E0;
  }

  else
  {
    v4 = sub_100265F1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100265BDC()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[51];
  sub_100270870();
  v0[98] = swift_allocError();
  *v4 = v1;
  v4[1] = v2;

  return _swift_task_switch(sub_100265C74, v3, 0);
}

uint64_t sub_100265C74()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100265F1C()
{
  v1 = *(*sub_100006D8C(*(v0 + 400), *(*(v0 + 400) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 792) = v1;

  return _swift_task_switch(sub_100265FAC, v1, 0);
}

uint64_t sub_100265FAC()
{
  v1 = v0[49];
  v2 = *(v0[99] + 112);
  v3 = swift_task_alloc();
  v0[100] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  v4 = swift_task_alloc();
  v0[101] = v4;
  *v4 = v0;
  v4[1] = sub_100266098;

  return sub_10052D7DC(sub_10052D7DC, sub_100271EE8, v3, v2);
}

uint64_t sub_100266098()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 792);

  if (v0)
  {
    v4 = sub_10026678C;
  }

  else
  {
    v4 = sub_100266488;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002661E0()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100266488()
{

  v1 = swift_task_alloc();
  v0[103] = v1;
  *v1 = v0;
  v1[1] = sub_10026652C;
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[50];

  return sub_100248324(v3, v2, v4);
}

uint64_t sub_10026652C()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_10026663C, v1, 0);
}

uint64_t sub_10026663C()
{
  v1 = v0[79];
  v2 = v0[78];

  sub_10000710C((v0 + 28));

  v3 = v0[1];

  return v3();
}

uint64_t sub_10026678C()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_1002667F8, v1, 0);
}

uint64_t sub_1002667F8()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100266AA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v6[109] = a2;
    v6[110] = a1;

    return _swift_task_switch(sub_100267164, 0, 0);
  }

  else
  {
    v8 = v6[79];
    v9 = swift_task_alloc();
    v6[106] = v9;
    *v9 = v7;
    v9[1] = sub_100266ECC;
    v10 = v6[90];
    v11 = v6[78];
    v12 = v6[49];

    return sub_1003E5984(v12, v8, 0, v10, v11);
  }
}

uint64_t sub_100266C3C()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 408);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_100266D78, v2, 0);
}

uint64_t sub_100266D78()
{
  v1 = *(v0 + 632);

  sub_10000710C(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100266ECC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[107] = v3;
  *v3 = v2;
  v3[1] = sub_100267038;
  v4 = v1[77];
  v5 = v1[76];

  return sub_10060C41C(v5, v4);
}

uint64_t sub_100267038()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_100267768;
  }

  else
  {
    v4 = sub_1002674A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100267164()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[51];
  sub_100270870();
  v0[111] = swift_allocError();
  *v4 = v1;
  v4[1] = v2;

  return _swift_task_switch(sub_1002671FC, v3, 0);
}

uint64_t sub_1002671FC()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002674A4()
{
  v1 = *(*sub_100006D8C(*(v0 + 400), *(*(v0 + 400) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 896) = v1;

  return _swift_task_switch(sub_100267534, v1, 0);
}

uint64_t sub_100267534()
{
  v1 = v0[49];
  v2 = *(v0[112] + 112);
  v3 = swift_task_alloc();
  v0[113] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  v4 = swift_task_alloc();
  v0[114] = v4;
  *v4 = v0;
  v4[1] = sub_100267620;

  return sub_10052D7DC(sub_10052D7DC, sub_100271C98, v3, v2);
}

uint64_t sub_100267620()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 896);

  if (v0)
  {
    v4 = sub_100267BC4;
  }

  else
  {
    v4 = sub_100267A10;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100267768()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100267A10()
{

  v1 = swift_task_alloc();
  v0[116] = v1;
  *v1 = v0;
  v1[1] = sub_100267AB4;
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[50];

  return sub_100248324(v3, v2, v4);
}

uint64_t sub_100267AB4()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_100271F00, v1, 0);
}

uint64_t sub_100267BC4()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_100267C30, v1, 0);
}

uint64_t sub_100267C30()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100267ED8()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = *(v0[118] + 112);
  v4 = swift_task_alloc();
  v0[119] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[120] = v5;
  *v5 = v0;
  v5[1] = sub_100267FC4;

  return sub_1003AE648(sub_100271ED0, v4, v3);
}

uint64_t sub_100267FC4(char a1)
{
  v4 = *v2;
  *(v4 + 968) = v1;

  v5 = *(v4 + 944);
  if (v1)
  {

    v6 = sub_1002686CC;
  }

  else
  {
    *(v4 + 1139) = a1 & 1;

    v6 = sub_100268124;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100268124()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_100268190, v1, 0);
}

uint64_t sub_100268190()
{
  if (*(v0 + 1139) == 1)
  {
    static Logger.ddm.getter();
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
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Skipping installation for required, found another installation in progress", v3, 0xCu);
      sub_1000032A8(v4, &qword_10077F920);
    }

    v6 = *(v0 + 544);
    v7 = *(v0 + 464);
    v8 = *(v0 + 472);

    (*(v8 + 8))(v6, v7);

    v9 = *(v0 + 632);

    sub_10000710C(v0 + 224);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 632);
    if (v12)
    {
      v13 = v12;
      static Logger.ddm.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = sub_100625FA0();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%@] An app matching the declaration is already installed", v16, 0xCu);
        sub_1000032A8(v17, &qword_10077F920);
      }

      v19 = *(v0 + 536);
      v20 = *(v0 + 464);
      v21 = *(v0 + 472);

      (*(v21 + 8))(v19, v20);
      v22 = swift_task_alloc();
      *(v0 + 976) = v22;
      *v22 = v0;
      v22[1] = sub_1002689D8;
      v23 = *(v0 + 936);
      v24 = *(v0 + 400);
      v25 = *(v0 + 392);

      return sub_100248420(v25, 0, v13, v23, v0 + 224, v24);
    }

    else
    {
      static Logger.ddm.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = sub_100625FA0();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] App is not installed, requesting install for required declaration", v28, 0xCu);
        sub_1000032A8(v29, &qword_10077F920);
      }

      v31 = *(v0 + 528);
      v32 = *(v0 + 464);
      v33 = *(v0 + 472);

      (*(v33 + 8))(v31, v32);
      v34 = sub_100625FA0();
      *(v0 + 992) = v34;
      v35 = swift_task_alloc();
      *(v0 + 1000) = v35;
      *v35 = v0;
      v35[1] = sub_100268F00;
      v36 = *(v0 + 392);

      return sub_100307250(v36, 1, v34);
    }
  }
}

uint64_t sub_1002686CC()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_100268738, v1, 0);
}

uint64_t sub_100268738()
{

  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002689D8()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_100268C58;
  }

  else
  {
    v4 = sub_100268B04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100268B04()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 632);
  sub_10000710C(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100268C58()
{

  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100268F00()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[126] = v4;
  *v4 = v3;
  v4[1] = sub_100269098;
  v5 = v1[75];
  v6 = v1[50];
  v7 = v1[74];

  return sub_100248324(v7, v5, v6);
}

uint64_t sub_100269098()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_1002691A8, v1, 0);
}

uint64_t sub_1002691A8()
{
  v22 = *(v0 + 608);
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v21 = *(v0 + 616);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_100271284(v7, v2, type metadata accessor for DDMDeclaration);
  sub_10020A980(v0 + 224, v0 + 304);
  sub_10026FE78(v6, v0 + 88);
  v9 = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = v10 + v4;
  v12 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v9;
  v14[4] = v5;
  sub_1002711BC(v2, v14 + v10, type metadata accessor for DDMDeclaration);
  *(v14 + v11) = 0;
  sub_1001DFDBC((v0 + 304), v14 + v12);
  *(v14 + v13) = 0;
  sub_10026FEE4(v0 + 88, v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();

  v15 = sub_1002FBE70(0, 0, v1, 0, 0, &unk_10069FCD0, v14);

  sub_1000032A8(v1, &unk_100780380);
  v16 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + v16);
  *(v5 + v16) = 0x8000000000000000;
  sub_1005C26B4(v15, v22, v21, isUniquelyReferenced_nonNull_native);

  *(v5 + v16) = v23;
  swift_endAccess();

  v18 = *(v0 + 632);

  sub_10000710C(v0 + 224);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100269524()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = *(v0[128] + 112);
  v4 = swift_task_alloc();
  v0[129] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[130] = v5;
  *v5 = v0;
  v5[1] = sub_100269610;

  return sub_1003AE648(sub_1002716D8, v4, v3);
}

uint64_t sub_100269610(char a1)
{
  v4 = *v2;
  *(v4 + 1048) = v1;

  v5 = *(v4 + 1024);
  if (v1)
  {

    v6 = sub_100269D18;
  }

  else
  {
    *(v4 + 1140) = a1 & 1;

    v6 = sub_100269770;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100269770()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_1002697DC, v1, 0);
}

uint64_t sub_1002697DC()
{
  if (*(v0 + 1140) == 1)
  {
    static Logger.ddm.getter();
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
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Skipping installation for required, found another installation in progress", v3, 0xCu);
      sub_1000032A8(v4, &qword_10077F920);
    }

    v6 = *(v0 + 520);
    v7 = *(v0 + 464);
    v8 = *(v0 + 472);

    (*(v8 + 8))(v6, v7);

    v9 = *(v0 + 632);

    sub_10000710C(v0 + 224);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 632);
    if (v12)
    {
      v13 = v12;
      static Logger.ddm.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = sub_100625FA0();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%@] An app matching the declaration is already installed", v16, 0xCu);
        sub_1000032A8(v17, &qword_10077F920);
      }

      v19 = *(v0 + 512);
      v20 = *(v0 + 464);
      v21 = *(v0 + 472);

      (*(v21 + 8))(v19, v20);
      v22 = swift_task_alloc();
      *(v0 + 1056) = v22;
      *v22 = v0;
      v22[1] = sub_10026A024;
      v23 = *(v0 + 1016);
      v24 = *(v0 + 400);
      v25 = *(v0 + 392);

      return sub_100248420(v25, 0, v13, v23, v0 + 224, v24);
    }

    else
    {
      static Logger.ddm.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = sub_100625FA0();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] App is not installed, requesting install for required declaration", v28, 0xCu);
        sub_1000032A8(v29, &qword_10077F920);
      }

      v31 = *(v0 + 504);
      v32 = *(v0 + 464);
      v33 = *(v0 + 472);

      (*(v33 + 8))(v31, v32);
      v34 = sub_100625FA0();
      *(v0 + 1072) = v34;
      v35 = swift_task_alloc();
      *(v0 + 1080) = v35;
      *v35 = v0;
      v35[1] = sub_10026A54C;
      v36 = *(v0 + 392);

      return sub_100307250(v36, 1, v34);
    }
  }
}

uint64_t sub_100269D18()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_100269D84, v1, 0);
}

uint64_t sub_100269D84()
{

  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10026A024()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_10026A2A4;
  }

  else
  {
    v4 = sub_10026A150;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026A150()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 632);
  sub_10000710C(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10026A2A4()
{

  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10026A54C()
{
  v1 = *v0;
  v2 = *(*v0 + 1072);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[136] = v4;
  *v4 = v3;
  v4[1] = sub_10026A6E4;
  v5 = v1[75];
  v6 = v1[50];
  v7 = v1[74];

  return sub_100248324(v7, v5, v6);
}

uint64_t sub_10026A6E4()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_10026A7F4, v1, 0);
}

uint64_t sub_10026A7F4()
{
  v22 = *(v0 + 608);
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v21 = *(v0 + 616);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_100271284(v7, v2, type metadata accessor for DDMDeclaration);
  sub_10020A980(v0 + 224, v0 + 264);
  sub_10026FE78(v6, v0 + 16);
  v9 = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = v10 + v4;
  v12 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v9;
  v14[4] = v5;
  sub_1002711BC(v2, v14 + v10, type metadata accessor for DDMDeclaration);
  *(v14 + v11) = 256;
  sub_1001DFDBC((v0 + 264), v14 + v12);
  *(v14 + v13) = 0;
  sub_10026FEE4(v0 + 16, v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();

  v15 = sub_1002FBE70(0, 0, v1, 0, 0, &unk_1006A1130, v14);

  sub_1000032A8(v1, &unk_100780380);
  v16 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + v16);
  *(v5 + v16) = 0x8000000000000000;
  sub_1005C26B4(v15, v22, v21, isUniquelyReferenced_nonNull_native);

  *(v5 + v16) = v23;
  swift_endAccess();

  v18 = *(v0 + 632);

  sub_10000710C(v0 + 224);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10026AB74()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = sub_10026ADDC;
  }

  else
  {
    v5 = *(v2 + 632);
    v6 = *(v2 + 408);

    v4 = sub_1002654FC;
    v3 = v6;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026ACAC()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = sub_10026B084;
  }

  else
  {
    v5 = *(v2 + 408);

    sub_10000710C(v2 + 160);
    v4 = sub_100271E2C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026ADDC()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 624);
  static Logger.ddm.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Ingest failed, error: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);

  (*(v15 + 8))(v13, v14);
  sub_10000710C(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10026B084()
{
  sub_10000710C(v0 + 160);
  v1 = *(v0 + 624);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 624);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest failed, error: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);

  (*(v14 + 8))(v12, v13);
  sub_10000710C(v0 + 224);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10026B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a1;
  v6[14] = a3;
  v12 = type metadata accessor for Logger();
  v6[15] = v12;
  v6[16] = *(v12 - 8);
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v6[18] = v13;
  v6[19] = *(v13 - 8);
  v6[20] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  v14 = sub_10020A748(v6 + 2);
  (*(*(a4 - 8) + 16))(v14, a2, a4);

  return _swift_task_switch(sub_10026B4F0, a3, 0);
}

uint64_t sub_10026B4F0()
{
  v1 = v0[13];
  v0[23] = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v2 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10026B634;
  v5 = v0[22];

  return sub_1003B1528(v5, sub_100271CB8, v3, v2);
}