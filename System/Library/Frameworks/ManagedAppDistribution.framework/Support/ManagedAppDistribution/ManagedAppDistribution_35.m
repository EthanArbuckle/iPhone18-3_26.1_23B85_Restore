uint64_t sub_1004A673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001F0C48(&unk_100780380);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100005934(a3, v24 - v9, &unk_100780380);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000032A8(v10, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000032A8(a3, &unk_100780380);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000032A8(a3, &unk_100780380);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void main()()
{
  sub_1001F0C48(&unk_100780380);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1004A673C(1852399981, 0xE400000000000000, v1, &unk_1006AD6C0, v3);

  dispatch_main();
}

uint64_t sub_1004A6B24()
{
  sub_1001F0C48(&unk_10077F8E0);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  type metadata accessor for ClientInfo();
  v0[15] = swift_task_alloc();
  type metadata accessor for BagProfile();
  v0[16] = swift_task_alloc();
  v1 = type metadata accessor for BagService();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004A6D28, 0, 0);
}

uint64_t sub_1004A6D28()
{
  _set_user_dir_suffix();
  if (ASUSQLiteConfigLookaside(1200, 20))
  {
    static Logger.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to set SQLite lookaside cache size", v3, 2u);
    }

    v4 = v0[24];
    v5 = v0[20];
    v6 = v0[21];

    (*(v6 + 8))(v4, v5);
  }

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1004A6EA4;

  return sub_1005DA7E4();
}

uint64_t sub_1004A6EA4()
{

  return _swift_task_switch(sub_1004A6FCC, 0, 0);
}

uint64_t sub_1004A6FCC()
{
  v29 = v0;
  BagProfile.init(name:version:)();
  ClientInfo.init(identifier:name:version:)();
  BagService.init(bagProfile:clientInfo:)();
  v1 = v0[10].opaque[0];
  v2 = v0[10].opaque[1];
  v4 = v0[6].opaque[1];
  v3 = v0[7].opaque[0];
  static Logger.daemon.getter();
  (*(v2 + 56))(v3, 0, 1, v1);
  sub_100005934(v3, v4, &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v5 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v6 = _os_activity_create(&_mh_execute_header, "Starting managedappdistributiond", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v6, v0 + 5);
  swift_unknownObjectRelease();
  *(v5 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v7 = v0[1].opaque[1];
  if (v7)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = 0;
  }

  type metadata accessor for Transaction();
  v8 = swift_allocObject();

  *(v8 + 16) = StaticString.description.getter();
  *(v8 + 24) = v9;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v8);
  os_unfair_lock_unlock(&dword_100788650);
  v10 = v0[10].opaque[0];
  v11 = v0[10].opaque[1];
  v12 = v0[6].opaque[0];
  sub_100005934(v0[6].opaque[1], v12, &unk_10077F8E0);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_1000032A8(v0[6].opaque[1], &unk_10077F8E0);

    v13 = 0;
  }

  else
  {
    v14 = v0[11].opaque[0];
    v15 = v0[11].opaque[1];
    v16 = v0[10].opaque[0];
    v17 = v0[10].opaque[1];
    v18 = v0[6].opaque[1];
    (*(v17 + 32))(v15, v0[6].opaque[0], v16);
    (*(v17 + 16))(v14, v15, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v13 = sub_1005AD4D8("Starting managedappdistributiond", 32, 2, v14);

    (*(v17 + 8))(v15, v16);
    sub_1000032A8(v18, &unk_10077F8E0);
  }

  v0[3].opaque[0] = v5;
  v0[3].opaque[1] = v7;
  v0[4].opaque[0] = v8;
  v0[4].opaque[1] = v13;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78);
  swift_task_localValuePush();
  os_unfair_lock_lock((v7 + 24));
  v19 = *(v7 + 16);
  v20 = v19;
  os_unfair_lock_unlock((v7 + 24));
  if (v19)
  {
    sub_100625B04();
  }

  sub_100003688(v0[9].opaque[1], v28);
  v21 = v0[7].opaque[0];
  v22 = v28[0];
  v23 = v28[1];
  v0[13].opaque[0] = v28[0];
  v0[13].opaque[1] = v23;
  swift_task_localValuePop();

  sub_1000032A8(v21, &unk_10077F8E0);
  v24 = v22;
  v25 = v23;
  v26 = swift_task_alloc();
  v0[14].opaque[0] = v26;
  *v26 = v0;
  v26[1] = sub_1004A7660;

  return withCheckedContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000010, 0x80000001006CBF90, sub_1005DABD8, 0, &type metadata for () + 8);
}

uint64_t sub_1004A7660()
{

  return _swift_task_switch(sub_1004A7788, 0, 0);
}

uint64_t sub_1004A7788()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004A78C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_1004A6B24();
}

uint64_t sub_1004A798C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1004A7A4C;
  v3 = *(v0 + 16);

  return sub_1004ADAA8(v3, v1);
}

uint64_t sub_1004A7A4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004A7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1001F0E54;

  return sub_1004ABE8C(a4, 0);
}

uint64_t sub_1004A7C0C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1004A7C3C, v1, 0);
}

uint64_t sub_1004A7C3C()
{
  sub_1004AFBB4(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004A7CB8()
{
  sub_10048C4C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A7D14(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1004A7EB8, 0, 0);
}

uint64_t sub_1004A7EB8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for LogKey.Prefix.update(_:), *(v0 + 168));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 192) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *(v4 + 16) = v6;

  return _swift_task_switch(sub_1004A7FDC, 0, 0);
}

uint64_t sub_1004A7FDC()
{
  sub_100005934(*(v0 + 160), *(v0 + 152), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "pollAvailableUpdates", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
    v12 = sub_1005AD4D8("pollAvailableUpdates", 20, 2, v14);

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
  v19[7] = &unk_1006AD758;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 248) = v20;
  *v20 = v0;
  v20[1] = sub_1004A850C;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004A850C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1004A8888;
  }

  else
  {
    v2 = sub_1004A86BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A86BC()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004A87B4, 0, 0);
}

uint64_t sub_1004A87B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A8888()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004A8980, 0, 0);
}

uint64_t sub_1004A8980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A8A54(uint64_t a1, uint64_t a2, void *a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[21] = *a3;
  sub_1001F0C48(&unk_100780380);
  v3[22] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004A8BB8, 0, 0);
}

uint64_t sub_1004A8BB8()
{
  static Logger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waking for scheduled automatic update activity", v3, 2u);
  }

  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[24];

  v7 = *(v6 + 8);
  v0[28] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1004A8D28;

  return sub_100324268((v0 + 12));
}

uint64_t sub_1004A8D28()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1004AA008;
  }

  else
  {
    v2 = sub_1004A8E68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A8E68()
{
  v1 = v0[21];
  v0[17] = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = sub_100006D8C(v0 + 12, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1004A8F80;

  return sub_100519D8C((v0 + 17), v4, v1, v3, &off_100770270, v2);
}

uint64_t sub_1004A8F80()
{

  return _swift_task_switch(sub_1004A90A8, 0, 0);
}

uint64_t sub_1004A90A8()
{
  *(v0 + 361) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 361));
  *(v0 + 362) = AppBooleanValue;

  v4 = *(v0 + 361);
  *(v0 + 363) = v4;
  if (AppBooleanValue)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  v6 = v5;
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    *(v9 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting update discovery, automatic updates enabled: %{BOOL,public}d", v9, 8u);
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);

  *(v0 + 256) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v11, v12);
  *(v0 + 40) = v15;
  *(v0 + 48) = &off_1007702D8;
  *(v0 + 56) = &off_1007702B0;
  *(v0 + 64) = &off_100770230;
  *(v0 + 72) = &off_1007701D0;
  *(v0 + 80) = &off_1007701C0;
  *(v0 + 88) = &off_1007701B0;
  *(v0 + 16) = v14;

  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_1004A9314;

  return sub_1004C2318(0, v6, v0 + 16);
}

uint64_t sub_1004A9314()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1004AA0C8;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1004A9464;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1004A9464()
{
  v1 = v0[20];
  sub_100006D8C(v0 + 12, v0[15]);
  v0[35] = sub_100625FA0();
  v0[18] = v1;

  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1004A95E8;

  JUMPOUT(0x1005FB058);
}

uint64_t sub_1004A95E8()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 296) = v3;
  *v3 = v6;
  v3[1] = sub_1004A978C;
  v4 = *(v1 + 160);

  return sub_1004B000C(v4);
}

uint64_t sub_1004A978C()
{

  return _swift_task_switch(sub_1004A98B4, 0, 0);
}

uint64_t sub_1004A98B4()
{
  v1 = *(v0 + 363);
  v2 = *(v0 + 362);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_1004F8754(0xD000000000000017, 0x80000001006CC100, v3, &unk_1006AD770, v6);

  sub_1000032A8(v3, &unk_100780380);
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 1;
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_1004A9AA8;
  if (v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v1 == 0;
  }

  v9 = v8;
  v10 = *(v0 + 160);

  return sub_10022B450(v10, v0 + 96, 0, 0, v9, 0, v0 + 328);
}

uint64_t sub_1004A9AA8()
{

  return _swift_task_switch(sub_1004A9BD0, 0, 0);
}

uint64_t sub_1004A9BD0()
{
  if (*(v0 + 363))
  {
    v1 = *(v0 + 362) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    static Logger.daemon.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not performing automatic updates, setting is disabled", v12, 2u);
    }

    v9(v10, v11);
    sub_10000710C(v0 + 96);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v2 = sub_100625FA0();
    *(v0 + 312) = v2;
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_1004A9DFC;
    v4 = *(v0 + 160);

    return sub_100225F5C(v0 + 96, v2, v4);
  }
}

uint64_t sub_1004A9DFC()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1004A9F3C, 0, 0);
}

uint64_t sub_1004A9F3C()
{
  sub_10000710C(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AA008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AA0C8()
{
  sub_10000710C(v0 + 16);
  sub_10000710C(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AA198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a4;
  v4[9] = *a4;
  v5 = type metadata accessor for Logger();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA280, 0, 0);
}

uint64_t sub_1004AA280()
{
  v1 = v0[8];
  v0[5] = v0[9];
  v0[6] = &off_100770218;
  v0[7] = &off_100770208;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1004AA33C;

  return sub_1005749BC((v0 + 2));
}

uint64_t sub_1004AA33C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004AA480, 0, 0);
  }

  else
  {
    sub_10000710C(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004AA480()
{
  sub_10000710C((v0 + 2));
  static Logger.daemon.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to renew expiring licenses: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004AA610(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v1[8] = swift_task_alloc();
  v2 = sub_1001F0C48(&qword_10077F320);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for DDMDeclaration(0);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for ManagedAppStatus.State();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for DDMDeclarationStatus(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004AA8CC, 0, 0);
}

uint64_t sub_1004AA8CC()
{
  static Logger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waking for scheduled DDM repair activity", v3, 2u);
  }

  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];

  v7 = *(v6 + 8);
  v0[27] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1004AAA50;

  return sub_1003B1FCC(sub_1003047B4, 0);
}

uint64_t sub_1004AAA50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004AAC10, 0, 0);
  }
}

uint64_t sub_1004AAC10()
{
  v1 = *(*(v0 + 232) + 16);
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 160);
    v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester;
    *(v0 + 248) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore;
    *(v0 + 256) = v4;
    *(v0 + 328) = *(v3 + 80);
    *(v0 + 264) = *(v3 + 72);
    *(v0 + 332) = enum case for ManagedAppStatus.State.failed(_:);
    while (1)
    {
      *(v0 + 272) = v2;
      v5 = *(v0 + 332);
      v6 = *(v0 + 144);
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v2, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v8 + 104))(v6, v5, v7);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v9 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v11)(v9, v10);

      if (v12)
      {
        goto LABEL_11;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v2 = *(v0 + 272) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_7;
      }
    }

    (*v11)(*(v0 + 144), *(v0 + 128));

LABEL_11:
    v15 = *(v0 + 176);
    v16 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v16;
    *(v0 + 288) = *(v15 + 8);
    *(v0 + 296) = *(v15 + 16);

    return _swift_task_switch(sub_1004AAF2C, v16, 0);
  }

  else
  {
LABEL_7:

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1004AAF2C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = *(v0[35] + 112);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1004AB01C;
  v6 = v0[12];

  return (sub_1003B0094)(v6, sub_10030124C, v4, v3);
}

uint64_t sub_1004AB01C()
{

  if (v0)
  {

    v1 = sub_1004AB684;
  }

  else
  {

    v1 = sub_1004AB164;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004AB164()
{
  v35 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(*(v0 + 112) + 56))(v3, 0, 1, v2);
  sub_1004B18C8(v3, v1, type metadata accessor for DDMDeclaration);
  if (*(v1 + *(v2 + 60)))
  {
    v4 = *(v0 + 176);
    sub_1004B1090(*(v0 + 120), type metadata accessor for DDMDeclaration);
    sub_1004B1090(v4, type metadata accessor for DDMDeclarationStatus);
    v5 = *(v0 + 272) + 1;
    if (v5 == *(v0 + 240))
    {
LABEL_7:

      v14 = *(v0 + 8);

      return v14();
    }

    while (1)
    {
      *(v0 + 272) = v5;
      v6 = *(v0 + 332);
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v5, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v9 + 104))(v7, v6, v8);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v10 = *(v0 + 144);
      v11 = *(v0 + 128);
      v12 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v12)(v10, v11);

      if (v13)
      {
        goto LABEL_15;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v5 = *(v0 + 272) + 1;
      if (v5 == *(v0 + 240))
      {
        goto LABEL_7;
      }
    }

    (*v12)(*(v0 + 144), *(v0 + 128));

LABEL_15:
    v32 = *(v0 + 176);
    v30 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v30;
    *(v0 + 288) = *(v32 + 8);
    *(v0 + 296) = *(v32 + 16);
    v31 = sub_1004AAF2C;
  }

  else
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    static Logger.daemon.getter();
    sub_1004B10F0(v16, v17, type metadata accessor for DDMDeclarationStatus);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);
    v24 = *(v0 + 168);
    if (v20)
    {
      v25 = swift_slowAlloc();
      v33 = v21;
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      v27 = *(v24 + 8);
      v28 = *(v24 + 16);

      sub_1004B1090(v24, type metadata accessor for DDMDeclarationStatus);
      v29 = sub_1002346CC(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempting re-installation of required app %{public}s", v25, 0xCu);
      sub_10000710C(v26);

      v33(v22, v23);
    }

    else
    {

      sub_1004B1090(v24, type metadata accessor for DDMDeclarationStatus);
      v21(v22, v23);
    }

    v30 = *(*(v0 + 48) + *(v0 + 256));
    *(v0 + 320) = v30;
    v31 = sub_1004AB9BC;
  }

  return _swift_task_switch(v31, v30, 0);
}

uint64_t sub_1004AB684()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  (*(*(v0 + 112) + 56))(v2, 1, 1, *(v0 + 104));
  sub_1004B1090(v1, type metadata accessor for DDMDeclarationStatus);
  sub_1000032A8(v2, &unk_1007809E0);
  v3 = *(v0 + 272) + 1;
  if (v3 == *(v0 + 240))
  {
LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    while (1)
    {
      *(v0 + 272) = v3;
      v4 = *(v0 + 332);
      v5 = *(v0 + 144);
      v6 = *(v0 + 128);
      v7 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v3, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v7 + 104))(v5, v4, v6);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v8 = *(v0 + 144);
      v9 = *(v0 + 128);
      v10 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v10)(v8, v9);

      if (v11)
      {
        goto LABEL_10;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v3 = *(v0 + 272) + 1;
      if (v3 == *(v0 + 240))
      {
        goto LABEL_6;
      }
    }

    (*v10)(*(v0 + 144), *(v0 + 128));

LABEL_10:
    v14 = *(v0 + 176);
    v15 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v15;
    *(v0 + 288) = *(v14 + 8);
    *(v0 + 296) = *(v14 + 16);

    return _swift_task_switch(sub_1004AAF2C, v15, 0);
  }
}

uint64_t sub_1004AB9BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_1004B10F0(v0[15], v0[8], type metadata accessor for DDMDeclaration);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_10077F328);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004ABABC, 0, 0);
}

uint64_t sub_1004ABABC()
{
  v1 = *(v0 + 176);
  sub_1004B1090(*(v0 + 120), type metadata accessor for DDMDeclaration);
  sub_1004B1090(v1, type metadata accessor for DDMDeclarationStatus);
  v2 = *(v0 + 272) + 1;
  if (v2 == *(v0 + 240))
  {
LABEL_6:

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    while (1)
    {
      *(v0 + 272) = v2;
      v3 = *(v0 + 332);
      v4 = *(v0 + 144);
      v5 = *(v0 + 128);
      v6 = *(v0 + 136);
      sub_1004B10F0(*(v0 + 232) + ((*(v0 + 328) + 32) & ~*(v0 + 328)) + *(v0 + 264) * v2, *(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      (*(v6 + 104))(v4, v3, v5);
      sub_1004B17C0(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      v9 = (*(v0 + 136) + 8);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*v9)(v7, v8);

      if (v10)
      {
        goto LABEL_10;
      }

      sub_1004B1090(*(v0 + 176), type metadata accessor for DDMDeclarationStatus);
      v2 = *(v0 + 272) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_6;
      }
    }

    (*v9)(*(v0 + 144), *(v0 + 128));

LABEL_10:
    v13 = *(v0 + 176);
    v14 = *(*(v0 + 48) + *(v0 + 248));
    *(v0 + 280) = v14;
    *(v0 + 288) = *(v13 + 8);
    *(v0 + 296) = *(v13 + 16);

    return _swift_task_switch(sub_1004AAF2C, v14, 0);
  }
}

uint64_t sub_1004ABDD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_1004FE0E4(a1, v4);
}

uint64_t sub_1004ABE8C(uint64_t a1, char a2)
{
  *(v2 + 600) = a2;
  v4 = type metadata accessor for Logger();
  *(v2 + 424) = v4;
  *(v2 + 432) = *(v4 - 8);
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v5 = type metadata accessor for LogKey.Prefix();
  *(v2 + 488) = v5;
  *(v2 + 496) = *(v5 - 8);
  *(v2 + 504) = swift_task_alloc();
  v6 = type metadata accessor for Dependencies();
  *(v2 + 512) = v6;
  *(v2 + 264) = v6;
  *(v2 + 272) = &off_1007702B0;
  *(v2 + 280) = &off_100770270;
  *(v2 + 288) = &off_100770230;
  *(v2 + 240) = a1;

  return _swift_task_switch(sub_1004AC024, 0, 0);
}

uint64_t sub_1004AC024()
{
  v111 = v0;
  (*(*(v0 + 496) + 104))(*(v0 + 504), enum case for LogKey.Prefix.migrator(_:), *(v0 + 488));
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v2 = LogKey.init(prefix:)();
  *(v0 + 520) = v2;
  static Logger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Starting migrator", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = (v0 + 280);
  v10 = *(v0 + 512);
  v11 = *(v0 + 480);
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);

  v14 = *(v13 + 8);
  *(v0 + 528) = v14;
  *(v0 + 536) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = *sub_100006D8C((v0 + 240), v10) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device;
  v107 = *(v15 + 24);
  *(v0 + 544) = v107;
  v16 = *(v15 + 32);
  *(v0 + 552) = v16;

  v17 = sub_10036BB34(1);
  if (v17 && (v18 = v17, v19 = String._bridgeToObjectiveC()(), v20 = [v18 stringForKey:v19], v19, v18, v20))
  {
    v21 = *(v0 + 600);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v21 & 1) == 0 && (v107 == v22 && v16 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v100 = v14;

      static Logger.daemon.getter();
      v25 = v3;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 440);
      v30 = *(v0 + 424);
      if (v28)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v110 = v33;
        *v31 = 138412546;
        *(v31 + 4) = v25;
        *v32 = v25;
        *(v31 + 12) = 2080;
        v104 = v25;
        v34 = sub_1002346CC(v107, v16, &v110);

        *(v31 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Migration not needed for '%s'", v31, 0x16u);
        sub_1000032A8(v32, &qword_10077F920);

        sub_10000710C(v33);

        v100(v29, v30);
      }

      else
      {

        v100(v29, v30);
      }

LABEL_31:
      sub_10000710C(v0 + 240);

      v97 = *(v0 + 8);

      return v97();
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  static Logger.daemon.getter();

  v35 = v3;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v102 = *(v0 + 424);
  v105 = *(v0 + 472);
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v39 = 138412802;
    *(v39 + 4) = v35;
    *v40 = v35;
    *(v39 + 12) = 2080;
    if (!v24)
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v41 = v35;
    v42 = sub_1002346CC(v22, v24, &v110);

    *(v39 + 14) = v42;
    *(v39 + 22) = 2080;
    *(v39 + 24) = sub_1002346CC(v107, v16, &v110);
    _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Migrating from '%s' to '%s'", v39, 0x20u);
    sub_1000032A8(v40, &qword_10077F920);
    v9 = (v0 + 280);

    swift_arrayDestroy();

    v14(v105, v102);
  }

  else
  {

    v14(v105, v102);
  }

  sub_1001F0C48(&qword_1007815C0);
  inited = swift_initStackObject();
  *(v0 + 560) = inited;
  *(inited + 16) = xmmword_10069E680;
  v44 = *(v0 + 264);
  v108 = *v9;
  v45 = sub_100006D8C((v0 + 240), v44);
  *(inited + 56) = &type metadata for CleanupOnMigrationTask;
  *(inited + 64) = &off_1007645C0;
  v46 = swift_allocObject();
  *(inited + 32) = v46;
  *(v46 + 40) = v44;
  *(v46 + 48) = v108;
  v47 = sub_10020A748((v46 + 16));
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  *(v46 + 64) = v35;
  *(v46 + 72) = 0xD000000000000019;
  *(v46 + 80) = 0x80000001006CC1C0;
  *(v0 + 416) = inited;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1006A4050;
  v49 = *(v0 + 264);
  v50 = *(v0 + 280);
  v51 = sub_100006D8C((v0 + 240), v49);
  *(v48 + 56) = &type metadata for AppStoreInstallSheetConsistencyTask;
  *(v48 + 64) = &off_10075BDE8;
  v52 = swift_allocObject();
  *(v48 + 32) = v52;
  v52[5] = v49;
  v52[6] = v50;
  v53 = sub_10020A748(v52 + 2);
  (*(*(v49 - 8) + 16))(v53, v51, v49);
  v52[7] = v35;
  v52[8] = 0xD000000000000028;
  v52[9] = 0x80000001006CC1E0;
  *(v48 + 96) = &type metadata for MigrateMarketplacePriorityListTask;
  *(v48 + 104) = &off_10076EDF8;
  v54 = swift_allocObject();
  *(v48 + 72) = v54;
  v54[2] = v35;
  v54[3] = 0xD000000000000026;
  v54[4] = 0x80000001006CC210;
  v54[5] = 0xD000000000000023;
  v54[6] = 0x80000001006C3890;
  *(v48 + 136) = &type metadata for SetDistributorMetadataTask;
  *(v48 + 144) = &off_100762F28;
  *(v48 + 112) = v35;
  *(v48 + 120) = 0xD00000000000001DLL;
  *(v48 + 128) = 0x80000001006CC240;
  v55 = v35;
  sub_10065380C(v48);
  v56 = *(v0 + 416);
  *(v0 + 568) = v56;
  v57 = *(v56 + 16);
  *(v0 + 576) = v57;
  if (!v57)
  {

    v74 = [objc_opt_self() standardUserDefaults];
    if (v74)
    {
      v75 = v74;
      v76 = String._bridgeToObjectiveC()();

      v77 = String._bridgeToObjectiveC()();
      [v75 setObject:v76 forKey:v77];
    }

    else
    {
    }

    v84 = *(v0 + 520);
    static Logger.daemon.getter();
    v85 = v84;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 520);
    if (v88)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v89;
      *v91 = v89;
      v92 = v89;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Migrator complete", v90, 0xCu);
      sub_1000032A8(v91, &qword_10077F920);

      v93 = *(v0 + 520);
    }

    else
    {
      v93 = v86;
      v86 = *(v0 + 520);
    }

    v94 = *(v0 + 528);
    v95 = *(v0 + 464);
    v96 = *(v0 + 424);

    v94(v95, v96);
    goto LABEL_31;
  }

  *(v0 + 584) = 0;
  v58 = *(v0 + 520);
  sub_10020A980(v56 + 32, v0 + 296);
  static Logger.daemon.getter();
  sub_10020A980(v0 + 296, v0 + 336);
  v59 = v58;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 528);
  if (v62)
  {
    v64 = *(v0 + 520);
    v103 = *(v0 + 424);
    v106 = *(v0 + 456);
    v101 = *(v0 + 528);
    v65 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v110 = v99;
    *v65 = 138412546;
    *(v65 + 4) = v64;
    *v98 = v64;
    *(v65 + 12) = 2082;
    v67 = *(v0 + 360);
    v66 = *(v0 + 368);
    sub_100006D8C((v0 + 336), v67);
    v68 = *(v66 + 8);
    v69 = v64;
    v70 = v68(v67, v66);
    v72 = v71;
    sub_10000710C(v0 + 336);
    v73 = sub_1002346CC(v70, v72, &v110);

    *(v65 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v60, v61, "[%@] Running %{public}s", v65, 0x16u);
    sub_1000032A8(v98, &qword_10077F920);

    sub_10000710C(v99);

    v101(v106, v103);
  }

  else
  {
    v78 = *(v0 + 456);
    v79 = *(v0 + 424);

    v63(v78, v79);
    sub_10000710C(v0 + 336);
  }

  v80 = *(v0 + 320);
  v81 = *(v0 + 328);
  sub_100006D8C((v0 + 296), v80);
  v109 = (*(v81 + 16) + **(v81 + 16));
  v82 = swift_task_alloc();
  *(v0 + 592) = v82;
  *v82 = v0;
  v82[1] = sub_1004ACD98;

  return v109(v80, v81);
}

uint64_t sub_1004ACD98()
{

  return _swift_task_switch(sub_1004ACE94, 0, 0);
}

uint64_t sub_1004ACE94()
{
  v74 = v0;
  v1 = v0[65];
  static Logger.daemon.getter();
  sub_10020A980((v0 + 37), (v0 + 47));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[66];
  if (v5)
  {
    v7 = v0[65];
    v68 = v0[53];
    v70 = v0[56];
    v66 = v0[66];
    v8 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v73 = v64;
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v62 = v7;
    *(v8 + 12) = 2082;
    v10 = v0[50];
    v9 = v0[51];
    sub_100006D8C(v0 + 47, v10);
    v11 = *(v9 + 8);
    v12 = v7;
    v13 = v11(v10, v9);
    v15 = v14;
    sub_10000710C((v0 + 47));
    v16 = sub_1002346CC(v13, v15, &v73);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] %{public}s complete", v8, 0x16u);
    sub_1000032A8(v62, &qword_10077F920);

    sub_10000710C(v64);

    v66(v70, v68);
  }

  else
  {
    v17 = v0[56];
    v18 = v0[53];

    v6(v17, v18);
    sub_10000710C((v0 + 47));
  }

  v19 = v0[72];
  v20 = v0[73] + 1;
  sub_10000710C((v0 + 37));
  if (v20 == v19)
  {

    v21 = [objc_opt_self() standardUserDefaults];
    if (v21)
    {
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();

      v24 = String._bridgeToObjectiveC()();
      [v22 setObject:v23 forKey:v24];
    }

    else
    {
    }

    v48 = v0[65];
    static Logger.daemon.getter();
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[65];
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v53;
      *v55 = v53;
      v56 = v53;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Migrator complete", v54, 0xCu);
      sub_1000032A8(v55, &qword_10077F920);

      v57 = v0[65];
    }

    else
    {
      v57 = v50;
      v50 = v0[65];
    }

    v58 = v0[66];
    v59 = v0[58];
    v60 = v0[53];

    v58(v59, v60);
    sub_10000710C((v0 + 30));

    v61 = v0[1];

    return v61();
  }

  else
  {
    v25 = v0[73];
    v0[73] = v25 + 1;
    v26 = v0[65];
    sub_10020A980(v0[71] + 40 * v25 + 72, (v0 + 37));
    static Logger.daemon.getter();
    sub_10020A980((v0 + 37), (v0 + 42));
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[66];
    if (v30)
    {
      v32 = v0[65];
      v69 = v0[53];
      v71 = v0[57];
      v67 = v0[66];
      v33 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v33 = 138412546;
      *(v33 + 4) = v32;
      *v63 = v32;
      *(v33 + 12) = 2082;
      v35 = v0[45];
      v34 = v0[46];
      sub_100006D8C(v0 + 42, v35);
      v36 = *(v34 + 8);
      v37 = v32;
      v38 = v36(v35, v34);
      v40 = v39;
      sub_10000710C((v0 + 42));
      v41 = sub_1002346CC(v38, v40, &v73);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Running %{public}s", v33, 0x16u);
      sub_1000032A8(v63, &qword_10077F920);

      sub_10000710C(v65);

      v67(v71, v69);
    }

    else
    {
      v42 = v0[57];
      v43 = v0[53];

      v31(v42, v43);
      sub_10000710C((v0 + 42));
    }

    v44 = v0[40];
    v45 = v0[41];
    sub_100006D8C(v0 + 37, v44);
    v72 = (*(v45 + 16) + **(v45 + 16));
    v46 = swift_task_alloc();
    v0[74] = v46;
    *v46 = v0;
    v46[1] = sub_1004ACD98;

    return v72(v44, v45);
  }
}

uint64_t sub_1004AD5F4(uint64_t a1, uint64_t a2)
{
  v11[4] = &off_100770270;
  v11[5] = &off_100770230;
  v11[6] = &off_100770218;
  v11[7] = &off_1007701D0;
  v11[8] = &off_1007701B0;
  v11[3] = type metadata accessor for Dependencies();
  v11[0] = a1;
  v4 = *(a2 + 16);

  os_unfair_lock_lock(v4 + 22);
  sub_1004B1AC0(&v4[4]);
  os_unfair_lock_unlock(v4 + 22);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  [v6 addObserver:a2 selector:"handleApplicationRegisteredNotification:" name:v7 object:0];

  v8 = [v5 defaultCenter];
  v9 = String._bridgeToObjectiveC()();
  [v8 addObserver:a2 selector:"handleApplicationUnregisteredNotification:" name:v9 object:0];

  return sub_10000710C(v11);
}

uint64_t sub_1004AD798(uint64_t a1, uint64_t a2)
{
  v7[4] = &off_1007702D8;
  v7[5] = &off_1007702B0;
  v7[6] = &off_100770270;
  v7[7] = &off_100770230;
  v7[8] = &off_100770218;
  v7[9] = &off_100770208;
  v7[10] = &off_1007701D0;
  v7[11] = &off_1007701C0;
  v7[12] = &off_1007701B0;
  v7[3] = type metadata accessor for Dependencies();
  v7[0] = a1;
  v4 = *(a2 + 16);

  os_unfair_lock_lock(v4 + 30);
  sub_1004B1AA4(&v4[4]);
  os_unfair_lock_unlock(v4 + 30);
  v5 = [objc_opt_self() defaultCenter];
  if (qword_10077E560 != -1)
  {
    swift_once();
  }

  [v5 addObserver:a2 selector:? name:? object:?];

  return sub_10000710C(v7);
}

id sub_1004AD8FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v14[4] = &off_1007702D8;
  v14[5] = &off_1007702B0;
  v14[6] = &off_100770270;
  v14[7] = &off_100770230;
  v14[8] = &off_100770218;
  v14[9] = &off_100770208;
  v14[10] = &off_1007701D0;
  v14[11] = &off_1007701C0;
  v14[12] = &off_1007701B0;
  v14[3] = v3;
  v14[0] = a2;
  v4 = type metadata accessor for Service();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_daemonInstanceIdentifier;
  v13 = 0;
  swift_stdlib_random();
  *&v5[v6] = getpid();
  v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_bagService;
  v8 = type metadata accessor for BagService();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a1, v8);
  sub_1004B1358(v14, &v5[OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies]);
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  sub_10000710C(v14);
  return v10;
}

uint64_t sub_1004ADAA8(uint64_t a1, uint64_t a2)
{
  v2[44] = a2;
  v5 = type metadata accessor for Logger();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = type metadata accessor for DDMDeclaration(0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v2[58] = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v2[59] = v6;
  v2[60] = *(v6 - 8);
  v2[61] = swift_task_alloc();
  sub_1001F0C48(&qword_100784E20);
  v2[62] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_100784E28);
  v2[63] = v7;
  v2[64] = *(v7 - 8);
  v2[65] = swift_task_alloc();
  v2[5] = type metadata accessor for Dependencies();
  v2[6] = &off_1007702D8;
  v2[7] = &off_1007702B0;
  v2[8] = &off_100770230;
  v2[9] = &off_1007701D0;
  v2[10] = &off_1007701B0;
  v2[2] = a1;

  return _swift_task_switch(sub_1004ADDE0, a2, 0);
}

uint64_t sub_1004ADDE0()
{
  sub_1001F0C48(&qword_10077F3D0);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1004B17C0(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v0[66] = v1;
  v0[67] = 0;
  v2 = v0[44];
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_1004ADF2C;
  v4 = v0[62];
  v5 = v0[63];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_1004ADF2C()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_1004AE068, v1, 0);
}

uint64_t sub_1004AE068()
{
  v1 = v0 + 2;
  v2 = v0[62];
  if ((*(v0[60] + 48))(v2, 1, v0[59]) == 1)
  {
    v3 = v0[58];
    v4 = v0[44];
    (*(v0[64] + 8))(v0[65], v0[63]);
    static TaskPriority.background.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_10026FE78((v0 + 2), (v0 + 11));
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10026FEE4((v0 + 11), (v6 + 5));

    sub_1004F8754(0, 0, v3, &unk_1006AD7D8, v6);

    sub_1000032A8(v3, &unk_100780380);
    sub_10000710C((v0 + 2));

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_1004B18C8(v2, v0[61], type metadata accessor for ManagedAppDeclarationIngester.Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[61];
    v11 = v0[45];
    v12 = v0[46];
    v13 = v0[44];
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v0[56];
      v15 = v0[52];
      sub_1004B18C8(v10, v14, type metadata accessor for DDMDeclaration);
      v0[36] = 5391437;
      v0[37] = 0xE300000000000000;
      sub_1001F0C48(&qword_10077E910);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10069E680;
      v17 = String.hashValue.getter();
      *(v16 + 56) = &type metadata for Int;
      *(v16 + 64) = &protocol witness table for Int;
      *(v16 + 32) = v17;
      v18._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 58;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      String.append(_:)(v14[3]);
      v20 = objc_allocWithZone(type metadata accessor for LogKey());
      v21 = LogKey.init(string:)();
      v0[74] = v21;
      (*(v12 + 56))(v15, 1, 1, v11);
      v22 = swift_task_alloc();
      v0[75] = v22;
      v22[2] = v13;
      v22[3] = v14;
      v22[4] = v1;
      v23 = v21;
      if (v13)
      {
        swift_getObjectType();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v0[77] = v26;
      v0[76] = v24;
      v38 = sub_1004AEC5C;
    }

    else
    {
      v27 = v0[57];
      v28 = v0[54];
      sub_1004B18C8(v10, v27, type metadata accessor for DDMDeclaration);
      v0[40] = 4801613;
      v0[41] = 0xE300000000000000;
      sub_1001F0C48(&qword_10077E910);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10069E680;
      v30 = String.hashValue.getter();
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v30;
      v31._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      String.append(_:)(v27[3]);
      v33 = objc_allocWithZone(type metadata accessor for LogKey());
      v34 = LogKey.init(string:)();
      v0[69] = v34;
      (*(v12 + 56))(v28, 1, 1, v11);
      v35 = swift_task_alloc();
      v0[70] = v35;
      v35[2] = v1;
      v35[3] = v13;
      v35[4] = v27;
      v35[5] = v34;
      v36 = v34;
      if (v13)
      {
        swift_getObjectType();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v37;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v0[72] = v26;
      v0[71] = v24;
      v38 = sub_1004AE654;
    }

    return _swift_task_switch(v38, v24, v26);
  }
}

void sub_1004AE654()
{
  sub_100005934(v0[27].opaque[0], v0[26].opaque[1], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[36].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Ingest declaration", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[21].opaque[0] = 0;
  v0[21].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 21);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[21];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[14].opaque[1];
  v4 = v0[34].opaque[1];
  if (v3)
  {
    v5 = v0[33].opaque[1];

    *(swift_task_alloc() + 16) = v4;
    v6 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v3 + 24));
      return;
    }

    v8 = v0[34].opaque[1];
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

  v0[39].opaque[1] = v3;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v0[40].opaque[0] = v9;
  *(v9 + 16) = StaticString.description.getter();
  *(v9 + 24) = v10;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = off_100788658;
  if (*(off_100788658 + 2) && (v14 = sub_10052213C(v11, v12), (v15 & 1) != 0))
  {
    v16 = (v13[7] + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    v18 = sub_1005B83F0(v11, v12);
    v17 = 0;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  v37 = v9;
  v38 = v1;
  v19 = v0[26].opaque[1];
  v20 = v0[25].opaque[0];
  v21 = v0[23].opaque[0];
  v36 = v0[22].opaque[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = off_100788658;
  sub_1005C1BAC(v17 + 1, v18, v11, v12, isUniquelyReferenced_nonNull_native);

  off_100788658 = v39;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v19, v20, &unk_10077F8E0);
  v23 = (*(v21 + 48))(v20, 1, v36);
  v24 = v0[26].opaque[1];
  if (v23 == 1)
  {
    sub_1000032A8(v0[26].opaque[1], &unk_10077F8E0);

    v25 = 0;
  }

  else
  {
    v27 = v0[23].opaque[1];
    v26 = v0[24].opaque[0];
    v28 = v0[22].opaque[1];
    v29 = v0[23].opaque[0];
    (*(v29 + 32))(v26, v0[25].opaque[0], v28);
    (*(v29 + 16))(v27, v26, v28);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v25 = sub_1005AD4D8("Ingest declaration", 18, 2, v27);

    (*(v29 + 8))(v26, v28);
    sub_1000032A8(v24, &unk_10077F8E0);
  }

  v0[40].opaque[1] = v25;
  v30 = v0[35].opaque[0];
  v31 = v0[34].opaque[1];
  v32 = v0[33].opaque[0];
  v33 = v0[22].opaque[0];
  v0[16].opaque[0] = v38;
  v0[16].opaque[1] = v3;
  v0[17].opaque[0] = v37;
  v0[17].opaque[1] = v25;
  v34 = swift_task_alloc();
  v0[41].opaque[0] = v34;
  v34[2] = v31;
  v34[3] = v38;
  v34[4] = v3;
  v34[5] = v37;
  v34[6] = v25;
  v34[7] = &unk_1006AD7F0;
  v34[8] = v30;

  v35 = swift_task_alloc();
  v0[41].opaque[1] = v35;
  *v35 = v0;
  v35[1] = sub_1004AF274;

  TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v35, &v0[16], &unk_1006AD7F8, v34, v33, v32, 0xD000000000000033, 0x80000001006C49B0);
}

void sub_1004AEC5C()
{
  sub_100005934(v0[26].opaque[0], v0[25].opaque[1], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[39].opaque[0] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Remove declaration", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[19].opaque[0] = 0;
  v0[19].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 19);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[19];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[10].opaque[1];
  v4 = v0[37].opaque[0];
  if (v3)
  {
    v5 = v0[33].opaque[1];

    *(swift_task_alloc() + 16) = v4;
    v6 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v3 + 24));
      return;
    }

    v8 = v0[37].opaque[0];
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
  v0[42].opaque[1] = v3;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v0[43].opaque[0] = v9;
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
  v36 = v0[25].opaque[1];
  v19 = v0[24].opaque[1];
  v20 = v12;
  v21 = v0[23].opaque[0];
  v37 = v0[22].opaque[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = off_100788658;
  sub_1005C1BAC(v17 + 1, v18, v20, v11, isUniquelyReferenced_nonNull_native);

  off_100788658 = v41;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v36, v19, &unk_10077F8E0);
  v23 = (*(v21 + 48))(v19, 1, v37);
  v24 = v0[25].opaque[1];
  if (v23 == 1)
  {
    sub_1000032A8(v0[25].opaque[1], &unk_10077F8E0);

    v25 = 0;
  }

  else
  {
    v26 = v0[24].opaque[0];
    v28 = v0[23].opaque[0];
    v27 = v0[23].opaque[1];
    v29 = v0[22].opaque[1];
    (*(v28 + 32))(v26, v0[24].opaque[1], v29);
    (*(v28 + 16))(v27, v26, v29);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v25 = sub_1005AD4D8("Remove declaration", 18, 2, v27);

    (*(v28 + 8))(v26, v29);
    sub_1000032A8(v24, &unk_10077F8E0);
  }

  v30 = v38;
  v0[43].opaque[1] = v25;
  v31 = v0[37].opaque[1];
  v32 = v0[37].opaque[0];
  v39 = v0[33].opaque[0];
  v33 = v0[22].opaque[0];
  v0[12].opaque[0] = v40;
  v0[12].opaque[1] = v3;
  v0[13].opaque[0] = v30;
  v0[13].opaque[1] = v25;
  v34 = swift_task_alloc();
  v0[44].opaque[0] = v34;
  v34[2] = v32;
  v34[3] = v40;
  v34[4] = v3;
  v34[5] = v30;
  v34[6] = v25;
  v34[7] = &unk_1006AD7E0;
  v34[8] = v31;

  v35 = swift_task_alloc();
  v0[44].opaque[1] = v35;
  *v35 = v0;
  v35[1] = sub_1004AF714;

  TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v35, &v0[12], &unk_1006AD7E8, v34, v33, v39, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004AF274()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {

    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = sub_1004AF670;
  }

  else
  {

    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = sub_1004AF450;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AF450()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 352);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004AF558, v2, 0);
}

uint64_t sub_1004AF558()
{
  v1 = v0;
  v2 = *(v0 + 672);
  v3 = *(v1 + 456);

  sub_1004B1090(v3, type metadata accessor for DDMDeclaration);
  *(v1 + 536) = v2;
  v4 = *(v1 + 528);
  v5 = *(v1 + 352);
  v6 = swift_task_alloc();
  *(v1 + 544) = v6;
  *v6 = v1;
  v6[1] = sub_1004ADF2C;
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, v4, v8);
}

uint64_t sub_1004AF670()
{
}

uint64_t sub_1004AF714()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_1004AFB10;
  }

  else
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_1004AF8F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AF8F0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 352);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004AF9F8, v2, 0);
}

uint64_t sub_1004AF9F8()
{
  v1 = v0;
  v2 = *(v0 + 720);
  v3 = *(v1 + 448);

  sub_1004B1090(v3, type metadata accessor for DDMDeclaration);
  *(v1 + 536) = v2;
  v4 = *(v1 + 528);
  v5 = *(v1 + 352);
  v6 = swift_task_alloc();
  *(v1 + 544) = v6;
  *v6 = v1;
  v6[1] = sub_1004ADF2C;
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, v4, v8);
}

uint64_t sub_1004AFB10()
{
}

uint64_t sub_1004AFBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5 + 22;
  v7 = type metadata accessor for Dependencies();
  v20[4] = &off_1007702B0;
  v20[5] = &off_100770270;
  v20[6] = &off_100770230;
  v20[7] = &off_100770218;
  v20[8] = &off_100770208;
  v20[9] = &off_1007701D0;
  v20[10] = &off_1007701C0;
  v20[11] = &off_1007701B0;
  v20[3] = v7;
  v20[0] = a1;
  sub_100231CE8(v20, v19);
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  swift_beginAccess();

  sub_1004B13CC(v19, a2 + v8);
  swift_endAccess();
  sub_10054DC08();
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v11 = sub_1004B17C0(&qword_100784E18, type metadata accessor for AppInstallScheduler);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a2;
  swift_retain_n();
  sub_1002FBE70(0, 0, v6, 0, 0, &unk_1006AD790, v12);

  sub_1000032A8(v6, &unk_100780380);
  v10(v6, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v11;
  v13[4] = a2;
  swift_retain_n();
  sub_1004A673C(0, 0, v6, &unk_1006AD798, v13);

  v10(v6, 1, 1, v9);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v11;
  v14[4] = a2;
  swift_retain_n();
  sub_1004A673C(0xD00000000000002CLL, 0x80000001006CC130, v6, &unk_1006AD7A0, v14);

  v10(v6, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;

  sub_1004F8754(0xD000000000000026, 0x80000001006CC160, v6, &unk_1006AD7A8, v15);

  sub_1000032A8(v6, &unk_100780380);
  v10(v6, 1, 1, v9);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v11;
  v16[4] = a2;
  swift_retain_n();
  sub_1004A673C(0xD000000000000028, 0x80000001006CC190, v6, &unk_1006AD7B0, v16);

  return sub_10000710C(v20);
}

uint64_t sub_1004B000C(uint64_t *a1)
{
  v3 = *a1;
  v4 = type metadata accessor for Logger();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[5] = v3;
  v1[6] = &off_1007702D8;
  v1[7] = &off_100770208;
  v1[8] = &off_1007701D0;
  v1[2] = a1;

  return _swift_task_switch(sub_1004B01B4, 0, 0);
}

uint64_t sub_1004B01B4()
{
  (*(v0[20] + 56))(v0[25], 1, 1, v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *(v1 + 16) = v0 + 2;

  return _swift_task_switch(sub_1004B0274, 0, 0);
}

uint64_t sub_1004B0274()
{
  sub_100005934(*(v0 + 200), *(v0 + 192), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "syncAgeRatings", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  os_activity_scope_enter(v2, (v0 + 136));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 136);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 80);
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  *(v0 + 224) = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v0 + 232) = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = *(v0 + 184);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  sub_100005934(*(v0 + 192), v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = *(v0 + 192);
  if (v9 == 1)
  {
    sub_1000032A8(*(v0 + 192), &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);
    (*(v13 + 32))(v12, *(v0 + 184), v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("syncAgeRatings", 14, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  *(v0 + 240) = v11;
  v16 = *(v0 + 208);
  *(v0 + 104) = v1;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v11;
  v17 = swift_task_alloc();
  *(v0 + 248) = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AD778;
  v17[8] = v16;

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1004B074C;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v18, v0 + 104, &unk_1006AD780, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004B074C()
{

  if (v0)
  {

    v1 = sub_100448038;
  }

  else
  {

    v1 = sub_1004B090C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004B090C()
{
  v1 = *(v0 + 200);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004B09F0, 0, 0);
}

uint64_t sub_1004B09F0()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B0AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10058D37C(a1, v4, v5, v7, v6);
}

uint64_t sub_1004B0B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100445E94(a1, v4, v5, v6);
}

uint64_t sub_1004B0C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A796C(a1, v4, v5, v6);
}

uint64_t sub_1004B0CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A7B40(a1, v4, v5, v6);
}

uint64_t sub_1004B0D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004A7BEC(a1, v4, v5, v6);
}

uint64_t sub_1004B0E50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_1004A7C9C();
}

uint64_t sub_1004B0EFC()
{
  v2 = *(type metadata accessor for BagService() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100214EFC;

  return sub_1004A7D14(v0 + v3, v4);
}

uint64_t sub_1004B1000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100214EFC;

  return sub_1004AA610(v0);
}

uint64_t sub_1004B1090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004B10F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B1158(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1004A8A54(a1, v5, v4);
}

uint64_t sub_1004B1204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1004AA198(a1, v4, v5, v6);
}

uint64_t sub_1004B12B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10020B100(a1, v4);
}

uint64_t sub_1004B1358(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 96);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1004B13CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100784E10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B143C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_100550900(a1, v4, v5, v6);
}

uint64_t sub_1004B14F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10054F824(a1, v4, v5, v6);
}

uint64_t sub_1004B15A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_100553BB0();
}

uint64_t sub_1004B1658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_100558030();
}

uint64_t sub_1004B170C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1005588AC(a1, v4, v5, v6);
}

uint64_t sub_1004B17C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B1808(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10023A754(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004B18C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B1930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10023A578(a1, v4, v5, v6);
}

uint64_t sub_1004B19E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100239DD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1004B1ADC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1004B1AFC, v1, 0);
}

uint64_t sub_1004B1AFC()
{
  v1 = *(*(v0 + 112) + 112);
  *(v0 + 120) = v1;
  if (v1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 128) = v11;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 128) = v2;
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 120);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);

LABEL_6:
        *(v0 + 136) = v4;
        *(v0 + 144) = 1;
        v5 = *(v0 + 104);
        v14 = *(v5 + 24);
        v6 = *(v5 + 24);
        v16 = *(v5 + 64);
        v17 = *(v5 + 40);
        v15 = *(v5 + 80);
        v7 = sub_100006D8C(v5, v6);
        *(v0 + 40) = v14;
        *(v0 + 56) = v17;
        *(v0 + 72) = v16;
        *(v0 + 88) = v15;
        v8 = sub_10020A748((v0 + 16));
        (*(*(v6 - 8) + 16))(v8, v7, v6);
        v9 = swift_task_alloc();
        *(v0 + 152) = v9;
        *v9 = v0;
        v9[1] = sub_1004B1D3C;

        return sub_1003FA244(v0 + 16);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_10077E538 != -1)
  {
LABEL_16:
    swift_once();
  }

  v12 = qword_100784E30;
  os_unfair_lock_lock((qword_100784E30 + 24));
  sub_100428428((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004B1D3C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1004B2090;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_10000710C(v2 + 16);
    v4 = sub_1004B1E64;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1004B1E64()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  if (v1 == v2)
  {
    v3 = *(v0 + 160);
    if (qword_10077E538 != -1)
    {
      swift_once();
    }

    v4 = qword_100784E30;
    os_unfair_lock_lock((qword_100784E30 + 24));
    sub_100428428((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    if (!v3)
    {
      v13 = *(v0 + 8);

      v13();
    }

    return;
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  *(v0 + 136) = v7;
  *(v0 + 144) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v0 + 104);
  v14 = *(v8 + 24);
  v9 = *(v8 + 24);
  v16 = *(v8 + 64);
  v17 = *(v8 + 40);
  v15 = *(v8 + 80);
  v10 = sub_100006D8C(v8, v9);
  *(v0 + 40) = v14;
  *(v0 + 56) = v17;
  *(v0 + 72) = v16;
  *(v0 + 88) = v15;
  v11 = sub_10020A748((v0 + 16));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_1004B1D3C;

  sub_1003FA244(v0 + 16);
}

uint64_t sub_1004B2090()
{

  sub_10000710C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B20FC()
{
  sub_1001F0C48(&qword_100784EF8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_100784E30 = result;
  return result;
}

uint64_t sub_1004B2148(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:

    v45 = _swiftEmptyArrayStorage;
LABEL_13:
    *(v3 + 112) = v45;
    UUID.init()();
    (*(v10 + 32))(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19ADPBatchInstallTask_id, v12, v9);
    return v3;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  v51 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v46 = v12;
    v47 = v10;
    v48 = v2;
    v50 = v9;
    v15 = 0;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = (v10 + 16);
      do
      {
        v17 = v15 + 1;
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for ADPInstallTask();
        v19 = swift_allocObject();
        swift_defaultActor_initialize();
        v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP;
        v21 = type metadata accessor for ADP();
        (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        sub_1001F0C48(&qword_100783C98);
        v22 = a1;
        v23 = swift_allocObject();
        *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1004B3F1C(v8, v23 + *(*v23 + class metadata base offset for ManagedBuffer + 16));
        *(v19 + v20) = v23;
        v24 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
        v25 = type metadata accessor for ADPPreflightResultingMetadata(0);
        v26 = v19 + v24;
        v9 = v50;
        (*(*(v25 - 8) + 56))(v26, 1, 1, v25);
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 1;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 1;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = 0;
        v27 = (v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
        *v27 = 0;
        v27[1] = 0;
        *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval) = 0;
        *(v19 + 112) = v18;
        (*v16)(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id, v18 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v9);
        v28 = *(a2 + 16);
        *(v19 + 120) = *a2;
        *(v19 + 136) = v28;
        *(v19 + 152) = *(a2 + 32);
        v29 = *(v18 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v19 + 160) = v29;
        v30 = v29;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v22;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v17;
      }

      while (v13 != v17);
    }

    else
    {
      type metadata accessor for ADPInstallTask();
      v49 = a1;
      v31 = (v10 + 16);
      v32 = 32;
      do
      {
        v33 = *(v49 + v32);
        v34 = swift_allocObject();

        swift_defaultActor_initialize();
        v35 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP;
        v36 = type metadata accessor for ADP();
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        sub_1001F0C48(&qword_100783C98);
        v37 = swift_allocObject();
        *(v37 + ((*(*v37 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1004B3F1C(v8, v37 + *(*v37 + class metadata base offset for ManagedBuffer + 16));
        *(v34 + v35) = v37;
        v38 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
        v39 = type metadata accessor for ADPPreflightResultingMetadata(0);
        v40 = v34 + v38;
        v9 = v50;
        (*(*(v39 - 8) + 56))(v40, 1, 1, v39);
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 1;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 1;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = 0;
        v41 = (v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
        *v41 = 0;
        v41[1] = 0;
        *(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval) = 0;
        *(v34 + 112) = v33;
        (*v31)(v34 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id, v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v9);
        v42 = *(a2 + 16);
        *(v34 + 120) = *a2;
        *(v34 + 136) = v42;
        *(v34 + 152) = *(a2 + 32);
        v43 = *(v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v34 + 160) = v43;
        v44 = v43;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v32 += 8;
        --v13;
      }

      while (v13);
    }

    v45 = v51;
    v10 = v47;
    v3 = v48;
    v12 = v46;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B27E4(void *a1, uint64_t a2)
{
  v6[2] = a2;
  result = sub_10041DFEC(sub_1004B3F8C, v6);
  if (*a1 >> 62)
  {
    v5 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v4 >= v5)
    {
      return sub_100428C24(result, v4);
    }
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= result)
    {
      return sub_100428C24(result, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B2888()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19ADPBatchInstallTask_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ADPBatchInstallTask()
{
  result = qword_100784E60;
  if (!qword_100784E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B295C()
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

uint64_t sub_1004B2A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 320) = a4;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2B6C, 0, 0);
}

uint64_t sub_1004B2B6C()
{
  v70 = v0;
  if (!v0[11])
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];
    v6 = v0[9];
    static Logger.install.getter();
    (*(v4 + 16))(v3, v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    if (v9)
    {
      v67 = v0[21];
      v16 = swift_slowAlloc();
      v63 = v8;
      v17 = swift_slowAlloc();
      v69[0] = v17;
      *v16 = 136446210;
      sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v10;
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_1002346CC(v18, v20, v69);

      *(v16 + 4) = v21;
      v22 = "No calling bundle ID found when confirming %{public}s";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, v63, v22, v16, 0xCu);
      sub_10000710C(v17);

      (*(v11 + 8))(v65, v67);
LABEL_21:
      type metadata accessor for InternalError();
      sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_20:

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    goto LABEL_21;
  }

  if (qword_10077E538 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = qword_100784E30;
  v0[27] = qword_100784E30;
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1004B3E6C((v2 + 16), v69);
  v0[28] = 0;
  os_unfair_lock_unlock((v2 + 24));
  v23 = v69[0];
  v0[29] = v69[0];

  if (!v23)
  {
    v32 = v0[19];
    v33 = v0[16];
    v34 = v0[17];
    v35 = v0[9];
    static Logger.install.getter();
    (*(v34 + 16))(v32, v35, v33);
    v7 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v7, v36);
    v10 = v0[24];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[19];
    v15 = v0[16];
    v14 = v0[17];
    if (v37)
    {
      v67 = v0[21];
      v16 = swift_slowAlloc();
      v63 = v36;
      v17 = swift_slowAlloc();
      v69[0] = v17;
      *v16 = 136446210;
      sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v10;
      v40 = v39;
      (*(v14 + 8))(v13, v15);
      v41 = sub_1002346CC(v38, v40, v69);

      *(v16 + 4) = v41;
      v22 = "No pending batch install with ID: %{public}s found";
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v26 = *(v23 + 112);
  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (v27)
    {
LABEL_11:
      if ((v26 & 0xC000000000000001) != 0)
      {

        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v27, v24, v25);
        }

        v28 = *(v26 + 32);
      }

      v0[30] = v28;
      v29 = *(*(v28 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
      v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v29 + v31));
      sub_10020A980(v29 + v30, (v0 + 2));
      os_unfair_lock_unlock((v29 + v31));

      sub_1001F0C48(&qword_10077E970);
      if (swift_dynamicCast())
      {
        if (v0[7] == v0[10] && v0[11] == v0[8])
        {

LABEL_26:
          v27 = sub_1004B3440;
          v24 = v23;
          goto LABEL_28;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v44)
        {
          goto LABEL_26;
        }
      }

      v27 = sub_1004B3B88;
      v24 = v28;
LABEL_28:
      v25 = 0;

      return _swift_task_switch(v27, v24, v25);
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_11;
    }
  }

  v45 = v0[20];
  v46 = v0[16];
  v47 = v0[17];
  v48 = v0[9];
  static Logger.install.getter();
  (*(v47 + 16))(v45, v48, v46);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v68 = v0[25];
  v52 = v0[21];
  v53 = v0[22];
  v54 = v0[20];
  v56 = v0[16];
  v55 = v0[17];
  if (v51)
  {
    v57 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69[0] = v66;
    *v57 = 136446210;
    sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID);
    v64 = v52;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v50;
    v60 = v59;
    (*(v55 + 8))(v54, v56);
    v61 = sub_1002346CC(v58, v60, v69);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v49, v62, "Can't resume an empty batch: %{public}s", v57, 0xCu);
    sub_10000710C(v66);

    (*(v53 + 8))(v68, v64);
  }

  else
  {

    (*(v55 + 8))(v54, v56);
    (*(v53 + 8))(v68, v52);
  }

  type metadata accessor for InternalError();
  sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_22:

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004B3440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 232) + 112);
  *(v3 + 248) = v4;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 256) = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    *(v3 + 264) = *(v3 + 224);
    v5 = sub_1004B3608;
    v6 = 0;
    a3 = 0;

    return _swift_task_switch(v5, v6, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  *(v3 + 256) = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  v6 = *(v3 + 248);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v5, v6, a3);
  }

  v7 = *(v6 + 32);

LABEL_7:
  *(v3 + 272) = v7;
  *(v3 + 280) = 1;
  v8 = *(v3 + 96);
  v9 = sub_10040022C();
  v10 = 0;
  v11 = 0;
  if ((v12 & 1) == 0 && v8)
  {
    if (*(*(v3 + 96) + 16) && (v13 = sub_10052BA64(v9), (v14 & 1) != 0))
    {
      v15 = (*(*(v3 + 96) + 56) + 16 * v13);
      v10 = *v15;
      v11 = v15[1];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(v3 + 288) = v11;
  v16 = swift_task_alloc();
  *(v3 + 296) = v16;
  *v16 = v3;
  v16[1] = sub_1004B3760;
  v17 = *(v3 + 112);
  v18 = *(v3 + 120);
  v19 = *(v3 + 104);
  v20 = *(v3 + 320);

  return sub_1004064CC(v20, v10, v11, v19, v17, v18);
}

void sub_1004B3608()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[9];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v2 + 24));
  sub_1004B3EC0((v2 + 16));
  if (v1)
  {
    v4 = (v0[27] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    os_unfair_lock_unlock((v0[27] + 24));

    v5 = v0[1];

    v5();
  }
}

uint64_t sub_1004B3760()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_1004B3A58;
  }

  else
  {
    v4 = sub_1004B38A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004B38A4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);

  if (v1 == v2)
  {
    *(v0 + 264) = *(v0 + 304);
    v3 = sub_1004B3608;
    v5 = 0;
    v4 = 0;

    return _swift_task_switch(v3, v5, v4);
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 248);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = v3;
  }

  else
  {
    if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      return _swift_task_switch(v3, v5, v4);
    }

    v7 = *(v5 + 8 * v6 + 32);
  }

  *(v0 + 272) = v7;
  *(v0 + 280) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *(v0 + 96);
  v9 = sub_10040022C();
  v10 = 0;
  v11 = 0;
  if ((v12 & 1) == 0 && v8)
  {
    if (*(*(v0 + 96) + 16) && (v13 = sub_10052BA64(v9), (v14 & 1) != 0))
    {
      v15 = (*(*(v0 + 96) + 56) + 16 * v13);
      v10 = *v15;
      v11 = v15[1];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(v0 + 288) = v11;
  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_1004B3760;
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 320);

  return sub_1004064CC(v20, v10, v11, v19, v17, v18);
}

uint64_t sub_1004B3A58()
{

  return _swift_task_switch(sub_1004B3AC0, 0, 0);
}

uint64_t sub_1004B3AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B3B88()
{
  v1 = *(*(v0 + 240) + 160);
  *(v0 + 312) = v1;
  v2 = v1;

  return _swift_task_switch(sub_1004B3BFC, 0, 0);
}

uint64_t sub_1004B3BFC()
{
  v1 = v0[39];
  static Logger.install.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Blocking attempt to confirm install started by another distributor.", v6, 0xCu);
    sub_1001F8084(v7);
  }

  v9 = v0[39];
  v10 = v0[26];
  v11 = v0[21];
  v12 = v0[22];

  (*(v12 + 8))(v10, v11);
  type metadata accessor for InternalError();
  sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004B3E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B3E6C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = *(v2 + 16);
  result = sub_10020B0C8(sub_1004B3EDC, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1004B3F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100783C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1004B3FA8()
{
  v0 = String.count.getter();
  if (v0)
  {
    v1 = v0;
    result = sub_100526324(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v4 = String.subscript.getter();
      v5 = v3;
      if (v4 == 45 && v3 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 43;
      }

      else if (v4 == 95 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 47;
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100526324((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v4;
      v8[5] = v5;
      String.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_1001F0C48(&qword_100784A78);
  sub_10048E6B0();
  String.init<A>(_:)();

  v9 = String.count.getter();

  v10 = v9 & 3;
  if (v9 <= 0)
  {
    v10 = -(-v9 & 3);
  }

  if (v10)
  {
    v11._countAndFlagsBits = 61;
    v11._object = 0xE100000000000000;
    v12 = String.init(repeating:count:)(v11, 4 - v10);
    String.append(_:)(v12);
  }

  v13 = Data.init(base64Encoded:options:)();
  v15 = v14;
  sub_1001DFECC(v13, v14);

  if (v15 >> 60 != 15)
  {
    sub_10020B0E0(v13, v15);
  }

  return v13;
}

char *sub_1004B4220()
{
  Data.base64EncodedString(options:)(0);
  v0 = String.count.getter();
  if (v0)
  {
    v1 = v0;
    result = sub_100526324(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v4 = String.subscript.getter();
      v5 = v3;
      if (v4 == 43 && v3 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 45;
      }

      else if (v4 == 47 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 95;
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100526324((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v4;
      v8[5] = v5;
      String.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_1001F0C48(&qword_100784A78);
  sub_10048E6B0();
  String.init<A>(_:)();
  v9 = String.Iterator.next()();
  object = v9.value._object;
  if (v9.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 61 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13._countAndFlagsBits = countAndFlagsBits;
        v13._object = object;
        String.append(_:)(v13);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
    object = 0;
  }

  return object;
}

void sub_1004B44BC(CGContext *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for SecureButtonTag.ButtonImagePlacement();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v109 = &v98 - v14;
  v15 = __chkstk_darwin(v13);
  v110 = &v98 - v16;
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  CGContextSaveGState(a1);
  v19 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_borderDrawing);
  v111 = a2;
  [v19 drawInContext:a1 atPoint:{a2, a3}];
  CGContextRestoreGState(a1);
  CGContextSaveGState(a1);
  v20 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_backgroundDrawing);
  v21 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_tag);
  SecureButtonTag.borderWidth.getter();
  v23 = v22;
  SecureButtonTag.borderWidth.getter();
  [v20 drawInContext:a1 atPoint:{v23, v24}];
  CGContextRestoreGState(a1);
  v25 = (v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan);
  v26 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 32);
  v108 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 40);
  v27 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 56);
  v28 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan + 24);
  v112 = v21;
  v29 = SecureButtonTag.foregroundColor.getter();
  v30 = v29;
  if (v28)
  {
    v31 = objc_allocWithZone(UISVectorGlyphDrawing);
    v32 = v28;
    v113 = [v31 initWithVectorGlyph:v32 tintColor:v30];
  }

  else
  {

    v113 = 0;
  }

  v33 = v25[3];
  v118 = v25[2];
  v119 = v33;
  v34 = v25[5];
  v120 = v25[4];
  v121 = v34;
  v35 = v25[1];
  v116 = *v25;
  v117 = v35;
  v36 = SecureButtonTag.foregroundColor.getter();
  v37 = sub_10036B1FC(v36);

  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  if (v113)
  {
    [v113 alignmentRect];
    v41 = v43;
    v42 = v44;
  }

  v105 = v39;
  v106 = v40;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  if (v37)
  {
    [v37 alignmentRect];
    v38 = v48;
    v45 = v49;
    v46 = v50;
  }

  v107 = v47;
  v102 = [*(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_style) layoutDirection];
  if (!v113)
  {
    goto LABEL_28;
  }

  v100 = v113;
  CGContextSaveGState(a1);
  SecureButtonTag.imagePlacement.getter();
  v51 = (*(v9 + 88))(v18, v8);
  v52 = enum case for SecureButtonTag.ButtonImagePlacement.top(_:);
  v101 = v26;
  v104 = v42;
  v103 = v46;
  if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.top(_:))
  {
    goto LABEL_10;
  }

  if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.leading(_:))
  {
    v99 = v37;
    v98 = v4;
    v71 = enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:);
  }

  else
  {
    if (v51 == enum case for SecureButtonTag.ButtonImagePlacement.bottom(_:))
    {
LABEL_10:
      v53 = v38;
      v54 = a3;
      v55 = v41;
      v56 = v45;
      v57 = v108;
      v58 = v110;
      SecureButtonTag.imagePlacement.getter();
      v59 = *(v9 + 104);
      v99 = v12;
      v60 = a1;
      v61 = v4;
      v62 = v109;
      v59(v109, v52, v8);
      sub_1004B5398();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v63 = v37;
      v64 = *(v9 + 8);
      v65 = v62;
      v4 = v61;
      a1 = v60;
      v12 = v99;
      v64(v65, v8);
      v64(v58, v8);
      v37 = v63;
      v66 = v107 == 0.0 || v115 == v114;
      v67 = v107 - v57 * 0.5;
      v68 = -(v57 * 0.5);
      v45 = v56;
      v41 = v55;
      if (v66)
      {
        v69 = v68;
      }

      else
      {
        v69 = v67;
      }

      v70 = v55 * -0.5;
      goto LABEL_27;
    }

    v99 = v37;
    v98 = v4;
    v71 = v51;
    if (v51 != enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:))
    {
      goto LABEL_49;
    }
  }

  v72 = v26 * 0.5;
  v73 = v110;
  SecureButtonTag.imagePlacement.getter();
  v74 = v109;
  (*(v9 + 104))(v109, v71, v8);
  sub_1004B5398();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v75 = *(v9 + 8);
  v75(v74, v8);
  v75(v73, v8);
  v53 = v38;
  if (v115 != v114)
  {
    v4 = v98;
    if ((v103 != 0.0) == (v102 == 0))
    {
      goto LABEL_23;
    }

LABEL_25:
    v54 = a3;
    v70 = v103 - v72;
    goto LABEL_26;
  }

  v4 = v98;
  if (!v102)
  {
    goto LABEL_25;
  }

LABEL_23:
  v54 = a3;
  v70 = -v72;
LABEL_26:
  v37 = v99;
  v69 = v104 * -0.5;
LABEL_27:
  v76 = v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize;
  v77 = sub_1004B53F0(v27 * (v70 + *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize) * 0.5 - v105));
  v78 = v77 / v27 + v111;
  v79 = sub_1004B53F0(v27 * (v69 + *(v76 + 8) * 0.5 - v106));
  a3 = v54;
  v80 = v100;
  [v100 drawInContext:a1 atPoint:{v78, v79 / v27 + v54}];
  CGContextRestoreGState(a1);

  v26 = v101;
  v38 = v53;
  v42 = v104;
  v46 = v103;
LABEL_28:
  if (!v37)
  {
LABEL_48:

    return;
  }

  CGContextSaveGState(a1);
  SecureButtonTag.imagePlacement.getter();
  v81 = (*(v9 + 88))(v12, v8);
  v82 = enum case for SecureButtonTag.ButtonImagePlacement.top(_:);
  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.top(_:))
  {
    goto LABEL_30;
  }

  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.leading(_:))
  {
    v99 = v37;
    v85 = v4;
    v91 = enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:);
    goto LABEL_41;
  }

  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.bottom(_:))
  {
LABEL_30:
    v83 = v37;
    v84 = v110;
    SecureButtonTag.imagePlacement.getter();
    v85 = v4;
    v86 = v109;
    (*(v9 + 104))(v109, v82, v8);
    sub_1004B5398();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v87 = *(v9 + 8);
    v87(v86, v8);
    v87(v84, v8);
    if (v42 != 0.0 && v115 == v114)
    {
      v89 = v42 + v108 * -0.5;
    }

    else
    {
      v89 = v108 * -0.5;
    }

    v90 = v46 * -0.5;
    goto LABEL_47;
  }

  v99 = v37;
  v85 = v4;
  v91 = v81;
  if (v81 == enum case for SecureButtonTag.ButtonImagePlacement.trailing(_:))
  {
LABEL_41:
    v92 = v110;
    SecureButtonTag.imagePlacement.getter();
    v93 = v109;
    (*(v9 + 104))(v109, v91, v8);
    sub_1004B5398();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v94 = *(v9 + 8);
    v94(v93, v8);
    v94(v92, v8);
    if (v115 == v114)
    {
      v83 = v99;
      v95 = v107;
      if ((v41 == 0.0) == (v102 == 0))
      {
LABEL_43:
        v90 = v41 + v26 * -0.5;
LABEL_46:
        v89 = v95 * -0.5;
LABEL_47:
        v96 = v85 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize;
        v97 = sub_1004B53F0(v27 * (v90 + *(v85 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize) * 0.5 - v38));
        [v83 drawInContext:a1 atPoint:{v97 / v27 + v111, sub_1004B53F0(v27 * (v89 + *(v96 + 8) * 0.5 - v45)) / v27 + a3}];
        CGContextRestoreGState(a1);

        goto LABEL_48;
      }
    }

    else
    {
      v83 = v99;
      v95 = v107;
      if (!v102)
      {
        goto LABEL_43;
      }
    }

    v90 = v26 * -0.5;
    goto LABEL_46;
  }

LABEL_49:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1004B5060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004B5158(void *a1, void *a2, char a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_style] = a1;
  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_tag] = a2;
  v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_isRemote] = a3;
  sub_10036B3D4(a1, a2, v44);
  v5 = &v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingPlan];
  v6 = v44[3];
  *(v5 + 2) = v44[2];
  *(v5 + 3) = v6;
  v7 = v44[5];
  *(v5 + 4) = v44[4];
  *(v5 + 5) = v7;
  v8 = v44[1];
  *v5 = v44[0];
  *(v5 + 1) = v8;
  SecureButtonTag.size.getter();
  v9 = *(v5 + 10);
  if (v9 <= v10)
  {
    SecureButtonTag.size.getter();
    v11 = *(v5 + 11);
    if (v11 <= v12)
    {
      SecureButtonTag.size.getter();
      v9 = v13;
      v11 = v14;
    }

    else
    {
      v9 = *(v5 + 10);
    }
  }

  else
  {
    v11 = *(v5 + 11);
  }

  SecureButtonTag.cornerRadius.getter();
  v43[0] = v15;
  SecureButtonTag.cornerRadius.getter();
  v43[1] = v16;
  SecureButtonTag.cornerRadius.getter();
  v43[2] = v17;
  SecureButtonTag.cornerRadius.getter();
  v43[3] = v18;
  v19 = SecureButtonTag.borderColor.getter();
  v20 = [objc_allocWithZone(UISPathDrawing) initWithRoundedRectSize:v43 cornerRadii:v19 fillColor:{v9, v11}];

  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_borderDrawing] = v20;
  SecureButtonTag.cornerRadius.getter();
  v22 = v21;
  SecureButtonTag.borderWidth.getter();
  v42[0] = v22 - v23;
  SecureButtonTag.cornerRadius.getter();
  v25 = v24;
  SecureButtonTag.borderWidth.getter();
  v42[1] = v25 - v26;
  SecureButtonTag.cornerRadius.getter();
  v28 = v27;
  SecureButtonTag.borderWidth.getter();
  v42[2] = v28 - v29;
  SecureButtonTag.cornerRadius.getter();
  v31 = v30;
  SecureButtonTag.borderWidth.getter();
  v42[3] = v31 - v32;
  SecureButtonTag.borderWidth.getter();
  v34 = v9 - (v33 + v33);
  SecureButtonTag.borderWidth.getter();
  v36 = v11 - (v35 + v35);
  v37 = SecureButtonTag.backgroundColor.getter();
  v38 = [objc_allocWithZone(UISPathDrawing) initWithRoundedRectSize:v42 cornerRadii:v37 fillColor:{v34, v36}];

  *&v4[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_backgroundDrawing] = v38;
  v39 = &v4[OBJC_IVAR____TtC28ManagedAppDistributionDaemon12SecureButton_drawingSize];
  *v39 = v9;
  v39[1] = v11;
  v41.receiver = v4;
  v41.super_class = type metadata accessor for SecureButton();
  return objc_msgSendSuper2(&v41, "init");
}

unint64_t sub_1004B5398()
{
  result = qword_100784FC0;
  if (!qword_100784FC0)
  {
    type metadata accessor for SecureButtonTag.ButtonImagePlacement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784FC0);
  }

  return result;
}

uint64_t sub_1004B53F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[1] = a2;
  v44 = a3;
  v43 = type metadata accessor for InternalError();
  v4 = __chkstk_darwin(v43);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = v39 - v7;
  __chkstk_darwin(v6);
  v42 = v39 - v8;
  v9 = type metadata accessor for MarketplaceKitError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ManagedAppDistributionError();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  v19 = __chkstk_darwin(v15);
  v39[0] = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = v18;
  v21 = *(v18 + 16);
  v23 = v39 - v22;
  v21();
  v46 = v23;
  if (!swift_dynamicCast())
  {
    v25 = v44;
    if (swift_dynamicCast())
    {
      (*(v10 + 32))(v25, v12, v9);
      v24 = v45;
      return (*(v24 + 8))(v46, a1);
    }

    v26 = v42;
    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v31 = *(v10 + 104);
        if (!v47)
        {
          v31(v25, enum case for MarketplaceKitError.appNotInstalled(_:), v9);
          v24 = v45;
          return (*(v24 + 8))(v46, a1);
        }

        v24 = v45;
        v32 = enum case for MarketplaceKitError.unknown(_:);
LABEL_46:
        v31(v25, v32, v9);
        return (*(v24 + 8))(v46, a1);
      }

      v47 = 203;
      v33 = v39[0];
      (v21)(v39[0], v46, a1);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        v24 = v45;
        v34 = a1;
        (*(v45 + 8))(v33, a1);
      }

      else
      {
        swift_allocError();
        v24 = v45;
        v34 = a1;
        (*(v45 + 32))(v36, v33, a1);
      }

      type metadata accessor for Code(0);
      sub_1004B5B28();
      v37 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v37)
      {
        (*(v10 + 104))(v25, enum case for MarketplaceKitError.networkError(_:), v9);
        a1 = v34;
        return (*(v24 + 8))(v46, a1);
      }

      type metadata accessor for AMSError(0);
      a1 = v34;
      if (swift_dynamicCast())
      {
      }

      goto LABEL_44;
    }

    v27 = v41;
    sub_1004B5B80(v26, v41);
    v28 = v40;
    sub_1004B5BE4(v27, v40);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 16)
    {
      v24 = v45;
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1004B5C48(v27);
          (*(v10 + 32))(v25, v28, v9);
          return (*(v24 + 8))(v46, a1);
        }

        if (EnumCaseMultiPayload == 2)
        {
          v35 = [objc_opt_self() bytes];
          sub_100223508();
          Measurement.init(value:unit:)();
          sub_1004B5C48(v27);
          v30 = &enum case for MarketplaceKitError.insufficientStorageSpace(_:);
          goto LABEL_45;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 7:
            sub_1004B5C48(v27);
            sub_1004B5C48(v28);
            v30 = &enum case for MarketplaceKitError.missingInstallVerificationToken(_:);
            goto LABEL_45;
          case 15:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.installationRestricted(_:);
            goto LABEL_45;
          case 16:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.ratingRestricted(_:);
            goto LABEL_45;
        }
      }
    }

    else
    {
      v24 = v45;
      if (EnumCaseMultiPayload > 21)
      {
        switch(EnumCaseMultiPayload)
        {
          case 22:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.invalidManifest(_:);
            goto LABEL_45;
          case 24:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.featureUnavailable(_:);
            goto LABEL_45;
          case 29:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.networkError(_:);
            goto LABEL_45;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 17:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.appNotInstalled(_:);
            goto LABEL_45;
          case 18:
            v28 = v27;
LABEL_43:
            sub_1004B5C48(v28);
LABEL_44:
            v30 = &enum case for MarketplaceKitError.unknown(_:);
            goto LABEL_45;
          case 20:
            sub_1004B5C48(v27);
            v30 = &enum case for MarketplaceKitError.noSupportedVariant(_:);
LABEL_45:
            v32 = *v30;
            v31 = *(v10 + 104);
            goto LABEL_46;
        }
      }
    }

    sub_1004B5C48(v27);
    goto LABEL_43;
  }

  (*(v10 + 104))(v44, enum case for MarketplaceKitError.unknown(_:), v9);
  (*(v14 + 8))(v17, v13);
  v24 = v45;
  return (*(v24 + 8))(v46, a1);
}

unint64_t sub_1004B5B28()
{
  result = qword_10077E800;
  if (!qword_10077E800)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E800);
  }

  return result;
}

uint64_t sub_1004B5B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B5BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B5C48(uint64_t a1)
{
  v2 = type metadata accessor for InternalError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1004B5CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100526304(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_100526304((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100323C00(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100323C00(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1004B5EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[123] = v3;
  v4[122] = a3;
  v4[121] = a2;
  v4[120] = a1;
  sub_1001F0C48(&qword_10077F380);
  v4[124] = swift_task_alloc();
  v4[125] = type metadata accessor for InternalError();
  v4[126] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v4[127] = swift_task_alloc();
  v5 = type metadata accessor for Platform();
  v4[128] = v5;
  v4[129] = *(v5 - 8);
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F360);
  v4[132] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F368);
  v4[133] = swift_task_alloc();
  v6 = type metadata accessor for MediaAPIApp(0);
  v4[134] = v6;
  v4[135] = *(v6 - 8);
  v4[136] = swift_task_alloc();
  v4[137] = type metadata accessor for ManagedAppInstallationTask();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v7 = type metadata accessor for DDMPurchaseMethod();
  v4[142] = v7;
  v4[143] = *(v7 - 8);
  v4[144] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809D0);
  v4[145] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[146] = v8;
  v4[147] = *(v8 - 8);
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = swift_task_alloc();
  v9 = type metadata accessor for ProgressCache.Progress();
  v4[151] = v9;
  v4[152] = *(v9 - 8);
  v4[153] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[154] = v10;
  v4[155] = *(v10 - 8);
  v4[156] = swift_task_alloc();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();

  return _swift_task_switch(sub_1004B6358, 0, 0);
}

uint64_t sub_1004B6358()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  UUID.init()();
  v3 = *(*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v0 + 1272) = v3;
  *(v0 + 1280) = *(v1 + 48);
  *(v0 + 1288) = *(v1 + 56);
  *(v0 + 1296) = *(v1 + 8);
  *(v0 + 193) = *(v1 + 16);

  return _swift_task_switch(sub_1004B6418, v3, 0);
}

uint64_t sub_1004B6418()
{
  v53 = v0;
  v1 = *(v0 + 193);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v49 = *(v0 + 1256);
  v51 = *(v0 + 1264);
  v5 = *(v0 + 1240);
  v46 = *(v0 + 1232);
  v6 = *(v0 + 1224);
  v7 = *(*(v0 + 1208) + 24);
  v8 = enum case for AppState.waiting(_:);
  v9 = type metadata accessor for AppState();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v4;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = -1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;

  static Logger.progress.getter();
  v10 = v49;
  v50 = *(v5 + 16);
  v50(v10, v51, v46);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = *(v0 + 1280);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1240);
    v15 = *(v0 + 1232);
    v42 = *(v0 + 1288);
    v43 = *(v0 + 1176);
    v44 = *(v0 + 1168);
    v47 = *(v0 + 1200);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v16 = 136446466;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1002346CC(v17, v19, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1002346CC(v41, v42, &v52);
    _os_log_impl(&_mh_execute_header, v11, v12, "[ProgressCache] Starting progress for %{public}s (%{public}s)", v16, 0x16u);
    swift_arrayDestroy();

    v22 = *(v43 + 8);
    v22(v47, v44);
  }

  else
  {
    v23 = *(v0 + 1256);
    v24 = *(v0 + 1240);
    v25 = *(v0 + 1232);
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1176);
    v28 = *(v0 + 1168);

    v20 = *(v24 + 8);
    v20(v23, v25);
    v22 = *(v27 + 8);
    v22(v26, v28);
  }

  *(v0 + 1312) = v22;
  *(v0 + 1304) = v20;
  v29 = *(v0 + 1248);
  v45 = *(v0 + 1264);
  v48 = *(v0 + 1232);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1208);
  v33 = *(v0 + 1160);
  (v50)(v29);
  sub_1004C1F84(v30, v33, type metadata accessor for ProgressCache.Progress);
  (*(v31 + 56))(v33, 0, 1, v32);
  swift_beginAccess();
  sub_1005B7A24(v33, v29);
  swift_endAccess();
  sub_1001F0C48(&unk_100780A70);
  v34 = (sub_1001F0C48(&qword_100786FA0) - 8);
  v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10069E680;
  v37 = v36 + v35;
  v38 = v34[14];
  v50(v37, v45, v48);
  sub_1004C1F84(v30, v37 + v38, type metadata accessor for ProgressCache.Progress);
  v39 = sub_100528E5C(v36);
  swift_setDeallocating();
  sub_1000032A8(v37, &qword_100786FA0);
  swift_deallocClassInstance();
  sub_1003868C0(v39);

  sub_1004C2054(v30, type metadata accessor for ProgressCache.Progress);

  return _swift_task_switch(sub_1004B694C, 0, 0);
}

uint64_t sub_1004B694C()
{
  v67 = v0;
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 984);
  v5 = type metadata accessor for DDMDeclaration(0);
  (*(v2 + 16))(v1, v4 + v5[25], v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    v9 = *(v0 + 984);
    static Logger.vpp.getter();
    sub_1004C1F84(v9, v7, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v9, v8, type metadata accessor for ManagedAppInstallationTask);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);
    if (v12)
    {
      v18 = *(v0 + 1096);
      v62 = *(v0 + 1192);
      v19 = swift_slowAlloc();
      v61 = v15;
      v20 = swift_slowAlloc();
      v63 = v5;
      v21 = swift_slowAlloc();
      v66 = v21;
      *v19 = 138412546;
      v60 = v13;
      v22 = *(v16 + *(v18 + 28));
      sub_1004C2054(v16, type metadata accessor for ManagedAppInstallationTask);
      *(v19 + 4) = v22;
      *v20 = v22;
      *(v19 + 12) = 2082;
      v23 = (v17 + v63[13]);
      v24 = *v23;
      v25 = v23[1];

      sub_1004C2054(v17, type metadata accessor for ManagedAppInstallationTask);
      v26 = sub_1002346CC(v24, v25, &v66);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Requesting metadata for installation of %{public}s", v19, 0x16u);
      sub_1000032A8(v20, &qword_10077F920);

      sub_10000710C(v21);
      v5 = v63;

      v60(v62, v61);
    }

    else
    {

      sub_1004C2054(v17, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v16, type metadata accessor for ManagedAppInstallationTask);
      v13(v14, v15);
    }

    v41 = *(v0 + 1056);
    v42 = *(v0 + 984);
    v43 = *(v0 + 976);
    sub_10020A980(*(v0 + 960), v0 + 200);
    v44 = (*sub_100006D8C(v43, v43[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v45 = *(v44 + 95);
    v46 = v44[5];
    v47 = v44[3];
    *(v0 + 424) = v44[4];
    *(v0 + 440) = v46;
    *(v0 + 455) = v45;
    *(v0 + 408) = v47;
    v48 = *v44;
    v49 = v44[2];
    *(v0 + 376) = v44[1];
    *(v0 + 392) = v49;
    *(v0 + 360) = v48;
    memmove((v0 + 240), v44, 0x6FuLL);
    *(v0 + 352) = 0;
    sub_10020A7AC(v0 + 360, v0 + 472);
    v50 = sub_1004DA6EC();
    v52 = v51;
    v54 = v53;
    *(v0 + 1320) = v50;
    *(v0 + 1328) = v51;
    *(v0 + 194) = v53;
    v55 = v5[24];
    v56 = type metadata accessor for Locale.Language();
    (*(*(v56 - 8) + 56))(v41, 1, 1, v56);
    v57 = swift_task_alloc();
    *(v0 + 1336) = v57;
    *v57 = v0;
    v57[1] = sub_1004B6FEC;
    v58 = *(v0 + 1064);
    v59 = *(v0 + 1056);

    return sub_1003726D4(v58, v50, v52, v54 & 1, v42 + v55, v59);
  }

  else if (v6 == enum case for DDMPurchaseMethod.manifest(_:))
  {
    v27 = *(v0 + 1016);
    sub_100005934(*(v0 + 984) + v5[20], v27, &unk_1007809F0);
    v28 = type metadata accessor for URL();
    *(v0 + 1376) = v28;
    v29 = *(v28 - 8);
    *(v0 + 1384) = v29;
    result = (*(v29 + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = *(v0 + 976);
      v32 = *(*(v0 + 984) + *(*(v0 + 1096) + 28));
      v64 = *(v31 + 24);
      v33 = *(v31 + 24);
      v65 = *(v31 + 40);
      v34 = sub_100006D8C(v31, v33);
      *(v0 + 832) = v64;
      *(v0 + 848) = v65;
      v35 = sub_10020A748((v0 + 808));
      (*(*(v33 - 8) + 16))(v35, v34, v33);
      v36 = swift_task_alloc();
      *(v0 + 1392) = v36;
      *v36 = v0;
      v36[1] = sub_1004B7DA4;
      v37 = *(v0 + 1264);
      v38 = *(v0 + 1016);
      v39 = *(v0 + 968);
      v40 = *(v0 + 960);

      return sub_1004BA44C(v38, v39, v37, v40, v32, v0 + 808);
    }
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  return result;
}

uint64_t sub_1004B6FEC()
{
  v2 = *v1;
  *(v2 + 1344) = v0;

  v3 = *(v2 + 1328);
  v4 = *(v2 + 1320);
  v5 = *(v2 + 194);
  sub_1000032A8(*(v2 + 1056), &qword_10077F360);
  sub_1001DFEBC(v4, v3, v5 & 1);
  if (v0)
  {
    v6 = sub_1004B81C8;
  }

  else
  {
    v6 = sub_1004B7174;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B7174()
{
  v121 = v0;
  v1 = *(v0 + 1064);
  if ((*(*(v0 + 1080) + 48))(v1, 1, *(v0 + 1072)) == 1)
  {
    sub_1000032A8(v1, &qword_10077F368);
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v3 = v2;
    v4 = sub_1004DA6EC();
    v6 = v5;
    v8 = v7;
    v9 = StoreAppIdentifier.description.getter();
    v11 = v10;
    sub_1001DFEBC(v4, v6, v8 & 1);
    *v3 = v9;
    v3[1] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v12 = *(v0 + 1344);
  v13 = *(v0 + 1048);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 976);
  sub_1004C1FEC(v1, *(v0 + 1088), type metadata accessor for MediaAPIApp);
  v16 = (*sub_100006D8C(v15, v15[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v18 = v16[4];
  v17 = v16[5];
  v19 = v16[3];
  *(v0 + 679) = *(v16 + 95);
  *(v0 + 648) = v18;
  *(v0 + 664) = v17;
  *(v0 + 632) = v19;
  v21 = v16[1];
  v20 = v16[2];
  *(v0 + 584) = *v16;
  *(v0 + 600) = v21;
  *(v0 + 616) = v20;
  sub_10020A7AC(v0 + 584, v0 + 696);
  static Platform.iOS.getter();
  v22 = sub_1004FF904();
  sub_10020A92C(v0 + 584);
  sub_100373074(v13, v14, v22, v109);
  v23 = v12;
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1024);
  if (!v23)
  {
    v43 = *(&v109[0] + 1);
    v44 = v109[1];
    v45 = v109[2];
    v46 = v109[3];
    v47 = v110;
    v48 = v111;
    v49 = v112;
    v50 = v113;
    v51 = v114;
    v52 = v115;
    v53 = v116;
    v54 = v117;
    v55 = v118;
    v56 = v119;
    v57 = v120;
    v58 = *(v0 + 1048);
    *(v0 + 16) = *&v109[0];
    *(v0 + 24) = v43;
    *(v0 + 32) = v44;
    *(v0 + 48) = v45;
    *(v0 + 64) = v46;
    *(v0 + 80) = v47;
    *(v0 + 88) = v48;
    *(v0 + 96) = v49;
    *(v0 + 112) = v50;
    *(v0 + 128) = v51;
    *(v0 + 136) = v52;
    *(v0 + 144) = v53;
    *(v0 + 152) = v54;
    *(v0 + 168) = v55;
    *(v0 + 176) = v56;
    *(v0 + 192) = v57;

    v59 = *(v25 + 8);
    v59(v24, v26);
    result = (v59)(v58, v26);
    v60 = *(v0 + 128);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = 0;
      v63 = (v60 + 48);
      while (v62 < *(v60 + 16))
      {
        if ((*v63 & 1) == 0)
        {

LABEL_23:
          v100 = *(v0 + 1088);
          sub_10026E6B8(v0 + 16);
          v101 = objc_allocWithZone(AMSBuyParams);
          v102 = String._bridgeToObjectiveC()();

          v103 = [v101 initWithString:v102];

          v33 = sub_100507E64(v103);
          sub_1004C2054(v100, type metadata accessor for MediaAPIApp);
          sub_100262C04(v0 + 200);
          goto LABEL_6;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_23;
        }

        ++v62;

        v63 += 24;
        if (v61 == v62)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v65 = *(v0 + 1112);
    v66 = *(v0 + 1104);
    v67 = *(v0 + 1088);
    v68 = *(v0 + 984);
    sub_10026E6B8(v0 + 16);
    sub_1004C2054(v67, type metadata accessor for MediaAPIApp);
    sub_100262C04(v0 + 200);
    static Logger.vpp.getter();
    sub_1004C1F84(v68, v65, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v68, v66, type metadata accessor for ManagedAppInstallationTask);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 1112);
      v72 = *(v0 + 1104);
      v73 = *(v0 + 1096);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v109[0] = v76;
      *v74 = 138412546;
      v77 = *(v71 + *(v73 + 28));
      result = sub_1004C2054(v71, type metadata accessor for ManagedAppInstallationTask);
      *(v74 + 4) = v77;
      *v75 = v77;
      *(v74 + 12) = 2082;
      if (*(v72 + 16))
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v108 = *(v0 + 1312);
      v104 = *(v0 + 1168);
      v106 = *(v0 + 1184);
      v78 = *(v0 + 1104);
      *(v0 + 952) = *(v78 + 8);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      sub_1004C2054(v78, type metadata accessor for ManagedAppInstallationTask);
      v82 = sub_1002346CC(v79, v81, v109);

      *(v74 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%@] Unable to purchase '%{public}s' with missing metadata", v74, 0x16u);
      sub_1000032A8(v75, &qword_10077F920);

      sub_10000710C(v76);

      v108(v106, v104);
    }

    else
    {
      v83 = *(v0 + 1312);
      v84 = *(v0 + 1184);
      v85 = *(v0 + 1168);
      v86 = *(v0 + 1112);
      v87 = *(v0 + 1104);

      sub_1004C2054(v87, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v86, type metadata accessor for ManagedAppInstallationTask);
      v83(v84, v85);
    }

    v88 = type metadata accessor for ManagedAppDistributionError();
    sub_1004C20B4(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    v89 = swift_allocError();
    (*(*(v88 - 8) + 104))(v90, enum case for ManagedAppDistributionError.unrecoverableError(_:), v88);
    swift_willThrow();
    *(v0 + 1408) = v89;
    v91 = *(v0 + 976);
    v92 = *(*sub_100006D8C(v91, v91[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v0 + 1416) = v92;
    v93 = v91[3];
    v94 = v91[5];
    v95 = v91[6];
    v96 = v91[7];
    v97 = sub_100006D8C(v91, v93);

    v98 = swift_task_alloc();
    *(v0 + 1424) = v98;
    *v98 = v0;
    v98[1] = sub_1004B7EEC;
    v99 = *(v0 + 1264);

    return sub_100387224(v99, v97, v92, v93, v94, v95, v96);
  }

  v27 = *(v0 + 1088);

  (*(v25 + 8))(v24, v26);
  sub_1004C2054(v27, type metadata accessor for MediaAPIApp);
LABEL_5:
  sub_100262C04(v0 + 200);
  v28 = sub_1004DA6EC();
  v30 = v29;
  v32 = v31;
  v33 = sub_100508448(v28, v29, v31 & 1);

  sub_1001DFEBC(v28, v30, v32 & 1);
LABEL_6:
  *(v0 + 1352) = v33;
  v34 = *(v0 + 976);
  v105 = *(v34 + 24);
  v35 = *(v34 + 24);
  v107 = *(v34 + 40);
  v36 = sub_100006D8C(v34, v35);
  *(v0 + 888) = v105;
  *(v0 + 904) = v107;
  v37 = sub_10020A748((v0 + 864));
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  v38 = swift_task_alloc();
  *(v0 + 1360) = v38;
  *v38 = v0;
  v38[1] = sub_1004B7AC4;
  v39 = *(v0 + 1264);
  v40 = *(v0 + 968);
  v41 = *(v0 + 960);

  return sub_1004B8EB4(v33, v40, v39, v41, v0 + 864);
}

uint64_t sub_1004B7AC4()
{
  v2 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = sub_1004B8334;
  }

  else
  {
    sub_10000710C(v2 + 864);
    v3 = sub_1004B7BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B7BF0()
{
  (*(v0 + 1304))(*(v0 + 1264), *(v0 + 1232));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B7DA4()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v3 = sub_1004B8D0C;
  }

  else
  {
    v4 = v2[173];
    v5 = v2[172];
    v6 = v2[127];
    sub_10000710C((v2 + 101));
    (*(v4 + 8))(v6, v5);
    v3 = sub_1004B7BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B7EEC()
{

  return _swift_task_switch(sub_1004B8004, 0, 0);
}

uint64_t sub_1004B8004()
{
  v1 = v0[163];
  v2 = v0[158];
  v3 = v0[154];
  swift_willThrow();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B81C8()
{
  sub_100262C04(v0 + 200);
  v1 = sub_1004DA6EC();
  v3 = v2;
  v5 = v4;
  v6 = sub_100508448(v1, v2, v4 & 1);

  sub_1001DFEBC(v1, v3, v5 & 1);
  *(v0 + 1352) = v6;
  v7 = *(v0 + 976);
  v16 = *(v7 + 24);
  v8 = *(v7 + 24);
  v17 = *(v7 + 40);
  v9 = sub_100006D8C(v7, v8);
  *(v0 + 888) = v16;
  *(v0 + 904) = v17;
  v10 = sub_10020A748((v0 + 864));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  v11 = swift_task_alloc();
  *(v0 + 1360) = v11;
  *v11 = v0;
  v11[1] = sub_1004B7AC4;
  v12 = *(v0 + 1264);
  v13 = *(v0 + 968);
  v14 = *(v0 + 960);

  return sub_1004B8EB4(v6, v13, v12, v14, v0 + 864);
}

uint64_t sub_1004B8334()
{
  v1 = *(v0 + 1368);
  sub_10000710C(v0 + 864);
  *(v0 + 944) = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1008);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004C2054(v2, type metadata accessor for InternalError);
    }

    else
    {
      v3 = type metadata accessor for ManagedAppDistributionError();
      *(v0 + 1432) = v3;
      v4 = *(v3 - 8);
      v5 = v4;
      *(v0 + 1440) = v4;
      v6 = (*(v4 + 88))(v2, v3);
      *(v0 + 196) = v6;
      if (v6 == enum case for ManagedAppDistributionError.licenseNotFound(_:))
      {
        v7 = *(v0 + 1096);
        v8 = *(v0 + 992);
        v9 = *(v0 + 984);
        v10 = *(v0 + 976);

        *(v0 + 1448) = *(*sub_100006D8C(v10, v10[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
        v11 = enum case for ManagedAppStatus.Reason.licenseNotFound(_:);
        v12 = type metadata accessor for ManagedAppStatus.Reason();
        v13 = *(v12 - 8);
        (*(v13 + 104))(v8, v11, v12);
        (*(v13 + 56))(v8, 0, 1, v12);
        v14 = *(v9 + *(v7 + 28));

        v15 = swift_task_alloc();
        *(v0 + 1456) = v15;
        *v15 = v0;
        v15[1] = sub_1004B86D0;
        v16 = *(v0 + 992);
        v17 = *(v0 + 984);
        v18 = v14;
        goto LABEL_8;
      }

      (*(v5 + 8))(*(v0 + 1008), v3);
    }
  }

  v19 = *(v0 + 1096);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);

  *(v0 + 1464) = *(*sub_100006D8C(v22, v22[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v23 = type metadata accessor for ManagedAppStatus.Reason();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = *(v21 + *(v19 + 28));

  v25 = swift_task_alloc();
  *(v0 + 1472) = v25;
  *v25 = v0;
  v25[1] = sub_1004B89DC;
  v16 = *(v0 + 992);
  v17 = *(v0 + 984);
  v18 = v24;
LABEL_8:

  return sub_10030B39C(v17, v16, 1, v18);
}

uint64_t sub_1004B86D0()
{
  v1 = *(*v0 + 992);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1004B8814, 0, 0);
}

uint64_t sub_1004B8814()
{
  v1 = *(v0 + 196);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);
  sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
  v4 = swift_allocError();
  (*(v2 + 104))(v5, v1, v3);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  *(v0 + 1408) = v4;
  v6 = *(v0 + 976);
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v0 + 1416) = v7;
  v8 = v6[3];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_100006D8C(v6, v8);

  v13 = swift_task_alloc();
  *(v0 + 1424) = v13;
  *v13 = v0;
  v13[1] = sub_1004B7EEC;
  v14 = *(v0 + 1264);

  return sub_100387224(v14, v12, v7, v8, v9, v10, v11);
}

uint64_t sub_1004B89DC()
{
  v1 = *(*v0 + 992);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1004B8B20, 0, 0);
}

uint64_t sub_1004B8B20()
{
  sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
  v1 = swift_allocError();
  v3 = v2;
  v4 = enum case for ManagedAppDistributionError.networkError(_:);
  v5 = type metadata accessor for ManagedAppDistributionError();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v0[176] = v1;
  v6 = v0[122];
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v0[177] = v7;
  v8 = v6[3];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_100006D8C(v6, v8);

  v13 = swift_task_alloc();
  v0[178] = v13;
  *v13 = v0;
  v13[1] = sub_1004B7EEC;
  v14 = v0[158];

  return sub_100387224(v14, v12, v7, v8, v9, v10, v11);
}

uint64_t sub_1004B8D0C()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[127];
  sub_10000710C((v0 + 101));
  (*(v1 + 8))(v3, v2);
  v0[176] = v0[175];
  v4 = v0[122];
  v5 = *(*sub_100006D8C(v4, v4[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v0[177] = v5;
  v6 = v4[3];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v10 = sub_100006D8C(v4, v6);

  v11 = swift_task_alloc();
  v0[178] = v11;
  *v11 = v0;
  v11[1] = sub_1004B7EEC;
  v12 = v0[158];

  return sub_100387224(v12, v10, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for ManagedAppInstallationTask()
{
  result = qword_100785040;
  if (!qword_100785040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B8EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for AppInstall();
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for ManagedAppInstallationTask();
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = sub_1001F0C48(&qword_100784FD0);
  v6[21] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004B916C, 0, 0);
}

uint64_t sub_1004B916C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[6];
  v7 = v0[7];
  v8 = type metadata accessor for DDMDeclaration(0);
  v9 = (v7 + *(v8 + 88));
  v0[27] = *v9;
  v0[28] = v9[1];
  v10 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[29] = v10;
  v11 = *(v8 + 72);
  (*(v5 + 104))(v1, enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v12 = v7 + v11;
  v13 = *(v3 + 48);
  sub_100005934(v12, v2, &qword_10077F340);
  sub_100005934(v1, v2 + v13, &qword_10077F340);
  v14 = *(v5 + 48);
  if (v14(v2, 1, v4) == 1)
  {
    v15 = v0[23];
    v16 = v0[17];

    sub_1000032A8(v15, &qword_10077F340);
    v17 = v10;
    if (v14(v2 + v13, 1, v16) == 1)
    {
      sub_1000032A8(v0[21], &qword_10077F340);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v18 = v0[17];
  sub_100005934(v0[21], v0[22], &qword_10077F340);
  v19 = v14(v2 + v13, 1, v18);
  v20 = v0[22];
  v21 = v0[23];
  if (v19 == 1)
  {
    v23 = v0[17];
    v22 = v0[18];
    v17 = v10;

    sub_1000032A8(v21, &qword_10077F340);
    (*(v22 + 8))(v20, v23);
LABEL_6:
    sub_1000032A8(v0[21], &qword_100784FD0);
    goto LABEL_7;
  }

  v56 = v0[21];
  v29 = v0[18];
  v28 = v0[19];
  v30 = v0[17];
  (*(v29 + 32))(v28, v2 + v13, v30);
  sub_1004C20B4(&qword_100784FD8, &type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum);

  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v29 + 8);
  v32(v28, v30);
  sub_1000032A8(v21, &qword_10077F340);
  v32(v20, v30);
  v17 = v10;
  sub_1000032A8(v56, &qword_10077F340);
  if (v31)
  {
LABEL_10:
    v24 = v0[24];
    v25 = *(v0[25] + 104);
    v26 = v0[26];
    if (v0[3])
    {
      v27 = &enum case for AppInstallRequestType.userVPPUpdate(_:);
    }

    else
    {
      v27 = &enum case for AppInstallRequestType.userVPP(_:);
    }

    goto LABEL_14;
  }

LABEL_7:
  v24 = v0[24];
  v25 = *(v0[25] + 104);
  v26 = v0[26];
  if (v0[3])
  {
    v27 = &enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  }

  else
  {
    v27 = &enum case for AppInstallRequestType.deviceVPP(_:);
  }

LABEL_14:
  v25(v26, *v27, v24);
  v33 = v0[12];
  v34 = v0[7];
  if (*(v34 + *(v33 + 36)) == 1)
  {
    v35 = v0[13];
    static Logger.vpp.getter();
    sub_1004C1F84(v34, v35, type metadata accessor for ManagedAppInstallationTask);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[13];
    if (v38)
    {
      v40 = v0[12];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = *(v39 + *(v40 + 28));
      sub_1004C2054(v39, type metadata accessor for ManagedAppInstallationTask);
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] User did not initiate installation, asking for consent before continuing", v41, 0xCu);
      sub_1000032A8(v42, &qword_10077F920);
    }

    else
    {

      sub_1004C2054(v39, type metadata accessor for ManagedAppInstallationTask);
    }

    v51 = v0[12];
    v52 = v0[7];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v53 = *(v52 + *(v51 + 28));
    v54 = swift_task_alloc();
    v0[30] = v54;
    *v54 = v0;
    v54[1] = sub_1004B97FC;
    v55 = v0[7];

    return sub_100627DE4(v55, v17, 1, v53);
  }

  else
  {
    v0[31] = *(*sub_100006D8C(v0[6], *(v0[6] + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v44 = *(v34 + 48);
    v45 = *(v34 + 56);
    v46 = *(v34 + *(v33 + 24));

    v47 = swift_task_alloc();
    v0[32] = v47;
    *v47 = v0;
    v47[1] = sub_1004B9B50;
    v48 = v0[11];
    v49 = v0[4];

    return sub_10054ADF8(v48, v44, v45, 0, 2, v49, v46);
  }
}

uint64_t sub_1004B97FC(char a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_1004B98FC, 0, 0);
}

uint64_t sub_1004B98FC()
{
  if (*(v0 + 320))
  {
    type metadata accessor for InternalError();
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 56);
    *(v0 + 248) = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = *(v2 + *(v1 + 24));

    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_1004B9B50;
    v7 = *(v0 + 88);
    v8 = *(v0 + 32);

    return sub_10054ADF8(v7, v3, v4, 0, 2, v8, v5);
  }
}

uint64_t sub_1004B9B50()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004B9E6C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[34] = v3;
    *v3 = v2;
    v3[1] = sub_1004B9CDC;
    v4 = v2[27];
    v5 = v2[28];
    v6 = v2[11];
    v8 = v2[7];
    v7 = v2[8];
    v10 = v2[5];
    v9 = v2[6];
    v11 = v2[2];

    return sub_1004BE810(v7, v6, v8, v11, v4, v5, v9, v10);
  }
}

uint64_t sub_1004B9CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004BA0AC, 0, 0);
  }

  else
  {
    v4[36] = a1;
    v6 = swift_task_alloc();
    v4[37] = v6;
    *v6 = v5;
    v6[1] = sub_1004B9F7C;
    v7 = v4[8];

    return sub_10054CDE0(v7, a1);
  }
}

uint64_t sub_1004B9E6C()
{

  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004B9F7C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1004BA220;
  }

  else
  {
    v2 = sub_1004BA0D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BA0D0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];

  sub_1004C2054(v6, type metadata accessor for AppInstall);
  (*(v5 + 8))(v4, v7);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BA220()
{
  sub_1004C2054(v0[8], type metadata accessor for AppInstall);
  v0[39] = v0[38];
  v1 = v0[31];

  return _swift_task_switch(sub_1004BA2A4, v1, 0);
}

uint64_t sub_1004BA2A4()
{
  sub_10054C8D0(*(v0 + 88));

  return _swift_task_switch(sub_1004BA310, 0, 0);
}

uint64_t sub_1004BA310()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_willThrow();

  (*(v2 + 8))(v1, v3);

  (*(v0[25] + 8))(v0[26], v0[24]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004BA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[194] = v6;
  v7[193] = a6;
  v7[192] = a5;
  v7[191] = a4;
  v7[190] = a3;
  v7[189] = a2;
  v7[188] = a1;
  v8 = type metadata accessor for AppPackage();
  v7[195] = v8;
  v7[196] = *(v8 - 8);
  v7[197] = swift_task_alloc();
  v9 = type metadata accessor for LogKey.Prefix();
  v7[198] = v9;
  v7[199] = *(v9 - 8);
  v7[200] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v7[201] = v10;
  v7[202] = *(v10 - 8);
  v7[203] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v7[204] = swift_task_alloc();
  v7[205] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v7[206] = swift_task_alloc();
  v7[207] = swift_task_alloc();
  v11 = type metadata accessor for CellularIdentity();
  v7[208] = v11;
  v7[209] = *(v11 - 8);
  v7[210] = swift_task_alloc();
  v7[211] = type metadata accessor for EvaluatorDownload();
  v7[212] = swift_task_alloc();
  v7[213] = type metadata accessor for AppInstall();
  v7[214] = swift_task_alloc();
  v7[215] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v7[216] = v12;
  v7[217] = *(v12 - 8);
  v7[218] = swift_task_alloc();
  v7[219] = swift_task_alloc();
  v7[220] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v7[221] = swift_task_alloc();
  v7[222] = swift_task_alloc();
  v7[223] = swift_task_alloc();
  v7[224] = swift_task_alloc();
  v7[225] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FE28);
  v7[226] = swift_task_alloc();
  v13 = type metadata accessor for Platform();
  v7[227] = v13;
  v7[228] = *(v13 - 8);
  v7[229] = swift_task_alloc();
  v7[230] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[231] = v14;
  v7[232] = *(v14 - 8);
  v7[233] = swift_task_alloc();
  v7[234] = swift_task_alloc();
  v7[235] = swift_task_alloc();
  v7[236] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v7[237] = v15;
  v7[238] = *(v15 - 8);
  v7[239] = swift_task_alloc();
  v7[240] = swift_task_alloc();
  v7[241] = swift_task_alloc();
  v7[242] = swift_task_alloc();
  v7[243] = type metadata accessor for EnterpriseApp();
  v7[244] = swift_task_alloc();

  return _swift_task_switch(sub_1004BA9D8, 0, 0);
}

uint64_t sub_1004BA9D8()
{
  v1 = v0[242];
  v2 = v0[238];
  v3 = v0[237];
  v4 = v0[194];
  v5 = v0[193];
  v6 = v0[192];
  v7 = v0[188];
  v0[245] = *(*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[246] = *(*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v8 = *(v2 + 16);
  v0[247] = v8;
  v0[248] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v3);
  v9 = type metadata accessor for ManagedAppInstallationTask();
  v0[249] = v9;
  v10 = *(v4 + *(v9 + 20));

  v11 = v6;
  v12 = swift_task_alloc();
  v0[250] = v12;
  *v12 = v0;
  v12[1] = sub_1004BAB54;
  v13 = v0[244];
  v14 = v0[242];
  v15 = v0[192];

  return sub_10035562C(v13, v14, v10, v15);
}

uint64_t sub_1004BAB54()
{
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v2 = sub_1004BE5DC;
  }

  else
  {
    v2 = sub_1004BAC68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BAC68()
{
  if (*(*(v0 + 1552) + *(*(v0 + 1992) + 36)) == 1)
  {
    v1 = *(v0 + 1536);
    static Logger.vpp.getter();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1536);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] User did not initiate installation, asking for consent before continuing", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920);
    }

    v9 = *(v0 + 1888);
    v10 = *(v0 + 1856);
    v11 = *(v0 + 1848);

    v12 = *(v10 + 8);
    *(v0 + 2016) = v12;
    *(v0 + 2024) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 2032) = v13;
    *v13 = v0;
    v13[1] = sub_1004BB760;
    v14 = *(v0 + 1960);
    v15 = *(v0 + 1552);
    v16 = *(v0 + 1536);

    return sub_100627DE4(v15, v14, 1, v16);
  }

  v18 = (*sub_100006D8C(*(v0 + 1544), *(*(v0 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v20 = v18[4];
  v19 = v18[5];
  v21 = v18[3];
  *(v0 + 567) = *(v18 + 95);
  *(v0 + 536) = v20;
  *(v0 + 552) = v19;
  *(v0 + 520) = v21;
  v23 = v18[1];
  v22 = v18[2];
  *(v0 + 472) = *v18;
  *(v0 + 488) = v23;
  *(v0 + 504) = v22;
  sub_10020A7AC(v0 + 472, v0 + 696);
  sub_100355DAC((v0 + 472), 3, v0 + 168);
  sub_10020A92C(v0 + 472);
  v24 = *(v0 + 280);
  *(v0 + 112) = *(v0 + 264);
  *(v0 + 128) = v24;
  *(v0 + 144) = *(v0 + 296);
  *(v0 + 160) = *(v0 + 312);
  v25 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v25;
  v26 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v26;
  v27 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v27;
  if (sub_100350308(v0 + 16) == 1)
  {
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_19:
    v72 = *(v0 + 1536);
    static Logger.vpp.getter();
    v73 = v72;
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 1536);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412546;
      *(v77 + 4) = v76;
      *v78 = v76;
      *(v77 + 12) = 2114;
      v79 = v76;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v80;
      v78[1] = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v77, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v81 = *(v0 + 1952);
    v82 = *(v0 + 1864);
    v83 = *(v0 + 1856);
    v84 = *(v0 + 1848);

    (*(v83 + 8))(v82, v84);
    swift_willThrow();

    sub_1004C2054(v81, type metadata accessor for EnterpriseApp);

    v85 = *(v0 + 8);

    return v85();
  }

  v28 = *(v0 + 1952);
  v29 = *(v0 + 1944);
  v30 = *(v0 + 1824);
  v31 = *(v0 + 1816);
  v32 = *(v0 + 1808);
  v33 = *(v0 + 96);
  *(v0 + 384) = *(v0 + 80);
  *(v0 + 400) = v33;
  v34 = *(v0 + 64);
  *(v0 + 352) = *(v0 + 48);
  *(v0 + 368) = v34;
  *(v0 + 464) = *(v0 + 160);
  v35 = *(v0 + 144);
  *(v0 + 432) = *(v0 + 128);
  *(v0 + 448) = v35;
  *(v0 + 416) = *(v0 + 112);
  v36 = *(v0 + 32);
  *(v0 + 320) = *(v0 + 16);
  *(v0 + 336) = v36;
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);
  *(v0 + 2040) = v37;
  *(v0 + 2048) = v38;
  v39 = *(v0 + 344);
  *(v0 + 2056) = *(v0 + 336);
  *(v0 + 2064) = v39;
  v40 = *(v0 + 360);
  *(v0 + 2072) = *(v0 + 352);
  *(v0 + 2080) = v40;
  *(v0 + 2088) = *(v0 + 368);
  v41 = *(v0 + 120);
  *(v0 + 952) = *(v0 + 104);
  *(v0 + 968) = v41;
  v42 = *(v0 + 152);
  *(v0 + 984) = *(v0 + 136);
  *(v0 + 1000) = v42;
  v43 = *(v0 + 88);
  *(v0 + 920) = *(v0 + 72);
  *(v0 + 936) = v43;
  sub_100005934(v28 + *(v29 + 20), v32, &qword_10077FE28);
  if ((*(v30 + 48))(v32, 1, v31) == 1)
  {
    v44 = v38;
    v45 = v37;
    sub_1000032A8(*(v0 + 1808), &qword_10077FE28);
  }

  else
  {
    (*(*(v0 + 1824) + 32))(*(v0 + 1840), *(v0 + 1808), *(v0 + 1816));
    type metadata accessor for DDMDeclaration(0);
    sub_1004C20B4(&qword_100780F10, &type metadata accessor for Platform);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v0 + 1824);
    v48 = *(v0 + 1816);
    if ((v46 & 1) == 0)
    {
      v70 = v37;
      v71 = *(v0 + 1840);
      sub_100271104(v70, v38);
      sub_100350510(v0 + 376);
      type metadata accessor for EnterpriseIngestTask.Error(0);
      sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v47 + 8))(v71, v48);
      goto LABEL_19;
    }

    v44 = v38;
    v45 = v37;
    (*(v47 + 8))(*(v0 + 1840), v48);
  }

  v49 = *(v0 + 1904);
  v50 = *(v0 + 1896);
  v51 = *(v0 + 1800);
  v53 = *(v0 + 448);
  v52 = *(v0 + 456);
  URL.init(string:)();
  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    v54 = *(v0 + 1800);
    sub_100271104(v45, v44);
    sub_1000032A8(v54, &unk_1007809F0);
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    *v55 = v53;
    v55[1] = v52;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100350510(v0 + 376);
    goto LABEL_19;
  }

  v56 = *(v0 + 1992);
  v57 = *(v0 + 1952);
  v58 = *(v0 + 1928);
  v59 = *(v0 + 1904);
  v60 = *(v0 + 1896);
  v61 = *(v0 + 1800);
  v62 = *(v0 + 1552);
  v63 = *(v59 + 32);
  *(v0 + 2096) = v63;
  *(v0 + 2104) = (v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v63(v58, v61, v60);
  v64 = *v57;
  *(v0 + 2112) = *v57;
  v65 = v57[1];
  *(v0 + 2120) = v65;
  v66 = *(v62 + *(v56 + 24));
  *(v0 + 695) = v66;
  v67 = swift_task_alloc();
  *(v0 + 2128) = v67;
  *v67 = v0;
  v67[1] = sub_1004BC30C;
  v68 = *(v0 + 1760);
  v69 = *(v0 + 1520);

  return sub_10054ADF8(v68, v64, v65, 0, 2, v69, v66);
}

uint64_t sub_1004BB760(char a1)
{
  *(*v1 + 583) = a1;

  return _swift_task_switch(sub_1004BB860, 0, 0);
}

uint64_t sub_1004BB860()
{
  if (*(v0 + 583))
  {
    v11 = *(v0 + 1536);
    static Logger.vpp.getter();
    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1536);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Consent was not granted", v16, 0xCu);
      sub_1000032A8(v17, &qword_10077F920);
    }

    v19 = *(v0 + 2016);
    v20 = *(v0 + 1952);
    v21 = *(v0 + 1880);
    v22 = *(v0 + 1848);

    v19(v21, v22);
    type metadata accessor for InternalError();
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_20;
  }

  v1 = (*sub_100006D8C(*(v0 + 1544), *(*(v0 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  *(v0 + 567) = *(v1 + 95);
  *(v0 + 536) = v3;
  *(v0 + 552) = v2;
  *(v0 + 520) = v4;
  v6 = v1[1];
  v5 = v1[2];
  *(v0 + 472) = *v1;
  *(v0 + 488) = v6;
  *(v0 + 504) = v5;
  sub_10020A7AC(v0 + 472, v0 + 696);
  sub_100355DAC((v0 + 472), 3, v0 + 168);
  sub_10020A92C(v0 + 472);
  v7 = *(v0 + 280);
  *(v0 + 112) = *(v0 + 264);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 296);
  *(v0 + 160) = *(v0 + 312);
  v8 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v8;
  v9 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v9;
  v10 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v10;
  if (sub_100350308(v0 + 16) == 1)
  {
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:
    v68 = *(v0 + 1536);
    static Logger.vpp.getter();
    v69 = v68;
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 1536);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412546;
      *(v73 + 4) = v72;
      *v74 = v72;
      *(v73 + 12) = 2114;
      v75 = v72;
      swift_errorRetain();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v76;
      v74[1] = v76;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v73, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 1952);
    v77 = *(v0 + 1864);
    v78 = *(v0 + 1856);
    v79 = *(v0 + 1848);

    (*(v78 + 8))(v77, v79);
LABEL_20:
    swift_willThrow();

    sub_1004C2054(v20, type metadata accessor for EnterpriseApp);

    v80 = *(v0 + 8);

    return v80();
  }

  v23 = *(v0 + 1952);
  v24 = *(v0 + 1944);
  v25 = *(v0 + 1824);
  v26 = *(v0 + 1816);
  v27 = *(v0 + 1808);
  v28 = *(v0 + 96);
  *(v0 + 384) = *(v0 + 80);
  *(v0 + 400) = v28;
  v29 = *(v0 + 64);
  *(v0 + 352) = *(v0 + 48);
  *(v0 + 368) = v29;
  *(v0 + 464) = *(v0 + 160);
  v30 = *(v0 + 144);
  *(v0 + 432) = *(v0 + 128);
  *(v0 + 448) = v30;
  *(v0 + 416) = *(v0 + 112);
  v31 = *(v0 + 32);
  *(v0 + 320) = *(v0 + 16);
  *(v0 + 336) = v31;
  v32 = *(v0 + 320);
  v33 = *(v0 + 328);
  *(v0 + 2040) = v32;
  *(v0 + 2048) = v33;
  v34 = *(v0 + 344);
  *(v0 + 2056) = *(v0 + 336);
  *(v0 + 2064) = v34;
  v35 = *(v0 + 360);
  *(v0 + 2072) = *(v0 + 352);
  *(v0 + 2080) = v35;
  *(v0 + 2088) = *(v0 + 368);
  v36 = *(v0 + 120);
  *(v0 + 952) = *(v0 + 104);
  *(v0 + 968) = v36;
  v37 = *(v0 + 152);
  *(v0 + 984) = *(v0 + 136);
  *(v0 + 1000) = v37;
  v38 = *(v0 + 88);
  *(v0 + 920) = *(v0 + 72);
  *(v0 + 936) = v38;
  sub_100005934(v23 + *(v24 + 20), v27, &qword_10077FE28);
  if ((*(v25 + 48))(v27, 1, v26) == 1)
  {
    v39 = v33;
    v40 = v32;
    sub_1000032A8(*(v0 + 1808), &qword_10077FE28);
  }

  else
  {
    (*(*(v0 + 1824) + 32))(*(v0 + 1840), *(v0 + 1808), *(v0 + 1816));
    type metadata accessor for DDMDeclaration(0);
    sub_1004C20B4(&qword_100780F10, &type metadata accessor for Platform);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = *(v0 + 1824);
    v43 = *(v0 + 1816);
    if ((v41 & 1) == 0)
    {
      v66 = v32;
      v67 = *(v0 + 1840);
      sub_100271104(v66, v33);
      sub_100350510(v0 + 376);
      type metadata accessor for EnterpriseIngestTask.Error(0);
      sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v42 + 8))(v67, v43);
      goto LABEL_17;
    }

    v39 = v33;
    v40 = v32;
    (*(v42 + 8))(*(v0 + 1840), v43);
  }

  v44 = *(v0 + 1904);
  v45 = *(v0 + 1896);
  v46 = *(v0 + 1800);
  v48 = *(v0 + 448);
  v47 = *(v0 + 456);
  URL.init(string:)();
  if ((*(v44 + 48))(v46, 1, v45) == 1)
  {
    v49 = *(v0 + 1800);
    sub_100271104(v40, v39);
    sub_1000032A8(v49, &unk_1007809F0);
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_1004C20B4(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    *v50 = v48;
    v50[1] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100350510(v0 + 376);
    goto LABEL_17;
  }

  v51 = *(v0 + 1992);
  v52 = *(v0 + 1952);
  v53 = *(v0 + 1928);
  v54 = *(v0 + 1904);
  v55 = *(v0 + 1896);
  v56 = *(v0 + 1800);
  v57 = *(v0 + 1552);
  v58 = *(v54 + 32);
  *(v0 + 2096) = v58;
  *(v0 + 2104) = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v58(v53, v56, v55);
  v59 = *v52;
  *(v0 + 2112) = *v52;
  v60 = v52[1];
  *(v0 + 2120) = v60;
  v61 = *(v57 + *(v51 + 24));
  *(v0 + 695) = v61;
  v62 = swift_task_alloc();
  *(v0 + 2128) = v62;
  *v62 = v0;
  v62[1] = sub_1004BC30C;
  v63 = *(v0 + 1760);
  v64 = *(v0 + 1520);

  return sub_10054ADF8(v63, v59, v60, 0, 2, v64, v61);
}

uint64_t sub_1004BC30C()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 2048);
    v4 = *(v2 + 2040);
    sub_100350510(v2 + 376);
    sub_100271104(v4, v3);
    v5 = sub_1004BDAA4;
  }

  else
  {
    v5 = sub_1004BC47C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BC47C()
{
  v55 = v0;
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1736);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1536);
  static Logger.vpp.getter();
  v6 = *(v3 + 16);
  *(v0 + 2144) = v6;
  *(v0 + 2152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1872);
  v12 = *(v0 + 1856);
  v13 = *(v0 + 1848);
  v14 = *(v0 + 1752);
  v15 = *(v0 + 1736);
  v16 = *(v0 + 1728);
  if (v10)
  {
    v53 = *(v0 + 1848);
    v17 = *(v0 + 1536);
    v18 = swift_slowAlloc();
    v50 = v9;
    v19 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v19 = v17;
    *(v18 + 12) = 2082;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID);
    v52 = v11;
    v20 = v17;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v15 + 8))(v14, v16);
    v24 = sub_1002346CC(v21, v23, &v54);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v8, v50, "[%@] Enqueuing enterprise manifest install '%{public}s", v18, 0x16u);
    sub_1000032A8(v19, &qword_10077F920);

    sub_10000710C(v51);

    (*(v12 + 8))(v52, v53);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v25 = *(v0 + 1952);
  v26 = *(v0 + 1904);
  v27 = *(v0 + 1896);
  v28 = *(v0 + 1696);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1552);
  v31 = *(v0 + 1536);
  v32 = (*(v0 + 695) & 1) == 0;
  v33 = *(v0 + 1528);
  (*(v0 + 1976))(v28, *(v0 + 1928), v27);
  v34 = *(v26 + 56);
  *(v0 + 2160) = v34;
  *(v0 + 2168) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v34(v28, 0, 1, v27);
  v35 = *(v25 + 40);
  *(v0 + 2176) = v35;
  v36 = *(v25 + 48);
  *(v0 + 2184) = v36;
  v37 = type metadata accessor for DDMDeclaration(0);
  *(v0 + 2192) = v37;
  v38 = *(v30 + *(v37 + 44));
  v39 = v29[9];
  v40 = (v28 + v29[5]);
  *v40 = v35;
  v40[1] = v36;
  *(v28 + v29[6]) = 0;
  *(v28 + v29[7]) = 2;
  *(v28 + v39) = v38;
  *(v28 + v29[10]) = v32;
  *(v28 + v29[8]) = v31;
  swift_bridgeObjectRetain_n();
  v41 = v31;
  static CellularIdentity.current()();
  v42 = v33[3];
  v43 = v33[4];
  v44 = sub_100006D8C(v33, v42);
  v45 = swift_task_alloc();
  *(v0 + 2200) = v45;
  *v45 = v0;
  v45[1] = sub_1004BC89C;
  v46 = *(v0 + 695);
  v47 = *(v0 + 1680);
  v48 = *(v0 + 1696);

  return sub_1005C9BD8(v48, 0, 0, v47, v46, v44, v42, v43);
}

uint64_t sub_1004BC89C(uint64_t a1)
{
  v2 = *(*v1 + 1680);
  v3 = *(*v1 + 1672);
  v4 = *(*v1 + 1664);
  *(*v1 + 2208) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1004BC9FC, 0, 0);
}

void sub_1004BC9FC()
{
  v1 = *(*(v0 + 1952) + *(*(v0 + 1944) + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    while (v3 < *(v1 + 16))
    {
      v5 = *v4;
      *(v0 + 1032) = v4[1];
      v6 = v4[2];
      v7 = v4[3];
      v8 = v4[5];
      *(v0 + 1080) = v4[4];
      *(v0 + 1096) = v8;
      *(v0 + 1048) = v6;
      *(v0 + 1064) = v7;
      *(v0 + 1016) = v5;
      v9 = *(v0 + 1032);
      if (v9 <= 2 && *(v0 + 1032) && v9 != 2)
      {
        sub_100355378(v0 + 1016, v0 + 1304);

LABEL_11:
        sub_100355378(v0 + 1016, v0 + 1208);
        URL.init(string:)();
        sub_100350510(v0 + 1016);
        sub_100350510(v0 + 1016);
        goto LABEL_12;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100355378(v0 + 1016, v0 + 1112);

      if (v10)
      {
        goto LABEL_11;
      }

      ++v3;
      sub_100350510(v0 + 1016);
      v4 += 6;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  (*(v0 + 2160))(*(v0 + 1792), 1, 1, *(v0 + 1896));
LABEL_12:
  v169 = *(v0 + 2144);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1784);
  v165 = *(v0 + 2192);
  v167 = *(v0 + 1760);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1736);
  v15 = *(v0 + 1728);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1552);
  v18 = *(v0 + 1512);
  v19 = (*sub_100006D8C(*(v0 + 1544), *(*(v0 + 1544) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v21 = v19[4];
  v20 = v19[5];
  v22 = v19[3];
  *(v0 + 679) = *(v19 + 95);
  *(v0 + 648) = v21;
  *(v0 + 664) = v20;
  *(v0 + 632) = v22;
  v24 = v19[1];
  v23 = v19[2];
  *(v0 + 584) = *v19;
  *(v0 + 600) = v24;
  *(v0 + 616) = v23;
  sub_10020A7AC(v0 + 584, v0 + 808);
  sub_10035712C(v0 + 920, v0 + 584, v12);
  sub_10020A92C(v0 + 584);
  v25 = *(v11 + 24);
  v163 = *(v11 + 16);
  v26 = *(v14 + 56);
  v26(v16, 1, 1, v15);
  v27 = (v17 + *(v165 + 52));
  v29 = *v27;
  v28 = v27[1];
  v169(v13, v167, v15);
  v164 = v26;
  v161 = v28;
  v162 = v29;
  if (v18)
  {
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1512);

    v32 = [v31 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v33 = type metadata accessor for FilePath();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v30, 1, v33) == 1)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v35 = *(v0 + 1640);
    (*(v34 + 32))(v35, *(v0 + 1632), v33);
    v140 = v33;
    (*(v34 + 56))(v35, 0, 1, v33);
  }

  else
  {
    v36 = *(v0 + 1640);
    v140 = type metadata accessor for FilePath();
    (*(*(v140 - 8) + 56))(v36, 1, 1);
  }

  v106 = *(v0 + 2208);
  v143 = v18 != 0;
  v111 = *(v0 + 2192);
  v128 = *(v0 + 2176);
  v130 = *(v0 + 2184);
  v171 = *(v0 + 2160);
  v113 = *(v0 + 695);
  v120 = *(v0 + 2112);
  v121 = *(v0 + 2120);
  v159 = *(v0 + 2048);
  v117 = *(v0 + 1992);
  v156 = *(v0 + 1976);
  v37 = *(v0 + 1952);
  v152 = *(v0 + 1912);
  v154 = *(v0 + 1928);
  v168 = *(v0 + 1896);
  v116 = *(v0 + 1832);
  v145 = *(v0 + 1824);
  v147 = *(v0 + 1816);
  v109 = *(v0 + 1792);
  v107 = *(v0 + 1784);
  v38 = *(v0 + 1776);
  v115 = v38;
  v151 = *(v0 + 1768);
  v138 = *(v0 + 1744);
  v134 = *(v0 + 1736);
  v166 = *(v0 + 1728);
  v39 = *(v0 + 1712);
  v40 = *(v0 + 1704);
  v108 = *(v0 + 1656);
  v149 = *(v0 + 1648);
  v124 = *(v0 + 1624);
  v126 = *(v0 + 1640);
  v122 = *(v0 + 1608);
  v123 = *(v0 + 1616);
  v41 = *(v0 + 1600);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 1584);
  v44 = *(v0 + 1552);
  (*(v123 + 104))();
  v132 = *(v37 + 32);
  (*(v42 + 104))(v41, enum case for LogKey.Prefix.manifest(_:), v43);
  v45 = objc_allocWithZone(type metadata accessor for LogKey());
  v119 = LogKey.init(prefix:)();
  v118 = *(v44 + *(v117 + 40));
  sub_100005934(v109, v38, &unk_1007809F0);
  v46 = (v44 + *(v111 + 88));
  v110 = v46[1];
  v112 = *v46;
  sub_10026E620(*v46, v110);
  static Platform.current.getter();
  if (v113)
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  v114 = v47;
  v48 = v40[9];
  v171(v39 + v48, 1, 1, v168);
  v96 = v40[14];
  v49 = (v39 + v40[13]);
  v164(v39 + v96, 1, 1, v166);
  v95 = (v39 + v40[15]);
  v50 = v40[20];
  v97 = v40[16];
  v98 = v50;
  type metadata accessor for FilePath();
  (*(*(v140 - 8) + 56))(v39 + v50, 1, 1);
  v99 = (v39 + v40[22]);
  v103 = v40[29];
  v100 = v40[26];
  v101 = v40[30];
  v171(v39 + v101, 1, 1, v168);
  v102 = v40[31];
  v104 = v40[33];
  v105 = v40[34];
  static Platform.current.getter();
  v136 = v40[35];
  v51 = (v39 + v40[36]);
  *v51 = xmmword_10069E8A0;
  v141 = v40[38];
  *(v39 + v40[39]) = xmmword_10069E8A0;
  v52 = (v39 + v40[40]);
  *v52 = 0;
  v52[1] = 0;
  v53 = v39 + v40[41];
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = -1;
  v54 = (v39 + v40[42]);
  *v54 = 0;
  v54[1] = 0;
  *(v39 + v40[43]) = 0;
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v39 + 24) = 0;
  *(v39 + 32) = 1;
  *(v39 + 40) = 0;
  *(v39 + 48) = 1;
  *(v39 + 56) = 0;
  *(v39 + 64) = 1;
  sub_10020AD90(v107, v39 + v48, &unk_1007809F0);
  v55 = (v39 + v40[10]);
  *v55 = v120;
  v55[1] = v121;
  v56 = (v39 + v40[11]);
  *v56 = v128;
  v56[1] = v130;
  v57 = (v39 + v40[12]);
  *v57 = v163;
  v57[1] = v25;
  *v49 = 0;
  v49[1] = 0;
  sub_10020AD90(v108, v39 + v96, &unk_100780A00);
  *v95 = v162;
  v95[1] = v161;
  *(v39 + v97) = 0;
  *(v39 + v40[17]) = 0;
  *(v39 + v40[18]) = 0;
  (*(v134 + 32))(v39 + v40[19], v138, v166);
  sub_10020AD90(v126, v39 + v98, &qword_10077E958);
  (*(v123 + 32))(v39 + v40[21], v124, v122);
  *v99 = 0;
  v99[1] = 0;
  *(v39 + v40[23]) = 0;
  *(v39 + v40[24]) = 0;
  *(v39 + v40[25]) = v132 & 1;
  *(v39 + v100) = v143;
  *(v39 + v40[27]) = 1;
  *(v39 + v40[28]) = v119;
  *(v39 + v103) = v118;
  sub_10020AD90(v115, v39 + v101, &unk_1007809F0);
  *(v39 + v102) = v106 & 0x1010101;
  v58 = (v39 + v40[32]);
  *v58 = v112;
  v58[1] = v110;
  *(v39 + v104) = 0;
  (*(v145 + 40))(v39 + v105, v116, v147);
  *(v39 + v136) = v114;
  sub_10020B0E0(*v51, v51[1]);
  *v51 = xmmword_10069E8A0;
  *(v39 + v40[37]) = 0;
  v59 = [objc_allocWithZone(MIStoreMetadata) init];
  v60 = String._bridgeToObjectiveC()();
  [v59 setSoftwareVersionBundleID:v60];

  v61 = String._bridgeToObjectiveC()();
  [v59 setBundleVersion:v61];

  v62 = v59;
  [v62 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  sub_10047D06C();
  swift_dynamicCast();
  *(v39 + v141) = *(v0 + 1496);
  v164(v149, 1, 1, v166);
  v63 = *(v0 + 400);
  v64 = *(v0 + 408);
  v66 = *(v0 + 416);
  v65 = *(v0 + 424);
  v67 = *(v0 + 432);
  v68 = *(v0 + 440);
  v171(v151, 1, 1, v168);
  v156(v152, v154, v168);
  v173 = v62;
  v148 = v68;
  v150 = v67;
  v146 = v65;
  v137 = v63;
  v139 = v64;
  v135 = v66;
  if (v159)
  {
    v69 = *(v0 + 2088);
    v70 = *(v0 + 2048);
    if (v69)
    {
      v71 = *(v0 + 2080);
      v72 = *(v0 + 2040);
      v174 = 14897;
      sub_10047D0D4(v63, v64, v66);
      v73._countAndFlagsBits = v72;
      v73._object = v70;
      String.append(_:)(v73);
      v74._countAndFlagsBits = 47;
      v74._object = 0xE100000000000000;
      String.append(_:)(v74);
      v75 = v71;
      v76 = v69;
    }

    else
    {
      v77 = *(v0 + 2040);
      v174 = 14896;
      sub_10047D0D4(v63, v64, v66);
      v75 = v77;
      v76 = v70;
    }

    String.append(_:)(*&v75);
    v125 = 0xE200000000000000;
    v127 = v174;
  }

  else
  {
    sub_10047D0D4(v63, v64, v66);
    v125 = 0;
    v127 = 0;
  }

  v78 = *(v0 + 2160);
  v144 = *(v0 + 2096);
  v160 = *(v0 + 2048);
  v158 = *(v0 + 2040);
  v142 = *(v0 + 1912);
  v79 = *(v0 + 1896);
  v133 = v79;
  v170 = *(v0 + 1792);
  v131 = *(v0 + 1768);
  v80 = *(v0 + 1728);
  v153 = *(v0 + 1712);
  v155 = *(v0 + 1720);
  v172 = *(v0 + 1696);
  v129 = *(v0 + 1648);
  v81 = *(v0 + 1576);
  v157 = *(v0 + 1568);
  v82 = *(v0 + 1560);
  *(v0 + 1432) = 0u;
  *(v0 + 1448) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = 0u;
  v83 = v82[8];
  v164(v81 + v83, 1, 1, v80);
  v84 = v82[10];
  v85 = (v81 + v82[9]);
  v78(v81 + v84, 1, 1, v79);
  v86 = v81 + v82[18];
  v87 = (v81 + v82[20]);
  v88 = (v81 + v82[21]);
  v88[2] = 0u;
  v88[3] = 0u;
  *v88 = 0u;
  v88[1] = 0u;
  *v81 = 0u;
  *(v81 + 16) = 0u;
  *(v81 + 32) = 1;
  *(v81 + 40) = 0u;
  *(v81 + 56) = 0u;
  sub_10020AD90(v129, v81 + v83, &unk_100780A00);
  *v85 = v137;
  v85[1] = v139;
  v85[2] = v135;
  v85[3] = v146;
  v85[4] = v150;
  v85[5] = v148;
  sub_10020AD90(v131, v81 + v84, &unk_1007809F0);
  v89 = v81 + v82[11];
  *(v89 + 48) = 0u;
  *(v89 + 64) = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 32) = 0u;
  *v89 = 0u;
  *(v89 + 80) = 0;
  *(v89 + 88) = 0x8000000000000000;
  *(v89 + 96) = 0;
  *(v89 + 104) = 0;
  *(v81 + v82[12]) = 0;
  *(v81 + v82[13]) = 0;
  *(v81 + v82[14]) = 0;
  *(v81 + v82[15]) = 0;
  *(v81 + v82[16]) = 0;
  *(v81 + v82[17]) = 0;
  *v86 = 0;
  *(v86 + 8) = 1;
  v144(v81 + v82[19], v142, v133);
  *v87 = v127;
  v87[1] = v125;
  sub_10020AD90(v0 + 1400, v88, &qword_10077E968);
  sub_1004C1F84(v153, v155, type metadata accessor for AppInstall);
  sub_1001F0C48(&qword_100780F18);
  v90 = *(v157 + 80);
  *(v0 + 2240) = v90;
  v91 = (v90 + 32) & ~v90;
  v92 = swift_allocObject();
  *(v0 + 2216) = v92;
  *(v92 + 16) = xmmword_10069E680;
  sub_1004C1FEC(v81, v92 + v91, type metadata accessor for AppPackage);
  sub_100271104(v158, v160);
  sub_100350510(v0 + 376);

  sub_1000032A8(v170, &unk_1007809F0);
  sub_1004C2054(v172, type metadata accessor for EvaluatorDownload);
  sub_1004C2054(v153, type metadata accessor for AppInstall);
  v93 = swift_task_alloc();
  *(v0 + 2224) = v93;
  *v93 = v0;
  v93[1] = sub_1004BD934;
  v94 = *(v0 + 1720);

  sub_10054CDE0(v94, v92);
}

uint64_t sub_1004BD934()
{
  v2 = *v1;
  *(v2 + 2232) = v0;

  v3 = *(v2 + 2216);
  v4 = (*(v2 + 2240) + 32) & ~*(v2 + 2240);
  swift_setDeallocating();
  sub_1004C2054(v3 + v4, type metadata accessor for AppPackage);
  swift_deallocClassInstance();
  if (v0)
  {
    v5 = sub_1004BE110;
  }

  else
  {
    v5 = sub_1004BDE58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BDAA4()
{
  (*(v0[238] + 8))(v0[241], v0[237]);
  v1 = v0[192];
  static Logger.vpp.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[192];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v10 = v0[244];
  v11 = v0[233];
  v12 = v0[232];
  v13 = v0[231];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  sub_1004C2054(v10, type metadata accessor for EnterpriseApp);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004BDE58()
{
  v1 = v0[244];
  v2 = v0[241];
  v3 = v0[238];
  v4 = v0[237];
  v5 = v0[220];
  v6 = v0[217];
  v7 = v0[216];
  sub_1004C2054(v0[215], type metadata accessor for AppInstall);
  (*(v6 + 8))(v5, v7);

  (*(v3 + 8))(v2, v4);
  sub_1004C2054(v1, type metadata accessor for EnterpriseApp);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BE110()
{
  v1 = *(v0 + 1968);
  sub_1004C2054(*(v0 + 1720), type metadata accessor for AppInstall);

  return _swift_task_switch(sub_1004BE190, v1, 0);
}

uint64_t sub_1004BE190()
{
  sub_10054C8D0(*(v0 + 1760));

  return _swift_task_switch(sub_1004BE1FC, 0, 0);
}

uint64_t sub_1004BE1FC()
{
  v1 = v0[220];
  v2 = v0[217];
  v3 = v0[216];
  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  (*(v0[238] + 8))(v0[241], v0[237]);
  v4 = v0[192];
  static Logger.vpp.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[192];
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
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Failed to enqueue enterprise manifest install: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v13 = v0[244];
  v14 = v0[233];
  v15 = v0[232];
  v16 = v0[231];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  sub_1004C2054(v13, type metadata accessor for EnterpriseApp);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004BE5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004BE810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[128] = v20;
  v8[127] = v19;
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  v8[121] = a3;
  v8[120] = a2;
  v8[119] = a1;
  v9 = type metadata accessor for AppPackage();
  v8[129] = v9;
  v8[130] = *(v9 - 8);
  v8[131] = swift_task_alloc();
  v10 = type metadata accessor for Platform();
  v8[132] = v10;
  v8[133] = *(v10 - 8);
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = type metadata accessor for AppStoreMetadata(0);
  v8[138] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[139] = v11;
  v8[140] = *(v11 - 8);
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = type metadata accessor for AppInstall();
  v8[151] = swift_task_alloc();
  v12 = type metadata accessor for CellularIdentity();
  v8[152] = v12;
  v8[153] = *(v12 - 8);
  v8[154] = swift_task_alloc();
  v8[155] = type metadata accessor for EvaluatorDownload();
  v8[156] = swift_task_alloc();
  v13 = type metadata accessor for AppInstallRequestType();
  v8[157] = v13;
  v8[158] = *(v13 - 8);
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  sub_1001F0C48(&unk_100786710);
  v8[161] = swift_task_alloc();
  v14 = type metadata accessor for AppStoreItem(0);
  v8[162] = v14;
  v8[163] = *(v14 - 8);
  v8[164] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  v8[165] = swift_task_alloc();
  v8[166] = type metadata accessor for AppStorePurchaseRequest(0);
  v8[167] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[168] = v15;
  v8[169] = *(v15 - 8);
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = type metadata accessor for ManagedAppInstallationTask();
  v8[173] = swift_task_alloc();
  v8[174] = swift_task_alloc();
  v8[175] = swift_task_alloc();
  v8[176] = swift_task_alloc();
  v8[177] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v8[178] = v16;
  v8[179] = *(v16 - 8);
  v8[180] = swift_task_alloc();
  v8[181] = swift_task_alloc();
  v8[182] = swift_task_alloc();
  v8[183] = swift_task_alloc();

  return _swift_task_switch(sub_1004BEE48, 0, 0);
}

uint64_t sub_1004BEE48()
{
  v86 = v0;
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  static Logger.vpp.getter();
  sub_1004C1F84(v5, v1, type metadata accessor for ManagedAppInstallationTask);
  v7 = *(v3 + 16);
  *(v0 + 1472) = v7;
  *(v0 + 1480) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1432);
  v13 = *(v0 + 1424);
  v14 = *(v0 + 1416);
  if (v10)
  {
    v15 = *(v0 + 1376);
    v16 = *(v0 + 1368);
    v83 = *(v0 + 1464);
    v17 = *(v0 + 1352);
    v78 = *(v0 + 1344);
    v18 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85 = v80;
    *v18 = 138412546;
    v19 = *(v14 + *(v15 + 28));
    sub_1004C2054(v14, type metadata accessor for ManagedAppInstallationTask);
    *(v18 + 4) = v19;
    *v76 = v19;
    *(v18 + 12) = 2082;
    sub_1004C20B4(&qword_100789F60, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v16, v78);
    v23 = sub_1002346CC(v20, v22, &v85);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Assigning installation identifier: %{public}s", v18, 0x16u);
    sub_1000032A8(v76, &qword_10077F920);

    sub_10000710C(v80);

    (*(v12 + 8))(v83, v13);
  }

  else
  {
    v24 = *(v0 + 1368);
    v25 = *(v0 + 1352);
    v26 = *(v0 + 1344);

    (*(v25 + 8))(v24, v26);
    sub_1004C2054(v14, type metadata accessor for ManagedAppInstallationTask);
    (*(v12 + 8))(v11, v13);
  }

  v27 = *(v0 + 968);
  v28 = type metadata accessor for DDMDeclaration(0);
  *(v0 + 1488) = v28;
  v29 = (v27 + *(v28 + 104));
  v30 = v29[1];
  if (v30)
  {
    v81 = *(v27 + 48);
    v82 = *v29;
    v79 = *(v27 + 56);
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v79 = 0;
  }

  v31 = *(v0 + 1376);
  v32 = (v27 + *(v31 + 32));
  if (*(v32 + 8) == 1)
  {

    v77 = 0;
  }

  else
  {
    v33 = *v32;
    sub_1001F0C48(&unk_100786730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    v35 = AMSBuyParamPropertyExternalVersionId;
    *(inited + 32) = AMSBuyParamPropertyExternalVersionId;
    *(v0 + 944) = v33;

    v36 = v35;
    *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 48) = v37;
    v77 = sub_10052B164(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &qword_100780EC0);
    v31 = *(v0 + 1376);
    v27 = *(v0 + 968);
  }

  v84 = v30;
  v38 = *(v0 + 1320);
  v75 = *(v27 + *(v31 + 24));
  *(v0 + 127) = v75;
  sub_100005934(v27 + *(v28 + 72), v38, &qword_10077F340);
  v39 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v38, 1, v39);
  v73 = v28;
  if (v41 == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = *(v0 + 1336);
    v45 = *(v0 + 1328);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v70 = *(v0 + 1376);
    v71 = *(v0 + 992);
    v48 = *(v0 + 984);
    v49 = *(v0 + 976);
    v72 = *(v0 + 1320);
    v50 = *(v0 + 968);
    v51 = (*sub_100006D8C(v47, v47[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v52 = *(v51 + 95);
    v53 = v51[5];
    v54 = v51[3];
    *(v0 + 80) = v51[4];
    *(v0 + 96) = v53;
    *(v0 + 111) = v52;
    *(v0 + 64) = v54;
    v55 = *v51;
    v56 = v51[2];
    *(v0 + 32) = v51[1];
    *(v0 + 48) = v56;
    *(v0 + 16) = v55;
    sub_10020A980(v46, v44 + v45[10]);
    v57 = (v50 + *(v73 + 92));
    v74 = *v57;
    v69 = *(v57 + 8);
    v58 = *(v50 + *(v70 + 28));
    *(v0 + 1496) = v58;
    *v44 = v49;
    *(v44 + 8) = v82;
    *(v44 + 16) = v84;
    *(v44 + 24) = v81;
    *(v44 + 32) = v79;
    *(v44 + 40) = v75;
    *(v44 + 48) = v48;
    *(v44 + 56) = v71;
    (*(v40 + 32))(v44 + v45[8], v72, v39);
    v59 = (v44 + v45[9]);
    v60 = *(v0 + 111);
    v62 = *(v0 + 80);
    v61 = *(v0 + 96);
    v59[3] = *(v0 + 64);
    v59[4] = v62;
    v59[5] = v61;
    *(v59 + 95) = v60;
    v64 = *(v0 + 32);
    v63 = *(v0 + 48);
    *v59 = *(v0 + 16);
    v59[1] = v64;
    v59[2] = v63;
    *(v44 + v45[11]) = v77;
    *(v44 + v45[12]) = 0;
    v65 = v44 + v45[13];
    *v65 = v74;
    *(v65 + 8) = v69;
    *(v44 + v45[14]) = v58;
    v66 = *(*sub_100006D8C(v47, v47[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);
    *(v0 + 1504) = v66;
    sub_10020A7AC(v0 + 16, v0 + 128);
    v67 = v58;
    sub_10026E620(v48, v71);

    v41 = sub_1004BF4C8;
    v42 = v66;
    v43 = 0;
  }

  return _swift_task_switch(v41, v42, v43);
}

uint64_t sub_1004BF4C8()
{
  v1 = v0[188];
  v2 = v0[167];
  v3 = sub_1004C20B4(&unk_100786700, type metadata accessor for AppStorePurchaseQueue);
  v4 = swift_task_alloc();
  v0[189] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[190] = v5;
  v6 = sub_1001F0C48(&qword_100784FE0);
  *v5 = v0;
  v5[1] = sub_1004BF614;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 114, v1, v3, 0xD000000000000016, 0x80000001006CC530, sub_1004C1F7C, v4, v6);
}

uint64_t sub_1004BF614()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v3 = *(v2 + 1504);
    v4 = sub_1004C0714;
  }

  else
  {
    v5 = *(v2 + 1504);

    v4 = sub_1004BF73C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004BF73C()
{

  *(v0 + 1536) = *(v0 + 912);

  return _swift_task_switch(sub_1004BF7AC, 0, 0);
}

uint64_t sub_1004BF7AC()
{
  v139 = v0;
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = sub_1004DA6EC();
  v7 = v6;
  v9 = v8;
  sub_10039CFA8(v5, v6, v8 & 1, v1, v4);

  sub_1001DFEBC(v5, v7, v9 & 1);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v10 = *(v0 + 1392);
    v11 = *(v0 + 1384);
    v12 = *(v0 + 968);
    sub_1000032A8(*(v0 + 1288), &unk_100786710);
    static Logger.vpp.getter();
    sub_1004C1F84(v12, v10, type metadata accessor for ManagedAppInstallationTask);
    sub_1004C1F84(v12, v11, type metadata accessor for ManagedAppInstallationTask);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 1440);
    v17 = *(v0 + 1432);
    v18 = *(v0 + 1424);
    v19 = *(v0 + 1392);
    v20 = *(v0 + 1384);
    if (v15)
    {
      v133 = v13;
      v21 = *(v0 + 1376);
      v135 = *(v0 + 1424);
      v22 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v137 = v132;
      *v22 = 138412546;
      v23 = *(v19 + *(v21 + 28));
      sub_1004C2054(v19, type metadata accessor for ManagedAppInstallationTask);
      *(v22 + 4) = v23;
      *v131 = v23;
      *(v22 + 12) = 2082;
      v24 = sub_1004DA6EC();
      v26 = v25;
      v28 = v27;
      v29 = StoreAppIdentifier.description.getter();
      v130 = v14;
      v31 = v30;
      sub_1001DFEBC(v24, v26, v28 & 1);
      sub_1004C2054(v20, type metadata accessor for ManagedAppInstallationTask);
      v32 = sub_1002346CC(v29, v31, &v137);

      *(v22 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v133, v130, "[%@] Missing expected metadata for %{public}s", v22, 0x16u);
      sub_1000032A8(v131, &qword_10077F920);

      sub_10000710C(v132);

      (*(v17 + 8))(v16, v135);
    }

    else
    {

      sub_1004C2054(v20, type metadata accessor for ManagedAppInstallationTask);
      sub_1004C2054(v19, type metadata accessor for ManagedAppInstallationTask);
      (*(v17 + 8))(v16, v18);
    }

    v50 = *(v0 + 1336);
    type metadata accessor for InternalError();
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v51 = 0;
    v51[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_28:
    sub_1004C2054(v50, type metadata accessor for AppStorePurchaseRequest);

    v102 = *(v0 + 8);

    return v102();
  }

  v33 = *(v0 + 1312);
  v34 = *(v0 + 1296);
  sub_1004C1FEC(*(v0 + 1288), v33, type metadata accessor for AppStoreItem);
  v35 = *(v34 + 24);
  *(v0 + 1648) = v35;
  v36 = (v33 + v35);
  v37 = *(v33 + v35 + 16);
  *(v0 + 1544) = v37;
  v38 = v36[3];
  *(v0 + 1552) = v38;
  v137 = v37;
  v138 = v38;

  v39._countAndFlagsBits = 58;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  *(v0 + 920) = *v33;
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 58;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v36[12];
  *(v0 + 1560) = v42;
  *(v0 + 928) = v42;
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v45 = v137;
  v44 = v138;
  sub_1006258D8();
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  sub_1002710CC(*(v0 + 1424), qword_1007B88E8);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v137 = v49;
    *v48 = 136446210;

    *(v48 + 4) = sub_1002346CC(v45, v44, &v137);
    _os_log_impl(&_mh_execute_header, v46, v47, "Activity associated with %{public}s", v48, 0xCu);
    sub_10000710C(v49);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v52 = *(v0 + 1408);
  v53 = *(v0 + 968);
  static Logger.vpp.getter();
  sub_1004C1F84(v53, v52, type metadata accessor for ManagedAppInstallationTask);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 1408);
  if (v56)
  {
    v58 = *(v0 + 1376);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = *(v57 + *(v58 + 28));
    sub_1004C2054(v57, type metadata accessor for ManagedAppInstallationTask);
    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Purchase completed, performing compatiblity checks", v59, 0xCu);
    sub_1000032A8(v60, &qword_10077F920);
  }

  else
  {

    sub_1004C2054(v57, type metadata accessor for ManagedAppInstallationTask);
  }

  v62 = *(v0 + 1096);
  v63 = *(*(v0 + 1432) + 8);
  v63(*(v0 + 1456), *(v0 + 1424));
  v64 = *(v36 + *(v62 + 140));
  if (v64)
  {
    v65 = *(v0 + 1000);
    v66 = sub_1004B5CA4(v64);
    v67 = (*sub_100006D8C(v65, v65[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v69 = v67[4];
    v68 = v67[5];
    v70 = v67[3];
    *(v0 + 335) = *(v67 + 95);
    *(v0 + 304) = v69;
    *(v0 + 320) = v68;
    *(v0 + 288) = v70;
    v72 = v67[1];
    v71 = v67[2];
    *(v0 + 240) = *v67;
    *(v0 + 256) = v72;
    *(v0 + 272) = v71;
    sub_10020A7AC(v0 + 240, v0 + 352);
    v73 = sub_1004FED84(v66);

    sub_10020A92C(v0 + 240);
    if (v73[2])
    {
      v74 = *(v0 + 1400);
      v75 = *(v0 + 968);
      static Logger.vpp.getter();
      sub_1004C1F84(v75, v74, type metadata accessor for ManagedAppInstallationTask);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 1448);
      v80 = *(v0 + 1424);
      v81 = *(v0 + 1400);
      if (v78)
      {
        v136 = *(v0 + 1448);
        v82 = *(v0 + 1376);
        v83 = swift_slowAlloc();
        v134 = v80;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v137 = v85;
        *v83 = 138412546;
        v86 = *(v81 + *(v82 + 28));
        sub_1004C2054(v81, type metadata accessor for ManagedAppInstallationTask);
        *(v83 + 4) = v86;
        *v84 = v86;
        *(v83 + 12) = 2080;
        v87 = Array.description.getter();
        v89 = v88;

        v90 = sub_1002346CC(v87, v89, &v137);

        *(v83 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Failed to import purchase, there are missing capabilities: %s", v83, 0x16u);
        sub_1000032A8(v84, &qword_10077F920);

        sub_10000710C(v85);

        v91 = v136;
        v92 = v134;
      }

      else
      {

        sub_1004C2054(v81, type metadata accessor for ManagedAppInstallationTask);
        v91 = v79;
        v92 = v80;
      }

      v63(v91, v92);
      v50 = *(v0 + 1336);
      v101 = *(v0 + 1312);
      type metadata accessor for InternalError();
      sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1004C2054(v101, type metadata accessor for AppStoreItem);
      goto LABEL_28;
    }
  }

  v93 = *(v0 + 1280);
  v94 = *(v0 + 1264);
  v95 = *(v0 + 1256);
  v96 = *(v0 + 1016);
  v97 = *(v94 + 16);
  *(v0 + 1568) = v97;
  *(v0 + 1576) = (v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v97(v93, v96, v95);
  result = (*(v94 + 88))(v93, v95);
  v99 = *(v0 + 127);
  if (result == enum case for AppInstallRequestType.automaticUpdate(_:) || result == enum case for AppInstallRequestType.update(_:) || result == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || result == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    if (*(v0 + 127))
    {
      v100 = 2;
    }

    else
    {
      v100 = 3;
    }
  }

  else
  {
    result = (*(*(v0 + 1264) + 8))(*(v0 + 1280), *(v0 + 1256));
    v100 = (v99 & 1) == 0;
  }

  v103 = *(*(v0 + 1312) + *(*(v0 + 1296) + 28));
  *(v0 + 1584) = v103;
  if (!*(v103 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v104 = *(v0 + 1248);
  v105 = *(v0 + 1120);
  v106 = *(v0 + 1112);
  v107 = type metadata accessor for AppStorePackage(0);
  *(v0 + 1592) = v107;
  v108 = *(*(v107 - 8) + 80);
  *(v0 + 1652) = v108;
  v109 = v103 + ((v108 + 32) & ~v108);
  v110 = *(v105 + 16);
  *(v0 + 1600) = v110;
  *(v0 + 1608) = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v110(v104, v109, v106);
  v111 = *(v105 + 56);
  *(v0 + 1616) = v111;
  *(v0 + 1624) = (v105 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v111(v104, 0, 1, v106);
  v112 = *(v107 + 20);
  *(v0 + 1656) = v112;
  v113 = *(v109 + v112);
  if (v113 < 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v114 = *(v0 + 1496);
  v115 = *(v0 + 1248);
  v116 = *(v0 + 1240);
  v117 = *(v0 + 1008);
  v118 = v36[28];
  v119 = *(*(v0 + 968) + *(*(v0 + 1488) + 44));
  v120 = v116[9];
  v121 = (v115 + v116[5]);
  *v121 = v36[27];
  v121[1] = v118;
  *(v115 + v116[6]) = v113;
  *(v115 + v116[7]) = 2;
  *(v115 + v120) = v119;
  *(v115 + v116[10]) = v100;
  *(v115 + v116[8]) = v114;
  v122 = v114;

  static CellularIdentity.current()();
  v123 = v117[3];
  v124 = v117[4];
  v125 = sub_100006D8C(v117, v123);
  v126 = swift_task_alloc();
  *(v0 + 1632) = v126;
  *v126 = v0;
  v126[1] = sub_1004C09EC;
  v127 = *(v0 + 127);
  v128 = *(v0 + 1232);
  v129 = *(v0 + 1248);

  return sub_1005C9BD8(v129, 0, 0, v128, v127, v125, v123, v124);
}

uint64_t sub_1004C0714()
{

  return _swift_task_switch(sub_1004C0788, 0, 0);
}

uint64_t sub_1004C0788()
{
  sub_1004C2054(*(v0 + 1336), type metadata accessor for AppStorePurchaseRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C09EC(uint64_t a1)
{
  v2 = *(*v1 + 1232);
  v3 = *(*v1 + 1224);
  v4 = *(*v1 + 1216);
  *(*v1 + 1640) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1004C0B4C, 0, 0);
}

uint64_t sub_1004C0B4C()
{
  if ((*(v0 + 1640) & 0x1010000) == 0x1000000)
  {
    v1 = *(v0 + 1336);
    v2 = *(v0 + 1312);
    v3 = *(v0 + 1248);
    type metadata accessor for InternalError();
    sub_1004C20B4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1004C2054(v3, type metadata accessor for EvaluatorDownload);
    sub_1004C2054(v2, type metadata accessor for AppStoreItem);
    sub_1004C2054(v1, type metadata accessor for AppStorePurchaseRequest);

    v4 = *(v0 + 8);

    return v4();
  }

  v207 = *(v0 + 1616);
  v197 = *(v0 + 1472);
  v191 = *(v0 + 1488);
  v194 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1312);
  v8 = *(v0 + 1296);
  v9 = *(v0 + 1192);
  v176 = *(v0 + 1600);
  v179 = *(v0 + 1168);
  v10 = *(v0 + 1112);
  v202 = *(v0 + 1024);
  v182 = *(v0 + 968);
  v11 = (v7 + *(v0 + 1648));
  v185 = *(v0 + 960);
  v188 = *(v0 + 1344);
  sub_100397D84(v0 + 840);
  v12 = *(v0 + 864);
  v13 = *(v0 + 872);
  sub_100006D8C((v0 + 840), v12);
  v169 = (*(v13 + 8))(v12, v13);
  v171 = v11[26];
  v176(v9, v7 + *(v8 + 20), v10);
  v207(v9, 0, 1, v10);
  v15 = v11[4];
  v14 = v11[5];
  v16 = v11[8];
  v17 = v11[9];
  v205 = v14;
  v208 = *(v6 + 56);
  v208(v179, 1, 1, v188);
  v18 = (v182 + *(v191 + 52));
  v19 = *v18;
  v20 = v18[1];
  v197(v194, v185, v188);
  v192 = v19;
  v174 = v15;
  v177 = v16;
  v183 = v20;
  v167 = v17;
  if (v202)
  {
    v21 = *(v0 + 1144);
    v22 = *(v0 + 1024);

    v23 = [v22 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v24 = type metadata accessor for FilePath();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v21, 1, v24);
    if (result == 1)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v26 = *(v0 + 1152);
    (*(v25 + 32))(v26, *(v0 + 1144), v24);
    v164 = v24;
    (*(v25 + 56))(v26, 0, 1, v24);
  }

  else
  {
    v27 = *(v0 + 1152);
    v164 = type metadata accessor for FilePath();
    (*(*(v164 - 8) + 56))(v27, 1, 1);
  }

  v28 = *(v0 + 1640);
  v198 = v202 != 0;
  v133 = *(v0 + 1616);
  v139 = *(v0 + 1560);
  v145 = *(v0 + 1552);
  v142 = *(v0 + 1544);
  v161 = *(v0 + 127);
  v152 = *(v0 + 1488);
  v29 = *(v0 + 1376);
  v159 = *(v0 + 1360);
  v155 = *(v0 + 1352);
  v200 = *(v0 + 1344);
  v30 = *(v0 + 1312);
  v147 = *(v0 + 1296);
  v151 = *(v0 + 1272);
  v180 = *(v0 + 1264);
  v149 = *(v0 + 1256);
  v31 = *(v0 + 1208);
  v32 = *(v0 + 1200);
  v136 = *(v0 + 1192);
  v33 = *(v0 + 1184);
  v141 = *(v0 + 1168);
  v157 = *(v0 + 1152);
  v158 = v33;
  v126 = *(v0 + 1112);
  v137 = *(v0 + 1104);
  v34 = *(v0 + 1096);
  v195 = v34;
  v203 = *(v0 + 1088);
  v35 = v30 + *(v0 + 1648);
  v140 = *(v0 + 1064);
  v189 = *(v0 + 1056);
  v36 = *(v0 + 968);
  (*(v0 + 1568))();
  v154 = *(v35 + 204);
  v156 = *(v35 + 205);
  v160 = *(v36 + *(v29 + 40));
  v186 = v35;
  sub_100005934(v35 + *(v34 + 116), v33, &unk_1007809F0);
  v37 = (v36 + *(v152 + 88));
  v39 = *v37;
  v38 = v37[1];
  v143 = v38;
  v144 = *v37;
  if (v161)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  v162 = v40;
  v153 = v28 & 0x1010101;
  v41 = (v30 + *(v147 + 32));
  v42 = *v41;
  v43 = v41[1];
  v146 = v43;
  v148 = *v41;
  sub_10047D06C();
  sub_1004C1F84(v35, v137, type metadata accessor for AppStoreMetadata);
  sub_10026E620(v39, v38);
  sub_1001DFECC(v42, v43);
  sub_10061AAE8(v137);
  v45 = v44;
  [v44 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v138 = *(v0 + 936);
  v135 = sub_100625FA0();
  static Platform.current.getter();
  v46 = v32[9];
  v133(v31 + v46, 1, 1, v126);
  v120 = v32[14];
  v47 = (v31 + v32[13]);
  v208(v31 + v120, 1, 1, v200);
  v48 = (v31 + v32[15]);
  v49 = v32[20];
  v122 = v32[16];
  v124 = v49;
  type metadata accessor for FilePath();
  (*(*(v164 - 8) + 56))(v31 + v49, 1, 1);
  v50 = (v31 + v32[22]);
  v132 = v32[29];
  v128 = v32[26];
  v130 = v32[30];
  v133(v31 + v130, 1, 1, v126);
  v134 = v32[31];
  v51 = v32[34];
  v150 = v32[33];
  static Platform.current.getter();
  v165 = v32[35];
  v52 = (v31 + v32[36]);
  *v52 = xmmword_10069E8A0;
  v53 = v32[38];
  *(v31 + v32[39]) = xmmword_10069E8A0;
  v54 = (v31 + v32[40]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v31 + v32[41];
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = -1;
  v56 = (v31 + v32[42]);
  *v56 = 0;
  v56[1] = 0;
  *(v31 + v32[43]) = 0;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  *(v31 + 24) = v169;
  *(v31 + 32) = 0;
  *(v31 + 40) = v171;
  *(v31 + 48) = 0;
  *(v31 + 56) = v139;
  *(v31 + 64) = 0;
  sub_10020AD90(v136, v31 + v46, &unk_1007809F0);
  v57 = (v31 + v32[10]);
  *v57 = v142;
  v57[1] = v145;
  v58 = (v31 + v32[11]);
  *v58 = v174;
  v58[1] = v205;
  v59 = (v31 + v32[12]);
  *v59 = v177;
  v59[1] = v167;
  *v47 = 0;
  v47[1] = 0;
  sub_10020AD90(v141, v31 + v120, &unk_100780A00);
  *v48 = v192;
  v48[1] = v183;
  *(v31 + v122) = 0;
  *(v31 + v32[17]) = 0;
  *(v31 + v32[18]) = 0;
  (*(v155 + 32))(v31 + v32[19], v159, v200);
  sub_10020AD90(v157, v31 + v124, &qword_10077E958);
  (*(v180 + 32))(v31 + v32[21], v151, v149);
  *v50 = 0;
  v50[1] = 0;
  *(v31 + v32[23]) = 0;
  *(v31 + v32[24]) = v154;
  *(v31 + v32[25]) = v156 & 1;
  *(v31 + v128) = v198;
  *(v31 + v32[27]) = 1;
  *(v31 + v32[28]) = v135;
  *(v31 + v132) = v160;
  sub_10020AD90(v158, v31 + v130, &unk_1007809F0);
  *(v31 + v134) = v153;
  v60 = (v31 + v32[32]);
  *v60 = v144;
  v60[1] = v143;
  *(v31 + v150) = 0;
  v61 = *(v140 + 40);
  v61(v31 + v51, v203, v189);
  *(v31 + v165) = v162;
  sub_10020B0E0(*v52, v52[1]);
  *v52 = v148;
  v52[1] = v146;
  *(v31 + v32[37]) = 2;
  *(v31 + v53) = v138;
  sub_10000710C(v0 + 840);
  v62 = *(v186 + *(v195 + 144));
  if (v62 <= 1)
  {
    if (*(v186 + *(v195 + 144)))
    {
      static Platform.macOS.getter();
    }

    else
    {
      static Platform.iOS.getter();
    }

    goto LABEL_18;
  }

  if (v62 == 2)
  {
    static Platform.visionOS.getter();
LABEL_18:
    (*(*(v0 + 1064) + 32))(*(v0 + 1080), *(v0 + 1072), *(v0 + 1056));
    goto LABEL_20;
  }

  static Platform.current.getter();
LABEL_20:
  v63 = *(v0 + 1584);
  result = (v61)(v31 + v51, *(v0 + 1080), *(v0 + 1056));
  if (!*(v63 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v64 = *(v0 + 1616);
  v65 = *(v0 + 1600);
  v66 = *(v0 + 1592);
  v67 = *(v0 + 1176);
  v68 = *(v0 + 1128);
  v69 = *(v0 + 1112);
  v70 = *(v0 + 1584) + ((*(v0 + 1652) + 32) & ~*(v0 + 1652));
  v71 = (v70 + v66[10]);
  v187 = v71[1];
  v190 = *v71;
  v181 = v71[3];
  v184 = v71[2];
  v175 = v71[5];
  v178 = v71[4];
  v163 = *(v70 + *(v0 + 1656));
  v208(*(v0 + 1160), 1, 1, *(v0 + 1344));
  v72 = (v70 + v66[9]);
  v204 = v72[1];
  v206 = *v72;
  v199 = v72[3];
  v201 = v72[2];
  v193 = v72[5];
  v196 = v72[4];
  v64(v67, 1, 1, v69);
  v73 = (v70 + v66[7]);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[3];
  *(v0 + 496) = v73[2];
  *(v0 + 512) = v76;
  *(v0 + 464) = v74;
  *(v0 + 480) = v75;
  v77 = (v70 + v66[8]);
  v78 = *v77;
  v79 = v77[1];
  v166 = *(v70 + v66[13]);
  v80 = v70 + v66[6];
  v172 = *v80;
  v81 = *(v80 + 8);
  v65(v68, v70, v69);
  v82 = (v70 + v66[12]);
  v83 = v82[1];
  v168 = v79;
  v170 = v78;
  if (v83)
  {
    v84 = *v82;
    v85 = v82[5];
    v86 = v82[6];
    if (v86)
    {
      v209 = 14897;
      sub_10047D0D4(v190, v187, v184);
      sub_10047D0D4(v206, v204, v201);
      sub_100005934(v0 + 464, v0 + 720, &qword_1007845D8);
      sub_1001DFECC(v78, v168);
      sub_10047D11C(v84, v83);
      v87._countAndFlagsBits = v84;
      v87._object = v83;
      String.append(_:)(v87);
      v88._countAndFlagsBits = 47;
      v88._object = 0xE100000000000000;
      String.append(_:)(v88);
      v89 = v85;
      v90 = v86;
    }

    else
    {
      v209 = 14896;
      sub_10047D0D4(v190, v187, v184);
      sub_10047D0D4(v206, v204, v201);
      sub_100005934(v0 + 464, v0 + 656, &qword_1007845D8);
      sub_1001DFECC(v78, v168);
      sub_10047D11C(v84, v83);
      v89 = v84;
      v90 = v83;
    }

    String.append(_:)(*&v89);
    sub_100271104(v84, v83);
    v123 = 0xE200000000000000;
    v125 = v209;
  }

  else
  {
    sub_10047D0D4(v190, v187, v184);
    sub_10047D0D4(v206, v204, v201);
    sub_100005934(v0 + 464, v0 + 528, &qword_1007845D8);
    sub_1001DFECC(v78, v79);
    v123 = 0;
    v125 = 0;
  }

  v91 = v172;
  v92 = *(v0 + 1616);
  v93 = *(v0 + 1344);
  v129 = *(v0 + 1312);
  v131 = *(v0 + 1336);
  v127 = *(v0 + 1248);
  v121 = *(v0 + 1208);
  v115 = *(v0 + 1176);
  v173 = *(v0 + 1160);
  if (v81)
  {
    v94 = 0;
  }

  else
  {
    v94 = v91;
  }

  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  v112 = *(v0 + 496);
  v113 = *(v0 + 464);
  v110 = *(v0 + 512);
  v111 = *(v0 + 480);
  v116 = *(v0 + 1128);
  v117 = v94;
  v114 = v81;
  v95 = *(v0 + 1120);
  v96 = *(v0 + 1112);
  v109 = v96;
  v97 = *(v0 + 1048);
  v98 = *(v0 + 1032);
  v118 = *(v0 + 952);
  v119 = *(v0 + 1040);
  v99 = v98[8];
  v208(&v97[v99], 1, 1, v93);
  v100 = v98[10];
  v101 = &v97[v98[9]];
  v92(&v97[v100], 1, 1, v96);
  v102 = &v97[v98[18]];
  v103 = &v97[v98[20]];
  v104 = &v97[v98[21]];
  *(v104 + 2) = 0u;
  *(v104 + 3) = 0u;
  *v104 = 0u;
  *(v104 + 1) = 0u;
  *v97 = 0;
  *(v97 + 1) = 0;
  *(v97 + 2) = v190;
  *(v97 + 3) = v187;
  *(v97 + 4) = v184;
  *(v97 + 5) = v181;
  *(v97 + 6) = v178;
  *(v97 + 7) = v175;
  *(v97 + 8) = v163;
  sub_10020AD90(v173, &v97[v99], &unk_100780A00);
  *v101 = v206;
  v101[1] = v204;
  v101[2] = v201;
  v101[3] = v199;
  v101[4] = v196;
  v101[5] = v193;
  sub_10020AD90(v115, &v97[v100], &unk_1007809F0);
  v105 = &v97[v98[11]];
  *v105 = v113;
  *(v105 + 1) = v111;
  *(v105 + 2) = v112;
  *(v105 + 3) = v110;
  *(v105 + 8) = v170;
  *(v105 + 9) = v168;
  *(v105 + 10) = 0;
  *(v105 + 11) = 0;
  v97[v98[12]] = 0;
  v97[v98[13]] = 0;
  v97[v98[14]] = v166;
  *&v97[v98[15]] = 0;
  *&v97[v98[16]] = 0;
  v97[v98[17]] = 0;
  *v102 = v117;
  v102[8] = v114;
  (*(v95 + 32))(&v97[v98[19]], v116, v109);
  *v103 = v125;
  v103[1] = v123;
  sub_10020AD90(v0 + 592, v104, &qword_10077E968);
  sub_1004C1F84(v121, v118, type metadata accessor for AppInstall);
  sub_1001F0C48(&qword_100780F18);
  v106 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_10069E680;
  sub_1004C1FEC(v97, v107 + v106, type metadata accessor for AppPackage);
  sub_1004C2054(v127, type metadata accessor for EvaluatorDownload);
  sub_1004C2054(v129, type metadata accessor for AppStoreItem);
  sub_1004C2054(v131, type metadata accessor for AppStorePurchaseRequest);
  sub_1004C2054(v121, type metadata accessor for AppInstall);

  v108 = *(v0 + 8);

  return v108(v107);
}

uint64_t sub_1004C1F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004C1FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004C2054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004C20B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004C2124()
{
  type metadata accessor for DDMDeclaration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlainHTTP();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v2 <= 0x3F)
      {
        sub_1004C21F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004C21F0()
{
  if (!qword_100782AF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100782AF8);
    }
  }
}

void sub_1004C2268(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_1001F0C48(a4);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v8 = a2;
    sub_1001F0C48(a4);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004C2318(char a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a3;
  *(v3 + 225) = a2;
  *(v3 + 224) = a1;
  v4 = type metadata accessor for Logger();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1004C2468, 0, 0);
}

uint64_t sub_1004C2468()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 225);
  v3 = *(v0 + 224);
  (*(*(v0 + 112) + 56))(*(v0 + 152), 1, 1, *(v0 + 104));
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v3;
  *(v4 + 17) = v2;
  *(v4 + 24) = v1;

  return _swift_task_switch(sub_1004C2540, 0, 0);
}

uint64_t sub_1004C2540()
{
  sub_100005934(v0[9].opaque[1], v0[9].opaque[0], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[10].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "pollAvailableUpdates", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[11].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[11].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[8].opaque[1];
  v8 = v0[6].opaque[1];
  v7 = v0[7].opaque[0];
  sub_100005934(v0[9].opaque[0], v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[9].opaque[0];
  if (v9 == 1)
  {
    sub_1000032A8(v0[9].opaque[0], &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = v0[8].opaque[0];
    v13 = v0[7].opaque[0];
    v14 = v0[7].opaque[1];
    v15 = v0[6].opaque[1];
    (*(v13 + 32))(v12, v0[8].opaque[1], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("pollAvailableUpdates", 20, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  v0[12].opaque[0] = v11;
  v16 = v0[10].opaque[0];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[12].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AD990;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[13].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_1004C2A18;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v18, &v0[3], &unk_10069F3A0, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1004C2A18()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1004C2D74;
  }

  else
  {
    v2 = sub_1004C2BC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C2BC8()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004C2CAC, 0, 0);
}

uint64_t sub_1004C2CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C2D74()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1004C2E58, 0, 0);
}

uint64_t sub_1004C2E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C2F20(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1001F0E54;

  return sub_1004CB8B0(a2, a3, a4);
}

uint64_t sub_1004C2FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10020A6D0(a1, &v4);
  sub_100006190(0, &qword_100781700);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1004C303C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v63 = a1;
  v67 = a2;
  v2 = type metadata accessor for URLQueryItem();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = __chkstk_darwin(v2);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v66 = &v58 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - v8;
  __chkstk_darwin(v7);
  v64 = &v58 - v10;
  URLQueryItem.init(name:value:)();

  v65 = v9;
  URLQueryItem.init(name:value:)();
  v73[0] = _swiftEmptyArrayStorage;
  sub_100526304(0, 13, 0);
  v11 = 0;
  v12 = v73[0];
  v13 = 0x80000001006C3350;
  v14 = 0x80000001006C3320;
  v15 = 0x80000001006C32F0;
  v16 = 0x80000001006C32D0;
  v17 = 0x80000001006C32A0;
  do
  {
    v18 = 0xE400000000000000;
    v19 = 1701667182;
    switch(*(&off_1007593D0 + v11 + 32))
    {
      case 1:
        v19 = 0xD000000000000010;
        v18 = v17;
        break;
      case 2:
        break;
      case 3:
        v18 = 0xE800000000000000;
        v19 = 0x656C746974627573;
        break;
      case 4:
        v19 = 0x614E747369747261;
        v18 = 0xEA0000000000656DLL;
        break;
      case 5:
        v19 = 0xD00000000000001ALL;
        v18 = v16;
        break;
      case 6:
        v19 = 0xD000000000000016;
        v18 = v15;
        break;
      case 7:
        v19 = 0x6146656369766564;
        v18 = 0xEE007365696C696DLL;
        break;
      case 8:
        v19 = 0xD00000000000001ALL;
        v18 = v14;
        break;
      case 9:
        v18 = 0xE900000000000074;
        v19 = 0x6867697279706F63;
        break;
      case 0xA:
        v18 = 0xE700000000000000;
        v19 = 0x616C7545736168;
        break;
      case 0xB:
        v19 = 0xD000000000000010;
        v18 = v13;
        break;
      case 0xC:
        v18 = 0xEA00000000006C72;
        v19 = 0x5565746973626577;
        break;
      default:
        v19 = 0xD000000000000012;
        v18 = 0x80000001006C3280;
        break;
    }

    v73[0] = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      v59 = v17;
      v60 = v16;
      v61 = v15;
      v62 = v13;
      v23 = v14;
      sub_100526304((v20 > 1), v21 + 1, 1);
      v17 = v59;
      v16 = v60;
      v15 = v61;
      v13 = v62;
      v14 = v23;
      v12 = v73[0];
    }

    ++v11;
    *(v12 + 16) = v21 + 1;
    v22 = v12 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
  }

  while (v11 != 13);
  v73[0] = _swiftEmptyArrayStorage;
  sub_100526304(0, 10, 0);
  v24 = 0;
  v25 = v73[0];
  v26 = 0x80000001006C3260;
  v27 = 0x80000001006C3240;
  v28 = 0x80000001006C3210;
  v29 = 0x80000001006C31F0;
  do
  {
    v30 = *(&off_100759400 + v24 + 32);
    if (v30 == 8)
    {
      v31 = 0x656C746974627573;
    }

    else
    {
      v31 = 0xD000000000000010;
    }

    if (v30 == 8)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v32 = v26;
    }

    if (v30 == 7)
    {
      v31 = 0xD000000000000011;
      v32 = v27;
    }

    if (v30 == 5)
    {
      v33 = 0x73726566666FLL;
    }

    else
    {
      v33 = 0x6B726F77747261;
    }

    if (v30 == 5)
    {
      v34 = 0xE600000000000000;
    }

    else
    {
      v34 = 0xE700000000000000;
    }

    if (*(&off_100759400 + v24 + 32) <= 6u)
    {
      v31 = v33;
      v32 = v34;
    }

    if (v30 == 3)
    {
      v35 = 0xD000000000000010;
    }

    else
    {
      v35 = 0x7470697263736564;
    }

    if (v30 == 3)
    {
      v36 = v28;
    }

    else
    {
      v36 = 0xEB000000006E6F69;
    }

    if (v30 == 2)
    {
      v35 = 0xD000000000000011;
      v36 = v29;
    }

    v37 = 0x6449656C646E7562;
    if (*(&off_100759400 + v24 + 32))
    {
      v37 = 0xD000000000000011;
      v38 = 0x80000001006C31D0;
    }

    else
    {
      v38 = 0xE800000000000000;
    }

    if (*(&off_100759400 + v24 + 32) <= 1u)
    {
      v35 = v37;
      v36 = v38;
    }

    if (*(&off_100759400 + v24 + 32) <= 4u)
    {
      v39 = v35;
    }

    else
    {
      v39 = v31;
    }

    if (*(&off_100759400 + v24 + 32) <= 4u)
    {
      v40 = v36;
    }

    else
    {
      v40 = v32;
    }

    v73[0] = v25;
    v42 = *(v25 + 16);
    v41 = *(v25 + 24);
    if (v42 >= v41 >> 1)
    {
      v60 = v28;
      v61 = v27;
      v62 = v26;
      v59 = v29;
      sub_100526304((v41 > 1), v42 + 1, 1);
      v29 = v59;
      v28 = v60;
      v27 = v61;
      v26 = v62;
      v25 = v73[0];
    }

    ++v24;
    *(v25 + 16) = v42 + 1;
    v43 = v25 + 16 * v42;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40;
  }

  while (v24 != 10);
  v73[0] = v12;
  sub_1006540A0(v25);
  sub_1001F0C48(&unk_10077FB40);
  sub_1001F766C();
  BidirectionalCollection<>.joined(separator:)();

  v44 = v66;
  URLQueryItem.init(name:value:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLQueryItem.init(name:value:)();

  v72 = 0;
  memset(v71, 0, sizeof(v71));
  sub_1005D7D18(v71, v73);
  sub_1000032A8(v71, &qword_1007850E8);
  sub_1001F0C48(&qword_10077EAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  v46 = v69;
  *(inited + 56) = v69;
  *(inited + 64) = &off_10076DDB8;
  v47 = sub_10020A748((inited + 32));
  v48 = v68;
  v49 = *(v68 + 16);
  v50 = v64;
  v49(v47, v64, v46);
  *(inited + 96) = v46;
  *(inited + 104) = &off_10076DDB8;
  v51 = sub_10020A748((inited + 72));
  v52 = v65;
  v49(v51, v65, v46);
  *(inited + 136) = v46;
  *(inited + 144) = &off_10076DDB8;
  v53 = sub_10020A748((inited + 112));
  v49(v53, v44, v46);
  *(inited + 176) = v46;
  *(inited + 184) = &off_10076DDB8;
  v54 = sub_10020A748((inited + 152));
  v55 = v70;
  v49(v54, v70, v46);
  sub_10020A980(v73, inited + 192);
  sub_1005D67B0(inited, v67);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077EAD8);
  swift_arrayDestroy();
  sub_10000710C(v73);
  v56 = *(v48 + 8);
  v56(v55, v46);
  v56(v44, v46);
  v56(v52, v46);
  return (v56)(v50, v46);
}

uint64_t sub_1004C3938(void **a1)
{
  v1 = *a1;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1003AA170(0, v2, v4, v5, v6, v1);
}

uint64_t sub_1004C3A00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v75 = a3;
  v67 = a2;
  v5 = type metadata accessor for Logger();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for Platform();
  v76 = *(v11 - 8);
  v77 = v11;
  __chkstk_darwin(v11);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v14 - 8);
  v16 = &v65 - v15;
  v17 = type metadata accessor for MediaAPIUpdates.App();
  v73 = *(v17 - 1);
  __chkstk_darwin(v17);
  v19 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1;
  v21 = [v20 bundleIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v68 = v23;
  *v19 = v23;
  v19[1] = v25;
  v71 = v25;
  v26 = [v20 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  FilePath.init(_:)();
  v27 = type metadata accessor for FilePath();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v16, 1, v27);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v30 = v17[5];
  (*(v28 + 32))(v19 + v30, v16, v27);
  (*(v28 + 56))(v19 + v30, 0, 1, v27);
  sub_1004C53A4([v20 platform], v10);
  v32 = v76;
  v31 = v77;
  if ((*(v76 + 48))(v10, 1, v77) != 1)
  {
    v33 = v72;
    (*(v32 + 32))(v72, v10, v31);
    (*(v32 + 16))(v19 + v17[10], v33, v31);
    v34 = [v20 managedPersonas];

    v35 = v7;
    if (v34)
    {
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v36[2])
      {
        v37 = v7;
        v38 = v30;
        v39 = v36[4];
        v40 = v36[5];

        v41 = (v19 + v17[6]);
        *v41 = v39;
        v41[1] = v40;
        v35 = v37;
        v30 = v38;
        goto LABEL_12;
      }
    }

    v42 = (v19 + v17[6]);
    *v42 = 0;
    v42[1] = 0;
LABEL_12:
    v43 = sub_10060D18C();
    v66 = v30;
    if (v43)
    {
      v44 = v43;
      v45 = [v43 itemID];
      if (v45)
      {
        v46 = v45;
        v47 = [v44 softwareVersionExternalIdentifier];
        if (v47)
        {
          v48 = v47;
          v49 = [v46 longLongValue];
          if ((v49 & 0x8000000000000000) == 0)
          {
            v50 = v49;
            v70 = [v48 longLongValue];

            v51 = *(v32 + 8);
            v31 = v77;
            v51(v72, v77);
            v52 = v70;
            if (v70 > 0)
            {
              *(v19 + v17[7]) = v50;
              *(v19 + v17[8]) = v52;
              v53 = (v19 + v17[9]);
              v55 = v74;
              v54 = v75;
              *v53 = v67;
              v53[1] = v54;
              sub_1004D2D7C(v19, v55, type metadata accessor for MediaAPIUpdates.App);
              (*(v73 + 56))(v55, 0, 1, v17);
              return sub_1004D2DE4(v19, type metadata accessor for MediaAPIUpdates.App);
            }

            goto LABEL_32;
          }

          v51 = *(v32 + 8);
          v64 = v77;
          v51(v72, v77);

          v31 = v64;

LABEL_31:

LABEL_32:
          sub_1000032A8(v19 + v66, &qword_10077E958);
          sub_1004D2F70(*(v19 + v17[6]), *(v19 + v17[6] + 8));
          v51(v19 + v17[10], v31);
          return (*(v73 + 56))(v74, 1, 1, v17);
        }

        v31 = v77;
      }

      else
      {
        v46 = v44;
      }
    }

    static Logger.updates.getter();
    v56 = v71;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v78 = v60;
      *v59 = 136446210;
      if (v56)
      {
        v61 = v68;
      }

      else
      {
        v61 = 0xD000000000000019;
      }

      v75 = v35;
      if (v56)
      {
        v62 = v56;
      }

      else
      {
        v62 = 0x80000001006CC5F0;
      }

      v63 = sub_1002346CC(v61, v62, &v78);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s has missing metadata", v59, 0xCu);
      sub_10000710C(v60);

      v31 = v77;

      (*(v69 + 8))(v75, v70);
    }

    else
    {

      (*(v69 + 8))(v35, v70);
    }

    v51 = *(v76 + 8);
    v51(v72, v31);
    goto LABEL_31;
  }

  sub_1000032A8(v10, &qword_10077FE28);

  sub_1000032A8(v19 + v30, &qword_10077E958);
  return (*(v73 + 56))(v74, 1, 1, v17);
}

uint64_t sub_1004C42AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1717924456;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1717924456;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}