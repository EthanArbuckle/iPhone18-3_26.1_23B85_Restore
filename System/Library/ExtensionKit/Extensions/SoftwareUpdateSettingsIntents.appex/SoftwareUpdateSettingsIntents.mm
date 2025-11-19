uint64_t sub_1000016D8()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_1000242F8);
  sub_100003714(v0, qword_1000242F8);
  return sub_1000183E0();
}

void sub_100001754()
{
  type metadata accessor for SUSettingsIntentsSUInterop();
  v0 = swift_allocObject();
  sub_100001790();
  qword_100024D98 = v0;
}

void sub_100001790()
{
  v1 = v0;
  v31 = *v0;
  v32 = sub_100018530();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018520();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_100018410();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100004248(0, &qword_100024568, OS_dispatch_queue_ptr);
  sub_100018400();
  v34 = &_swiftEmptyArrayStorage;
  sub_100004290();
  sub_1000037A4(&qword_100024578, &unk_100018B80);
  sub_1000042E8();
  sub_100018560();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v10 = sub_100018540();
  v11 = [objc_allocWithZone(SUSettingsSUPreferencesManager) initWithDispatchQueue:v10];

  if (v11)
  {
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = v11;
    v12 = [objc_allocWithZone(SUManagerClient) initWithDelegate:0 queue:0 clientType:0];
    if (!v12)
    {
      if (qword_1000242F0 != -1)
      {
        swift_once();
      }

      v18 = sub_1000183F0();
      sub_100003714(v18, qword_1000242F8);
      v17 = sub_1000183D0();
      v19 = sub_100018500();
      if (os_log_type_enabled(v17, v19))
      {
        v20 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v20 = 136315650;
        v34 = v31;
        swift_getMetatypeMetadata();
        v21 = sub_100018480();
        v23 = sub_1000039E0(v21, v22, &v33);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_1000039E0(0x292874696E69, 0xE600000000000000, &v33);
        *(v20 + 22) = 2048;
        *(v20 + 24) = 35;
        _os_log_impl(&_mh_execute_header, v17, v19, "🐞 %s | %s | line:%ld => Unable to create SUManagerClient instance", v20, 0x20u);
        swift_arrayDestroy();
      }

      goto LABEL_9;
    }

    v13 = v1[3];
    v1[3] = v12;
    v14 = v12;

    v15 = [objc_allocWithZone(SUSettingsStatefulUIManager) initWithManagerClient:v14];
    v16 = v1[4];
    v1[4] = v15;
    v17 = v15;

    if (v17)
    {

LABEL_9:
      return;
    }

    if (qword_1000242F0 != -1)
    {
      swift_once();
    }

    v24 = sub_1000183F0();
    sub_100003714(v24, qword_1000242F8);
    v25 = sub_1000183D0();
    v26 = sub_100018500();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315650;
      v34 = v31;
      swift_getMetatypeMetadata();
      v28 = sub_100018480();
      v30 = sub_1000039E0(v28, v29, &v33);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1000039E0(0x292874696E69, 0xE600000000000000, &v33);
      *(v27 + 22) = 2048;
      *(v27 + 24) = 32;
      _os_log_impl(&_mh_execute_header, v25, v26, "🐞 %s | %s | line:%ld => Unable to create SUSettingsStatefulUIManager", v27, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100001D4C()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return _swift_task_switch(sub_100001D94, 0, 0);
}

uint64_t sub_100001D94()
{
  v31 = v0;
  if (qword_1000242F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000183F0();
  v0[21] = sub_100003714(v1, qword_1000242F8);
  v2 = sub_1000183D0();
  v3 = sub_100018500();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v5 = 136315650;
    v0[10] = v4;
    swift_getMetatypeMetadata();
    v6 = sub_100018480();
    v8 = sub_1000039E0(v6, v7, &v30);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, &v30);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 45;
    _os_log_impl(&_mh_execute_header, v2, v3, "🐞 %s | %s | line:%ld => Starting to refreshBetaUpdates", v5, 0x20u);
    swift_arrayDestroy();
  }

  v9 = *(v0[19] + 32);
  v0[22] = v9;
  if (v9)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000022EC;
    v10 = swift_continuation_init();
    v0[17] = sub_1000037A4(&qword_100024558, &qword_100018B70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100002A30;
    v0[13] = &unk_100021058;
    v0[14] = v10;
    [v9 refreshBetaUpdates:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v11 = v0[21];
    v12 = sub_1000183D0();
    v13 = sub_100018500();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[20];
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v15 = 136315650;
      v0[10] = v14;
      swift_getMetatypeMetadata();
      v16 = sub_100018480();
      v18 = sub_1000039E0(v16, v17, &v30);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, &v30);
      *(v15 + 22) = 2048;
      *(v15 + 24) = 47;
      _os_log_impl(&_mh_execute_header, v12, v13, "🐞 %s | %s | line:%ld => Finished to refreshBetaUpdates", v15, 0x20u);
      swift_arrayDestroy();
    }

    v19 = v0[21];
    v20 = sub_1000183D0();
    v21 = sub_100018500();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[20];
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v23 = 136315906;
      v0[10] = v22;
      swift_getMetatypeMetadata();
      v24 = sub_100018480();
      v26 = sub_1000039E0(v24, v25, &v30);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, &v30);
      *(v23 + 22) = 2048;
      *(v23 + 24) = 49;
      *(v23 + 32) = 2080;
      v27 = sub_1000039E0(7104878, 0xE300000000000000, &v30);

      *(v23 + 34) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "🐞 %s | %s | line:%ld => returning %s", v23, 0x2Au);
      swift_arrayDestroy();
    }

    v28 = v0[1];

    return v28(0);
  }
}

uint64_t sub_1000022EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100002734;
  }

  else
  {
    v3 = sub_1000023FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000023FC()
{
  v27 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  v3 = sub_1000183D0();
  v4 = sub_100018500();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136315650;
    *(v0 + 80) = v5;
    swift_getMetatypeMetadata();
    v7 = sub_100018480();
    v9 = sub_1000039E0(v7, v8, &v26);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, &v26);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 47;
    _os_log_impl(&_mh_execute_header, v3, v4, "🐞 %s | %s | line:%ld => Finished to refreshBetaUpdates", v6, 0x20u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 168);
  v11 = v1;
  v12 = sub_1000183D0();
  v13 = sub_100018500();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136315906;
    *(v0 + 80) = v14;
    swift_getMetatypeMetadata();
    v16 = sub_100018480();
    v18 = sub_1000039E0(v16, v17, &v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, &v26);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 49;
    *(v15 + 32) = 2080;
    if (v11)
    {
      v19 = [v11 description];
      v20 = sub_100018450();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_1000039E0(v20, v22, &v26);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "🐞 %s | %s | line:%ld => returning %s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  v24 = *(v0 + 8);

  return v24(v11);
}

uint64_t sub_100002734()
{
  v23 = v0;
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[21];
  v4 = sub_1000183D0();
  v5 = sub_100018500();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 136315650;
    v0[10] = v6;
    swift_getMetatypeMetadata();
    v8 = sub_100018480();
    v10 = sub_1000039E0(v8, v9, v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, v22);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 47;
    _os_log_impl(&_mh_execute_header, v4, v5, "🐞 %s | %s | line:%ld => Finished to refreshBetaUpdates", v7, 0x20u);
    swift_arrayDestroy();
  }

  v11 = v0[21];
  v12 = sub_1000183D0();
  v13 = sub_100018500();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[20];
    v15 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v15 = 136315906;
    v0[10] = v14;
    swift_getMetatypeMetadata();
    v16 = sub_100018480();
    v18 = sub_1000039E0(v16, v17, v22);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000039E0(0xD000000000000014, 0x800000010001B4C0, v22);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 49;
    *(v15 + 32) = 2080;
    v19 = sub_1000039E0(7104878, 0xE300000000000000, v22);

    *(v15 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "🐞 %s | %s | line:%ld => returning %s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_100002A30(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100004204((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000037A4(&qword_100024540, &qword_100018B60);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100002B08()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return _swift_task_switch(sub_100002B50, 0, 0);
}

uint64_t sub_100002B50()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[6];
    v4 = swift_task_alloc();
    v0[8] = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v6 = v2;
    v7 = swift_task_alloc();
    v0[9] = v7;
    v8 = sub_1000037A4(&qword_100024530, &qword_100018B50);
    *v7 = v0;
    v7[1] = sub_100002D78;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ALL, 0x800000010001B3E0, sub_100003798, v4, v8);
  }

  else
  {
    if (qword_1000242F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000183F0();
    sub_100003714(v9, qword_1000242F8);
    v10 = sub_1000183D0();
    v11 = sub_100018510();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "no client instance, unable to check for updates", v12, 2u);
    }

    v13 = v0[1];

    return v13(0, 0, 255);
  }
}

uint64_t sub_100002D78()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100002F00;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100002E94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002E94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v1, v2, v4);
}

uint64_t sub_100002F00()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

void sub_100002F6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000037A4(&qword_100024538, &qword_100018B58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  if (qword_1000242F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000183F0();
  sub_100003714(v12, qword_1000242F8);
  v13 = sub_1000183D0();
  v14 = sub_100018500();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Beginning to perform a scan for a Software Update", v15, 2u);
  }

  v16 = [objc_allocWithZone(SUScanOptions) init];
  [v16 setForced:1];
  v17 = sub_100018440();
  [v16 setIdentifier:v17];

  (*(v8 + 16))(v11, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_10000388C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000361C;
  aBlock[3] = &unk_100021030;
  v20 = _Block_copy(aBlock);

  [a2 scanForUpdates:v16 withScanResults:v20];
  _Block_release(v20);
}

void sub_100003258(void *a1, uint64_t a2)
{
  if (qword_1000242F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000183F0();
  sub_100003714(v4, qword_1000242F8);
  swift_errorRetain();
  v5 = a1;
  v6 = sub_1000183D0();
  v7 = sub_1000184F0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    if (a2)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v11;
    v9[1] = a1;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "SUSettings Intents got SU Scan Results. Error: %@; results: %@", v8, 0x16u);
    sub_1000037A4(&qword_100024550, &qword_100018B68);
    swift_arrayDestroy();
  }

  if (a2)
  {
    swift_errorRetain();
    sub_1000037A4(&qword_100024540, &qword_100018B60);
    sub_100004248(0, &qword_100024548, NSError_ptr);
    if (swift_dynamicCast())
    {
      v13 = v21;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_100003FE8(v13);

    if ((v14 & 1) == 0)
    {
      swift_errorRetain();
      sub_1000037A4(&qword_100024538, &qword_100018B58);
      sub_1000184D0();
      return;
    }

    goto LABEL_18;
  }

  if (!a1)
  {
LABEL_18:
    sub_1000037A4(&qword_100024538, &qword_100018B58);
    sub_1000184E0();
    return;
  }

  v15 = v5;
  v16 = [v15 preferredDescriptor];
  if (v16)
  {
    v17 = v16;
    if ([v15 alternateDescriptor])
    {
      goto LABEL_24;
    }
  }

  v18 = [v15 preferredDescriptor];
  v19 = [v15 alternateDescriptor];
  if (v18)
  {
    if (v19)
    {
    }

    else if ([v18 audienceType] == 1)
    {
      [v18 promoteAlternateUpdate];
    }

    v20 = v18;
    sub_1000037A4(&qword_100024538, &qword_100018B58);
    sub_1000184E0();

    goto LABEL_28;
  }

  if (v19)
  {
LABEL_24:
    sub_1000037A4(&qword_100024538, &qword_100018B58);
    sub_1000184E0();
LABEL_28:

    return;
  }

  __break(1u);
}

void sub_10000361C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000036A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100003714(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000374C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000037A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000037EC()
{
  v1 = sub_1000037A4(&qword_100024538, &qword_100018B58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10000388C(void *a1, uint64_t a2)
{
  v5 = *(sub_1000037A4(&qword_100024538, &qword_100018B58) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100003258(a1, a2);
}

uint64_t sub_100003944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003984(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000039E0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000039E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003AAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000041B4(v11);
  return v7;
}

unint64_t sub_100003AAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003BB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100018590();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003BB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003C04(a1, a2);
  sub_100003D34(&off_100020F40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003C04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003E20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100018590();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000184B0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003E20(v10, 0);
        result = sub_100018570();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003D34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100003E94(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003E20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000037A4(&qword_100024560, &qword_100018B78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003E94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000037A4(&qword_100024560, &qword_100018B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100003F88(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100003F98(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100003FB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100003FE8(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = [a1 domain];
  v3 = sub_100018450();
  v5 = v4;

  if (v3 == sub_100018450() && v5 == v6)
  {

LABEL_10:
    v11 = [a1 code];
    v9 = 0x80000000006808uLL >> v11;
    if (v11 > 0x37)
    {
      LOBYTE(v9) = 0;
    }

    return v9 & 1;
  }

  v8 = sub_1000185C0();

  LOBYTE(v9) = 0;
  if (v8)
  {
    goto LABEL_10;
  }

  return v9 & 1;
}

uint64_t *sub_1000040DC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100004150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000041B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100004204(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004248(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100004290()
{
  result = qword_100024570;
  if (!qword_100024570)
  {
    sub_100018520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024570);
  }

  return result;
}

unint64_t sub_1000042E8()
{
  result = qword_100024580;
  if (!qword_100024580)
  {
    sub_10000434C(&qword_100024578, &unk_100018B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024580);
  }

  return result;
}

uint64_t sub_10000434C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004394()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 systemVersion];

  sub_100018450();
  sub_100004484();
  v2 = sub_100018550();

  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t sub_100004484()
{
  result = qword_100024588;
  if (!qword_100024588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024588);
  }

  return result;
}

uint64_t sub_1000044D8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000044F4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004508(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100004550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100004598(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000045C0()
{
  v0 = sub_100018330();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100018390();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100018430();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100018340();
  sub_1000040DC(v9, qword_100024DA0);
  sub_100003714(v9, qword_100024DA0);
  sub_100018420();
  sub_100018380();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100018350();
}

uint64_t sub_10000479C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = *(*(sub_1000037A4(&qword_100024668, &qword_1000192E0) - 8) + 64);
  v2 = (__chkstk_darwin)();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = sub_100018340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100018320();
  sub_100018320();
  v10 = *(v8 + 56);
  v8 += 56;
  v10(v6, 0, 1, v7);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v11 = *(v8 + 16);
  v12 = (*(v8 + 24) + 32) & ~*(v8 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C60;
  sub_100018320();
  sub_100018320();
  v10(v4, 0, 1, v7);
  v13 = v17;
  sub_100018150();
  v14 = sub_100018140();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_100004A58()
{
  v0 = sub_1000037A4(&qword_1000246B8, &qword_100019318);
  sub_1000040DC(v0, qword_100024DB8);
  sub_100003714(v0, qword_100024DB8);
  sub_1000037A4(&qword_1000246C0, &qword_100019320);
  v1 = sub_1000037A4(&qword_1000246C8, &qword_100019328);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100018C70;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_1000056C8();
  sub_1000181D0();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_1000181D0();
  sub_1000070A0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000181E0();
}

uint64_t sub_100004C34()
{
  v0 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100018340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000182D0();
  sub_1000040DC(v7, qword_100024DD0);
  sub_100003714(v7, qword_100024DD0);
  sub_100018320();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000182C0();
}

uint64_t sub_100004DAC()
{
  v0 = sub_1000037A4(&qword_100024698, &qword_1000192F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v28 - v2;
  v4 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - v6;
  v8 = sub_100018340();
  v38 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v41 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = v28 - v13;
  sub_1000037A4(&qword_1000246A0, &qword_100019300);
  v14 = sub_1000037A4(&qword_1000246A8, &qword_100019308);
  v44 = v14;
  v15 = *(v14 - 8);
  v39 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v40 = v17;
  *(v17 + 16) = xmmword_100018C70;
  v43 = v17 + v16;
  v36 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_100018320();
  sub_100018320();
  v18 = *(v9 + 56);
  v9 += 56;
  v37 = v18;
  v18(v7, 0, 1, v8);
  v35 = "Perform Software Update now";
  v28[0] = v3;
  sub_100018190();
  v33 = sub_1000181A0();
  v19 = *(v33 - 8);
  v32 = *(v19 + 56);
  v34 = v19 + 56;
  v32(v3, 0, 1, v33);
  v20 = sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v21 = *(v9 + 16);
  v22 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  v30 = 5 * v21;
  v31 = v20;
  v28[1] = v9;
  v28[2] = 4 * v21;
  v23 = swift_allocObject();
  v29 = xmmword_100018C80;
  *(v23 + 16) = xmmword_100018C80;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  v28[3] = 3 * v21;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  v24 = v43;
  v25 = v28[0];
  sub_1000181B0();
  v36 = (v24 + v39);
  v39 = *(v44 + 48);
  *v36 = 1;
  sub_100018320();
  sub_100018320();
  v37(v7, 0, 1, v38);
  sub_100018190();
  v32(v25, 0, 1, v33);
  *(swift_allocObject() + 16) = v29;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  sub_100018320();
  sub_100018320();
  sub_100018320();
  sub_1000181B0();
  v26 = sub_100007294(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100024DE8 = v26;
  return result;
}

uint64_t sub_1000053D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746867696E6F74;
  }

  else
  {
    v4 = 7827310;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746867696E6F74;
  }

  else
  {
    v6 = 7827310;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
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
    v9 = sub_1000185C0();
  }

  return v9 & 1;
}

unint64_t sub_10000547C()
{
  result = qword_100024590;
  if (!qword_100024590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024590);
  }

  return result;
}

Swift::Int sub_1000054D0()
{
  v1 = *v0;
  sub_100018620();
  sub_100018490();

  return sub_100018630();
}

uint64_t sub_10000554C()
{
  *v0;
  sub_100018490();
}

Swift::Int sub_1000055B4()
{
  v1 = *v0;
  sub_100018620();
  sub_100018490();

  return sub_100018630();
}

uint64_t sub_10000562C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100020F68;
  v8._object = v3;
  v5 = sub_1000185B0(v4, v8);

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

void sub_10000568C(uint64_t *a1@<X8>)
{
  v2 = 7827310;
  if (*v1)
  {
    v2 = 0x746867696E6F74;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000056C8()
{
  result = qword_100024598;
  if (!qword_100024598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024598);
  }

  return result;
}

unint64_t sub_100005720()
{
  result = qword_1000245A0;
  if (!qword_1000245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245A0);
  }

  return result;
}

uint64_t sub_100005774@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024320 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_1000246B8, &qword_100019318);
  v3 = sub_100003714(v2, qword_100024DB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100005828()
{
  result = qword_1000245A8;
  if (!qword_1000245A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245A8);
  }

  return result;
}

unint64_t sub_100005880()
{
  result = qword_1000245B0;
  if (!qword_1000245B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245B0);
  }

  return result;
}

unint64_t sub_1000058D8()
{
  result = qword_1000245B8;
  if (!qword_1000245B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245B8);
  }

  return result;
}

uint64_t sub_100005938()
{
  sub_1000079FC();
  v1 = sub_100018160();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000059A8()
{
  result = qword_1000245C0;
  if (!qword_1000245C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245C0);
  }

  return result;
}

unint64_t sub_100005A00()
{
  result = qword_1000245C8;
  if (!qword_1000245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245C8);
  }

  return result;
}

unint64_t sub_100005A54()
{
  result = qword_1000245D0;
  if (!qword_1000245D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245D0);
  }

  return result;
}

unint64_t sub_100005AAC()
{
  result = qword_1000245D8;
  if (!qword_1000245D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245D8);
  }

  return result;
}

uint64_t sub_100005B6C(uint64_t a1)
{
  v2 = sub_1000056C8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100005BBC()
{
  result = qword_1000245E0;
  if (!qword_1000245E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245E0);
  }

  return result;
}

unint64_t sub_100005C14()
{
  result = qword_1000245E8;
  if (!qword_1000245E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245E8);
  }

  return result;
}

unint64_t sub_100005C6C()
{
  result = qword_1000245F0;
  if (!qword_1000245F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245F0);
  }

  return result;
}

uint64_t sub_100005CC0()
{
  if (qword_100024330 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100005D1C(uint64_t a1)
{
  v2 = sub_100005AAC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100005D6C()
{
  result = qword_1000245F8;
  if (!qword_1000245F8)
  {
    sub_10000434C(&qword_100024600, &qword_100018F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000245F8);
  }

  return result;
}

unint64_t sub_100005DE4()
{
  result = qword_100024608;
  if (!qword_100024608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024608);
  }

  return result;
}

uint64_t sub_100005E3C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100017F70();
  *a1 = v5;
  return result;
}

uint64_t sub_100005E78(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100017F80();
}

void (*sub_100005EB0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_100005F24;
}

void sub_100005F24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100005F74()
{
  result = qword_100024610;
  if (!qword_100024610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024610);
  }

  return result;
}

uint64_t sub_100005FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007954();
  v5 = sub_1000079FC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100006040()
{
  result = qword_100024618;
  if (!qword_100024618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024618);
  }

  return result;
}

unint64_t sub_100006098()
{
  result = qword_100024620;
  if (!qword_100024620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024620);
  }

  return result;
}

unint64_t sub_1000060F0()
{
  result = qword_100024628;
  if (!qword_100024628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024628);
  }

  return result;
}

uint64_t sub_1000061F0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003714(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000062B8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007954();
  v7 = sub_1000079A8();
  v8 = sub_1000079FC();
  *v5 = v2;
  v5[1] = sub_100006384;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100006384()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10000648C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000747C();
  *a1 = result;
  return result;
}

uint64_t sub_1000064B4(uint64_t a1)
{
  v2 = sub_100005F74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000064F0()
{
  v0 = sub_1000037A4(&qword_100024650, &qword_1000192C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100005F74();
  sub_1000180A0();
  v15 = sub_100018020();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1000180A0();
  v14 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v6 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v7 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v8 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v9 = sub_100018020();
  v5(v4, v0);
  sub_1000037A4(&qword_100024658, &unk_1000192D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018C90;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_100018010();

  return v12;
}

uint64_t sub_100006808()
{
  v0 = sub_100018090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100005A54();
  sub_100018000();

  sub_100005F74();
  sub_100018080();
  v5 = sub_100018070();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024648, &qword_1000192C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100018060();

  return v7;
}

uint64_t sub_100006978()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018C70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100018030();

  return v3;
}

uint64_t sub_100006A14()
{
  v0 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100018C60;
  *(v1 + 32) = v0;
  v2 = sub_100018030();

  return v2;
}

uint64_t sub_100006A88()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10000747C();
  sub_100005F74();
  sub_100018120();
  v5 = sub_100018100();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_1000180F0();

  return v7;
}

uint64_t sub_100006BF0()
{
  v0 = sub_100017FF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F74();
  sub_100017FE0();
  v5 = sub_100017FD0();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024630, &unk_100019280);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100017FC0();

  return v7;
}

uint64_t getEnumTagSinglePayload for PerformSoftwareUpdateActionIntent.PerformSoftwareUpdateTiming(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerformSoftwareUpdateActionIntent.PerformSoftwareUpdateTiming(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006EC4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100018620();
  sub_100018490();

  v5 = sub_100018630();

  return sub_100006F64(a1 & 1, v5);
}

unint64_t sub_100006F64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746867696E6F74;
    }

    else
    {
      v6 = 7827310;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746867696E6F74 : 7827310;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000185C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000070A0(uint64_t a1)
{
  v2 = sub_1000037A4(&qword_1000246C8, &qword_100019328);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000037A4(&qword_1000246D0, &qword_100019330);
    v8 = sub_1000185A0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007A50(v10, v6, &qword_1000246C8, &qword_100019328);
      v12 = *v6;
      result = sub_100006EC4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000037A4(&qword_1000246D8, qword_100019338);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007294(uint64_t a1)
{
  v2 = sub_1000037A4(&qword_1000246A8, &qword_100019308);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000037A4(&qword_1000246B0, &qword_100019310);
    v8 = sub_1000185A0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007A50(v10, v6, &qword_1000246A8, &qword_100019308);
      v12 = *v6;
      result = sub_100006EC4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000181C0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000747C()
{
  v0 = sub_100018280();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100018330();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100018390();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100018430();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100018340();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28 = sub_1000037A4(&qword_100024670, &qword_1000192E8);
  sub_100018420();
  sub_100018380();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100018350();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 2;
  v25 = sub_100017EF0();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000056C8();
  return sub_100017F90();
}

uint64_t sub_1000078E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100017F70();
  *a2 = v5;
  return result;
}

uint64_t sub_10000791C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100017F80();
}

unint64_t sub_100007954()
{
  result = qword_100024678;
  if (!qword_100024678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024678);
  }

  return result;
}

unint64_t sub_1000079A8()
{
  result = qword_100024680;
  if (!qword_100024680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024680);
  }

  return result;
}

unint64_t sub_1000079FC()
{
  result = qword_100024688;
  if (!qword_100024688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024688);
  }

  return result;
}

uint64_t sub_100007A50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000037A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007B00()
{
  result = qword_100024790;
  if (!qword_100024790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024790);
  }

  return result;
}

unint64_t sub_100007B58()
{
  result = qword_100024798;
  if (!qword_100024798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024798);
  }

  return result;
}

uint64_t sub_100007BAC()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_100024778);
  sub_100003714(v0, qword_100024778);
  return sub_1000183E0();
}

uint64_t sub_100007C2C()
{
  v0 = sub_100018330();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100018390();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100018430();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100018340();
  sub_1000040DC(v9, qword_100024DF0);
  sub_100003714(v9, qword_100024DF0);
  sub_100018420();
  sub_100018380();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100018350();
}

uint64_t sub_100007E0C@<X0>(uint64_t a1@<X8>)
{
  v26[0] = a1;
  v1 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  v8 = sub_100018330();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100018390();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100018430();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_100018340();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100018420();
  sub_100018380();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100018350();
  sub_100018320();
  v20 = *(v18 + 56);
  v18 += 56;
  v20(v7, 0, 1, v17);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v21 = *(v18 + 16);
  v22 = (*(v18 + 24) + 32) & ~*(v18 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C70;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  v20(v5, 0, 1, v17);
  v23 = v26[0];
  sub_100018150();
  v24 = sub_100018140();
  return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_100018200();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_100018210();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = sub_100017EF0();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_100018340();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100008408, 0, 0);
}

uint64_t sub_100008408()
{
  v83 = v0;
  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v1 = qword_100024D98;
  *(v0 + 224) = qword_100024D98;
  v2 = *(v1 + 24);
  *(v0 + 232) = v2;
  if (!v2)
  {
    if (qword_100024338 != -1)
    {
      swift_once();
    }

    v14 = sub_1000183F0();
    sub_100003714(v14, qword_100024778);
    v15 = sub_1000183D0();
    v16 = sub_100018510();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v17 = 136315650;
      *(v0 + 16) = &type metadata for SetAutomaticInstallUpdatesIntent;
      sub_1000037A4(&qword_1000247E8, &qword_100019608);
      v18 = sub_100018480();
      v20 = sub_1000039E0(v18, v19, &v82);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
      *(v17 + 22) = 2048;
      *(v17 + 24) = 40;
      _os_log_impl(&_mh_execute_header, v15, v16, "🐞 %s | %s | line:%ld => Unable to init SUManagerClient", v17, 0x20u);
      swift_arrayDestroy();
    }

    v21 = *(v0 + 96);
    sub_100017F30();
    goto LABEL_31;
  }

  v3 = qword_100024338;
  v80 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 104);
  v5 = sub_1000183F0();
  *(v0 + 240) = sub_100003714(v5, qword_100024778);
  swift_retain_n();
  v6 = sub_1000183D0();
  v7 = sub_100018500();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 104);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v10 = 136315906;
    *(v0 + 88) = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v11 = sub_100018480();
    v13 = sub_1000039E0(v11, v12, &v82);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 44;
    *(v10 + 32) = 1024;
    sub_100017F70();

    *(v10 + 34) = *(v0 + 265);

    _os_log_impl(&_mh_execute_header, v6, v7, "🐞 %s | %s | line:%ld => Perform called with property value: %{BOOL}d", v10, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 104);
  }

  v23 = *(v0 + 104);
  sub_100017F70();
  v24 = *(v0 + 264);
  v25 = sub_1000183D0();
  v26 = sub_100018500();
  v27 = os_log_type_enabled(v25, v26);
  if (v24 == 1)
  {
    if (v27)
    {
      v28 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v28 = 136315650;
      *(v0 + 80) = &type metadata for SetAutomaticInstallUpdatesIntent;
      sub_1000037A4(&qword_1000247E8, &qword_100019608);
      v29 = sub_100018480();
      v31 = sub_1000039E0(v29, v30, &v82);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
      *(v28 + 22) = 2048;
      *(v28 + 24) = 47;
      _os_log_impl(&_mh_execute_header, v25, v26, "🐞 %s | %s | line:%ld => User requested turning on the auto update", v28, 0x20u);
      swift_arrayDestroy();
    }

    [*(v1 + 16) enableAutomaticUpdateV2:1];
    [*(v1 + 16) enableAutomaticDownload:1];
    [*(v1 + 16) enablePreviousUserSpecifiedAutomaticUpdateV2:1];
    v32 = sub_1000183D0();
    v33 = sub_100018500();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v34 = 136315650;
    *(v0 + 72) = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v35 = sub_100018480();
    v37 = sub_1000039E0(v35, v36, &v82);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
    *(v34 + 22) = 2048;
    *(v34 + 24) = 55;
    v38 = "🐞 %s | %s | line:%ld => Auto update turned on by user request";
    goto LABEL_29;
  }

  if (v27)
  {
    v39 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v39 = 136315650;
    *(v0 + 64) = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v40 = sub_100018480();
    v42 = sub_1000039E0(v40, v41, &v82);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
    *(v39 + 22) = 2048;
    *(v39 + 24) = 59;
    _os_log_impl(&_mh_execute_header, v25, v26, "🐞 %s | %s | line:%ld => User requested turning off the auto update", v39, 0x20u);
    swift_arrayDestroy();
  }

  if (![v80 isAutoUpdateScheduled])
  {
    v64 = *(v0 + 240);
    v65 = *(v0 + 224);
    [*(v65 + 16) enableAutomaticUpdateV2:0];
    [*(v65 + 16) enablePreviousUserSpecifiedAutomaticUpdateV2:1];
    v32 = sub_1000183D0();
    v33 = sub_100018500();
    if (!os_log_type_enabled(v32, v33))
    {
LABEL_30:

      v69 = *(v0 + 232);
      v70 = *(v0 + 96);
      sub_100017F30();

LABEL_31:
      v72 = *(v0 + 208);
      v71 = *(v0 + 216);
      v73 = *(v0 + 200);
      v74 = *(v0 + 176);
      v75 = *(v0 + 152);
      v76 = *(v0 + 128);

      v77 = *(v0 + 8);

      return v77();
    }

    v34 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v34 = 136315650;
    *(v0 + 24) = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v66 = sub_100018480();
    v68 = sub_1000039E0(v66, v67, &v82);

    *(v34 + 4) = v68;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
    *(v34 + 22) = 2048;
    *(v34 + 24) = 76;
    v38 = "🐞 %s | %s | line:%ld => Auto update turned off by user request";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v32, v33, v38, v34, 0x20u);
    swift_arrayDestroy();

    goto LABEL_30;
  }

  v43 = sub_1000183D0();
  v44 = sub_100018500();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v45 = 136315650;
    *(v0 + 56) = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v46 = sub_100018480();
    v48 = sub_1000039E0(v46, v47, &v82);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v82);
    *(v45 + 22) = 2048;
    *(v45 + 24) = 63;
    _os_log_impl(&_mh_execute_header, v43, v44, "🐞 %s | %s | line:%ld => User needs to approved turning off the auto update since there is a scheduled update", v45, 0x20u);
    swift_arrayDestroy();
  }

  v50 = *(v0 + 208);
  v49 = *(v0 + 216);
  v51 = *(v0 + 192);
  v52 = *(v0 + 200);
  v54 = *(v0 + 176);
  v53 = *(v0 + 184);
  v55 = *(v0 + 136);
  v79 = *(v0 + 152);
  v81 = *(v0 + 128);
  v56 = *(v0 + 104);
  sub_100018320();
  *(v0 + 32) = v56;
  v57 = *(v51 + 16);
  v57(v50, v49, v53);
  v57(v52, v49, v53);
  sub_100017EE0();
  *(v0 + 40) = &_swiftEmptyArrayStorage;
  sub_10000ACF4();
  sub_1000037A4(&qword_1000247F8, qword_100019610);
  sub_10000AD4C(&qword_100024800, &qword_1000247F8, qword_100019610);
  sub_100018560();
  sub_1000181F0();
  v58 = async function pointer to AppIntent.requestConfirmation(conditions:actionName:dialog:)[1];
  v59 = swift_task_alloc();
  *(v0 + 248) = v59;
  v60 = sub_100007B00();
  *v59 = v0;
  v59[1] = sub_100009044;
  v61 = *(v0 + 176);
  v62 = *(v0 + 152);
  v63 = *(v0 + 128);

  return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v62, v63, v61, &type metadata for SetAutomaticInstallUpdatesIntent, v60);
}

uint64_t sub_100009044()
{
  v2 = *(*v1 + 248);
  v14 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v13 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 128);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v13);
  if (v0)
  {
    v11 = sub_100009624;
  }

  else
  {
    v11 = sub_10000927C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10000927C()
{
  v33 = v0;
  v1 = v0[30];
  v2 = sub_1000183D0();
  v3 = sub_100018500();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v30 = v0[23];
    v31 = v0[27];
    v5 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v5 = 136315650;
    v0[6] = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v6 = sub_100018480();
    v8 = sub_1000039E0(v6, v7, &v32);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v32);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 68;
    _os_log_impl(&_mh_execute_header, v2, v3, "🐞 %s | %s | line:%ld => User approved turning off the auto update", v5, 0x20u);
    swift_arrayDestroy();

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v9 = v0[27];
    v11 = v0[23];
    v10 = v0[24];

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[30];
  v13 = v0[28];
  [*(v13 + 16) enableAutomaticUpdateV2:0];
  [*(v13 + 16) enablePreviousUserSpecifiedAutomaticUpdateV2:1];
  v14 = sub_1000183D0();
  v15 = sub_100018500();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136315650;
    v0[3] = &type metadata for SetAutomaticInstallUpdatesIntent;
    sub_1000037A4(&qword_1000247E8, &qword_100019608);
    v17 = sub_100018480();
    v19 = sub_1000039E0(v17, v18, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v32);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 76;
    _os_log_impl(&_mh_execute_header, v14, v15, "🐞 %s | %s | line:%ld => Auto update turned off by user request", v16, 0x20u);
    swift_arrayDestroy();
  }

  v20 = v0[29];
  v21 = v0[12];
  sub_100017F30();

  v23 = v0[26];
  v22 = v0[27];
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[19];
  v27 = v0[16];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100009624()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);

  (*(v4 + 8))(v2, v5);

  v9 = *(v0 + 8);
  v10 = *(v0 + 256);

  return v9();
}

void (*sub_1000096FC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_100005F24;
}

unint64_t sub_100009774()
{
  result = qword_1000247A0;
  if (!qword_1000247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000247A0);
  }

  return result;
}

unint64_t sub_1000097CC()
{
  result = qword_1000247A8;
  if (!qword_1000247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000247A8);
  }

  return result;
}

uint64_t sub_10000988C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024340 != -1)
  {
    swift_once();
  }

  v2 = sub_100018340();
  v3 = sub_100003714(v2, qword_100024DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100009940(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000099E0;

  return sub_10000821C(a1, v4);
}

uint64_t sub_1000099E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009AD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A5F8();
  *a1 = result;
  return result;
}

uint64_t sub_100009AFC(uint64_t a1)
{
  v2 = sub_100007B00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100009B38()
{
  v0 = sub_1000037A4(&qword_1000247C0, &qword_1000195D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_1000037A4(&qword_1000247C8, &qword_1000195E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100007B00();
  sub_1000180D0();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000180C0(v12);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v13._object = 0x800000010001B7F0;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000180C0(v13);
  sub_1000180E0();
  v7 = sub_100018020();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_1000247D0, &qword_1000195E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018C60;
  *(v8 + 32) = v7;
  v9 = sub_100018010();

  return v9;
}

uint64_t sub_100009D9C()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018C70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100018030();

  return v3;
}

uint64_t sub_100009E3C(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_1000037A4(&qword_1000247C0, &qword_1000195D8);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_1000037A4(&qword_1000247C8, &qword_1000195E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100007B00();
  sub_1000180D0();
  v16._object = 0x800000010001B790;
  v16._countAndFlagsBits = 0xD000000000000021;
  sub_1000180C0(v16);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000180C0(v17);
  sub_1000180E0();
  v14 = sub_100018020();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_1000180D0();
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x800000010001B7C0;
  sub_1000180C0(v18);
  swift_getKeyPath();
  sub_100018000();

  sub_1000180B0();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1000180C0(v19);
  sub_1000180E0();
  v9 = sub_100018020();
  v7(v4, v8);
  sub_1000037A4(&qword_1000247D0, &qword_1000195E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018C70;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_100018010();

  return v11;
}

uint64_t sub_10000A18C()
{
  v0 = sub_100018090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_100007B00();
  sub_100018080();
  v5 = sub_100018070();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024648, &qword_1000192C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100018060();

  return v7;
}

uint64_t sub_10000A2F0()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  v2 = sub_100018040();
  v3 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019370;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100018030();

  return v5;
}

uint64_t sub_10000A3CC()
{
  v0 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100018C60;
  *(v1 + 32) = v0;
  v2 = sub_100018030();

  return v2;
}

uint64_t sub_10000A454()
{
  v0 = sub_100017FF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007B00();
  sub_100017FE0();
  v5 = sub_100017FD0();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024630, &unk_100019280);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100017FC0();

  return v7;
}

uint64_t sub_10000A5F8()
{
  v0 = sub_100018280();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  __chkstk_darwin(v0);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v30 = &v29 - v5;
  v6 = sub_1000037A4(&qword_1000247D8, &qword_100019DE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_100018330();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100018390();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100018430();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_100018340();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v29 = sub_1000037A4(&qword_1000247E0, &qword_100019DF0);
  sub_100018420();
  sub_100018380();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_100018350();
  (*(v24 + 56))(v13, 1, 1, v23);
  v34 = 2;
  v26 = sub_1000184C0();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = sub_100017EF0();
  (*(*(v27 - 8) + 56))(v30, 1, 1, v27);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  return sub_100017FB0();
}

uint64_t sub_10000AA98()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5F8();
  sub_100007B00();
  sub_100018120();
  v5 = sub_100018100();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v12 = sub_10000A5F8();
  sub_100018120();
  v7 = sub_100018100();
  v6(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018C70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1000180F0();

  return v9;
}

uint64_t sub_10000AC80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100017F70();
  *a2 = v5;
  return result;
}

uint64_t sub_10000ACBC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100017F80();
}

unint64_t sub_10000ACF4()
{
  result = qword_1000247F0;
  if (!qword_1000247F0)
  {
    sub_100018210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000247F0);
  }

  return result;
}

uint64_t sub_10000AD4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000434C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000AD98()
{
  result = qword_100024808;
  if (!qword_100024808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024808);
  }

  return result;
}

uint64_t sub_10000ADEC()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024E08);
  sub_100003714(v0, qword_100024E08);
  return sub_100018320();
}

uint64_t sub_10000AE50@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100018340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100018320();
  sub_100018320();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 0, 1, v8);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v12 = *(v9 + 16);
  v13 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C70;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  v11(v5, 0, 1, v8);
  v14 = v18;
  sub_100018150();
  v15 = sub_100018140();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_10000B100(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = *(*(sub_100018340() - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10000B190, 0, 0);
}

uint64_t sub_10000B190()
{
  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  [*(qword_100024D98 + 16) isAutomaticUpdateV2Enabled];
  sub_100018320();
  v0[2] = sub_100018470();
  v0[3] = v3;
  sub_10000BA2C();
  sub_100017F20();

  v4 = v0[1];

  return v4();
}

unint64_t sub_10000B2C4()
{
  result = qword_100024810;
  if (!qword_100024810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024810);
  }

  return result;
}

unint64_t sub_10000B31C()
{
  result = qword_100024818;
  if (!qword_100024818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024818);
  }

  return result;
}

uint64_t sub_10000B3F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024348 != -1)
  {
    swift_once();
  }

  v2 = sub_100018340();
  v3 = sub_100003714(v2, qword_100024E08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000B4A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000099E0;

  return sub_10000B100(a1);
}

uint64_t sub_10000B538(uint64_t a1)
{
  v2 = sub_10000AD98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000B588()
{
  v0 = sub_1000037A4(&qword_100024830, &qword_100019808);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  sub_10000AD98();
  sub_1000180A0();
  v5 = sub_100018020();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1000180A0();
  v7 = sub_100018020();
  v6(v4, v0);
  sub_1000180A0();
  v8 = sub_100018020();
  v6(v4, v0);
  sub_1000180A0();
  v9 = sub_100018020();
  v6(v4, v0);
  sub_1000037A4(&qword_100024838, &qword_100019810);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100019370;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_100018010();

  return v11;
}

uint64_t sub_10000B7F4()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AD98();
  sub_100018120();
  v5 = sub_100018100();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_1000180F0();

  return v7;
}

uint64_t sub_10000B948()
{
  if (qword_100024350 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000B9C8()
{
  result = qword_100024820;
  if (!qword_100024820)
  {
    sub_10000434C(&qword_100024828, &unk_10001A6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024820);
  }

  return result;
}

unint64_t sub_10000BA2C()
{
  result = qword_100024840;
  if (!qword_100024840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024840);
  }

  return result;
}

unint64_t sub_10000BA84()
{
  result = qword_100024870;
  if (!qword_100024870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024870);
  }

  return result;
}

uint64_t sub_10000BB1C()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_100024848);
  sub_100003714(v0, qword_100024848);
  return sub_1000183E0();
}

uint64_t sub_10000BB9C()
{
  v0 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100018340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000182D0();
  sub_1000040DC(v7, qword_100024E28);
  sub_100003714(v7, qword_100024E28);
  sub_100018320();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000182C0();
}

uint64_t sub_10000BD0C()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024E40);
  sub_100003714(v0, qword_100024E40);
  return sub_100018320();
}

uint64_t sub_10000BD70()
{
  v0 = sub_1000037A4(&qword_100024988, &unk_100019E70);
  sub_1000040DC(v0, qword_100024E58);
  v1 = sub_100003714(v0, qword_100024E58);
  sub_100018130();
  v2 = sub_100018140();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000BE30()
{
  result = swift_getKeyPath();
  qword_100024E70 = result;
  return result;
}

uint64_t sub_10000BE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_1000037A4(&qword_100024958, &qword_100019E20) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_1000037A4(&qword_100024960, &qword_100019E28) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_1000037A4(&qword_100024968, &qword_100019E30) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_100017EF0();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_1000037A4(&qword_100024970, &qword_100019E38);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10000C074, 0, 0);
}

uint64_t sub_10000C074()
{
  v1 = *(v0 + 168);
  sub_100017F70();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10000CF40();
  *v4 = v0;
  v4[1] = sub_10000C158;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_10000EEB8, 0, &type metadata for AutomaticInstallSecurityResponsesEntity, v5);
}

uint64_t sub_10000C158()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10000C254, 0, 0);
}

uint64_t sub_10000C254()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_100017F70();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_100017F70();
  *(v0 + 313) = *(v0 + 312);
  if (qword_100024378 != -1)
  {
    swift_once();
  }

  v5 = qword_100024E70;
  *(v0 + 288) = qword_100024E70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10000AD4C(&qword_100024948, &qword_100024950, &qword_100019E10);
  *v7 = v0;
  v7[1] = sub_10000C3B8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10000C3B8()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_10000C7A0;
  }

  else
  {
    v6 = sub_10000C528;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000C528()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_100017F70();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1000182B0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000182E0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000BA84();
  sub_10000D63C();
  sub_100017EB0();
  (*(v3 + 16))(v1, v12, v2);
  sub_100017ED0();
  sub_100017F10();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000C7A0()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v6 = v0[1];
  v7 = v0[38];

  return v6();
}

uint64_t sub_10000C868()
{
  v0 = sub_1000037A4(&qword_100024978, &qword_100019E40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100024378 != -1)
  {
    swift_once();
  }

  sub_100018180();

  sub_10000D63C();
  sub_10000AD4C(&qword_100024980, &qword_100024978, &qword_100019E40);
  sub_100018170();
  return (*(v1 + 8))(v4, v0);
}

__n128 sub_10000C9DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_100017F70();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_10000CA20(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_100017F80();
}

void (*sub_10000CA88(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_10000CAFC;
}

uint64_t sub_10000CB00@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100017F70();
  *a1 = v5;
  return result;
}

uint64_t sub_10000CB3C(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100017F80();
}

void (*sub_10000CB74(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100017F60();
  return sub_10000EEBC;
}

uint64_t sub_10000CBE8()
{
  if (qword_100024378 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000CC64()
{
  result = qword_100024888;
  if (!qword_100024888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024888);
  }

  return result;
}

unint64_t sub_10000CCBC()
{
  result = qword_100024890;
  if (!qword_100024890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024890);
  }

  return result;
}

uint64_t sub_10000CDCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024370 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024988, &unk_100019E70);
  v3 = sub_100003714(v2, qword_100024E58);

  return sub_10000EE48(v3, a1);
}

uint64_t sub_10000CE50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000099E0;

  return sub_10000BE94(a1, v5, v4);
}

uint64_t sub_10000CEFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E498();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000CF40()
{
  result = qword_100024898;
  if (!qword_100024898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024898);
  }

  return result;
}

uint64_t sub_10000CFFC()
{
  v1 = *(v0 + 16);
  *v1 = sub_10000E900() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000D08C()
{
  sub_10000EA34(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D0F0()
{
  v0 = sub_1000037A4(&qword_1000248A8, &qword_1000199D0);
  sub_1000040DC(v0, qword_100024E78);
  sub_100003714(v0, qword_100024E78);
  sub_10000EDE8();
  return sub_100017DA0();
}

uint64_t sub_10000D174(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_100018340() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000D204, 0, 0);
}

uint64_t sub_10000D204()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000037A4(&qword_100024880, qword_100019830);
  sub_100018320();
  sub_10000AD4C(&qword_100024948, &qword_100024950, &qword_100019E10);
  v3 = sub_100018310();
  *v2 = 0xD000000000000027;
  v2[1] = 0x8000000100019CF0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D344()
{
  v0 = qword_100024860;

  return v0;
}

unint64_t sub_10000D380()
{
  result = qword_1000248B0;
  if (!qword_1000248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248B0);
  }

  return result;
}

unint64_t sub_10000D3D8()
{
  result = qword_1000248B8;
  if (!qword_1000248B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248B8);
  }

  return result;
}

unint64_t sub_10000D430()
{
  result = qword_1000248C0;
  if (!qword_1000248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248C0);
  }

  return result;
}

uint64_t sub_10000D4D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024380 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_1000248A8, &qword_1000199D0);
  v3 = sub_100003714(v2, qword_100024E78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000D58C()
{
  result = qword_1000248D0;
  if (!qword_1000248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248D0);
  }

  return result;
}

unint64_t sub_10000D5E4()
{
  result = qword_1000248D8;
  if (!qword_1000248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248D8);
  }

  return result;
}

unint64_t sub_10000D63C()
{
  result = qword_1000248E0;
  if (!qword_1000248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248E0);
  }

  return result;
}

unint64_t sub_10000D694()
{
  result = qword_1000248E8;
  if (!qword_1000248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000248E8);
  }

  return result;
}

uint64_t sub_10000D6F4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000D738@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003714(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000D824(uint64_t a1)
{
  v2 = sub_10000CF40();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000D874()
{
  result = qword_100024900;
  if (!qword_100024900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024900);
  }

  return result;
}

uint64_t sub_10000D8C8(uint64_t a1)
{
  v2 = sub_10000EDE8();

  return UniqueAppEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000099E0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000D9D8(uint64_t a1)
{
  v2 = sub_10000D694();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000DA38()
{
  v0 = sub_1000037A4(&qword_100024920, &qword_100019DC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_1000037A4(&qword_100024928, &qword_100019DD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000BA84();
  sub_1000180D0();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000180C0(v12);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v13._object = 0x800000010001BC50;
  v13._countAndFlagsBits = 0xD000000000000025;
  sub_1000180C0(v13);
  sub_1000180E0();
  v7 = sub_100018020();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024930, &qword_100019DD8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018C60;
  *(v8 + 32) = v7;
  v9 = sub_100018010();

  return v9;
}

uint64_t sub_10000DC9C()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  v2 = sub_100018040();
  v3 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019370;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100018030();

  return v5;
}

uint64_t sub_10000DD80()
{
  v0 = sub_1000037A4(&qword_100024920, &qword_100019DC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_1000037A4(&qword_100024928, &qword_100019DD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000BA84();
  sub_1000180D0();
  v12._object = 0x800000010001BC20;
  v12._countAndFlagsBits = 0xD00000000000002CLL;
  sub_1000180C0(v12);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000180C0(v13);
  sub_1000180E0();
  v7 = sub_100018020();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024930, &qword_100019DD8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018C60;
  *(v8 + 32) = v7;
  v9 = sub_100018010();

  return v9;
}

uint64_t sub_10000DFE4()
{
  v0 = sub_100018090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_10000BA84();
  sub_100018080();
  v5 = sub_100018070();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024648, &qword_1000192C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100018060();

  return v7;
}

uint64_t sub_10000E148()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  v2 = sub_100018040();
  v3 = sub_100018040();
  v4 = sub_100018040();
  v5 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C90;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_100018030();

  return v7;
}

uint64_t sub_10000E258()
{
  if (qword_100024388 != -1)
  {
    swift_once();
  }
}

__n128 sub_10000E2C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000E2D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000E320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000E370(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E37C(uint64_t *a1, int a2)
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

uint64_t sub_10000E3C4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000E498()
{
  v0 = sub_1000037A4(&qword_1000247D8, &qword_100019DE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_100018280();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_100018340();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_1000037A4(&qword_100024938, &qword_100019DE8);
  sub_100018320();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_100017EF0();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10000CF40();
  v27[0] = sub_100017FA0();
  sub_1000037A4(&qword_1000247E0, &qword_100019DF0);
  sub_100018320();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1000184C0();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_100017FB0();
  return v27[0];
}

id sub_10000E900()
{
  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v0 = [*(qword_100024D98 + 16) autoInstallSecurityResponse];
  if (qword_100024358 != -1)
  {
    swift_once();
  }

  v1 = sub_1000183F0();
  sub_100003714(v1, qword_100024848);
  v2 = sub_1000183D0();
  v3 = sub_1000184F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent getting the value of the Automatic Security Response Install: %{BOOL}d", v4, 8u);
  }

  return v0;
}

id sub_10000EA34(char a1)
{
  if (qword_100024358 != -1)
  {
    swift_once();
  }

  v2 = sub_1000183F0();
  sub_100003714(v2, qword_100024848);
  v3 = sub_1000183D0();
  v4 = sub_1000184F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Intent setting the value of the Automatic Security Response Install to: %{BOOL}d", v5, 8u);
  }

  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v6 = qword_100024D98;
  [*(qword_100024D98 + 16) enableAutoInstallSecurityResponse:a1 & 1];
  v7 = *(v6 + 16);

  return [v7 enablePreviousUserSpecifiedAutoInstallSecurityResponse:a1 & 1];
}

uint64_t sub_10000EB8C()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000E498();
  v14 = v5;
  sub_10000BA84();
  sub_100018120();
  v6 = sub_100018100();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v13 = sub_10000E498();
  v14 = v8;
  sub_100018120();
  v9 = sub_100018100();
  v7(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018C70;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  v11 = sub_1000180F0();

  return v11;
}

uint64_t sub_10000ED74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100017F70();
  *a2 = v5;
  return result;
}

uint64_t sub_10000EDB0(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_100017F80();
}

unint64_t sub_10000EDE8()
{
  result = qword_100024940;
  if (!qword_100024940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024940);
  }

  return result;
}

uint64_t sub_10000EE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000037A4(&qword_100024988, &unk_100019E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000EED0()
{
  result = qword_1000249A8;
  if (!qword_1000249A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249A8);
  }

  return result;
}

unint64_t sub_10000EF70()
{
  result = qword_1000249C0;
  if (!qword_1000249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249C0);
  }

  return result;
}

uint64_t sub_10000EFC4()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_100024990);
  sub_100003714(v0, qword_100024990);
  return sub_1000183E0();
}

uint64_t sub_10000F044()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024E98);
  sub_100003714(v0, qword_100024E98);
  return sub_100018320();
}

uint64_t sub_10000F0A8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100018340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100018320();
  sub_100018320();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 0, 1, v8);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v12 = *(v9 + 16);
  v13 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C60;
  sub_100018320();
  sub_100018320();
  v11(v5, 0, 1, v8);
  v14 = v18;
  sub_100018150();
  v15 = sub_100018140();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_10000F330(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(*(sub_1000037A4(&qword_100024A60, &qword_10001A3C8) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_100017F40();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000F428, 0, 0);
}

uint64_t sub_10000F428()
{
  v11 = v0;
  if (qword_100024390 != -1)
  {
    swift_once();
  }

  v1 = sub_1000183F0();
  v0[9] = sub_100003714(v1, qword_100024990);
  v2 = sub_1000183D0();
  v3 = sub_100018500();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315650;
    v0[3] = &type metadata for SoftwareUpdateBetaProgramIntent;
    sub_1000037A4(&qword_100024A70, &unk_10001A3D0);
    v5 = sub_100018480();
    v7 = sub_1000039E0(v5, v6, &v10);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v10);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 49;
    _os_log_impl(&_mh_execute_header, v2, v3, "🐞 %s | %s | line:%ld => start to refreshBetaUpdates", v4, 0x20u);
    swift_arrayDestroy();
  }

  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_10000F684;

  return sub_100001D4C();
}

uint64_t sub_10000F684(void *a1)
{
  v3 = *(*v1 + 80);
  v5 = *v1;

  return _swift_task_switch(sub_10000F788, 0, 0);
}

uint64_t sub_10000F788()
{
  v18 = v0;
  v1 = v0[9];
  v2 = sub_1000183D0();
  v3 = sub_100018500();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v4 = 136315650;
    v0[2] = &type metadata for SoftwareUpdateBetaProgramIntent;
    sub_1000037A4(&qword_100024A70, &unk_10001A3D0);
    v5 = sub_100018480();
    v7 = sub_1000039E0(v5, v6, &v17);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000039E0(0x286D726F66726570, 0xE900000000000029, &v17);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 51;
    _os_log_impl(&_mh_execute_header, v2, v3, "🐞 %s | %s | line:%ld => finish to refreshBetaUpdates", v4, 0x20u);
    swift_arrayDestroy();
  }

  v8 = v0[5];
  sub_100018360();
  v9 = sub_100018370();
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    sub_100017F50();
    sub_1000111CC();
    sub_100017F00();
    (*(v12 + 8))(v11, v13);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_10000F9FC()
{
  v0 = sub_1000037A4(&qword_100024A88, &qword_10001A3E8);
  sub_1000040DC(v0, qword_100024EB0);
  sub_100003714(v0, qword_100024EB0);
  sub_10000EED0();
  return sub_100018270();
}

uint64_t sub_10000FA80()
{
  v0 = sub_1000037A4(&qword_1000249B8, &qword_100019E90);
  sub_1000040DC(v0, qword_100024EC8);
  sub_100003714(v0, qword_100024EC8);
  sub_100011224();
  return sub_100017DA0();
}

uint64_t sub_10000FB38()
{
  v0 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100018340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000182D0();
  sub_1000040DC(v7, qword_100024EE0);
  sub_100003714(v7, qword_100024EE0);
  sub_100018320();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000182C0();
}

uint64_t sub_10000FCA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000243A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024A88, &qword_10001A3E8);
  v3 = sub_100003714(v2, qword_100024EB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000FD5C()
{
  result = qword_1000249C8;
  if (!qword_1000249C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249C8);
  }

  return result;
}

unint64_t sub_10000FDB4()
{
  result = qword_1000249D0;
  if (!qword_1000249D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249D0);
  }

  return result;
}

unint64_t sub_10000FE0C()
{
  result = qword_1000249D8;
  if (!qword_1000249D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249D8);
  }

  return result;
}

uint64_t sub_10000FEA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000243A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_1000249B8, &qword_100019E90);
  v3 = sub_100003714(v2, qword_100024EC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000FF58()
{
  sub_100011278();
  v1 = sub_100018220();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000FFC8()
{
  result = qword_1000249E8;
  if (!qword_1000249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249E8);
  }

  return result;
}

unint64_t sub_100010020()
{
  result = qword_1000249F0;
  if (!qword_1000249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249F0);
  }

  return result;
}

unint64_t sub_100010074()
{
  result = qword_1000249F8;
  if (!qword_1000249F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000249F8);
  }

  return result;
}

unint64_t sub_1000100CC()
{
  result = qword_100024A00;
  if (!qword_100024A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A00);
  }

  return result;
}

uint64_t sub_100010120@<X0>(uint64_t *a1@<X8>)
{
  sub_100011224();
  result = sub_100017DC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000101E0(uint64_t a1)
{
  v2 = sub_10000EED0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010230()
{
  result = qword_100024A18;
  if (!qword_100024A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A18);
  }

  return result;
}

uint64_t sub_100010284(uint64_t a1)
{
  v2 = sub_100011224();

  return UniqueAppEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000102D0(uint64_t a1)
{
  v2 = sub_1000100CC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100010320()
{
  result = qword_100024A20;
  if (!qword_100024A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A20);
  }

  return result;
}

void (*sub_1000103C0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_100005F24;
}

unint64_t sub_100010438()
{
  result = qword_100024A28;
  if (!qword_100024A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A28);
  }

  return result;
}

unint64_t sub_100010490()
{
  result = qword_100024A30;
  if (!qword_100024A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A30);
  }

  return result;
}

unint64_t sub_1000104E8()
{
  result = qword_100024A38;
  if (!qword_100024A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A38);
  }

  return result;
}

uint64_t sub_1000105FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000099E0;

  return sub_10000F330(a1);
}

uint64_t sub_100010694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010ED0();
  *a1 = result;
  return result;
}

uint64_t sub_1000106BC(uint64_t a1)
{
  v2 = sub_100010438();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000106F8()
{
  v0 = sub_1000037A4(&qword_100024A48, &qword_10001A3A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  sub_100010438();
  sub_1000180A0();
  v23 = sub_100018020();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1000180A0();
  v22 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v21 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v20 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v19 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v18 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v17 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v16 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v6 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v7 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v8 = sub_100018020();
  v5(v4, v0);
  sub_1000037A4(&qword_100024A50, &qword_10001A3B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019E80;
  v10 = v22;
  *(v9 + 32) = v23;
  *(v9 + 40) = v10;
  v11 = v20;
  *(v9 + 48) = v21;
  *(v9 + 56) = v11;
  v12 = v18;
  *(v9 + 64) = v19;
  *(v9 + 72) = v12;
  v13 = v16;
  *(v9 + 80) = v17;
  *(v9 + 88) = v13;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v14 = sub_100018010();

  return v14;
}

uint64_t sub_100010BB8()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100010ED0();
  sub_100010438();
  sub_100018120();
  v5 = sub_100018100();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_1000180F0();

  return v7;
}

uint64_t sub_100010D1C()
{
  v0 = sub_100017FF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010438();
  sub_100017FE0();
  v5 = sub_100017FD0();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024630, &unk_100019280);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100017FC0();

  return v7;
}

uint64_t sub_100010ED0()
{
  v21 = sub_100018280();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100018340();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000037A4(&qword_100024A58, &qword_10001A3B8);
  sub_100018320();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100017EF0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000EED0();
  return sub_100017FA0();
}

unint64_t sub_1000111CC()
{
  result = qword_100024A68;
  if (!qword_100024A68)
  {
    sub_100017F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A68);
  }

  return result;
}

unint64_t sub_100011224()
{
  result = qword_100024A78;
  if (!qword_100024A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A78);
  }

  return result;
}

unint64_t sub_100011278()
{
  result = qword_100024A80;
  if (!qword_100024A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024A80);
  }

  return result;
}

uint64_t sub_1000112DC()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_100024A90);
  sub_100003714(v0, qword_100024A90);
  return sub_1000183E0();
}

unint64_t sub_10001136C()
{
  result = qword_100024AA8;
  if (!qword_100024AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AA8);
  }

  return result;
}

uint64_t sub_1000113C0()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024EF8);
  sub_100003714(v0, qword_100024EF8);
  return sub_100018320();
}

uint64_t sub_100011424@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100018340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100018320();
  sub_100018320();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 0, 1, v8);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v12 = *(v9 + 16);
  v13 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C70;
  sub_100018320();
  sub_100018320();
  sub_100018320();
  v11(v5, 0, 1, v8);
  v14 = v18;
  sub_100018150();
  v15 = sub_100018140();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

unint64_t sub_1000116D8()
{
  result = qword_100024AB0;
  if (!qword_100024AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AB0);
  }

  return result;
}

unint64_t sub_100011730()
{
  result = qword_100024AB8;
  if (!qword_100024AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AB8);
  }

  return result;
}

uint64_t sub_100011808@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000243C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100018340();
  v3 = sub_100003714(v2, qword_100024EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000118B4(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100011958;

  return sub_100012368();
}

uint64_t sub_100011958(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return _swift_task_switch(sub_100011AB4, 0, 0);
  }
}

uint64_t sub_100011AB4()
{
  v1 = v0[6];
  v2 = v0[4];
  v0[2] = v0[7];
  v0[3] = v1;
  sub_10000BA2C();
  sub_100017F20();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100011B50(uint64_t a1)
{
  v2 = sub_10001136C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011BA0()
{
  v0 = sub_1000037A4(&qword_100024AC0, &qword_10001A6E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - v3;
  sub_10001136C();
  sub_1000180A0();
  v26 = sub_100018020();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1000180A0();
  v25 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v24 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v23 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v22 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v21 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v20 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v19 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v18 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v6 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v7 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v8 = sub_100018020();
  v5(v4, v0);
  sub_1000180A0();
  v9 = sub_100018020();
  v5(v4, v0);
  sub_1000037A4(&qword_100024AC8, &qword_10001A6E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001A3F0;
  v11 = v25;
  *(v10 + 32) = v26;
  *(v10 + 40) = v11;
  v12 = v23;
  *(v10 + 48) = v24;
  *(v10 + 56) = v12;
  v13 = v21;
  *(v10 + 64) = v22;
  *(v10 + 72) = v13;
  v14 = v19;
  *(v10 + 80) = v20;
  *(v10 + 88) = v14;
  *(v10 + 96) = v18;
  *(v10 + 104) = v6;
  *(v10 + 112) = v7;
  *(v10 + 120) = v8;
  *(v10 + 128) = v9;
  v15 = sub_100018010();

  return v15;
}

uint64_t sub_1000120E0()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001136C();
  sub_100018120();
  v5 = sub_100018100();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_1000180F0();

  return v7;
}

uint64_t sub_100012234()
{
  if (qword_1000243C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001229C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000122E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100012368()
{
  v1 = *(*(sub_100018340() - 8) + 64) + 15;
  *(v0 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1000123F4, 0, 0);
}

uint64_t sub_1000123F4()
{
  if (qword_1000243B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000183F0();
  *(v0 + 48) = sub_100003714(v1, qword_100024A90);
  v2 = sub_1000183D0();
  v3 = sub_1000184F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Resolving an intent to check for the latest Software Update", v4, 2u);
  }

  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100012578;

  return sub_100002B08();
}

uint64_t sub_100012578(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  v7 = *v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 33) = a3;

  if (v3)
  {
    v8 = *(v5 + 40);

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1000126CC, 0, 0);
  }
}

uint64_t sub_1000126CC()
{
  v116 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 33);
  sub_1000130F0(v2, v1, v4);
  v5 = sub_1000183D0();
  v6 = sub_1000184F0();
  sub_100013158(v2, v1, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 33);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v114 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    *(v0 + 32) = v9;
    sub_1000130F0(v8, v7, v9);
    sub_1000037A4(&qword_100024530, &qword_100018B50);
    v12 = sub_100018480();
    v14 = sub_1000039E0(v12, v13, &v114);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished to scan for update with results: %s", v10, 0xCu);
    sub_1000041B4(v11);
  }

  v15 = *(v0 + 33);
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        v17 = *(v0 + 64);
        v16 = *(v0 + 72);
        v118._countAndFlagsBits = 0xD00000000000002ELL;
        v118._object = 0x800000010001C3D0;
        v18 = sub_1000183C0(v118);
        v20 = v19;
        v21 = v17;
        v22 = v16;
        v23 = 3;
LABEL_17:
        sub_100013158(v21, v22, v23);
        goto LABEL_18;
      }

      v51 = *(v0 + 40);
      sub_100018320();
      v52 = sub_100018470();
      v54 = v53;
      sub_1000131C0();
      swift_allocError();
      *v55 = v52;
      *(v55 + 8) = v54;
      *(v55 + 16) = 0;
      swift_willThrow();
      goto LABEL_28;
    }

    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    sub_100013104(v36, v35, 2);
    sub_100013104(v36, v35, 2);
    v37 = [v36 humanReadableUpdateName];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100018450();
      v41 = v40;

      v42 = sub_100004394();
      v45 = *(v0 + 64);
      v44 = *(v0 + 72);
      if (v43)
      {
        v46 = v42;
        v47 = v43;
        v120._object = 0x800000010001C2F0;
        v120._countAndFlagsBits = 0xD000000000000038;
        sub_1000183C0(v120);
        sub_1000037A4(&qword_100024AD8, &qword_10001A6F8);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_100018C70;
        *(v48 + 56) = &type metadata for String;
        v49 = sub_100013214();
        *(v48 + 32) = v46;
        *(v48 + 40) = v47;
        *(v48 + 96) = &type metadata for String;
        *(v48 + 104) = v49;
        *(v48 + 64) = v49;
        *(v48 + 72) = v39;
        *(v48 + 80) = v41;
        v18 = sub_100018460();
        v20 = v50;

        sub_100013158(v45, v44, 2);
        sub_100013158(v45, v44, 2);
        sub_10001316C(v45, v44, 2);
        goto LABEL_18;
      }

      sub_1000131C0();
      swift_allocError();
      *v93 = 0xD000000000000028;
      *(v93 + 8) = 0x800000010001C2C0;
      *(v93 + 16) = 1;
    }

    else
    {
      v45 = *(v0 + 64);
      v44 = *(v0 + 72);
      v114 = 0;
      v115 = 0xE000000000000000;
      sub_100018580(58);
      v122._object = 0x800000010001C280;
      v122._countAndFlagsBits = 0xD000000000000038;
      sub_1000184A0(v122);
      sub_100013104(v45, v44, 2);
      v76 = [v36 description];
      v77 = sub_100018450();
      v79 = v78;

      sub_100013158(v45, v44, 2);
      v123._countAndFlagsBits = v77;
      v123._object = v79;
      sub_1000184A0(v123);

      v80 = v114;
      v81 = v115;
      sub_1000131C0();
      swift_allocError();
      *v82 = v80;
      *(v82 + 8) = v81;
      *(v82 + 16) = 0;
    }

    swift_willThrow();
    sub_100013158(v45, v44, 2);
    sub_100013158(v45, v44, 2);
    v90 = v45;
    v91 = v44;
    v92 = 2;
    goto LABEL_25;
  }

  if (!*(v0 + 33))
  {
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    sub_100013104(v25, v24, 0);
    sub_100013104(v25, v24, 0);
    v26 = [v25 humanReadableUpdateName];
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    if (v26)
    {
      v29 = v26;
      v30 = sub_100018450();
      v32 = v31;

      v119._countAndFlagsBits = 0xD00000000000002BLL;
      v119._object = 0x800000010001C3A0;
      sub_1000183B0(v119);
      sub_1000037A4(&qword_100024AD8, &qword_10001A6F8);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100018C60;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100013214();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      v18 = sub_100018460();
      v20 = v34;

      sub_100013158(v28, v27, 0);
      sub_100013158(v28, v27, 0);
      sub_10001316C(v28, v27, 0);
LABEL_18:
      v73 = *(v0 + 40);

      v74 = *(v0 + 8);

      return v74(v18, v20);
    }

    v114 = 0;
    v115 = 0xE000000000000000;
    sub_100018580(58);
    v124._object = 0x800000010001C280;
    v124._countAndFlagsBits = 0xD000000000000038;
    sub_1000184A0(v124);
    sub_100013104(v28, v27, 0);
    v83 = [v25 description];
    v84 = sub_100018450();
    v86 = v85;

    sub_100013158(v28, v27, 0);
    v125._countAndFlagsBits = v84;
    v125._object = v86;
    sub_1000184A0(v125);

    v87 = v114;
    v88 = v115;
    sub_1000131C0();
    swift_allocError();
    *v89 = v87;
    *(v89 + 8) = v88;
    *(v89 + 16) = 0;
    swift_willThrow();
    sub_100013158(v28, v27, 0);
    sub_100013158(v28, v27, 0);
    v90 = v28;
    v91 = v27;
    v92 = 0;
LABEL_25:
    sub_10001316C(v90, v91, v92);
    goto LABEL_28;
  }

  v56 = *(v0 + 64);
  v57 = *(v0 + 72);
  sub_1000130F0(v56, v57, 1);
  v58 = v56;
  v59 = v57;
  v60 = [v58 humanReadableUpdateName];
  if (v60)
  {
    v61 = v60;
    v62 = sub_100018450();
    v64 = v63;

    v65 = [v59 humanReadableUpdateName];
    if (v65)
    {
      v112 = v62;
      v113 = *(v0 + 72);
      v66 = *(v0 + 64);
      v67 = v65;
      v111 = sub_100018450();
      v69 = v68;

      v121._countAndFlagsBits = 0xD00000000000002CLL;
      v121._object = 0x800000010001C370;
      sub_1000183B0(v121);
      sub_1000037A4(&qword_100024AD8, &qword_10001A6F8);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100018C70;
      *(v70 + 56) = &type metadata for String;
      v71 = sub_100013214();
      *(v70 + 32) = v112;
      *(v70 + 40) = v64;
      *(v70 + 96) = &type metadata for String;
      *(v70 + 104) = v71;
      *(v70 + 64) = v71;
      *(v70 + 72) = v111;
      *(v70 + 80) = v69;
      v18 = sub_100018460();
      v20 = v72;

      sub_100013158(v66, v113, 1);
      v21 = v66;
      v22 = v113;
      v23 = 1;
      goto LABEL_17;
    }
  }

  v95 = *(v0 + 64);
  v94 = *(v0 + 72);
  v114 = 0;
  v115 = 0xE000000000000000;
  sub_100018580(76);
  v126._countAndFlagsBits = 0xD00000000000003CLL;
  v126._object = 0x800000010001C330;
  sub_1000184A0(v126);
  v96 = v58;
  v97 = [v96 description];
  v98 = sub_100018450();
  v100 = v99;

  v127._countAndFlagsBits = v98;
  v127._object = v100;
  sub_1000184A0(v127);

  v128._countAndFlagsBits = 0x616E7265746C410ALL;
  v128._object = 0xEC000000203A6574;
  sub_1000184A0(v128);
  v101 = v59;
  v102 = [v101 description];
  v103 = sub_100018450();
  v105 = v104;

  v129._countAndFlagsBits = v103;
  v129._object = v105;
  sub_1000184A0(v129);

  v106 = v114;
  v107 = v115;
  sub_1000131C0();
  swift_allocError();
  *v108 = v106;
  *(v108 + 8) = v107;
  *(v108 + 16) = 0;
  swift_willThrow();

  sub_100013158(v95, v94, 1);
  sub_100013158(v95, v94, 1);
LABEL_28:
  v109 = *(v0 + 40);

  v110 = *(v0 + 8);

  return v110();
}

id sub_1000130F0(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100013104(result, a2, a3);
  }

  return result;
}

id sub_100013104(id result, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

void sub_100013158(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_10001316C(a1, a2, a3);
  }
}

void sub_10001316C(void *a1, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

unint64_t sub_1000131C0()
{
  result = qword_100024AD0;
  if (!qword_100024AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AD0);
  }

  return result;
}

unint64_t sub_100013214()
{
  result = qword_100024AE0;
  if (!qword_100024AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AE0);
  }

  return result;
}

unint64_t sub_10001326C()
{
  result = qword_100024AE8;
  if (!qword_100024AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AE8);
  }

  return result;
}

unint64_t sub_1000132C4()
{
  result = qword_100024AF0;
  if (!qword_100024AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AF0);
  }

  return result;
}

uint64_t sub_100013318()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024F18);
  sub_100003714(v0, qword_100024F18);
  return sub_100018320();
}

uint64_t sub_10001337C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100018340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100018320();
  sub_100018320();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 0, 1, v8);
  sub_1000037A4(&qword_100024690, &qword_1000192F0);
  v12 = *(v9 + 16);
  v13 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100018C60;
  sub_100018320();
  sub_100018320();
  v11(v5, 0, 1, v8);
  v14 = v18;
  sub_100018150();
  v15 = sub_100018140();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

void (*sub_100013604(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_100005F24;
}

unint64_t sub_10001367C()
{
  result = qword_100024AF8;
  if (!qword_100024AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024AF8);
  }

  return result;
}

uint64_t sub_1000136D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014BD0();
  v5 = sub_100014B7C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001373C()
{
  result = qword_100024B00;
  if (!qword_100024B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B00);
  }

  return result;
}

unint64_t sub_100013794()
{
  result = qword_100024B08;
  if (!qword_100024B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B08);
  }

  return result;
}

uint64_t sub_100013874(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100014BD0();
  v7 = sub_100014C24();
  v8 = sub_100014B7C();
  *v5 = v2;
  v5[1] = sub_100006384;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100013940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001482C();
  *a1 = result;
  return result;
}

uint64_t sub_100013968(uint64_t a1)
{
  v2 = sub_10001367C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000139A4()
{
  result = qword_100024B10;
  if (!qword_100024B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B10);
  }

  return result;
}

unint64_t sub_100013A44()
{
  result = qword_100024B28;
  if (!qword_100024B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B28);
  }

  return result;
}

uint64_t sub_100013A98()
{
  v0 = sub_1000037A4(&qword_100024BA8, &qword_10001AC78);
  sub_1000040DC(v0, qword_100024F30);
  sub_100003714(v0, qword_100024F30);
  sub_1000139A4();
  return sub_100018270();
}

uint64_t sub_100013B1C()
{
  v0 = sub_1000037A4(&qword_100024B20, &qword_10001A8A0);
  sub_1000040DC(v0, qword_100024F48);
  sub_100003714(v0, qword_100024F48);
  sub_100014B28();
  return sub_100017DA0();
}

uint64_t sub_100013BA0()
{
  v0 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100018340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000182D0();
  sub_1000040DC(v7, qword_100024F60);
  sub_100003714(v7, qword_100024F60);
  sub_100018320();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000182C0();
}

uint64_t sub_100013D18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000243D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024BA8, &qword_10001AC78);
  v3 = sub_100003714(v2, qword_100024F30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100013DD0()
{
  result = qword_100024B30;
  if (!qword_100024B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B30);
  }

  return result;
}

unint64_t sub_100013E28()
{
  result = qword_100024B38;
  if (!qword_100024B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B38);
  }

  return result;
}

uint64_t sub_100013EC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000243E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024B20, &qword_10001A8A0);
  v3 = sub_100003714(v2, qword_100024F48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100013F74()
{
  sub_100014B7C();
  v1 = sub_100018220();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100013FE4()
{
  result = qword_100024B48;
  if (!qword_100024B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B48);
  }

  return result;
}

unint64_t sub_10001403C()
{
  result = qword_100024B50;
  if (!qword_100024B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B50);
  }

  return result;
}

unint64_t sub_100014094()
{
  result = qword_100024B58;
  if (!qword_100024B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B58);
  }

  return result;
}

unint64_t sub_1000140EC()
{
  result = qword_100024B60;
  if (!qword_100024B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B60);
  }

  return result;
}

uint64_t sub_100014140@<X0>(uint64_t *a1@<X8>)
{
  sub_100014B28();
  result = sub_100017DC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000141FC(uint64_t a1)
{
  v2 = sub_1000139A4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001424C()
{
  result = qword_100024B78;
  if (!qword_100024B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B78);
  }

  return result;
}

uint64_t sub_1000142A0(uint64_t a1)
{
  v2 = sub_100014B28();

  return UniqueAppEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000142EC(uint64_t a1)
{
  v2 = sub_1000140EC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014338()
{
  v0 = sub_1000037A4(&qword_100024B80, &qword_10001AC58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_10001367C();
  sub_1000180A0();
  v5 = sub_100018020();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1000180A0();
  v7 = sub_100018020();
  v6(v4, v0);
  sub_1000180A0();
  v8 = sub_100018020();
  v6(v4, v0);
  sub_1000037A4(&qword_100024B88, &qword_10001AC60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001A700;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_100018010();

  return v10;
}

uint64_t sub_100014558()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10001482C();
  sub_10001367C();
  sub_100018120();
  v5 = sub_100018100();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_1000180F0();

  return v7;
}

uint64_t sub_1000146BC()
{
  v0 = sub_100017FF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001367C();
  sub_100017FE0();
  v5 = sub_100017FD0();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024630, &unk_100019280);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100017FC0();

  return v7;
}

uint64_t sub_10001482C()
{
  v21 = sub_100018280();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100018340();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000037A4(&qword_100024B90, &qword_10001AC68);
  sub_100018320();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100017EF0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_1000139A4();
  return sub_100017FA0();
}

unint64_t sub_100014B28()
{
  result = qword_100024B98;
  if (!qword_100024B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024B98);
  }

  return result;
}

unint64_t sub_100014B7C()
{
  result = qword_100024BA0;
  if (!qword_100024BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BA0);
  }

  return result;
}

unint64_t sub_100014BD0()
{
  result = qword_100024BB0;
  if (!qword_100024BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BB0);
  }

  return result;
}

unint64_t sub_100014C24()
{
  result = qword_100024BB8;
  if (!qword_100024BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BB8);
  }

  return result;
}

uint64_t sub_100014C8C(uint64_t a1)
{
  v2 = sub_100014DDC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100014D34();
  sub_1000183A0();
  return 0;
}

unint64_t sub_100014D34()
{
  result = qword_100024BC0;
  if (!qword_100024BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BC0);
  }

  return result;
}

unint64_t sub_100014DDC()
{
  result = qword_100024BC8;
  if (!qword_100024BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BC8);
  }

  return result;
}

unint64_t sub_100014E44()
{
  result = qword_100024BF8;
  if (!qword_100024BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BF8);
  }

  return result;
}

uint64_t sub_100014EDC()
{
  v0 = sub_1000183F0();
  sub_1000040DC(v0, qword_100024BD0);
  sub_100003714(v0, qword_100024BD0);
  return sub_1000183E0();
}

uint64_t sub_100014F5C()
{
  v0 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100018340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000182D0();
  sub_1000040DC(v7, qword_100024F78);
  sub_100003714(v7, qword_100024F78);
  sub_100018320();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000182C0();
}

uint64_t sub_1000150CC()
{
  v0 = sub_100018340();
  sub_1000040DC(v0, qword_100024F90);
  sub_100003714(v0, qword_100024F90);
  return sub_100018320();
}

uint64_t sub_100015130()
{
  v0 = sub_1000037A4(&qword_100024988, &unk_100019E70);
  sub_1000040DC(v0, qword_100024FA8);
  v1 = sub_100003714(v0, qword_100024FA8);
  sub_100018130();
  v2 = sub_100018140();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000151F0()
{
  result = swift_getKeyPath();
  qword_100024FC0 = result;
  return result;
}

uint64_t sub_100015218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_1000037A4(&qword_100024958, &qword_100019E20) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_1000037A4(&qword_100024960, &qword_100019E28) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_1000037A4(&qword_100024CE0, &qword_10001B310) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_100017EF0();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_1000037A4(&qword_100024CE8, &qword_10001B318);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000153F8, 0, 0);
}

uint64_t sub_1000153F8()
{
  v1 = *(v0 + 168);
  sub_100017F70();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000160C0();
  *v4 = v0;
  v4[1] = sub_1000154DC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_100017D58, 0, &type metadata for AutomaticDownloadUpdatesEntity, v5);
}

uint64_t sub_1000154DC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000155D8, 0, 0);
}

uint64_t sub_1000155D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_100017F70();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_100017F70();
  *(v0 + 313) = *(v0 + 312);
  if (qword_100024410 != -1)
  {
    swift_once();
  }

  v5 = qword_100024FC0;
  *(v0 + 288) = qword_100024FC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10000AD4C(&qword_100024CD0, &qword_100024CD8, &qword_10001B300);
  *v7 = v0;
  v7[1] = sub_10001573C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10001573C()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_10000C7A0;
  }

  else
  {
    v6 = sub_1000158AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000158AC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_100017F70();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1000182B0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000182E0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100014E44();
  sub_1000167B4();
  sub_100017EB0();
  (*(v3 + 16))(v1, v12, v2);
  sub_100017ED0();
  sub_100017F10();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100015B28()
{
  v0 = sub_1000037A4(&qword_100024CF0, &qword_10001B320);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100024410 != -1)
  {
    swift_once();
  }

  sub_100018180();

  sub_1000167B4();
  sub_10000AD4C(&qword_100024CF8, &qword_100024CF0, &qword_10001B320);
  sub_100018170();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100015C9C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100017F60();
  return sub_10000CAFC;
}

void (*sub_100015D10(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100017F60();
  return sub_10000EEBC;
}

uint64_t sub_100015D84()
{
  if (qword_100024410 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100015DE4()
{
  result = qword_100024C10;
  if (!qword_100024C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C10);
  }

  return result;
}

unint64_t sub_100015E3C()
{
  result = qword_100024C18;
  if (!qword_100024C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C18);
  }

  return result;
}

uint64_t sub_100015F4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024408 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024988, &unk_100019E70);
  v3 = sub_100003714(v2, qword_100024FA8);

  return sub_10000EE48(v3, a1);
}

uint64_t sub_100015FD0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000099E0;

  return sub_100015218(a1, v5, v4);
}

uint64_t sub_10001607C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000173BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000160C0()
{
  result = qword_100024C20;
  if (!qword_100024C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C20);
  }

  return result;
}

uint64_t sub_10001617C()
{
  v1 = *(v0 + 16);
  *v1 = sub_100017824() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001620C()
{
  sub_100017958(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016270()
{
  v0 = sub_1000037A4(&qword_100024C30, &qword_10001AEE0);
  sub_1000040DC(v0, qword_100024FC8);
  sub_100003714(v0, qword_100024FC8);
  sub_100017CF8();
  return sub_100017DA0();
}

uint64_t sub_1000162F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_100018340() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100016384, 0, 0);
}

uint64_t sub_100016384()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000037A4(&qword_100024C08, qword_10001AD40);
  sub_100018320();
  sub_10000AD4C(&qword_100024CD0, &qword_100024CD8, &qword_10001B300);
  v3 = sub_100018310();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x800000010001B1F0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000164C8()
{
  v0 = qword_100024BE8;

  return v0;
}

unint64_t sub_100016504()
{
  result = qword_100024C38;
  if (!qword_100024C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C38);
  }

  return result;
}

unint64_t sub_10001655C()
{
  result = qword_100024C40;
  if (!qword_100024C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C40);
  }

  return result;
}

unint64_t sub_1000165B4()
{
  result = qword_100024C48;
  if (!qword_100024C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C48);
  }

  return result;
}

uint64_t sub_10001664C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100024418 != -1)
  {
    swift_once();
  }

  v2 = sub_1000037A4(&qword_100024C30, &qword_10001AEE0);
  v3 = sub_100003714(v2, qword_100024FC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100016704()
{
  result = qword_100024C58;
  if (!qword_100024C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C58);
  }

  return result;
}

unint64_t sub_10001675C()
{
  result = qword_100024C60;
  if (!qword_100024C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C60);
  }

  return result;
}

unint64_t sub_1000167B4()
{
  result = qword_100024C68;
  if (!qword_100024C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C68);
  }

  return result;
}

unint64_t sub_10001680C()
{
  result = qword_100024C70;
  if (!qword_100024C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C70);
  }

  return result;
}

uint64_t sub_1000168DC(uint64_t a1)
{
  v2 = sub_1000160C0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001692C()
{
  result = qword_100024C88;
  if (!qword_100024C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C88);
  }

  return result;
}

uint64_t sub_100016980(uint64_t a1)
{
  v2 = sub_100017CF8();

  return UniqueAppEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000169CC(uint64_t a1)
{
  v2 = sub_10001680C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100016A2C()
{
  v0 = sub_1000037A4(&qword_100024CA8, &qword_10001B2B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_1000037A4(&qword_100024CB0, &qword_10001B2C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100014E44();
  sub_1000180D0();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000180C0(v12);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v13._object = 0x800000010001C560;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000180C0(v13);
  sub_1000180E0();
  v7 = sub_100018020();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024CB8, &unk_10001B2C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018C60;
  *(v8 + 32) = v7;
  v9 = sub_100018010();

  return v9;
}

uint64_t sub_100016C90(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_1000037A4(&qword_100024CA8, &qword_10001B2B8);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_1000037A4(&qword_100024CB0, &qword_10001B2C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100014E44();
  sub_1000180D0();
  v16._countAndFlagsBits = 0xD000000000000022;
  v16._object = 0x800000010001C510;
  sub_1000180C0(v16);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_1000180B0();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000180C0(v17);
  sub_1000180E0();
  v14 = sub_100018020();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_1000180D0();
  v18._object = 0x800000010001C540;
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1000180C0(v18);
  swift_getKeyPath();
  sub_100018000();

  sub_1000180B0();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1000180C0(v19);
  sub_1000180E0();
  v9 = sub_100018020();
  v7(v4, v8);
  sub_1000037A4(&qword_100024CB8, &unk_10001B2C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018C70;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_100018010();

  return v11;
}

uint64_t sub_100016FE0()
{
  v0 = sub_100018090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100007B58();
  sub_100018000();

  sub_100014E44();
  sub_100018080();
  v5 = sub_100018070();
  (*(v1 + 8))(v4, v0);
  sub_1000037A4(&qword_100024648, &qword_1000192C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018C60;
  *(v6 + 32) = v5;
  v7 = sub_100018060();

  return v7;
}

uint64_t sub_100017144()
{
  v0 = sub_100018040();
  v1 = sub_100018040();
  v2 = sub_100018040();
  v3 = sub_100018040();
  sub_1000037A4(&qword_100024638, &qword_100019DC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019370;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100018030();

  return v5;
}

uint64_t sub_100017224()
{
  if (qword_100024420 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001738C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000173BC()
{
  v0 = sub_1000037A4(&qword_1000247D8, &qword_100019DE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_100018280();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000037A4(&qword_100024660, &unk_1000195F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_1000037A4(&qword_100024668, &qword_1000192E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_100018340();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_1000037A4(&qword_100024CC0, &unk_10001B2D8);
  sub_100018320();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_100017EF0();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000160C0();
  v27[0] = sub_100017FA0();
  sub_1000037A4(&qword_1000247E0, &qword_100019DF0);
  sub_100018320();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1000184C0();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_100017FB0();
  return v27[0];
}

id sub_100017824()
{
  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v0 = [*(qword_100024D98 + 16) isAutomaticDownloadEnabled];
  if (qword_1000243F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000183F0();
  sub_100003714(v1, qword_100024BD0);
  v2 = sub_1000183D0();
  v3 = sub_1000184F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent getting the value of the OS Automatic Download: %{BOOL}d", v4, 8u);
  }

  return v0;
}

id sub_100017958(char a1)
{
  if (qword_1000243F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000183F0();
  sub_100003714(v2, qword_100024BD0);
  v3 = sub_1000183D0();
  v4 = sub_1000184F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Intent setting the value of the OS Automatic Download to: %{BOOL}d", v5, 8u);
  }

  if (qword_100024310 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100024D98 + 16);

  return [v6 enableAutomaticDownload:a1 & 1];
}

uint64_t sub_100017A9C()
{
  v0 = sub_100018110();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000173BC();
  v14 = v5;
  sub_100014E44();
  sub_100018120();
  v6 = sub_100018100();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v13 = sub_1000173BC();
  v14 = v8;
  sub_100018120();
  v9 = sub_100018100();
  v7(v4, v0);
  sub_1000037A4(&qword_100024640, &qword_100019290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018C70;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  v11 = sub_1000180F0();

  return v11;
}

uint64_t sub_100017C84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100017F70();
  *a2 = v5;
  return result;
}

uint64_t sub_100017CC0(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_100017F80();
}

unint64_t sub_100017CF8()
{
  result = qword_100024CC8;
  if (!qword_100024CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024CC8);
  }

  return result;
}