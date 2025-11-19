uint64_t sub_10028621C()
{
  v0[3] = *(*sub_100006D8C((v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100286318;

  return (sub_10052EBA8)();
}

uint64_t sub_100286318()
{

  if (v0)
  {

    v1 = sub_100302F70;
  }

  else
  {

    v1 = sub_100286460;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002864D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.update(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100757FB0);
  sub_1002FC188(&unk_100757FD0);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A1198;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "pollForMediaAPIUpdates";
  *(v37 + 40) = 22;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A11A0;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A11A8, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_100286A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[12] = a6;
  v9 = type metadata accessor for DDMPollForUpdatesRequest();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_100286B3C, 0, 0);
}

uint64_t sub_100286B3C()
{
  sub_100302E04(&qword_10077FE50, &type metadata accessor for DDMPollForUpdatesRequest);
  sub_100302E04(&qword_10077FE58, &type metadata accessor for DDMPollForUpdatesRequest);
  decodeXPCValues<A>(from:)();
  v1 = *(v0 + 112);
  v2 = DDMPollForUpdatesRequest.isUserInitiated.getter();
  v3 = DDMPollForUpdatesRequest.shouldInitiateUpdates.getter();
  v4 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 40);
  v5 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 56);
  v6 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 96);
  v11 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24);
  v12 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 80);
  v7 = sub_100006D8C((v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), v11);
  *(v0 + 40) = v11;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v12;
  *(v0 + 88) = v6;
  v8 = sub_10020A748((v0 + 16));
  (*(*(v11 - 8) + 16))(v8, v7, v11);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100286D64;

  return sub_1004C2318(v2 & 1, v3 & 1, v0 + 16);
}

uint64_t sub_100286D64()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100286F00;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_100286E80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100286E80()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100286F00()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_10000710C((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_100286FB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100757FF0);
  sub_1002FC188(&unk_100758010);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A1168;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "setRestoreControl";
  *(v37 + 40) = 17;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A1170;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A1178, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_100287558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[123] = a8;
  v8[122] = a7;
  v8[121] = a6;
  v9 = type metadata accessor for Logger();
  v8[124] = v9;
  v8[125] = *(v9 - 8);
  v8[126] = swift_task_alloc();
  v8[127] = swift_task_alloc();
  v10 = type metadata accessor for DDMRestoreControlRequest();
  v8[128] = v10;
  v8[129] = *(v10 - 8);
  v8[130] = swift_task_alloc();

  return _swift_task_switch(sub_100287688, 0, 0);
}

uint64_t sub_100287688()
{
  sub_100302E04(&qword_10077FE40, &type metadata accessor for DDMRestoreControlRequest);
  sub_100302E04(&qword_10077FE48, &type metadata accessor for DDMRestoreControlRequest);
  decodeXPCValues<A>(from:)();
  if (DDMRestoreControlRequest.restoreState.getter())
  {
    static Logger.xpc.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Declaration ingestion resumed post restore", v3, 2u);
    }

    v4 = v0[126];
    v5 = v0[125];
    v6 = v0[124];

    (*(v5 + 8))(v4, v6);
    v7 = [objc_opt_self() standardUserDefaults];
    if (v7)
    {
      v8 = v7;
      v9 = String._bridgeToObjectiveC()();
      [v8 setBool:0 forKey:v9];
    }

    v10 = v0[123];
    v11 = swift_allocObject();
    v0[131] = v11;
    *(v11 + 16) = v10;
    v12 = v10;
    sub_1001F0C48(&unk_10077FE00);
    swift_asyncLet_begin();
    v13 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v0[132] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v0[133] = *(*sub_100006D8C(&v12[v13], *&v12[v13 + 24]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_journal);

    return _swift_asyncLet_get_throwing(v0 + 2, v0 + 101, sub_100287B00, v0 + 82);
  }

  else
  {
    static Logger.xpc.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Declaration ingestion paused during restore", v16, 2u);
    }

    v17 = v0[127];
    v18 = v0[125];
    v19 = v0[124];

    (*(v18 + 8))(v17, v19);
    v20 = [objc_opt_self() standardUserDefaults];
    if (v20)
    {
      v21 = v20;
      v22 = String._bridgeToObjectiveC()();
      [v21 setBool:1 forKey:v22];
    }

    (*(v0[129] + 8))(v0[130], v0[128]);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100287B00()
{
  *(v1 + 1072) = v0;
  if (v0)
  {
    v2 = sub_100287EAC;
  }

  else
  {
    v2 = sub_100287B34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100287B34()
{
  v1 = (*(v0 + 984) + *(v0 + 1056));
  sub_10020A980(v0 + 808, v0 + 888);
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[10];
  v5 = v1[12];
  v11 = *(v1 + 3);
  v6 = v1[3];
  v7 = sub_100006D8C(v1, v6);
  *(v0 + 720) = v11;
  *(v0 + 736) = v2;
  *(v0 + 744) = v3;
  *(v0 + 752) = v4;
  *(v0 + 760) = v5;
  v8 = sub_10020A748((v0 + 696));
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  v9 = swift_task_alloc();
  *(v0 + 1080) = v9;
  *v9 = v0;
  v9[1] = sub_100287C7C;

  return sub_1003266BC(v0 + 888, v0 + 696);
}

uint64_t sub_100287C7C()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    sub_10000710C(v2 + 888);

    return _swift_task_switch(sub_100287FE0, 0, 0);
  }

  else
  {
    sub_10000710C(v2 + 888);

    sub_10000710C(v2 + 696);

    return _swift_asyncLet_finish(v2 + 16, v2 + 808, sub_100287DEC, v2 + 928);
  }
}

uint64_t sub_100287E08()
{
  (*(v0[129] + 8))(v0[130], v0[128]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100287EAC()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 808, sub_100287F18, v0 + 768);
}

uint64_t sub_100287F34()
{
  (*(v0[129] + 8))(v0[130], v0[128]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100287FE0()
{
  sub_10000710C(v0 + 696);

  return _swift_asyncLet_finish(v0 + 16, v0 + 808, sub_10028804C, v0 + 848);
}

uint64_t sub_100288068()
{
  (*(v0[129] + 8))(v0[130], v0[128]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100288114(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100324268(a1);
}

uint64_t sub_1002881F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100758030);
  sub_1002FC188(&unk_100758050);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1140;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "Install Enterprise Manifest";
  *(v35 + 40) = 27;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 0;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A1148;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A1150, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_100288744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[12] = a6;
  sub_1001F0C48(&qword_10077FE28);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for EnterpriseIngestTask(0);
  v8[17] = swift_task_alloc();
  type metadata accessor for URL();
  v8[18] = swift_task_alloc();
  type metadata accessor for EnterpriseApp();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v9 = type metadata accessor for LogKey.Prefix();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for InstallEnterpriseManifestRequest();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();

  return _swift_task_switch(sub_100288930, 0, 0);
}

uint64_t sub_100288930()
{
  sub_100302E04(&qword_10077FE30, &type metadata accessor for InstallEnterpriseManifestRequest);
  sub_100302E04(&qword_10077FE38, &type metadata accessor for InstallEnterpriseManifestRequest);
  decodeXPCValues<A>(from:)();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = enum case for LogKey.Prefix.ddm(_:);
  v5 = *(v1 + 104);
  v0[27] = v5;
  v0[28] = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v2, v4, v3);
  v6 = type metadata accessor for LogKey();
  v0[29] = v6;
  v7 = objc_allocWithZone(v6);
  v8 = LogKey.init(prefix:)();
  v0[30] = v8;
  InstallEnterpriseManifestRequest.manifestURL.getter();
  v9 = [objc_opt_self() ephemeralSessionConfiguration];
  [v9 setHTTPShouldSetCookies:0];
  [v9 setHTTPCookieAcceptPolicy:1];
  [v9 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v10 = [objc_opt_self() sessionWithConfiguration:v9];

  type metadata accessor for PlainHTTP();
  inited = swift_initStackObject();
  v0[31] = inited;
  *(inited + 24) = 1;
  *(inited + 16) = v10;
  v12 = v8;
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_100288C30;
  v14 = v0[20];
  v15 = v0[18];

  return sub_10035562C(v14, v15, inited, v12);
}

uint64_t sub_100288C30()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1002891D0;
  }

  else
  {
    v2 = sub_100288D44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100288D44()
{
  v18 = v0[29];
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v19 = v0[14];
  sub_10030173C(v0[20], v4, type metadata accessor for EnterpriseApp);
  static Platform.iOS.getter();
  v8 = type metadata accessor for Platform();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_10030173C(v4, v5, type metadata accessor for EnterpriseApp);
  sub_100005934(v7, v5 + *(v6 + 20), &qword_10077FE28);
  v1(v2, enum case for LogKey.Prefix.manifest(_:), v3);
  v9 = objc_allocWithZone(v18);
  v10 = LogKey.init(prefix:)();
  sub_1000032A8(v7, &qword_10077FE28);
  sub_1003017A4(v4, type metadata accessor for EnterpriseApp);
  *(v5 + *(v6 + 24)) = v10;
  v11 = *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24);
  v12 = *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 40);
  v13 = *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 56);
  v14 = sub_100006D8C((v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), v11);
  v0[5] = v11;
  v0[6] = v12;
  v0[7] = v13;
  v15 = sub_10020A748(v0 + 2);
  (*(*(v11 - 8) + 16))(v15, v14, v11);
  v16 = swift_task_alloc();
  v0[34] = v16;
  *v16 = v0;
  v16[1] = sub_100288F94;

  return sub_1003528A8((v0 + 2));
}

uint64_t sub_100288F94()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1002892B4;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002890B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002890B0()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);

  sub_1003017A4(v5, type metadata accessor for EnterpriseIngestTask);
  sub_1003017A4(v4, type metadata accessor for EnterpriseApp);
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002891D0()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002892B4()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);

  sub_1003017A4(v5, type metadata accessor for EnterpriseIngestTask);
  sub_1003017A4(v4, type metadata accessor for EnterpriseApp);
  (*(v2 + 8))(v1, v3);
  sub_10000710C(v0 + 16);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100289414(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100758070);
  sub_1002FC188(&unk_100758090);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A1108;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Install ManagedApp";
  *(v37 + 40) = 18;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A1110;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A1118, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_1002899B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[153] = a8;
  v8[152] = a7;
  v8[151] = a6;
  sub_1001F0C48(&unk_100780380);
  v8[154] = swift_task_alloc();
  v9 = type metadata accessor for DDMPurchaseMethod();
  v8[155] = v9;
  v8[156] = *(v9 - 8);
  v8[157] = swift_task_alloc();
  v10 = type metadata accessor for DDMDeclaration(0);
  v8[158] = v10;
  v11 = *(v10 - 8);
  v8[159] = v11;
  v8[160] = *(v11 + 64);
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[163] = v12;
  v8[164] = *(v12 - 8);
  v8[165] = swift_task_alloc();
  v8[166] = swift_task_alloc();
  v8[167] = swift_task_alloc();
  v8[168] = swift_task_alloc();
  v8[169] = swift_task_alloc();
  v8[170] = swift_task_alloc();
  v13 = type metadata accessor for ManagedAppInstallRequest();
  v8[171] = v13;
  v8[172] = *(v13 - 8);
  v8[173] = swift_task_alloc();

  return _swift_task_switch(sub_100289C18, 0, 0);
}

uint64_t sub_100289C18()
{
  v36 = v0;
  sub_100302E04(&qword_10077FE10, &type metadata accessor for ManagedAppInstallRequest);
  sub_100302E04(&qword_10077FE18, &type metadata accessor for ManagedAppInstallRequest);
  decodeXPCValues<A>(from:)();
  v2 = ManagedAppInstallRequest.declarationIdentifier.getter();
  v0[174] = v2;
  v0[175] = v3;
  if (v3)
  {
    v4 = v3;
    v34 = v2;
    v5 = v0[153];
    v6 = swift_allocObject();
    v0[176] = v6;
    *(v6 + 16) = v5;
    v7 = v5;
    sub_1001F0C48(&unk_10077FE00);
    swift_asyncLet_begin();
    static Logger.ddm.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[170];
    v12 = v0[164];
    v13 = v0[163];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v14 = 138412546;
      v17 = sub_100625FA0();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_1002346CC(v34, v4, &v35);
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Requested install of %{public}s", v14, 0x16u);
      sub_1000032A8(v15, &qword_10077F920);

      sub_10000710C(v16);
    }

    v18 = *(v12 + 8);
    v18(v11, v13);
    v0[177] = v18;
    v19 = v0[153];
    v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v0[178] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v21 = *(*sub_100006D8C((v19 + v20), *(v19 + v20 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    v0[179] = v21;

    return _swift_task_switch(sub_10028A19C, v21, 0);
  }

  else
  {
    static Logger.xpc.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = sub_100625FA0();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] validateHostApp succeeded", v24, 0xCu);
      sub_1000032A8(v25, &qword_10077F920);
    }

    v27 = v0[173];
    v28 = v0[172];
    v29 = v0[171];
    v30 = v0[165];
    v31 = v0[164];
    v32 = v0[163];

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_10028A19C()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = *(v0[179] + 112);
  v4 = swift_task_alloc();
  v0[180] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[181] = v5;
  *v5 = v0;
  v5[1] = sub_10028A290;
  v6 = v0[162];

  return (sub_1003B0094)(v6, sub_100302FC0, v4, v3);
}

uint64_t sub_10028A290()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  v3 = *(v2 + 1432);
  if (v0)
  {

    v4 = sub_10028A58C;
    v5 = v3;
  }

  else
  {

    v4 = sub_10028A424;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10028A424()
{
  v1 = (*(v0 + 1224) + *(v0 + 1424));
  *(v0 + 1464) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);

  *(v0 + 1696) = ManagedAppInstallRequest.userInitiated.getter() & 1;
  *(v0 + 1697) = ManagedAppInstallRequest.userInitiated.getter() & 1;
  *(v0 + 1472) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 984, sub_10028A500, v0 + 768);
}

uint64_t sub_10028A500()
{
  *(v1 + 1480) = v0;
  if (v0)
  {

    v2 = sub_10028C780;
  }

  else
  {
    v2 = sub_10028A75C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028A58C()
{

  return _swift_task_switch(sub_10028A5F4, 0, 0);
}

uint64_t sub_10028A630()
{
  (*(v0[172] + 8))(v0[173], v0[171]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10028A75C()
{
  v1 = *(v0 + 1464);
  v2 = (*(v0 + 1224) + *(v0 + 1424));
  v13 = *(v0 + 1008);
  v3 = *(v0 + 1008);
  v4 = sub_100006D8C((v0 + 984), v3);
  *(v0 + 1088) = v13;
  v5 = sub_10020A748((v0 + 1064));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  v6 = v2[3];
  *(v0 + 1488) = v6;
  v7 = v2[4];
  *(v0 + 1496) = v7;
  v8 = v2[5];
  *(v0 + 1504) = v8;
  v9 = v2[7];
  *(v0 + 1512) = v9;
  v10 = v2[10];
  *(v0 + 1520) = v10;
  v11 = v2[12];
  *(v0 + 1528) = v11;
  sub_100006D8C(v2, v6);
  *(v0 + 720) = v6;
  *(v0 + 728) = v7;
  *(v0 + 736) = v8;
  *(v0 + 744) = v9;
  *(v0 + 752) = v10;
  *(v0 + 760) = v11;
  *(v0 + 1536) = sub_10020A748((v0 + 696));
  (*(*(v6 - 8) + 16))();

  return _swift_task_switch(sub_10028A8DC, v1, 0);
}

uint64_t sub_10028A8DC()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  (*(v2 + 16))(v1, *(v0 + 1296) + *(*(v0 + 1264) + 100), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for DDMPurchaseMethod.volumePurchaseProgram(_:) && v4 != enum case for DDMPurchaseMethod.manifest(_:))
  {
    if (v4 != enum case for DDMPurchaseMethod.preInstalled(_:) && v4 != enum case for DDMPurchaseMethod.other(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    sub_10000710C(v0 + 696);
    sub_10000710C(v0 + 1064);
    v24 = sub_10028B070;
    v25 = 0;
    goto LABEL_27;
  }

  v6 = *(v0 + 1296);
  sub_100006190(0, &qword_100784500);
  v7 = *(v6 + 48);
  *(v0 + 1544) = v7;
  v8 = *(v6 + 56);
  *(v0 + 1552) = v8;
  v9 = sub_10060BC54(v7, v8, 0, 0, 0);
  v10 = v9;
  *(v0 + 1560) = v9;
  if (v9)
  {
    v11 = v9;
    v12 = sub_10060D18C();
    if (v12 && (v13 = v12, v14 = [v12 managementDeclarationIdentifier], v13, v14))
    {
      v15 = *(v0 + 1296);
      v16 = *(v0 + 1264);
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = (v15 + *(v16 + 52));
      if (v17 == *v20 && v19 == v20[1])
      {

LABEL_31:
        static Logger.ddm.getter();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          v34 = sub_100625FA0();
          *(v32 + 4) = v34;
          *v33 = v34;
          _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Performing update to existing installed application", v32, 0xCu);
          sub_1000032A8(v33, &qword_10077F920);
        }

        v35 = *(v0 + 1696);
        v36 = *(v0 + 1416);
        v37 = *(v0 + 1352);
        v38 = *(v0 + 1304);

        v36(v37, v38);
        v39 = *(v0 + 720);
        v45 = *(v0 + 752);
        v46 = *(v0 + 736);
        v40 = sub_100006D8C((v0 + 696), v39);
        *(v0 + 944) = v39;
        *(v0 + 952) = v46;
        *(v0 + 968) = v45;
        v41 = sub_10020A748((v0 + 920));
        (*(*(v39 - 8) + 16))(v41, v40, v39);
        v42 = swift_task_alloc();
        *(v0 + 1568) = v42;
        *v42 = v0;
        v42[1] = sub_10028AE30;
        v43 = *(v0 + 1697);
        v44 = *(v0 + 1296);

        return sub_10024A810(v44, v11, v43, (v35 & 1) == 0, v0 + 1064, v0 + 920);
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  if (*(*(v0 + 1296) + *(*(v0 + 1264) + 60)) != 1)
  {
    v25 = *(v0 + 1464);
    v24 = sub_10028B628;
LABEL_27:

    return _swift_task_switch(v24, v25, 0);
  }

  v27 = *(*sub_100006D8C((v0 + 696), *(v0 + 720)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  *(v0 + 1592) = v27;

  v28 = swift_task_alloc();
  *(v0 + 1600) = v28;
  *v28 = v0;
  v28[1] = sub_10028B40C;
  v29 = *(v0 + 1296);

  return sub_1003E2160(v29, v10, v27);
}

uint64_t sub_10028AE30()
{
  v2 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    v3 = *(v2 + 1464);
    v4 = sub_10028AFE4;
  }

  else
  {
    v5 = *(v2 + 1464);
    sub_10000710C(v2 + 920);
    v4 = sub_10028AF58;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10028AF58()
{
  v1 = *(v0 + 1560);

  sub_10000710C(v0 + 696);
  sub_10000710C(v0 + 1064);

  return _swift_task_switch(sub_10028B070, 0, 0);
}

uint64_t sub_10028AFE4()
{
  v1 = v0[195];

  sub_10000710C((v0 + 115));
  v0[198] = v0[197];

  return _swift_task_switch(sub_10028B234, 0, 0);
}

uint64_t sub_10028B070()
{
  sub_1003017A4(*(v0 + 1296), type metadata accessor for DDMDeclaration);

  return _swift_asyncLet_finish(v0 + 16, v0 + 984, sub_10028B0F0, v0 + 1024);
}

uint64_t sub_10028B10C()
{
  (*(v0[172] + 8))(v0[173], v0[171]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10028B234()
{
  sub_1003017A4(*(v0 + 1296), type metadata accessor for DDMDeclaration);
  sub_10000710C(v0 + 696);
  sub_10000710C(v0 + 1064);

  return _swift_asyncLet_finish(v0 + 16, v0 + 984, sub_10028B2C4, v0 + 1104);
}

uint64_t sub_10028B2E0()
{
  (*(v0[172] + 8))(v0[173], v0[171]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10028B40C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = v6[183];
    v6[201] = a2;
    v6[202] = a1;

    v8 = sub_10028B568;
    v9 = v7;
  }

  else
  {

    v9 = v6[183];
    v8 = sub_10028B628;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10028B568()
{
  v1 = v0[202];
  v2 = v0[201];
  v3 = v0[195];
  sub_100270870();
  v4 = swift_allocError();
  *v5 = v1;
  v5[1] = v2;

  v0[198] = v4;

  return _swift_task_switch(sub_10028B234, 0, 0);
}

uint64_t sub_10028B628()
{
  v1 = *(*sub_100006D8C(v0 + 87, v0[90]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v0[203] = v1;

  return _swift_task_switch(sub_10028B6B8, v1, 0);
}

uint64_t sub_10028B6B8()
{
  v1 = v0[194];
  v2 = v0[193];
  v3 = *(v0[203] + 112);
  v4 = swift_task_alloc();
  v0[204] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[205] = v5;
  *v5 = v0;
  v5[1] = sub_10028B7A4;

  return (sub_1003AE648)(sub_1002716D8, v4, v3);
}

uint64_t sub_10028B7A4(char a1)
{
  v4 = *v2;
  *(v4 + 1648) = v1;

  v5 = *(v4 + 1624);
  if (v1)
  {

    v6 = sub_10028BE04;
  }

  else
  {
    *(v4 + 1698) = a1 & 1;

    v6 = sub_10028B904;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10028B904()
{
  v1 = *(v0 + 1464);

  return _swift_task_switch(sub_10028B970, v1, 0);
}

uint64_t sub_10028B970()
{
  if (*(v0 + 1698) == 1)
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

    v6 = *(v0 + 1416);
    v7 = *(v0 + 1344);
    v8 = *(v0 + 1304);

    v6(v7, v8);
    v9 = *(v0 + 1560);

    sub_10000710C(v0 + 696);
    sub_10000710C(v0 + 1064);

    return _swift_task_switch(sub_10028B070, 0, 0);
  }

  else
  {
    v10 = *(v0 + 1560);
    if (v10)
    {
      v11 = v10;
      static Logger.ddm.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = sub_100625FA0();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%@] An app matching the declaration is already installed", v14, 0xCu);
        sub_1000032A8(v15, &qword_10077F920);
      }

      v17 = *(v0 + 1416);
      v18 = *(v0 + 1336);
      v19 = *(v0 + 1304);

      v17(v18, v19);
      v20 = swift_task_alloc();
      *(v0 + 1656) = v20;
      *v20 = v0;
      v20[1] = sub_10028BEFC;
      v21 = *(v0 + 1472);
      v22 = *(v0 + 1697);
      v23 = *(v0 + 1296);

      return sub_100248420(v23, v22, v11, v21, v0 + 1064, v0 + 696);
    }

    else
    {
      static Logger.ddm.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = sub_100625FA0();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "[%@] App is not installed, requesting install for required declaration", v26, 0xCu);
        sub_1000032A8(v27, &qword_10077F920);
      }

      v29 = *(v0 + 1416);
      v30 = *(v0 + 1328);
      v31 = *(v0 + 1304);

      v29(v30, v31);
      v32 = sub_100625FA0();
      *(v0 + 1672) = v32;
      v33 = swift_task_alloc();
      *(v0 + 1680) = v33;
      *v33 = v0;
      v33[1] = sub_10028C150;
      v34 = *(v0 + 1296);

      return sub_100307250(v34, 1, v32);
    }
  }
}

uint64_t sub_10028BE04()
{
  v1 = *(v0 + 1464);

  return _swift_task_switch(sub_10028BE70, v1, 0);
}

uint64_t sub_10028BE70()
{
  v1 = v0[195];
  v2 = v0[206];

  v0[198] = v2;

  return _swift_task_switch(sub_10028B234, 0, 0);
}

uint64_t sub_10028BEFC()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1464);
  if (v0)
  {
    v4 = sub_10028C0BC;
  }

  else
  {
    v4 = sub_10028C028;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10028C028()
{
  v1 = *(v0 + 1560);

  sub_10000710C(v0 + 696);
  sub_10000710C(v0 + 1064);

  return _swift_task_switch(sub_10028B070, 0, 0);
}

uint64_t sub_10028C0BC()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1560);

  *(v0 + 1584) = v1;

  return _swift_task_switch(sub_10028B234, 0, 0);
}

uint64_t sub_10028C150()
{
  v1 = *v0;
  v2 = *(*v0 + 1672);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[211] = v4;
  *v4 = v3;
  v4[1] = sub_10028C368;
  v5 = v1[194];
  v6 = v1[193];
  v7 = v1[192];
  v8 = v1[189];
  v9 = v1[188];
  v10 = v1[187];
  v11 = v1[186];
  v12 = v1[183];

  return sub_10026FABC(v6, v5, v7, v12, v11, v10, v9, v8);
}

uint64_t sub_10028C368()
{
  v1 = *(*v0 + 1464);

  return _swift_task_switch(sub_10028C478, v1, 0);
}

uint64_t sub_10028C478()
{
  v21 = *(v0 + 1696);
  v22 = *(v0 + 1697);
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1272);
  v6 = *(v0 + 1232);
  v7 = (v2 + *(*(v0 + 1264) + 52));
  v24 = *v7;
  v23 = v7[1];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_10030173C(v2, v3, type metadata accessor for DDMDeclaration);
  sub_10020A980(v0 + 1064, v0 + 1144);
  sub_10026FE78(v0 + 696, v0 + 808);
  v9 = sub_100302E04(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = v10 + v4;
  v12 = (v10 + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v9;
  v14[4] = v1;
  sub_100301488(v3, v14 + v10, type metadata accessor for DDMDeclaration);
  v15 = v14 + v11;
  *v15 = v22;
  v15[1] = (v21 & 1) == 0;
  sub_1001DFDBC((v0 + 1144), v14 + v12);
  *(v14 + v13) = 0;
  sub_10026FEE4(v0 + 808, v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();

  v16 = sub_1002FBE70(0, 0, v6, 0, 0, &unk_1006A1130, v14);

  sub_1000032A8(v6, &unk_100780380);
  v17 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + v17);
  *(v1 + v17) = 0x8000000000000000;
  sub_1005C26B4(v16, v24, v23, isUniquelyReferenced_nonNull_native);

  *(v1 + v17) = v25;
  swift_endAccess();
  v19 = *(v0 + 1560);

  sub_10000710C(v0 + 696);
  sub_10000710C(v0 + 1064);

  return _swift_task_switch(sub_10028B070, 0, 0);
}

uint64_t sub_10028C780()
{
  sub_1003017A4(*(v0 + 1296), type metadata accessor for DDMDeclaration);

  return _swift_asyncLet_finish(v0 + 16, v0 + 984, sub_10028C800, v0 + 880);
}

uint64_t sub_10028C81C()
{
  (*(v0[172] + 8))(v0[173], v0[171]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10028C948(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001F0E54;

  return sub_100324268(a1);
}

uint64_t sub_10028CA2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_1007580B0);
  sub_1002FC188(&unk_1007580D0);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A10C8;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Install ManagedApp (Internal)";
  *(v37 + 40) = 29;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A10D0;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A10D8, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_10028CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  v8[121] = a3;
  v8[115] = a2;
  v8[127] = type metadata accessor for ManagedAppInstallationTask();
  v8[128] = swift_task_alloc();
  v8[129] = type metadata accessor for DDMDeclaration(0);
  v8[130] = swift_task_alloc();
  v9 = type metadata accessor for InternalManagedAppInstallRequest();
  v8[131] = v9;
  v8[132] = *(v9 - 8);
  v8[133] = swift_task_alloc();

  return _swift_task_switch(sub_10028D104, 0, 0);
}

uint64_t sub_10028D104()
{
  if (!os_variant_has_internal_content() || (v1 = audit_token_t.signingIdentifier.getter(v0[115], v0[121], v0[122], v0[123]), !v2))
  {
LABEL_8:
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  if (v1 == 0xD000000000000010 && v2 == 0x80000001006C5750)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_100302E04(&qword_10077FDE8, &type metadata accessor for InternalManagedAppInstallRequest);
  sub_100302E04(&unk_10077FDF0, &type metadata accessor for InternalManagedAppInstallRequest);
  decodeXPCValues<A>(from:)();
  v7 = v0[126];
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v0[134] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v9 = *(*sub_100006D8C((v7 + v8), *(v7 + v8 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v0[135] = v9;

  v0[136] = InternalManagedAppInstallRequest.declarationID.getter();
  v0[137] = v10;

  return _swift_task_switch(sub_10028D3A4, v9, 0);
}

uint64_t sub_10028D3A4()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = *(v0[135] + 112);
  v4 = swift_task_alloc();
  v0[138] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[139] = v5;
  *v5 = v0;
  v5[1] = sub_10028D498;
  v6 = v0[130];

  return (sub_1003B0094)(v6, sub_10030124C, v4, v3);
}

uint64_t sub_10028D498()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  v3 = *(v2 + 1080);

  if (v0)
  {

    v4 = sub_10028D618;
    v5 = v3;
  }

  else
  {

    v4 = sub_10028D720;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10028D618()
{

  return _swift_task_switch(sub_10028D680, 0, 0);
}

uint64_t sub_10028D680()
{
  (*(v0[132] + 8))(v0[133], v0[131]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10028D720()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = sub_100625FA0();
  sub_1001F0C48(&qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10069E680;
  v5 = *(v1 + 56);
  *(v4 + 32) = *(v1 + 48);
  *(v4 + 40) = v5;

  v0[141] = LogKey.appending(_:)();

  sub_100006190(0, &qword_100784500);
  v6 = sub_10060C720(*(v1 + *(v2 + 52)), *(v1 + *(v2 + 52) + 8));
  v0[142] = v6;
  if (*(v1 + *(v2 + 60)) == 1)
  {
    v7 = v6;
    v8 = (v0[126] + v0[134]);
    v9 = *(*sub_100006D8C(v8, v8[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
    v0[143] = v9;

    v10 = swift_task_alloc();
    v0[144] = v10;
    *v10 = v0;
    v10[1] = sub_10028DAD4;
    v11 = v0[130];

    return sub_1003E2160(v11, v7, v9);
  }

  else
  {
    v13 = v0[141];
    v14 = v0[130];
    v15 = v0[128];
    v16 = v0[127];
    v17 = v0[126];
    v18 = swift_allocObject();
    v0[145] = v18;
    *(v18 + 16) = v17;
    v19 = v17;
    sub_1001F0C48(&unk_10077FE00);
    swift_asyncLet_begin();
    sub_10030173C(v14, v15, type metadata accessor for DDMDeclaration);
    v30 = InternalManagedAppInstallRequest.userInitiated.getter();
    v20 = objc_opt_self();
    v21 = v13;
    v22 = [v20 ephemeralSessionConfiguration];
    [v22 setHTTPShouldSetCookies:0];
    [v22 setHTTPCookieAcceptPolicy:1];
    [v22 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v23 = [objc_opt_self() sessionWithConfiguration:v22];

    type metadata accessor for PlainHTTP();
    v24 = swift_allocObject();
    *(v24 + 24) = 1;
    *(v24 + 16) = v23;
    v25 = InternalManagedAppInstallRequest.externalVersionID.getter();
    v27 = v26;
    v28 = InternalManagedAppInstallRequest.userInitiated.getter();
    *(v15 + v16[6]) = v30 & 1;
    *(v15 + v16[7]) = v21;
    *(v15 + v16[5]) = v24;
    v29 = v15 + v16[8];
    *v29 = v25;
    *(v29 + 8) = v27 & 1;
    *(v15 + v16[9]) = (v28 & 1) == 0;
    *(v15 + v16[10]) = 0;

    return _swift_asyncLet_get_throwing(v0 + 2, v0 + 95, sub_10028DE70, v0 + 82);
  }
}

uint64_t sub_10028DAD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    *(v6 + 1192) = a2;
    *(v6 + 1200) = a1;

    v7 = sub_10028E2E4;
  }

  else
  {

    v7 = sub_10028DC20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10028DC20()
{
  v1 = v0[141];
  v2 = v0[130];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];
  v6 = swift_allocObject();
  v0[145] = v6;
  *(v6 + 16) = v5;
  v7 = v5;
  sub_1001F0C48(&unk_10077FE00);
  swift_asyncLet_begin();
  sub_10030173C(v2, v3, type metadata accessor for DDMDeclaration);
  v19 = InternalManagedAppInstallRequest.userInitiated.getter();
  v8 = objc_opt_self();
  v9 = v1;
  v10 = [v8 ephemeralSessionConfiguration];
  [v10 setHTTPShouldSetCookies:0];
  [v10 setHTTPCookieAcceptPolicy:1];
  [v10 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v11 = [objc_opt_self() sessionWithConfiguration:v10];

  type metadata accessor for PlainHTTP();
  v12 = swift_allocObject();
  *(v12 + 24) = 1;
  *(v12 + 16) = v11;
  v13 = InternalManagedAppInstallRequest.externalVersionID.getter();
  v15 = v14;
  v16 = InternalManagedAppInstallRequest.userInitiated.getter();
  *(v3 + v4[6]) = v19 & 1;
  *(v3 + v4[7]) = v9;
  *(v3 + v4[5]) = v12;
  v17 = v3 + v4[8];
  *v17 = v13;
  *(v17 + 8) = v15 & 1;
  *(v3 + v4[9]) = (v16 & 1) == 0;
  *(v3 + v4[10]) = 0;

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 95, sub_10028DE70, v0 + 82);
}

uint64_t sub_10028DE70()
{
  *(v1 + 1168) = v0;
  if (v0)
  {
    v2 = sub_10028E400;
  }

  else
  {
    v2 = sub_10028DEA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028DEA4()
{
  v1 = (*(v0 + 1008) + *(v0 + 1072));
  v15 = *(v0 + 784);
  v2 = *(v0 + 784);
  v3 = sub_100006D8C((v0 + 760), v2);
  *(v0 + 864) = v15;
  v4 = sub_10020A748((v0 + 840));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[7];
  v8 = v1[10];
  v9 = v1[12];
  v10 = sub_100006D8C(v1, v5);
  *(v0 + 720) = v5;
  *(v0 + 728) = v6;
  *(v0 + 736) = v7;
  *(v0 + 744) = v8;
  *(v0 + 752) = v9;
  v11 = sub_10020A748((v0 + 696));
  (*(*(v5 - 8) + 16))(v11, v10, v5);
  v12 = swift_task_alloc();
  *(v0 + 1176) = v12;
  *v12 = v0;
  v12[1] = sub_10028E034;
  v13 = *(v0 + 1136);

  return sub_1004B5EE8(v0 + 840, v13, v0 + 696);
}

uint64_t sub_10028E034()
{
  v2 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v3 = sub_10028E588;
  }

  else
  {
    sub_10000710C(v2 + 696);
    sub_10000710C(v2 + 840);
    v3 = sub_10028E158;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028E158()
{
  sub_1003017A4(*(v0 + 1024), type metadata accessor for ManagedAppInstallationTask);

  return _swift_asyncLet_finish(v0 + 16, v0 + 760, sub_10028E1D8, v0 + 928);
}

uint64_t sub_10028E1F4()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_1003017A4(v5, type metadata accessor for DDMDeclaration);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028E2E4()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  sub_100270870();
  swift_allocError();
  *v9 = v1;
  v9[1] = v2;

  (*(v6 + 8))(v5, v7);
  sub_1003017A4(v8, type metadata accessor for DDMDeclaration);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10028E400()
{
  sub_1003017A4(*(v0 + 1024), type metadata accessor for ManagedAppInstallationTask);

  return _swift_asyncLet_finish(v0 + 16, v0 + 760, sub_10028E480, v0 + 800);
}

uint64_t sub_10028E49C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_1003017A4(v5, type metadata accessor for DDMDeclaration);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028E588()
{
  sub_1003017A4(*(v0 + 1024), type metadata accessor for ManagedAppInstallationTask);
  sub_10000710C(v0 + 696);
  sub_10000710C(v0 + 840);

  return _swift_asyncLet_finish(v0 + 16, v0 + 760, sub_10028E618, v0 + 880);
}

uint64_t sub_10028E634()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_1003017A4(v5, type metadata accessor for DDMDeclaration);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028E788(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100758130);
  sub_1002FC188(&unk_100758150);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1098;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "Cancel ManagedApp";
  *(v35 + 40) = 17;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 0;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A10A0;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A10A8, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_10028ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[6] = a6;
  v9 = type metadata accessor for UUID();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = type metadata accessor for ManagedAppCancelRequest();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10028EEAC, 0, 0);
}

uint64_t sub_10028EEAC()
{
  v33 = v0;
  sub_100302E04(&qword_10077FDA0, &type metadata accessor for ManagedAppCancelRequest);
  sub_100302E04(&qword_10077FDA8, &type metadata accessor for ManagedAppCancelRequest);
  decodeXPCValues<A>(from:)();
  v2 = ManagedAppCancelRequest.declarationIdentifier.getter();
  v0[22] = v2;
  v0[23] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    static Logger.ddm.getter();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1002346CC(v4, v5, &v32);
      _os_log_impl(&_mh_execute_header, v6, v7, "Requested cancel of %{public}s", v12, 0xCu);
      sub_10000710C(v13);
    }

    v14 = *(v11 + 8);
    v14(v9, v10);
    v15 = v0[8];
    v16 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v0[24] = v14;
    v0[25] = v16;
    v17 = *(*sub_100006D8C((v15 + v16), *(v15 + v16 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    v0[26] = v17;
    v18 = swift_task_alloc();
    v0[27] = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = v5;

    v19 = swift_task_alloc();
    v0[28] = v19;
    *v19 = v0;
    v19[1] = sub_10028F314;
    v20 = v0[13];

    return sub_1003B1528(v20, sub_100301150, v18, v17);
  }

  else
  {
    static Logger.xpc.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[20];
    v24 = v0[21];
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[14];
    v29 = v0[15];
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "validateHostApp succeeded", v30, 2u);
    }

    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_10028F314()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10028F8D8;
  }

  else
  {
    v2 = sub_10028F464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028F464()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_100005934(v0[13], v1, &unk_100780A00);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v8 = v0[12];
    v7 = v0[13];

    sub_1000032A8(v7, &unk_100780A00);
    (*(v5 + 8))(v4, v6);
    sub_1000032A8(v8, &unk_100780A00);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = (v0[8] + v0[25]);
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v0[30] = *(*sub_100006D8C(v11, v11[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

    v12 = swift_task_alloc();
    v0[31] = v12;
    *v12 = v0;
    v12[1] = sub_10028F68C;
    v13 = v0[11];

    return sub_100532D58(v13);
  }
}

uint64_t sub_10028F68C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10028FBF0;
  }

  else
  {

    v2 = sub_10028F7D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028F7D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_1000032A8(v4, &unk_100780A00);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10028F8D8()
{
  v24 = v0;
  static Logger.xpc.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = v0[22];
    v21 = v0[16];
    v22 = v0[24];
    v20 = v0[14];
    v5 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_1002346CC(v4, v3, v23);

    *(v5 + 4) = v6;
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v7 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = String.init<A>(describing:)();
    v10 = v9;

    v11 = sub_1002346CC(v8, v10, v23);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to cancel installation for declaration '%{public}s: %{public}s", v5, 0x16u);
    swift_arrayDestroy();

    v22(v21, v20);
  }

  else
  {
    v12 = v0[24];
    v13 = v0[16];
    v14 = v0[14];

    v12(v13, v14);
  }

  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10028FBF0()
{
  v25 = v0;
  v1 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_1000032A8(v1, &unk_100780A00);
  static Logger.xpc.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = v0[22];
    v22 = v0[16];
    v23 = v0[24];
    v21 = v0[14];
    v6 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v6 = 136446466;
    v7 = sub_1002346CC(v5, v4, v24);

    *(v6 + 4) = v7;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = String.init<A>(describing:)();
    v11 = v10;

    v12 = sub_1002346CC(v9, v11, v24);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to cancel installation for declaration '%{public}s: %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    v23(v22, v21);
  }

  else
  {
    v13 = v0[24];
    v14 = v0[16];
    v15 = v0[14];

    v13(v14, v15);
  }

  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];
  swift_willThrow();
  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19();
}

void sub_10028FF3C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = sub_100290020(a2, a3);
  v7 = sub_100563BA8(0, 0, v6, sub_100563B34, 0, v5);

  if (v7)
  {
    v8 = v7;
    sub_100535A10(v8, a4);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void *sub_100290020(uint64_t a1, uint64_t a2)
{
  v14 = sub_1001F0C48(&unk_10077FDB0);
  v15 = sub_100213FA0(&unk_1007843D0, &unk_10077FDB0);
  LOWORD(v12) = 10;
  *(&v12 + 1) = a1;
  v13 = a2;
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

void sub_10029025C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(a6, v16);

  sub_100007158(v13, v15);
}

uint64_t sub_100290330(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F0C48(&unk_100780380);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = sub_1001F0C48(&qword_10077F8D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for LogKey.Prefix();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v49 = swift_allocObject();
  *(v49 + 16) = v3;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = objc_opt_self();
  v20 = v3;
  v21 = [v19 currentConnection];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v24 = swift_dynamicCast();
    v25 = v55;
    if (!v24)
    {
      v25 = 0;
    }

    v48 = v25;
    [v22 auditToken];
    v43 = v54;
    v45 = v53;
  }

  else
  {
    v48 = 0;
    v45 = 0u;
    v43 = 0u;
  }

  v56 = v22 == 0;
  sub_100005934(v9, v7, &unk_100780380);
  sub_100005934(v16, v14, &qword_10077F8D0);
  v26 = *(v11 + 80);
  v46 = v9;
  v47 = v16;
  v27 = (v26 + 49) & ~v26;
  v28 = v27 + v12;
  v29 = (v27 + v12) & 0xFFFFFFFFFFFFFFF8;
  v44 = v22;
  v30 = (v29 + 75) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = v7;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = "daemonInstanceIdentifier";
  *(v32 + 40) = 24;
  *(v32 + 48) = 2;
  sub_10020A668(v14, v32 + v27, &qword_10077F8D0);
  *(v32 + v28) = 0;
  *(v32 + v29 + 8) = v48;
  v33 = v32 + ((v29 + 19) & 0xFFFFFFFFFFFFFFF8);
  v34 = v43;
  *v33 = v45;
  *(v33 + 16) = v34;
  *(v33 + 32) = v56;
  v35 = v32 + ((v29 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v35 = &_swiftEmptySetSingleton;
  *(v35 + 8) = 1;
  v36 = (v32 + v30);
  v37 = v49;
  *v36 = &unk_1006A1070;
  v36[1] = v37;
  v38 = (v32 + v31);
  v39 = v52;
  *v38 = v51;
  v38[1] = v39;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v42, &unk_1006A1078, v32);

  swift_unknownObjectRelease();

  sub_1000032A8(v46, &unk_100780380);
  return sub_1000032A8(v47, &qword_10077F8D0);
}

uint64_t sub_1002907FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a7;
  return _swift_task_switch(sub_10029081C, 0, 0);
}

uint64_t sub_10029087C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_1001F0C48(&unk_100780380);
  v9 = __chkstk_darwin(v8 - 8);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = enum case for LogKey.Prefix.internal(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  v21 = *(v20 + 56);
  v55 = v17;
  v21(v17, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v4;
  v22[5] = ObjectType;
  v52 = ObjectType;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v59;
    if (!v29)
    {
      v30 = 0;
    }

    v49 = v30;
    [v27 auditToken];
    v47 = v58;
    v48 = v57;
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  v60 = v27 == 0;
  sub_100005934(v12, v56, &unk_100780380);
  v31 = v51;
  sub_100005934(v55, v51, &qword_10077F8D0);
  v32 = (v50[80] + 49) & ~v50[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v50 = v12;
  v45 = (v34 + 59) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "addMessageRegistrations";
  *(v37 + 40) = 23;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v49;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v47;
  *v38 = v48;
  *(v38 + 16) = v39;
  *(v38 + 32) = v60;
  v40 = v37 + v45;
  *v40 = &_swiftEmptySetSingleton;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  *v41 = &unk_1006A1040;
  v41[1] = v22;
  v42 = (v37 + v36);
  v43 = v54;
  *v42 = v53;
  v42[1] = v43;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v56, &unk_1006A1048, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v55, &qword_10077F8D0);
}

uint64_t sub_100290DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = v18;
  v8[38] = v19;
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[29] = a1;
  v8[30] = a2;
  v9 = type metadata accessor for Logger();
  v8[39] = v9;
  v8[40] = *(v9 - 8);
  v8[41] = swift_task_alloc();
  type metadata accessor for AppStateUpdateIdentifier();
  v8[42] = swift_task_alloc();
  v10 = type metadata accessor for AppProgress();
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();
  v11 = type metadata accessor for AppState();
  v8[46] = v11;
  v8[47] = *(v11 - 8);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v12 = type metadata accessor for XPCClientMessage();
  v8[50] = v12;
  v8[51] = *(v12 - 8);
  v8[52] = swift_task_alloc();
  v13 = type metadata accessor for RegisteredXPCClient();
  v8[53] = v13;
  v8[54] = *(v13 - 8);
  v8[55] = swift_task_alloc();
  v14 = type metadata accessor for MessageRegistration();
  v8[56] = v14;
  v8[57] = *(v14 - 8);
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v15 = type metadata accessor for XPCClient.MessageRegistrationState();
  v8[63] = v15;
  v8[64] = *(v15 - 8);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return _swift_task_switch(sub_100291118, 0, 0);
}

uint64_t sub_100291118()
{
  v0[67] = audit_token_t.signingIdentifier.getter(v0[31], v0[32], v0[33], v0[34]);
  v0[68] = v1;
  if (v1)
  {
    v2 = sub_1001F6740(&off_1007581B0);
    v0[69] = v2;
    swift_arrayDestroy();
    v3 = swift_task_alloc();
    v0[70] = v3;
    *v3 = v0;
    v3[1] = sub_100291508;
    v4 = v0[33];
    v5 = v0[34];
    v6 = v0[31];
    v7 = v0[32];

    return sub_100322914(v2, 0, v6, v7, v4, v5);
  }

  else
  {
    static Logger.xpc.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_100625FA0();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] No signing identifier", v11, 0xCu);
      sub_1000032A8(v12, &qword_10077F920);
    }

    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[39];

    (*(v15 + 8))(v14, v16);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for ManagedAppDistributionError.unrecoverableError(_:), v17);
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100291508(char a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = sub_1002917A8;
  }

  else
  {

    *(v4 + 856) = a1 & 1;
    v5 = sub_10029163C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10029163C()
{
  v1 = *(v0 + 856);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  *(v0 + 858) = v1;
  *(v0 + 857) = v1 ^ 1;
  v2 = sub_1001F6740(&off_100758230);
  *(v0 + 576) = v2;
  sub_1002FC188(&unk_100758250);
  v3 = swift_task_alloc();
  *(v0 + 584) = v3;
  *v3 = v0;
  v3[1] = sub_10029189C;
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);

  return sub_100322914(v2, 1, v6, v7, v4, v5);
}

uint64_t sub_1002917A8()
{

  *(v0 + 857) = 1;
  v1 = sub_1001F6740(&off_100758230);
  *(v0 + 576) = v1;
  sub_1002FC188(&unk_100758250);
  v2 = swift_task_alloc();
  *(v0 + 584) = v2;
  *v2 = v0;
  v2[1] = sub_10029189C;
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  return sub_100322914(v1, 1, v5, v6, v3, v4);
}

uint64_t sub_10029189C(char a1)
{
  v4 = *v2;
  *(v4 + 592) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    *(v4 + 859) = a1 & 1;

    return _swift_task_switch(sub_100291AC8, 0, 0);
  }
}

uint64_t sub_100291AC8()
{
  v1 = *(v0 + 859);
  v2 = *(v0 + 858);
  v3 = v0[68];
  v4 = v0[67];
  v170 = v0[74];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = audit_token_t.signingIdentifier.getter(v8, v7, v6, v5);
  v0[9] = v8;
  v0[10] = v7;
  v0[11] = v6;
  v0[12] = v5;
  v0[13] = v9;
  v0[14] = v10;

  v11 = sub_10061A31C(v4, v3, v2, v1);
  v13 = v12;
  v0[75] = v11;
  v0[76] = v12;
  sub_100302E04(&qword_10077FD70, &type metadata accessor for XPCClient.MessageRegistrationState);
  sub_100302E04(&qword_10077FD78, &type metadata accessor for XPCClient.MessageRegistrationState);
  decodeXPCValues<A>(from:)();
  v169 = v0;
  if (v170)
  {
    v14 = v170;
    sub_1002FAFB0((v0 + 9));
    sub_1002706F8(v11, v13);

    if ((*(v0 + 857) & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_3:
    v15 = v169;
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v14, v16);
    goto LABEL_74;
  }

  v157 = (v0 + 9);
  v155 = v0 + 21;
  v17 = v0[57];
  v18 = XPCClient.MessageRegistrationState.registrations.getter();
  v0[77] = v18;
  v19 = v18 + 56;
  v20 = -1;
  v21 = -1 << *(v18 + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v18 + 56);
  v23 = (63 - v21) >> 6;
  v163 = enum case for MessageRegistration.appStateChange(_:);
  *(v0 + 208) = enum case for MessageRegistration.appStateChange(_:);
  v160 = enum case for MessageRegistration.appCatalog(_:);
  *(v0 + 209) = enum case for MessageRegistration.appCatalog(_:);
  v159 = enum case for MessageRegistration.ageRating(_:);
  *(v0 + 210) = enum case for MessageRegistration.ageRating(_:);
  v158 = enum case for MessageRegistration.globalAppProgress(_:);
  *(v0 + 211) = enum case for MessageRegistration.globalAppProgress(_:);
  v156 = enum case for MessageRegistration.logging(_:);
  *(v0 + 212) = enum case for MessageRegistration.logging(_:);
  v154 = enum case for MessageRegistration.packageCatalog(_:);
  *(v0 + 213) = enum case for MessageRegistration.packageCatalog(_:);
  v164 = v17;
  v24 = (v17 + 8);
  v166 = v18;

  v25 = 0;
  v171 = _swiftEmptyArrayStorage;
  v26 = v0;
  v161 = v23;
  v162 = v19;
  if (v22)
  {
    while (1)
    {
      v27 = v24;
LABEL_12:
      v30 = v26[61];
      v29 = v26[62];
      v31 = v26[56];
      v0 = v26;
      v32 = *(v164 + 2);
      v32(v29, *(v166 + 48) + *(v164 + 9) * (__clz(__rbit64(v22)) | (v25 << 6)), v31);
      v32(v30, v29, v31);
      v33 = (*(v164 + 11))(v30, v31);
      if (v33 == v163)
      {
        v24 = v27;
        (*v27)(v26[61], v26[56]);
        v34 = v171;
      }

      else
      {
        v24 = v27;
        if (v33 == v160)
        {
          v26 = v169;
          (*v27)(v169[62], v169[56]);
          v37 = &_swiftEmptySetSingleton;
          v34 = v171;
          goto LABEL_18;
        }

        v26 = v169;
        v34 = v171;
        if (v33 == v159)
        {
          v35 = v169[62];
          v36 = v169[56];
          v0 = &off_100758270;
          v37 = sub_1001F6740(&off_100758270);
          sub_1002FC188(&unk_100758290);
          goto LABEL_15;
        }

        if (v33 != v158)
        {
          if (v33 != v156 && v33 != v154)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          (*v27)(v169[62], v169[56]);
          v37 = &_swiftEmptySetSingleton;
          goto LABEL_18;
        }
      }

      v35 = v26[62];
      v36 = v26[56];
      v0 = &off_1007582B0;
      v37 = sub_1001F6740(&off_1007582B0);
      swift_arrayDestroy();
LABEL_15:
      (*v24)(v35, v36);
LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1003631D0(0, *(v34 + 2) + 1, 1, v34);
      }

      v39 = *(v34 + 2);
      v38 = *(v34 + 3);
      if (v39 >= v38 >> 1)
      {
        v34 = sub_1003631D0((v38 > 1), v39 + 1, 1, v34);
      }

      v22 &= v22 - 1;
      *(v34 + 2) = v39 + 1;
      v171 = v34;
      v40 = &v34[16 * v39];
      *(v40 + 4) = v37;
      v40[40] = 0;
      v23 = v161;
      v19 = v162;
      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_80:
      v133 = v0[58];
      v134 = (v0[84] + v0[37]);
      (*(v0[57] + 12))(v133, v0[56]);
      v135 = *v133;
      v0[89] = *v133;
      v136 = *(v133 + 1);
      v0[90] = v136;
      v137 = *(v133 + 16);
      *(v157 + 791) = v137;
      v138 = v134[3];
      v139 = v134[7];
      v140 = v134[10];
      v141 = v134[12];
      v142 = sub_100006D8C(v134, v138);
      v0[5] = v138;
      v0[6] = v139;
      v0[7] = v140;
      v0[8] = v141;
      v143 = sub_10020A748(v0 + 2);
      (*(*(v138 - 8) + 16))(v143, v142, v138);
      v144 = swift_task_alloc();
      v0[91] = v144;
      *v144 = v0;
      v144[1] = sub_100293F0C;
      v145 = v0[75];
      v146 = v0[49];

      return sub_10060FC18(v146, v135, v136, v137, 0, 0, (v0 + 2), v145);
    }

    if (v28 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v28);
    ++v25;
    if (v22)
    {
      v27 = v24;
      v25 = v28;
      goto LABEL_12;
    }
  }

  v41 = sub_1005DA49C(v171);
  v26[78] = v41;

  v42 = *(v41 + 32);
  *(v26 + 860) = v42;
  v43 = -1;
  v44 = -1 << v42;
  if (-(-1 << v42) < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v41 + 56);

  if (v45)
  {
    v46 = 0;
    v47 = v26[78];
LABEL_37:
    v26[80] = v46;
    v26[79] = v45;
    v49 = v47[6] + ((v46 << 10) | (16 * __clz(__rbit64(v45))));
    v50 = *v49;
    v26[81] = *v49;
    v51 = *(v49 + 8);

    v52 = swift_task_alloc();
    v26[82] = v52;
    *v52 = v26;
    v52[1] = sub_100292D2C;
    v53 = v26[33];
    v54 = v26[34];
    v55 = v26[31];
    v56 = v26[32];
    v57 = v50;
    v58 = v51;
LABEL_38:

    return sub_100322914(v57, v58, v55, v56, v53, v54);
  }

  v48 = 0;
  v47 = v26[78];
  while (((63 - v44) >> 6) - 1 != v48)
  {
    v46 = (v48 + 1);
    v45 = v47[v48++ + 8];
    if (v45)
    {
      goto LABEL_37;
    }
  }

  v60 = v26[76];
  v61 = v26[75];
  v62 = v26[66];
  v63 = v26[65];
  v65 = v26[63];
  v64 = v26[64];
  v66 = v26;
  v67 = v26[37];

  v68 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v66[84] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v69 = *(*sub_100006D8C(&v67[v68], *&v67[v68 + 24]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

  os_unfair_lock_lock((v69 + 16));
  v70 = v64[2];
  v70(v63, v62, v65);
  sub_100300EC0(v61, v60);
  swift_unknownObjectRetain();
  v71 = XPCClient.MessageRegistrationState.registrations.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v69 + 24);
  *(v69 + 24) = 0x8000000000000000;
  v75 = sub_100522E8C(v157);
  v76 = *(v73 + 16);
  v77 = (v74 & 1) == 0;
  result = v76 + v77;
  if (__OFADD__(v76, v77))
  {
LABEL_90:
    __break(1u);
    return result;
  }

  v78 = v74;
  if (*(v73 + 24) >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1005C56F8();
    }
  }

  else
  {
    sub_1005BC7C4(result, isUniquelyReferenced_nonNull_native);
    v79 = sub_100522E8C(v157);
    if ((v78 & 1) != (v80 & 1))
    {
      v81 = v169[76];
      v82 = v169[75];
      (*(v169[64] + 1))(v169[65], v169[63]);
      sub_1002706F8(v82, v81);
      swift_unknownObjectRelease();

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v75 = v79;
  }

  v172 = v71;
  *(v69 + 24) = v73;

  v83 = *(v69 + 24);
  if ((v78 & 1) == 0)
  {
    v84 = v169[76];
    v85 = v169[75];
    v86 = v169[55];
    v87 = v169[53];
    v88 = v70;
    v89 = v169[30];
    v88(v86, v169[65], v169[63]);
    v90 = v87[5];
    *(v86 + v90) = sub_10052B264(_swiftEmptyArrayStorage);
    v91 = (v86 + v87[6]);
    *v91 = v85;
    v91[1] = v84;
    *(v86 + v87[7]) = v89;
    sub_1005C352C(v75, v157, v86, v83);
    sub_100300EC0(v85, v84);
    swift_unknownObjectRetain();
    sub_1002FAF54(v157, v157 + 48);
  }

  v0 = v169;
  v92 = v169[77];
  v167 = v169[76];
  v93 = v169[75];
  v94 = v169[65];
  v96 = v169[63];
  v95 = v169[64];
  v97 = XPCClient.MessageRegistrationState.registrations.modify();
  sub_1002FAC80(v172);
  v97(v155, 0);
  v98 = v95[1];
  v169[85] = v98;
  v169[86] = ((v95 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v98(v94, v96);
  sub_1002706F8(v93, v167);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v69 + 16));

  v99 = 0;
  v100 = v92[32];
  *(v169 + 862) = v100;
  v101 = 1 << v100;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  else
  {
    v102 = -1;
  }

  for (i = v102 & *(v92 + 7); ; i = (v0[87] - 1) & v0[87])
  {
    if (!i)
    {
      while (1)
      {
        v108 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          break;
        }

        if (v108 >= (((1 << *(v0 + 862)) + 63) >> 6))
        {
          v129 = v0[76];
          v130 = v0[75];
          v131 = v0[37];
          v132 = v0[29];
          (v0[85])(v0[66], v0[63]);

          sub_1002706F8(v130, v129);
          sub_1002FAFB0(v157);

          *v132 = *&v131[OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier];

          v128 = v0[1];
          goto LABEL_75;
        }

        v107 = v0[77];
        i = v107[v108 + 7];
        ++v99;
        if (i)
        {
          v99 = v108;
          goto LABEL_64;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

    v107 = v0[77];
LABEL_64:
    v0[88] = v99;
    v0[87] = i;
    v109 = *(v0 + 208);
    v110 = v0[59];
    v111 = v0[60];
    v113 = v0[57];
    v112 = v0[58];
    v114 = v0[56];
    v115 = v113[2];
    v115(v111, v107[6] + v113[9] * (__clz(__rbit64(i)) | (v99 << 6)), v114);
    (v113[4])(v110, v111, v114);
    v115(v112, v110, v114);
    v116 = (v113[11])(v112, v114);
    if (v116 == v109)
    {
      goto LABEL_80;
    }

    if (v116 == *(v0 + 209))
    {
      if (*(v157 + 785))
      {
        v147 = sub_1001F6740(&off_100758350);
        v0[96] = v147;
        sub_1002FC188(&unk_100758370);
        v148 = swift_task_alloc();
        v0[97] = v148;
        *v148 = v0;
        v148[1] = sub_100294CB0;
        v53 = v0[33];
        v54 = v0[34];
        v55 = v0[31];
        v56 = v0[32];
        v57 = v147;
        v58 = 1;
        goto LABEL_38;
      }

      v149 = (v0[84] + v0[37]);
      v150 = *(*sub_100006D8C(v149, v149[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
      v0[92] = v150;

      v151 = swift_task_alloc();
      v0[93] = v151;
      *v151 = v0;
      v151[1] = sub_100294A04;
      v152 = v0[76];
      v153 = v0[75];

      return sub_1006155EC(v150, 0, 0, v153, v152);
    }

    if (v116 == *(v0 + 210))
    {
      v105 = v0[51];
      v104 = v0[52];
      v106 = v0[50];
      swift_getObjectType();
      sub_1005F5804();
      static XPCClientMessage.ageRating(_:)();
      v0 = v169;
      XPCClientProtocol.handleMessage(_:)();
      v105[1](v104, v106);
      goto LABEL_57;
    }

    if (v116 != *(v0 + 211) && v116 != *(v0 + 212))
    {
      break;
    }

LABEL_57:
    result = (*(v0[57] + 1))(v0[59], v0[56]);
    v99 = v0[88];
  }

  if (v116 != *(v0 + 213))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v168 = v0[85];
  v118 = v0[76];
  v119 = v0[75];
  v120 = v0[66];
  v121 = v0[63];
  v165 = v0[59];
  v124 = v0 + 56;
  v123 = v0[56];
  v122 = v124[1];
  sub_1002FAFB0(v157);
  sub_1002706F8(v119, v118);

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v14 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v168(v120, v121);
  v122[1](v165, v123);
  if (*(v157 + 785))
  {
    goto LABEL_3;
  }

LABEL_73:
  swift_getErrorValue();
  v15 = v169;
  v125 = v169[26];
  v126 = v169[27];
  type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  sub_1004B53F8(v125, v126, v127);
LABEL_74:
  swift_willThrow();

  v128 = v15[1];
LABEL_75:

  return v128();
}

uint64_t sub_100292D2C(char a1)
{
  v4 = *v2;
  *(*v2 + 664) = v1;

  if (v1)
  {
    v5 = *(v4 + 608);
    v6 = *(v4 + 600);
    sub_1002FAFB0(v4 + 72);
    sub_1002706F8(v6, v5);

    v7 = sub_100293CC0;
  }

  else
  {

    *(v4 + 861) = a1 & 1;
    v7 = sub_100292EB8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100292EB8()
{
  if (*(v1 + 861))
  {
    v5 = *(v1 + 640);
    v6 = (*(v1 + 632) - 1) & *(v1 + 632);
    if (!v6)
    {
      v15 = (v1 + 168);
      while (1)
      {
        v16 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v7 = *(v1 + 624);
        if (v16 >= (((1 << *(v1 + 860)) + 63) >> 6))
        {
          v28 = *(v1 + 608);
          v29 = *(v1 + 600);
          v3 = *(v1 + 528);
          v30 = *(v1 + 520);
          v32 = *(v1 + 504);
          v31 = *(v1 + 512);
          v33 = *(v1 + 296);

          v34 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
          *(v1 + 672) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
          v0 = *(*sub_100006D8C((v33 + v34), *(v33 + v34 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

          os_unfair_lock_lock((v0 + 16));
          v35 = v32;
          v4 = *(v31 + 16);
          (v4)(v30, v3, v35);
          sub_100300EC0(v29, v28);
          swift_unknownObjectRetain();
          ObjectType = XPCClient.MessageRegistrationState.registrations.getter();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(v0 + 24);
          v113 = v37;
          *(v0 + 24) = 0x8000000000000000;
          v112 = sub_100522E8C((v1 + 72));
          v39 = *(v37 + 16);
          v40 = (v38 & 1) == 0;
          v41 = v39 + v40;
          if (!__OFADD__(v39, v40))
          {
            LOBYTE(v3) = v38;
            if (*(v37 + 24) < v41)
            {
              sub_1005BC7C4(v41, isUniquelyReferenced_nonNull_native);
              v112 = sub_100522E8C((v1 + 72));
              if ((v3 & 1) != (v42 & 1))
              {
                v43 = *(v1 + 608);
                v44 = *(v1 + 600);
                (*(*(v1 + 512) + 8))(*(v1 + 520), *(v1 + 504));
                sub_1002706F8(v44, v43);
                swift_unknownObjectRelease();

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

LABEL_22:
              v108 = ObjectType;
              v110 = v15;
              *(v0 + 24) = v37;

              v45 = *(v0 + 24);
              if ((v3 & 1) == 0)
              {
                v46 = *(v1 + 608);
                v47 = *(v1 + 600);
                v48 = *(v1 + 440);
                v49 = *(v1 + 424);
                v50 = *(v1 + 240);
                (v4)(v48, *(v1 + 520), *(v1 + 504));
                v51 = v49[5];
                *(v48 + v51) = sub_10052B264(_swiftEmptyArrayStorage);
                v52 = (v48 + v49[6]);
                *v52 = v47;
                v52[1] = v46;
                *(v48 + v49[7]) = v50;
                sub_1005C352C(v112, (v1 + 72), v48, v45);
                sub_100300EC0(v47, v46);
                swift_unknownObjectRetain();
                sub_1002FAF54(v1 + 72, v1 + 120);
              }

              v4 = *(v1 + 616);
              v53 = *(v1 + 600);
              v15 = *(v1 + 520);
              ObjectType = *(v1 + 504);
              v3 = *(v1 + 512);
              v107 = *(v1 + 608);
              v54 = XPCClient.MessageRegistrationState.registrations.modify();
              sub_1002FAC80(v108);
              v54(v110, 0);
              v55 = *(v3 + 8);
              *(v1 + 680) = v55;
              *(v1 + 688) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v55(v15, ObjectType);
              sub_1002706F8(v53, v107);
              swift_unknownObjectRelease();
              os_unfair_lock_unlock((v0 + 16));

              v56 = 0;
              v57 = *(v4 + 32);
              *(v1 + 862) = v57;
              LOBYTE(v3) = 1;
              v58 = 1 << v57;
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              else
              {
                v59 = -1;
              }

              for (i = v59 & *(v4 + 56); ; i = (*(v1 + 696) - 1) & *(v1 + 696))
              {
                if (!i)
                {
                  while (1)
                  {
                    v64 = v56 + 1;
                    if (__OFADD__(v56, 1))
                    {
                      goto LABEL_61;
                    }

                    if (v64 >= (((1 << *(v1 + 862)) + 63) >> 6))
                    {
                      v82 = *(v1 + 608);
                      v83 = *(v1 + 600);
                      v84 = *(v1 + 296);
                      v85 = *(v1 + 232);
                      (*(v1 + 680))(*(v1 + 528), *(v1 + 504));

                      sub_1002706F8(v83, v82);
                      sub_1002FAFB0(v1 + 72);

                      *v85 = *(v84 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier);

                      v81 = *(v1 + 8);
                      goto LABEL_47;
                    }

                    v63 = *(v1 + 616);
                    i = *(v63 + 8 * v64 + 56);
                    ++v56;
                    if (i)
                    {
                      v56 = v64;
                      goto LABEL_36;
                    }
                  }
                }

                v63 = *(v1 + 616);
LABEL_36:
                *(v1 + 704) = v56;
                *(v1 + 696) = i;
                v65 = *(v1 + 832);
                v66 = *(v1 + 472);
                v67 = *(v1 + 480);
                v68 = *(v1 + 456);
                v0 = *(v1 + 464);
                ObjectType = *(v1 + 448);
                v15 = *(v68 + 16);
                v15(v67, *(v63 + 48) + *(v68 + 72) * (__clz(__rbit64(i)) | (v56 << 6)), ObjectType);
                (*(v68 + 32))(v66, v67, ObjectType);
                v15(v0, v66, ObjectType);
                v69 = *(v68 + 88);
                v4 = v68 + 88;
                v70 = v69(v0, ObjectType);
                if (v70 == v65)
                {
                  v86 = *(v1 + 464);
                  v87 = (*(v1 + 296) + *(v1 + 672));
                  (*(*(v1 + 456) + 96))(v86, *(v1 + 448));
                  v88 = *v86;
                  *(v1 + 712) = *v86;
                  v89 = *(v86 + 8);
                  *(v1 + 720) = v89;
                  v90 = *(v86 + 16);
                  *(v1 + 863) = v90;
                  v91 = v87[3];
                  v92 = v87[7];
                  v93 = v87[10];
                  v94 = v87[12];
                  v95 = sub_100006D8C(v87, v91);
                  *(v1 + 40) = v91;
                  *(v1 + 48) = v92;
                  *(v1 + 56) = v93;
                  *(v1 + 64) = v94;
                  v96 = sub_10020A748((v1 + 16));
                  (*(*(v91 - 8) + 16))(v96, v95, v91);
                  v97 = swift_task_alloc();
                  *(v1 + 728) = v97;
                  *v97 = v1;
                  v97[1] = sub_100293F0C;
                  v98 = *(v1 + 600);
                  v99 = *(v1 + 392);

                  return sub_10060FC18(v99, v88, v89, v90, 0, 0, v1 + 16, v98);
                }

                if (v70 == *(v1 + 836))
                {
                  if (*(v1 + 857))
                  {
                    v100 = sub_1001F6740(&off_100758350);
                    *(v1 + 768) = v100;
                    sub_1002FC188(&unk_100758370);
                    v101 = swift_task_alloc();
                    *(v1 + 776) = v101;
                    *v101 = v1;
                    v101[1] = sub_100294CB0;
                    v21 = *(v1 + 264);
                    v22 = *(v1 + 272);
                    v23 = *(v1 + 248);
                    v24 = *(v1 + 256);
                    v25 = v100;
                    v26 = 1;
                    goto LABEL_12;
                  }

                  v102 = (*(v1 + 296) + *(v1 + 672));
                  v103 = *(*sub_100006D8C(v102, v102[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
                  *(v1 + 736) = v103;

                  v104 = swift_task_alloc();
                  *(v1 + 744) = v104;
                  *v104 = v1;
                  v104[1] = sub_100294A04;
                  v105 = *(v1 + 608);
                  v106 = *(v1 + 600);

                  return sub_1006155EC(v103, 0, 0, v106, v105);
                }

                if (v70 == *(v1 + 840))
                {
                  v62 = *(v1 + 408);
                  v61 = *(v1 + 416);
                  v0 = *(v1 + 400);
                  ObjectType = swift_getObjectType();
                  sub_1005F5804();
                  static XPCClientMessage.ageRating(_:)();
                  XPCClientProtocol.handleMessage(_:)();
                  (*(v62 + 8))(v61, v0);
                }

                else if (v70 != *(v1 + 844) && v70 != *(v1 + 848))
                {
                  if (v70 != *(v1 + 852))
                  {
                    return _assertionFailure(_:_:file:line:flags:)();
                  }

                  v72 = *(v1 + 608);
                  v73 = *(v1 + 600);
                  v74 = *(v1 + 528);
                  v75 = *(v1 + 504);
                  v109 = *(v1 + 472);
                  v111 = *(v1 + 680);
                  v77 = *(v1 + 448);
                  v76 = *(v1 + 456);
                  sub_1002FAFB0(v1 + 72);
                  sub_1002706F8(v73, v72);

                  type metadata accessor for InternalError();
                  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
                  v13 = swift_allocError();
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();

                  v111(v74, v75);
                  (*(v76 + 8))(v109, v77);
                  if (*(v1 + 857))
                  {
                    goto LABEL_5;
                  }

LABEL_45:
                  swift_getErrorValue();
                  v78 = *(v1 + 208);
                  v79 = *(v1 + 216);
                  type metadata accessor for MarketplaceKitError();
                  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
                  swift_allocError();
                  sub_1004B53F8(v78, v79, v80);
                  goto LABEL_46;
                }

                (*(*(v1 + 456) + 8))(*(v1 + 472), *(v1 + 448));
                v56 = *(v1 + 704);
              }
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_22;
            }

LABEL_63:
            sub_1005C56F8();
            v37 = v113;
            goto LABEL_22;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v6 = *(v7 + 8 * v16 + 56);
        ++v5;
        if (v6)
        {
          v5 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v7 = *(v1 + 624);
LABEL_11:
    *(v1 + 640) = v5;
    *(v1 + 632) = v6;
    v17 = *(v7 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v6))));
    v18 = *v17;
    *(v1 + 648) = *v17;
    v19 = *(v17 + 8);

    v20 = swift_task_alloc();
    *(v1 + 656) = v20;
    *v20 = v1;
    v20[1] = sub_100292D2C;
    v21 = *(v1 + 264);
    v22 = *(v1 + 272);
    v23 = *(v1 + 248);
    v24 = *(v1 + 256);
    v25 = v18;
    v26 = v19;
LABEL_12:

    return sub_100322914(v25, v26, v23, v24, v21, v22);
  }

  else
  {
    v8 = *(v1 + 608);
    v9 = *(v1 + 600);
    v10 = *(v1 + 528);
    v11 = *(v1 + 504);
    v12 = *(v1 + 512);
    sub_1002FAFB0(v1 + 72);
    sub_1002706F8(v9, v8);

    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v13 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v12 + 8))(v10, v11);
    if ((*(v1 + 857) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_5:
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v13, v14);
LABEL_46:
    swift_willThrow();

    v81 = *(v1 + 8);
LABEL_47:

    return v81();
  }
}

uint64_t sub_100293CC0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 664);
  if (*(v0 + 857))
  {
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v4, v5);
  }

  else
  {
    swift_getErrorValue();
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    sub_1004B53F8(v6, v7, v8);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100293F0C()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_100294010, 0, 0);
}

uint64_t sub_100294010()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v68 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v63 = *(v0 + 368);
  v64 = *(v0 + 392);
  v5 = *(v0 + 352);
  v66 = *(v0 + 344);
  (*(v3 + 16))(*(v0 + 384));
  AppStateUpdateIdentifier.init(_:)();
  AppProgress.init(state:identifier:)();
  swift_getObjectType();
  static XPCClientMessage.appProgress(_:)();
  XPCClientProtocol.handleMessage(_:)();
  (*(v1 + 8))(v2, v68);
  (*(v5 + 8))(v4, v66);
  (*(v3 + 8))(v64, v63);
  do
  {
    while (1)
    {
      (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
      v9 = *(v0 + 704);
      v10 = (*(v0 + 696) - 1) & *(v0 + 696);
      if (!v10)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= (((1 << *(v0 + 862)) + 63) >> 6))
          {
            v29 = *(v0 + 608);
            v30 = *(v0 + 600);
            v31 = *(v0 + 296);
            v32 = *(v0 + 232);
            (*(v0 + 680))(*(v0 + 528), *(v0 + 504));

            sub_1002706F8(v30, v29);
            sub_1002FAFB0(v0 + 72);

            *v32 = *(v31 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier);

            v33 = *(v0 + 8);
            goto LABEL_18;
          }

          v11 = *(v0 + 616);
          v10 = *(v11 + 8 * v12 + 56);
          ++v9;
          if (v10)
          {
            v9 = v12;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      v11 = *(v0 + 616);
LABEL_9:
      *(v0 + 704) = v9;
      *(v0 + 696) = v10;
      v13 = *(v0 + 832);
      v14 = *(v0 + 472);
      v15 = *(v0 + 480);
      v17 = *(v0 + 456);
      v16 = *(v0 + 464);
      v18 = *(v0 + 448);
      v19 = *(v17 + 16);
      v19(v15, *(v11 + 48) + *(v17 + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), v18);
      (*(v17 + 32))(v14, v15, v18);
      v19(v16, v14, v18);
      v20 = (*(v17 + 88))(v16, v18);
      if (v20 == v13)
      {
        v35 = *(v0 + 464);
        v36 = (*(v0 + 296) + *(v0 + 672));
        (*(*(v0 + 456) + 96))(v35, *(v0 + 448));
        v37 = *v35;
        *(v0 + 712) = *v35;
        v38 = *(v35 + 8);
        *(v0 + 720) = v38;
        v39 = *(v35 + 16);
        *(v0 + 863) = v39;
        v40 = v36[3];
        v41 = v36[7];
        v42 = v36[10];
        v43 = v36[12];
        v44 = sub_100006D8C(v36, v40);
        *(v0 + 40) = v40;
        *(v0 + 48) = v41;
        *(v0 + 56) = v42;
        *(v0 + 64) = v43;
        v45 = sub_10020A748((v0 + 16));
        (*(*(v40 - 8) + 16))(v45, v44, v40);
        v46 = swift_task_alloc();
        *(v0 + 728) = v46;
        *v46 = v0;
        v46[1] = sub_100293F0C;
        v47 = *(v0 + 600);
        v48 = *(v0 + 392);

        return sub_10060FC18(v48, v37, v38, v39, 0, 0, v0 + 16, v47);
      }

      if (v20 == *(v0 + 836))
      {
        if (*(v0 + 857))
        {
          v49 = sub_1001F6740(&off_100758350);
          *(v0 + 768) = v49;
          sub_1002FC188(&unk_100758370);
          v50 = swift_task_alloc();
          *(v0 + 776) = v50;
          *v50 = v0;
          v50[1] = sub_100294CB0;
          v51 = *(v0 + 264);
          v52 = *(v0 + 272);
          v53 = *(v0 + 248);
          v54 = *(v0 + 256);

          return sub_100322914(v49, 1, v53, v54, v51, v52);
        }

        else
        {
          v55 = (*(v0 + 296) + *(v0 + 672));
          v56 = *(*sub_100006D8C(v55, v55[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
          *(v0 + 736) = v56;

          v57 = swift_task_alloc();
          *(v0 + 744) = v57;
          *v57 = v0;
          v57[1] = sub_100294A04;
          v58 = *(v0 + 608);
          v59 = *(v0 + 600);

          return sub_1006155EC(v56, 0, 0, v59, v58);
        }
      }

      if (v20 != *(v0 + 840))
      {
        break;
      }

      v7 = *(v0 + 408);
      v6 = *(v0 + 416);
      v8 = *(v0 + 400);
      swift_getObjectType();
      sub_1005F5804();
      static XPCClientMessage.ageRating(_:)();
      XPCClientProtocol.handleMessage(_:)();
      (*(v7 + 8))(v6, v8);
    }
  }

  while (v20 == *(v0 + 844) || v20 == *(v0 + 848));
  if (v20 != *(v0 + 852))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v67 = *(v0 + 680);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);
  v23 = *(v0 + 528);
  v24 = *(v0 + 504);
  v65 = *(v0 + 472);
  v26 = *(v0 + 448);
  v25 = *(v0 + 456);
  sub_1002FAFB0(v0 + 72);
  sub_1002706F8(v22, v21);

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v27 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v67(v23, v24);
  (*(v25 + 8))(v65, v26);
  if (*(v0 + 857))
  {
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v27, v28);
    goto LABEL_34;
  }

LABEL_33:
  swift_getErrorValue();
  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  sub_1004B53F8(v60, v61, v62);
LABEL_34:
  swift_willThrow();

  v33 = *(v0 + 8);
LABEL_18:

  return v33();
}

uint64_t sub_100294A04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 752) = v1;

  if (v1)
  {
    v5 = v4[76];
    v6 = v4[75];

    sub_1002FAFB0((v4 + 9));
    sub_1002706F8(v6, v5);

    v7 = sub_100295FBC;
  }

  else
  {

    v4[95] = a1;
    v7 = sub_100294B74;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100294B74()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  swift_getObjectType();
  static XPCClientMessage.appCatalog(_:)();

  XPCClientProtocol.handleMessage(_:)();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1001F6740(&off_100758350);
  v0[96] = v4;
  sub_1002FC188(&unk_100758370);
  v5 = swift_task_alloc();
  v0[97] = v5;
  *v5 = v0;
  v5[1] = sub_100294CB0;
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[32];

  return sub_100322914(v4, 1, v8, v9, v6, v7);
}

uint64_t sub_100294CB0(char a1)
{
  v4 = *v2;
  *(*v2 + 784) = v1;

  if (v1)
  {
    v5 = sub_10029526C;
  }

  else
  {

    *(v4 + 864) = a1 & 1;
    v5 = sub_100294DE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100294DE4()
{
  v1 = (v0 + 296);
  if (*(v0 + 864) == 1)
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 472);
    *(v0 + 792) = swift_getObjectType();
    v27 = *v1;
    v4 = *v1;
    v5 = *(*sub_100006D8C((*v1 + v2), *(*v1 + v2 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    *(v0 + 800) = v5;
    v6 = swift_allocObject();
    *(v0 + 808) = v6;
    *(v6 + 16) = v27;

    v7 = v4;
    v8 = swift_task_alloc();
    *(v0 + 816) = v8;
    v8[2] = v5;
    v8[3] = v0 + 72;
    v8[4] = v3;
    v8[5] = &unk_1006A1058;
    v8[6] = v6;
    v9 = swift_task_alloc();
    *(v0 + 824) = v9;
    *v9 = v0;
    v9[1] = sub_100295520;
    v10 = *(v0 + 416);
    v11 = *(v0 + 400);

    return withCheckedContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000002CLL, 0x80000001006C56C0, sub_100300F80, v8, v11);
  }

  else
  {
    v26 = *(v0 + 680);
    v12 = *(v0 + 608);
    v13 = *(v0 + 600);
    v14 = *(v0 + 528);
    v15 = *(v0 + 504);
    v25 = *(v0 + 472);
    v16 = *(v0 + 456);
    v24 = *(v0 + 448);
    sub_1002FAFB0(v0 + 72);
    sub_1002706F8(v13, v12);

    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v26(v14, v15);
    (*(v16 + 8))(v25, v24);
    if (*(v0 + 857))
    {
      type metadata accessor for ManagedAppDistributionError();
      sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
      swift_allocError();
      sub_100296AD4(v17, v18);
    }

    else
    {
      swift_getErrorValue();
      v19 = *(v0 + 208);
      v20 = *(v0 + 216);
      type metadata accessor for MarketplaceKitError();
      sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      sub_1004B53F8(v19, v20, v21);
    }

    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10029526C()
{
  v15 = *(v0 + 680);
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 528);
  v4 = *(v0 + 504);
  v14 = *(v0 + 472);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);

  sub_1002FAFB0(v0 + 72);
  sub_1002706F8(v2, v1);

  v15(v3, v4);
  (*(v5 + 8))(v14, v6);
  v7 = *(v0 + 784);
  if (*(v0 + 857))
  {
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v7, v8);
  }

  else
  {
    swift_getErrorValue();
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    sub_1004B53F8(v9, v10, v11);
  }

  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100295520()
{

  return _swift_task_switch(sub_100295678, 0, 0);
}

uint64_t sub_100295678()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  XPCClientProtocol.handleMessage(_:)();
  (*(v2 + 8))(v1, v3);
  do
  {
    while (1)
    {
      (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
      v7 = *(v0 + 704);
      v8 = (*(v0 + 696) - 1) & *(v0 + 696);
      if (!v8)
      {
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= (((1 << *(v0 + 862)) + 63) >> 6))
          {
            v27 = *(v0 + 608);
            v28 = *(v0 + 600);
            v29 = *(v0 + 296);
            v30 = *(v0 + 232);
            (*(v0 + 680))(*(v0 + 528), *(v0 + 504));

            sub_1002706F8(v28, v27);
            sub_1002FAFB0(v0 + 72);

            *v30 = *(v29 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier);

            v31 = *(v0 + 8);
            goto LABEL_18;
          }

          v9 = *(v0 + 616);
          v8 = *(v9 + 8 * v10 + 56);
          ++v7;
          if (v8)
          {
            v7 = v10;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      v9 = *(v0 + 616);
LABEL_9:
      *(v0 + 704) = v7;
      *(v0 + 696) = v8;
      v11 = *(v0 + 832);
      v12 = *(v0 + 472);
      v13 = *(v0 + 480);
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      v16 = *(v0 + 448);
      v17 = *(v15 + 16);
      v17(v13, *(v9 + 48) + *(v15 + 72) * (__clz(__rbit64(v8)) | (v7 << 6)), v16);
      (*(v15 + 32))(v12, v13, v16);
      v17(v14, v12, v16);
      v18 = (*(v15 + 88))(v14, v16);
      if (v18 == v11)
      {
        v33 = *(v0 + 464);
        v34 = (*(v0 + 296) + *(v0 + 672));
        (*(*(v0 + 456) + 96))(v33, *(v0 + 448));
        v35 = *v33;
        *(v0 + 712) = *v33;
        v36 = *(v33 + 8);
        *(v0 + 720) = v36;
        v37 = *(v33 + 16);
        *(v0 + 863) = v37;
        v38 = v34[3];
        v39 = v34[7];
        v40 = v34[10];
        v41 = v34[12];
        v42 = sub_100006D8C(v34, v38);
        *(v0 + 40) = v38;
        *(v0 + 48) = v39;
        *(v0 + 56) = v40;
        *(v0 + 64) = v41;
        v43 = sub_10020A748((v0 + 16));
        (*(*(v38 - 8) + 16))(v43, v42, v38);
        v44 = swift_task_alloc();
        *(v0 + 728) = v44;
        *v44 = v0;
        v44[1] = sub_100293F0C;
        v45 = *(v0 + 600);
        v46 = *(v0 + 392);

        return sub_10060FC18(v46, v35, v36, v37, 0, 0, v0 + 16, v45);
      }

      if (v18 == *(v0 + 836))
      {
        if (*(v0 + 857))
        {
          v47 = sub_1001F6740(&off_100758350);
          *(v0 + 768) = v47;
          sub_1002FC188(&unk_100758370);
          v48 = swift_task_alloc();
          *(v0 + 776) = v48;
          *v48 = v0;
          v48[1] = sub_100294CB0;
          v49 = *(v0 + 264);
          v50 = *(v0 + 272);
          v51 = *(v0 + 248);
          v52 = *(v0 + 256);

          return sub_100322914(v47, 1, v51, v52, v49, v50);
        }

        else
        {
          v53 = (*(v0 + 296) + *(v0 + 672));
          v54 = *(*sub_100006D8C(v53, v53[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
          *(v0 + 736) = v54;

          v55 = swift_task_alloc();
          *(v0 + 744) = v55;
          *v55 = v0;
          v55[1] = sub_100294A04;
          v56 = *(v0 + 608);
          v57 = *(v0 + 600);

          return sub_1006155EC(v54, 0, 0, v57, v56);
        }
      }

      if (v18 != *(v0 + 840))
      {
        break;
      }

      v5 = *(v0 + 408);
      v4 = *(v0 + 416);
      v6 = *(v0 + 400);
      swift_getObjectType();
      sub_1005F5804();
      static XPCClientMessage.ageRating(_:)();
      XPCClientProtocol.handleMessage(_:)();
      (*(v5 + 8))(v4, v6);
    }
  }

  while (v18 == *(v0 + 844) || v18 == *(v0 + 848));
  if (v18 != *(v0 + 852))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v62 = *(v0 + 680);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 528);
  v22 = *(v0 + 504);
  v61 = *(v0 + 472);
  v24 = *(v0 + 448);
  v23 = *(v0 + 456);
  sub_1002FAFB0(v0 + 72);
  sub_1002706F8(v20, v19);

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v25 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v62(v21, v22);
  (*(v23 + 8))(v61, v24);
  if (*(v0 + 857))
  {
    type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    sub_100296AD4(v25, v26);
    goto LABEL_34;
  }

LABEL_33:
  swift_getErrorValue();
  v58 = *(v0 + 208);
  v59 = *(v0 + 216);
  type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  sub_1004B53F8(v58, v59, v60);
LABEL_34:
  swift_willThrow();

  v31 = *(v0 + 8);
LABEL_18:

  return v31();
}

uint64_t sub_100295FBC()
{
  v1 = v0[85];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[59];
  v5 = v0[56];
  v6 = v0[57];

  v1(v2, v3);
  (*(v6 + 8))(v4, v5);
  swift_getErrorValue();
  v7 = v0[26];
  v8 = v0[27];
  type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  sub_1004B53F8(v7, v8, v9);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002961B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  sub_1001F0C48(&unk_10077FD90);
  v3[18] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[23] = v5;
  *v5 = v3;
  v5[1] = sub_1002962FC;

  return sub_100324690((v3 + 10));
}

uint64_t sub_1002962FC()
{

  return _swift_task_switch(sub_1002963F8, 0, 0);
}

uint64_t sub_1002963F8()
{
  v1 = v0[16];
  v2 = sub_100625FA0();
  v0[24] = v2;
  v3 = (v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
  v4 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24);
  v5 = v3[5];
  v6 = v3[7];
  v7 = v3[10];
  v8 = v3[12];
  v9 = sub_100006D8C(v3, v4);
  v0[5] = v4;
  v0[6] = v5;
  v0[7] = v6;
  v0[8] = v7;
  v0[9] = v8;
  v10 = sub_10020A748(v0 + 2);
  (*(*(v4 - 8) + 16))(v10, v9, v4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_10029652C;

  return sub_10034278C(1, (v0 + 10), v2, (v0 + 2));
}

uint64_t sub_10029652C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_100296888;
  }

  else
  {
    sub_10000710C(v3 + 16);
    v5 = sub_10029666C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10029666C()
{
  static Logger.daemon.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[26];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    v7 = sub_100625FA0();
    *(v5 + 4) = v7;
    *v6 = v7;
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Sent back %ld app(s)", v5, 0x16u);
    sub_1000032A8(v6, &qword_10077F920);
  }

  else
  {
  }

  v8 = v0[18];
  (*(v0[20] + 8))(v0[22], v0[19]);
  v9 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  static XPCClientMessage.managedAppCatalog(apps:error:)();

  sub_1000032A8(v8, &unk_10077FD90);
  sub_10000710C((v0 + 10));

  v10 = v0[1];

  return v10();
}

uint64_t sub_100296888()
{
  sub_10000710C((v0 + 10));
  sub_10000710C((v0 + 2));
  static Logger.daemon.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error sending back initial managed apps: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v7 = v0[27];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];

  (*(v9 + 8))(v8, v10);
  sub_100296AD4(v7, v11);
  v12 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  static XPCClientMessage.managedAppCatalog(apps:error:)();

  sub_1000032A8(v11, &unk_10077FD90);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100296AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for InternalError();
  v6 = __chkstk_darwin(v35);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for MarketplaceKitError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ManagedAppDistributionError();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {
    (*(v15 + 32))(a2, v17, v14);
  }

  else
  {
    v29 = v14;
    v30 = v15;
    v18 = a2;

    v37 = a1;
    swift_errorRetain();
    if (!swift_dynamicCast())
    {

      v37 = a1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v19 = v34;
        sub_100301488(v9, v34, type metadata accessor for InternalError);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v30 + 104))(a2, enum case for ManagedAppDistributionError.unrecoverableError(_:), v29);
          sub_1003017A4(v19, type metadata accessor for InternalError);
        }

        else
        {
          (*(v30 + 32))(a2, v19, v29);
        }
      }

      v37 = a1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v20 = v31;
        static Logger.xpc.getter();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "This should be for MarketplaceKitError", v23, 2u);
        }

        (*(v32 + 8))(v20, v33);
        (*(v30 + 104))(v18, enum case for ManagedAppDistributionError.unrecoverableError(_:), v29);
      }

      type metadata accessor for Code(0);
      v37 = 203;
      sub_100302E04(&qword_10077E800, type metadata accessor for Code);
      v24 = static _ErrorCodeProtocol.~= infix(_:_:)();
      v25 = v30;
      if (v24)
      {
        v26 = &enum case for ManagedAppDistributionError.networkError(_:);
      }

      else
      {
        v37 = a1;
        swift_errorRetain();
        type metadata accessor for AMSError(0);
        if (swift_dynamicCast())
        {

          (*(v25 + 104))(a2, enum case for ManagedAppDistributionError.unrecoverableError(_:), v29);
        }

        v26 = &enum case for ManagedAppDistributionError.unrecoverableError(_:);
      }

      return (*(v25 + 104))(a2, *v26, v29);
    }

    (*(v30 + 104))(a2, enum case for ManagedAppDistributionError.unrecoverableError(_:), v29);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1002970C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_1001F0C48(&unk_100780380);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = sub_1001F0C48(&qword_10077F8D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for LogKey.Prefix();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v54 = v21;
  v21[4] = v5;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v5;
  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v60;
    if (!v28)
    {
      v29 = 0;
    }

    v53 = v29;
    [v26 auditToken];
    v48 = v59;
    v50 = v58;
  }

  else
  {
    v53 = 0;
    v50 = 0u;
    v48 = 0u;
  }

  v61 = v26 == 0;
  sub_100005934(v13, v11, &unk_100780380);
  sub_100005934(v19, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v30 = *(v15 + 80);
  v49 = v11;
  v31 = (v30 + 49) & ~v30;
  v32 = v31 + v16;
  v33 = (v31 + v16) & 0xFFFFFFFFFFFFFFF8;
  v51 = v13;
  v52 = v19;
  v34 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = (v33 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "removeMessageRegistrations";
  *(v37 + 40) = 26;
  *(v37 + 48) = 2;
  sub_10020A668(v34, v37 + v31, &qword_10077F8D0);
  *(v37 + v32) = 0;
  *(v37 + v33 + 8) = v53;
  v38 = v37 + ((v33 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v48;
  *v38 = v50;
  *(v38 + 16) = v39;
  *(v38 + 32) = v61;
  v40 = v37 + ((v33 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = &_swiftEmptySetSingleton;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v54;
  *v41 = &unk_1006A0FF0;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v57;
  *v43 = v56;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v49, &unk_1006A1000, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_1002975B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v13;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v8[16] = a1;
  v8[17] = a3;
  v9 = type metadata accessor for MessageRegistration();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v10 = type metadata accessor for XPCClient.MessageRegistrationState();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002976EC, 0, 0);
}

uint64_t sub_1002976EC()
{
  sub_100302E04(&qword_10077FD70, &type metadata accessor for XPCClient.MessageRegistrationState);
  sub_100302E04(&qword_10077FD78, &type metadata accessor for XPCClient.MessageRegistrationState);
  decodeXPCValues<A>(from:)();
  v59 = (v0 + 64);
  v2 = *(v0 + 200);
  v3 = XPCClient.MessageRegistrationState.registrations.getter();
  v4 = v3 + 56;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 56);
  v8 = (63 - v6) >> 6;
  v65 = enum case for MessageRegistration.appStateChange(_:);
  v62 = enum case for MessageRegistration.ageRating(_:);
  v63 = enum case for MessageRegistration.appCatalog(_:);
  v60 = enum case for MessageRegistration.logging(_:);
  v61 = enum case for MessageRegistration.globalAppProgress(_:);
  v58 = enum case for MessageRegistration.packageCatalog(_:);
  v66 = v2;
  v68 = (v2 + 8);
  v67 = v3;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v64 = v4;
  if (v7)
  {
    while (1)
    {
      v69 = v10;
LABEL_13:
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v14 = *(v0 + 192);
      v15 = *(v66 + 16);
      v15(v12, *(v67 + 48) + *(v66 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v14);
      v15(v13, v12, v14);
      v16 = (*(v66 + 88))(v13, v14);
      if (v16 == v65)
      {
        break;
      }

      v17 = &_swiftEmptySetSingleton;
      v10 = v69;
      if (v16 == v63)
      {
        goto LABEL_19;
      }

      if (v16 == v62)
      {
        v17 = sub_1001F6740(&off_100758390);
        sub_1002FC188(&unk_1007583B0);
        goto LABEL_19;
      }

      if (v16 == v61)
      {
        goto LABEL_15;
      }

      if (v16 != v60 && v16 != v58)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

LABEL_19:
      (*v68)(*(v0 + 216), *(v0 + 192));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1003631D0(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_1003631D0((v18 > 1), v19 + 1, 1, v10);
      }

      v7 &= v7 - 1;
      *(v10 + 2) = v19 + 1;
      v20 = &v10[16 * v19];
      *(v20 + 4) = v17;
      v20[40] = 0;
      v4 = v64;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    (*v68)(*(v0 + 208), *(v0 + 192));
    v10 = v69;
LABEL_15:
    v17 = sub_1001F6740(&off_1007583D0);
    swift_arrayDestroy();
    goto LABEL_19;
  }

LABEL_9:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v21 = sub_1005DA49C(v10);
      *(v0 + 248) = v21;

      v22 = *(v21 + 32);
      *(v0 + 296) = v22;
      v23 = -1;
      v24 = -1 << v22;
      if (-v24 < 64)
      {
        v23 = ~(-1 << -v24);
      }

      v25 = v23 & *(v21 + 56);
      if (v25)
      {
        v26 = 0;
        v27 = *(v0 + 248);
LABEL_36:
        *(v0 + 256) = v25;
        *(v0 + 264) = v26;
        v30 = *(v27 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v25))));
        v31 = *v30;
        *(v0 + 272) = *v30;
        v32 = *(v30 + 8);

        v33 = swift_task_alloc();
        *(v0 + 280) = v33;
        *v33 = v0;
        v33[1] = sub_100297F34;
        v34 = *(v0 + 152);
        v35 = *(v0 + 160);
        v36 = *(v0 + 136);
        v37 = *(v0 + 144);

        return sub_100322914(v31, v32, v36, v37, v34, v35);
      }

      else
      {
        v28 = 0;
        v29 = ((63 - v24) >> 6) - 1;
        v27 = *(v0 + 248);
        while (v29 != v28)
        {
          v26 = v28 + 1;
          v25 = *(v27 + 8 * v28++ + 64);
          if (v25)
          {
            goto LABEL_36;
          }
        }

        v38 = *(v0 + 184);
        v40 = *(v0 + 152);
        v39 = *(v0 + 160);
        v41 = *(v0 + 144);
        v42 = *(v0 + 136);

        v43 = audit_token_t.signingIdentifier.getter(v42, v41, v40, v39);
        *(v0 + 16) = v42;
        *(v0 + 24) = v41;
        *(v0 + 32) = v40;
        *(v0 + 40) = v39;
        *(v0 + 48) = v43;
        *(v0 + 56) = v44;
        v45 = *(*sub_100006D8C((v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

        os_unfair_lock_lock(v45 + 4);
        v46 = sub_1002FAE90(v59, (v0 + 16));
        v48 = v47;
        v49 = type metadata accessor for RegisteredXPCClient();
        if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
        {
          v50 = XPCClient.MessageRegistrationState.registrations.getter();
          v51 = XPCClient.MessageRegistrationState.registrations.modify();
          sub_1002FB108(v50);

          v51(v0 + 96, 0);
        }

        (v46)(v59, 0);
        v53 = *(v0 + 232);
        v52 = *(v0 + 240);
        v54 = *(v0 + 224);
        v55 = *(v0 + 184);
        v56 = *(v0 + 128);
        sub_1002FAFB0(v0 + 16);
        os_unfair_lock_unlock(v45 + 4);

        (*(v53 + 8))(v52, v54);
        *v56 = *(v55 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier);

        v57 = *(v0 + 8);

        return v57();
      }
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v69 = v10;
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100297F34(char a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10029853C;
  }

  else
  {
    *(v4 + 297) = a1 & 1;
    v5 = sub_10029807C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10029807C()
{
  if ((*(v0 + 297) & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v4 = type metadata accessor for ManagedAppDistributionError();
    sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for ManagedAppDistributionError.unrecoverableError(_:), v4);
    swift_willThrow();

    v6 = *(v0 + 8);
LABEL_5:

    v6();
    return;
  }

  v1 = *(v0 + 264);
  v2 = (*(v0 + 256) - 1) & *(v0 + 256);
  if (!v2)
  {
    while (1)
    {
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 248);
      if (v7 >= (((1 << *(v0 + 296)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v7 + 56);
      ++v1;
      if (v2)
      {
        v1 = v7;
        goto LABEL_12;
      }
    }

    v34 = *(v0 + 184);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);

    v20 = audit_token_t.signingIdentifier.getter(v19, v18, v17, v16);
    *(v0 + 16) = v19;
    *(v0 + 24) = v18;
    *(v0 + 32) = v17;
    *(v0 + 40) = v16;
    *(v0 + 48) = v20;
    *(v0 + 56) = v21;
    v22 = *(*sub_100006D8C((v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

    os_unfair_lock_lock(v22 + 4);
    v23 = sub_1002FAE90((v0 + 64), (v0 + 16));
    v25 = v24;
    v26 = type metadata accessor for RegisteredXPCClient();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v27 = XPCClient.MessageRegistrationState.registrations.getter();
      v28 = XPCClient.MessageRegistrationState.registrations.modify();
      sub_1002FB108(v27);

      v28(v0 + 96, 0);
    }

    (v23)(v0 + 64, 0);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    v32 = *(v0 + 184);
    v33 = *(v0 + 128);
    sub_1002FAFB0(v0 + 16);
    os_unfair_lock_unlock(v22 + 4);

    (*(v30 + 8))(v29, v31);
    *v33 = *(v32 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier);

    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  v3 = *(v0 + 248);
LABEL_12:
  *(v0 + 256) = v2;
  *(v0 + 264) = v1;
  v8 = *(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2))));
  v9 = *v8;
  *(v0 + 272) = *v8;
  v10 = *(v8 + 8);

  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_100297F34;
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);

  sub_100322914(v9, v10, v14, v15, v12, v13);
}

uint64_t sub_10029853C()
{

  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = type metadata accessor for ManagedAppDistributionError();
  sub_100302E04(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for ManagedAppDistributionError.unrecoverableError(_:), v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002986CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F0C48(&unk_10077F8C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v12 = &off_10077F000;
  if (v11)
  {
    v34 = *(a1 + 32);
    static Logger.xpc.getter();
    sub_1002FAF54(a1, v35);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_1002FAFB0(a1);
    v15 = os_log_type_enabled(v13, v14);
    v33 = v6;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v32 = v2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v35[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1002346CC(v34, v11, v35);
      _os_log_impl(&_mh_execute_header, v13, v14, "Client disconnected: %{public}s", v17, 0xCu);
      sub_10000710C(v18);
      v12 = &off_10077F000;

      v2 = v32;
    }

    (*(v8 + 8))(v10, v7);
    v19 = type metadata accessor for ADPInstallTask();
    v20 = (v12[259] + v2);
    v21 = v12;
    v22 = v20[3];
    v23 = v20[7];
    v24 = v20[10];
    v25 = v20[11];
    v26 = v20[12];
    v27 = sub_100006D8C(v20, v22);
    v28 = v22;
    v12 = v21;
    sub_1004233A4(v34, v11, v27, v19, v28, v23, v24, v25, v26);
    v6 = v33;
  }

  v29 = *(*sub_100006D8C(v12[259] + v2, *(v12[259] + v2 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

  os_unfair_lock_lock(v29 + 4);
  sub_1004FB40C(a1, v6);
  sub_1000032A8(v6, &unk_10077F8C0);
  os_unfair_lock_unlock(v29 + 4);
}

uint64_t sub_1002989B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_100298BDC, 0, 0);
}

uint64_t sub_100298BDC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_100298DDC, 0, 0);
}

uint64_t sub_100298DDC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0B10;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0B18, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100299300()
{

  if (v0)
  {

    v1 = sub_100302E5C;
  }

  else
  {

    v1 = sub_100302ED8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002994C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002996E4, 0, 0);
}

uint64_t sub_1002996E4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_1002998E4, 0, 0);
}

uint64_t sub_1002998E4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A1250;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A1258, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100299E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029A02C, 0, 0);
}

uint64_t sub_10029A02C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029A22C, 0, 0);
}

uint64_t sub_10029A22C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A11F8;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A1200, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029A974, 0, 0);
}

uint64_t sub_10029A974()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029AB74, 0, 0);
}

uint64_t sub_10029AB74()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A1010;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A1018, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029B2BC, 0, 0);
}

uint64_t sub_10029B2BC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029B4BC, 0, 0);
}

uint64_t sub_10029B4BC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0FA0;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_10029B9E0;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0FA8, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029B9E0()
{

  if (v0)
  {

    v1 = sub_10029BCEC;
  }

  else
  {

    v1 = sub_10029BBA0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10029BBA0()
{
  v1 = v0[36];
  v2 = v0[30];

  sub_1000032A8(v2, &unk_10077F8E0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10029BCEC()
{
}

uint64_t sub_10029BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029BFAC, 0, 0);
}

uint64_t sub_10029BFAC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029C1AC, 0, 0);
}

uint64_t sub_10029C1AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0EF0;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0EF8, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029C8F4, 0, 0);
}

uint64_t sub_10029C8F4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029CAF4, 0, 0);
}

uint64_t sub_10029CAF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0EA8;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0EB0, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029D23C, 0, 0);
}

uint64_t sub_10029D23C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029D43C, 0, 0);
}

uint64_t sub_10029D43C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0E18;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0E20, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029DB84, 0, 0);
}

uint64_t sub_10029DB84()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029DD84, 0, 0);
}

uint64_t sub_10029DD84()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0D80;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0D88, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029E2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029E4CC, 0, 0);
}

uint64_t sub_10029E4CC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029E6CC, 0, 0);
}

uint64_t sub_10029E6CC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0D30;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0D38, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029EE14, 0, 0);
}

uint64_t sub_10029EE14()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029F014, 0, 0);
}

uint64_t sub_10029F014()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0CE8;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0CF0, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10029F75C, 0, 0);
}

uint64_t sub_10029F75C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_10029F95C, 0, 0);
}

uint64_t sub_10029F95C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_100231C24((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0A98;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_10069F3A0, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10029FE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v19;
  *(v8 + 184) = v20;
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  *(v8 + 354) = v15;
  *(v8 + 144) = v14;
  *(v8 + 152) = v16;
  *(v8 + 128) = v13;
  *(v8 + 353) = a8;
  *(v8 + 352) = a6;
  *(v8 + 112) = a5;
  *(v8 + 120) = a7;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F8D0);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002A00A4, 0, 0);
}

uint64_t sub_1002A00A4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 120), v1, &qword_10077F8D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 32))(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v4 = LogKey.init(prefix:)();
    (*(v7 + 8))(v5, v8);
  }

  *(v0 + 288) = v4;
  v10 = *(v0 + 184);
  v11 = *(v0 + 354);
  v12 = *(v0 + 144);
  v13 = *(v0 + 353);
  v14 = *(v0 + 352);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  v21 = *(v0 + 128);
  (*(*(v0 + 200) + 56))(*(v0 + 240), 1, 1, *(v0 + 192));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v21;
  *(v17 + 40) = v12;
  *(v17 + 48) = v11 & 1;
  *(v17 + 56) = v19;
  *(v17 + 72) = v16;
  *(v17 + 80) = v15;
  *(v17 + 88) = v14;
  *(v17 + 96) = v20;
  *(v17 + 112) = v10;

  return _swift_task_switch(sub_1002A02A4, 0, 0);
}

uint64_t sub_1002A02A4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 352);
  sub_100005934(*(v0 + 240), *(v0 + 232), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v3 = swift_allocObject();
  *(v0 + 304) = v3;
  v4 = sub_100632B00(v1, v2, &_mh_execute_header);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v4, (v0 + 80));
  swift_unknownObjectRelease();
  *(v3 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v5 = *(v0 + 24);
  v6 = *(v0 + 288);
  if (v5)
  {

    if (v6)
    {
      v7 = *(v0 + 288);
      *(swift_task_alloc() + 16) = v7;

      v8 = v7;
      os_unfair_lock_lock((v5 + 24));
      sub_10023228C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v6;
    v9 = v6;
  }

LABEL_8:
  *(v0 + 312) = v5;
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  sub_100005934(*(v0 + 232), v12, &unk_10077F8E0);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 232);
  if (v15 == 1)
  {
    sub_1000032A8(*(v0 + 232), &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v22 = *(v0 + 352);
    (*(v19 + 32))(v18, *(v0 + 224), v21);
    (*(v19 + 16))(v20, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v17 = sub_1005AD4D8(v29, v30, v22, v20);

    (*(v19 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
  }

  *(v0 + 328) = v17;
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v24;
  v25[3] = v3;
  v25[4] = v5;
  v25[5] = v10;
  v25[6] = v17;
  v25[7] = &unk_1006A0BA8;
  v25[8] = v23;

  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_100299300;
  v27 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v27, v0 + 48, &unk_1006A0BB0, v25, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1002A07C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077F968);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077F970);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002A0A80, 0, 0);
}

uint64_t sub_1002A0A80()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002A2B04;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077F978, &qword_10077F968);
        sub_100213FA0(&qword_10077F980, &qword_10077F968);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077F988, &qword_10077F970);
        sub_100213FA0(&qword_10077F990, &qword_10077F970);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002A1718;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002A1718(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002A1E80;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002A1844;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A1844()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002A232C;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077F988, &qword_10077F970);
  sub_100213FA0(&qword_10077F990, &qword_10077F970);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002A1E80()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F988, &qword_10077F970);
  sub_100213FA0(&qword_10077F990, &qword_10077F970);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A232C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002A2658;
  }

  else
  {
    v2 = sub_1002A2440;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A2440()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077F988, &qword_10077F970);
  sub_100213FA0(&qword_10077F990, &qword_10077F970);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A2658()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F988, &qword_10077F970);
  sub_100213FA0(&qword_10077F990, &qword_10077F970);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A2B04(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002A3258;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002A2C30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A2C30()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002A36F0;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077F978, &qword_10077F968);
  sub_100213FA0(&qword_10077F980, &qword_10077F968);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002A3258()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F978, &qword_10077F968);
  sub_100213FA0(&qword_10077F980, &qword_10077F968);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002A36F0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002A3A1C;
  }

  else
  {
    v2 = sub_1002A3804;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A3804()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077F978, &qword_10077F968);
  sub_100213FA0(&qword_10077F980, &qword_10077F968);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A3A1C()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F978, &qword_10077F968);
  sub_100213FA0(&qword_10077F980, &qword_10077F968);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002A3EB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FEB0);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FEB8);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002A416C, 0, 0);
}

uint64_t sub_1002A416C()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002A61F0;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FEC0, &qword_10077FEB0);
        sub_100213FA0(&qword_10077FEC8, &qword_10077FEB0);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FED0, &qword_10077FEB8);
        sub_100213FA0(&qword_10077FED8, &qword_10077FEB8);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002A4E04;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}