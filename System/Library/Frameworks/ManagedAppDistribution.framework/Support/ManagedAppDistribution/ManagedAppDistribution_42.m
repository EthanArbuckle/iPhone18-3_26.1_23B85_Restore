uint64_t sub_100552800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v8 = type metadata accessor for Logger();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_1005528D4, a6, 0);
}

uint64_t sub_1005528D4()
{
  v15 = v0;
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  if (v3)
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1002346CC(v8, v7, &v14);
    _os_log_impl(&_mh_execute_header, v1, v2, "[[%{public}s]] Cold Promotion", v9, 0xCu);
    sub_10000710C(v10);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[29] = v11;
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_100552A94;

  return sub_100324268((v0 + 14));
}

uint64_t sub_100552A94()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_100552BC0;
  }

  else
  {
    v4 = sub_1005683B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100552BC0()
{
  v17 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  if (v3)
  {
    v15 = v0[29];
    v7 = v0[22];
    v8 = v0[23];
    v14 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1002346CC(v7, v8, &v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1002346CC(v7, v8, &v16);
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Error fetching bag to prioritize bundleID: %s error: %@", v9, 0x20u);
    sub_1000032A8(v10, &qword_10077F920);

    swift_arrayDestroy();

    v15(v14, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100552E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for Logger();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[28] = v8;
  *v8 = v6;
  v8[1] = sub_100552F24;

  return sub_100324268((v6 + 14));
}

uint64_t sub_100552F24()
{
  v2 = *(*v1 + 176);
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1005531E8;
  }

  else
  {
    v3 = sub_10055304C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10055304C()
{
  v1 = (*(v0 + 176) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  result = swift_beginAccess();
  v3 = v1[3];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*sub_100006D8C(v1, v3) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  result = sub_100005934(v1, v0 + 16, &qword_100784E10);
  v5 = *(v0 + 40);
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  *(v0 + 256) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 272) = 1;
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v12 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = sub_100006D8C((v0 + 16), v5);

  sub_10046413C(v0 + 112, 1, v7, v6, 0, 0, 2, (v0 + 240), v10, v4, v5, v14, v13, v12, v8, v9);

  sub_10000710C(v0 + 112);
  sub_10000710C(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1005531E8()
{
  v18 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  if (v3)
  {
    v16 = v0[27];
    v7 = v0[23];
    v8 = v0[24];
    v15 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1002346CC(v7, v8, &v17);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Fetching bag to prioritize coordinator resulted in error: %@", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v11);

    (*(v5 + 8))(v16, v15);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005533F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v8 = type metadata accessor for Logger();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_1005534CC, a6, 0);
}

uint64_t sub_1005534CC()
{
  v15 = v0;
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  if (v3)
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1002346CC(v8, v7, &v14);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Cold Promotion of a placeholder", v9, 0xCu);
    sub_10000710C(v10);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[29] = v11;
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_10055368C;

  return sub_100324268((v0 + 14));
}

uint64_t sub_10055368C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_100553980;
  }

  else
  {
    v4 = sub_1005537B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005537B8()
{
  v1 = (*(v0 + 192) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  result = swift_beginAccess();
  v3 = v1[3];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(*sub_100006D8C(v1, v3) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  sub_1001F0C48(&qword_100784460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069E680;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  result = sub_100005934(v1, v0 + 16, &qword_100784E10);
  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 1;
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = sub_100006D8C((v0 + 16), v8);

  sub_100464C24(v7, v0 + 112, (v0 + 256), v13, v6, v8, v9, v10, v16, v15, v11, v12);

  sub_10000710C(v0 + 112);
  sub_10000710C(v0 + 16);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100553980()
{
  v19 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  if (v3)
  {
    v17 = v0[29];
    v7 = v0[22];
    v8 = v0[23];
    v16 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v6;
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1002346CC(v7, v8, &v18);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Fetching bag to prioritize a placeholder resulted in error: %@", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v11);

    v17(v16, v15);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100553BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_100553C40();
}

uint64_t sub_100553C40()
{
  v1[121] = v0;
  sub_1001F0C48(&unk_100780380);
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[126] = v2;
  v1[127] = *(v2 - 8);
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[132] = v3;
  v1[133] = *(v3 - 8);
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007839F0);
  v1[140] = v4;
  v1[141] = *(v4 - 8);
  v1[142] = swift_task_alloc();

  return _swift_task_switch(sub_100553E80, v0, 0);
}

uint64_t sub_100553E80()
{
  *(v0 + 248) = 0u;
  v1 = *(v0 + 968);
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0;
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  *(v0 + 1144) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  v3 = (v1 + v2);
  v4 = swift_beginAccess();
  v7 = v3[3];
  if (v7)
  {
    v8 = *(*sub_100006D8C(v3, v7) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
    sub_1001F0C48(&qword_1007839F8);
    AsyncStream.makeAsyncIterator()();

    *(v0 + 1152) = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
    *(v0 + 1160) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_coordinatorMap;
    *(v0 + 1168) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
    *(v0 + 1176) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
    swift_beginAccess();
    v9 = *(v0 + 1152);
    v10 = *(v0 + 968);
    v11 = swift_task_alloc();
    *(v0 + 1184) = v11;
    *v11 = v0;
    v11[1] = sub_10055404C;
    v6 = *(v0 + 1120);
    v4 = v0 + 112;
    v7 = v10;
    v5 = v9;
  }

  else
  {
    __break(1u);
  }

  return AsyncStream.Iterator.next(isolation:)(v4, v7, v5, v6);
}

uint64_t sub_10055404C()
{
  v1 = *(*v0 + 968);

  return _swift_task_switch(sub_10055415C, v1, 0);
}

uint64_t sub_10055415C()
{
  v1 = *(v0 + 112);
  *(v0 + 1192) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 1200) = v2;
  *(v0 + 1208) = v3;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 1216) = v4;
  *(v0 + 1224) = v5;
  v6 = *(v0 + 152);
  *(v0 + 153) = v6;
  if (v2)
  {
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 176) = v3;
    *(v0 + 184) = v4;
    *(v0 + 192) = v5;
    *(v0 + 200) = v6;
    *(&v97 + 1) = v4;
    if (!v1)
    {
      static Logger.install.getter();
      v27 = v2;
      sub_1003D8008(v3, v4, v5, v6);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v92 = v27;

      sub_1003D802C(v3, v4, v5, v6);
      if (os_log_type_enabled(v28, v29))
      {
        v98 = v5;
        v30 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *(v0 + 952) = v89;
        *v30 = 136315138;
        v95 = v3;
        if (v6 <= 1)
        {
          if (v6)
          {
            v31 = 0x64656C696166;
          }

          else
          {
            v31 = 0x6574656C706D6F63;
          }

          if (v6)
          {
            v32 = 0xE600000000000000;
          }

          else
          {
            v32 = 0xE900000000000064;
          }
        }

        else if (v6 == 2)
        {
          v32 = 0xE800000000000000;
          v31 = 0x73736572676F7270;
        }

        else if (v6 == 3)
        {
          v31 = 0x6C6F686563616C70;
          v32 = 0xEB00000000726564;
        }

        else
        {
          v40 = v98 | v4;
          if (v98 | v4 | v3)
          {
            if (v3 != 1 || v40)
            {
              v77 = v40 == 0;
              v78 = v3 == 2;
              if (v78 && v77)
              {
                v31 = 0x64656D75736572;
              }

              else
              {
                v31 = 0x697469726F697270;
              }

              if (v78 && v77)
              {
                v32 = 0xE700000000000000;
              }

              else
              {
                v32 = 0xEB0000000064657ALL;
              }
            }

            else
            {
              v31 = 0x646573756170;
              v32 = 0xE600000000000000;
            }
          }

          else
          {
            v31 = 0x64656C65636E6163;
            v32 = 0xE800000000000000;
          }
        }

        v87 = *(v0 + 1080);
        v79 = *(v0 + 1064);
        v80 = *(v0 + 1056);
        v81 = sub_1002346CC(v31, v32, (v0 + 952));

        *(v30 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v28, v29, "Received event: %s", v30, 0xCu);
        sub_10000710C(v89);

        (*(v79 + 8))(v87, v80);
        v3 = v95;
        v5 = v98;
      }

      else
      {
        v37 = *(v0 + 1080);
        v38 = *(v0 + 1064);
        v39 = *(v0 + 1056);

        (*(v38 + 8))(v37, v39);
      }

      sub_100551CCC(v0 + 160);

      sub_1003D802C(v3, *(&v97 + 1), v5, v6);
      goto LABEL_79;
    }

    v7 = v1;
    static Logger.install.getter();
    v8 = v7;
    v9 = v2;
    sub_1003D8008(v3, v4, v5, v6);
    v10 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v88 = v9;
    *&v97 = v10;
    sub_1003D802C(v3, v4, v10, v6);
    if (os_log_type_enabled(v11, v12))
    {
      v86 = v12;
      v94 = v3;
      v13 = *(v0 + 1048);
      v14 = *(v0 + 1016);
      v15 = v8;
      v16 = *(v0 + 1008);
      v17 = swift_slowAlloc();
      *(v0 + 960) = swift_slowAlloc();
      *v17 = 136315394;
      v91 = v15;
      v18 = [v15 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v14 + 8))(v13, v16);
      v22 = sub_1002346CC(v19, v21, (v0 + 960));

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      if (v6 <= 1)
      {
        if (v6)
        {
          v23 = 0x64656C696166;
        }

        else
        {
          v23 = 0x6574656C706D6F63;
        }

        if (v6)
        {
          v24 = 0xE600000000000000;
        }

        else
        {
          v24 = 0xE900000000000064;
        }
      }

      else if (v6 == 2)
      {
        v24 = 0xE800000000000000;
        v23 = 0x73736572676F7270;
      }

      else if (v6 == 3)
      {
        v23 = 0x6C6F686563616C70;
        v24 = 0xEB00000000726564;
      }

      else if (v97 | *(&v97 + 1) | v94)
      {
        if (v94 == 1 && v97 == 0)
        {
          v23 = 0x646573756170;
          v24 = 0xE600000000000000;
        }

        else
        {
          v41 = v97 == 0;
          v42 = v94 == 2;
          if (v42 && v41)
          {
            v23 = 0x64656D75736572;
          }

          else
          {
            v23 = 0x697469726F697270;
          }

          if (v42 && v41)
          {
            v24 = 0xE700000000000000;
          }

          else
          {
            v24 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v23 = 0x64656C65636E6163;
        v24 = 0xE800000000000000;
      }

      v43 = *(v0 + 1112);
      v44 = *(v0 + 1064);
      v45 = *(v0 + 1056);
      v46 = sub_1002346CC(v23, v24, (v0 + 960));

      *(v17 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v11, v86, "Received coordinator event: %s, %s", v17, 0x16u);
      swift_arrayDestroy();

      v36 = *(v44 + 8);
      v36(v43, v45);
      v8 = v91;
      v3 = v94;
    }

    else
    {
      v33 = *(v0 + 1112);
      v34 = *(v0 + 1064);
      v35 = *(v0 + 1056);

      v36 = *(v34 + 8);
      v36(v33, v35);
    }

    *(v0 + 1232) = v36;
    v47 = *(v0 + 1160);
    v48 = *(v0 + 968);
    v49 = [v8 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v50 = *(v48 + v47);
    if (*(v50 + 16) && (v51 = sub_1005225DC(*(v0 + 1040)), (v52 & 1) != 0))
    {
      v53 = *(v0 + 1168);
      v54 = *(v0 + 968);
      v55 = *(*(v50 + 56) + 8 * v51);
      swift_endAccess();
      swift_beginAccess();
      v56 = *(v54 + v53);
      if (*(v56 + 16) && (v57 = sub_10052BA64(v55), (v58 & 1) != 0))
      {
        sub_10020A980(*(v56 + 56) + 40 * v57, v0 + 288);
      }

      else
      {
        *(v0 + 320) = 0;
        *(v0 + 288) = 0u;
        *(v0 + 304) = 0u;
      }

      swift_endAccess();
      if (*(v0 + 312))
      {
        sub_1001F0C48(&qword_1007875C0);
        type metadata accessor for IPA_AppInstall();
        if (swift_dynamicCast())
        {
          v93 = v8;
          v63 = *(v0 + 1000);
          v64 = *(v0 + 992);
          v65 = *(v0 + 944);
          v66 = type metadata accessor for TaskPriority();
          v67 = *(v66 - 8);
          (*(v67 + 56))(v63, 1, 1, v66);
          v68 = swift_allocObject();
          *(v68 + 16) = 0;
          *(v68 + 24) = 0;
          *(v68 + 32) = v65;
          v69 = *(v0 + 176);
          *(v68 + 40) = *(v0 + 160);
          *(v68 + 56) = v69;
          *(v68 + 65) = *(v0 + 185);
          sub_100005934(v63, v64, &unk_100780380);
          LODWORD(v63) = (*(v67 + 48))(v64, 1, v66);
          v90 = v88;
          sub_1003D8008(v3, *(&v97 + 1), v97, v6);

          v70 = *(v0 + 992);
          v96 = v3;
          if (v63 == 1)
          {
            sub_1000032A8(v70, &unk_100780380);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v67 + 8))(v70, v66);
          }

          v71 = *(v68 + 16);
          swift_unknownObjectRetain();

          if (v71)
          {
            swift_getObjectType();
            v72 = dispatch thunk of Actor.unownedExecutor.getter();
            v74 = v73;
            swift_unknownObjectRelease();
          }

          else
          {
            v72 = 0;
            v74 = 0;
          }

          sub_1000032A8(*(v0 + 1000), &unk_100780380);
          v75 = swift_allocObject();
          *(v75 + 16) = &unk_1006B2A98;
          *(v75 + 24) = v68;
          if (v74 | v72)
          {
            *(v0 + 648) = 0;
            *(v0 + 656) = 0;
            *(v0 + 664) = v72;
            *(v0 + 672) = v74;
          }

          v76 = *(v0 + 1016);
          swift_task_create();

          sub_1003D802C(v96, *(&v97 + 1), v97, v6);
          (*(v76 + 8))(*(v0 + 1040), *(v0 + 1008));
LABEL_79:
          v82 = *(v0 + 1152);
          v83 = *(v0 + 968);
          v84 = swift_task_alloc();
          *(v0 + 1184) = v84;
          *v84 = v0;
          v84[1] = sub_10055404C;
          v85 = *(v0 + 1120);

          return AsyncStream.Iterator.next(isolation:)(v0 + 112, v83, v82, v85);
        }
      }

      else
      {
        sub_1000032A8(v0 + 288, &qword_100787560);
      }
    }

    else
    {
      swift_endAccess();
    }

    v59 = *(v0 + 1040);
    v60 = *(*(v0 + 968) + 112);
    *(v0 + 1240) = v60;
    v61 = swift_task_alloc();
    *(v0 + 1248) = v61;
    *(v61 + 16) = v59;
    v62 = swift_task_alloc();
    *(v0 + 1256) = v62;
    *v62 = v0;
    v62[1] = sub_100554E54;

    return sub_1003B5E68(sub_1005670EC, v61, v60);
  }

  else
  {
    (*(*(v0 + 1128) + 8))(*(v0 + 1136), *(v0 + 1120));
    sub_1000032A8(v0 + 248, &qword_1007875B8);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100554E54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 1264) = a1;
  *(v5 + 1272) = a2;

  v6 = *(v4 + 968);
  if (v2)
  {

    v7 = sub_10055757C;
  }

  else
  {

    v7 = sub_100554FBC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100554FBC()
{
  if (!*(v0 + 1272))
  {
    v175 = *(v0 + 1216);
    v181 = *(v0 + 1224);
    v12 = *(v0 + 1208);
    v13 = *(v0 + 1200);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1040);
    v16 = *(v0 + 1024);
    v17 = *(v0 + 1016);
    v18 = *(v0 + 1008);
    v19 = *(v0 + 153);
    static Logger.install.getter();
    (*(v17 + 16))(v16, v15, v18);
    v20 = v14;
    v21 = v13;
    sub_1003D8008(v12, v175, v181, v19);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    sub_1003D802C(v12, v175, v181, v19);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 153);
      v25 = swift_slowAlloc();
      *(v0 + 928) = swift_slowAlloc();
      *v25 = 136446466;
      if (v24 <= 1)
      {
        if (v24)
        {
          v26 = 0x64656C696166;
        }

        else
        {
          v26 = 0x6574656C706D6F63;
        }

        if (v24)
        {
          v27 = 0xE600000000000000;
        }

        else
        {
          v27 = 0xE900000000000064;
        }
      }

      else if (v24 == 2)
      {
        v27 = 0xE800000000000000;
        v26 = 0x73736572676F7270;
      }

      else if (v24 == 3)
      {
        v26 = 0x6C6F686563616C70;
        v27 = 0xEB00000000726564;
      }

      else
      {
        v122 = *(v0 + 1208);
        if (*(v0 + 1216) | *(v0 + 1224) | v122)
        {
          if (v122 == 1 && *(v0 + 1216) == 0)
          {
            v26 = 0x646573756170;
            v27 = 0xE600000000000000;
          }

          else
          {
            v133 = *(v0 + 1216) == 0;
            v134 = v122 == 2;
            if (v134 && v133)
            {
              v26 = 0x64656D75736572;
            }

            else
            {
              v26 = 0x697469726F697270;
            }

            if (v134 && v133)
            {
              v27 = 0xE700000000000000;
            }

            else
            {
              v27 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v26 = 0x64656C65636E6163;
          v27 = 0xE800000000000000;
        }
      }

      v173 = *(v0 + 1088);
      v178 = *(v0 + 1232);
      v135 = *(v0 + 1024);
      v136 = *(v0 + 1016);
      v137 = *(v0 + 1008);
      v169 = *(v0 + 1056);
      v138 = sub_1002346CC(v26, v27, (v0 + 928));

      *(v25 + 4) = v138;
      *(v25 + 12) = 2082;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v140;
      v182 = *(v136 + 8);
      v182(v135, v137);
      v142 = sub_1002346CC(v139, v141, (v0 + 928));

      *(v25 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v22, v23, "Installation not found for %{public}s for %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      v178(v173, v169);
    }

    else
    {
      v60 = *(v0 + 1232);
      v61 = *(v0 + 1088);
      v62 = *(v0 + 1056);
      v63 = *(v0 + 1024);
      v64 = *(v0 + 1016);
      v65 = *(v0 + 1008);

      v182 = *(v64 + 8);
      v182(v63, v65);
      v60(v61, v62);
    }

    v179 = *(v0 + 1224);
    v143 = *(v0 + 1216);
    v144 = *(v0 + 1208);
    v145 = *(v0 + 1200);
    v146 = *(v0 + 1192);
    v147 = *(v0 + 1040);
    v148 = *(v0 + 1008);
    v149 = *(v0 + 153);
    sub_100551CCC(v0 + 160);

    sub_1003D802C(v144, v143, v179, v149);
    v182(v147, v148);
    goto LABEL_104;
  }

  v1 = *(v0 + 1168);
  v2 = *(v0 + 968);
  swift_beginAccess();
  v3 = *(v2 + v1);
  if (*(v3 + 16) && (v4 = sub_10052BA64(*(v0 + 1264)), (v5 & 1) != 0))
  {
    sub_10020A980(*(v3 + 56) + 40 * v4, v0 + 368);
  }

  else
  {
    *(v0 + 400) = 0;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
  }

  swift_endAccess();
  v6 = *(v0 + 392);
  sub_1000032A8(v0 + 368, &qword_100787560);
  if (v6)
  {
    v7 = *(v0 + 1168);
    v8 = *(v0 + 968);
    swift_beginAccess();
    v9 = *(v8 + v7);
    if (*(v9 + 16) && (v10 = sub_10052BA64(*(v0 + 1264)), (v11 & 1) != 0))
    {
      sub_10020A980(*(v9 + 56) + 40 * v10, v0 + 328);
    }

    else
    {
      *(v0 + 360) = 0;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
    }

    swift_endAccess();
    if (*(v0 + 352))
    {
      sub_1001F0C48(&qword_1007875C0);
      type metadata accessor for IPA_AppInstall();
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 1160);
        v29 = *(v0 + 1032);
        v30 = *(v0 + 968);
        v31 = *(*(v0 + 1016) + 16);
        v32 = *(v0 + 912);
        v31(v29, *(v0 + 1040), *(v0 + 1008));
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v30 + v28);
        *(v0 + 920) = v34;
        *(v30 + v28) = 0x8000000000000000;
        v35 = sub_1005225DC(v29);
        v37 = *(v34 + 16);
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v29) = v36;
          if (*(v34 + 24) < v40)
          {
            v41 = *(v0 + 1032);
            sub_1005BED68(v40, isUniquelyReferenced_nonNull_native);
            v35 = sub_1005225DC(v41);
            if ((v29 & 1) != (v42 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_45:
            v92 = *(v0 + 920);
            v93 = *(v0 + 1264);
            if (v29)
            {
              v94 = v32;
              *(v92[7] + 8 * v35) = v93;
            }

            else
            {
              v95 = *(v0 + 1032);
              v96 = *(v0 + 1016);
              v97 = *(v0 + 1008);
              v92[(v35 >> 6) + 8] |= 1 << v35;
              v98 = v35;
              v99 = v31(v92[6] + *(v96 + 72) * v35, v95, v97);
              *(v92[7] + 8 * v98) = v93;
              v103 = v92[2];
              v39 = __OFADD__(v103, 1);
              v104 = v103 + 1;
              if (v39)
              {
                __break(1u);
                return AsyncStream.Iterator.next(isolation:)(v99, v100, v101, v102);
              }

              v94 = v32;
              v92[2] = v104;
            }

            v172 = *(v0 + 1216);
            v177 = *(v0 + 1224);
            v105 = *(v0 + 1208);
            v106 = *(v0 + 1200);
            v107 = *(v0 + 1160);
            v108 = *(v0 + 984);
            v109 = *(v0 + 976);
            v110 = *(v0 + 968);
            v111 = *(v0 + 153);
            v184 = *(*(v0 + 1016) + 8);
            v184(*(v0 + 1032), *(v0 + 1008));
            *(v110 + v107) = v92;

            swift_endAccess();
            v112 = type metadata accessor for TaskPriority();
            v113 = *(v112 - 8);
            (*(v113 + 56))(v108, 1, 1, v112);
            v114 = swift_allocObject();
            *(v114 + 16) = 0;
            *(v114 + 24) = 0;
            *(v114 + 32) = v94;
            v115 = *(v0 + 176);
            *(v114 + 40) = *(v0 + 160);
            *(v114 + 56) = v115;
            *(v114 + 65) = *(v0 + 185);
            sub_100005934(v108, v109, &unk_100780380);
            LODWORD(v109) = (*(v113 + 48))(v109, 1, v112);
            v116 = v106;
            sub_1003D8008(v105, v172, v177, v111);

            v117 = *(v0 + 976);
            if (v109 == 1)
            {
              sub_1000032A8(*(v0 + 976), &unk_100780380);
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v113 + 8))(v117, v112);
            }

            v118 = *(v114 + 16);
            swift_unknownObjectRetain();

            if (v118)
            {
              swift_getObjectType();
              v119 = dispatch thunk of Actor.unownedExecutor.getter();
              v121 = v120;
              swift_unknownObjectRelease();
            }

            else
            {
              v119 = 0;
              v121 = 0;
            }

            sub_1000032A8(*(v0 + 984), &unk_100780380);
            v123 = swift_allocObject();
            *(v123 + 16) = &unk_1006B2A80;
            *(v123 + 24) = v114;
            if (v121 | v119)
            {
              *(v0 + 680) = 0;
              *(v0 + 688) = 0;
              *(v0 + 696) = v119;
              *(v0 + 704) = v121;
            }

            v124 = *(v0 + 1272);
            v125 = *(v0 + 1224);
            v126 = *(v0 + 1216);
            v127 = *(v0 + 1208);
            v128 = *(v0 + 1200);
            v129 = *(v0 + 1192);
            v130 = *(v0 + 153);
            swift_task_create();

            sub_1003D802C(v127, v126, v125, v130);
            v184(*(v0 + 1040), *(v0 + 1008));
LABEL_104:
            v156 = *(v0 + 1152);
            v157 = *(v0 + 968);
            v158 = swift_task_alloc();
            *(v0 + 1184) = v158;
            *v158 = v0;
            v158[1] = sub_10055404C;
            v102 = *(v0 + 1120);
            v99 = v0 + 112;
            v100 = v157;
            v101 = v156;

            return AsyncStream.Iterator.next(isolation:)(v99, v100, v101, v102);
          }
        }

        v164 = v35;
        sub_1005C6994();
        v35 = v164;
        goto LABEL_45;
      }
    }

    else
    {
      sub_1000032A8(v0 + 328, &qword_100787560);
    }

    v66 = *(v0 + 1224);
    v67 = *(v0 + 1216);
    v68 = *(v0 + 1208);
    v69 = *(v0 + 1200);
    v70 = *(v0 + 1192);
    v71 = *(v0 + 153);
    static Logger.install.getter();
    v72 = v70;
    v73 = v69;
    sub_1003D8008(v68, v67, v66, v71);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.fault.getter();

    sub_1003D802C(v68, v67, v66, v71);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 153);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *(v0 + 904) = v78;
      *v77 = 136315394;
      if (v76 <= 1)
      {
        if (v76)
        {
          v79 = 0x64656C696166;
        }

        else
        {
          v79 = 0x6574656C706D6F63;
        }

        if (v76)
        {
          v80 = 0xE600000000000000;
        }

        else
        {
          v80 = 0xE900000000000064;
        }
      }

      else if (v76 == 2)
      {
        v80 = 0xE800000000000000;
        v79 = 0x73736572676F7270;
      }

      else if (v76 == 3)
      {
        v79 = 0x6C6F686563616C70;
        v80 = 0xEB00000000726564;
      }

      else
      {
        v131 = *(v0 + 1208);
        if (*(v0 + 1216) | *(v0 + 1224) | v131)
        {
          if (v131 == 1 && *(v0 + 1216) == 0)
          {
            v79 = 0x646573756170;
            v80 = 0xE600000000000000;
          }

          else
          {
            v150 = *(v0 + 1216) == 0;
            v151 = v131 == 2;
            if (v151 && v150)
            {
              v79 = 0x64656D75736572;
            }

            else
            {
              v79 = 0x697469726F697270;
            }

            if (v151 && v150)
            {
              v80 = 0xE700000000000000;
            }

            else
            {
              v80 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v79 = 0x64656C65636E6163;
          v80 = 0xE800000000000000;
        }
      }

      v152 = *(v0 + 1264);
      v180 = *(v0 + 1224);
      v185 = *(v0 + 1232);
      v167 = *(v0 + 1216);
      v168 = *(v0 + 1272);
      v166 = *(v0 + 1208);
      v153 = *(v0 + 1200);
      v154 = *(v0 + 1192);
      v170 = *(v0 + 1056);
      v174 = *(v0 + 1096);
      v165 = *(v0 + 153);
      v155 = sub_1002346CC(v79, v80, (v0 + 904));

      *(v77 + 4) = v155;
      *(v77 + 12) = 2050;
      *(v77 + 14) = v152;
      _os_log_impl(&_mh_execute_header, v74, v75, "Received unexpected coordinator event %s for '%{public}lld'", v77, 0x16u);
      sub_10000710C(v78);

      sub_1003D802C(v166, v167, v180, v165);
      v185(v174, v170);
    }

    else
    {
      v81 = *(v0 + 1272);
      v82 = *(v0 + 1224);
      v83 = *(v0 + 1216);
      v84 = *(v0 + 1208);
      v171 = v74;
      v85 = *(v0 + 1200);
      v86 = *(v0 + 1192);
      v176 = *(v0 + 1096);
      v183 = *(v0 + 1232);
      v87 = *(v0 + 1056);
      v88 = *(v0 + 153);

      sub_1003D802C(v84, v83, v82, v88);
      v183(v176, v87);
    }

    (*(*(v0 + 1016) + 8))(*(v0 + 1040), *(v0 + 1008));
    goto LABEL_104;
  }

  v44 = *(v0 + 1224);
  v45 = *(v0 + 1216);
  v46 = *(v0 + 1208);
  v47 = *(v0 + 1200);
  v48 = *(v0 + 1192);
  v49 = *(v0 + 153);
  static Logger.install.getter();
  v50 = v48;
  v51 = v47;
  sub_1003D8008(v46, v45, v44, v49);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  sub_1003D802C(v46, v45, v44, v49);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 1264);
    v55 = *(v0 + 153);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *(v0 + 936) = v57;
    *v56 = 134349314;
    *(v56 + 4) = v54;
    *(v56 + 12) = 2082;
    if (v55 <= 1)
    {
      if (v55)
      {
        v58 = 0x64656C696166;
      }

      else
      {
        v58 = 0x6574656C706D6F63;
      }

      if (v55)
      {
        v59 = 0xE600000000000000;
      }

      else
      {
        v59 = 0xE900000000000064;
      }
    }

    else if (v55 == 2)
    {
      v59 = 0xE800000000000000;
      v58 = 0x73736572676F7270;
    }

    else if (v55 == 3)
    {
      v58 = 0x6C6F686563616C70;
      v59 = 0xEB00000000726564;
    }

    else
    {
      v132 = *(v0 + 1208);
      if (*(v0 + 1216) | *(v0 + 1224) | v132)
      {
        if (v132 == 1 && *(v0 + 1216) == 0)
        {
          v58 = 0x646573756170;
          v59 = 0xE600000000000000;
        }

        else
        {
          v159 = *(v0 + 1216) == 0;
          v160 = v132 == 2;
          if (v160 && v159)
          {
            v58 = 0x64656D75736572;
          }

          else
          {
            v58 = 0x697469726F697270;
          }

          if (v160 && v159)
          {
            v59 = 0xE700000000000000;
          }

          else
          {
            v59 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v58 = 0x64656C65636E6163;
        v59 = 0xE800000000000000;
      }
    }

    v186 = *(v0 + 1232);
    v161 = *(v0 + 1104);
    v162 = *(v0 + 1056);
    v163 = sub_1002346CC(v58, v59, (v0 + 936));

    *(v56 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v52, v53, "Creating installation %{public}lld to handle event: %{public}s", v56, 0x16u);
    sub_10000710C(v57);

    v186(v161, v162);
  }

  else
  {
    v89 = *(v0 + 1232);
    v90 = *(v0 + 1104);
    v91 = *(v0 + 1056);

    v89(v90, v91);
  }

  return _swift_task_switch(sub_1005560E0, 0, 0);
}

uint64_t sub_1005560E0()
{
  sub_100005934(v0 + 248, v0 + 448, &qword_1007875B8);
  if (*(v0 + 472))
  {
    sub_1001DFDBC((v0 + 448), v0 + 408);
    v1 = *(v0 + 968);

    return _swift_task_switch(sub_100556924, v1, 0);
  }

  else
  {
    sub_1000032A8(v0 + 448, &qword_1007875B8);
    v2 = swift_task_alloc();
    *(v0 + 1280) = v2;
    *v2 = v0;
    v2[1] = sub_100556200;

    return sub_100324F98(v0 + 568);
  }
}

uint64_t sub_100556200()
{

  if (v0)
  {

    v1 = sub_1005563F4;
  }

  else
  {
    v1 = sub_100556318;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100556318()
{
  sub_1001DFDBC((v0 + 568), v0 + 528);
  v5 = *(v0 + 552);
  v1 = *(v0 + 552);
  v2 = sub_100006D8C((v0 + 528), v1);
  *(v0 + 512) = v5;
  v3 = sub_10020A748((v0 + 488));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_10000710C(v0 + 528);

  return _swift_task_switch(sub_1005565CC, 0, 0);
}

uint64_t sub_1005563F4()
{
  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  sub_1000032A8(v0 + 568, &qword_100780620);
  v1 = swift_task_alloc();
  *(v0 + 1288) = v1;
  *v1 = v0;
  v1[1] = sub_1005564B8;

  return sub_100324A90(v0 + 488);
}

uint64_t sub_1005564B8()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_100556660;
  }

  else
  {
    v2 = sub_1005565CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005565CC()
{
  sub_10020A980(v0 + 488, v0 + 608);
  sub_10020AD90(v0 + 608, v0 + 248, &qword_1007875B8);
  sub_1001DFDBC((v0 + 488), v0 + 408);
  v1 = *(v0 + 968);

  return _swift_task_switch(sub_100556924, v1, 0);
}

uint64_t sub_10055667C()
{
  static Logger.install.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1272);
  if (v3)
  {
    v5 = *(v0 + 1264);
    v28 = *(v0 + 1216);
    v29 = *(v0 + 1224);
    v27 = *(v0 + 1208);
    v6 = *(v0 + 1200);
    v7 = *(v0 + 1192);
    v26 = *(v0 + 153);
    v8 = swift_slowAlloc();
    v9 = v4;
    v10 = swift_slowAlloc();
    *v8 = 134349314;
    *(v8 + 4) = v5;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating installation %{public}lld failed: %{public}@", v8, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_1003D802C(v27, v28, v29, v26);
  }

  else
  {
    v12 = *(v0 + 1224);
    v13 = *(v0 + 1216);
    v14 = *(v0 + 1208);
    v15 = *(v0 + 1200);
    v16 = *(v0 + 1192);
    v17 = *(v0 + 153);

    sub_1003D802C(v14, v13, v12, v17);
  }

  v18 = *(v0 + 1040);
  v19 = *(v0 + 1016);
  v20 = *(v0 + 1008);
  (*(v0 + 1232))(*(v0 + 1072), *(v0 + 1056));
  (*(v19 + 8))(v18, v20);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = swift_task_alloc();
  *(v0 + 1184) = v23;
  *v23 = v0;
  v23[1] = sub_10055404C;
  v24 = *(v0 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v0 + 112, v22, v21, v24);
}

uint64_t sub_100556924()
{
  v1 = v0[158];
  sub_100005934(v0[121] + v0[143], (v0 + 2), &qword_100784E10);
  v2 = swift_task_alloc();
  v0[163] = v2;
  v2[2] = v1;
  v2[3] = v0 + 2;
  v2[4] = v0 + 51;
  v3 = swift_task_alloc();
  v0[164] = v3;
  *v3 = v0;
  v3[1] = sub_100556A34;
  v4 = v0[155];

  return sub_1003B63A0(sub_100567108, v2, v4);
}

uint64_t sub_100556A34(uint64_t a1)
{
  v3 = *v2;
  v3[165] = a1;
  v3[166] = v1;

  if (v1)
  {
    v4 = v3[121];
    v5 = sub_100557A70;
  }

  else
  {
    v6 = v3[121];
    sub_1000032A8((v3 + 2), &qword_100784E10);
    v5 = sub_100556B98;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100556B98()
{
  v1 = *(v0 + 1320);
  if (v1)
  {
    *(v0 + 232) = type metadata accessor for IPA_AppInstall();
    *(v0 + 240) = &off_100763A38;
    *(v0 + 208) = v1;
  }

  else
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
  }

  v2 = *(v0 + 1264);
  swift_beginAccess();
  sub_1005B7C44(v0 + 208, v2);
  swift_endAccess();
  sub_10000710C(v0 + 408);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 968);
  swift_beginAccess();
  v5 = *(v4 + v3);
  if (*(v5 + 16) && (v6 = sub_10052BA64(*(v0 + 1264)), (v7 & 1) != 0))
  {
    sub_10020A980(*(v5 + 56) + 40 * v6, v0 + 328);
  }

  else
  {
    *(v0 + 360) = 0;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
  }

  swift_endAccess();
  if (!*(v0 + 352))
  {
    sub_1000032A8(v0 + 328, &qword_100787560);
    goto LABEL_17;
  }

  sub_1001F0C48(&qword_1007875C0);
  type metadata accessor for IPA_AppInstall();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v24 = *(v0 + 1224);
    v25 = *(v0 + 1216);
    v26 = *(v0 + 1208);
    v27 = *(v0 + 1200);
    v28 = *(v0 + 1192);
    v29 = *(v0 + 153);
    static Logger.install.getter();
    v30 = v28;
    v31 = v27;
    sub_1003D8008(v26, v25, v24, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    sub_1003D802C(v26, v25, v24, v29);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 153);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *(v0 + 904) = v36;
      *v35 = 136315394;
      if (v34 <= 1)
      {
        if (v34)
        {
          v38 = 0x64656C696166;
        }

        else
        {
          v38 = 0x6574656C706D6F63;
        }

        if (v34)
        {
          v37 = 0xE600000000000000;
        }

        else
        {
          v37 = 0xE900000000000064;
        }
      }

      else if (v34 == 2)
      {
        v37 = 0xE800000000000000;
        v38 = 0x73736572676F7270;
      }

      else if (v34 == 3)
      {
        v37 = 0xEB00000000726564;
        v38 = 0x6C6F686563616C70;
      }

      else
      {
        v85 = *(v0 + 1208);
        if (*(v0 + 1216) | *(v0 + 1224) | v85)
        {
          if (v85 == 1 && *(v0 + 1216) == 0)
          {
            v37 = 0xE600000000000000;
            v38 = 0x646573756170;
          }

          else
          {
            v86 = *(v0 + 1216) == 0;
            v87 = v85 == 2;
            if (v87 && v86)
            {
              v38 = 0x64656D75736572;
            }

            else
            {
              v38 = 0x697469726F697270;
            }

            if (v87 && v86)
            {
              v37 = 0xE700000000000000;
            }

            else
            {
              v37 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v37 = 0xE800000000000000;
          v38 = 0x64656C65636E6163;
        }
      }

      v88 = *(v0 + 1264);
      v106 = *(v0 + 1224);
      v109 = *(v0 + 1232);
      v98 = *(v0 + 1216);
      v99 = *(v0 + 1272);
      v97 = *(v0 + 1208);
      v89 = *(v0 + 1200);
      v90 = *(v0 + 1192);
      v100 = *(v0 + 1056);
      v103 = *(v0 + 1096);
      v96 = *(v0 + 153);
      v91 = sub_1002346CC(v38, v37, (v0 + 904));

      *(v35 + 4) = v91;
      *(v35 + 12) = 2050;
      *(v35 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v32, v33, "Received unexpected coordinator event %s for '%{public}lld'", v35, 0x16u);
      sub_10000710C(v36);

      sub_1003D802C(v97, v98, v106, v96);
      v109(v103, v100);
    }

    else
    {
      v39 = *(v0 + 1272);
      v40 = *(v0 + 1224);
      v41 = *(v0 + 1216);
      v42 = *(v0 + 1208);
      v101 = v32;
      v43 = *(v0 + 1200);
      v44 = *(v0 + 1192);
      v104 = *(v0 + 1096);
      v107 = *(v0 + 1232);
      v45 = *(v0 + 1056);
      v46 = *(v0 + 153);

      sub_1003D802C(v42, v41, v40, v46);
      v107(v104, v45);
    }

    (*(*(v0 + 1016) + 8))(*(v0 + 1040), *(v0 + 1008));
    goto LABEL_57;
  }

  v8 = *(v0 + 1160);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 968);
  v11 = *(*(v0 + 1016) + 16);
  v12 = *(v0 + 912);
  v11(v9, *(v0 + 1040), *(v0 + 1008));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v10 + v8);
  *(v0 + 920) = v14;
  *(v10 + v8) = 0x8000000000000000;
  v15 = sub_1005225DC(v9);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_61;
  }

  LOBYTE(v9) = v16;
  if (*(v14 + 24) >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

LABEL_61:
    v95 = v15;
    sub_1005C6994();
    v15 = v95;
    goto LABEL_24;
  }

  v21 = *(v0 + 1032);
  sub_1005BED68(v20, isUniquelyReferenced_nonNull_native);
  v15 = sub_1005225DC(v21);
  if ((v9 & 1) == (v22 & 1))
  {
LABEL_24:
    v47 = *(v0 + 920);
    v48 = *(v0 + 1264);
    if (v9)
    {
      v49 = v12;
      *(v47[7] + 8 * v15) = v48;
    }

    else
    {
      v50 = *(v0 + 1032);
      v51 = *(v0 + 1016);
      v52 = *(v0 + 1008);
      v47[(v15 >> 6) + 8] |= 1 << v15;
      v53 = v15;
      v54 = v11(v47[6] + *(v51 + 72) * v15, v50, v52);
      *(v47[7] + 8 * v53) = v48;
      v58 = v47[2];
      v19 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v19)
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v54, v55, v56, v57);
      }

      v49 = v12;
      v47[2] = v59;
    }

    v102 = *(v0 + 1216);
    v105 = *(v0 + 1224);
    v60 = *(v0 + 1208);
    v61 = *(v0 + 1200);
    v62 = *(v0 + 1160);
    v63 = *(v0 + 984);
    v64 = *(v0 + 976);
    v65 = *(v0 + 968);
    v66 = *(v0 + 153);
    v108 = *(*(v0 + 1016) + 8);
    v108(*(v0 + 1032), *(v0 + 1008));
    *(v65 + v62) = v47;

    swift_endAccess();
    v67 = type metadata accessor for TaskPriority();
    v68 = *(v67 - 8);
    (*(v68 + 56))(v63, 1, 1, v67);
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    *(v69 + 32) = v49;
    v70 = *(v0 + 176);
    *(v69 + 40) = *(v0 + 160);
    *(v69 + 56) = v70;
    *(v69 + 65) = *(v0 + 185);
    sub_100005934(v63, v64, &unk_100780380);
    LODWORD(v64) = (*(v68 + 48))(v64, 1, v67);
    v71 = v61;
    sub_1003D8008(v60, v102, v105, v66);

    v72 = *(v0 + 976);
    if (v64 == 1)
    {
      sub_1000032A8(*(v0 + 976), &unk_100780380);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v68 + 8))(v72, v67);
    }

    v73 = *(v69 + 16);
    swift_unknownObjectRetain();

    if (v73)
    {
      swift_getObjectType();
      v74 = dispatch thunk of Actor.unownedExecutor.getter();
      v76 = v75;
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    sub_1000032A8(*(v0 + 984), &unk_100780380);
    v77 = swift_allocObject();
    *(v77 + 16) = &unk_1006B2A80;
    *(v77 + 24) = v69;
    if (v76 | v74)
    {
      *(v0 + 680) = 0;
      *(v0 + 688) = 0;
      *(v0 + 696) = v74;
      *(v0 + 704) = v76;
    }

    v78 = *(v0 + 1272);
    v79 = *(v0 + 1224);
    v80 = *(v0 + 1216);
    v81 = *(v0 + 1208);
    v82 = *(v0 + 1200);
    v83 = *(v0 + 1192);
    v84 = *(v0 + 153);
    swift_task_create();

    sub_1003D802C(v81, v80, v79, v84);
    v108(*(v0 + 1040), *(v0 + 1008));
LABEL_57:
    v92 = *(v0 + 1152);
    v93 = *(v0 + 968);
    v94 = swift_task_alloc();
    *(v0 + 1184) = v94;
    *v94 = v0;
    v94[1] = sub_10055404C;
    v57 = *(v0 + 1120);
    v54 = v0 + 112;
    v55 = v93;
    v56 = v92;

    return AsyncStream.Iterator.next(isolation:)(v54, v55, v56, v57);
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10055757C()
{
  v48 = *(v0 + 1216);
  v51 = *(v0 + 1224);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 153);
  static Logger.install.getter();
  (*(v6 + 16))(v5, v4, v7);
  v9 = v3;
  v10 = v2;
  sub_1003D8008(v1, v48, v51, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  sub_1003D802C(v1, v48, v51, v8);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 153);
    v14 = swift_slowAlloc();
    *(v0 + 928) = swift_slowAlloc();
    *v14 = 136446466;
    if (v13 <= 1)
    {
      if (v13)
      {
        v16 = 0x64656C696166;
      }

      else
      {
        v16 = 0x6574656C706D6F63;
      }

      if (v13)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE900000000000064;
      }
    }

    else if (v13 == 2)
    {
      v15 = 0xE800000000000000;
      v16 = 0x73736572676F7270;
    }

    else if (v13 == 3)
    {
      v15 = 0xEB00000000726564;
      v16 = 0x6C6F686563616C70;
    }

    else
    {
      v23 = *(v0 + 1208);
      if (*(v0 + 1216) | *(v0 + 1224) | v23)
      {
        if (v23 == 1 && *(v0 + 1216) == 0)
        {
          v15 = 0xE600000000000000;
          v16 = 0x646573756170;
        }

        else
        {
          v24 = *(v0 + 1216) == 0;
          v25 = v23 == 2;
          if (v25 && v24)
          {
            v16 = 0x64656D75736572;
          }

          else
          {
            v16 = 0x697469726F697270;
          }

          if (v25 && v24)
          {
            v15 = 0xE700000000000000;
          }

          else
          {
            v15 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v16 = 0x64656C65636E6163;
      }
    }

    v47 = *(v0 + 1088);
    v49 = *(v0 + 1232);
    v26 = *(v0 + 1024);
    v27 = *(v0 + 1016);
    v28 = *(v0 + 1008);
    v46 = *(v0 + 1056);
    v29 = sub_1002346CC(v16, v15, (v0 + 928));

    *(v14 + 4) = v29;
    *(v14 + 12) = 2082;
    sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v52 = *(v27 + 8);
    v52(v26, v28);
    v33 = sub_1002346CC(v30, v32, (v0 + 928));

    *(v14 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v11, v12, "Installation not found for %{public}s for %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v49(v47, v46);
  }

  else
  {
    v17 = *(v0 + 1232);
    v18 = *(v0 + 1088);
    v19 = *(v0 + 1056);
    v20 = *(v0 + 1024);
    v21 = *(v0 + 1016);
    v22 = *(v0 + 1008);

    v52 = *(v21 + 8);
    v52(v20, v22);
    v17(v18, v19);
  }

  v50 = *(v0 + 1224);
  v34 = *(v0 + 1216);
  v35 = *(v0 + 1208);
  v36 = *(v0 + 1200);
  v37 = *(v0 + 1192);
  v38 = *(v0 + 1040);
  v39 = *(v0 + 1008);
  v40 = *(v0 + 153);
  sub_100551CCC(v0 + 160);

  sub_1003D802C(v35, v34, v50, v40);
  v52(v38, v39);
  v41 = *(v0 + 1152);
  v42 = *(v0 + 968);
  v43 = swift_task_alloc();
  *(v0 + 1184) = v43;
  *v43 = v0;
  v43[1] = sub_10055404C;
  v44 = *(v0 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v0 + 112, v42, v41, v44);
}

uint64_t sub_100557A70()
{
  sub_1000032A8(v0 + 16, &qword_100784E10);
  sub_10000710C(v0 + 408);
  static Logger.install.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1272);
  if (v3)
  {
    v5 = *(v0 + 1264);
    v28 = *(v0 + 1216);
    v29 = *(v0 + 1224);
    v27 = *(v0 + 1208);
    v6 = *(v0 + 1200);
    v7 = *(v0 + 1192);
    v26 = *(v0 + 153);
    v8 = swift_slowAlloc();
    v9 = v4;
    v10 = swift_slowAlloc();
    *v8 = 134349314;
    *(v8 + 4) = v5;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating installation %{public}lld failed: %{public}@", v8, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_1003D802C(v27, v28, v29, v26);
  }

  else
  {
    v12 = *(v0 + 1224);
    v13 = *(v0 + 1216);
    v14 = *(v0 + 1208);
    v15 = *(v0 + 1200);
    v16 = *(v0 + 1192);
    v17 = *(v0 + 153);

    sub_1003D802C(v14, v13, v12, v17);
  }

  v18 = *(v0 + 1040);
  v19 = *(v0 + 1016);
  v20 = *(v0 + 1008);
  (*(v0 + 1232))(*(v0 + 1072), *(v0 + 1056));
  (*(v19 + 8))(v18, v20);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = swift_task_alloc();
  *(v0 + 1184) = v23;
  *v23 = v0;
  v23[1] = sub_10055404C;
  v24 = *(v0 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v0 + 112, v22, v21, v24);
}

uint64_t sub_100557D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100214EFC;

  return sub_1003D63F8(a5);
}

void sub_100557DD4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LogKey.Prefix();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_100274FF8(a2, 0, 0);
  v12 = sub_100563BA8(0, 0, v11, sub_100563B34, 0, v10);

  if (v12)
  {
    v13 = [v12 persistentID];
    v14 = sub_100535BE0(22, v12);
    if (!v14)
    {
      (*(v7 + 104))(v9, enum case for LogKey.Prefix.undefined(_:), v6);
      v15 = objc_allocWithZone(type metadata accessor for LogKey());
      v14 = LogKey.init(prefix:)();
    }

    v16 = v14;

    *a3 = v13;
    a3[1] = v16;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_100557F60@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  result = sub_100005934(a3, v12, &qword_100784E10);
  if (v12[3])
  {
    sub_10020A980(a4, v11);
    type metadata accessor for IPA_AppInstall();
    swift_allocObject();
    result = sub_1003D557C(a2, v9, v12, v11);
    if (v5)
    {

      result = 0;
    }

    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100558030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_1005580C0();
}

uint64_t sub_1005580C0()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v1[12] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0);
  v1[13] = swift_task_alloc();
  v2 = sub_1001F0C48(&qword_1007873C8);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100558250, v0, 0);
}

uint64_t sub_100558250()
{
  v1 = (v0[10] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  v2 = swift_beginAccess();
  v4 = v1[3];
  if (v4)
  {
    v5 = *(*sub_100006D8C(v1, v4) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_thermalPressureMonitor);
    v0[20] = v5;
    v0[8] = v5;
    v6 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
    v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit;
    v0[21] = v6;
    v0[22] = v7;
    v0[23] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;

    swift_beginAccess();
    v8 = sub_10042BD18();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_1005583C8;
    v4 = &type metadata for ThermalPressureMonitor.AsyncIterator;
    v2 = (v0 + 26);
    v3 = v8;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v2, v4, v3);
}

uint64_t sub_1005583C8()
{
  *(*v1 + 200) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100558820;
  }

  else
  {
    v4 = sub_100558524;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100558524()
{
  v1 = *(v0 + 80);
  *(v0 + 209) = *(v0 + 208);
  return _swift_task_switch(sub_100558548, v1, 0);
}

uint64_t sub_100558548()
{
  v1 = *(v0 + 209);
  if (v1 == 2)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (v1)
    {
      static Logger.install.getter();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Limiting maximum active count due to thermal pressure", v6, 2u);
      }

      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 136);

      (*(v8 + 8))(v7, v9);
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(v0 + 184);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    *(v13 + *(v0 + 176)) = v10;
    sub_100005934(v13 + v11, v12, &qword_1007873C0);
    v14 = sub_1001F0C48(&unk_100787228);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v12, 1, v14);
    if (v16 == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 104);
      v22 = *(v0 + 112);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v20 + 8))(v19, v22);
      (*(v15 + 8))(v21, v14);
      v23 = sub_10042BD18();
      v24 = swift_task_alloc();
      *(v0 + 192) = v24;
      *v24 = v0;
      v24[1] = sub_1005583C8;
      v17 = &type metadata for ThermalPressureMonitor.AsyncIterator;
      v16 = v0 + 208;
      v18 = v23;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v18);
  }
}

uint64_t sub_100558820()
{
  *(v0 + 72) = *(v0 + 200);
  sub_1001F0C48(&unk_10077F940);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1005588AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1001F0C48(&unk_100780380);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10055894C, a4, 0);
}

uint64_t sub_10055894C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_1004A673C(0xD000000000000028, 0x80000001006CC190, v2, &unk_1006B2A08, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100558AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v4[7] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0);
  v4[8] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_1007873C8);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_1001F0C48(&qword_1007875A0);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for NetworkPath();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_1007875A8);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007875B0);
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  sub_1001F0C48(&qword_1007845D0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100558E10, a4, 0);
}

uint64_t sub_100558E10()
{
  v1 = v0[31];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[18];
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v7 = NWPathMonitor.init()();
  v0[32] = v7;
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v5);
  sub_1001EF31C(v7);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
  v0[35] = v9;
  v0[36] = v10;
  swift_beginAccess();
  v11 = v0[35];
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_100558FD0;
  v14 = v0[30];
  v15 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v14, v12, v11, v15);
}

uint64_t sub_100558FD0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005590E0, v1, 0);
}

uint64_t sub_1005590E0()
{
  v65 = v0;
  v1 = v0[30];
  v2 = v0[17];
  v3 = *(v0[18] + 48);
  if (v3(v1, 1, v2) != 1)
  {
    v10 = v0[33];
    v62 = v0[31];
    v11 = v0[29];
    v12 = v0[21];
    v14 = v0[15];
    v13 = v0[16];
    sub_100566A40(v1, v12, type metadata accessor for NetworkPath);
    sub_100564730(v12, v11, type metadata accessor for NetworkPath);
    v10(v11, 0, 1, v2);
    v15 = *(v14 + 48);
    sub_100005934(v62, v13, &qword_1007845D0);
    sub_100005934(v11, v13 + v15, &qword_1007845D0);
    if (v3(v13, 1, v2) == 1)
    {
      v16 = v0[17];
      sub_1000032A8(v0[29], &qword_1007845D0);
      if (v3(v13 + v15, 1, v16) == 1)
      {
        sub_1000032A8(v0[16], &qword_1007845D0);
LABEL_17:
        sub_100566034(v0[21], type metadata accessor for NetworkPath);
        goto LABEL_18;
      }
    }

    else
    {
      v17 = v0[17];
      sub_100005934(v0[16], v0[28], &qword_1007845D0);
      v18 = v3(v13 + v15, 1, v17);
      v19 = v0[28];
      v20 = v0[29];
      if (v18 != 1)
      {
        v55 = v0[20];
        v56 = v0[16];
        sub_100566A40(v13 + v15, v55, type metadata accessor for NetworkPath);
        v57 = sub_1001F09DC();
        sub_100566034(v55, type metadata accessor for NetworkPath);
        sub_1000032A8(v20, &qword_1007845D0);
        sub_100566034(v19, type metadata accessor for NetworkPath);
        sub_1000032A8(v56, &qword_1007845D0);
        if (v57)
        {
          goto LABEL_17;
        }

LABEL_11:
        v21 = v0[21];
        v22 = v0[19];
        static Logger.install.getter();
        sub_100564730(v21, v22, type metadata accessor for NetworkPath);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[31];
        v27 = v0[19];
        v28 = v0[13];
        v29 = v0[14];
        v30 = v0[12];
        if (v25)
        {
          v63 = v0[14];
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v64 = v32;
          *v31 = 136315138;
          v33 = sub_1001EED14();
          v61 = v26;
          v35 = v34;
          sub_100566034(v27, type metadata accessor for NetworkPath);
          v36 = sub_1002346CC(v33, v35, &v64);

          *(v31 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v23, v24, "#network %s", v31, 0xCu);
          sub_10000710C(v32);

          (*(v28 + 8))(v63, v30);
          v37 = v61;
        }

        else
        {

          sub_100566034(v27, type metadata accessor for NetworkPath);
          (*(v28 + 8))(v29, v30);
          v37 = v26;
        }

        sub_1000032A8(v37, &qword_1007845D0);
        v38 = v0[36];
        v39 = v0[33];
        v40 = v0[31];
        v41 = v0[17];
        v42 = v0[8];
        v43 = v0[5];
        sub_100564730(v0[21], v40, type metadata accessor for NetworkPath);
        v39(v40, 0, 1, v41);
        sub_100005934(v43 + v38, v42, &qword_1007873C0);
        v44 = sub_1001F0C48(&unk_100787228);
        v45 = *(v44 - 8);
        v46 = (*(v45 + 48))(v42, 1, v44);
        if (v46 == 1)
        {
          __break(1u);
          return AsyncStream.Iterator.next(isolation:)(v46, v47, v48, v49);
        }

        v50 = v0[21];
        v52 = v0[10];
        v51 = v0[11];
        v53 = v0[8];
        v54 = v0[9];
        swift_storeEnumTagMultiPayload();
        AsyncStream.Continuation.yield(_:)();
        (*(v52 + 8))(v51, v54);
        sub_100566034(v50, type metadata accessor for NetworkPath);
        (*(v45 + 8))(v53, v44);
LABEL_18:
        v58 = v0[35];
        v59 = v0[5];
        v60 = swift_task_alloc();
        v0[37] = v60;
        *v60 = v0;
        v60[1] = sub_100558FD0;
        v46 = v0[30];
        v49 = v0[25];
        v47 = v59;
        v48 = v58;

        return AsyncStream.Iterator.next(isolation:)(v46, v47, v48, v49);
      }

      sub_1000032A8(v0[29], &qword_1007845D0);
      sub_100566034(v19, type metadata accessor for NetworkPath);
    }

    sub_1000032A8(v0[16], &qword_1007875A0);
    goto LABEL_11;
  }

  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  (*(v6 + 8))(v5, v7);
  sub_1000032A8(v4, &qword_1007845D0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100559864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1001F0C48(&qword_100787670);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for DownloadRequest();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  sub_1001F0C48(&qword_100787678);
  v4[28] = swift_task_alloc();
  sub_1001F0C48(&qword_1007874D0);
  v4[29] = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_100787680);
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100559AF4, a4, 0);
}

uint64_t sub_100559AF4()
{
  v1 = v0[29];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream;
  swift_beginAccess();
  sub_100005934(v2 + v3, v1, &qword_1007874D0);
  v4 = sub_1001F0C48(&qword_100787218);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[29];
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v10, v4);
    v11 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler);
    v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
    v0[33] = v11;
    v0[34] = v12;
    v0[35] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadRequests;
    v0[36] = 0;
    v13 = v0[14];
    v14 = swift_task_alloc();
    v0[37] = v14;
    *v14 = v0;
    v14[1] = sub_100559CCC;
    v9 = v0[30];
    v6 = v0[28];
    v7 = v13;
    v8 = v11;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_100559CCC()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100559DDC, v1, 0);
}

int64_t sub_100559DDC()
{
  v1 = v0[28];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v2 = v0[1];

    return v2();
  }

  sub_100566A40(v1, v0[27], type metadata accessor for AppInstallScheduler.DownloadCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = v0 + 24;
    v16 = v0[24];
    v17 = v0[23];
    sub_100566A40(v0[27], v16, type metadata accessor for DownloadRequest);
    static Logger.install.getter();
    sub_100564730(v16, v17, type metadata accessor for DownloadRequest);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[23];
    if (v20)
    {
      v22 = v0[20];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = *(v21 + *(v22 + 32));
      sub_100566034(v21, type metadata accessor for DownloadRequest);
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Added download to the queue #downloadQueue", v23, 0xCu);
      sub_1000032A8(v24, &qword_10077F920);
    }

    else
    {

      sub_100566034(v21, type metadata accessor for DownloadRequest);
    }

    v33 = v0[24];
    v34 = v0[15];
    (*(v0[17] + 8))(v0[19], v0[16]);
    swift_beginAccess();
    sub_1005352E8(v33, v34);
    swift_endAccess();
    sub_1000032A8(v34, &qword_100787670);
    v26 = v0[36];
LABEL_17:
    sub_100566034(*v6, type metadata accessor for DownloadRequest);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 22;
    v5 = v0[22];
    v7 = v0[21];
    sub_100566A40(v0[27], v5, type metadata accessor for DownloadRequest);
    static Logger.install.getter();
    sub_100564730(v5, v7, type metadata accessor for DownloadRequest);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[21];
    if (v10)
    {
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *(v11 + *(v12 + 32));
      sub_100566034(v11, type metadata accessor for DownloadRequest);
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Removed download from the queue #downloadQueue", v13, 0xCu);
      sub_1000032A8(v14, &qword_10077F920);
    }

    else
    {

      sub_100566034(v11, type metadata accessor for DownloadRequest);
    }

    v27 = v0[35];
    v26 = v0[36];
    v28 = v0[22];
    v29 = v0[15];
    v30 = v0[14];
    (*(v0[17] + 8))(v0[18], v0[16]);
    swift_beginAccess();
    sub_1004FD298(v28, v29);
    swift_endAccess();
    sub_1000032A8(v29, &qword_100787670);
    swift_beginAccess();
    v31 = swift_task_alloc();
    *(v31 + 16) = v28;
    result = sub_10041E2B0(sub_100567AF4, v31);
    v32 = *(*(v30 + v27) + 16);
    if (v32 < result)
    {
      __break(1u);
      return result;
    }

    sub_100428FBC(result, v32);

    swift_endAccess();
    goto LABEL_17;
  }

  v26 = v0[36];
LABEL_18:
  v0[38] = v26;
  v35 = swift_task_alloc();
  v0[39] = v35;
  *v35 = v0;
  v35[1] = sub_10055A40C;

  return sub_10055A5CC();
}

uint64_t sub_10055A40C()
{
  v1 = *v0;
  v2 = *v0;

  v1[36] = v1[38];
  v3 = v1[33];
  v4 = v1[14];
  v5 = swift_task_alloc();
  v1[37] = v5;
  *v5 = v2;
  v5[1] = sub_100559CCC;
  v6 = v1[30];
  v7 = v1[28];

  return AsyncStream.Iterator.next(isolation:)(v7, v4, v3, v6);
}

uint64_t sub_10055A5CC()
{
  v1[86] = v0;
  sub_1001F0C48(&unk_100780380);
  v1[87] = swift_task_alloc();
  v2 = type metadata accessor for NWEndpoint();
  v1[88] = v2;
  v1[89] = *(v2 - 8);
  v1[90] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[91] = v3;
  v1[92] = *(v3 - 8);
  v1[93] = swift_task_alloc();
  type metadata accessor for NetworkPath();
  v1[94] = swift_task_alloc();
  v4 = type metadata accessor for DownloadRequest();
  v1[95] = v4;
  v5 = *(v4 - 8);
  v1[96] = v5;
  v1[97] = *(v5 + 64);
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[110] = v6;
  v1[111] = *(v6 - 8);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();

  return _swift_task_switch(sub_10055A8E4, v0, 0);
}

uint64_t sub_10055A8E4()
{
  v72 = v0;
  v1 = *(v0 + 688);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadRequests;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
  *(v0 + 960) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
  swift_beginAccess();
  v5 = *(*(v1 + v4) + 16);
  static Logger.install.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 688);
  if (v8)
  {
    v10 = v3 - v5;
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(*(v1 + v4) + 16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v9 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit);

    _os_log_impl(&_mh_execute_header, v6, v7, "Polling %ld pending download(s), %ld/%ld active download(s) #downloadQueue", v11, 0x20u);
  }

  else
  {
  }

  v12 = *(v0 + 952);
  v13 = *(v0 + 888);
  v14 = *(v0 + 880);
  v15 = *(v13 + 8);
  *(v0 + 968) = v15;
  *(v0 + 976) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v14);
  v16 = *(v1 + v2);
  *(v0 + 984) = v16;
  v17 = *(v16 + 16);
  *(v0 + 992) = v17;
  *(v0 + 1000) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit;
  *(v0 + 1008) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
  *(v0 + 1016) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
  *(v0 + 1024) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;

  v18 = swift_beginAccess();
  v21 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v22 = 0;
    *(v0 + 1136) = enum case for NWEndpoint.url(_:);
    *(v0 + 1032) = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 1040) = v22;
      v23 = *(v0 + 984);
      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      v24 = *(v0 + 1000);
      v25 = *(v0 + 960);
      v26 = *(v0 + 872);
      v27 = *(v0 + 768);
      v28 = *(v0 + 688);
      v29 = *(v27 + 80);
      *(v0 + 1140) = v29;
      v30 = *(v27 + 72);
      sub_100564730(v23 + ((v29 + 32) & ~v29) + v30 * v22, v26, type metadata accessor for DownloadRequest);
      v31 = *(v28 + v25);
      v32 = *(v31 + 16);
      if (v32 >= *(v28 + v24))
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = *(v0 + 872);
      Hasher.init(_seed:)();
      v34 = *v33;
      Hasher._combine(_:)(*v33);
      v35 = Hasher._finalize()();
      v36 = -1 << *(v31 + 32);
      v37 = v35 & ~v36;
      v38 = *(v31 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v38 >> v37) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v18 = sub_10055B18C;
        v19 = 0;
        v20 = 0;

        return _swift_task_switch(v18, v19, v20);
      }

      ++v22;
      v39 = ~v36;
      while (1)
      {
        v40 = *(v0 + 864);
        sub_100564730(*(v31 + 48) + v37 * v30, v40, type metadata accessor for DownloadRequest);
        v41 = *v40;
        sub_100566034(v40, type metadata accessor for DownloadRequest);
        if (v41 == v34)
        {
          break;
        }

        v37 = (v37 + 1) & v39;
        if (((*(v31 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v42 = *(v0 + 872);
      v43 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v42, v43, type metadata accessor for DownloadRequest);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 792);
      if (v46)
      {
        v48 = *(v0 + 760);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(v47 + *(v48 + 32));
        sub_100566034(v47, type metadata accessor for DownloadRequest);
        *(v49 + 4) = v51;
        *v50 = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Request already active #downloadQueue", v49, 0xCu);
        sub_1000032A8(v50, &qword_10077F920);
      }

      else
      {

        sub_100566034(v47, type metadata accessor for DownloadRequest);
      }

      v52 = *(v0 + 992);
      v53 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      v18 = sub_100566034(v53, type metadata accessor for DownloadRequest);
      if (v22 == v52)
      {
        v21 = *(v0 + 1032);
        goto LABEL_19;
      }
    }

    v66 = *(v0 + 872);

    sub_100566034(v66, type metadata accessor for DownloadRequest);
    v21 = *(v0 + 1032);
    if (v21[2])
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_19:

    if (v21[2])
    {
LABEL_20:
      static Logger.install.getter();

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 968);
      v58 = *(v0 + 904);
      v59 = *(v0 + 880);
      if (v56)
      {
        v70 = *(v0 + 880);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v71[0] = v61;
        *v60 = 134218242;
        *(v60 + 4) = v21[2];

        *(v60 + 12) = 2080;
        *(v0 + 680) = v21;
        v69 = v57;
        sub_1001F0C48(&unk_10077FB40);
        sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
        v62 = BidirectionalCollection<>.joined(separator:)();
        v64 = v63;

        v65 = sub_1002346CC(v62, v64, v71);

        *(v60 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "Started %ld download(s): %s #downloadQueue", v60, 0x16u);
        sub_10000710C(v61);

        v69(v58, v70);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v57(v58, v59);
      }

      goto LABEL_29;
    }
  }

LABEL_29:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_10055B18C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 744);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(*(v0 + 736) + 16);
  v7(v2, *(v0 + 872) + *(*(v0 + 760) + 24), v3);
  v7(v4, v2, v3);
  (*(v5 + 104))(v4, v1, v6);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v8 = NWConnection.init(to:using:)();
  *(v0 + 1048) = v8;
  v9 = swift_allocObject();
  *(v0 + 1056) = v9;
  *(v9 + 16) = 0;
  v10 = swift_task_alloc();
  *(v0 + 1064) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 1072) = v11;
  v12 = type metadata accessor for NWPath();
  *v11 = v0;
  v11[1] = sub_10055B370;
  v13 = *(v0 + 752);

  return withCheckedContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1003EED98, v10, v12);
}

uint64_t sub_10055B370()
{

  return _swift_task_switch(sub_10055B488, 0, 0);
}

uint64_t sub_10055B488()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 688);
  NWConnection.forceCancel()();

  (*(v5 + 8))(v4, v6);
  *(v0 + 1144) = sub_1001EE010(v3, *(v1 + *(v2 + 28) + 8));
  sub_100566034(v3, type metadata accessor for NetworkPath);

  return _swift_task_switch(sub_10055B590, v7, 0);
}

uint64_t sub_10055B590()
{
  v108 = v0;
  v1 = *(v0 + 872);
  if ((*(v0 + 1144) & 1) == 0)
  {
    v21 = *(v0 + 800);
    static Logger.install.getter();
    sub_100564730(v1, v21, type metadata accessor for DownloadRequest);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 800);
    if (v24)
    {
      v26 = *(v0 + 760);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = *(v25 + *(v26 + 32));
      sub_100566034(v25, type metadata accessor for DownloadRequest);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Request policy not satisfied #downloadQueue", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    else
    {

      sub_100566034(v25, type metadata accessor for DownloadRequest);
    }

    (*(v0 + 968))(*(v0 + 920), *(v0 + 880));
    v43 = *(v0 + 992);
    v44 = (*(v0 + 1040) + 1);
    sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
    if (v44 == v43)
    {
LABEL_12:
      v44 = *(v0 + 1032);
      goto LABEL_23;
    }

    v45 = *(v0 + 1040);
LABEL_28:
    v56 = (v45 + 1);
    while (1)
    {
      *(v0 + 1040) = v56;
      v74 = *(v0 + 984);
      if (v56 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v75 = *(v0 + 1000);
      v76 = *(v0 + 960);
      v77 = *(v0 + 872);
      v78 = *(v0 + 768);
      v79 = *(v0 + 688);
      v80 = *(v78 + 80);
      *(v0 + 1140) = v80;
      v81 = *(v78 + 72);
      sub_100564730(v74 + ((v80 + 32) & ~v80) + v81 * v56, v77, type metadata accessor for DownloadRequest);
      v82 = *(v79 + v76);
      v83 = *(v82 + 16);
      if (v83 >= *(v79 + v75))
      {
        break;
      }

      if (!v83)
      {
        goto LABEL_43;
      }

      v84 = *(v0 + 872);
      Hasher.init(_seed:)();
      v85 = *v84;
      Hasher._combine(_:)(*v84);
      v86 = Hasher._finalize()();
      v87 = -1 << *(v82 + 32);
      v88 = v86 & ~v87;
      v89 = *(v82 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v89 >> v88) & 1) == 0)
      {
LABEL_42:

LABEL_43:

        return _swift_task_switch(sub_10055B18C, 0, 0);
      }

      ++v56;
      v90 = ~v87;
      while (1)
      {
        v91 = *(v0 + 864);
        sub_100564730(*(v82 + 48) + v88 * v81, v91, type metadata accessor for DownloadRequest);
        v92 = *v91;
        sub_100566034(v91, type metadata accessor for DownloadRequest);
        if (v92 == v85)
        {
          break;
        }

        v88 = (v88 + 1) & v90;
        if (((*(v82 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v93 = *(v0 + 872);
      v94 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v93, v94, type metadata accessor for DownloadRequest);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 792);
      if (v97)
      {
        v99 = *(v0 + 760);
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        v102 = *(v98 + *(v99 + 32));
        sub_100566034(v98, type metadata accessor for DownloadRequest);
        *(v100 + 4) = v102;
        *v101 = v102;
        _os_log_impl(&_mh_execute_header, v95, v96, "[%@] Request already active #downloadQueue", v100, 0xCu);
        sub_1000032A8(v101, &qword_10077F920);
      }

      else
      {

        sub_100566034(v98, type metadata accessor for DownloadRequest);
      }

      v44 = *(v0 + 992);
      v43 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      sub_100566034(v43, type metadata accessor for DownloadRequest);
      if (v56 == v44)
      {
        goto LABEL_12;
      }
    }

    v103 = *(v0 + 872);

    sub_100566034(v103, type metadata accessor for DownloadRequest);
    v44 = *(v0 + 1032);
    if (*(v44 + 2))
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

  v2 = *(v0 + 1008);
  v3 = *(v0 + 688);
  v4 = *v1;
  *(v0 + 1080) = *v1;
  swift_beginAccess();
  v5 = *(v3 + v2);
  if (*(v5 + 16))
  {
    v6 = sub_10052BA64(v4);
    if (v7)
    {
      v8 = *(v0 + 872);
      v9 = *(v0 + 856);
      v10 = *(v0 + 848);
      sub_10020A980(*(v5 + 56) + 40 * v6, v0 + 112);
      swift_endAccess();
      static Logger.install.getter();
      sub_100564730(v8, v9, type metadata accessor for DownloadRequest);
      sub_100564730(v8, v10, type metadata accessor for DownloadRequest);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 856);
      v15 = *(v0 + 848);
      if (v13)
      {
        v16 = *(v0 + 760);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412546;
        v19 = *(v14 + *(v16 + 32));
        sub_100566034(v14, type metadata accessor for DownloadRequest);
        *(v17 + 4) = v19;
        *v18 = v19;
        *(v17 + 12) = 2050;
        v20 = *v15;
        sub_100566034(v15, type metadata accessor for DownloadRequest);
        *(v17 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Using installation %{public}lld to resume download #downloadQueue", v17, 0x16u);
        sub_1000032A8(v18, &qword_10077F920);
      }

      else
      {
        sub_100566034(*(v0 + 848), type metadata accessor for DownloadRequest);

        sub_100566034(v14, type metadata accessor for DownloadRequest);
      }

      v48 = *(v0 + 1140);
      v49 = *(v0 + 872);
      v50 = *(v0 + 864);
      v51 = *(v0 + 840);
      v52 = *(v0 + 696);
      (*(v0 + 968))(*(v0 + 944), *(v0 + 880));
      sub_100564730(v49, v51, type metadata accessor for DownloadRequest);
      swift_beginAccess();
      sub_1003F2ED0(v50, v51);
      swift_endAccess();
      sub_100566034(v50, type metadata accessor for DownloadRequest);
      v53 = type metadata accessor for TaskPriority();
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      sub_10020A980(v0 + 112, v0 + 472);
      sub_100564730(v49, v50, type metadata accessor for DownloadRequest);
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      sub_1001DFDBC((v0 + 472), v54 + 32);
      sub_100566A40(v50, v54 + ((v48 + 72) & ~v48), type metadata accessor for DownloadRequest);
      sub_1004A673C(0, 0, v52, &unk_1006B2C38, v54);

      sub_10000710C(v0 + 112);
      v43 = LogKey.stringValue.getter();
      v56 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v0 + 1032);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_52:
        v44 = sub_100009530(0, *(v44 + 2) + 1, 1, v44);
      }

      v59 = *(v44 + 2);
      v58 = *(v44 + 3);
      if (v59 >= v58 >> 1)
      {
        v44 = sub_100009530((v58 > 1), v59 + 1, 1, v44);
      }

      *(v44 + 2) = v59 + 1;
      v60 = &v44[16 * v59];
      *(v60 + 4) = v43;
      *(v60 + 5) = v56;
      v43 = *(v0 + 992);
      v61 = *(v0 + 1040) + 1;
      sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
      if (v61 == v43)
      {
LABEL_23:

        if (*(v44 + 2))
        {
LABEL_24:
          static Logger.install.getter();

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();
          v64 = os_log_type_enabled(v62, v63);
          v65 = *(v0 + 968);
          v66 = *(v0 + 904);
          v67 = *(v0 + 880);
          if (v64)
          {
            v106 = *(v0 + 880);
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v107[0] = v69;
            *v68 = 134218242;
            *(v68 + 4) = *(v44 + 2);

            *(v68 + 12) = 2080;
            *(v0 + 680) = v44;
            v105 = v65;
            sub_1001F0C48(&unk_10077FB40);
            sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
            v70 = BidirectionalCollection<>.joined(separator:)();
            v72 = v71;

            v73 = sub_1002346CC(v70, v72, v107);

            *(v68 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v62, v63, "Started %ld download(s): %s #downloadQueue", v68, 0x16u);
            sub_10000710C(v69);

            v105(v66, v106);
          }

          else
          {
            swift_bridgeObjectRelease_n();

            v65(v66, v67);
          }

LABEL_48:

          v104 = *(v0 + 8);

          return v104();
        }

LABEL_47:

        goto LABEL_48;
      }

      v45 = *(v0 + 1040);
      *(v0 + 1032) = v44;
      goto LABEL_28;
    }
  }

  v30 = *(v0 + 872);
  v31 = *(v0 + 832);
  v32 = *(v0 + 824);
  swift_endAccess();
  static Logger.install.getter();
  sub_100564730(v30, v31, type metadata accessor for DownloadRequest);
  sub_100564730(v30, v32, type metadata accessor for DownloadRequest);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 832);
  v37 = *(v0 + 824);
  if (v35)
  {
    v38 = *(v0 + 760);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412546;
    v41 = *(v36 + *(v38 + 32));
    sub_100566034(v36, type metadata accessor for DownloadRequest);
    *(v39 + 4) = v41;
    *v40 = v41;
    *(v39 + 12) = 2050;
    v42 = *v37;
    sub_100566034(v37, type metadata accessor for DownloadRequest);
    *(v39 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Creating installation %{public}lld to resume download #downloadQueue", v39, 0x16u);
    sub_1000032A8(v40, &qword_10077F920);
  }

  else
  {
    sub_100566034(*(v0 + 824), type metadata accessor for DownloadRequest);

    sub_100566034(v36, type metadata accessor for DownloadRequest);
  }

  (*(v0 + 968))(*(v0 + 936), *(v0 + 880));
  v46 = swift_task_alloc();
  *(v0 + 1088) = v46;
  *v46 = v0;
  v46[1] = sub_10055C470;

  return sub_100324F98(v0 + 232);
}

uint64_t sub_10055C470()
{

  if (v0)
  {

    v1 = sub_10055C660;
  }

  else
  {
    v1 = sub_10055C588;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10055C588()
{
  sub_1001DFDBC((v0 + 232), v0 + 192);
  v6 = *(v0 + 216);
  v1 = *(v0 + 216);
  v2 = sub_100006D8C((v0 + 192), v1);
  *(v0 + 176) = v6;
  v3 = sub_10020A748((v0 + 152));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_10000710C(v0 + 192);
  v4 = *(v0 + 688);

  return _swift_task_switch(sub_10055C854, v4, 0);
}

uint64_t sub_10055C660()
{
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  sub_1000032A8(v0 + 232, &qword_100780620);
  v1 = swift_task_alloc();
  *(v0 + 1096) = v1;
  *v1 = v0;
  v1[1] = sub_10055C728;

  return sub_100324A90(v0 + 152);
}

uint64_t sub_10055C728()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_10055CAB8;
  }

  else
  {
    v4 = sub_10055C854;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10055C854()
{
  v1 = v0[109];
  v2 = v0[86];
  v3 = *(v2 + 112);
  sub_100005934(v2 + v0[128], (v0 + 2), &qword_100784E10);
  v4 = swift_task_alloc();
  v0[139] = v4;
  v4[2] = v1;
  v4[3] = v0 + 2;
  v4[4] = v0 + 19;
  v5 = swift_task_alloc();
  v0[140] = v5;
  *v5 = v0;
  v5[1] = sub_10055C974;

  return sub_1003B68D0((v0 + 34), sub_100567B0C, v4, v3);
}

uint64_t sub_10055C974()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 688);

    v4 = sub_10055DF64;
  }

  else
  {
    v3 = *(v2 + 688);

    sub_1000032A8(v2 + 16, &qword_100784E10);
    v4 = sub_10055D398;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10055CAB8()
{
  v72 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 784);
  static Logger.install.getter();
  sub_100564730(v1, v2, type metadata accessor for DownloadRequest);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 968);
  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  v9 = *(v0 + 784);
  if (v5)
  {
    v10 = *(v0 + 760);
    v11 = swift_slowAlloc();
    v69 = v6;
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *(v9 + *(v10 + 32));
    sub_100566034(v9, type metadata accessor for DownloadRequest);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to resume request: %{public}@ #downloadQueue", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
    v6 = v69;
  }

  else
  {

    sub_100566034(v9, type metadata accessor for DownloadRequest);
  }

  v6(v7, v8);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 992);
  v17 = *(v0 + 1040) + 1;
  v18 = sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
  if (v17 != v16)
  {
    v33 = *(v0 + 1040) + 1;
    *(v0 + 1032) = v15;
    while (1)
    {
      *(v0 + 1040) = v33;
      v34 = *(v0 + 984);
      if (v33 >= *(v34 + 16))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      v35 = *(v0 + 1000);
      v36 = *(v0 + 960);
      v37 = *(v0 + 872);
      v38 = *(v0 + 768);
      v39 = *(v0 + 688);
      v40 = *(v38 + 80);
      *(v0 + 1140) = v40;
      v41 = *(v38 + 72);
      sub_100564730(v34 + ((v40 + 32) & ~v40) + v41 * v33, v37, type metadata accessor for DownloadRequest);
      v42 = *(v39 + v36);
      v43 = *(v42 + 16);
      if (v43 >= *(v39 + v35))
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_23;
      }

      v44 = *(v0 + 872);
      Hasher.init(_seed:)();
      v45 = *v44;
      Hasher._combine(_:)(*v44);
      v46 = Hasher._finalize()();
      v47 = -1 << *(v42 + 32);
      v48 = v46 & ~v47;
      v49 = *(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v49 >> v48) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v18 = sub_10055B18C;
        v19 = 0;
        v20 = 0;

        return _swift_task_switch(v18, v19, v20);
      }

      ++v33;
      v50 = ~v47;
      while (1)
      {
        v51 = *(v0 + 864);
        sub_100564730(*(v42 + 48) + v48 * v41, v51, type metadata accessor for DownloadRequest);
        v52 = *v51;
        sub_100566034(v51, type metadata accessor for DownloadRequest);
        if (v52 == v45)
        {
          break;
        }

        v48 = (v48 + 1) & v50;
        if (((*(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v53 = *(v0 + 872);
      v54 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v53, v54, type metadata accessor for DownloadRequest);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 792);
      if (v57)
      {
        v59 = *(v0 + 760);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = *(v58 + *(v59 + 32));
        sub_100566034(v58, type metadata accessor for DownloadRequest);
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Request already active #downloadQueue", v60, 0xCu);
        sub_1000032A8(v61, &qword_10077F920);
      }

      else
      {

        sub_100566034(v58, type metadata accessor for DownloadRequest);
      }

      v63 = *(v0 + 992);
      v64 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      v18 = sub_100566034(v64, type metadata accessor for DownloadRequest);
      if (v33 == v63)
      {
        v15 = *(v0 + 1032);
        goto LABEL_5;
      }
    }

    v65 = *(v0 + 872);

    sub_100566034(v65, type metadata accessor for DownloadRequest);
    v15 = *(v0 + 1032);
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_5:

  if (!*(v15 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_6:
  static Logger.install.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 968);
  v25 = *(v0 + 904);
  v26 = *(v0 + 880);
  if (v23)
  {
    v70 = *(v0 + 880);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[0] = v28;
    *v27 = 134218242;
    *(v27 + 4) = *(v15 + 16);

    *(v27 + 12) = 2080;
    *(v0 + 680) = v15;
    v68 = v24;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = sub_1002346CC(v29, v31, v71);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Started %ld download(s): %s #downloadQueue", v27, 0x16u);
    sub_10000710C(v28);

    v68(v25, v70);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v24(v25, v26);
  }

LABEL_29:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10055D398()
{
  v79 = v0;
  v1 = *(v0 + 1080);
  sub_100005934(v0 + 272, v0 + 312, &qword_100787560);
  swift_beginAccess();
  sub_1005B7C44(v0 + 312, v1);
  swift_endAccess();
  sub_100005934(v0 + 272, v0 + 392, &qword_100787560);
  if (*(v0 + 416))
  {
    v2 = *(v0 + 1140);
    v3 = *(v0 + 872);
    v4 = *(v0 + 864);
    v5 = *(v0 + 840);
    v6 = *(v0 + 696);
    sub_1001DFDBC((v0 + 392), v0 + 352);
    sub_100564730(v3, v5, type metadata accessor for DownloadRequest);
    swift_beginAccess();
    sub_1003F2ED0(v4, v5);
    swift_endAccess();
    sub_100566034(v4, type metadata accessor for DownloadRequest);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10020A980(v0 + 352, v0 + 432);
    sub_100564730(v3, v4, type metadata accessor for DownloadRequest);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_1001DFDBC((v0 + 432), v8 + 32);
    sub_100566A40(v4, v8 + ((v2 + 72) & ~v2), type metadata accessor for DownloadRequest);
    sub_1004A673C(0, 0, v6, &unk_1006B2C28, v8);

    sub_10000710C(v0 + 352);
    sub_1000032A8(v0 + 272, &qword_100787560);
    sub_10000710C(v0 + 152);
    v9 = LogKey.stringValue.getter();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 1032);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_41:
      v13 = sub_100009530(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_100009530((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
    v9 = *(v0 + 992);
    v17 = *(v0 + 1040) + 1;
    sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
    if (v17 != v9)
    {
      v18 = *(v0 + 1040);
      *(v0 + 1032) = v13;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = *(v0 + 872);
    v20 = *(v0 + 816);
    v21 = *(v0 + 808);
    sub_1000032A8(v0 + 392, &qword_100787560);
    static Logger.install.getter();
    sub_100564730(v19, v20, type metadata accessor for DownloadRequest);
    sub_100564730(v19, v21, type metadata accessor for DownloadRequest);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 816);
    v26 = *(v0 + 808);
    if (v24)
    {
      v27 = *(v0 + 760);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      v30 = *(v25 + *(v27 + 32));
      sub_100566034(v25, type metadata accessor for DownloadRequest);
      *(v28 + 4) = v30;
      *v29 = v30;
      *(v28 + 12) = 2050;
      v31 = *v26;
      sub_100566034(v26, type metadata accessor for DownloadRequest);
      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Received unexpected download resumption for '%{public}lld' #downloadQueue", v28, 0x16u);
      sub_1000032A8(v29, &qword_10077F920);
    }

    else
    {
      sub_100566034(*(v0 + 808), type metadata accessor for DownloadRequest);

      sub_100566034(v25, type metadata accessor for DownloadRequest);
    }

    (*(v0 + 968))(*(v0 + 928), *(v0 + 880));
    sub_1000032A8(v0 + 272, &qword_100787560);
    sub_10000710C(v0 + 152);
    v9 = *(v0 + 992);
    v13 = (*(v0 + 1040) + 1);
    sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
    if (v13 != v9)
    {
      v18 = *(v0 + 1040);
LABEL_16:
      v11 = (v18 + 1);
      while (1)
      {
        *(v0 + 1040) = v11;
        v44 = *(v0 + 984);
        if (v11 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v45 = *(v0 + 1000);
        v46 = *(v0 + 960);
        v47 = *(v0 + 872);
        v48 = *(v0 + 768);
        v49 = *(v0 + 688);
        v50 = *(v48 + 80);
        *(v0 + 1140) = v50;
        v51 = *(v48 + 72);
        sub_100564730(v44 + ((v50 + 32) & ~v50) + v51 * v11, v47, type metadata accessor for DownloadRequest);
        v52 = *(v49 + v46);
        v53 = *(v52 + 16);
        if (v53 >= *(v49 + v45))
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_31;
        }

        v54 = *(v0 + 872);
        Hasher.init(_seed:)();
        v55 = *v54;
        Hasher._combine(_:)(*v54);
        v56 = Hasher._finalize()();
        v57 = -1 << *(v52 + 32);
        v58 = v56 & ~v57;
        v59 = *(v52 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v59 >> v58) & 1) == 0)
        {
LABEL_30:

LABEL_31:

          return _swift_task_switch(sub_10055B18C, 0, 0);
        }

        ++v11;
        v60 = ~v57;
        while (1)
        {
          v61 = *(v0 + 864);
          sub_100564730(*(v52 + 48) + v58 * v51, v61, type metadata accessor for DownloadRequest);
          v62 = *v61;
          sub_100566034(v61, type metadata accessor for DownloadRequest);
          if (v62 == v55)
          {
            break;
          }

          v58 = (v58 + 1) & v60;
          if (((*(v52 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v63 = *(v0 + 872);
        v64 = *(v0 + 792);

        static Logger.install.getter();
        sub_100564730(v63, v64, type metadata accessor for DownloadRequest);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 792);
        if (v67)
        {
          v69 = *(v0 + 760);
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          v72 = *(v68 + *(v69 + 32));
          sub_100566034(v68, type metadata accessor for DownloadRequest);
          *(v70 + 4) = v72;
          *v71 = v72;
          _os_log_impl(&_mh_execute_header, v65, v66, "[%@] Request already active #downloadQueue", v70, 0xCu);
          sub_1000032A8(v71, &qword_10077F920);
        }

        else
        {

          sub_100566034(v68, type metadata accessor for DownloadRequest);
        }

        v13 = *(v0 + 992);
        v9 = *(v0 + 872);
        (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
        sub_100566034(v9, type metadata accessor for DownloadRequest);
        if (v11 == v13)
        {
          goto LABEL_11;
        }
      }

      v73 = *(v0 + 872);

      sub_100566034(v73, type metadata accessor for DownloadRequest);
      v13 = *(v0 + 1032);
      if (*(v13 + 2))
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }

LABEL_11:
    v13 = *(v0 + 1032);
  }

  if (*(v13 + 2))
  {
LABEL_13:
    static Logger.install.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 968);
    v36 = *(v0 + 904);
    v37 = *(v0 + 880);
    if (v34)
    {
      v77 = *(v0 + 880);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78[0] = v39;
      *v38 = 134218242;
      *(v38 + 4) = *(v13 + 2);

      *(v38 + 12) = 2080;
      *(v0 + 680) = v13;
      v76 = v35;
      sub_1001F0C48(&unk_10077FB40);
      sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      v43 = sub_1002346CC(v40, v42, v78);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v33, "Started %ld download(s): %s #downloadQueue", v38, 0x16u);
      sub_10000710C(v39);

      v76(v36, v77);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v35(v36, v37);
    }

    goto LABEL_37;
  }

LABEL_36:

LABEL_37:

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_10055DF64()
{
  v72 = v0;
  sub_1000032A8(v0 + 16, &qword_100784E10);
  sub_10000710C(v0 + 152);
  v1 = *(v0 + 872);
  v2 = *(v0 + 784);
  static Logger.install.getter();
  sub_100564730(v1, v2, type metadata accessor for DownloadRequest);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 968);
  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  v9 = *(v0 + 784);
  if (v5)
  {
    v10 = *(v0 + 760);
    v11 = swift_slowAlloc();
    v69 = v6;
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *(v9 + *(v10 + 32));
    sub_100566034(v9, type metadata accessor for DownloadRequest);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to resume request: %{public}@ #downloadQueue", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
    v6 = v69;
  }

  else
  {

    sub_100566034(v9, type metadata accessor for DownloadRequest);
  }

  v6(v7, v8);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 992);
  v17 = *(v0 + 1040) + 1;
  v18 = sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
  if (v17 != v16)
  {
    v33 = *(v0 + 1040) + 1;
    *(v0 + 1032) = v15;
    while (1)
    {
      *(v0 + 1040) = v33;
      v34 = *(v0 + 984);
      if (v33 >= *(v34 + 16))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      v35 = *(v0 + 1000);
      v36 = *(v0 + 960);
      v37 = *(v0 + 872);
      v38 = *(v0 + 768);
      v39 = *(v0 + 688);
      v40 = *(v38 + 80);
      *(v0 + 1140) = v40;
      v41 = *(v38 + 72);
      sub_100564730(v34 + ((v40 + 32) & ~v40) + v41 * v33, v37, type metadata accessor for DownloadRequest);
      v42 = *(v39 + v36);
      v43 = *(v42 + 16);
      if (v43 >= *(v39 + v35))
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_23;
      }

      v44 = *(v0 + 872);
      Hasher.init(_seed:)();
      v45 = *v44;
      Hasher._combine(_:)(*v44);
      v46 = Hasher._finalize()();
      v47 = -1 << *(v42 + 32);
      v48 = v46 & ~v47;
      v49 = *(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v49 >> v48) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v18 = sub_10055B18C;
        v19 = 0;
        v20 = 0;

        return _swift_task_switch(v18, v19, v20);
      }

      ++v33;
      v50 = ~v47;
      while (1)
      {
        v51 = *(v0 + 864);
        sub_100564730(*(v42 + 48) + v48 * v41, v51, type metadata accessor for DownloadRequest);
        v52 = *v51;
        sub_100566034(v51, type metadata accessor for DownloadRequest);
        if (v52 == v45)
        {
          break;
        }

        v48 = (v48 + 1) & v50;
        if (((*(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v53 = *(v0 + 872);
      v54 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v53, v54, type metadata accessor for DownloadRequest);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 792);
      if (v57)
      {
        v59 = *(v0 + 760);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = *(v58 + *(v59 + 32));
        sub_100566034(v58, type metadata accessor for DownloadRequest);
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Request already active #downloadQueue", v60, 0xCu);
        sub_1000032A8(v61, &qword_10077F920);
      }

      else
      {

        sub_100566034(v58, type metadata accessor for DownloadRequest);
      }

      v63 = *(v0 + 992);
      v64 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      v18 = sub_100566034(v64, type metadata accessor for DownloadRequest);
      if (v33 == v63)
      {
        v15 = *(v0 + 1032);
        goto LABEL_5;
      }
    }

    v65 = *(v0 + 872);

    sub_100566034(v65, type metadata accessor for DownloadRequest);
    v15 = *(v0 + 1032);
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_5:

  if (!*(v15 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_6:
  static Logger.install.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 968);
  v25 = *(v0 + 904);
  v26 = *(v0 + 880);
  if (v23)
  {
    v70 = *(v0 + 880);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[0] = v28;
    *v27 = 134218242;
    *(v27 + 4) = *(v15 + 16);

    *(v27 + 12) = 2080;
    *(v0 + 680) = v15;
    v68 = v24;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = sub_1002346CC(v29, v31, v71);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Started %ld download(s): %s #downloadQueue", v27, 0x16u);
    sub_10000710C(v28);

    v68(v25, v70);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v24(v25, v26);
  }

LABEL_29:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10055E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F0C48(&unk_100780380);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10055E970, 0, 0);
}

uint64_t sub_10055E970()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);
  v6 = sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_100564730(v5, v2, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  v7 = *v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100564730(v2, v1, type metadata accessor for AppInstallScheduler.ParkReason);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  sub_100566A40(v1, v10 + v9, type metadata accessor for AppInstallScheduler.ParkReason);

  sub_100494DB4(0, 0, v4, &unk_1006B2C40, v10);

  sub_100566034(v2, type metadata accessor for AppInstallScheduler.ParkReason);

  v11 = *(v0 + 8);

  return v11();
}

void sub_10055EB44(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  type metadata accessor for AppInstallEntity.Entity();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = v9;
  v13 = [v11 initWithPersistentID:v10 onConnection:v12];
  if (![v13 existsInDatabase])
  {
    goto LABEL_4;
  }

  sub_100533D00(34, v13);
  if (v5)
  {

LABEL_4:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_100005934(a3, v24, &qword_100784E10);
  if (v25)
  {
    v14 = sub_1005AFEA0(v12, v10);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100533B84(7, v14);
      if ((v16 & 1) == 0)
      {
        sub_100231CE8(v24, v20);
        sub_10020A980(a4, v19);
        v17 = type metadata accessor for IPA_AppInstall();
        swift_allocObject();
        v18 = sub_1003D557C(v10, v12, v20, v19);
        v22 = v17;
        v23 = &off_100763A38;

        *&v21 = v18;
        sub_1001DFDBC(&v21, a5);
        sub_10000710C(v24);
        return;
      }

      type metadata accessor for InternalError();
      sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for InternalError();
      sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_10000710C(v24);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10055EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F0C48(&unk_100780380);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10055EF5C, 0, 0);
}

uint64_t sub_10055EF5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);
  v6 = sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_100564730(v5, v2, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  v7 = *v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100564730(v2, v1, type metadata accessor for AppInstallScheduler.ParkReason);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  sub_100566A40(v1, v10 + v9, type metadata accessor for AppInstallScheduler.ParkReason);

  sub_100494DB4(0, 0, v4, &unk_1006B2C48, v10);

  sub_100566034(v2, type metadata accessor for AppInstallScheduler.ParkReason);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10055F130()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
  v2 = type metadata accessor for BagService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies, &qword_100784E10);

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream, &qword_1007874D0);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation, &qword_1007873C0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10055F260()
{
  sub_10055F130();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10055F2B4()
{
  type metadata accessor for BagService();
  if (v0 <= 0x3F)
  {
    sub_10037F848(319, &qword_100787210, &qword_100787218);
    if (v1 <= 0x3F)
    {
      sub_10037F848(319, &qword_100787220, &unk_100787228);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10055F44C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_1001F0C48(&qword_1007873B8);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v3[25] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007873C8);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  type metadata accessor for DownloadRequest();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = sub_1001F0C48(&qword_1007873D0);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_10055F730, v2, 0);
}

uint64_t sub_10055F730()
{
  v96 = v0;
  sub_100564730(v0[21], v0[45], type metadata accessor for AppInstallScheduler.ParkReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v0[27];
    v44 = v0[22];
    sub_100566A40(v0[45], v0[33], type metadata accessor for DownloadRequest);
    v45 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
    swift_beginAccess();
    sub_100005934(v44 + v45, v43, &qword_1007873C0);
    v36 = sub_1001F0C48(&unk_100787228);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v43, 1, v36);
    if (result != 1)
    {
      v38 = v0[33];
      v39 = v0[31];
      v41 = v0[28];
      v40 = v0[29];
      v42 = v0[27];
      sub_100564730(v38, v0[25], type metadata accessor for DownloadRequest);
      goto LABEL_25;
    }

LABEL_53:
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v33 = v0[26];
    v34 = v0[22];
    sub_100566A40(v0[45], v0[32], type metadata accessor for DownloadRequest);
    v35 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
    swift_beginAccess();
    sub_100005934(v34 + v35, v33, &qword_1007873C0);
    v36 = sub_1001F0C48(&unk_100787228);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v33, 1, v36);
    if (result != 1)
    {
      v38 = v0[32];
      v40 = v0[29];
      v39 = v0[30];
      v41 = v0[28];
      v42 = v0[26];
      sub_100564730(v38, v0[25], type metadata accessor for DownloadRequest);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v40 + 8))(v39, v41);
      sub_100566034(v38, type metadata accessor for DownloadRequest);
      (*(v37 + 8))(v42, v36);
LABEL_48:

      v83 = v0[1];

      return v83();
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v46 = v0[44];
    v47 = v0[21];
    static Logger.install.getter();
    sub_100564730(v47, v46, type metadata accessor for AppInstallScheduler.ParkReason);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[44];
    if (!v50)
    {
      v66 = v0[37];
      v65 = v0[38];
      v67 = v0[36];

      sub_100566034(v51, type metadata accessor for AppInstallScheduler.ParkReason);
      (*(v66 + 8))(v65, v67);
LABEL_47:
      v78 = v0[45];
      v79 = v0[40];
      v80 = v0[41];
      v81 = v0[23];
      v82 = v0[20];
      sub_100564730(v0[21], v81, type metadata accessor for AppInstallScheduler.ParkReason);
      (*(v80 + 56))(v81, 0, 1, v79);
      swift_beginAccess();
      sub_1005B7FC4(v81, v82);
      swift_endAccess();
      sub_100566034(v78, type metadata accessor for AppInstallScheduler.ParkReason);
      goto LABEL_48;
    }

    v88 = v0 + 43;
    v53 = v0[42];
    v52 = v0[43];
    v54 = v0[20];
    v55 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v94[0] = v93;
    *v55 = 134218242;
    *(v55 + 4) = v54;
    *(v55 + 12) = 2082;
    sub_100564730(v51, v52, type metadata accessor for AppInstallScheduler.ParkReason);
    sub_100564730(v52, v53, type metadata accessor for AppInstallScheduler.ParkReason);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 > 2)
    {
      v68 = 0x646573756170;
      v69 = 0xE800000000000000;
      v70 = 0x6E776F6474756873;
      if (v56 != 4)
      {
        v70 = 0x74726174736572;
        v69 = 0xE700000000000000;
      }

      if (v56 != 3)
      {
        v68 = v70;
      }

      v91 = v68;
      if (v56 == 3)
      {
        v71 = 0xE600000000000000;
      }

      else
      {
        v71 = v69;
      }
    }

    else
    {
      v57 = v0 + 42;
      if (!v56)
      {
        v91 = 0xD000000000000010;
        v58 = *v88;
        v59 = "enqueue download";
        goto LABEL_43;
      }

      if (v56 == 1)
      {
        v91 = 0xD000000000000010;
        v58 = *v88;
        v59 = "dequeue download";
LABEL_43:
        v71 = (v59 - 32) | 0x8000000000000000;
        sub_100566034(v58, type metadata accessor for AppInstallScheduler.ParkReason);
        v72 = v0 + 44;
LABEL_46:
        v73 = *v57;
        v74 = v0[37];
        v75 = v0[38];
        v76 = v0[36];
        sub_100566034(*v72, type metadata accessor for AppInstallScheduler.ParkReason);
        sub_100566034(v73, type metadata accessor for AppInstallScheduler.ParkReason);
        v77 = sub_1002346CC(v91, v71, v94);

        *(v55 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v48, v49, "Parking %lld for reason: %{public}s", v55, 0x16u);
        sub_10000710C(v93);

        (*(v74 + 8))(v75, v76);
        goto LABEL_47;
      }

      v71 = 0xE700000000000000;
      v91 = 0x6C6C6174736E69;
    }

    v72 = v0 + 43;
    v57 = v0 + 44;
    goto LABEL_46;
  }

  static Logger.install.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Shutting down %lld", v5, 0xCu);
  }

  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  v86 = v0[34];
  v9 = v0[22];
  v10 = v0[20];

  (*(v8 + 8))(v6, v7);
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  swift_beginAccess();
  sub_1005B7C44(v94, v10);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_coordinatorMap;
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v10;

  v13 = sub_100566600(v12, sub_100566094);

  v14 = v13 + 64;
  v15 = -1;
  v16 = -1 << *(v13 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v13 + 64);
  v18 = (63 - v16) >> 6;
  v87 = v13;

  v20 = 0;
  v84 = v11;
  v85 = v9;
  while (v17)
  {
LABEL_16:
    v23 = v0[35];
    v24 = __clz(__rbit64(v17)) | (v20 << 6);
    v25 = *(v87 + 48);
    v26 = type metadata accessor for UUID();
    v89 = *(*(v26 - 8) + 72);
    v90 = *(v26 - 8);
    v92 = v26;
    (*(v90 + 16))(v23, v25 + v89 * v24);
    *(v23 + *(v86 + 48)) = *(*(v87 + 56) + 8 * v24);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = v0[35];
    swift_beginAccess();
    v28 = sub_1005225DC(v27);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v85 + v84);
      *&v94[0] = v32;
      *(v85 + v84) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1005C6994();
        v32 = *&v94[0];
      }

      (*(v90 + 8))(*(v32 + 48) + v30 * v89, v92);
      sub_1005C11B4(v30, v32);
      *(v85 + v84) = v32;
    }

    v17 &= v17 - 1;
    v21 = v0[35];
    swift_endAccess();
    result = sub_1000032A8(v21, &qword_1007873D0);
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v22 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_16;
    }
  }

  v60 = v0[22];
  v61 = v0[20];

  v62 = *(v60 + 112);
  v63 = swift_task_alloc();
  v0[46] = v63;
  *(v63 + 16) = v61;
  v64 = swift_task_alloc();
  v0[47] = v64;
  *v64 = v0;
  v64[1] = sub_1005602BC;

  return sub_1005316D0(sub_100566780, v63, v62);
}

uint64_t sub_1005602BC()
{
  v2 = *v1;

  v3 = *(v2 + 176);
  if (v0)
  {

    v4 = sub_10056833C;
  }

  else
  {

    v4 = sub_100560418;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100560418()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100560534(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a2 onConnection:v11];
  if ([v12 existsInDatabase])
  {
    v13 = sub_100535BE0(22, v12);
    if (v13)
    {
      v14 = v13;
      v24 = v8;
      static Logger.install.getter();
      v15 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v23[1] = v3;
        v19 = v18;
        v20 = swift_slowAlloc();
        v23[0] = a3;
        v21 = v20;
        *v19 = 138412290;
        *(v19 + 4) = v15;
        *v20 = v14;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Shutting down", v19, 0xCu);
        sub_1000032A8(v21, &qword_10077F920);
        a3 = v23[0];
      }

      else
      {
        v22 = v16;
        v16 = v15;
      }

      (*(v24 + 8))(v10, v7);
    }

    sub_100235C9C(v12);
  }

  *a3 = 0;
}

uint64_t sub_100560774()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100564730(v1, v3, type metadata accessor for AppInstallScheduler.ParkReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x646573756170;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6E776F6474756873;
    }

    else
    {
      return 0x74726174736572;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    return 0x6C6C6174736E69;
  }

  else
  {
    sub_100566034(v3, type metadata accessor for AppInstallScheduler.ParkReason);
    return 0xD000000000000010;
  }
}

uint64_t sub_1005608F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return _swift_task_switch(sub_100560918, 0, 0);
}

uint64_t sub_100560918()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    v3 = v0[4];
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v2 = v4;
    os_unfair_lock_unlock((v3 + 24));
    if (!v4)
    {
      goto LABEL_6;
    }

    v1 = v0[3];
  }

  v5 = v1;
  sub_100625B04();

LABEL_6:
  v9 = (v0[5] + *v0[5]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100568300;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_100560A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return _swift_task_switch(sub_100560A84, 0, 0);
}

uint64_t sub_100560A84()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    v3 = v0[4];
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v2 = v4;
    os_unfair_lock_unlock((v3 + 24));
    if (!v4)
    {
      goto LABEL_6;
    }

    v1 = v0[3];
  }

  v5 = v1;
  sub_100625B04();

LABEL_6:
  v9 = (v0[5] + *v0[5]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100560BC8;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_100560BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100560CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v6 = type metadata accessor for Logger();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[12] = a4;

  return _swift_task_switch(sub_100560E14, 0, 0);
}

uint64_t sub_100560E14()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[22] = v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *(v5 + 16) = v0 + 12;
  v6 = v4;

  return _swift_task_switch(sub_100560F00, 0, 0);
}

uint64_t sub_100560F00()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Start", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 176);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
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

  *(v0 + 200) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Start", 15, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 216) = v12;
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2620;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_100561438;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100561438()
{

  if (v0)
  {

    v1 = sub_100561724;
  }

  else
  {

    v1 = sub_1005615F8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005615F8()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100561724()
{
}

uint64_t sub_1005617C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v6 = type metadata accessor for Logger();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[12] = a4;

  return _swift_task_switch(sub_100561918, 0, 0);
}

uint64_t sub_100561918()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[22] = v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *(v5 + 16) = v0 + 12;
  v6 = v4;

  return _swift_task_switch(sub_100561A04, 0, 0);
}

uint64_t sub_100561A04()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Cancel", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 176);
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

  *(v0 + 200) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Cancel", 16, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 216) = v12;
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2978;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_100561F3C;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B2980, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100561F3C()
{

  if (v0)
  {

    v1 = sub_100568344;
  }

  else
  {

    v1 = sub_100568488;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005620FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v7 = type metadata accessor for Logger();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[12] = a4;

  return _swift_task_switch(sub_100562258, 0, 0);
}

uint64_t sub_100562258()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[23] = v5;
  (*(v3 + 56))(v1, 1, 1, v2);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *(v6 + 16) = v0 + 12;
  *(v6 + 24) = v4;
  v7 = v5;

  return _swift_task_switch(sub_100562344, 0, 0);
}

uint64_t sub_100562344()
{
  sub_100005934(*(v0 + 176), *(v0 + 168), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 200) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Resume", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 184);
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

  *(v0 + 208) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 216) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_100005934(*(v0 + 168), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 168), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 128);
    v23 = *(v0 + 168);
    (*(v15 + 32))(v13, *(v0 + 160), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Resume", 16, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 224) = v12;
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2BB8;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_10056287C;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B2BC0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10056287C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100562B5C;
  }

  else
  {
    v2 = sub_100562A2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100562A2C()
{
  v1 = *(v0 + 176);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100562B5C()
{
  v1 = *(v0 + 176);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_100562C54, 0, 0);
}

uint64_t sub_100562C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100562D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100562D84(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  sub_100005934(a1 + 32, &v45, &qword_100781448);
  v42 = v45;
  v43 = v46;
  v44 = v47;
  sub_1001F6498(v48, v41);
  v7 = *a3;
  v8 = sub_1005223D0(&v42);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_1005B9ECC(v13, v6 & 1);
    v8 = sub_1005223D0(&v42);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_1005C3FB4();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();
    v49 = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000710C(v41);
      sub_10039DCC4(&v42);
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = v19[6] + 40 * v8;
  v21 = v42;
  v22 = v43;
  *(v20 + 32) = v44;
  *v20 = v21;
  *(v20 + 16) = v22;
  sub_1001F6498(v41, (v19[7] + 32 * v8));
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v12)
  {
    v19[2] = v24;
    if (v4 != 1)
    {
      v6 = a1 + 104;
      v14 = 1;
      while (v14 < *(a1 + 16))
      {
        sub_100005934(v6, &v45, &qword_100781448);
        v42 = v45;
        v43 = v46;
        v44 = v47;
        sub_1001F6498(v48, v41);
        v25 = *a3;
        v26 = sub_1005223D0(&v42);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v12 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v12)
        {
          goto LABEL_22;
        }

        v31 = v27;
        if (v25[3] < v30)
        {
          sub_1005B9ECC(v30, 1);
          v26 = sub_1005223D0(&v42);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v31)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v34 = v33[6] + 40 * v26;
        v35 = v42;
        v36 = v43;
        *(v34 + 32) = v44;
        *v34 = v35;
        *(v34 + 16) = v36;
        sub_1001F6498(v41, (v33[7] + 32 * v26));
        v37 = v33[2];
        v12 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v14;
        v33[2] = v38;
        v6 += 72;
        if (v4 == v14)
        {
        }
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  v39._object = 0x80000001006C4E90;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v39);
  _print_unlocked<A, B>(_:_:)();
  v40._countAndFlagsBits = 39;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100563170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10020A980((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

void *sub_1005631A0(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1005663C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100563230(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = type metadata accessor for UUID();
  v45 = *(v47 - 8);
  v8 = __chkstk_darwin(v47);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v36 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1001F0C48(&qword_100787140);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + 8 * v22);
    v26 = *(v24 + 32);
    v10 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_100562D1C(&qword_100781FF8, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v10, v47);
    *(*(v13 + 56) + 8 * v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1005635C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100214EFC;

  return sub_100560CBC(a1, a2, a3, v8);
}

uint64_t sub_100563680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1005635C8(a1, v4, v5, v1 + 4);
}

uint64_t sub_100563768()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10056380C;

  return sub_10063C2D0(0);
}

uint64_t sub_10056380C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100563904(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100563744(a1, v4);
}

uint64_t sub_1005639B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100214EFC;

  return sub_1005617C0(a1, a2, a3, v8);
}

uint64_t sub_100563A94()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100568340;

  return sub_1006371A4();
}

void sub_100563B34(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for AppInstallEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100563BA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v44 = 0;
  type metadata accessor for AppInstallEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v42 = a4;
    v14 = *(a1 + 16);
    if (v14)
    {
      v40 = a5;
      v41 = a6;

      v15 = a1 + 33;
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      do
      {
        v18 = *(v15 - 1);
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v24 = &v16[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v25 = sub_100234CBC(v18);
        v27 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_100009530((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
        v15 += 2;
        --v14;
      }

      while (v14);

      a6 = v41;
      a5 = v40;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v32];

    a4 = v42;
  }

  v33 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v34 = swift_allocObject();
  v34[2] = &v44;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1002398F8;
  *(v35 + 24) = v34;
  aBlock[4] = sub_100302FA4;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10076A168;
  v36 = _Block_copy(aBlock);
  v37 = a6;

  [v33 enumeratePersistentIDsUsingBlock:v36];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    v39 = v44;

    return v39;
  }

  return result;
}

void sub_100563FE0(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, id *)@<X2>, _BYTE *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

uint64_t sub_100564054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1001F0E54;

  return sub_1005620FC(a1, a2, a3, v10, a5);
}

uint64_t sub_10056411C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = a3;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100564140, 0, 0);
}

uint64_t sub_100564140()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1002628F8;
  v2 = *(v0 + 16);

  return sub_10063CF28(v2);
}

uint64_t sub_1005641E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v44 = 1;
  type metadata accessor for AppInstallEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v42 = a4;
    v14 = *(a1 + 16);
    if (v14)
    {
      v40 = a5;
      v41 = a6;

      v15 = a1 + 33;
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      do
      {
        v18 = *(v15 - 1);
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v24 = &v16[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v25 = sub_100234CBC(v18);
        v27 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_100009530((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
        v15 += 2;
        --v14;
      }

      while (v14);

      a6 = v41;
      a5 = v40;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v32];

    a4 = v42;
  }

  v33 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v34 = swift_allocObject();
  v34[2] = &v44;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1005669B4;
  *(v35 + 24) = v34;
  aBlock[4] = sub_100239904;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100769FD8;
  v36 = _Block_copy(aBlock);
  v37 = a6;

  [v33 enumeratePersistentIDsUsingBlock:v36];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    v39 = v44;

    return v39;
  }

  return result;
}

void sub_100564624(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, id *)@<X2>, void *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

uint64_t sub_100564730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100564840(uint64_t a1, void *a2)
{
  v2 = sub_1005F1674();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v45 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v45 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v45 + 56) + 32 * v11, v44, &qword_100783A30);
    v43[0] = v14;
    v43[1] = v13;
    sub_100005934(v44, &v33, &qword_100783A30);
    if (*(&v34 + 1))
    {
      sub_1001F6498(&v33, v32);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v32, (&v40 + 8));
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v43, &qword_100785AC0);
    if (*(&v39 + 1))
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v17[12] = v37;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v38, &qword_100787418);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v38 = v21;

  sub_100562D84(v22, 1, &v38);
  if (v28)
  {
    goto LABEL_26;
  }

  sub_100566F7C(a1);

  type metadata accessor for DDMUpdateEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_100564C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1001F0C48(&qword_1007874B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v7 = sub_100529B48(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &unk_100786F80);
  v8 = sub_1004E7348(v7);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v50 = v9;

  v15 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = (*(v50 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_100005934(*(v50 + 56) + 32 * v17, v49, &qword_100783A30);
    v48[0] = v20;
    v48[1] = v19;
    sub_100005934(v49, &v38, &qword_100783A30);
    if (*(&v39 + 1))
    {
      sub_1001F6498(&v38, v37);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v37, (&v45 + 8));
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
    }

    v13 &= v13 - 1;
    sub_1000032A8(v48, &qword_100785AC0);
    if (*(&v44 + 1))
    {
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100362DC4(0, v36[2] + 1, 1, v36);
      }

      v22 = v36[2];
      v21 = v36[3];
      if (v22 >= v21 >> 1)
      {
        v36 = sub_100362DC4((v21 > 1), v22 + 1, 1, v36);
      }

      v36[2] = v22 + 1;
      v23 = &v36[9 * v22];
      *(v23 + 2) = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v23[12] = v42;
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      *(v23 + 3) = v24;
    }

    else
    {
      sub_1000032A8(&v43, &qword_100787418);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  if (v36[2])
  {
    sub_1001F0C48(&qword_100786EA0);
    v27 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v27 = _swiftEmptyDictionarySingleton;
  }

  *&v43 = v27;

  sub_100562D84(v28, 1, &v43);
  if (v34)
  {
    goto LABEL_26;
  }

  type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithPropertyValues:isa onConnection:v30];

  if (([v32 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v32;
}

uint64_t sub_100565188(void *a1, void *a2)
{
  v2 = sub_1004D4A28();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v32 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v32 + 56) + 32 * v11, v45, &qword_100783A30);
    v44[0] = v14;
    v44[1] = v13;
    sub_100005934(v45, &v34, &qword_100783A30);
    if (*(&v35 + 1))
    {
      sub_1001F6498(&v34, v33);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v33, (&v41 + 8));
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v44, &qword_100785AC0);
    if (*(&v40 + 1))
    {
      v36 = v41;
      v37 = v42;
      v38 = v43;
      v34 = v39;
      v35 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v34;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      v17[12] = v38;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v39, &qword_100787418);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v39 = v21;

  sub_100562D84(v22, 1, &v39);
  if (v28)
  {
    goto LABEL_26;
  }

  v49 = a1[1];
  sub_1000032A8(&v49, &unk_10077FB40);
  v48 = a1[2];
  sub_1000032A8(&v48, &qword_100784430);
  v47 = a1[3];
  sub_1000032A8(&v47, &qword_100784430);
  v46 = a1[4];
  sub_1000032A8(&v46, &qword_100782580);

  type metadata accessor for SecureStorageEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_100565704(uint64_t a1, void *a2)
{
  v2 = sub_1004E5130();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v47 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v47 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v47 + 56) + 32 * v11, v44, &qword_100783A30);
    v43[0] = v14;
    v43[1] = v13;
    sub_100005934(v44, &v33, &qword_100783A30);
    if (*(&v34 + 1))
    {
      sub_1001F6498(&v33, v32);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v32, (&v40 + 8));
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v43, &qword_100785AC0);
    if (*(&v39 + 1))
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v17[12] = v37;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v38, &qword_100787418);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v38 = v21;

  sub_100562D84(v22, 1, &v38);
  if (v28)
  {
    goto LABEL_26;
  }

  v46 = *(a1 + 8);
  sub_10023215C(&v46);
  v45 = *(a1 + 24);
  sub_10023215C(&v45);

  type metadata accessor for LicenseStorageEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_100565BCC(uint64_t a1, void *a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v5 = a3();
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v50 = v6;

  v12 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10)) | (v12 << 6);
    v15 = (*(v50 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_100005934(*(v50 + 56) + 32 * v14, v49, &qword_100783A30);
    v48[0] = v17;
    v48[1] = v16;
    sub_100005934(v49, &v38, &qword_100783A30);
    if (*(&v39 + 1))
    {
      sub_1001F6498(&v38, v37);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v37, (&v45 + 8));
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
    }

    v10 &= v10 - 1;
    sub_1000032A8(v48, &qword_100785AC0);
    if (*(&v44 + 1))
    {
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100362DC4(0, v36[2] + 1, 1, v36);
      }

      v19 = v36[2];
      v18 = v36[3];
      if (v19 >= v18 >> 1)
      {
        v36 = sub_100362DC4((v18 > 1), v19 + 1, 1, v36);
      }

      v36[2] = v19 + 1;
      v20 = &v36[9 * v19];
      *(v20 + 2) = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v20[12] = v42;
      *(v20 + 4) = v22;
      *(v20 + 5) = v23;
      *(v20 + 3) = v21;
    }

    else
    {
      sub_1000032A8(&v43, &qword_100787418);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v36[2])
  {
    sub_1001F0C48(&qword_100786EA0);
    v24 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v24 = &_swiftEmptyDictionarySingleton;
  }

  *&v43 = v24;

  sub_100562D84(v25, 1, &v43);
  if (v31)
  {
    goto LABEL_26;
  }

  a4(0);
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithPropertyValues:isa onConnection:v27];

  if (([v29 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  sub_100566034(a1, a5);
  return v29;
}

uint64_t sub_100566034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005660A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10051B078(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = *&v43[0];
  sub_1001DFDBC((v43 + 8), v42);
  v13 = *a5;
  result = sub_10052BA64(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1005BB454(v19, a4 & 1);
    result = sub_10052BA64(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1005C4C7C();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    sub_10020A980(*(*a5 + 56) + 40 * result, v41);
    sub_10000710C(v42);
    v24 = *(v22 + 56);
    sub_10000710C(v24 + v23);
    sub_1001DFDBC(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_1001DFDBC(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_10051B078(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = *&v43[0];
        sub_1001DFDBC((v43 + 8), v42);
        v32 = *a5;
        result = sub_10052BA64(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_1005BB454(v36, 1);
          result = sub_10052BA64(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          sub_10020A980(*(*a5 + 56) + 40 * result, v41);
          sub_10000710C(v42);
          v31 = *(v29 + 56);
          sub_10000710C(v31 + v30);
          sub_1001DFDBC(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1001DFDBC(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_10051B078(v43);
      }

      while (v44);
    }

LABEL_25:
    sub_1001DFE18();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1005663C8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  v25 = a2;
  v33 = a4;
  v26 = a1;
  v32 = type metadata accessor for UUID();
  result = __chkstk_darwin(v32);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = v6 + 16;
  v27 = 0;
  v28 = v6 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v36 = v16 | (v8 << 6);
    v19 = v34;
    v21 = v30;
    v20 = v31;
    v22 = v36;
    v23 = v32;
    (*(v31 + 16))(v30, v34[6] + *(v31 + 72) * v36, v32);
    LOBYTE(v19) = v33(v21, *(v19[7] + 8 * v22));
    result = (*(v20 + 8))(v21, v23);
    v14 = v35;
    if (v19)
    {
      *(v26 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100563230(v26, v25, v27, v34);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_100563230(v26, v25, v27, v34);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100566600(uint64_t a1, uint64_t (*a2)(char *, void))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1005663C8(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1005631A0(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_1005667F4(void *a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v3 = a1;
  v2(&v4);
}

unint64_t sub_10056688C()
{
  result = qword_100787400;
  if (!qword_100787400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787400);
  }

  return result;
}

uint64_t sub_100566A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100566B3C()
{
  result = qword_100787520;
  if (!qword_100787520)
  {
    sub_1001F76D0(&qword_100787518);
    sub_100562D1C(&qword_100787528, &type metadata accessor for ManagedAppStatus.Reason);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787520);
  }

  return result;
}

uint64_t sub_100566C58@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_100566C94()
{
  result = qword_1007852C8;
  if (!qword_1007852C8)
  {
    sub_1001F76D0(&qword_100781758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007852C8);
  }

  return result;
}

uint64_t sub_100566D1C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
  }

  else
  {
    return a4();
  }
}

uint64_t sub_100566D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1005639B8(a1, v4, v5, v1 + 4);
}

uint64_t sub_100566E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100563A70(a1, v4);
}

uint64_t sub_100567038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100558AA0(a1, v4, v5, v6);
}

uint64_t sub_100567128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100557D38(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1005671E8()
{
  swift_unknownObjectRelease();

  sub_1003D802C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100567248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100557D38(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100567414(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return _objc_release_x1();
  }
}

uint64_t sub_1005674D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100552800(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100567598()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005675E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_1005533F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005676A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100552E1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005677B4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a12 >> 62 == 1)
  {
    sub_100007158(a3, a4);

    sub_100007158(a10, a11);
  }

  else
  {
    if (a12 >> 62)
    {
      return result;
    }

    sub_100007158(result, a2);
  }
}

uint64_t sub_100567854(uint64_t a1)
{
  v4 = *(type metadata accessor for AppInstallScheduler.ParkReason(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100564054(a1, v6, v7, v1 + 4, v1 + v5);
}

uint64_t sub_100567954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10056411C(a1, v5, v4);
}

uint64_t sub_100567A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100559864(a1, v4, v5, v6);
}

uint64_t sub_100567B2C(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10055EE50(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100567C20()
{
  v1 = type metadata accessor for DownloadRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  sub_10000710C(v0 + 32);
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[6];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  if (*(v0 + v3 + v1[11] + 16) != 1)
  {
  }

  v10 = v5 + v1[12];
  sub_1005677B4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88));
  v11 = v5 + v1[14];
  if (*(v11 + 24))
  {
    sub_10000710C(v11);
  }

  sub_10000710C(v5 + v1[17]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100567E00(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_10055E864(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100567EF4()
{
  v1 = *(type metadata accessor for AppInstallScheduler.ParkReason(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for DownloadRequest();
    v7 = v6[5];
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    v9 = v6[6];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);

    if (*(v5 + v6[11] + 16) != 1)
    {
    }

    v11 = v5 + v6[12];
    sub_1005677B4(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88));
    v12 = v5 + v6[14];
    if (*(v12 + 24))
    {
      sub_10000710C(v12);
    }

    sub_10000710C(v5 + v6[17]);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100568104()
{
  result = qword_100787698;
  if (!qword_100787698)
  {
    sub_1001F76D0(&qword_100787690);
    sub_100562D1C(&qword_1007876A0, &type metadata accessor for ApprovedDeveloper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787698);
  }

  return result;
}

uint64_t sub_1005681F0(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_100568200()
{
  result = type metadata accessor for DownloadRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100568344()
{

  return sub_100561724();
}

uint64_t sub_100568488()
{

  return sub_1005615F8();
}

void sub_10056850C(uint64_t a1, void *a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_100787758);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1001F0C48(&qword_100787758);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005685BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CellularSettings.Prompt();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for EvaluatorDownload();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100568838, 0, 0);
}

uint64_t sub_100568838()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[2];
  static Logger.download.getter();
  sub_10056B348(v4, v1);
  sub_10056B348(v4, v2);
  sub_10056B348(v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  if (v7)
  {
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    v14 = *(v8 + v11[8]);
    sub_10056B3AC(v8);
    *(v12 + 4) = v14;
    *v13 = v14;
    *(v12 + 12) = 2048;
    v15 = *(v9 + v11[6]);
    sub_10056B3AC(v9);
    *(v12 + 14) = v15;
    *(v12 + 22) = 1024;
    LODWORD(v15) = *(v10 + v11[10]) & 1;
    sub_10056B3AC(v10);
    *(v12 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Evaluating download, size = %{iec-bytes}ld automatic = %{BOOL}d", v12, 0x1Cu);
    sub_1001F8084(v13);
  }

  else
  {
    sub_10056B3AC(v0[21]);
    sub_10056B3AC(v9);

    sub_10056B3AC(v8);
  }

  v16 = v0 + 24;
  v17 = v0[9];
  v18 = v0[2];
  v19 = *(v0[25] + 8);
  v19(v0[37], v0[24]);
  if (*(v18 + *(v17 + 40)))
  {
    v30 = v0[2];
    if (*(v30 + *(v0[9] + 36)) - 2 >= 2)
    {
      v148 = v19;
      if (*(v30 + *(v0[9] + 36)))
      {
        v33 = v0 + 36;
        v108 = v0[20];
        static Logger.download.getter();
        sub_10056B348(v30, v108);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        v109 = os_log_type_enabled(v36, v37);
        v39 = v0[20];
        if (v109)
        {
          v110 = v0[9];
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v111 = *(v39 + *(v110 + 32));
          sub_10056B3AC(v39);
          *(v41 + 4) = v111;
          *v42 = v111;
          v33 = v0 + 36;
          v44 = "[%@] Implicitly denied - managed automatic downloads are disabled";
          goto LABEL_36;
        }
      }

      else
      {
        v50 = CellularIdentity.isRoaming.getter();
        v51 = v0[2];
        if ((v50 & 1) == 0)
        {
          v33 = v0 + 34;
          v113 = v0[18];
          static Logger.download.getter();
          sub_10056B348(v51, v113);
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();
          v116 = os_log_type_enabled(v114, v115);
          v117 = v0[18];
          if (v116)
          {
            v118 = v0[9];
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            *v119 = 138412290;
            v121 = *(v117 + *(v118 + 32));
            sub_10056B3AC(v117);
            *(v119 + 4) = v121;
            *v120 = v121;
            v33 = v0 + 34;
            _os_log_impl(&_mh_execute_header, v114, v115, "[%@] Implicitly allowed - managed automatic downloads are enabled", v119, 0xCu);
            sub_1001F8084(v120);
          }

          else
          {

            sub_10056B3AC(v117);
          }

          v155 = 1;
          goto LABEL_39;
        }

        v33 = v0 + 35;
        v52 = v0[19];
        static Logger.download.getter();
        sub_10056B348(v51, v52);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        v53 = os_log_type_enabled(v36, v37);
        v39 = v0[19];
        if (v53)
        {
          v54 = v0[9];
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v55 = *(v39 + *(v54 + 32));
          sub_10056B3AC(v39);
          *(v41 + 4) = v55;
          *v42 = v55;
          v33 = v0 + 35;
          v44 = "[%@] Overriding managed automatic downloads policy - network is roaming";
          goto LABEL_36;
        }
      }
    }

    else
    {
      v31 = v0[4];
      v32 = type metadata accessor for ExpensiveNetworkEvaluator();
      sub_100006D8C((v31 + *(v32 + 20)), *(v31 + *(v32 + 20) + 24));
      if (CellularSettings.allowAutomaticDownloads.getter())
      {
        goto LABEL_5;
      }

      v148 = v19;
      v33 = v0 + 33;
      v34 = v0[17];
      v35 = v0[2];
      static Logger.download.getter();
      sub_10056B348(v35, v34);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[17];
      if (v38)
      {
        v40 = v0[9];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = *(v39 + *(v40 + 32));
        sub_10056B3AC(v39);
        *(v41 + 4) = v43;
        *v42 = v43;
        v33 = v0 + 33;
        v44 = "[%@] Implicitly denied - automatic downloads are disabled";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v36, v37, v44, v41, 0xCu);
        sub_1001F8084(v42);

LABEL_38:
        v155 = 0;
LABEL_39:
        v90 = v148;
        goto LABEL_52;
      }
    }

    sub_10056B3AC(v39);
    goto LABEL_38;
  }

LABEL_5:
  if (CellularIdentity.isRoaming.getter() & 1) != 0 || (os_variant_has_internal_content() & 1) != 0 && (v45 = v0[4], v46 = type metadata accessor for ExpensiveNetworkEvaluator(), sub_100006D8C((v45 + *(v46 + 20)), *(v45 + *(v46 + 20) + 24)), (CellularSettings.emulateRoaming.getter()))
  {
    v20 = v0[16];
    v21 = v0[2];
    static Logger.download.getter();
    sub_10056B348(v21, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[16];
    if (v24)
    {
      v26 = v0[9];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = *(v25 + *(v26 + 32));
      sub_10056B3AC(v25);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Overriding cellular prompt - network is roaming", v27, 0xCu);
      sub_1001F8084(v28);
    }

    else
    {

      sub_10056B3AC(v25);
    }

    v56 = v0[8];
    v57 = v0[5];
    v58 = v0[6];
    v19(v0[32], v0[24]);
    v49 = enum case for CellularSettings.Prompt.always(_:);
    (*(v58 + 104))(v56, enum case for CellularSettings.Prompt.always(_:), v57);
  }

  else
  {
    v47 = v0[4];
    v48 = type metadata accessor for ExpensiveNetworkEvaluator();
    sub_100006D8C((v47 + *(v48 + 20)), *(v47 + *(v48 + 20) + 24));
    CellularSettings.cellularData.getter();
    v49 = enum case for CellularSettings.Prompt.always(_:);
  }

  v33 = v0 + 8;
  v60 = v0[6];
  v59 = v0[7];
  v16 = v0 + 5;
  v61 = v0[5];
  (*(v60 + 16))(v59, v0[8], v61);
  v62 = (*(v60 + 88))(v59, v61);
  if (v62 == v49)
  {
    v63 = v0[14];
    v64 = v0[2];
    static Logger.download.getter();
    sub_10056B348(v64, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[30];
    v69 = v0[24];
    v70 = v0[14];
    if (v67)
    {
      v153 = v0[30];
      v71 = v0[9];
      v146 = v0[6];
      v72 = swift_slowAlloc();
      v149 = v19;
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      v74 = *(v70 + *(v71 + 32));
      sub_10056B3AC(v70);
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%@] Implicitly denied - cellular prompt required", v72, 0xCu);
      sub_1001F8084(v73);

      v33 = v0 + 8;

      v149(v153, v69);
      v75 = v146;
    }

    else
    {
      v89 = v0[6];

      sub_10056B3AC(v70);
      v19(v68, v69);
      v75 = v89;
    }

    v155 = 0;
    v90 = *(v75 + 8);
    goto LABEL_52;
  }

  v76 = v0[2];
  if (v62 == enum case for CellularSettings.Prompt.never(_:))
  {
    v77 = v0[15];
    static Logger.download.getter();
    sub_10056B348(v76, v77);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v0[31];
    v82 = v0[24];
    v83 = v0[15];
    if (v80)
    {
      v154 = v0[31];
      v84 = v0[9];
      v147 = v0[6];
      v85 = swift_slowAlloc();
      v150 = v19;
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      v87 = *(v83 + *(v84 + 32));
      sub_10056B3AC(v83);
      *(v85 + 4) = v87;
      *v86 = v87;
      _os_log_impl(&_mh_execute_header, v78, v79, "[%@] Implicitly allowed - cellular prompt disabled", v85, 0xCu);
      sub_1001F8084(v86);

      v33 = v0 + 8;

      v150(v154, v82);
      v88 = v147;
    }

    else
    {
      v112 = v0[6];

      sub_10056B3AC(v83);
      v19(v81, v82);
      v88 = v112;
    }

    v90 = *(v88 + 8);
    v155 = 1;
    goto LABEL_52;
  }

  v91 = v0[9];
  v92 = *(v0[6] + 8);
  v92(v0[7], v0[5]);
  v93 = *(v76 + *(v91 + 24));
  if (v93 <= 0)
  {
    v122 = v0[13];
    v123 = v0[2];
    static Logger.download.getter();
    sub_10056B348(v123, v122);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    v124 = os_log_type_enabled(v98, v99);
    v156 = v0[29];
    v101 = v0[24];
    v102 = v0[13];
    if (v124)
    {
      v144 = v92;
      v125 = v0[9];
      v145 = v0 + 8;
      v104 = swift_slowAlloc();
      v151 = v19;
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      v126 = *(v102 + *(v125 + 32));
      sub_10056B3AC(v102);
      *(v104 + 4) = v126;
      *v105 = v126;
      v107 = "[%@] Implicitly denied - download size is unavailable";
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  v94 = v0[3];
  if (!v94)
  {
    v127 = v0[12];
    v128 = v0[2];
    static Logger.download.getter();
    sub_10056B348(v128, v127);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v129 = os_log_type_enabled(v98, v99);
    v156 = v0[28];
    v101 = v0[24];
    v102 = v0[12];
    if (v129)
    {
      v144 = v92;
      v130 = v0[9];
      v145 = v0 + 8;
      v104 = swift_slowAlloc();
      v151 = v19;
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      v131 = *(v102 + *(v130 + 32));
      sub_10056B3AC(v102);
      *(v104 + 4) = v131;
      *v105 = v131;
      v107 = "[%@] Implicitly denied - failed to load constraints";
      goto LABEL_48;
    }

LABEL_50:

    sub_10056B3AC(v102);
    v19(v156, v101);
    v155 = 0;
    goto LABEL_51;
  }

  v95 = [v94 sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v96 = v0[2];
  if (v95 < v93)
  {
    v97 = v0[11];
    static Logger.download.getter();
    sub_10056B348(v96, v97);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    v100 = os_log_type_enabled(v98, v99);
    v156 = v0[27];
    v101 = v0[24];
    v102 = v0[11];
    if (v100)
    {
      v144 = v92;
      v103 = v0[9];
      v145 = v0 + 8;
      v104 = swift_slowAlloc();
      v151 = v19;
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      v106 = *(v102 + *(v103 + 32));
      sub_10056B3AC(v102);
      *(v104 + 4) = v106;
      *v105 = v106;
      v107 = "[%@] Implicitly denied - exceeded cellular limit";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v98, v99, v107, v104, 0xCu);
      sub_1001F8084(v105);

      v33 = v145;

      v151(v156, v101);
      v155 = 0;
LABEL_49:
      v90 = v144;
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v134 = v0[10];
  static Logger.download.getter();
  sub_10056B348(v96, v134);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  v137 = os_log_type_enabled(v135, v136);
  v157 = v0[26];
  v138 = v0[24];
  v139 = v0[10];
  if (v137)
  {
    v144 = v92;
    v140 = v0[9];
    v141 = swift_slowAlloc();
    v152 = v19;
    v142 = swift_slowAlloc();
    *v141 = 138412290;
    v143 = *(v139 + *(v140 + 32));
    sub_10056B3AC(v139);
    *(v141 + 4) = v143;
    *v142 = v143;
    _os_log_impl(&_mh_execute_header, v135, v136, "[%@] Implicitly allowed - cellular limit applies", v141, 0xCu);
    sub_1001F8084(v142);

    v33 = v0 + 8;

    v152(v157, v138);
    v155 = 1;
    goto LABEL_49;
  }

  sub_10056B3AC(v139);
  v19(v157, v138);
  v155 = 1;
LABEL_51:
  v90 = v92;
LABEL_52:
  v90(*v33, *v16);

  v132 = v0[1];

  return v132(v155);
}

uint64_t sub_100569918(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1001F0C48(&qword_100787758);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_1005699E4, 0, 0);
}

uint64_t sub_1005699E4()
{
  v1 = v0;
  v2 = v0 + 2;
  v14 = v0 + 18;
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() bagForProfile:v8 profileVersion:v9];

  v11 = [v6 networkConstraintsForMediaType:v7 withBag:v10];
  v1[24] = v11;

  v1[2] = v1;
  v1[7] = v14;
  v1[3] = sub_100569C64;
  swift_continuation_init();
  v1[17] = v5;
  v12 = sub_10020A748(v1 + 14);
  sub_10056B460();
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v3 + 32))(v12, v4, v5);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10056850C;
  v1[13] = &unk_10076B340;
  [v11 resultWithCompletion:?];
  (*(v3 + 8))(v12, v5);

  return _swift_continuation_await(v2);
}

uint64_t sub_100569C64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100569E34;
  }

  else
  {
    v2 = sub_100569D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100569D74()
{
  v1 = *(v0 + 144);

  *(v0 + 208) = v1;
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100569F04;
  v3 = *(v0 + 152);

  return (sub_1005685BC)(v3, v1);
}

uint64_t sub_100569E34()
{
  v1 = v0[24];
  swift_willThrow();

  v0[26] = 0;
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_100569F04;
  v3 = v0[19];

  return sub_1005685BC(v3, 0);
}

uint64_t sub_100569F04(__int16 a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10056A004, 0, 0);
}

uint64_t sub_10056A004()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2(v1 & 0x1010101);
}

uint64_t sub_10056A078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v6 = type metadata accessor for NWInterface.InterfaceType();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for EvaluatorDownload();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_10056A2D4;

  return sub_100569918(a1, a3);
}

uint64_t sub_10056A2D4(__int16 a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10056A3D4, 0, 0);
}

uint64_t sub_10056A3D4()
{
  v85 = v0;
  v1 = *(v0 + 256);
  v2 = (v1 >> 8) & 1;
  if (!v2 && (v1 & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + *(*(v0 + 64) + 40));
    if (v4)
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      static Logger.download.getter();
      sub_10056B348(v3, v22);
      sub_10056B348(v3, v23);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 192);
      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v31 = *(v0 + 120);
      v30 = *(v0 + 128);
      if (v26)
      {
        v82 = *(v0 + 192);
        v32 = *(v0 + 64);
        v80 = *(v0 + 144);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412546;
        v35 = *(v30 + *(v32 + 32));
        sub_10056B3AC(v30);
        *(v33 + 4) = v35;
        *v34 = v35;
        *(v33 + 12) = 2048;
        v36 = *(v31 + *(v32 + 24));
        sub_10056B3AC(v31);
        *(v33 + 14) = v36;
        v37 = "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, but not prompting for automatic download.";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v24, v25, v37, v33, 0x16u);
        sub_1001F8084(v34);

        (*(v28 + 8))(v82, v80);
LABEL_21:
        LOBYTE(v1) = 0;
        v2 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (NWPath.isExpensive.getter() & 1) != 0 || (v6 = *(v0 + 48), v5 = *(v0 + 56), v7 = *(v0 + 40), (*(v6 + 104))(v5, enum case for NWInterface.InterfaceType.cellular(_:), v7), v8 = NWPath.usesInterfaceType(_:)(), (*(v6 + 8))(v5, v7), (v8))
      {
        v10 = *(v0 + 104);
        v9 = *(v0 + 112);
        v11 = *(v0 + 16);
        static Logger.download.getter();
        sub_10056B348(v11, v9);
        sub_10056B348(v11, v10);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        v14 = os_log_type_enabled(v12, v13);
        v16 = *(v0 + 104);
        v15 = *(v0 + 112);
        if (v14)
        {
          v17 = *(v0 + 64);
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412546;
          v20 = *(v15 + *(v17 + 32));
          sub_10056B3AC(v15);
          *(v18 + 4) = v20;
          *v19 = v20;
          *(v18 + 12) = 2048;
          v21 = *(v16 + *(v17 + 24));
          sub_10056B3AC(v16);
          *(v18 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, asking how to proceed.", v18, 0x16u);
          sub_1001F8084(v19);
        }

        else
        {
          sub_10056B3AC(*(v0 + 104));

          sub_10056B3AC(v15);
        }

        v38 = *(v0 + 184);
        v39 = *(v0 + 144);
        v40 = *(v0 + 64);
        v41 = *(v0 + 16);
        v42 = *(*(v0 + 152) + 8);
        *(v0 + 216) = v42;
        v42(v38, v39);
        v43 = CellularIdentity.isRoaming.getter();
        v44 = (v41 + *(v40 + 20));
        v45 = v44[1];
        v46 = *(v41 + *(v40 + 24));
        v47 = (v4 >> 2) & 1;
        v48 = v43 & 1;
        v49 = *v44;
        if ((v4 & 2) != 0)
        {
          v50 = sub_1001F8108(v49, v45, v46, v48, v47);
        }

        else
        {
          v50 = sub_1001F887C(v49, v45, v46, v48, v47);
        }

        *(v0 + 224) = v50;

        return _swift_task_switch(sub_10056AB3C, v50, 0);
      }

      v52 = *(v0 + 72);
      v51 = *(v0 + 80);
      v53 = *(v0 + 16);
      static Logger.download.getter();
      sub_10056B348(v53, v51);
      sub_10056B348(v53, v52);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v54 = os_log_type_enabled(v24, v25);
      v28 = *(v0 + 152);
      v27 = *(v0 + 160);
      v29 = *(v0 + 144);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);
      if (v54)
      {
        v82 = *(v0 + 160);
        v55 = *(v0 + 64);
        v80 = *(v0 + 144);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412546;
        v56 = *(v30 + *(v55 + 32));
        sub_10056B3AC(v30);
        *(v33 + 4) = v56;
        *v34 = v56;
        *(v33 + 12) = 2048;
        v57 = *(v31 + *(v55 + 24));
        sub_10056B3AC(v31);
        *(v33 + 14) = v57;
        v37 = "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, but not prompting for inexpensive network.";
        goto LABEL_10;
      }
    }

    sub_10056B3AC(v31);

    sub_10056B3AC(v30);
    (*(v28 + 8))(v27, v29);
    goto LABEL_21;
  }

LABEL_22:
  v81 = v2;
  v83 = v1;
  v58 = *(v0 + 136);
  v59 = *(v0 + 16);
  static Logger.download.getter();
  sub_10056B348(v59, v58);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 200);
  v65 = *(v0 + 144);
  v64 = *(v0 + 152);
  v66 = *(v0 + 136);
  if (v62)
  {
    v67 = *(v0 + 64);
    v79 = *(v0 + 200);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v84 = v70;
    *v68 = 138412546;
    v71 = *(v66 + *(v67 + 32));
    sub_10056B3AC(v66);
    *(v68 + 4) = v71;
    *v69 = v71;
    *(v68 + 12) = 2080;
    *(v0 + 258) = v83 & 1;
    *(v0 + 259) = v81;
    v72 = String.init<A>(describing:)();
    v74 = sub_1002346CC(v72, v73, &v84);

    *(v68 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v60, v61, "[%@] Evaluation for download completed with result: %s", v68, 0x16u);
    sub_1001F8084(v69);

    sub_10000710C(v70);

    (*(v64 + 8))(v79, v65);
  }

  else
  {

    sub_10056B3AC(v66);
    (*(v64 + 8))(v63, v65);
  }

  if (v81)
  {
    v75 = 256;
  }

  else
  {
    v75 = 0;
  }

  v76 = v75 & 0xFFFFFFFE | v83 & 1;
  v77 = *(v0 + 8);

  return v77(v76);
}

uint64_t sub_10056AB3C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 232) = qword_100786178;

  return _swift_task_switch(sub_10056ABD4, v1, 0);
}

uint64_t sub_10056ABD4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = sub_10056B408();
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_10056ACDC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 260, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10056ACDC()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10056AE08, v1, 0);
}

uint64_t sub_10056AE08()
{

  *(v0 + 261) = *(v0 + 260);

  return _swift_task_switch(sub_10056AE78, 0, 0);
}

uint64_t sub_10056AE78()
{
  v46 = v0;
  v1 = *(v0 + 261);
  v2 = *(v0 + 16);
  v44 = v1;
  if (*(v0 + 261))
  {
    v3 = *(v0 + 88);
    static Logger.download.getter();
    sub_10056B348(v2, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 216);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 88);
    if (v6)
    {
      v11 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v42 = v7;
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v10 + *(v11 + 32));
      sub_10056B3AC(v10);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = "[%@] We were asked to download later. Requiring inexpensive data.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, v5, v15, v12, 0xCu);
      sub_1001F8084(v13);

      v1 = v44;

      v42(v8, v9);
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *(v0 + 96);
    static Logger.download.getter();
    sub_10056B348(v2, v16);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 216);
    v8 = *(v0 + 176);
    v9 = *(v0 + 144);
    v10 = *(v0 + 96);
    if (v17)
    {
      v18 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v42 = v7;
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v19 = *(v10 + *(v18 + 32));
      sub_10056B3AC(v10);
      *(v12 + 4) = v19;
      *v13 = v19;
      v15 = "[%@] We were asked to download now. Not requiring inexpensive data.";
      goto LABEL_6;
    }
  }

  sub_10056B3AC(v10);
  v7(v8, v9);
LABEL_8:
  v20 = *(v0 + 136);
  v21 = *(v0 + 16);
  static Logger.download.getter();
  sub_10056B348(v21, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 200);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v28 = *(v0 + 136);
  if (v24)
  {
    v43 = *(v0 + 200);
    v29 = v1 == 0;
    v30 = *(v0 + 64);
    v41 = *(v0 + 144);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = v33;
    *v31 = 138412546;
    v34 = *(v28 + *(v30 + 32));
    sub_10056B3AC(v28);
    *(v31 + 4) = v34;
    *v32 = v34;
    *(v31 + 12) = 2080;
    *(v0 + 258) = v29;
    *(v0 + 259) = 1;
    v35 = String.init<A>(describing:)();
    v37 = sub_1002346CC(v35, v36, &v45);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Evaluation for download completed with result: %s", v31, 0x16u);
    sub_1001F8084(v32);

    sub_10000710C(v33);

    (*(v26 + 8))(v43, v41);
  }

  else
  {

    sub_10056B3AC(v28);
    (*(v26 + 8))(v25, v27);
  }

  if (v44)
  {
    v38 = 256;
  }

  else
  {
    v38 = 257;
  }

  v39 = *(v0 + 8);

  return v39(v38);
}

uint64_t sub_10056B348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EvaluatorDownload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056B3AC(uint64_t a1)
{
  v2 = type metadata accessor for EvaluatorDownload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10056B408()
{
  result = qword_1007843A0;
  if (!qword_1007843A0)
  {
    type metadata accessor for SystemAlertCenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007843A0);
  }

  return result;
}

unint64_t sub_10056B460()
{
  result = qword_100787760;
  if (!qword_100787760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100787760);
  }

  return result;
}

uint64_t type metadata accessor for ExpensiveNetworkEvaluator()
{
  result = qword_1007877C0;
  if (!qword_1007877C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10056B528()
{
  result = type metadata accessor for CellularIdentity();
  if (v1 <= 0x3F)
  {
    result = sub_10056B5AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10056B5AC()
{
  result = qword_1007877D0;
  if (!qword_1007877D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1007877D0);
  }

  return result;
}

uint64_t sub_10056B610()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10056B6AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = Data.init(contentsOf:options:)();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100007158(v7, v8);

    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_10056B7C8()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for PersistenceStore();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10056B868()
{
  sub_10056B7C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10056B8B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = type metadata accessor for URL();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10056B9DC, 0, 0);
}

void sub_10056B9DC()
{
  v1 = v0[4];
  v3 = *v1;
  v2 = v1[1];
  v4 = *(*v1 + 16);
  if (v2 >= v4)
  {
    (*(*(v0[8] - 8) + 56))(v0[2], 1, 1, v0[8]);
LABEL_9:

    v17 = v0[1];

    v17();
  }

  else
  {
    v5 = v0[6];
    v22 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = v5;
    v6 = (v5 + 8);
    v7 = v0[8] - 8;
    v8 = (v0[10] + 8);
    while (1)
    {
      if (v2 >= v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v0[11];
      v10 = v0[8];
      (*(v23 + 16))(v0[7], v22 + *(v23 + 72) * v2, v0[5]);
      sub_10056B6AC(v10, v9);
      v11 = v0[11];
      v12 = v0[8];
      (*v6)(v0[7], v0[5]);
      v13 = *v7;
      v14 = *v7;
      if ((*(*v7 + 48))(v11, 1, v12) != 1)
      {
        break;
      }

      (*v8)(v0[11], v0[9]);
      v15 = v1[1];
      v16 = __OFADD__(v15, 1);
      v2 = v15 + 1;
      if (v16)
      {
        goto LABEL_15;
      }

      v1[1] = v2;
      v4 = *(v3 + 16);
      if (v2 >= v4)
      {
        (*(v13 + 56))(v0[2], 1, 1, v0[8]);
        goto LABEL_9;
      }
    }

    v18 = v0[8];
    v19 = v0[2];
    (*(v14 + 32))(v19, v0[11], v18);
    (*(v14 + 56))(v19, 0, 1, v18);
    v20 = v1[1];
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      v1[1] = v21;
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }
}

uint64_t type metadata accessor for MediaAPIMetadata()
{
  result = qword_100787958;
  if (!qword_100787958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10056BD8C()
{
  sub_10000585C(319, &qword_1007819E0);
  if (v0 <= 0x3F)
  {
    sub_10037F89C();
    if (v1 <= 0x3F)
    {
      sub_10000585C(319, &qword_100785510);
      if (v2 <= 0x3F)
      {
        sub_10037F848(319, &qword_100787968, &unk_100787970);
        if (v3 <= 0x3F)
        {
          sub_10037F848(319, &qword_100783630, &unk_10077FB40);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10056BEE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v103 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v96 - v11;
  __chkstk_darwin(v10);
  v14 = &v96 - v13;
  v15 = type metadata accessor for MediaAPIMetadata();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104[0] = 0x656C746974;
  v104[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v19 = sub_1005223D0(v105), (v20 & 1) == 0))
  {

    sub_10039DCC4(v105);
LABEL_12:
    static Logger.install.getter();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v102 = v6;
      v31 = v16;
      v32 = v15;
      v33 = a3;
      v34 = v30;
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v35 = v26;
      sub_1001F8084(v34);
      a3 = v33;
      v15 = v32;
      v16 = v31;
      v6 = v102;
    }

    else
    {
      v35 = v27;
      v27 = v26;
    }

    (*(v103 + 8))(v9, v6);
    goto LABEL_16;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v19, v106);
  sub_10039DCC4(v105);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v100 = v104[0];
  v101 = v104[1];
  v102 = a3;
  strcpy(v106, "shortName");
  WORD1(v106[1]) = 0;
  HIDWORD(v106[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v21 = sub_1005223D0(v105), (v22 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v21, v106);
    sub_10039DCC4(v105);
    v23 = swift_dynamicCast();
    v24 = v104[0];
    if (!v23)
    {
      v24 = 0;
    }

    v99 = v24;
    if (v23)
    {
      v25 = v104[1];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_10039DCC4(v105);
    v99 = 0;
    v25 = 0;
  }

  v38 = sub_10056CC70(a1);
  if (!v39)
  {

    v36 = 1;
    a3 = v102;
    return (*(v16 + 56))(a3, v36, 1, v15);
  }

  v41 = v39;
  v97 = v38;
  v98 = v40;
  strcpy(v104, "developerId");
  HIDWORD(v104[1]) = -352321536;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v42 = sub_1005223D0(v105), (v43 & 1) == 0))
  {

    sub_10039DCC4(v105);
LABEL_32:
    static Logger.install.getter();
    v55 = a2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      sub_1001F8084(v59);
    }

    else
    {
      v60 = v56;
      v56 = v55;
    }

    a3 = v102;

    (*(v103 + 8))(v12, v6);
    goto LABEL_16;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v42, v106);
  sub_10039DCC4(v105);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v44 = v104[1];
  v96 = v104[0];
  strcpy(v104, "developerName");
  HIWORD(v104[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v45 = sub_1005223D0(v105), (v46 & 1) == 0))
  {

    sub_10039DCC4(v105);
LABEL_39:
    static Logger.install.getter();
    v61 = a2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      sub_1001F8084(v65);
    }

    else
    {
      v66 = v62;
      v62 = v61;
    }

    a3 = v102;

    (*(v103 + 8))(v14, v6);
LABEL_16:
    v36 = 1;
    return (*(v16 + 56))(a3, v36, 1, v15);
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v45, v106);
  sub_10039DCC4(v105);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v47 = v104[0];
  v48 = v104[1];
  v49 = v101;
  *v18 = v100;
  v18[1] = v49;
  v18[2] = v99;
  v18[3] = v25;
  v50 = (v18 + v15[11]);
  *v50 = v97;
  v50[1] = v41;
  *(v18 + v15[12]) = v98;
  v18[4] = v96;
  v18[5] = v44;
  v18[6] = v47;
  v18[7] = v48;
  strcpy(v106, "isDistributor");
  HIWORD(v106[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v51 = sub_1005223D0(v105), (v52 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v51, v106);
    sub_10039DCC4(v105);
    v53 = swift_dynamicCast();
    a3 = v102;
    if (v53)
    {
      v54 = v104[0];
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    sub_10039DCC4(v105);
    v54 = 0;
    a3 = v102;
  }

  *(v18 + v15[8]) = v54;
  strcpy(v106, "supportUrl");
  BYTE3(v106[1]) = 0;
  HIDWORD(v106[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v67 = sub_1005223D0(v105), (v68 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v67, v106);
    sub_10039DCC4(v105);
    v69 = swift_dynamicCast();
    v70 = v104[0];
    v71 = v104[1];
    if (!v69)
    {
      v70 = 0;
      v71 = 0;
    }
  }

  else
  {
    sub_10039DCC4(v105);
    v70 = 0;
    v71 = 0;
  }

  v72 = (v18 + v15[14]);
  *v72 = v70;
  v72[1] = v71;
  v106[0] = 0xD000000000000016;
  v106[1] = 0x80000001006CD4B0;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v73 = sub_1005223D0(v105), (v74 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v73, v106);
    sub_10039DCC4(v105);
    sub_1001F0C48(&unk_10077FB40);
    v75 = swift_dynamicCast();
    v76 = v104[0];
    if (!v75)
    {
      v76 = 0;
    }
  }

  else
  {
    sub_10039DCC4(v105);
    v76 = 0;
  }

  *(v18 + v15[15]) = v76;
  v104[0] = 1852793705;
  v104[1] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v77 = sub_1005223D0(v105), (v78 & 1) == 0))
  {
    sub_10039DCC4(v105);
    goto LABEL_61;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v77, v106);
  sub_10039DCC4(v105);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v79 = v15[7];
    v80 = type metadata accessor for URL();
    (*(*(v80 - 8) + 56))(v18 + v79, 1, 1, v80);
    goto LABEL_62;
  }

  URL.init(string:)();

LABEL_62:
  strcpy(v104, "genreID");
  v104[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v81 = sub_1005223D0(v105), (v82 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v81, v106);
    sub_10039DCC4(v105);
    if (swift_dynamicCast())
    {
      v83 = sub_1005D6CB4(v104[0], v104[1]);
      goto LABEL_68;
    }
  }

  else
  {
    sub_10039DCC4(v105);
  }

  v83 = 0;
  v84 = 1;
LABEL_68:
  v85 = v18 + v15[9];
  *v85 = v83;
  v85[8] = v84 & 1;
  strcpy(v106, "genreName");
  WORD1(v106[1]) = 0;
  HIDWORD(v106[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v86 = sub_1005223D0(v105), (v87 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v86, v106);
    sub_10039DCC4(v105);
    v88 = swift_dynamicCast();
    v89 = v104[0];
    v90 = v104[1];
    if (!v88)
    {
      v89 = 0;
      v90 = 0;
    }
  }

  else
  {
    sub_10039DCC4(v105);
    v89 = 0;
    v90 = 0;
  }

  v91 = (v18 + v15[10]);
  *v91 = v89;
  v91[1] = v90;
  strcpy(v106, "subgenres");
  WORD1(v106[1]) = 0;
  HIDWORD(v106[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v92 = sub_1005223D0(v105), (v93 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v92, v106);

    sub_10039DCC4(v105);

    sub_1001F0C48(&unk_100787970);
    v94 = swift_dynamicCast();
    v95 = v104[0];
    if (!v94)
    {
      v95 = 0;
    }
  }

  else
  {

    sub_10039DCC4(v105);
    v95 = 0;
  }

  *(v18 + v15[13]) = v95;
  sub_100222E54(v18, a3);
  v36 = 0;
  return (*(v16 + 56))(a3, v36, 1, v15);
}