uint64_t sub_10001A7BC()
{
  v1 = *(v0 + 480);
  sub_100012420((v0 + 144));
  sub_100004F1C(v0 + 336, &qword_100087E58, &qword_1000639C0);
  v2 = *(v0 + 472);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001A844()
{
  v1 = *(v0 + 480);
  sub_100012420((v0 + 80));
  v2 = *(v0 + 472);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001A8B4()
{
  v1 = *(v0 + 488);

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 504);
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 504);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure fetching account details: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  v10 = *(v0 + 480);

  *(v0 + 57) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;

  return _swift_task_switch(sub_10001AA64, v10, 0);
}

uint64_t sub_10001AA64()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  sub_100012420((v0 + 16));

  return _swift_task_switch(sub_10001AAD4, v2, 0);
}

uint64_t sub_10001AAD4()
{
  v1 = v0[63];

  v2 = v0[59];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001AB40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F540;

  return sub_10001ABD0();
}

uint64_t sub_10001ABF0()
{
  v1 = v0[2];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0[2] + 136);
    v0[3] = v3;

    return _swift_task_switch(sub_10001ACE0, v3, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001ACE0()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = *(*(v0 + 24) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  return _swift_task_switch(sub_10001AD10, v1, 0);
}

uint64_t sub_10001AD10()
{
  if (*(v0 + 40) == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_10001AEA0;
    v2 = *(v0 + 16);

    return sub_10002DBB8();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "FindMy app installation info already saved!", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10001AEA0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 41) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 16);

    return _swift_task_switch(sub_10001AFE8, v8, 0);
  }
}

uint64_t sub_10001AFE8()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 41);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "isFindMyAppInstalled = %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 24);

  return _swift_task_switch(sub_10001B118, v6, 0);
}

uint64_t sub_10001B118()
{
  v1 = *(v0 + 24);
  sub_100013DE4(*(v0 + 41));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001B180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B210();
}

uint64_t sub_10001B230()
{
  v1 = v0[19];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0[19] + 136);
    v0[20] = v3;

    return _swift_task_switch(sub_10001B320, v3, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001B320()
{
  if (*(*(v0 + 160) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories))
  {
    v1 = sub_10001B798;
  }

  else
  {
    v1 = sub_10001B35C;
  }

  return _swift_task_switch(v1, *(v0 + 152), 0);
}

uint64_t sub_10001B35C()
{
  v1 = *(v0[19] + 120);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001B47C;
  v2 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087E48, &qword_100063980);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D284;
  v0[13] = &unk_10007A628;
  v0[14] = v2;
  [v1 roleCategoriesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001B47C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_10001B570, v1, 0);
}

uint64_t sub_10001B570()
{
  v12 = v0;
  v0[21] = v0[18];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
    v6 = Array.description.getter();
    v8 = sub_10005B0A0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got role categories: %s", v4, 0xCu);
    sub_10000A5C4(v5);
  }

  v9 = v0[20];

  return _swift_task_switch(sub_10001B728, v9, 0);
}

uint64_t sub_10001B728()
{
  v1 = v0[20];
  sub_100012874(v0[21]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10001B798()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Role categories already saved!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B940();
}

uint64_t sub_10001B960()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = [objc_opt_self() sharedConnection];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 effectiveBoolValueForSetting:MCFeatureFindMyDeviceAllowed];
      v6 = MCFeatureFindMyFriendsAllowed;
      v7 = [v4 effectiveBoolValueForSetting:v6];

      v9 = v5 == 2 || v7 == 2;
    }

    else
    {
      v9 = 0;
    }

    *(v0 + 32) = v9;
    v13 = *(*(v0 + 16) + 136);
    *(v0 + 24) = v13;

    return _swift_task_switch(sub_10001BAE8, v13, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10001BAE8()
{
  v1 = *(v0 + 24);
  sub_100012A58(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001BB70()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10001BC58;

    return sub_10001C30C();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001BC58()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10001C154;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = sub_10001BD74;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10001BD74()
{
  v1 = v0[6];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[6];
    v4 = *(v3 + 192);
    v5 = *(v3 + 136);
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_10001BEA0;

    return sub_10000821C(v5);
  }

  else
  {
    sub_10003477C();
    v0[10] = swift_allocError();
    *v8 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001BF9C, 0, 0);
  }
}

uint64_t sub_10001BEA0()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_1000370C8, 0, 0);
}

uint64_t sub_10001BF9C()
{
  v1 = v0[10];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in next state showing: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
    v10 = v0[6];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001C154()
{
  v1 = v0[8];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in next state showing: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
    v10 = v0[6];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001C32C()
{
  v1 = v0[5];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[6] = sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Preloading video assets...", v6, 2u);
    }

    v7 = v0[5];

    v8 = *(v7 + 136);
    v0[7] = v8;

    return _swift_task_switch(sub_10001C4D4, v8, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10001C4D4()
{
  v1 = *(v0 + 56);
  v2 = sub_100010238();
  v3 = *(v0 + 40);
  *(v0 + 112) = v2;
  *(v0 + 64) = v5;
  *(v0 + 72) = v4;

  return _swift_task_switch(sub_10001C590, v3, 0);
}

uint64_t sub_10001C590()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 112);
  type metadata accessor for VideoAssetsManager();
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3 & 1;
  *(v4 + 113) = BYTE1(v3) & 1;
  *(v4 + 114) = BYTE2(v3) & 1;
  *(v4 + 120) = v1;
  *(v4 + 128) = v2;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10001C668;

  return sub_10003A2EC();
}

uint64_t sub_10001C668(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[11];
  v6 = *v2;
  v4[12] = v1;

  v7 = v3[5];
  if (v1)
  {
    v8 = sub_10001C960;
  }

  else
  {
    v8 = sub_10001C79C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10001C79C()
{
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got video assets.", v4, 2u);
  }

  v5 = v0[3];
  v6 = v0[7];

  v0[13] = v5;

  return _swift_task_switch(sub_10001C880, v6, 0);
}

uint64_t sub_10001C880()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_100012BC0(v0[13]);

  return _swift_task_switch(sub_10001C8F0, v2, 0);
}

uint64_t sub_10001C8F0()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001C960()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10001C9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001C9E4, 0, 0);
}

uint64_t sub_10001C9E4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[8] = v3;

    return _swift_task_switch(sub_10001CAA4, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10001CAA4()
{
  if (*(*(v0 + 64) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8) == 255)
  {
    v1 = sub_10001CAF0;
  }

  else
  {
    v1 = sub_10001D028;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10001CAF0()
{
  v1 = *(*(v0 + 56) + 136);
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_10001CB68, v1, 0);
}

uint64_t sub_10001CB68()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_1000139F8(v0[6], 1);

  return _swift_task_switch(sub_10001CBE0, v2, 0);
}

uint64_t sub_10001CBE0()
{
  v1 = v0[7];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[7];
    v4 = *(v3 + 192);
    v5 = *(v3 + 136);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_10001CD0C;

    return sub_10000821C(v5);
  }

  else
  {
    sub_10003477C();
    v0[11] = swift_allocError();
    *v8 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001CE6C, 0, 0);
  }
}

uint64_t sub_10001CD0C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10001CE08, 0, 0);
}

uint64_t sub_10001CE08()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001CE6C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in next state showing: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001D028()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing result already set", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001D16C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10001D228, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001D228()
{
  v1 = v0[6];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[6];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100037068;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[8] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10001D35C, 0, 0);
  }
}

uint64_t sub_10001D35C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in next state showing: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10001D524()
{
  v19 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x29286873696E6966, 0xE800000000000000, &v18);
    *(v6 + 12) = 2080;
    v0[2] = *v5;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v18);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100034A54(0, Strong);
  swift_unknownObjectRelease();
  v12 = *(v10 + 128);
  AsyncStreamProvider.finish()();
  v13 = *(v10 + 176);
  v14 = *(&async function pointer to dispatch thunk of WorkItemQueue.invalidate() + 1);
  v17 = (&async function pointer to dispatch thunk of WorkItemQueue.invalidate() + async function pointer to dispatch thunk of WorkItemQueue.invalidate());
  v15 = swift_task_alloc();
  v0[4] = v15;
  *v15 = v0;
  v15[1] = sub_10001D7A8;

  return v17();
}

uint64_t sub_10001D7A8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001D89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001D8BC, 0, 0);
}

uint64_t sub_10001D8BC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[8] = v3;

    return _swift_task_switch(sub_10001D984, v3, 0);
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001D984()
{
  v1 = *(v0 + 64);
  v2 = sub_100010408();
  *(v0 + 72) = 0;
  *(v0 + 88) = v3;
  *(v0 + 80) = v2;

  return _swift_task_switch(sub_10001DA18, 0, 0);
}

uint64_t sub_10001DA18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagDetectionViewModel();
  v7 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v7 + 112) = v1;
  *(v7 + 120) = v2 & 1;
  *(v7 + 121) = BYTE1(v2) & 1;
  *(v7 + 122) = BYTE2(v2) & 1;
  *(v7 + 128) = sub_100034808;
  *(v7 + 136) = v5;
  *(v7 + 144) = &unk_100063678;
  *(v7 + 152) = v6;

  v8 = sub_100036CC0(&qword_100087DA8, 255, type metadata accessor for AirTagDetectionViewModel);
  *v4 = v7;
  v4[1] = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001DBAC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_10001DC30()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_10001DDC4, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled connection.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10001DDC4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10001DE34, 0, 0);
}

uint64_t sub_10001DE34()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_10001DFEC;

      return sub_10001E2D8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled connection.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001DFEC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001E128, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10001E128()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in connection establishment: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001E2D8()
{
  v1[45] = v0;
  v1[46] = *v0;
  v2 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[48] = v3;
  v4 = *(v3 - 8);
  v1[49] = v4;
  v5 = *(v4 + 64) + 15;
  v1[50] = swift_task_alloc();
  v6 = *(*(sub_100003958(&qword_100087DB0, &qword_1000636B0) - 8) + 64) + 15;
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_10001E430, v0, 0);
}

uint64_t sub_10001E430()
{
  v1 = v0[45];
  v0[52] = type metadata accessor for WorkItemQueue();
  v0[53] = *(v1 + 176);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    swift_allocError();
    *v17 = 5;
    swift_willThrow();
    v19 = v0[50];
    v18 = v0[51];
    v20 = v0[47];

    v16 = v0[1];
    goto LABEL_9;
  }

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[54] = sub_1000054DC(v2, qword_10008C038);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Proceed with accessory connection.", v5, 2u);
  }

  v6 = v0[45];

  if (*(v6 + 184) == 1)
  {
    v7 = v0[51];
    v8 = v0[45];
    v9 = v0[46];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v12[5] = v9;
    sub_100040454(0, 0, v7, &unk_1000636C8, v12);

    sub_100004F1C(v7, &qword_100087DB0, &qword_1000636B0);
    v14 = v0[50];
    v13 = v0[51];
    v15 = v0[47];

    v16 = v0[1];
LABEL_9:

    return v16();
  }

  v22 = *(v0[45] + 136);
  v0[55] = v22;

  return _swift_task_switch(sub_10001E710, v22, 0);
}

uint64_t sub_10001E710()
{
  v1 = *(v0 + 360);
  *(v0 + 145) = *(*(v0 + 440) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical);
  return _swift_task_switch(sub_10001E744, v1, 0);
}

uint64_t sub_10001E744()
{
  v1 = *(v0 + 145);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 440);
    v3 = sub_10001F020;
LABEL_4:

    return _swift_task_switch(v3, v2, 0);
  }

  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 360);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100034A54(1, Strong);
  swift_unknownObjectRelease();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    v10 = swift_allocError();
    *v11 = 5;
    swift_willThrow();
    *(v0 + 528) = v10;
    v12 = *(v0 + 440);
    swift_errorRetain();
    v3 = sub_10001F190;
    v2 = v12;
    goto LABEL_4;
  }

  *(v0 + 448) = *(*(v0 + 360) + 192);
  v8 = swift_task_alloc();
  *(v0 + 456) = v8;
  *v8 = v0;
  v8[1] = sub_10001E8C4;
  v9 = *(v0 + 440);

  return sub_10000821C(v9);
}

uint64_t sub_10001E8C4()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v4 = *v0;

  return _swift_task_switch(sub_10001E9D4, v2, 0);
}

uint64_t sub_10001E9D4()
{
  v1 = *(v0 + 448);
  if (*(v1 + 128) >= 7u)
  {
    v2 = sub_10001EA10;
  }

  else
  {
    v1 = *(v0 + 440);
    v2 = sub_10001EB94;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_10001EA10()
{
  v1 = *(v0 + 360);
  *(v0 + 146) = *(*(v0 + 448) + 128);
  return _swift_task_switch(sub_10001EA38, v1, 0);
}

uint64_t sub_10001EA38()
{
  v16 = v0;
  v1 = *(v0 + 432);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 146);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_100007FE0(v4);
    v9 = sub_10005B0A0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Interrupt pairing, state is %{public}s", v5, 0xCu);
    sub_10000A5C4(v6);
  }

  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 376);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001EB94()
{
  v1 = v0[55];
  v2 = v0[47];
  v3 = v0[45];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_10001EC44, v3, 0);
}

uint64_t sub_10001EC44()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[66] = v4;
    v6 = v0[55];
    swift_errorRetain();

    return _swift_task_switch(sub_10001F190, v6, 0);
  }

  else
  {
    v7 = v0[45];
    (*(v2 + 32))(v0[50], v3, v1);
    v8 = *(v7 + 112);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[58] = isa;
    v0[2] = v0;
    v0[3] = sub_10001EE68;
    v10 = swift_continuation_init();
    v0[35] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_100031810;
    v0[31] = &unk_10007A3F8;
    v0[32] = v10;
    [v8 initializeProximityPairingForAccessoryIdentifier:isa completion:v0 + 28];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10001EE68()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 472) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_10001F5E4;
  }

  else
  {
    v5 = sub_10001EF88;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10001EF88()
{
  v1 = v0[58];
  (*(v0[49] + 8))(v0[50], v0[48]);

  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[47];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001F020()
{
  v1 = *(v0 + 360);
  sub_1000149C0((v0 + 288));
  *(v0 + 480) = *(v0 + 288);
  *(v0 + 496) = *(v0 + 304);
  *(v0 + 504) = *(v0 + 312);
  *(v0 + 520) = *(v0 + 328);

  return _swift_task_switch(sub_10001F0B4, v1, 0);
}

uint64_t sub_10001F0B4()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v4 = *(v0 + 480);
  v3 = *(v0 + 496);
  v5 = *(*(v0 + 360) + 128);
  *(v0 + 544) = 1;
  *(v0 + 152) = v4;
  *(v0 + 168) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 216) = 1;
  AsyncStreamProvider.yield(value:transaction:)();
  v6 = *(v0 + 168);
  v7 = *(v0 + 200);
  *(v0 + 112) = *(v0 + 184);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 216);
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 96) = v6;
  sub_100034A24(v0 + 80);
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v10 = *(v0 + 376);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10001F190()
{
  v1 = v0[55];
  v2 = v0[45];
  sub_1000139F8(v0[66], 1);

  return _swift_task_switch(sub_10001F218, v2, 0);
}

uint64_t sub_10001F218()
{
  v1 = v0[66];
  v2 = v0[54];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[66];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in connection establishment: %{public}@", v6, 0xCu);
    sub_100004F1C(v7, &qword_100087AA8, &unk_100062F80);
  }

  v10 = v0[52];
  v9 = v0[53];

  if (static WorkItemQueue.called(on:)())
  {
    v11 = *(v0[45] + 192);
    v12 = swift_task_alloc();
    v0[67] = v12;
    *v12 = v0;
    v12[1] = sub_10001F454;
    v13 = v0[55];

    return sub_10000821C(v13);
  }

  else
  {
    v15 = v0[66];
    sub_10003477C();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();

    v18 = v0[50];
    v17 = v0[51];
    v19 = v0[47];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10001F454()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_10001F564, v2, 0);
}

uint64_t sub_10001F564()
{
  v1 = v0[66];

  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[47];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001F5E4()
{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[48];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v0[66] = v0[59];
  v6 = v0[55];
  swift_errorRetain();

  return _swift_task_switch(sub_10001F190, v6, 0);
}

uint64_t sub_10001F690(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001F6B0, 0, 0);
}

uint64_t sub_10001F6B0()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in detection: %{public}@", v6, 0xCu);
    sub_100004F1C(v7, &qword_100087AA8, &unk_100062F80);
  }

  v9 = v0[6];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10001F8A8, Strong, 0);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10001F8A8()
{
  v1 = v0[5];
  v2 = *(v0[8] + 176);
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  swift_errorRetain();
  v5 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10001F9D4;

  return v8(&unk_100063688, v4);
}

uint64_t sub_10001F9D4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[8];

    return _swift_task_switch(sub_10001FB24, v4, 0);
  }

  else
  {
    v6 = v3[9];
    v5 = v3[10];
    v7 = v3[8];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_10001FB24()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  return _swift_task_switch(sub_10001FBA0, 0, 0);
}

uint64_t sub_10001FBA0()
{
  v1 = v0[12];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in UI error handling, error: %{public}@. ", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001FD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10001FD20, 0, 0);
}

uint64_t sub_10001FD20()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[8] = v3;

    return _swift_task_switch(sub_10001FDE8, v3, 0);
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001FDE8()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories))
  {
    v2 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories);

    v4 = sub_100016760(v3);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  *(v0 + 72) = v4;

  return _swift_task_switch(sub_10001FE90, 0, 0);
}

uint64_t sub_10001FE90()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagRolePickerViewModel();
  swift_allocObject();

  v5 = sub_100015348(v1, &unk_100063880, v4);

  v6 = sub_100036CC0(&qword_100087098, 255, type metadata accessor for AirTagRolePickerViewModel);
  *v3 = v5;
  v3[1] = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_10001FFC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10001FFE0, 0, 0);
}

uint64_t sub_10001FFE0()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(Strong + 176);

    v6 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;

    v8 = v4;
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002012C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10002014C, 0, 0);
}

uint64_t sub_10002014C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[10] = v3;

    return _swift_task_switch(sub_1000202E0, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled role selection.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000202E0()
{
  *(v0 + 112) = *(*(v0 + 80) + 128);

  return _swift_task_switch(sub_100020350, 0, 0);
}

uint64_t sub_100020350()
{
  if (*(v0 + 112) == 2)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 88) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 96) = v3;
      *v3 = v0;
      v3[1] = sub_100020510;
      v4 = *(v0 + 72);

      return sub_1000207FC(v4);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already handled role selection.", v9, 2u);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100020510()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002064C, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10002064C()
{
  v1 = v0[11];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _showNextState: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000207FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002081C, v1, 0);
}

uint64_t sub_10002081C()
{
  v1 = v0[3];
  v0[4] = type metadata accessor for WorkItemQueue();
  v0[5] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[3] + 136);
    v0[6] = v2;

    return _swift_task_switch(sub_100020914, v2, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100020914()
{
  if (*(*(v0 + 48) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole))
  {
    v1 = sub_100020EF4;
  }

  else
  {
    v1 = sub_100020958;
  }

  return _swift_task_switch(v1, *(v0 + 24), 0);
}

uint64_t sub_100020958()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceed with selected accessory role.", v4, 2u);
  }

  v5 = *(v0 + 48);

  return _swift_task_switch(sub_100020A78, v5, 0);
}

uint64_t sub_100020A78()
{
  v1 = *(v0 + 48);
  sub_100013C0C(*(v0 + 16));

  return _swift_task_switch(sub_100020AE4, v1, 0);
}

uint64_t sub_100020AE4()
{
  v1 = *(v0 + 24);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 72) = MGGetSInt32Answer();

  return _swift_task_switch(sub_100020B78, v1, 0);
}

uint64_t sub_100020B78()
{
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100020D04;
    v2 = *(v0 + 24);

    return sub_10003201C();
  }

  else
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (static WorkItemQueue.called(on:)())
    {
      v6 = *(*(v0 + 24) + 192);
      v7 = swift_task_alloc();
      *(v0 + 64) = v7;
      *v7 = v0;
      v7[1] = sub_100020DFC;
      v8 = *(v0 + 48);

      return sub_10000821C(v8);
    }

    else
    {
      sub_10003477C();
      swift_allocError();
      *v9 = 5;
      swift_willThrow();
      v10 = *(v0 + 8);

      return v10();
    }
  }
}

uint64_t sub_100020D04()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100020DFC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100020EF4()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Role already saved.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_100021030, 0, 0);
}

uint64_t sub_100021030()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = *(Strong + 176);

    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v3;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100021190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1000211B4, 0, 0);
}

uint64_t sub_1000211B4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[14] = v3;

    return _swift_task_switch(sub_100021348, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled custom name selection.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100021348()
{
  *(v0 + 152) = *(*(v0 + 112) + 128);

  return _swift_task_switch(sub_1000213B8, 0, 0);
}

uint64_t sub_1000213B8()
{
  if (*(v0 + 152) == 3)
  {
    v1 = *(v0 + 88);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 136);
      *(v0 + 120) = v3;

      v4 = sub_100021598;
      v5 = v3;
LABEL_14:

      return _swift_task_switch(v4, v5, 0);
    }

    v12 = *(v0 + 88);
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    *(v0 + 128) = v13;
    if (v13)
    {
      v5 = v13;
      v4 = sub_1000216C8;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already handled custom name selection.", v9, 2u);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100021598()
{
  v1 = v0[15];
  sub_100013508(v0[12], v0[13]);

  return _swift_task_switch(sub_10002160C, 0, 0);
}

uint64_t sub_10002160C()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000216C8, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000216C8()
{
  v1 = v0[16];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[16];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1000217FC;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[18] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_100021910, 0, 0);
  }
}

uint64_t sub_1000217FC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100021910()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in _showNextState: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100021AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_100021ADC, 0, 0);
}

uint64_t sub_100021ADC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = *(Strong + 176);

    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v3;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100021C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_100021C60, 0, 0);
}

uint64_t sub_100021C60()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[14] = v3;

    return _swift_task_switch(sub_100021DF4, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled custom emoji selection.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100021DF4()
{
  *(v0 + 152) = *(*(v0 + 112) + 128);

  return _swift_task_switch(sub_100021E64, 0, 0);
}

uint64_t sub_100021E64()
{
  if (*(v0 + 152) == 4)
  {
    v1 = *(v0 + 88);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 136);
      *(v0 + 120) = v3;

      v4 = sub_100022044;
      v5 = v3;
LABEL_14:

      return _swift_task_switch(v4, v5, 0);
    }

    v12 = *(v0 + 88);
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    *(v0 + 128) = v13;
    if (v13)
    {
      v5 = v13;
      v4 = sub_100022174;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already handled custom emoji selection.", v9, 2u);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100022044()
{
  v1 = v0[15];
  sub_1000136C8(v0[12], v0[13]);

  return _swift_task_switch(sub_1000220B8, 0, 0);
}

uint64_t sub_1000220B8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100022174, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100022174()
{
  v1 = v0[16];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[16];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_100037060;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[18] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_1000370A4, 0, 0);
  }
}

uint64_t sub_1000222E0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[6] = v3;

    return _swift_task_switch(sub_1000223B4, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000223B4()
{
  v1 = *(v0 + 48);
  sub_100009FD0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100022420(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100022440, 0, 0);
}

uint64_t sub_100022440()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[8] = v3;

    return _swift_task_switch(sub_100022508, v3, 0);
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100022508()
{
  v1 = *(v0 + 64);
  v2 = v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account;
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8);
  *(v0 + 72) = v3;
  if (v3 > 1)
  {
    v6 = *(v2 + 56);
    *(v0 + 136) = v6;
    v7 = *(v2 + 48);
    *(v0 + 88) = v7;
    v8 = *(v2 + 40);
    *(v0 + 96) = v8;
    v9 = *(v2 + 32);
    *(v0 + 104) = v9;
    v10 = *(v2 + 24);
    *(v0 + 112) = v10;
    *(v0 + 120) = *v2;
    v11 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture);
    *(v0 + 128) = v11;
    v12 = v11;

    sub_100035720(v10, v9, v8, v7, v6);
    v5 = sub_1000226AC;
  }

  else
  {
    sub_100014B3C();
    *(v0 + 80) = swift_allocError();
    *v4 = 4;
    swift_willThrow();
    v5 = sub_100022648;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022648()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1000226AC()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 128);
  v13 = *(v0 + 136);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagLinkingUserViewModel();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v9 + 112) = v1;
  *(v9 + 120) = v5;
  *(v9 + 128) = v15;
  *(v9 + 136) = v2;
  *(v9 + 144) = v3;
  *(v9 + 152) = v4;
  *(v9 + 160) = v14;
  *(v9 + 168) = v13;
  *(v9 + 176) = &unk_1000637F8;
  *(v9 + 184) = v8;

  v10 = sub_100036CC0(&qword_100087E08, 255, type metadata accessor for AirTagLinkingUserViewModel);
  *v7 = v9;
  v7[1] = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100022834()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 64);
    v4 = *(Strong + 176);

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002297C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[7] = v3;

    return _swift_task_switch(sub_100022A3C, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100022A64()
{
  if (*(v0 + 88) == 5)
  {
    v1 = *(*(v0 + 48) + 136);
    *(v0 + 64) = v1;

    return _swift_task_switch(sub_100022BD8, v1, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 48);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already handled linked account.", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100022C08()
{
  if (*(v0 + 89) == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_100022DA4;
    v2 = *(v0 + 48);

    return sub_1000230D8();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 48);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already displayed account linking.", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100022DA4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100022F1C;
  }

  else
  {
    v3 = sub_100022EB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100022EB8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100022F1C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in account linking handling: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000230D8()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_100003958(&qword_100087DB0, &qword_1000636B0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100023244, v0, 0);
}

uint64_t sub_100023244()
{
  v1 = v0[5];
  v0[14] = type metadata accessor for WorkItemQueue();
  v0[15] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[5] + 136);
    v0[16] = v2;

    return _swift_task_switch(sub_100023384, v2, 0);
  }

  else
  {
    v3 = v0[12];
    v4 = v0[13];
    v5 = v0[11];
    v6 = v0[7];
    sub_10003477C();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100023384()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  sub_100013890(1);

  return _swift_task_switch(sub_1000233F4, v2, 0);
}

uint64_t sub_1000233F4()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[17] = sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceed with linked account.", v4, 2u);
  }

  v6 = v0[14];
  v5 = v0[15];

  if (static WorkItemQueue.called(on:)())
  {
    v7 = *(v0[5] + 192);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_10002360C;
    v9 = v0[16];

    return sub_10000821C(v9);
  }

  else
  {
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    v14 = v0[7];
    sub_10003477C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10002360C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10002371C, v2, 0);
}

uint64_t sub_10002371C()
{
  if (*(v0[5] + 184) == 1)
  {
    v1 = v0[13];
    v2 = v0[6];
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v4;
    v5[5] = v2;
    sub_100040454(0, 0, v1, &unk_100063828, v5);

    sub_100004F1C(v1, &qword_100087DB0, &qword_1000636B0);
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[7];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];

    return _swift_task_switch(sub_1000238C0, v12, 0);
  }
}

uint64_t sub_1000238C0()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100023970, v3, 0);
}

uint64_t sub_100023970()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[23] = v4;
    v6 = v0[17];
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Pairing error %{public}@", v9, 0xCu);
      sub_100004F1C(v10, &qword_100087AA8, &unk_100062F80);
    }

    v12 = v0[16];

    swift_errorRetain();
    v13 = sub_100024088;
  }

  else
  {
    v12 = v0[16];
    v14 = v0[12];
    v15 = *(v2 + 32);
    v0[19] = v15;
    v0[20] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v14, v3, v1);
    v13 = sub_100023B7C;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_100023B7C()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  if (v1)
  {
    v2 = v1;
    sub_100010564();
    v5 = v0[5];
    v6 = [v2 roleId];
    v7 = objc_allocWithZone(SPAccessoryPairingConfiguration);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v0[21] = [v7 initWithName:v8 roleId:v6 roleEmoji:v9];

    v10 = sub_100023D14;
    v11 = v5;
  }

  else
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v0[22] = v3;
    v11 = v0[5];
    v10 = sub_100023F14;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100023D14()
{
  v1 = v0[21];
  v21 = v0[19];
  v22 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v20 = v2;
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[5];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v4, v2, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v10;
  v21(&v12[v11], v4, v6);
  *&v12[(v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v1;
  v13 = v1;
  sub_100040454(0, 0, v3, &unk_100063820, v12);

  sub_100004F1C(v3, &qword_100087DB0, &qword_1000636B0);
  (*(v7 + 8))(v20, v6);
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100023F14()
{
  (*(v0[9] + 8))(v0[12], v0[8]);
  v0[23] = v0[22];
  v1 = v0[17];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing error %{public}@", v4, 0xCu);
    sub_100004F1C(v5, &qword_100087AA8, &unk_100062F80);
  }

  v7 = v0[16];

  swift_errorRetain();

  return _swift_task_switch(sub_100024088, v7, 0);
}

uint64_t sub_100024088()
{
  v1 = v0[16];
  v2 = v0[5];
  sub_1000139F8(v0[23], 1);

  return _swift_task_switch(sub_100024110, v2, 0);
}

uint64_t sub_100024110()
{
  v1 = v0[23];

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000241A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1000241C4, 0, 0);
}

uint64_t sub_1000241C4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[8] = v3;

    return _swift_task_switch(sub_10002428C, v3, 0);
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10002428C()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
  v0[9] = v1;
  if (v1)
  {

    v2 = sub_100010564();
    v0[10] = v6;
    v0[11] = v5;
    v0[12] = v7;
    v0[13] = v2;
    v8 = sub_100024380;
  }

  else
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v0[14] = v3;
    v8 = sub_100024474;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100024380()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  type metadata accessor for AirTagLoadingViewModel();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();

  v8[14] = v1;
  v8[15] = v2;
  v8[16] = v3;
  v8[17] = v4;
  v8[18] = v5;
  v9 = sub_100036CC0(&qword_100087058, 255, type metadata accessor for AirTagLoadingViewModel);
  *v7 = v8;
  v7[1] = v9;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100024474()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_100024510()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_1000246A4, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled missing apple id sign in.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000246A4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100024714, 0, 0);
}

uint64_t sub_100024714()
{
  if (*(v0 + 104) == 7)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_1000248CC;

      return sub_100024BB8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled missing apple id sign in.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000248CC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100024A08, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100024A08()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _proceedWithSettingsOpening: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100024BB8()
{
  v1[3] = v0;
  v2 = *(*(sub_100003958(&qword_100087DC8, &unk_1000655F0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100024CA0, v0, 0);
}

void sub_100024CA0()
{
  v110 = v0;
  v1 = v0[3];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();
    goto LABEL_71;
  }

  v3 = [objc_allocWithZone(FLFollowUpController) init];
  v0[2] = 0;
  v0[7] = v3;
  v4 = [v3 pendingFollowUpItems:v0 + 2];
  v5 = v0[2];
  if (!v4)
  {
    v42 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_71;
  }

  v6 = v4;
  sub_100004E64(0, &qword_100087DD0, FLFollowUpItem_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  v108 = sub_100034EE4(&off_1000794A8);
  swift_arrayDestroy();
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (qword_100086DA8 != -1)
  {
LABEL_54:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000054DC(v11, qword_10008C038);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v101 = v3;
  if (os_log_type_enabled(v12, v13))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v109[0] = v14;
    *v3 = 136446210;
    v15 = Array.description.getter();
    v17 = sub_10005B0A0(v15, v16, v109);

    *(v3 + 1) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Followup Items: %{public}s", v3, 0xCu);
    sub_10000A5C4(v14);
  }

  if (v7 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_56:
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "No available accountFollowup!", v73, 2u);
    }

    v23 = v0[6];

    URL.init(string:)();
    goto LABEL_63;
  }

  v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_56;
  }

LABEL_8:
  v19 = 0;
  v105 = v7 & 0xFFFFFFFFFFFFFF8;
  v106 = v7 & 0xC000000000000001;
  v7 += 32;
  v20 = v108 + 56;
  v102 = v10;
  while (1)
  {
    if (v106)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v105 + 16))
      {
        goto LABEL_53;
      }

      v22 = *(v7 + 8 * v19);
    }

    v23 = v22;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v25 = [v22 groupIdentifier];
    if (v25)
    {
      break;
    }

LABEL_11:

    if (v19 == v18)
    {
      goto LABEL_56;
    }
  }

  v26 = v25;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v3 == v103 && v28 == v10)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v31 = [v23 uniqueIdentifier];
  if (!v31)
  {
    __break(1u);
    goto LABEL_77;
  }

  v32 = v31;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (!*(v108 + 16) || (v35 = *(v108 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v36 = Hasher._finalize()(), v37 = -1 << *(v108 + 32), v38 = v36 & ~v37, ((*(v20 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0))
  {
LABEL_10:

    v10 = v102;
    goto LABEL_11;
  }

  v39 = ~v37;
  while (1)
  {
    v40 = (*(v108 + 48) + 16 * v38);
    v41 = *v40 == v3 && v40[1] == v34;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v38 = (v38 + 1) & v39;
    if (((*(v20 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v43 = [v23 actions];
  if (!v43)
  {
LABEL_78:
    __break(1u);
LABEL_79:

    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v44 = v43;
  sub_100004E64(0, &qword_100087DD8, FLFollowUpAction_ptr);
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v45 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

LABEL_40:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v46 = *(v45 + 32);
    }

    v47 = v46;

    v48 = v23;
    v23 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v107 = v50;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v109[0] = swift_slowAlloc();
      *v51 = 138412802;
      *(v51 + 4) = v48;
      v104 = v52;
      *v52 = v48;
      *(v51 + 12) = 2080;
      v53 = v48;
      v54 = [v53 title];

      if (!v54)
      {
        goto LABEL_79;
      }

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10005B0A0(v55, v57, v109);

      *(v51 + 14) = v58;
      *(v51 + 22) = 2080;
      v59 = [v23 label];

      if (!v59)
      {
        goto LABEL_80;
      }

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_10005B0A0(v60, v62, v109);

      *(v51 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v49, v107, "AccountFollowup: %@, title: %s, label: %s", v51, 0x20u);
      sub_100004F1C(v104, &qword_100087AA8, &unk_100062F80);

      swift_arrayDestroy();
    }

    else
    {
    }

    v64 = [v23 launchActionURL];
    if (v64)
    {
      v65 = v0[5];
      v66 = v64;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v69 = v0[5];
    v68 = v0[6];

    v70 = type metadata accessor for URL();
    (*(*(v70 - 8) + 56))(v69, v67, 1, v70);
    sub_100035EA0(v69, v68, &qword_100087DC8, &unk_1000655F0);
    goto LABEL_63;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_60:

  v23 = v23;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412290;
    *(v76 + 4) = v23;
    *v77 = v23;
    v78 = v23;
    _os_log_impl(&_mh_execute_header, v74, v75, "Account followup %@ has no actions!", v76, 0xCu);
    sub_100004F1C(v77, &qword_100087AA8, &unk_100062F80);
  }

  v79 = v0[6];

  URL.init(string:)();
LABEL_63:
  v80 = [objc_opt_self() defaultWorkspace];
  if (!v80)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v81 = v80;
  v82 = v0[6];
  v83 = v0[4];

  sub_100014D60(v82, v83, &qword_100087DC8, &unk_1000655F0);
  v84 = type metadata accessor for URL();
  v85 = *(v84 - 8);
  v87 = 0;
  if ((*(v85 + 48))(v83, 1, v84) != 1)
  {
    v88 = v0[4];
    URL._bridgeToObjectiveC()(v86);
    v87 = v89;
    (*(v85 + 8))(v88, v84);
  }

  sub_10004EF78(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v81 openSensitiveURL:v87 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v91 = v0[3];
    v92 = *(v91 + 192);
    v93 = *(v91 + 136);
    v94 = swift_task_alloc();
    v0[8] = v94;
    *v94 = v0;
    v94[1] = sub_100025908;

    sub_10000821C(v93);
    return;
  }

  v95 = v0[6];
  sub_10003477C();
  swift_allocError();
  *v96 = 5;
  swift_willThrow();

  sub_100004F1C(v95, &qword_100087DC8, &unk_1000655F0);
LABEL_71:
  v98 = v0[5];
  v97 = v0[6];
  v99 = v0[4];

  v100 = v0[1];

  v100();
}

uint64_t sub_100025908()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100025A44, v2, 0);
}

uint64_t sub_100025A44()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_100004F1C(v1, &qword_100087DC8, &unk_1000655F0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100025B48()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_100025CDC, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled unavailable manatee issue.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100025CDC()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100025D4C, 0, 0);
}

uint64_t sub_100025D4C()
{
  if (*(v0 + 104) == 11)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_100025F04;

      return sub_100024BB8();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled unavailable manatee issue.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100025F04()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003709C, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100026078()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_10002620C, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled find my app installation.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10002620C()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002627C, 0, 0);
}

uint64_t sub_10002627C()
{
  if (*(v0 + 104) == 8)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_100026434;

      return sub_100026720();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled find my app installation.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100026434()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100026570, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100026570()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _proceedWithFindMyAppInstallation: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100026720()
{
  v1[21] = v0;
  v2 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v6 = *(*(sub_100003958(&qword_100087DB0, &qword_1000636B0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100026850, v0, 0);
}

uint64_t sub_100026850()
{
  v1 = v0[21];
  v0[27] = type metadata accessor for WorkItemQueue();
  v0[28] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[26];
    v3 = *(v0[21] + 136);
    v0[29] = v3;
    v4 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId);
    v5 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId + 8);
    v6 = objc_allocWithZone(ASDSystemAppMetadata);

    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 initWithBundleID:v7];
    v0[30] = v8;

    [v8 setUserInitiated:1];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v11 = v8;
    sub_100040454(0, 0, v2, &unk_1000638E8, v10);

    sub_100004F1C(v2, &qword_100087DB0, &qword_1000636B0);

    return _swift_task_switch(sub_100026A98, v3, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[22];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100026A98()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  sub_100013DE4(1);

  return _swift_task_switch(sub_100026B08, v2, 0);
}

uint64_t sub_100026B08()
{
  v2 = v0[27];
  v1 = v0[28];
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0[21] + 192);
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v5 = sub_100026E08;
LABEL_9:
    v4[1] = v5;
    v17 = v0[29];

    return sub_10000821C(v17);
  }

  sub_10003477C();
  v6 = swift_allocError();
  *v7 = 5;
  swift_willThrow();
  v0[34] = v6;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000054DC(v8, qword_10008C038);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failure on FindMy.app installation request %{public}@.", v11, 0xCu);
    sub_100004F1C(v12, &qword_100087AA8, &unk_100062F80);
  }

  v14 = v0[27];
  v15 = v0[28];

  if (static WorkItemQueue.called(on:)())
  {
    v16 = *(v0[21] + 192);
    v4 = swift_task_alloc();
    v0[35] = v4;
    *v4 = v0;
    v5 = sub_1000275AC;
    goto LABEL_9;
  }

  v19 = v0[30];
  swift_allocError();
  *v20 = 5;
  swift_willThrow();

  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[22];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100026E08()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_100026F18, v2, 0);
}

uint64_t sub_100026F18()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v3, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100026FC4, v2, 0);
}

uint64_t sub_100026FC4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();
    v0[34] = v4;
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failure on FindMy.app installation request %{public}@.", v9, 0xCu);
      sub_100004F1C(v10, &qword_100087AA8, &unk_100062F80);
    }

    v12 = v0[27];
    v13 = v0[28];

    if (static WorkItemQueue.called(on:)())
    {
      v14 = *(v0[21] + 192);
      v15 = swift_task_alloc();
      v0[35] = v15;
      *v15 = v0;
      v15[1] = sub_1000275AC;
      v16 = v0[29];

      return sub_10000821C(v16);
    }

    else
    {
      v22 = v0[30];
      swift_allocError();
      *v23 = 5;
      swift_willThrow();

      v25 = v0[25];
      v24 = v0[26];
      v26 = v0[22];

      v27 = v0[1];

      return v27();
    }
  }

  else
  {
    v18 = v0[21];
    (*(v2 + 32))(v0[25], v3, v1);
    v19 = *(v18 + 112);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;
    v0[2] = v0;
    v0[3] = sub_1000273DC;
    v21 = swift_continuation_init();
    v0[17] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100031810;
    v0[13] = &unk_10007A5D8;
    v0[14] = v21;
    [v19 initializeProximityPairingForAccessoryIdentifier:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000273DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_100027748;
  }

  else
  {
    v5 = sub_1000274FC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000274FC()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 176);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000275AC()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_1000276BC, v2, 0);
}

uint64_t sub_1000276BC()
{
  v1 = *(v0 + 272);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100027748()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v0[34] = v0[33];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure on FindMy.app installation request %{public}@.", v9, 0xCu);
    sub_100004F1C(v10, &qword_100087AA8, &unk_100062F80);
  }

  v12 = v0[27];
  v13 = v0[28];

  if (static WorkItemQueue.called(on:)())
  {
    v14 = *(v0[21] + 192);
    v15 = swift_task_alloc();
    v0[35] = v15;
    *v15 = v0;
    v15[1] = sub_1000275AC;
    v16 = v0[29];

    return sub_10000821C(v16);
  }

  else
  {
    v18 = v0[30];
    sub_10003477C();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();

    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[22];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100027A2C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_100027BC0, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled pairing restricted failure.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100027BC0()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100027C30, 0, 0);
}

uint64_t sub_100027C30()
{
  if (*(v0 + 104) == 9)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {

      return _swift_task_switch(sub_100027DB8, Strong, 0);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled pairing restricted failure.", v6, 2u);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100027DB8()
{
  v1 = v0[10];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[10];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_100027EEC;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[12] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_100028000, 0, 0);
  }
}

uint64_t sub_100027EEC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100028000()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in _showNextState: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000281E0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_100028374, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled locked to another account failure.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100028374()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_1000283E4, 0, 0);
}

uint64_t sub_1000283E4()
{
  if (*(v0 + 104) == 10)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_10002859C;

      return sub_100028888();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled locked to another account failure.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10002859C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000286D8, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000286D8()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _proceedWithPairingLockExplanation: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100028888()
{
  v1[2] = v0;
  v2 = *(*(sub_100003958(&qword_100087DC8, &unk_1000655F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100028980, v0, 0);
}

id sub_100028980()
{
  v1 = v0[2];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
LABEL_9:
    sub_10003477C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  URL.init(string:)();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100004F1C(v0[3], &qword_100087DC8, &unk_1000655F0);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failure in pairing lock explanation URL!", v9, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v10 = v0[2];
      v11 = *(v10 + 192);
      v12 = *(v10 + 136);
      v13 = swift_task_alloc();
      v0[8] = v13;
      *v13 = v0;
      v14 = sub_100028EF8;
LABEL_16:
      v13[1] = v14;

      return sub_10000821C(v12);
    }

    goto LABEL_9;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v0[6];
  URL._bridgeToObjectiveC()(v20);
  v24 = v23;
  sub_10004EF78(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 openSensitiveURL:v24 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v26 = v0[2];
    v27 = *(v26 + 192);
    v12 = *(v26 + 136);
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v14 = sub_100028D60;
    goto LABEL_16;
  }

  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[4];
  sub_10003477C();
  swift_allocError();
  *v31 = 5;
  swift_willThrow();
  (*(v29 + 8))(v28, v30);
LABEL_10:
  v16 = v0[6];
  v17 = v0[3];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100028D60()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100028E70, v2, 0);
}

uint64_t sub_100028E70()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100028EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 24);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100029060()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_1000291F4, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled missing hsa2 account failure.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000291F4()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_100029264, 0, 0);
}

uint64_t sub_100029264()
{
  if (*(v0 + 104) == 12)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_10002941C;

      return sub_100029708();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled missing hsa2 account failure.", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10002941C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100029558, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100029558()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _proceedWithAccountSecurityEnhancing: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100029708()
{
  v1[2] = v0;
  v2 = *(*(sub_100003958(&qword_100087DC8, &unk_1000655F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100029800, v0, 0);
}

id sub_100029800()
{
  v1 = v0[2];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
LABEL_9:
    sub_10003477C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  URL.init(string:)();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100004F1C(v0[3], &qword_100087DC8, &unk_1000655F0);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Can't create HSA2 alert URL!", v9, 2u);
    }

    if (static WorkItemQueue.called(on:)())
    {
      v10 = v0[2];
      v11 = *(v10 + 192);
      v12 = *(v10 + 136);
      v13 = swift_task_alloc();
      v0[8] = v13;
      *v13 = v0;
      v14 = sub_1000370C0;
LABEL_16:
      v13[1] = v14;

      return sub_10000821C(v12);
    }

    goto LABEL_9;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v0[6];
  URL._bridgeToObjectiveC()(v20);
  v24 = v23;
  sub_10004EF78(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 openSensitiveURL:v24 withOptions:isa];

  if (static WorkItemQueue.called(on:)())
  {
    v26 = v0[2];
    v27 = *(v26 + 192);
    v12 = *(v26 + 136);
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v14 = sub_100029BE0;
    goto LABEL_16;
  }

  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[4];
  sub_10003477C();
  swift_allocError();
  *v31 = 5;
  swift_willThrow();
  (*(v29 + 8))(v28, v30);
LABEL_10:
  v16 = v0[6];
  v17 = v0[3];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100029BE0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000370BC, v2, 0);
}

uint64_t sub_100029CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_100029D10, 0, 0);
}

uint64_t sub_100029D10()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[13] = v3;

    return _swift_task_switch(sub_100029DD8, v3, 0);
  }

  else
  {
    v4 = v0[10];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100029DD8()
{
  v1 = v0[13];
  sub_100010900(v0 + 2);
  v0[14] = 0;

  return _swift_task_switch(sub_100029E68, 0, 0);
}

uint64_t sub_100029E68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagFailureViewModel();
  v4 = swift_allocObject();

  swift_defaultActor_initialize();

  v5 = *(v0 + 32);
  *(v4 + 112) = *(v0 + 16);
  *(v4 + 128) = v5;
  *(v4 + 144) = *(v0 + 48);
  *(v4 + 152) = sub_1000355D0;
  *(v4 + 160) = v3;

  v6 = sub_100036CC0(&qword_100087E00, 255, type metadata accessor for AirTagFailureViewModel);
  *v2 = v4;
  v2[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100029F90()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_10002A014()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_10002A1A8, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled pairing failure.", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10002A1A8()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002A218, 0, 0);
}

uint64_t sub_10002A218()
{
  if (*(v0 + 104) == 13)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {

      return _swift_task_switch(sub_10002A3A0, Strong, 0);
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000054DC(v3, qword_10008C038);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already handled pairing failure.", v6, 2u);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002A3A0()
{
  v1 = v0[10];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[10];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_100037064;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[12] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_1000370A8, 0, 0);
  }
}

uint64_t sub_10002A4D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10002A4F4, 0, 0);
}

uint64_t sub_10002A4F4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002A5B8, Strong, 0);
  }

  else
  {
    v3 = v0[5];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002A5E0()
{
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 56) + 136);
  *(v0 + 64) = v2;
  if (v1 == 1)
  {
    v3 = sub_10002A620;
  }

  else
  {
    v3 = sub_10002A78C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10002A620()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType);
  if (v1 == 2)
  {
    sub_100014B3C();
    *(v0 + 72) = swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = sub_10002A728;
  }

  else
  {
    *(v0 + 128) = 2458820592;
    *(v0 + 136) = 0xA400000000000000;
    *(v0 + 120) = 0x800000010005FFE0;
    *(v0 + 145) = v1 & 1;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = 0xD000000000000011;
    *(v0 + 88) = xmmword_1000633C0;
    v3 = sub_10002A928;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A728()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002A78C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType);
  if (v2 == 2)
  {
    sub_100014B3C();
    v3 = swift_allocError();
    *v4 = 2;
    swift_willThrow();
    *(v0 + 80) = v3;
    v7 = sub_10002A8C4;
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    v6 = v5;
    v8 = sub_100010564();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *(v0 + 64);
    v16 = sub_10000FF6C();
    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    *(v0 + 112) = v8;
    *(v0 + 120) = v10;
    *(v0 + 145) = v2 & 1;
    *(v0 + 96) = v16;
    *(v0 + 104) = v17;
    *(v0 + 88) = v5;
    v7 = sub_10002A928;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002A8C4()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002A928()
{
  v16 = *(v0 + 136);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v15 = *(v0 + 145);
  v3 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagPairingSuccessViewModel();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();

  *(v9 + 112) = v4;
  *(v9 + 120) = v1;
  *(v9 + 128) = v2;
  *(v9 + 136) = v14;
  *(v9 + 144) = v16;
  *(v9 + 152) = v3;
  *(v9 + 160) = v13;
  *(v9 + 168) = v15;
  *(v9 + 176) = sub_10003525C;
  *(v9 + 184) = v7;
  *(v9 + 192) = sub_10003528C;
  *(v9 + 200) = v8;

  v10 = sub_100036CC0(&qword_100087DE8, 255, type metadata accessor for AirTagPairingSuccessViewModel);
  *v6 = v9;
  v6[1] = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10002AB04()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_10002AC98, v3, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already handled pairing success", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10002AC98()
{
  *(v0 + 104) = *(*(v0 + 72) + 128);

  return _swift_task_switch(sub_10002AD08, 0, 0);
}

uint64_t sub_10002AD08()
{
  if (*(v0 + 104) == 14)
  {
    v1 = *(v0 + 64);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 80) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_10002AEC0;

      return sub_10002B1AC();
    }
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already handled pairing success", v8, 2u);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10002AEC0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002AFFC, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10002AFFC()
{
  v1 = v0[10];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in _proceedWithFindMyAppOpen: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002B1AC()
{
  v1[22] = v0;
  v2 = *(*(sub_100003958(&qword_100087DC8, &unk_1000655F0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v1[26] = *(v4 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[30] = v6;
  v7 = *(v6 - 8);
  v1[31] = v7;
  v8 = *(v7 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_10002B358, v0, 0);
}

uint64_t sub_10002B358()
{
  v1 = v0[22];
  v0[34] = type metadata accessor for WorkItemQueue();
  v0[35] = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[22] + 136);
    v0[36] = v2;

    return _swift_task_switch(sub_10002B4A4, v2, 0);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    v5 = v0[32];
    v4 = v0[33];
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[27];
    v9 = v0[23];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10002B4A4()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[22];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier;
  swift_beginAccess();
  sub_100014D60(v1 + v4, v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_10002B554, v3, 0);
}

uint64_t sub_10002B554()
{
  v99 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F1C(v3, &qword_100087AB8, &qword_100062F90);
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000054DC(v4, qword_10008C038);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No valid accessory identifier!", v7, 2u);
    }

    v9 = v0[32];
    v8 = v0[33];
    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[27];
    v13 = v0[23];

    v14 = v0[1];
    goto LABEL_34;
  }

  (*(v2 + 32))(v0[33], v3, v1);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[30];
  v17 = v0[31];
  v19 = type metadata accessor for Logger();
  v0[37] = sub_1000054DC(v19, qword_10008C038);
  (*(v17 + 16))(v16, v15, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[31];
  v24 = v0[32];
  v25 = v0[30];
  if (v22)
  {
    v26 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v26 = 136315651;
    *(v26 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x8000000100060040, &v97);
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2081;
    sub_100036CC0(&qword_100087AC0, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v23 + 8);
    v30(v24, v25);
    v31 = sub_10005B0A0(v27, v29, &v97);

    *(v26 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s beaconIdentifier: %{private,mask.hash}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v23 + 8);
    v30(v24, v25);
  }

  v0[38] = v30;
  v32 = v0[33];
  v33 = v0[24];
  v34 = v0[25];
  v35 = v0[23];
  v97 = 0;
  v98 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v97 = 0xD000000000000013;
  v98 = 0x8000000100060000;
  v36._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v36);

  v38 = v97;
  v37 = v98;
  URL.init(string:)();
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    v39 = v0[23];

    sub_100004F1C(v39, &qword_100087DC8, &unk_1000655F0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failure in Find My App URL creation!", v42, 2u);
    }

    v44 = v0[34];
    v43 = v0[35];

    if (static WorkItemQueue.called(on:)())
    {
      v45 = *(v0[22] + 192);
      v46 = swift_task_alloc();
      v0[46] = v46;
      *v46 = v0;
      v47 = sub_10002C82C;
LABEL_29:
      v46[1] = v47;
      v80 = v0[36];

      return sub_10000821C(v80);
    }

    v56 = v0[33];
    v57 = v0[30];
    v58 = v0[31];
    sub_10003477C();
    swift_allocError();
    *v59 = 5;
    swift_willThrow();
    v30(v56, v57);
    goto LABEL_33;
  }

  v96 = *(v0[25] + 32);
  v96(v0[28], v0[23], v0[24]);
  v48 = [objc_allocWithZone(_LSOpenConfiguration) init];
  v0[39] = v48;
  [v48 setSensitive:1];
  sub_100003958(&qword_100086F30, qword_100065160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100062C90;
  strcpy((inited + 32), "__UnlockDevice");
  *(inited + 47) = -18;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100060020;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_10004EF78(inited);
  swift_setDeallocating();
  sub_100003958(&qword_100086F38, &qword_100063790);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v48 setFrontBoardOptions:isa];

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  v95 = v30;
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v97 = v54;
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    v55 = sub_10005B0A0(v38, v37, &v97);

    *(v53 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "Opening Find My App URL: %{private,mask.hash}s", v53, 0x16u);
    sub_10000A5C4(v54);
  }

  else
  {
  }

  v60 = [objc_opt_self() defaultWorkspace];
  v0[40] = v60;
  if (!v60)
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "No existing workspace object!", v76, 2u);
    }

    v78 = v0[34];
    v77 = v0[35];

    if (static WorkItemQueue.called(on:)())
    {
      v79 = *(v0[22] + 192);
      v46 = swift_task_alloc();
      v0[45] = v46;
      *v46 = v0;
      v47 = sub_10002C624;
      goto LABEL_29;
    }

    v81 = v0[33];
    v82 = v0[30];
    v83 = v0[31];
    v84 = v0[28];
    v85 = v0[24];
    v86 = v0[25];
    sub_10003477C();
    swift_allocError();
    *v87 = 5;
    swift_willThrow();

    (*(v86 + 8))(v84, v85);
    v95(v81, v82);
LABEL_33:
    v89 = v0[32];
    v88 = v0[33];
    v91 = v0[28];
    v90 = v0[29];
    v92 = v0[27];
    v93 = v0[23];

    v14 = v0[1];
LABEL_34:

    return v14();
  }

  v61 = v60;
  v62 = v0[27];
  v64 = v0[25];
  v63 = v0[26];
  v65 = v0[24];
  (*(v64 + 16))(v62, v0[28], v65);
  v66 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v67 = (v63 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v0[41] = v68;
  *(v68 + 16) = v61;
  v96(v68 + v66, v62, v65);
  *(v68 + v67) = v48;
  v69 = async function pointer to withTimeout<A>(_:block:)[1];
  v70 = v61;
  v71 = v48;
  v72 = swift_task_alloc();
  v0[42] = v72;
  v73 = sub_100003958(&qword_100087DF0, &qword_1000637A8);
  *v72 = v0;
  v72[1] = sub_10002C0AC;

  return withTimeout<A>(_:block:)(v0 + 21, 5000000000000000000, 0, &unk_1000637A0, v68, v73);
}

uint64_t sub_10002C0AC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v11 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[22];
    v5 = sub_10002CA00;
  }

  else
  {
    v6 = v2[41];
    v9 = v2 + 21;
    v7 = v2[21];
    v8 = v9[1];

    v5 = sub_10002C1DC;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10002C1DC()
{
  v1 = v0[37];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully opened FindMy app.", v4, 2u);
  }

  v6 = v0[34];
  v5 = v0[35];
  if (static WorkItemQueue.called(on:)())
  {
    v7 = *(v0[22] + 192);
    v8 = swift_task_alloc();
    v0[44] = v8;
    *v8 = v0;
    v8[1] = sub_10002C414;
    v9 = v0[36];

    return sub_10000821C(v9);
  }

  else
  {
    v12 = v0[39];
    v11 = v0[40];
    v26 = v0[33];
    v27 = v0[38];
    v13 = v0[30];
    v14 = v0[31];
    v15 = v0[28];
    v17 = v0[24];
    v16 = v0[25];
    sub_10003477C();
    swift_allocError();
    *v18 = 5;
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    v27(v26, v13);
    v20 = v0[32];
    v19 = v0[33];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    v24 = v0[23];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10002C414()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10002C524, v2, 0);
}

uint64_t sub_10002C524()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v6, v7);
  v2(v3, v4);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);
  v14 = *(v0 + 184);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10002C624()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10002C734, v2, 0);
}

uint64_t sub_10002C734()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  (*(v7 + 8))(v5, v6);
  v1(v2, v3);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 184);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10002C82C()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10002C93C, v2, 0);
}

uint64_t sub_10002C93C()
{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 304))(*(v0 + 264), *(v0 + 240));
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002CA00()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[37];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to open FindMy app: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v12 = v0[34];
  v11 = v0[35];
  if (static WorkItemQueue.called(on:)())
  {
    v13 = *(v0[22] + 192);
    v14 = swift_task_alloc();
    v0[44] = v14;
    *v14 = v0;
    v14[1] = sub_10002C414;
    v15 = v0[36];

    return sub_10000821C(v15);
  }

  else
  {
    v18 = v0[39];
    v17 = v0[40];
    v32 = v0[33];
    v33 = v0[38];
    v19 = v0[30];
    v20 = v0[31];
    v21 = v0[28];
    v23 = v0[24];
    v22 = v0[25];
    sub_10003477C();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
    v33(v32, v19);
    v26 = v0[32];
    v25 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];
    v30 = v0[23];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_10002CCC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 176);

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002CDD8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002CE94, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10002CE94()
{
  v1 = v0[6];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[6];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10002CFC8;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[8] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002D0DC, 0, 0);
  }
}

uint64_t sub_10002CFC8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002D0DC()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in _showNextState: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002D284(uint64_t a1)
{
  v1 = *sub_100034E10((a1 + 32), *(a1 + 56));
  sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10002D328()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_weakInit();
  v3 = async function pointer to withTimeout<A>(_:block:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_100003958(&qword_100087AD0, &qword_100062F98);
  *v4 = v0;
  v4[1] = sub_10002D42C;

  return withTimeout<A>(_:block:)(v0 + 2, 0x8AC7230489E80000, 0, &unk_1000639D0, v2, v5);
}

uint64_t sub_10002D42C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_10002D644;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_10002D550;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10002D550()
{
  v1 = v0[3];
  v0[7] = v0[2];
  v2 = *(v1 + 136);
  v0[8] = v2;
  return _swift_task_switch(sub_10002D578, v2, 0);
}

uint64_t sub_10002D578()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  sub_10001269C(*(v0 + 56));

  return _swift_task_switch(sub_10002D5E4, v2, 0);
}

uint64_t sub_10002D5E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D644()
{
  v1 = v0[4];

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure fetching account profile picture: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002D7F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10002D810, 0, 0);
}

uint64_t sub_10002D810()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002D8D4, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10002D8D4()
{
  *(v0 + 64) = *(*(v0 + 56) + 144);

  return _swift_task_switch(sub_10002D94C, 0, 0);
}

uint64_t sub_10002D94C()
{
  v1 = *(v0 + 64);
  v2 = sub_10005C320();

  **(v0 + 40) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002D9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10002D9E4, 0, 0);
}

uint64_t sub_10002D9E4()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002DAB4, Strong, 0);
  }

  else
  {
    v3 = v0[13];
    *(v3 + 41) = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002DAB4()
{
  *(v0 + 128) = *(*(v0 + 120) + 144);

  return _swift_task_switch(sub_10002DB2C, 0, 0);
}

uint64_t sub_10002DB2C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  sub_10005C5B4(v0 + 16);

  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 41) = *(v0 + 57);
  v2[1] = v4;
  v2[2] = v5;
  *v2 = v3;
  v6 = *(v0 + 8);

  return v6();
}

id sub_10002DBD8()
{
  v1 = *(v0 + 24);
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0 + 24);
    if (*(v3 + 184))
    {
      v4 = *(v3 + 185);
      if (v4 == 12)
      {
        *(v0 + 16) = 0;
        swift_stdlib_random();
        v5 = (*(v0 + 18) & 2) == 0;
      }

      else
      {
        v5 = v4 != 2;
      }
    }

    else
    {
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = (*(*(v0 + 24) + 136) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId);
      v11 = *v10;
      v12 = v10[1];

      v13 = String._bridgeToObjectiveC()();

      v14 = [v9 applicationIsInstalled:v13];

      v5 = v14;
    }

    v7 = *(v0 + 8);
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
    v7 = *(v0 + 8);
    v5 = 0;
  }

  return v7(v5);
}

uint64_t sub_10002DD68(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 176);

    v4 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    swift_errorRetain();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002DE8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(sub_10002DEAC, 0, 0);
}

uint64_t sub_10002DEAC()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  v0[14] = sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "proximityPairingErrorCallback: %{public}@", v6, 0xCu);
    sub_100004F1C(v7, &qword_100087AA8, &unk_100062F80);
  }

  v9 = v0[12];

  v0[8] = v9;
  swift_errorRetain();
  sub_100003958(&qword_100087DC0, &qword_1000636E8);
  type metadata accessor for SPPairingSessionError(0);
  if (!swift_dynamicCast())
  {
LABEL_15:
    v12 = v0[12];
    swift_errorRetain();
    goto LABEL_16;
  }

  v10 = v0[9];
  v0[10] = v10;
  sub_100036CC0(&qword_100086EF8, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.code.getter();

  v11 = v0[11];
  if (v11 > 16)
  {
    switch(v11)
    {
      case 17:
        v12 = 2;
        break;
      case 20:
        v12 = 3;
        break;
      case 18:
        v12 = 1;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v11)
    {
      case 5:
        v12 = 4;
        break;
      case 11:
        v12 = 5;
        break;
      case 13:
        v12 = 0;
        break;
      default:
        goto LABEL_15;
    }
  }

LABEL_16:
  v0[15] = v12;
  v13 = v0[13];
  v14 = v0[8];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 136);
    v0[16] = v16;

    v17 = sub_10002E234;
    v18 = v16;
LABEL_20:

    return _swift_task_switch(v17, v18, 0);
  }

  v19 = v0[13];
  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  v0[17] = v20;
  if (v20)
  {
    v18 = v20;
    v17 = sub_10002E36C;
    goto LABEL_20;
  }

  sub_10000A8CC(v0[15]);
  v21 = v0[1];

  return v21();
}

uint64_t sub_10002E234()
{
  v1 = *(v0 + 128);
  sub_1000139F8(*(v0 + 120), 1);

  return _swift_task_switch(sub_10002E2A8, 0, 0);
}

uint64_t sub_10002E2A8()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10002E36C, Strong, 0);
  }

  else
  {
    sub_10000A8CC(v0[15]);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10002E36C()
{
  v1 = v0[17];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  v3 = static WorkItemQueue.called(on:)();
  v4 = v0[17];
  if (v3)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 136);
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_10002E4A0;

    return sub_10000821C(v6);
  }

  else
  {
    sub_10003477C();
    v0[19] = swift_allocError();
    *v9 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002E61C, 0, 0);
  }
}

uint64_t sub_10002E4A0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10002E5B8, 0, 0);
}

uint64_t sub_10002E5B8()
{
  sub_10000A8CC(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E61C()
{
  v1 = v0[19];
  v2 = v0[14];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  v7 = v0[15];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in _showNextState: %{public}@", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);

    sub_10000A8CC(v7);
  }

  else
  {
    sub_10000A8CC(v0[15]);
  }

  v11 = v0[1];

  return v11();
}

void sub_10002E794(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002E7FC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 176);

    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v3 + 16))(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
    *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002E9F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002EAEC, 0, 0);
}

uint64_t sub_10002EAEC()
{
  v33 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100036CC0(&qword_100087AC0, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v8;
    v15 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10005B0A0(v14, v17, &v32);
    v6 = v15;

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v30, "notifyPairingAccessoryChanged: %{private,mask.hash}s", v13, 0x16u);
    sub_10000A5C4(v31);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    v24 = v0[5];
    v25 = *(Strong + 136);
    v0[11] = v25;

    v6(v23, v24, v21);
    (*(v22 + 56))(v23, 0, 1, v21);

    return _swift_task_switch(sub_10002EE34, v25, 0);
  }

  else
  {
    v26 = v0[10];
    v27 = v0[7];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10002EE34()
{
  v1 = v0[11];
  v2 = v0[7];
  sub_1000119F4(v2);

  sub_100004F1C(v2, &qword_100087AB8, &qword_100062F90);
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002EED4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10002EFC8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 176);

    v6 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a1;
    v8 = a1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10002F100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10002F124, 0, 0);
}

uint64_t sub_10002F124()
{
  v23 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v4 = v0[6];
    v3 = v0[7];
    v5 = type metadata accessor for Logger();
    v0[9] = sub_1000054DC(v5, qword_10008C038);
    v6 = v3;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[6];
      v21 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 136315395;
      type metadata accessor for UUID();
      v13 = Array.description.getter();
      v15 = sub_10005B0A0(v13, v14, &v22);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2113;
      *(v10 + 14) = v6;
      *v11 = v21;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "proximityPairingCompletedCallback: beacons:%s, location: %{private}@", v10, 0x16u);
      sub_100004F1C(v11, &qword_100087AA8, &unk_100062F80);

      sub_10000A5C4(v12);
    }

    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_10002F3E0;
    v18 = v0[7];

    return sub_10002FDAC(v18);
  }

  else
  {
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10002F3E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_10002FC20;
  }

  else
  {
    v5 = sub_10002F4F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002F4F4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v1;
  v5 = v3;
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v10;
    *v12 = v1;
    v12[1] = v10;
    v13 = v10;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Location shifting completed. newLocation: %@ oldLocation: %@", v11, 0x16u);
    sub_100003958(&qword_100087AA8, &unk_100062F80);
    swift_arrayDestroy();
  }

  v0[13] = v1;
  v15 = *(v0[8] + 136);
  v0[14] = v15;

  return _swift_task_switch(sub_10002F690, v15, 0);
}

uint64_t sub_10002F690()
{
  v1 = *(v0 + 104);
  sub_100012EF8(v1, *(v0 + 48));

  return _swift_task_switch(sub_10002F70C, 0, 0);
}

uint64_t sub_10002F70C()
{
  v1 = *(*(v0 + 64) + 136);
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_10002F784, v1, 0);
}

uint64_t sub_10002F784()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  sub_1000139F8(0, 0);

  return _swift_task_switch(sub_10002F800, v2, 0);
}

uint64_t sub_10002F800()
{
  v1 = v0[8];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[8];
    v4 = *(v3 + 192);
    v5 = *(v3 + 136);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_10002F92C;

    return sub_10000821C(v5);
  }

  else
  {
    sub_10003477C();
    v0[17] = swift_allocError();
    *v8 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10002FA94, 0, 0);
  }
}

uint64_t sub_10002F92C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_10002FA28, 0, 0);
}

uint64_t sub_10002FA28()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002FA94()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[8];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in _showNextState: %{public}@", v9, 0xCu);
    sub_100004F1C(v10, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002FC20()
{
  v1 = v0[12];
  v2 = v0[9];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in location shifting: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = v0[7];
  v11 = v0[8];
  v0[13] = v10;
  v12 = *(v11 + 136);
  v0[14] = v12;
  v13 = v10;

  return _swift_task_switch(sub_10002F690, v12, 0);
}

uint64_t sub_10002FDAC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_10002FDF4, v1, 0);
}

uint64_t sub_10002FDF4()
{
  v1 = v0[4];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[3];
    if (v3)
    {
      v4 = v3;
      [v4 coordinate];
      v6 = v5;
      [v4 coordinate];
      v8 = v7;
      if ([objc_opt_self() isLocationShiftRequiredForCoordinate:{v6, v7}])
      {
        v10 = v0[4];
        v11 = v0[5];
        v12 = sub_100036CC0(&qword_100087E50, v9, type metadata accessor for PairingContentViewModel);
        v13 = swift_task_alloc();
        v0[6] = v13;
        *(v13 + 2) = v10;
        v13[3] = v6;
        v13[4] = v8;
        *(v13 + 5) = v4;
        *(v13 + 6) = v11;
        v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v15 = swift_task_alloc();
        v0[7] = v15;
        v16 = sub_100004E64(0, &qword_100087E70, CLLocation_ptr);
        *v15 = v0;
        v15[1] = sub_100030088;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v10, v12, 0xD000000000000011, 0x80000001000601F0, sub_100036744, v13, v16);
      }

      else
      {
        v20 = v0[1];

        return v20(v4);
      }
    }

    v17 = 8;
  }

  else
  {
    v17 = 5;
  }

  sub_10003477C();
  swift_allocError();
  *v18 = v17;
  swift_willThrow();
  v19 = v0[1];

  return v19();
}

uint64_t sub_100030088()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100030218;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1000301B0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000301B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100030218()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100030288(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a2;
  v4(a2, v5);
}

void sub_100030320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v36 = a4;
  v34 = a1;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v37 = *(a2 + 200);
  [a3 horizontalAccuracy];
  v20 = v19;
  v33 = *(v15 + 16);
  v33(v18, a1, v14);
  v21 = *(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v23 = *(v15 + 32);
  v23(v22 + ((v21 + 24) & ~v21), v18, v14);
  v45 = sub_100036824;
  v46 = v22;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1000308FC;
  v44 = &unk_10007A740;
  v35 = _Block_copy(&aBlock);
  v24 = a3;

  v33(v18, v34, v14);
  v25 = (v21 + 16) & ~v21;
  v26 = swift_allocObject();
  v23(v26 + v25, v18, v14);
  *(v26 + ((v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v45 = sub_10003695C;
  v46 = v26;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1000309F4;
  v44 = &unk_10007A790;
  v27 = _Block_copy(&aBlock);

  sub_100004E64(0, &qword_100087E80, OS_dispatch_queue_ptr);
  v29 = v38;
  v28 = v39;
  v30 = v40;
  (*(v39 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v40);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v28 + 8))(v29, v30);
  v32 = v35;
  [v37 shiftCoordinate:v35 accuracy:0 withCompletionHandler:v27 mustGoToNetworkCallback:v31 errorHandler:a5 callbackQueue:{a6, v20}];

  _Block_release(v27);
  _Block_release(v32);
}

uint64_t sub_100030700(void *a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 altitude];
  v14 = v13;
  [a1 verticalAccuracy];
  v16 = v15;
  [a1 course];
  v18 = v17;
  [a1 speed];
  v20 = v19;
  v21 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithCoordinate:isa altitude:a2 horizontalAccuracy:a3 verticalAccuracy:v14 course:a4 speed:v16 timestamp:{v18, v20}];

  (*(v9 + 8))(v12, v8);
  [v24 setReferenceFrame:2];
  v26[1] = v24;
  sub_100003958(&qword_100087E78, &qword_100063A20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000308FC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

uint64_t sub_100030968(uint64_t a1)
{
  if (!a1)
  {
    sub_10003477C();
    swift_allocError();
    *v1 = 9;
  }

  swift_errorRetain();
  sub_100003958(&qword_100087E78, &qword_100063A20);
  return CheckedContinuation.resume(throwing:)();
}

void sub_1000309F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100030A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100030A80, 0, 0);
}

uint64_t sub_100030A80()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v4 = *(Strong + 176);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100030BD4()
{
  v1 = v0[41];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100030C90, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100030CB8()
{
  v1 = 0;
  v2 = 0;
  switch(*(v0 + 233))
  {
    case 1:
      v3 = *(*(v0 + 336) + 136);
      *(v0 + 360) = v3;
      *(v0 + 176) = 1701667150;
      *(v0 + 184) = 0xE400000000000000;
      *(v0 + 192) = 0;
      *(v0 + 200) = xmmword_1000633D0;
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 1;
      v4 = sub_100031120;
      goto LABEL_15;
    case 2:
      v3 = *(*(v0 + 336) + 136);
      *(v0 + 368) = v3;
      v4 = sub_1000311A0;
      goto LABEL_15;
    case 3:
      goto LABEL_14;
    case 4:
      v2 = 0;
      v1 = 1;
      goto LABEL_14;
    case 5:
      v3 = *(*(v0 + 336) + 136);
      *(v0 + 376) = v3;
      v4 = sub_100031220;
      goto LABEL_15;
    case 6:
      v1 = 1;
      v2 = 2;
      goto LABEL_14;
    case 7:
      v1 = 1;
      v2 = 3;
      goto LABEL_14;
    case 8:
      v1 = 1;
      v2 = 4;
      goto LABEL_14;
    case 9:
      v1 = 1;
      v2 = 5;
      goto LABEL_14;
    case 0xA:
      v2 = 1;
      v1 = 1;
      goto LABEL_14;
    case 0xB:
      sub_10003477C();
      v2 = swift_allocError();
      v1 = 1;
      *v5 = 1;
      swift_errorRetain();
LABEL_14:
      *(v0 + 236) = v1;
      *(v0 + 235) = v1;
      *(v0 + 384) = v2;
      v3 = *(*(v0 + 336) + 136);
      *(v0 + 392) = v3;
      v4 = sub_1000312A0;
      goto LABEL_15;
    case 0xC:
      v6 = *(*(v0 + 336) + 136);
      *(v0 + 344) = v6;
      v7 = sub_100030EE0;
      goto LABEL_16;
    default:
      v3 = *(*(v0 + 336) + 136);
      *(v0 + 352) = v3;
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 281) = 0u;
      v4 = sub_1000310A0;
LABEL_15:
      v8 = v4;

      v7 = v8;
      v6 = v3;
LABEL_16:

      return _swift_task_switch(v7, v6, 0);
  }
}

uint64_t sub_100030F10()
{
  if (*(v0 + 234) == 2)
  {
    *(v0 + 237) = -1;
    *(v0 + 400) = 0;
    v1 = *(v0 + 336);
    v2 = sub_100031390;
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 1;
    *(v0 + 80) = 2;
    *(v0 + 88) = 1;
    *(v0 + 96) = 3;
    *(v0 + 104) = 1;
    *(v0 + 112) = 4;
    *(v0 + 120) = 1;
    *(v0 + 128) = 5;
    *(v0 + 136) = 1;
    *(v0 + 144) = 1;
    *(v0 + 152) = 1;
    sub_10003477C();
    v3 = swift_allocError();
    *v4 = 1;
    *(v0 + 160) = v3;
    *(v0 + 168) = 1;
    v2 = sub_1000346A4(8uLL);
    if (v2 > 7)
    {
      __break(1u);
      return _swift_task_switch(v2, v1, v5);
    }

    v6 = v0 + 48 + 16 * v2;
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_10000A88C(*v6, v8);
    sub_100003958(&qword_100087AB0, &qword_1000636E0);
    swift_arrayDestroy();
    sub_10000A88C(v7, v8);
    *(v0 + 236) = v8;
    *(v0 + 235) = v8;
    *(v0 + 384) = v7;
    v9 = *(*(v0 + 336) + 136);
    *(v0 + 392) = v9;

    v2 = sub_1000312A0;
    v1 = v9;
  }

  v5 = 0;

  return _swift_task_switch(v2, v1, v5);
}

uint64_t sub_1000310A0()
{
  v1 = *(v0 + 352);
  sub_100012420((v0 + 240));

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_100031120()
{
  v1 = *(v0 + 360);
  sub_100012420((v0 + 176));

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_1000311A0()
{
  v1 = *(v0 + 368);
  sub_100013DE4(0);

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_100031220()
{
  v1 = *(v0 + 376);
  sub_100012A58(1);

  *(v0 + 237) = -1;
  *(v0 + 400) = 0;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_1000312A0()
{
  v1 = *(v0 + 392);
  sub_1000139F8(*(v0 + 384), *(v0 + 235));

  return _swift_task_switch(sub_100031314, 0, 0);
}

uint64_t sub_100031314()
{
  sub_10000A8C0(*(v0 + 384), *(v0 + 235));
  v1 = *(v0 + 384);
  *(v0 + 237) = *(v0 + 236);
  *(v0 + 400) = v1;
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100031390, v2, 0);
}

uint64_t sub_100031390()
{
  v1 = v0[42];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[42];
    v4 = *(v3 + 192);
    v5 = *(v3 + 136);
    v6 = swift_task_alloc();
    v0[51] = v6;
    *v6 = v0;
    v6[1] = sub_1000314BC;

    return sub_10000821C(v5);
  }

  else
  {
    sub_10003477C();
    v0[52] = swift_allocError();
    *v8 = 5;
    swift_willThrow();

    return _swift_task_switch(sub_10003162C, 0, 0);
  }
}

uint64_t sub_1000314BC()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return _swift_task_switch(sub_1000315B8, 0, 0);
}

uint64_t sub_1000315B8()
{
  v1 = *(v0 + 336);
  sub_10000A8A8(*(v0 + 400), *(v0 + 237));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003162C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  v7 = *(v0 + 237);
  v8 = *(v0 + 400);
  v9 = *(v0 + 336);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in next state displaying: %{public}@", v10, 0xCu);
    sub_100004F1C(v11, &qword_100087AA8, &unk_100062F80);

    sub_10000A8A8(v8, v7);
  }

  else
  {
    sub_10000A8A8(*(v0 + 400), *(v0 + 237));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100031810(uint64_t a1, void *a2)
{
  v3 = sub_100034E10((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000318BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10003197C, 0, 0);
}

uint64_t sub_10003197C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100031AB4;
  v4 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087E28, &qword_1000638F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100031EAC;
  v0[13] = &unk_10007A600;
  v0[14] = v4;
  [v3 installApp:v2 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100031AB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100031CF8;
  }

  else
  {
    v3 = sub_100031BC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100031BC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successful FindMy.app installation.", v4, 2u);
  }

  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100031CF8()
{
  v1 = v0[22];
  swift_willThrow();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on FindMy.app installation request %{public}@.", v8, 0xCu);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100031EAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_100034E10((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10003201C()
{
  v1[20] = v0;
  v2 = type metadata accessor for Device();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_100003958(&qword_100087AA0, &qword_100062F78);
  v1[24] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = type metadata accessor for ClientOrigin();
  v1[30] = v7;
  v8 = *(v7 - 8);
  v1[31] = v8;
  v9 = *(v8 + 64) + 15;
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000321A4, v0, 0);
}

uint64_t sub_1000321A4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  type metadata accessor for Session();
  (*(v2 + 104))(v1, enum case for ClientOrigin.findMyApp(_:), v3);
  v4 = static Session.sharedSession(origin:)();
  v0[33] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = async function pointer to withTimeout<A>(_:block:)[1];

  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1000322E0;
  v7 = v0[28];
  v8 = v0[24];

  return withTimeout<A>(_:block:)(v7, 0x8AC7230489E80000, 0, &unk_1000638B8, v4, v8);
}

uint64_t sub_1000322E0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = sub_10003322C;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 160);

    v5 = sub_100032408;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100032408()
{
  sub_100035EA0(v0[28], v0[29], &qword_100087AA0, &qword_100062F78);
  v1 = *(v0[20] + 136);
  v0[36] = v1;

  return _swift_task_switch(sub_100032488, v1, 0);
}

uint64_t sub_100032488()
{
  v1 = v0[36];
  v2 = v0[20];
  sub_1000142B4(v0[29]);

  return _swift_task_switch(sub_1000324F8, v2, 0);
}

uint64_t sub_1000324F8()
{
  v65 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[27];
  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  sub_100014D60(v1, v2, &qword_100087AA0, &qword_100062F78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = v0[26];
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v11 = v64;
    *v10 = 136315138;
    sub_100014D60(v7, v8, &qword_100087AA0, &qword_100062F78);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100004F1C(v7, &qword_100087AA0, &qword_100062F78);
    v15 = sub_10005B0A0(v12, v14, &v64);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received device value: %s.", v10, 0xCu);
    sub_10000A5C4(v11);
  }

  else
  {

    sub_100004F1C(v7, &qword_100087AA0, &qword_100062F78);
  }

  v16 = v0[25];
  v17 = v0[21];
  v18 = v0[22];
  sub_100014D60(v0[29], v16, &qword_100087AA0, &qword_100062F78);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = v0[25];
  if (v19 == 1)
  {
    sub_100004F1C(v0[25], &qword_100087AA0, &qword_100062F78);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No Me device information available", v23, 2u);
    }

    v24 = v0[20];

    type metadata accessor for WorkItemQueue();
    v25 = *(v24 + 176);
    if (static WorkItemQueue.called(on:)())
    {
      v26 = *(v0[20] + 192);
      v27 = swift_task_alloc();
      v0[38] = v27;
      *v27 = v0;
      v28 = sub_100033048;
LABEL_16:
      v27[1] = v28;
      v35 = v0[36];

      return sub_10000821C(v35);
    }

    sub_10003477C();
    swift_allocError();
    *v37 = 5;
    swift_willThrow();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[33];
    v42 = v0[29];
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failure in next state showing: %{public}@", v43, 0xCu);
      sub_100004F1C(v44, &qword_100087AA8, &unk_100062F80);
    }

    else
    {
      v55 = v0[33];
    }

LABEL_28:
    sub_100004F1C(v42, &qword_100087AA0, &qword_100062F78);
    v56 = v0[32];
    v57 = v0[28];
    v58 = v0[29];
    v60 = v0[26];
    v59 = v0[27];
    v61 = v0[25];
    v62 = v0[23];

    v63 = v0[1];

    return v63();
  }

  (*(v0[22] + 32))(v0[23], v0[25], v0[21]);
  if (Device.isThisDevice.getter())
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Me device is this device.", v31, 2u);
    }

    v32 = v0[20];

    type metadata accessor for WorkItemQueue();
    v33 = *(v32 + 176);
    if (static WorkItemQueue.called(on:)())
    {
      v34 = *(v0[20] + 192);
      v27 = swift_task_alloc();
      v0[37] = v27;
      *v27 = v0;
      v28 = sub_100032CA4;
      goto LABEL_16;
    }

    sub_10003477C();
    swift_allocError();
    *v47 = 5;
    swift_willThrow();
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[33];
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failure in next state showing: %{public}@", v52, 0xCu);
      sub_100004F1C(v53, &qword_100087AA8, &unk_100062F80);
    }

    v42 = v0[29];
    (*(v0[22] + 8))(v0[23], v0[21]);
    goto LABEL_28;
  }

  v46 = v0[36];

  return _swift_task_switch(sub_100032EA0, v46, 0);
}

uint64_t sub_100032CA4()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100032DB4, v2, 0);
}

uint64_t sub_100032DB4()
{
  v1 = v0[33];

  v2 = v0[29];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_100004F1C(v2, &qword_100087AA0, &qword_100062F78);
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100032EA0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 160);
  sub_100010D5C((v0 + 88));

  return _swift_task_switch(sub_100032F10, v2, 0);
}

uint64_t sub_100032F10()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(*(v0 + 160) + 128);
  *(v0 + 312) = 0;
  *(v0 + 152) = 0;
  AsyncStreamProvider.yield(value:transaction:)();

  v7 = *(v0 + 104);
  v8 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v8;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v7;
  sub_100034A24(v0 + 16);
  (*(v4 + 8))(v3, v5);
  sub_100004F1C(v2, &qword_100087AA0, &qword_100062F78);
  v9 = *(v0 + 256);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100033048()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100033158, v2, 0);
}

uint64_t sub_100033158()
{
  v1 = v0[33];
  v2 = v0[29];

  sub_100004F1C(v2, &qword_100087AA0, &qword_100062F78);
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003322C()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 56))(v2, 1, 1, v3);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v5 = v0[35];
  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get active location sharing device %{public}@.", v11, 0xCu);
    sub_100004F1C(v12, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v14 = *(v0[20] + 136);
  v0[36] = v14;

  return _swift_task_switch(sub_100032488, v14, 0);
}

uint64_t sub_100033410(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PreferenceError();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_100003958(&qword_100087AA0, &qword_100062F78) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
  v9 = swift_task_alloc();
  v2[10] = v9;
  *v9 = v2;
  v9[1] = sub_100033558;

  return Session.activeLocationSharingDevice(cached:)(v7, 1);
}

uint64_t sub_100033558()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100033940;
  }

  else
  {
    v3 = sub_10003366C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003366C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for Device();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_100035EA0(v1, v2, &qword_100087AA0, &qword_100062F78);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100033748()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100033ADC;
  }

  else
  {
    v3 = sub_10003385C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003385C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = type metadata accessor for Device();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_100035EA0(v1, v2, &qword_100087AA0, &qword_100062F78);
  v4 = v0[2];

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100033940()
{
  v0[2] = v0[11];
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  sub_100003958(&qword_100087DC0, &qword_1000636E8);
  if (swift_dynamicCast())
  {
    if ((*(v0[6] + 88))(v0[7], v0[5]) == enum case for PreferenceError.missingMeDevice(_:))
    {
      v3 = v0[11];

      v4 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_100033748;
      v6 = v0[8];
      v7 = v0[4];

      return Session.activeLocationSharingDevice(cached:)(v6, 0);
    }

    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  v8 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v12 = v0[2];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100033ADC()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100033B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  return _swift_task_switch(sub_100033B8C, 0, 0);
}

uint64_t sub_100033B8C()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100033C44, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100033C44()
{
  v1 = *(*(v0 + 192) + 112);
  *(v0 + 200) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100033CB8, 0, 0);
}

uint64_t sub_100033CB8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[26] = isa;
  v0[2] = v0;
  v0[3] = sub_100033DEC;
  v5 = swift_continuation_init();
  v0[17] = sub_100003958(&qword_100087DB8, &qword_1000636B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100031810;
  v0[13] = &unk_10007A560;
  v0[14] = v5;
  [v1 finalizeProximityPairingForAccessoryIdentifier:isa configuration:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100033DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100034028;
  }

  else
  {
    v3 = sub_100033EFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100033EFC()
{
  v1 = *(v0 + 208);

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "finalizeProximityPairing completed successfully", v7, 2u);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100034028()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  v10 = v0[24];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "finalizeProximityPairing failed: %{public}@", v11, 0xCu);
    sub_100004F1C(v12, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000341FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100034220, 0, 0);
}

uint64_t sub_100034220@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[20];
  URL._bridgeToObjectiveC()(a1);
  v6 = v5;
  v1[23] = v5;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10003435C;
  v7 = swift_continuation_init();
  v1[17] = sub_100003958(&qword_100087DF8, &qword_1000637B0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100034548;
  v1[13] = &unk_10007A4E8;
  v1[14] = v7;
  [v4 openURL:v6 configuration:v3 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10003435C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1000344D8;
  }

  else
  {
    v3 = sub_10003446C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003446C()
{
  v1 = *(v0 + 184);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000344D8()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_100034548(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100034E10((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003958(&qword_100087DC0, &qword_1000636E8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100034644(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1000346A4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100034730(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100079310, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003477C()
{
  result = qword_100087DA0;
  if (!qword_100087DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087DA0);
  }

  return result;
}

uint64_t sub_1000347D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034838(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10001F690(a1, v1);
}

uint64_t sub_1000348FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10001C9C4(v2, v3);
}

uint64_t sub_100034994()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10001DC10(v0);
}

void sub_100034A54(char a1, void *a2)
{
  if (a2)
  {
    v4 = qword_100086DA8;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_10008C038);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting idle timer disabled: %{BOOL}d", v8, 8u);
    }

    oslog = String._bridgeToObjectiveC()();
    [a2 setIdleTimerDisabled:a1 & 1 forReason:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000054DC(v9, qword_10008C038);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "No remote view controller proxy found.", v11, 2u);
    }
  }
}

uint64_t sub_100034C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001616C;

  return sub_100030A60(a1, v4, v5, v7, v6);
}

uint64_t sub_100034D40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034D78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_100030BB4(v2);
}

void *sub_100034E10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100034E54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000244F0(v0);
}

Swift::Int sub_100034EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003958(&qword_100087DE0, &qword_100063710);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10003504C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000222C0(v0);
}

uint64_t sub_10003510C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_100021C3C(v2, v3, v4);
}

uint64_t sub_1000351B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000F540;

  return sub_100021190(v2, v3, v4);
}

uint64_t sub_1000352BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002CDB8(v0);
}

uint64_t sub_10003534C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002AAE4(v0);
}

uint64_t sub_1000353DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000354B4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001616C;

  return sub_1000341FC(a1, v6, v1 + v5, v7);
}

uint64_t sub_100035600()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100029FF4(v0);
}

uint64_t sub_100035690()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100029040(v0);
}

uint64_t sub_100035720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_100035784()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100022814(v0);
}

uint64_t sub_100035814()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10002295C(v0);
}

uint64_t sub_1000358A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100035984(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001616C;

  return sub_100033B68(a1, v6, v7, v8, v1 + v5, v9);
}