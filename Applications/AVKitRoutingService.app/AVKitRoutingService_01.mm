uint64_t sub_10001DA5C()
{
  v1 = v0[78];
  v2 = v0[71];

  sub_100004B28(v0 + 2);

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return _swift_task_switch(sub_10001D464, 0, 0);
}

uint64_t sub_10001DB00()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return _swift_task_switch(sub_10001DC10, v2, 0);
}

uint64_t sub_10001DC10()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return _swift_task_switch(sub_10001DC9C, 0, 0);
}

uint64_t sub_10001DC9C()
{
  v1 = v0[69];
  v2 = v0[63];

  sub_100008B68(v2, &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_10001CA4C;
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[64];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_10001DD68()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return _swift_task_switch(sub_10001DE94, v3, 0);
}

uint64_t sub_10001DE94()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);

  sub_100004B28((v0 + 96));

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return _swift_task_switch(sub_10001DC9C, 0, 0);
}

uint64_t sub_10001DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for TaskPriority();
  v4[55] = v6;
  v7 = *(v6 - 8);
  v4[56] = v7;
  v8 = *(v7 + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v10 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[59] = v10;
  v11 = *(v10 - 8);
  v4[60] = v11;
  v12 = *(v11 + 64) + 15;
  v4[61] = swift_task_alloc();

  return _swift_task_switch(sub_10001E0D4, 0, 0);
}

uint64_t sub_10001E0D4()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = sub_1000268AC();
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_10001E1EC;
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_10001E1EC()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_10001E648;
  }

  else
  {
    v3 = sub_10001E300;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001E31C()
{
  v1 = v0[58];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:
    v6 = v0[61];
    v7 = v0[57];
    v8 = v0[58];
    v10 = v0[53];
    v9 = v0[54];
    v12 = v0[51];
    v11 = v0[52];

    v13 = v0[1];

    return v13();
  }

  v3 = v0[50];
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_100008B68(v0[58], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000080BC(v15, qword_100086758);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v0[49] = v19;
    *v18 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = sub_10005305C(v21, v20, v0 + 49);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] .AVInputContextInputDeviceDidChange received", v18, 0xCu);
    sub_100004B28(v19);
  }

  v23 = *(v5 + 104);
  v0[65] = v23;

  return _swift_task_switch(sub_10001E6D4, v23, 0);
}

uint64_t sub_10001E648()
{
  *(v0 + 376) = *(v0 + 504);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_10001E6D4()
{
  v1 = *(v0 + 520);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  sub_1000253A0(v2, v3);
  v8 = v1[20];
  v9 = v1[21];
  v10 = v1[22];
  v11 = v1[23];
  v12 = v1[24];
  v13 = v1[25];
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  sub_1000253A0(v8, v9);
  v14 = v1[26];
  v15 = v1[27];
  v16 = v1[28];
  v17 = v1[29];
  v18 = v1[30];
  v19 = v1[31];
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  sub_1000253A0(v14, v15);
  v20 = v1[32];
  v1[32] = 0;

  v21 = v1[33];
  v22 = v1[34];
  v23 = v1[35];
  v24 = v1[36];
  v25 = v1[37];
  v26 = v1[38];
  *(v1 + 33) = 0u;
  *(v1 + 35) = 0u;
  *(v1 + 37) = 0u;
  sub_1000253A0(v21, v22);

  return _swift_task_switch(sub_10001E7B8, 0, 0);
}

uint64_t sub_10001E7B8()
{
  v1 = v0[57];
  v2 = *(v0[64] + 16);
  v0[66] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[67] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001E87C, v2, 0);
}

uint64_t sub_10001E87C()
{
  v57 = v0;
  v1 = *(v0 + 528);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD000000000000027, 0x8000000100068640);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, v0 + 16);

      sub_100026C30(v0 + 16, v0 + 176);
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 384);
        *(v0 + 560) = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        *(v0 + 568) = v8;
        *v8 = v0;
        v8[1] = sub_10001F258;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_24;
      }

      sub_100004B28((v0 + 16));
    }

    else
    {
    }
  }

  v11 = *(v0 + 536);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 424);
  swift_beginAccess();
  sub_100057B90(0xD000000000000027, 0x8000000100068640, v0 + 56);
  sub_100008B68(v0 + 56, &qword_100083900, &qword_100062C00);
  swift_endAccess();
  (*(v13 + 16))(v15, v12, v14);
  v54 = *(v13 + 56);
  v54(v15, 0, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000618C8;
  v17[5] = v11;
  sub_100026A64(v15, v16);
  v55 = *(v13 + 48);
  v18 = v55(v16, 1, v14);

  if (v18 == 1)
  {
    sub_100008B68(*(v0 + 424), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v20 = *(v0 + 440);
    v19 = *(v0 + 448);
    v21 = *(v0 + 424);
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v21, v20);
  }

  v23 = v17[2];
  v22 = v17[3];
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_100008B68(*(v0 + 432), &qword_1000838E0, &qword_100061C70);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1000618D0;
  *(v27 + 24) = v17;
  if (v26 | v24)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v24;
    *(v0 + 240) = v26;
  }

  v52 = *(v0 + 440);
  v53 = *(v0 + 528);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v30 = swift_task_create();
  *(v0 + 544) = v30;
  *(v0 + 120) = sub_100003B30(&qword_100083908, &unk_100061880);
  *(v0 + 128) = &off_10007BC78;
  *(v0 + 96) = v30;
  swift_beginAccess();
  sub_100026B0C((v0 + 96), v0 + 136);
  swift_retain_n();
  v31 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v33 = v1;
  v34 = *(v0 + 160);
  v35 = sub_100026B24(v0 + 136, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_1000257C8(*v38, 0xD000000000000027, 0x8000000100068640, isUniquelyReferenced_nonNull_native, &v56);
  sub_100004B28((v0 + 136));

  *(v33 + 112) = v56;
  swift_endAccess();
  v54(v29, 1, 1, v52);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v30;
  v40[5] = v39;
  v40[6] = 0xD000000000000027;
  v40[7] = 0x8000000100068640;
  sub_100026A64(v29, v28);
  LODWORD(v33) = v55(v28, 1, v52);

  if (v33 == 1)
  {
    sub_100008B68(*(v0 + 408), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    v43 = *(v0 + 408);
    TaskPriority.rawValue.getter();
    (*(v42 + 8))(v43, v41);
  }

  v45 = v40[2];
  v44 = v40[3];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = dispatch thunk of Actor.unownedExecutor.getter();
    v48 = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_100008B68(*(v0 + 416), &qword_1000838E0, &qword_100061C70);
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_1000618E0;
  *(v49 + 24) = v40;
  if (v48 | v46)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v46;
    *(v0 + 272) = v48;
  }

  swift_task_create();

  v50 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 552) = v8;
  *v8 = v0;
  v8[1] = sub_10001EFDC;
  v9 = &type metadata for () + 8;
  v10 = v30;
LABEL_24:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_10001EFDC()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return _swift_task_switch(sub_10001F0EC, v2, 0);
}

uint64_t sub_10001F0EC()
{
  v1 = v0[68];
  v2 = v0[67];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10001F18C, 0, 0);
}

uint64_t sub_10001F18C()
{
  v1 = v0[64];
  v2 = v0[58];

  sub_100008B68(v2, &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_10001E1EC;
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_10001F258()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 528);
  v5 = *v0;

  return _swift_task_switch(sub_10001F384, v3, 0);
}

uint64_t sub_10001F384()
{
  v1 = v0[70];
  v2 = v0[67];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  sub_100004B28(v0 + 2);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10001F18C, 0, 0);
}

uint64_t sub_10001F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for TaskPriority();
  v4[55] = v6;
  v7 = *(v6 - 8);
  v4[56] = v7;
  v8 = *(v7 + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v10 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[59] = v10;
  v11 = *(v10 - 8);
  v4[60] = v11;
  v12 = *(v11 + 64) + 15;
  v4[61] = swift_task_alloc();

  return _swift_task_switch(sub_10001F5D8, 0, 0);
}

uint64_t sub_10001F5D8()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = sub_1000268AC();
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_10001F6F0;
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_10001F6F0()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_100027420;
  }

  else
  {
    v3 = sub_10001F804;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F820()
{
  v1 = v0[58];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:
    v6 = v0[61];
    v7 = v0[57];
    v8 = v0[58];
    v10 = v0[53];
    v9 = v0[54];
    v12 = v0[51];
    v11 = v0[52];

    v13 = v0[1];

    return v13();
  }

  v3 = v0[50];
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_100008B68(v0[58], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000080BC(v15, qword_100086758);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v0[49] = v19;
    *v18 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = sub_10005305C(v21, v20, v0 + 49);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] .mediaServicesWereResetNotification received", v18, 0xCu);
    sub_100004B28(v19);
  }

  v23 = v0[57];
  v24 = *(v5 + 48);
  *(v5 + 48) = 0;

  v25 = *(v5 + 16);
  v0[65] = v25;
  v0[66] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001FB8C, v25, 0);
}

uint64_t sub_10001FB8C()
{
  v57 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD000000000000010, 0x8000000100068780);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, v0 + 16);

      sub_100026C30(v0 + 16, v0 + 176);
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 384);
        *(v0 + 552) = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        *(v0 + 560) = v8;
        *v8 = v0;
        v8[1] = sub_100020568;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_24;
      }

      sub_100004B28((v0 + 16));
    }

    else
    {
    }
  }

  v11 = *(v0 + 528);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 424);
  swift_beginAccess();
  sub_100057B90(0xD000000000000010, 0x8000000100068780, v0 + 56);
  sub_100008B68(v0 + 56, &qword_100083900, &qword_100062C00);
  swift_endAccess();
  (*(v13 + 16))(v15, v12, v14);
  v54 = *(v13 + 56);
  v54(v15, 0, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100061860;
  v17[5] = v11;
  sub_100026A64(v15, v16);
  v55 = *(v13 + 48);
  v18 = v55(v16, 1, v14);

  if (v18 == 1)
  {
    sub_100008B68(*(v0 + 424), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v20 = *(v0 + 440);
    v19 = *(v0 + 448);
    v21 = *(v0 + 424);
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v21, v20);
  }

  v23 = v17[2];
  v22 = v17[3];
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_100008B68(*(v0 + 432), &qword_1000838E0, &qword_100061C70);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_100061870;
  *(v27 + 24) = v17;
  if (v26 | v24)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v24;
    *(v0 + 240) = v26;
  }

  v52 = *(v0 + 440);
  v53 = *(v0 + 520);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v30 = swift_task_create();
  *(v0 + 536) = v30;
  *(v0 + 120) = sub_100003B30(&qword_100083908, &unk_100061880);
  *(v0 + 128) = &off_10007BC78;
  *(v0 + 96) = v30;
  swift_beginAccess();
  sub_100026B0C((v0 + 96), v0 + 136);
  swift_retain_n();
  v31 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v33 = v1;
  v34 = *(v0 + 160);
  v35 = sub_100026B24(v0 + 136, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_1000257C8(*v38, 0xD000000000000010, 0x8000000100068780, isUniquelyReferenced_nonNull_native, &v56);
  sub_100004B28((v0 + 136));

  *(v33 + 112) = v56;
  swift_endAccess();
  v54(v29, 1, 1, v52);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v30;
  v40[5] = v39;
  v40[6] = 0xD000000000000010;
  v40[7] = 0x8000000100068780;
  sub_100026A64(v29, v28);
  LODWORD(v33) = v55(v28, 1, v52);

  if (v33 == 1)
  {
    sub_100008B68(*(v0 + 408), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    v43 = *(v0 + 408);
    TaskPriority.rawValue.getter();
    (*(v42 + 8))(v43, v41);
  }

  v45 = v40[2];
  v44 = v40[3];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = dispatch thunk of Actor.unownedExecutor.getter();
    v48 = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_100008B68(*(v0 + 416), &qword_1000838E0, &qword_100061C70);
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_100062BF0;
  *(v49 + 24) = v40;
  if (v48 | v46)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v46;
    *(v0 + 272) = v48;
  }

  swift_task_create();

  v50 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_1000202EC;
  v9 = &type metadata for () + 8;
  v10 = v30;
LABEL_24:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_1000202EC()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 520);
  v4 = *v0;

  return _swift_task_switch(sub_1000203FC, v2, 0);
}

uint64_t sub_1000203FC()
{
  v1 = v0[67];
  v2 = v0[66];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10002049C, 0, 0);
}

uint64_t sub_10002049C()
{
  v1 = v0[64];
  v2 = v0[58];

  sub_100008B68(v2, &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_10001F6F0;
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_100020568()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 520);
  v5 = *v0;

  return _swift_task_switch(sub_100020694, v3, 0);
}

uint64_t sub_100020694()
{
  v1 = v0[69];
  v2 = v0[66];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  sub_100004B28(v0 + 2);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10002049C, 0, 0);
}

uint64_t sub_100020738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100020830, 0, 0);
}

uint64_t sub_100020830()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = sub_1000268AC();
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100020948;
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_100020948()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100020E3C;
  }

  else
  {
    v3 = sub_100020A5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100020A78()
{
  v1 = v0[13];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:
    v6 = v0[16];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  v3 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_100008B68(v0[13], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000080BC(v10, qword_100086758);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v0[11] = v14;
    *v13 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v15 = 0xE600000000000000;
        v16 = 0x7070412D6E49;
      }

      else
      {
        v15 = 0xE800000000000000;
        v16 = 0x73676E6974746553;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      v16 = 17219;
    }

    v17 = sub_10005305C(v16, v15, v0 + 11);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] .AVInputContextCanSetInputGainDidChange received", v13, 0xCu);
    sub_100004B28(v14);
  }

  sub_100004BCC((v5 + 144), *(v5 + 168));
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_100020EC8;

  return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_100020E3C()
{
  *(v0 + 80) = *(v0 + 144);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100020EC8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100020FC4, 0, 0);
}

uint64_t sub_100020FC4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v2);
  *(v0 + 192) = (*(v3 + 48))(v2, v3) & 1;
  sub_100004B28((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 176) = type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    *(v0 + 184) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100021168, v6, v5);
  }

  else
  {
    v7 = *(v0 + 152);

    sub_100008B68(*(v0 + 104), &qword_1000838E8, &qword_100061848);
    v8 = sub_1000268AC();
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_100020948;
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v8);
  }
}

uint64_t sub_100021168()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  type metadata accessor for MicrophoneManager();
  sub_100043004(v5, v4);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100021288, 0, 0);
}

uint64_t sub_100021288()
{
  v1 = v0[21];
  v2 = v0[19];
  swift_unknownObjectRelease();

  sub_100008B68(v0[13], &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100020948;
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_10002135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = sub_100003B30(&qword_100083920, &qword_1000618C0);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v14 = *(v13 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100021524, 0, 0);
}

uint64_t sub_100021524()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = sub_1000268AC();
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_10002163C;
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_10002163C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100021B44;
  }

  else
  {
    v3 = sub_100021750;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002176C()
{
  v1 = v0[19];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_8:
    v6 = v0[22];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[15];

    v10 = v0[1];

    return v10();
  }

  v3 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:
    sub_100008B68(v0[19], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000080BC(v12, qword_100086758);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v0[11] = v16;
    *v15 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v17 = 0xE600000000000000;
        v18 = 0x7070412D6E49;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x73676E6974746553;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      v18 = 17219;
    }

    v19 = sub_10005305C(v18, v17, v0 + 11);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] .AVInputContextInputGainDidChange received", v15, 0xCu);
    sub_100004B28(v16);
  }

  sub_100004BCC((v5 + 144), *(v5 + 168));
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_100021BD0;

  return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_100021B44()
{
  *(v0 + 80) = *(v0 + 192);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100021BD0()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_100021CCC, 0, 0);
}

uint64_t sub_100021CCC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v2);
  *(v0 + 244) = (*(v3 + 56))(v2, v3);
  sub_100004B28((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    *(v0 + 224) = type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    *(v0 + 232) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100021E6C, v6, v5);
  }

  else
  {
    v7 = *(v0 + 200);

    sub_100008B68(*(v0 + 152), &qword_1000838E8, &qword_100061848);
    v8 = sub_1000268AC();
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_10002163C;
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v8);
  }
}

uint64_t sub_100021E6C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 244);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  (*(v9 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation, v8);
  *(v0 + 240) = v3;
  AsyncStream.Continuation.yield(_:)();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v6, v8);
  (*(v5 + 8))(v4, v7);

  return _swift_task_switch(sub_100021FD4, 0, 0);
}

uint64_t sub_100021FD4()
{
  v1 = v0[27];
  v2 = v0[25];
  swift_unknownObjectRelease();

  sub_100008B68(v0[19], &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10002163C;
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_1000220A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 736) = a3;
  *(v3 + 320) = a2;
  v4 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  *(v3 + 328) = v4;
  v5 = *(v4 - 8);
  *(v3 + 336) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v7 = sub_100003B30(&qword_1000838A0, &qword_1000616F0);
  *(v3 + 352) = v7;
  v8 = *(v7 - 8);
  *(v3 + 360) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v10 = type metadata accessor for TaskPriority();
  *(v3 + 376) = v10;
  v11 = *(v10 - 8);
  *(v3 + 384) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_10002223C, 0, 0);
}

uint64_t sub_10002223C()
{
  v18 = v0;
  v1 = v0[40];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[51] = sub_1000080BC(v4, qword_100086758);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v15 = sub_10005305C(v9, v8, &v17);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_10005305C(0xD000000000000027, 0x8000000100068640, &v17);
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    sub_100004BCC((v3 + 144), *(v3 + 168));
    v16 = swift_task_alloc();
    v0[52] = v16;
    *v16 = v0;
    v16[1] = sub_1000225A0;

    return (sub_1000090F0)(v0 + 32, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v10 = v0[49];
    v11 = v0[46];
    v12 = v0[43];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000225A0()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return _swift_task_switch(sub_10002269C, 0, 0);
}

uint64_t sub_10002269C()
{
  v1 = v0[35];
  v2 = v0[36];
  sub_100004BCC(v0 + 32, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_1000227C0;

  return v7(v1, v2);
}

uint64_t sub_1000227C0(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_1000228C0, 0, 0);
}

uint64_t sub_1000228C0()
{
  v1 = *(v0 + 432);
  if (v1)
  {
    sub_100004B28((v0 + 256));
    sub_100039078(v1, (v0 + 160));
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);

    *(v0 + 664) = v3;
    *(v0 + 656) = v2;
    *(v0 + 624) = v12;
    *(v0 + 640) = v11;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return _swift_task_switch(sub_100023120, v4, 0);
  }

  else
  {
    v5 = *(v0 + 400);
    sub_100004B28((v0 + 256));
    if (*(v5 + 24) == 2)
    {
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      *v6 = v0;
      v6[1] = sub_100022A6C;
      v7 = *(v0 + 400);

      return sub_1000172A0(v0 + 112);
    }

    else
    {
      v8 = swift_task_alloc();
      *(v0 + 496) = v8;
      *v8 = v0;
      v8[1] = sub_100022BD4;
      v9 = *(v0 + 400);

      return sub_100011D94(v0 + 64);
    }
  }
}

uint64_t sub_100022A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v5 = *v0;

  v3 = v1[8];
  v1[28] = v1[7];
  v1[29] = v3;
  v1[30] = v1[9];

  return _swift_task_switch(sub_100022B78, 0, 0);
}

uint64_t sub_100022B78()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 480);
    *(v0 + 640) = *(v0 + 464);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_100023120;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_100022D50;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100022BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v5 = *v0;

  v3 = v1[5];
  *(v1 + 504) = v1[4];
  *(v1 + 520) = v3;
  *(v1 + 536) = v1[6];

  return _swift_task_switch(sub_100022CF0, 0, 0);
}

uint64_t sub_100022CF0()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 536);
    *(v0 + 640) = *(v0 + 520);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_100023120;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_100022D50;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100022D50()
{
  v1 = v0[69];
  v2 = v1[14];
  v0[70] = v2;
  v3 = v1[15];
  v0[71] = v3;
  v0[72] = v1[16];
  v0[73] = v1[17];
  v0[74] = v1[18];
  v0[75] = v1[19];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_100022DE8, 0, 0);
}

uint64_t sub_100022DE8()
{
  v1 = *(v0 + 568);
  if (v1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 592);
    *(v0 + 640) = *(v0 + 576);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return _swift_task_switch(sub_100023120, v4, 0);
  }

  else
  {
    v5 = *(v0 + 392);
    v6 = *(*(v0 + 400) + 16);
    v7 = swift_allocObject();
    *(v0 + 608) = v7;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v8 = swift_task_alloc();
    *(v0 + 616) = v8;
    *v8 = v0;
    v8[1] = sub_100022F74;
    v9 = *(v0 + 392);

    return (sub_10004464C)(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v9, &unk_100061708, v7);
  }
}

uint64_t sub_100022F74()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1000230E8, 0, 0);
}

uint64_t sub_1000230E8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 664) = *(v0 + 56);
  *(v0 + 656) = v1;
  *(v0 + 624) = v3;
  *(v0 + 640) = v2;
  v4 = *(*(v0 + 400) + 104);
  *(v0 + 672) = v4;
  return _swift_task_switch(sub_100023120, v4, 0);
}

uint64_t sub_100023120()
{
  v1 = v0[84];
  v2 = v1[33];
  v0[85] = v2;
  v3 = v1[34];
  v0[86] = v3;
  v4 = v1[35];
  v0[87] = v1[36];
  v5 = v1[37];
  v0[88] = v1[38];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_1000231A8, 0, 0);
}

uint64_t sub_1000231A8()
{
  v1 = *(v0 + 688);
  if (v1)
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    if (*(v0 + 680) == *(v0 + 624) && v1 == *(v0 + 632))
    {
      v8 = *(v0 + 688);

      goto LABEL_14;
    }

    v5 = *(v0 + 688);
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_14;
    }
  }

  else if (!*(v0 + 632))
  {
LABEL_14:
    v9 = *(v0 + 664);
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    v13 = *(v0 + 400);
    sub_1000253A0(*(v0 + 624), *(v0 + 632));

    v14 = *(v0 + 392);
    v15 = *(v0 + 368);
    v16 = *(v0 + 344);

    v17 = *(v0 + 8);

    return v17();
  }

  if (*(v0 + 736))
  {
    goto LABEL_14;
  }

  v7 = *(*(v0 + 400) + 104);
  *(v0 + 712) = v7;

  return _swift_task_switch(sub_100023324, v7, 0);
}

uint64_t sub_100023324()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v3 = *(v0 + 624);
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[35];
  v7 = v1[36];
  v8 = v1[37];
  v9 = v1[38];
  v10 = *(v0 + 648);
  *(v1 + 17) = *(v0 + 632);
  *(v1 + 18) = v10;
  v1[33] = v3;
  v1[38] = v2;

  sub_1000253A0(v4, v5);

  return _swift_task_switch(sub_100023410, 0, 0);
}

uint64_t sub_100023410()
{
  v28 = v0;
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[79];
  v5 = v0[50];
  v4 = v0[51];

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[50];
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136315394;
    v24 = v7;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x7070412D6E49;
      }

      else
      {
        v10 = 0xE800000000000000;
        v11 = 0x73676E6974746553;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 17219;
    }

    v12 = v0[83];
    v13 = v0[81];
    v14 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v17 = sub_10005305C(v11, v10, &v25);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v26 = v16;
    v27 = v15;
    swift_bridgeObjectRetain_n();

    v18._countAndFlagsBits = 45;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v14;
    v19._object = v13;
    String.append(_:)(v19);

    v20 = sub_10005305C(v26, v27, &v25);

    *(v9 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v24, "[%s] attempting to render new picked device: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v0[90] = type metadata accessor for MainActor();
  v0[91] = static MainActor.shared.getter();
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000236CC, v22, v21);
}

uint64_t sub_1000236CC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 400);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 664);
  if (Strong)
  {
    v6 = *(v0 + 656);
    v15 = *(v0 + 624);
    v16 = *(v0 + 640);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 344);
    v17 = *(v0 + 352);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    (*(v10 + 16))(v9, Strong + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v11);
    *(v0 + 208) = v15;
    *(v0 + 224) = v16;
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;
    AsyncStream.Continuation.yield(_:)();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v7, v17);
  }

  else
  {
    v12 = *(v0 + 648);
    v13 = *(v0 + 632);
  }

  return _swift_task_switch(sub_100023890, 0, 0);
}

uint64_t sub_100023890()
{
  v1 = v0[50];

  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[43];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100023910(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_100003B30(&qword_1000838B0, &qword_100061760);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100023A44, 0, 0);
}

uint64_t sub_100023A44()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_100023B40;

    return sub_100024528();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100023B40(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100023C40, 0, 0);
}

uint64_t sub_100023C40()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100023C64, v1, 0);
}

uint64_t sub_100023C64()
{
  *(v0 + 136) = *(*(v0 + 128) + 256);

  return _swift_task_switch(sub_100023CD8, 0, 0);
}

uint64_t sub_100023CD8()
{
  v21 = v0;
  if (v0[17])
  {
    v1 = sub_100034344(v0[17], v0[15]);

    if (v1)
    {
      v2 = v0[15];
LABEL_8:

      if (qword_1000831F0 != -1)
      {
        swift_once();
      }

      v4 = v0[13];
      v5 = type metadata accessor for Logger();
      sub_1000080BC(v5, qword_100086758);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[13];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        if (*(v9 + 24))
        {
          if (*(v9 + 24) == 1)
          {
            v12 = 0xE600000000000000;
            v13 = 0x7070412D6E49;
          }

          else
          {
            v12 = 0xE800000000000000;
            v13 = 0x73676E6974746553;
          }
        }

        else
        {
          v12 = 0xE200000000000000;
          v13 = 17219;
        }

        v14 = v0[13];
        v15 = sub_10005305C(v13, v12, &v20);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v6, v7, "[%s] availableInputDevices is empty", v10, 0xCu);
        sub_100004B28(v11);
      }

      else
      {
      }

      v16 = v0[12];
      v17 = v0[9];

      v18 = v0[1];

      return v18();
    }
  }

  if (!*(v0[15] + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v0[13] + 104);
  v0[18] = v3;

  return _swift_task_switch(sub_100023F5C, v3, 0);
}

uint64_t sub_100023F5C()
{
  v1 = *(v0 + 144);
  sub_1000099C4();

  return _swift_task_switch(sub_100023FC4, 0, 0);
}

uint64_t sub_100023FC4()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 152) = v1;

  return _swift_task_switch(sub_10002403C, v1, 0);
}

uint64_t sub_10002403C()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 256);
  *(v1 + 256) = *(v0 + 120);

  return _swift_task_switch(sub_1000240C0, 0, 0);
}

uint64_t sub_1000240C0()
{
  v19 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v10 = v0[15];
    v11 = sub_10005305C(v9, v8, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = Array.description.getter();
    v14 = sub_10005305C(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] discoverySession or fakeDiscoverySession new routes: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v0[20] = type metadata accessor for MainActor();
  v0[21] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002432C, v16, v15);
}

uint64_t sub_10002432C()
{
  v2 = v0[20];
  v1 = v0[21];

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v0[15];
  if (Strong)
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    (*(v11 + 16))(v9, Strong + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v10);
    v0[5] = v5;
    AsyncStream.Continuation.yield(_:)();
    swift_unknownObjectRelease();
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v12 = v0[15];
  }

  return _swift_task_switch(sub_1000244B4, 0, 0);
}

uint64_t sub_1000244B4()
{
  v1 = v0[13];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100024548()
{
  v1 = *(v0[14] + 128);
  v0[15] = v1;
  v2 = *(v1 + 16);
  v3 = async function pointer to Task<>.value.getter[1];

  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[17] = v5;
  *v4 = v0;
  v4[1] = sub_10002461C;

  return Task<>.value.getter(v0 + 10, v2, v5);
}

uint64_t sub_10002461C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_100024718, 0, 0);
}

uint64_t sub_100024718()
{
  v62 = v0;
  v1 = v0;
  v2 = v0[15];

  v3 = v0[10];
  v4 = [v3 availableInputDevices];

  v1[18] = sub_100008398(0, &qword_1000838B8, AVInputDevice_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v61 = _swiftEmptyArrayStorage;
      sub_100025688(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      v7 = 0;
      v8 = v61;
      v56 = v1;
      v57 = v5 & 0xC000000000000001;
      v58 = v6;
      v59 = v5;
      while (1)
      {
        if (v57)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = [v9 deviceID];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v1[8] = v13;
          v1[9] = v15;
          v16 = String.init<A>(_:)();
        }

        else
        {
          v1[11] = v10;
          v16 = String.init<A>(describing:)();
        }

        v60 = v16;
        v18 = v17;
        v19 = [v10 deviceName];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v1[6] = v21;
          v1[7] = v23;
          v24 = String.init<A>(_:)();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0xE000000000000000;
        }

        v27 = sub_100037744(v10);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_19;
        }

        v28 = v27;
        if (!sub_1000261B4(v27))
        {
          goto LABEL_19;
        }

        v29 = [objc_opt_self() productInfoWithProductID:v28];
        v30 = [v29 sfSymbolNameMain];
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v1 = v56;
LABEL_26:
        v61 = v8;
        v37 = v8[2];
        v36 = v8[3];
        if (v37 >= v36 >> 1)
        {
          sub_100025688((v36 > 1), v37 + 1, 1);
          v8 = v61;
        }

        ++v7;
        v8[2] = v37 + 1;
        v38 = &v8[6 * v37];
        v38[4] = v60;
        v38[5] = v18;
        v38[6] = v24;
        v38[7] = v26;
        v38[8] = v32;
        v38[9] = v34;
        v5 = v59;
        if (v58 == v7)
        {

          if (v8[2])
          {
            goto LABEL_30;
          }

LABEL_35:

          if (qword_1000831F0 == -1)
          {
LABEL_36:
            v41 = v1[14];
            v42 = type metadata accessor for Logger();
            sub_1000080BC(v42, qword_100086758);

            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = v1[14];
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v61 = v47;
              *v46 = 136315138;
              if (*(v45 + 24))
              {
                if (*(v45 + 24) == 1)
                {
                  v48 = 0xE600000000000000;
                  v49 = 0x7070412D6E49;
                }

                else
                {
                  v48 = 0xE800000000000000;
                  v49 = 0x73676E6974746553;
                }
              }

              else
              {
                v48 = 0xE200000000000000;
                v49 = 17219;
              }

              v50 = sub_10005305C(v49, v48, &v61);

              *(v46 + 4) = v50;
              _os_log_impl(&_mh_execute_header, v43, v44, "[%s] looking in to fakeSession routes", v46, 0xCu);
              sub_100004B28(v47);
            }

            v51 = *(v1[14] + 136);
            v1[19] = v51;
            v52 = *(v51 + 16);
            v53 = async function pointer to Task<>.value.getter[1];

            v54 = swift_task_alloc();
            v1[20] = v54;
            *v54 = v1;
            v54[1] = sub_100024D14;
            v55 = v1[17];

            return Task<>.value.getter(v1 + 12, v52, v55);
          }

LABEL_47:
          swift_once();
          goto LABEL_36;
        }
      }

      v1 = v56;
LABEL_19:
      v35 = [v10 deviceType];

      if (v35)
      {
        if (v35 == 3)
        {
          v32 = 0x6F632E656C626163;
          v34 = 0xED00006C61697861;
        }

        else if (v35 == 1)
        {
          v34 = 0xE700000000000000;
          v32 = 0x6E692E656E696CLL;
        }

        else
        {
          v32 = 0x6F68706F7263696DLL;
          v34 = 0xEF6C6C69662E656ELL;
        }
      }

      else
      {
        v34 = 0xE700000000000000;
        v32 = 0x73647562726165;
      }

      goto LABEL_26;
    }
  }

  v8 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_35;
  }

LABEL_30:
  v39 = v1[1];

  return v39(v8);
}

uint64_t sub_100024D14()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100024E10, 0, 0);
}

char *sub_100024E10()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[12];
  v4 = [v3 availableInputDevices];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_31:

    v38 = v0[1];

    return v38(_swiftEmptyArrayStorage);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_3:
  result = sub_100025688(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v39 = v5;
    v40 = v5 & 0xC000000000000001;
    v41 = v6;
    while (1)
    {
      if (v40)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 deviceID];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v0[4] = v13;
        v0[5] = v15;
        v16 = String.init<A>(_:)();
      }

      else
      {
        v0[13] = v10;
        v16 = String.init<A>(describing:)();
      }

      v42 = v17;
      v43 = v16;
      v18 = [v10 deviceName];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v0[2] = v20;
        v0[3] = v22;
        v23 = String.init<A>(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_100037744(v10);
      if ((v26 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v27 = v26;
      if (!sub_1000261B4(v26))
      {
        goto LABEL_19;
      }

      v28 = [objc_opt_self() productInfoWithProductID:v27];
      v29 = [v28 sfSymbolNameMain];
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v5 = v39;
LABEL_26:
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_100025688((v35 > 1), v36 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v36 + 1;
      v37 = &_swiftEmptyArrayStorage[6 * v36];
      v37[4] = v43;
      v37[5] = v42;
      v37[6] = v23;
      v37[7] = v25;
      v37[8] = v31;
      v37[9] = v33;
      if (v41 == v8)
      {
        goto LABEL_31;
      }
    }

    v5 = v39;
LABEL_19:
    v34 = [v10 deviceType];

    if (v34)
    {
      if (v34 == 3)
      {
        v31 = 0x6F632E656C626163;
        v33 = 0xED00006C61697861;
      }

      else if (v34 == 1)
      {
        v33 = 0xE700000000000000;
        v31 = 0x6E692E656E696CLL;
      }

      else
      {
        v31 = 0x6F68706F7263696DLL;
        v33 = 0xEF6C6C69662E656ELL;
      }
    }

    else
    {
      v33 = 0xE700000000000000;
      v31 = 0x73647562726165;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000251D4()
{
  v1 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[deinit] AVRoutingInputController deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  sub_1000253F0(v1 + 32);

  v7 = *(v1 + 56);

  v8 = *(v1 + 64);

  v9 = *(v1 + 72);

  v10 = *(v1 + 80);

  v11 = *(v1 + 88);

  v12 = *(v1 + 96);

  v13 = *(v1 + 104);

  v14 = *(v1 + 120);

  v15 = *(v1 + 128);

  v16 = *(v1 + 136);

  sub_100004B28((v1 + 144));
  return v1;
}

uint64_t sub_100025324()
{
  sub_1000251D4();

  return _swift_deallocClassInstance(v0, 184, 7);
}

uint64_t sub_1000253A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100025418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100025468()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100016F2C(a1, v1);
}

uint64_t sub_10002553C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_1000220A8(a1, v4, v5);
}

uint64_t sub_1000255EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001530C(a1, v1);
}

char *sub_100025688(char *a1, int64_t a2, char a3)
{
  result = sub_1000256A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000256A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_1000838C0, &qword_100061770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000257C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_100003B30(&qword_100083908, &unk_100061880);
  v32 = v10;
  v33 = &off_10007BC78;
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_100057800(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_100004B28(v20);
      return sub_100026B0C(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1000580BC();
    goto LABEL_7;
  }

  sub_100057C3C(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_100057800(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = sub_100026B24(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1000259CC(v13, a2, a3, *v28, v19);

  return sub_100004B28(&v31);
}

uint64_t sub_1000259CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_100003B30(&qword_100083908, &unk_100061880);
  v17 = &off_10007BC78;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_100026B0C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100025A88(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100025AAC, 0, 0);
}

uint64_t sub_100025AAC()
{
  v1 = *(v0[6] + 128);
  v0[7] = v1;
  v2 = *(v1 + 16);
  v3 = async function pointer to Task<>.value.getter[1];

  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[9] = v5;
  *v4 = v0;
  v4[1] = sub_100025B80;

  return Task<>.value.getter(v0 + 2, v2, v5);
}

uint64_t sub_100025B80()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100025C7C, 0, 0);
}

uint64_t sub_100025C7C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[2];
  v0[10] = v4;
  v5 = sub_1000388F8(v4, v3, v2);
  if (v5)
  {
    v6 = v5;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = *(v0[6] + 136);
    v0[11] = v9;
    v10 = *(v9 + 16);
    v11 = async function pointer to Task<>.value.getter[1];

    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_100025DA4;
    v13 = v0[9];

    return Task<>.value.getter(v0 + 3, v10, v13);
  }
}

uint64_t sub_100025DA4()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100025EA0, 0, 0);
}

uint64_t sub_100025EA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[4];
  v4 = v0[5];

  v5 = v0[3];
  v6 = sub_1000388F8(v5, v3, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100025F30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_1000175A8(a1, v1);
}

uint64_t sub_10002607C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100016508(a1, v1);
}

uint64_t sub_100026118(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100023910(a1, v1);
}

uint64_t sub_1000261E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001475C(a1, v1);
}

uint64_t sub_10002627C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014310;

  return sub_10001475C(a1, v1);
}

uint64_t sub_100026318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001AE68(a1, v4, v5, v6);
}

uint64_t sub_1000263D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10001B0A0(a1, v4, v5, v7, v6);
}

uint64_t sub_100026490()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000264D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10001C79C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002659C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001DF24(a1, v4, v5, v6);
}

uint64_t sub_100026650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100020738(a1, v4, v5, v6);
}

uint64_t sub_100026704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002135C(a1, v4, v5, v6);
}

uint64_t sub_1000267B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000267F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001F428(a1, v4, v5, v6);
}

unint64_t sub_1000268AC()
{
  result = qword_1000838F0;
  if (!qword_1000838F0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000838F0);
  }

  return result;
}

uint64_t sub_100026904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10000C0A0(a1, v1);
}

uint64_t sub_1000269A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100046688(a1, v4, v5, v7);
}

uint64_t sub_100026A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026AD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026B0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100026B24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100026B78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014310;

  return sub_100057084(a1, v5);
}

uint64_t sub_100026C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100026C94()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100026CCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100057084(a1, v5);
}

uint64_t sub_100026D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100046780(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100026E58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100026E98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026EE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100027414;

  return sub_10001839C(v0);
}

uint64_t sub_100026F78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100027414;

  return sub_100018F30(v0);
}

uint64_t sub_100027008(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100014228(a1, v5);
}

uint64_t sub_1000270C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027414;

  return sub_10001979C(v2);
}

uint64_t sub_100027190()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100012908(v2, v3);
}

uint64_t sub_100027228()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100013848(v2, v3);
}

uint64_t sub_100027300()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027414;

  return sub_100014404(v2);
}

uint64_t sub_10002742C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100027450(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000274AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100027500(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100027530()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_10005D95C(v0);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

BOOL sub_10002769C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_100003B78(v4);
  LOBYTE(v3) = sub_10002769C(v3, v4);
  sub_100003C9C(v4);
  return v3 & 1;
}

Swift::Int sub_100027734()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_100003B78(v3);
        sub_10002796C(v3);
        sub_100003C9C(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000277D8()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *(v1 + 16);
  Hasher._combine(_:)(3uLL);
  sub_100003B78(v3);
  sub_10002796C(v3);

  sub_100003C9C(v3);
}

Swift::Int sub_100027868()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_100003B78(v3);
        sub_10002796C(v3);
        sub_100003C9C(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100027918()
{
  result = qword_100083938;
  if (!qword_100083938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083938);
  }

  return result;
}

void sub_10002796C(Swift::UInt a1)
{
  if (a1 > 2)
  {
    v1 = *(a1 + 16);
    Hasher._combine(_:)(3uLL);
    sub_100003B78(v1);
    sub_10002796C(v1);

    sub_100003C9C(v1);
  }

  else
  {

    Hasher._combine(_:)(a1);
  }
}

Swift::Int sub_1000279F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100027A5C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100027AC4()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
}

uint64_t sub_100027B68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100027C14(uint64_t a1)
{
  if (sub_100034344(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100027D58()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t sub_100027DFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_100027EA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100027ED4(v4);
}

uint64_t sub_100027ED4(uint64_t a1)
{
  if (sub_1000343D4(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100028018@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 32);
  v4 = *(v11 + 40);
  v5 = *(v11 + 48);
  v6 = *(v11 + 56);
  v7 = *(v11 + 64);
  v8 = *(v11 + 72);
  v9 = *(v11 + 80);
  result = sub_100034A3C(v3, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_100028108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 80);
  *(a2 + 48) = v10;
  return sub_100034A3C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000281CC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v17[0] = *(v1 + 32);
  v17[1] = v3;
  v17[2] = *(v1 + 64);
  v18 = *(v1 + 80);
  sub_100008AF8(v17, v16, &qword_100083B50, &qword_100061D60);
  v4 = sub_100034D6C(v17, a1);
  sub_100008B68(v17, &qword_100083B50, &qword_100061D60);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    v16[0] = v1;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100008B68(a1, &qword_100083B50, &qword_100061D60);
  }

  else
  {
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
    v12 = *(v1 + 64);
    v13 = *(v1 + 72);
    v14 = *(a1 + 16);
    *(v1 + 32) = *a1;
    *(v1 + 48) = v14;
    *(v1 + 64) = *(a1 + 32);
    v15 = *(v1 + 80);
    *(v1 + 80) = *(a1 + 48);
    return sub_10003421C(v8, v9, v10, v11, v12, v13, v15);
  }
}

uint64_t sub_10002836C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 32);
  v9 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 48);
  sub_100008AF8(a2, v11, &qword_100083B50, &qword_100061D60);
  return sub_10003421C(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_100028418()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 81);
}

uint64_t sub_1000284B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_100028588(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_100028698()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

double sub_100028738@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

void sub_100028808(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100028920()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10003421C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v3 = OBJC_IVAR____TtCC19AVKitRoutingService37RoutingControllerInputPickerViewModel5State___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_1000289E0()
{
  v1 = v0;
  if (*(v0 + 104) != 1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 64);
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  v4 = *(v3 + 16);

  v5 = 1;
  if (!*(v1 + 72))
  {
    v5 = 2;
  }

  if (v4 > v5)
  {
    v6 = *(v1 + 152);
    return sub_100006AA8();
  }

  else
  {
LABEL_6:
    v8 = *(v1 + 152);
    return sub_100007218();
  }
}

uint64_t sub_100028AEC(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 64);
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);

  v5 = *(v4 + 16);

  v6 = 1;
  if (!*(v2 + 72))
  {
    v6 = 2;
  }

  if (v5 > v6)
  {
    v7 = *(v2 + 152);
    return sub_100006AA8();
  }

  else
  {
LABEL_6:
    v9 = *(v2 + 152);
    return sub_100007218();
  }
}

uint64_t sub_100028BF0()
{
  v1 = v0;
  v2 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v24 - v5;
  if (*(v0 + 105) == 1)
  {
    v7 = sub_100004BCC((v0 + 112), *(v0 + 136));
    v8 = *v7;
    v9 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
    if ((*(*v7 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering) & 1) == 0)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();

      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v8;
      sub_100054078(0, 0, v6, &unk_100061EE0, v12);

      *(v8 + v9) = 1;
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;

    v17 = &unk_100061EF0;
    v18 = v6;
    v19 = v16;
  }

  else
  {
    v20 = *(v0 + 152);
    sub_100007218();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    type metadata accessor for MainActor();

    v22 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v22;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v1;
    v17 = &unk_100061ED8;
    v18 = v6;
  }

  sub_100054078(0, 0, v18, v17, v19);
}

uint64_t sub_100028EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100028F74, v6, v5);
}

uint64_t sub_100028F74()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_100029068;

    return sub_100029334(0);
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100029068()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_1000291A8;
  v5 = *(v1 + 72);

  return sub_10002A38C();
}

uint64_t sub_1000291A8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_1000292C8, v4, v3);
}

uint64_t sub_1000292C8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100029334(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 65) = a1;
  *(v2 + 104) = type metadata accessor for MainActor();
  *(v2 + 112) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return _swift_task_switch(sub_1000293D4, v4, v3);
}

uint64_t sub_1000293D4()
{
  v1 = v0[13];
  v0[17] = *sub_100004BCC((v0[12] + 112), *(v0[12] + 136));
  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v3;
  v0[20] = v2;

  return _swift_task_switch(sub_100029474, v3, v2);
}

uint64_t sub_100029474()
{
  v1 = *(*(v0 + 136) + 16);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_100029508;

  return sub_100015EF4();
}

uint64_t sub_100029508(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_100029630, v5, v4);
}

uint64_t sub_100029630()
{
  v1 = *(v0 + 144);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1000296D4;
  v3 = *(v0 + 176);
  v4 = *(v0 + 96);
  v5 = *(v0 + 65);

  return sub_10003156C(v3, v5);
}

uint64_t sub_1000296D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return _swift_task_switch(sub_1000297FC, v5, v4);
}

uint64_t sub_1000297FC()
{
  v72 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v3;
  v4 = v0 + 72;
  *(v0 + 200) = sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 24);

  LOBYTE(v1) = sub_1000343D4(v1, v5);

  if (v1)
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = *(v0 + 112);

LABEL_30:
    v66 = *(v0 + 8);

    return v66();
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 96);
  v11 = type metadata accessor for Logger();
  *(v0 + 208) = sub_1000080BC(v11, qword_100086758);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (*(v14 + 72))
    {
      if (*(v14 + 72) == 1)
      {
        v16 = 0xE600000000000000;
        v17 = 0x7070412D6E49;
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x73676E6974746553;
      }
    }

    else
    {
      v16 = 0xE200000000000000;
      v17 = 17219;
    }

    v18 = *(v0 + 192);
    v19 = sub_10005305C(v17, v16, v71);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = Array.description.getter();
    v22 = sub_10005305C(v20, v21, v71);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ui][%s] got rendering new inputs:%s", v15, 0x16u);
    swift_arrayDestroy();

    v4 = v0 + 72;
  }

  else
  {
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = *(v2 + 64);

  sub_100027C14(v24);

  v26 = *(v2 + 64);

  sub_100027ED4(v23);

  v27 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 80) = v27;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + 32);
  v29 = *(v27 + 40);
  v30 = *(v27 + 48);
  v31 = *(v27 + 56);
  v32 = v4;
  v33 = *(v27 + 64);
  v34 = *(v27 + 72);
  v35 = *(v27 + 80);
  sub_100034A3C(v28, v29, v30, v31, v33, v34, *(v27 + 80));

  v36 = *(v0 + 192);
  if (v35 == 255)
  {
    v40 = *(v0 + 112);

LABEL_17:
    v41 = *(v0 + 96);
    sub_100028AEC(*(v41 + 104));
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(v41 + 24);
      v44 = *(v0 + 200);
      v45 = *(v0 + 208);
      v46 = *(*(v0 + 96) + 64);
      swift_getKeyPath();
      *(v0 + 88) = v46;
      sub_100034860(v42);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v47 = *(v46 + 24);

      v48 = *(v47 + 16);

      v49 = v48 - 1;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 96);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v71[0] = v54;
        *v53 = 136315394;
        if (*(v52 + 72))
        {
          if (*(v52 + 72) == 1)
          {
            v55 = 0xE600000000000000;
            v56 = 0x7070412D6E49;
          }

          else
          {
            v55 = 0xE800000000000000;
            v56 = 0x73676E6974746553;
          }
        }

        else
        {
          v55 = 0xE200000000000000;
          v56 = 17219;
        }

        v65 = sub_10005305C(v56, v55, v71);

        *(v53 + 4) = v65;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v50, v51, "[ui][%s] reporting count: %ld", v53, 0x16u);
        sub_100004B28(v54);
      }

      v42(v49);
      sub_10003427C(v42);
    }

    goto LABEL_30;
  }

  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  *(v0 + 32) = v30;
  *(v0 + 40) = v31;
  *(v0 + 48) = v33;
  *(v0 + 56) = v34;
  *(v0 + 64) = v35 & 1;
  v37 = swift_task_alloc();
  *(v37 + 16) = v32 - 56;
  v38 = sub_100034BE8(sub_100034F40, v37, v36);

  sub_10003421C(v28, v29, v30, v31, v33, v34, v35);

  if (v38)
  {
    v39 = *(v0 + 112);

    goto LABEL_17;
  }

  v57 = *(v0 + 96);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 96);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v71[0] = v62;
    *v61 = 136315138;
    if (*(v60 + 72))
    {
      if (*(v60 + 72) == 1)
      {
        v63 = 0xE600000000000000;
        v64 = 0x7070412D6E49;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x73676E6974746553;
      }
    }

    else
    {
      v63 = 0xE200000000000000;
      v64 = 17219;
    }

    v68 = sub_10005305C(v64, v63, v71);

    *(v61 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v58, v59, "[ui][%s] current selected option not available in new inputs, updating selection", v61, 0xCu);
    sub_100004B28(v62);
  }

  v69 = swift_task_alloc();
  *(v0 + 216) = v69;
  *v69 = v0;
  v69[1] = sub_10002A014;
  v70 = *(v0 + 96);

  return sub_10002A38C();
}

uint64_t sub_10002A014()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_10002A134, v4, v3);
}

uint64_t sub_10002A134()
{
  v22 = v0;
  v1 = v0[14];

  v2 = v0[12];
  sub_100028AEC(*(v2 + 104));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = v0[25];
    v6 = v0[26];
    v7 = *(v0[12] + 64);
    swift_getKeyPath();
    v0[11] = v7;
    sub_100034860(v3);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    v10 = v9 - 1;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[12];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315394;
      if (*(v13 + 72))
      {
        if (*(v13 + 72) == 1)
        {
          v16 = 0xE600000000000000;
          v17 = 0x7070412D6E49;
        }

        else
        {
          v16 = 0xE800000000000000;
          v17 = 0x73676E6974746553;
        }
      }

      else
      {
        v16 = 0xE200000000000000;
        v17 = 17219;
      }

      v18 = sub_10005305C(v17, v16, &v21);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "[ui][%s] reporting count: %ld", v14, 0x16u);
      sub_100004B28(v15);
    }

    v3(v10);
    sub_10003427C(v3);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10002A38C()
{
  v1[73] = v0;
  v1[74] = type metadata accessor for MainActor();
  v1[75] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[76] = v3;
  v1[77] = v2;

  return _swift_task_switch(sub_10002A42C, v3, v2);
}

uint64_t sub_10002A42C()
{
  v1 = v0[74];
  v0[78] = *sub_100004BCC((v0[73] + 112), *(v0[73] + 136));
  v0[79] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[80] = v3;
  v0[81] = v2;

  return _swift_task_switch(sub_10002A4D4, v3, v2);
}

uint64_t sub_10002A4D4()
{
  v1 = *(*(v0 + 624) + 16);
  v2 = swift_task_alloc();
  *(v0 + 656) = v2;
  *v2 = v0;
  v2[1] = sub_10002A570;

  return sub_100011D94(v0 + 384);
}

uint64_t sub_10002A570()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v6 = *v0;

  v3 = *(v1 + 648);
  v4 = *(v1 + 640);

  return _swift_task_switch(sub_10002A690, v4, v3);
}

uint64_t sub_10002A690()
{
  v1 = *(v0 + 632);

  v2 = swift_task_alloc();
  *(v0 + 664) = v2;
  *v2 = v0;
  v2[1] = sub_10002A734;
  v3 = *(v0 + 584);

  return sub_100031974(v0 + 336, (v0 + 384));
}

uint64_t sub_10002A734()
{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v7 = *v0;

  v3 = *(v1 + 352);
  *(v1 + 672) = *(v1 + 336);
  *(v1 + 688) = v3;
  *(v1 + 704) = *(v1 + 368);
  sub_100008B68(v1 + 384, &qword_100083928, &qword_100061950);
  v4 = *(v1 + 616);
  v5 = *(v1 + 608);

  return _swift_task_switch(sub_10002A880, v5, v4);
}

uint64_t sub_10002A880()
{
  v25 = v0;
  if (v0[43])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[97] = sub_1000080BC(v1, qword_100086758);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[ui] Mark >", v4, 2u);
    }

    sub_100008AF8((v0 + 42), (v0 + 54), &qword_100083928, &qword_100061950);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100008B68((v0 + 42), &qword_100083928, &qword_100061950);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[87];
      v8 = v0[86];
      v9 = v0[85];
      v10 = v0[84];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      v23 = v10;
      *v11 = 136315138;
      v24 = v9;

      v13._countAndFlagsBits = 45;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v8;
      v14._object = v7;
      String.append(_:)(v14);
      v15 = sub_10005305C(v23, v9, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "[ui:mark] preferredMicrophone: %s", v11, 0xCu);
      sub_100004B28(v12);
    }

    v16 = v0[74];
    v0[98] = *sub_100004BCC((v0[73] + 112), *(v0[73] + 136));
    v0[99] = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[100] = v18;
    v0[101] = v17;

    return _swift_task_switch(sub_10002B1F0, v18, v17);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[90] = v19;
    *v19 = v0;
    v19[1] = sub_10002ABB8;
    v20 = v0[73];

    return sub_100031ED4((v0 + 16));
  }
}

uint64_t sub_10002ABB8()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v7 = *v0;

  v3 = *(v1 + 144);
  *(v1 + 728) = *(v1 + 128);
  *(v1 + 744) = v3;
  *(v1 + 760) = *(v1 + 160);
  *(v1 + 65) = *(v1 + 176);
  v4 = *(v1 + 616);
  v5 = *(v1 + 608);

  return _swift_task_switch(sub_10002AD04, v5, v4);
}

uint64_t sub_10002AD04()
{
  v56 = v0;
  v1 = *(v0 + 600);

  sub_100008AF8(v0 + 128, v0 + 184, &qword_100083B50, &qword_100061D60);
  v2 = *(v0 + 728);
  *(v0 + 72) = v2;
  v3 = *(v0 + 65);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  *(v0 + 80) = v8;
  *(v0 + 88) = v7;
  *(v0 + 96) = v6;
  *(v0 + 104) = v5;
  *(v0 + 112) = v4;
  *(v0 + 120) = v3;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000080BC(v9, qword_100086758);
  sub_100034A3C(v2, v8, v7, v6, v5, v4, v3);
  v10 = v7;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = v8;
  v14 = v12;
  v52 = v13;
  v53 = v2;
  v49 = v10;
  v50 = v6;
  sub_10003421C(v2, v13, v10, v6, v5, v4, v3);
  v54 = v3;
  v47 = v5;
  v48 = v4;
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136315138;
    if (v3 == 255)
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      *(v0 + 16) = v53;
      *(v0 + 24) = v52;
      *(v0 + 32) = v10;
      *(v0 + 40) = v50;
      *(v0 + 48) = v5;
      *(v0 + 56) = v4;
      *(v0 + 64) = v3 & 1;
      v17 = sub_10003D868();
      v19 = v18;
    }

    v20 = sub_10005305C(v17, v19, &v55);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v14, "[ui] updating selected device: %s", v15, 0xCu);
    sub_100004B28(v16);
  }

  v51 = *(v0 + 584);
  v21 = *(v51 + 64);
  swift_getKeyPath();
  *(v0 + 576) = v21;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  v25 = *(v21 + 48);
  v24 = *(v21 + 56);
  v27 = *(v21 + 64);
  v26 = *(v21 + 72);
  v28 = *(v21 + 80);
  sub_100034A3C(v22, v23, v25, v24, v27, v26, *(v21 + 80));

  v29 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 112);
  v35 = *(v0 + 120);
  if (v54 != 255)
  {
    if (v28 != 255)
    {
      if (v54)
      {
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if ((v28 & 1) == 0)
      {
LABEL_12:
        if (v53 == v22 && v52 == v23)
        {
          sub_10003421C(v53, v52, v25, v24, v27, v26, v28);
          v36 = v48;
          sub_10003421C(v53, v52, v49, v50, v47, v48, v54);
          v37 = v53;
          v38 = v52;
          v39 = v49;
          v40 = v50;
          v41 = v47;
LABEL_26:
          sub_10003421C(v37, v38, v39, v40, v41, v36, v54);
          goto LABEL_21;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10003421C(v22, v23, v25, v24, v27, v26, v28);
        v36 = v48;
        sub_10003421C(v53, v52, v49, v50, v47, v48, v54);
        if (v46)
        {
          v37 = v53;
          v38 = v52;
          v39 = v49;
          v40 = v50;
          v41 = v47;
          goto LABEL_26;
        }

LABEL_20:
        v42 = *(v51 + 64);

        sub_1000281CC(v0 + 72);

        goto LABEL_21;
      }

      v35 = v28;
      v34 = v26;
      v33 = v27;
      v32 = v24;
      v31 = v25;
      v30 = v23;
      v29 = v22;
      LOBYTE(v28) = v54;
      v27 = v47;
      v26 = v48;
      v25 = v49;
      v24 = v50;
      v23 = v52;
      v22 = v53;
    }

LABEL_19:
    sub_10003421C(v29, v30, v31, v32, v33, v34, v35);
    sub_10003421C(v22, v23, v25, v24, v27, v26, v28);
    goto LABEL_20;
  }

  if (v28 != 255)
  {
    goto LABEL_19;
  }

LABEL_21:
  v43 = *(v0 + 584);
  sub_10002EFE4();
  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10002B1F0()
{
  v1 = *(*(v0 + 784) + 16);
  v2 = swift_task_alloc();
  *(v0 + 816) = v2;
  *v2 = v0;
  v2[1] = sub_10002B290;

  return sub_100016BFC(v0 + 288, 1);
}

uint64_t sub_10002B290()
{
  v1 = *v0;
  v2 = *(*v0 + 816);
  v6 = *v0;

  v3 = *(v1 + 808);
  v4 = *(v1 + 800);

  return _swift_task_switch(sub_10002B3B0, v4, v3);
}

uint64_t sub_10002B3B0()
{
  v1 = *(v0 + 792);

  v2 = swift_task_alloc();
  *(v0 + 824) = v2;
  *v2 = v0;
  v2[1] = sub_10002B454;
  v3 = *(v0 + 584);

  return sub_100031974(v0 + 240, (v0 + 288));
}

uint64_t sub_10002B454()
{
  v1 = *v0;
  v2 = *(*v0 + 824);
  v6 = *v0;

  *(v1 + 832) = *(v1 + 240);
  *(v1 + 848) = *(v1 + 264);
  *(v1 + 856) = *(v1 + 280);
  sub_100008B68(v1 + 288, &qword_100083928, &qword_100061950);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);

  return _swift_task_switch(sub_10002B5C8, v4, v3);
}

uint64_t sub_10002B5C8()
{
  v80 = v0;
  v1 = v0 + 240;
  v2 = *(v0 + 240);
  v3 = *(v0 + 600);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 280);

  if (!v5)
  {
    v8 = *(v0 + 712);
    v7 = *(v0 + 696);
    v5 = *(v0 + 680);

    v11 = *(v0 + 704);
    v12 = *(v0 + 688);
    v2 = *(v0 + 672);
    goto LABEL_10;
  }

  v73 = v4;
  v75 = v6;
  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  if (*(v0 + 672) == *(v0 + 832) && *(v0 + 680) == *(v0 + 840))
  {
    sub_100008AF8(v0 + 336, v0 + 480, &qword_100083928, &qword_100061950);

    sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
LABEL_7:
    sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
    goto LABEL_8;
  }

  v66 = *(v0 + 680);
  v68 = *(v0 + 696);
  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100008AF8(v0 + 336, v0 + 480, &qword_100083928, &qword_100061950);

  sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
  if (v70)
  {
    goto LABEL_7;
  }

  v46 = *(v0 + 776);
  sub_100008AF8(v0 + 336, v0 + 528, &qword_100083928, &qword_100061950);
  v47 = v5;

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v0 + 688);
    v72 = v49;
    v51 = *(v0 + 672);
    loga = v48;
    v52 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = v51;
    *v52 = 136315394;
    v79 = v66;

    v53._countAndFlagsBits = 45;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v54._countAndFlagsBits = v50;
    v54._object = v68;
    String.append(_:)(v54);
    sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
    v55 = sub_10005305C(v78, v66, &v77);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    v78 = v2;
    v79 = v47;
    swift_bridgeObjectRetain_n();

    v56._countAndFlagsBits = 45;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v57._countAndFlagsBits = v73;
    v57._object = v7;
    String.append(_:)(v57);

    v58 = sub_10005305C(v78, v79, &v77);

    *(v52 + 14) = v58;
    v12 = v73;
    _os_log_impl(&_mh_execute_header, loga, v72, "[ui:mark] trying to render Prefered: %s, butd device is routed to %s", v52, 0x16u);
    swift_arrayDestroy();

    v5 = v47;
    goto LABEL_9;
  }

  sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
  v5 = v47;
LABEL_8:
  v12 = v73;
LABEL_9:

  v11 = v75;
LABEL_10:
  *(v0 + 72) = v2;
  *(v0 + 80) = v5;
  *(v0 + 88) = v12;
  *(v0 + 96) = v7;
  *(v0 + 104) = v11;
  *(v0 + 112) = v8;
  *(v0 + 120) = 0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000080BC(v13, qword_100086758);
  sub_100034A3C(v2, v5, v12, v7, v11, v8, 0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_10003421C(v2, v5, v12, v7, v11, v8, 0);
  v65 = v7;
  v67 = v8;
  log = v5;
  v74 = v12;
  v76 = v11;
  v71 = v2;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v11;
    v19 = v17;
    v78 = v17;
    *v16 = 136315138;
    *(v0 + 16) = v2;
    *(v0 + 24) = v5;
    *(v0 + 32) = v12;
    *(v0 + 40) = v7;
    *(v0 + 48) = v18;
    *(v0 + 56) = v8;
    *(v0 + 64) = 0;
    v20 = sub_10003D868();
    v22 = sub_10005305C(v20, v21, &v78);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ui] updating selected device: %s", v16, 0xCu);
    sub_100004B28(v19);

    v1 = v0 + 240;
  }

  v69 = *(v0 + 584);
  v23 = *(v69 + 64);
  swift_getKeyPath();
  *(v0 + 576) = v23;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v23 + 32);
  v24 = *(v23 + 40);
  v26 = *(v23 + 48);
  v27 = *(v23 + 56);
  v29 = *(v23 + 64);
  v28 = *(v23 + 72);
  v30 = *(v23 + 80);
  sub_100034A3C(v25, v24, v26, v27, v29, v28, *(v23 + 80));

  if (v30 == 255)
  {
    LOBYTE(v30) = *(v0 + 120);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    v31 = -1;
    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    goto LABEL_18;
  }

  if (v30)
  {
    v31 = 0;
    v32 = v28;
    v33 = v29;
    v34 = v27;
    v35 = v26;
    v36 = v24;
    v37 = v25;
    v27 = v65;
    v28 = v67;
    v26 = v74;
    v29 = v76;
    v24 = log;
    v25 = v71;
LABEL_18:
    sub_10003421C(v37, v36, v35, v34, v33, v32, v30);
    sub_10003421C(v25, v24, v26, v27, v29, v28, v31);
LABEL_19:
    v38 = v1 - 168;
    v39 = *(v69 + 64);

    sub_1000281CC(v38);

    goto LABEL_28;
  }

  if (v71 == v25 && log == v24)
  {
    sub_10003421C(v71, log, v26, v27, v29, v28, v30);
    v40 = v67;
    sub_10003421C(v71, log, v74, v65, v76, v67, 0);
    v41 = v71;
    v42 = log;
    v43 = v74;
    v44 = v65;
    v45 = v76;
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003421C(v25, v24, v26, v27, v29, v28, v30);
    v40 = v67;
    sub_10003421C(v71, log, v74, v65, v76, v67, 0);
    if ((v62 & 1) == 0)
    {
      goto LABEL_19;
    }

    v41 = v71;
    v42 = log;
    v43 = v74;
    v44 = v65;
    v45 = v76;
  }

  sub_10003421C(v41, v42, v43, v44, v45, v40, 0);
LABEL_28:
  v59 = *(v0 + 584);
  sub_10002EFE4();
  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_10002BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for TaskPriority();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v9;
  v4[9] = v8;

  return _swift_task_switch(sub_10002BF4C, v9, v8);
}

uint64_t sub_10002BF4C()
{
  v1 = v0[6];
  v0[10] = *sub_100004BCC((v0[2] + 112), *(v0[2] + 136));
  v0[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v3;
  v0[13] = v2;

  return _swift_task_switch(sub_10002BFF0, v3, v2);
}

uint64_t sub_10002BFF0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
  v0[14] = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
  if (*(v1 + v2) == 1)
  {
    v0[15] = *(v1 + 16);
    v3 = sub_10002C094;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v0[11];

    v4 = v0[8];
    v5 = v0[9];
    v3 = sub_10002C3B0;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10002C094()
{
  v1 = v0[5];
  v2 = *(v0[15] + 16);
  v0[16] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_10002C1B8;
  v4 = v0[5];

  return (sub_100043604)();
}

uint64_t sub_10002C1B8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10002C32C, 0, 0);
}

uint64_t sub_10002C344()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  *(v3 + v1) = 0;
  v4 = v0[8];
  v5 = v0[9];

  return _swift_task_switch(sub_10002C3B0, v4, v5);
}

uint64_t sub_10002C3B0()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_100003B30(&qword_100083B60, &qword_100061E18);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v10;
  v5[14] = v9;

  return _swift_task_switch(sub_10002C520, v10, v9);
}

uint64_t sub_10002C520()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_100003B30(&qword_100083B68, &qword_100061E20);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[11];
  v5 = static MainActor.shared.getter();
  v0[15] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10002C61C;
  v8 = v0[10];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_10002C61C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_10002C760, v5, v4);
}

uint64_t sub_10002C760()
{
  if (v0[5] && (v1 = v0[7], , Strong = swift_weakLoadStrong(), (v0[17] = Strong) != 0))
  {
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_10002C874;

    return sub_100029334(0);
  }

  else
  {
    v5 = v0[12];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10002C874()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_10002C994, v4, v3);
}

uint64_t sub_10002C994()
{
  v1 = v0[17];

  v2 = v0[11];
  v3 = static MainActor.shared.getter();
  v0[15] = v3;
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10002C61C;
  v6 = v0[10];
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v3, &protocol witness table for MainActor, v7);
}

uint64_t sub_10002CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 224) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  v7 = sub_100003B30(&qword_100083B40, &unk_100061D30);
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for MainActor();
  *(v6 + 168) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 176) = v11;
  *(v6 + 184) = v10;

  return _swift_task_switch(sub_10002CB60, v11, v10);
}

uint64_t sub_10002CB60()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  sub_100003B30(&qword_100083B48, &qword_100061F50);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[20];
  v5 = static MainActor.shared.getter();
  v0[24] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_10002CC5C;
  v8 = v0[19];
  v9 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_10002CC5C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return _swift_task_switch(sub_10002CDA0, v5, v4);
}

uint64_t sub_10002CDA0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = *(v0 + 128);
    Strong = swift_weakLoadStrong();
    *(v0 + 208) = Strong;
    if (Strong)
    {
      if (*(Strong + 105))
      {
        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000080BC(v8, qword_100086758);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v43 = v10;
          v44 = v4;
          v45 = v9;
          v11 = *(v0 + 224);
          v12 = swift_slowAlloc();
          *(v0 + 112) = swift_slowAlloc();
          *v12 = 136315394;
          v13 = 0xE600000000000000;
          v14 = 0x7070412D6E49;
          if (v11 != 1)
          {
            v14 = 0x73676E6974746553;
            v13 = 0xE800000000000000;
          }

          if (v11)
          {
            v15 = v14;
          }

          else
          {
            v15 = 17219;
          }

          if (v11)
          {
            v16 = v13;
          }

          else
          {
            v16 = 0xE200000000000000;
          }

          v17 = sub_10005305C(v15, v16, (v0 + 112));

          *(v12 + 4) = v17;
          *(v12 + 12) = 2080;
          *(v0 + 88) = v2;
          *(v0 + 96) = v1;

          v18._countAndFlagsBits = 45;
          v18._object = 0xE100000000000000;
          String.append(_:)(v18);
          v19._countAndFlagsBits = v44;
          v19._object = v3;
          String.append(_:)(v19);

          v20 = sub_10005305C(*(v0 + 88), *(v0 + 96), (v0 + 112));

          *(v12 + 14) = v20;
          _os_log_impl(&_mh_execute_header, v45, v43, "[%s] rendering new picked mic: %s", v12, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v42 = swift_task_alloc();
        *(v0 + 216) = v42;
        *v42 = v0;
        v42[1] = sub_10002D360;

        return sub_10002A38C();
      }

      else
      {

        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_1000080BC(v25, qword_100086758);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = *(v0 + 224);
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *(v0 + 104) = v30;
          *v29 = 136315138;
          v31 = 0xE600000000000000;
          v32 = 0x7070412D6E49;
          if (v28 != 1)
          {
            v32 = 0x73676E6974746553;
            v31 = 0xE800000000000000;
          }

          if (v28)
          {
            v33 = v32;
          }

          else
          {
            v33 = 17219;
          }

          if (v28)
          {
            v34 = v31;
          }

          else
          {
            v34 = 0xE200000000000000;
          }

          v35 = sub_10005305C(v33, v34, (v0 + 104));

          *(v29 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v26, v27, "[%s] stop rendering because: discovering: false", v29, 0xCu);
          sub_100004B28(v30);
        }

        v36 = *(v0 + 160);
        v37 = static MainActor.shared.getter();
        *(v0 + 192) = v37;
        v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v39 = swift_task_alloc();
        *(v0 + 200) = v39;
        *v39 = v0;
        v39[1] = sub_10002CC5C;
        v40 = *(v0 + 152);
        v41 = *(v0 + 136);

        return AsyncStream.Iterator.next(isolation:)(v0 + 16, v37, &protocol witness table for MainActor, v41);
      }
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  v21 = *(v0 + 168);
  v22 = *(v0 + 152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10002D360()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_10002D480, v4, v3);
}

uint64_t sub_10002D480()
{
  v1 = v0[26];

  v2 = v0[20];
  v3 = static MainActor.shared.getter();
  v0[24] = v3;
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10002CC5C;
  v6 = v0[19];
  v7 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v3, &protocol witness table for MainActor, v7);
}

uint64_t sub_10002D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 181) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_100003B30(&qword_100083B30, &qword_100061D08);
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for MainActor();
  *(v6 + 96) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 104) = v11;
  *(v6 + 112) = v10;

  return _swift_task_switch(sub_10002D64C, v11, v10);
}

uint64_t sub_10002D64C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_100003B30(&qword_100083B38, &qword_100061D10);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[11];
  v5 = static MainActor.shared.getter();
  v0[15] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10002D748;
  v8 = v0[10];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_10002D748()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_10002D88C, v5, v4);
}

uint64_t sub_10002D88C()
{
  if ((*(v0 + 180) & 1) != 0 || (v1 = *(v0 + 176), v2 = *(v0 + 56), Strong = swift_weakLoadStrong(), (*(v0 + 136) = Strong) == 0))
  {
    v20 = *(v0 + 96);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v4 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000080BC(v5, qword_100086758);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 181);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *(v0 + 40) = v10;
      *v9 = 136315394;
      v11 = 0xE600000000000000;
      v12 = 0x7070412D6E49;
      if (v8 != 1)
      {
        v12 = 0x73676E6974746553;
        v11 = 0xE800000000000000;
      }

      if (v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = 17219;
      }

      if (v8)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0xE200000000000000;
      }

      v15 = sub_10005305C(v13, v14, (v0 + 40));

      *(v9 + 4) = v15;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v1;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] input gain updated: %f", v9, 0x16u);
      sub_100004B28(v10);
    }

    *(v0 + 144) = *(v4 + 80);
    v16 = swift_allocObject();
    *(v0 + 152) = v16;
    swift_weakInit();
    v17 = swift_allocObject();
    *(v0 + 160) = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v1;

    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_10002DBC4;

    return sub_100055C14(0xD000000000000017, 0x8000000100068AB0, 100000000000000000, 0, &unk_100061D20, v17);
  }
}

uint64_t sub_10002DBC4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v9 = *v0;

  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return _swift_task_switch(sub_10002DD48, v7, v6);
}

uint64_t sub_10002DD48()
{
  v1 = v0[17];

  v2 = v0[11];
  v3 = static MainActor.shared.getter();
  v0[15] = v3;
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10002D748;
  v6 = v0[10];
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v3, &protocol witness table for MainActor, v7);
}

uint64_t sub_10002DE0C(uint64_t a1, float a2)
{
  *(v2 + 64) = a2;
  *(v2 + 48) = a1;
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DEA8, v4, v3);
}

uint64_t sub_10002DEA8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 64);
    v5 = *(Strong + 64);

    v6 = v4;
    if (*(v5 + 88) == v6)
    {
      *(v5 + 88) = v6;
    }

    else
    {
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v0 + 40) = v5;
      sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 377) = a7;
  *(v7 + 152) = a5;
  *(v7 + 160) = a6;
  *(v7 + 144) = a4;
  v8 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v9 = type metadata accessor for TaskPriority();
  *(v7 + 184) = v9;
  v10 = *(v9 - 8);
  *(v7 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  v12 = sub_100003B30(&qword_100083B10, &qword_100061C78);
  *(v7 + 208) = v12;
  v13 = *(v12 - 8);
  *(v7 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = type metadata accessor for MainActor();
  *(v7 + 240) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 248) = v16;
  *(v7 + 256) = v15;

  return _swift_task_switch(sub_10002E1E0, v16, v15);
}

uint64_t sub_10002E1E0()
{
  v1 = v0[28];
  v2 = v0[18];
  v3 = v0[19];
  sub_100003B30(&qword_100083B18, &unk_100061C80);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[33] = 0;
  v4 = v0[29];
  v5 = static MainActor.shared.getter();
  v0[34] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_10002E2E0;
  v8 = v0[28];
  v9 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 47, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_10002E2E0()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v7 = *v0;

  v4 = *(v1 + 256);
  v5 = *(v1 + 248);

  return _swift_task_switch(sub_10002E424, v5, v4);
}

uint64_t sub_10002E424()
{
  if (*(v0 + 376) == 2 || (v1 = *(v0 + 152), Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 200);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 160);
    *(v0 + 296) = *(Strong + 64);
    *(v0 + 304) = *sub_100004BCC(v4, v4[3]);

    *(v0 + 312) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 320) = v6;
    *(v0 + 328) = v5;

    return _swift_task_switch(sub_10002E58C, v6, v5);
  }
}

uint64_t sub_10002E5B4()
{
  v1 = v0[25];
  v2 = *(v0[42] + 16);
  v3 = swift_allocObject();
  v0[43] = v3;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_10002E6D0;
  v5 = v0[25];

  return sub_100045E90(0xD000000000000014, 0x8000000100068A90, v5, &unk_100062C80, v3);
}

uint64_t sub_10002E6D0(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 200);
  v7 = *(*v1 + 192);
  v8 = *(*v1 + 184);
  v13 = *v1;
  *(v3 + 378) = a1;

  v9 = *(v7 + 8);
  *(v3 + 360) = v9;
  *(v3 + 368) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v10 = *(v2 + 328);
  v11 = *(v2 + 320);

  return _swift_task_switch(sub_10002E88C, v11, v10);
}

uint64_t sub_10002E88C()
{
  v1 = v0[39];

  v2 = v0[31];
  v3 = v0[32];

  return _swift_task_switch(sub_10002E8F0, v2, v3);
}

uint64_t sub_10002E8F0()
{
  v1 = *(v0 + 378);
  v2 = *(v0 + 296);
  if (v1 == *(v2 + 81))
  {
    *(v2 + 81) = v1;

    v55 = *(v0 + 264);
  }

  else
  {
    v3 = *(v0 + 264);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 112) = v2;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v55 = v3;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 288);
  v6 = type metadata accessor for Logger();
  sub_1000080BC(v6, qword_100086758);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 377);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v0 + 128) = v11;
    *v10 = 136315394;
    v12 = 0xE600000000000000;
    v13 = 0x7070412D6E49;
    if (v9 != 1)
    {
      v13 = 0x73676E6974746553;
      v12 = 0xE800000000000000;
    }

    if (v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = 17219;
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    v16 = *(v0 + 288);
    v17 = sub_10005305C(v14, v15, (v0 + 128));

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    v18 = *(v16 + 64);
    swift_getKeyPath();
    *(v0 + 136) = v18;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 81);

    *(v10 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] input gain settability updated: %{BOOL}d", v10, 0x12u);
    sub_100004B28(v11);
  }

  else
  {
    v20 = *(v0 + 288);
  }

  v21 = *(v0 + 288);
  v22 = v21[4];
  if (v22)
  {
    v23 = v21[5];
    v24 = v21[8];
    swift_getKeyPath();
    *(v0 + 120) = v24;
    sub_100034860(v22);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v24 + 81);

    v22(v25);
    sub_10003427C(v22);
  }

  *(v0 + 40) = &type metadata for FeatureFlags;
  *(v0 + 48) = sub_100034720();
  v26 = isFeatureEnabled(_:)();
  sub_100004B28((v0 + 16));
  v27 = *(v0 + 288);
  if (v26)
  {
    v28 = *(v0 + 232);
    v29 = *(v0 + 184);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    (*(v30 + 56))(v32, 1, 1, v29);
    v33 = swift_allocObject();
    swift_weakInit();

    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v33;

    sub_100008AF8(v32, v31, &qword_1000838E0, &qword_100061C70);
    LODWORD(v34) = (*(v30 + 48))(v31, 1, v29);

    if (v34 == 1)
    {
      sub_100008B68(*(v0 + 168), &qword_1000838E0, &qword_100061C70);
    }

    else
    {
      v38 = *(v0 + 360);
      v37 = *(v0 + 368);
      v39 = *(v0 + 184);
      v40 = *(v0 + 168);
      TaskPriority.rawValue.getter();
      v38(v40, v39);
    }

    v42 = v35[2];
    v41 = v35[3];
    swift_unknownObjectRetain();

    if (v42)
    {
      swift_getObjectType();
      v43 = dispatch thunk of Actor.unownedExecutor.getter();
      v45 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    sub_100008B68(*(v0 + 176), &qword_1000838E0, &qword_100061C70);
    v46 = swift_allocObject();
    *(v46 + 16) = &unk_100061CC0;
    *(v46 + 24) = v35;
    if (v45 | v43)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v43;
      *(v0 + 80) = v45;
    }

    v47 = *(v0 + 288);
    swift_task_create();
  }

  else
  {
    v36 = *(v0 + 288);
  }

  *(v0 + 264) = v55;
  v48 = *(v0 + 232);
  v49 = static MainActor.shared.getter();
  *(v0 + 272) = v49;
  v50 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v51 = swift_task_alloc();
  *(v0 + 280) = v51;
  *v51 = v0;
  v51[1] = sub_10002E2E0;
  v52 = *(v0 + 224);
  v53 = *(v0 + 208);

  return AsyncStream.Iterator.next(isolation:)(v0 + 376, v49, &protocol witness table for MainActor, v53);
}

uint64_t sub_10002EFE4()
{
  v0 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v12[-1] - v3;
  v12[3] = &type metadata for FeatureFlags;
  v12[4] = sub_100034720();
  v5 = isFeatureEnabled(_:)();
  result = sub_100004B28(v12);
  if (v5)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_100054078(0, 0, v4, &unk_100061CF8, v10);
  }

  return result;
}

uint64_t sub_10002F164(double a1)
{
  v2 = v1;
  v4 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v23[-1] - v7;
  v23[3] = &type metadata for FeatureFlags;
  v23[4] = sub_100034720();
  v9 = isFeatureEnabled(_:)();
  result = sub_100004B28(v23);
  if (v9)
  {
    v11 = *(v2 + 64);
    swift_getKeyPath();
    v23[0] = v11;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v11 + 88);

    if (vabdd_f64(a1, v12) >= 0.01)
    {
      v13 = *(v2 + 64);
      if (*(v13 + 88) == a1)
      {
        *(v13 + 88) = a1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath, v15);
        *(&v22 - 2) = v13;
        *(&v22 - 1) = a1;
        v23[0] = v13;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v16 = *(v2 + 64);
      swift_getKeyPath();
      v23[0] = v16;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v16 + 81);

      if (v17 == 1)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
        v19 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for MainActor();

        v20 = static MainActor.shared.getter();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = &protocol witness table for MainActor;
        *(v21 + 32) = v19;
        *(v21 + 40) = a1;

        sub_100054078(0, 0, v8, &unk_100061F48, v21);
      }
    }
  }

  return result;
}

uint64_t sub_10002F4B4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  *(v5 + 40) = a5;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return _swift_task_switch(sub_10002F550, v7, v6);
}

uint64_t sub_10002F550()
{
  v21 = v0;
  v1 = *(v0 + 5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 10) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000080BC(v4, qword_100086758);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315394;
      if (*(v3 + 72))
      {
        if (*(v3 + 72) == 1)
        {
          v9 = 0xE600000000000000;
          v10 = 0x7070412D6E49;
        }

        else
        {
          v9 = 0xE800000000000000;
          v10 = 0x73676E6974746553;
        }
      }

      else
      {
        v9 = 0xE200000000000000;
        v10 = 17219;
      }

      v14 = *(v0 + 6);
      v15 = sub_10005305C(v10, v9, &v20);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] sending new input gain to context: %f", v7, 0x16u);
      sub_100004B28(v8);
    }

    v16 = v0[6];
    v18 = *sub_100004BCC((v3 + 112), *(v3 + 136));
    v19 = swift_task_alloc();
    *(v0 + 11) = v19;
    *v19 = v0;
    v19[1] = sub_10002F7F4;
    v17 = v16;

    return sub_1000414CC(v17);
  }

  else
  {
    v11 = *(v0 + 7);

    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_10002F7F4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10002F914, v4, v3);
}

uint64_t sub_10002F914()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_10002FA18, v6, v5);
}

uint64_t sub_10002FA18()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *sub_100004BCC((Strong + 112), *(Strong + 136));
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_10002FB14;

    return sub_10004107C();
  }

  else
  {
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10002FB14(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return _swift_task_switch(sub_10002FC34, v5, v4);
}

uint64_t sub_10002FC34()
{
  v1 = *(*(v0 + 88) + 64);
  v2 = *(v0 + 120);
  if (*(v1 + 88) == v2)
  {
    *(v1 + 88) = v2;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    *(v0 + 40) = v1;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 104) = 0;
  v4 = *sub_100004BCC((*(v0 + 88) + 112), *(*(v0 + 88) + 136));
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_10002FDE0;

  return sub_100041890();
}

uint64_t sub_10002FDE0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 124) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return _swift_task_switch(sub_10002FF08, v5, v4);
}

uint64_t sub_10002FF08()
{
  v25 = v0;
  v1 = *(v0 + 124);
  v2 = *(*(v0 + 88) + 64);
  if (v1 == *(v2 + 81))
  {
    v6 = *(v0 + 64);
    v7 = *(*(v0 + 88) + 64);

    *(v2 + 81) = v1;
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 64);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    *(v0 + 48) = v2;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 88);
  v9 = type metadata accessor for Logger();
  sub_1000080BC(v9, qword_100086758);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 88);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315650;
    if (*(v13 + 72))
    {
      if (*(v13 + 72) == 1)
      {
        v16 = 0xE600000000000000;
        v17 = 0x7070412D6E49;
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x73676E6974746553;
      }
    }

    else
    {
      v16 = 0xE200000000000000;
      v17 = 17219;
    }

    v18 = *(v0 + 124);
    v19 = *(v0 + 88);
    v20 = *(v0 + 120);
    v21 = sub_10005305C(v17, v16, &v24);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v20;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] got new input gain from context: %f, settability: %{BOOL}d", v14, 0x1Cu);
    sub_100004B28(v15);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100030234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8, v6);
  v9 = &v22[-v8];
  v10 = *(a1 + 48);
  if (v10 != 255)
  {
    v11 = *(a1 + 16);
    v26 = *a1;
    v27 = v11;
    v28 = *(a1 + 32);
    v12 = *(v2 + 64);

    sub_100008AF8(a1, &v23, &qword_100083B50, &qword_100061D60);
    sub_1000281CC(a1);

    if (v10)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();

      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;

      sub_100053D74(0, 0, v9, &unk_100061F10, v16);
    }

    else
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      v29 = v26;
      v30 = v27;
      v31 = v28;
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();
      sub_100025FCC(&v29, v22);
      sub_100025FCC(&v30, v22);
      sub_100025FCC(&v31, v22);

      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = &protocol witness table for MainActor;
      v21 = v24;
      *(v20 + 32) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v25;
      *(v20 + 80) = v18;

      sub_100054078(0, 0, v9, &unk_100061F00, v20);
    }
  }

  return result;
}

uint64_t sub_10003051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a1;
  v4[15] = a4;
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1000305B8, v6, v5);
}

uint64_t sub_1000305B8()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 120);
    sub_100026C30(Strong + 112, v0 + 16);

    v4 = sub_100004BCC((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = *(v5 + 152);

    swift_getKeyPath();
    *(v0 + 104) = v6;
    sub_100035598(&qword_100083460, type metadata accessor for MeterController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *&v6[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession];

    if (v7)
    {
      v8 = [*(v7 + 16) isActive];
    }

    else
    {
LABEL_5:
      v8 = 0;
    }

    *(v0 + 200) = v8;
    v9 = *(v0 + 128);
    *(v0 + 160) = *v4;
    *(v0 + 168) = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 176) = v11;
    *(v0 + 184) = v10;

    return _swift_task_switch(sub_1000307D4, v11, v10);
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 112);

    *v13 = 1;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1000307D4()
{
  v1 = *(*(v0 + 160) + 16);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_100030870;
  v3 = *(v0 + 200);

  return sub_100017D50(v3);
}

uint64_t sub_100030870()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_100030990, v4, v3);
}

uint64_t sub_100030990()
{
  v1 = v0[21];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_1000309F4, v2, v3);
}

uint64_t sub_1000309F4()
{
  v1 = v0[17];
  v2 = v0[14];

  *v2 = 0;
  sub_100004B28(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100030A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_100030B00, v7, v6);
}

uint64_t sub_100030B00()
{
  v29 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  *(v0 + 104) = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 120) = *(v1 + 32);
  sub_100025FCC(v0 + 104, v0 + 136);

  sub_100025FCC(v0 + 120, v0 + 152);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100026028(v0 + 104);

  sub_100026028(v0 + 120);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v28 = *(v0 + 104);
    sub_100025FCC(v0 + 104, v0 + 168);
    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v3;
    v10._object = v4;
    String.append(_:)(v10);
    v11 = sub_10005305C(v28, *(&v28 + 1), &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[ui] tap over setMicrophoneIfPossible with: %s", v7, 0xCu);
    sub_100004B28(v8);
  }

  v12 = *(v0 + 200);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(v0 + 200);
    sub_100026C30(Strong + 112, v0 + 16);

    v15 = sub_100004BCC((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = *(v16 + 152);

    swift_getKeyPath();
    *(v0 + 184) = v17;
    sub_100035598(&qword_100083460, type metadata accessor for MeterController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *&v17[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession];

    if (v18)
    {
      v19 = [*(v18 + 16) isActive];
    }

    else
    {
LABEL_9:
      v19 = 0;
    }

    *(v0 + 312) = v19;
    v20 = *(v0 + 208);
    v21 = *(v0 + 112);
    *(v0 + 240) = *(v0 + 104);
    *(v0 + 248) = v21;
    *(v0 + 256) = *v15;
    *(v0 + 264) = static MainActor.shared.getter();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 272) = v23;
    *(v0 + 280) = v22;

    return _swift_task_switch(sub_100030EBC, v23, v22);
  }

  else
  {
    v24 = *(v0 + 216);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100030EBC()
{
  v1 = *(v0[32] + 16);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_100030F6C;
  v4 = v0[30];
  v3 = v0[31];

  return sub_100025A88(v4, v3);
}

uint64_t sub_100030F6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = a1;

  v4 = *(v2 + 280);
  v5 = *(v2 + 272);

  return _swift_task_switch(sub_100031094, v5, v4);
}

uint64_t sub_100031094()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(*(v0 + 256) + 16);
    v3 = swift_task_alloc();
    *(v0 + 304) = v3;
    *v3 = v0;
    v3[1] = sub_100031174;
    v4 = *(v0 + 312);

    return sub_100012278(v1, v4);
  }

  else
  {
    v6 = *(v0 + 264);

    v7 = *(v0 + 224);
    v8 = *(v0 + 232);

    return _swift_task_switch(sub_100031300, v7, v8);
  }
}

uint64_t sub_100031174()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return _swift_task_switch(sub_100031294, v4, v3);
}

uint64_t sub_100031294()
{
  v1 = v0[37];
  v2 = v0[33];

  v3 = v0[28];
  v4 = v0[29];

  return _swift_task_switch(sub_100031300, v3, v4);
}

uint64_t sub_100031300()
{
  v1 = v0[27];

  sub_100004B28(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100031368(uint64_t a1)
{
  v26 = *(a1 + 8);
  v27 = *a1;
  v24 = *(a1 + 24);
  v25 = *(a1 + 16);
  v22 = *(a1 + 40);
  v23 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(v1 + 64);
  swift_getKeyPath();
  v28[0] = v4;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v8 = *(v4 + 48);
  v7 = *(v4 + 56);
  v10 = *(v4 + 64);
  v9 = *(v4 + 72);
  v11 = *(v4 + 80);
  sub_100034A3C(v6, v5, v8, v7, v10, v9, *(v4 + 80));

  if (v11 == 255)
  {
    sub_1000355E0(a1, v28);
    sub_10003421C(v6, v5, v8, v7, v10, v9, 255);
    v18 = v3 & 1;
    v13 = v26;
    v12 = v27;
    v15 = v24;
    v14 = v25;
    v17 = v22;
    v16 = v23;
    goto LABEL_6;
  }

  if (v11)
  {
    if ((v3 & 1) == 0)
    {
LABEL_4:
      v12 = v6;
      v13 = v5;
      v14 = v8;
      v15 = v7;
      v16 = v10;
      v17 = v9;
      v18 = v11;
LABEL_6:
      sub_10003421C(v12, v13, v14, v15, v16, v17, v18);
      v19 = 0;
      return v19 & 1;
    }
  }

  else if (v3)
  {
    goto LABEL_4;
  }

  if (v6 == v27 && v5 == v26)
  {
    sub_10003421C(v27, v26, v8, v7, v10, v9, v11);
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003421C(v6, v5, v8, v7, v10, v9, v11);
  }

  return v19 & 1;
}

uint64_t sub_10003156C(uint64_t a1, char a2)
{
  v2[8] = a1;
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_100031634;

  return sub_100032310((v2 + 2), a2);
}

uint64_t sub_100031634()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  *(v1 + 96) = *(v1 + 16);
  *(v1 + 112) = *(v1 + 32);
  *(v1 + 120) = *(v1 + 40);
  *(v1 + 136) = *(v1 + 56);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000317C0, v6, v5);
}

uint64_t sub_1000317C0()
{
  v1 = *(v0 + 80);

  v2 = sub_100034588(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100034588((v3 > 1), v4 + 1, 1, v2);
  }

  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 96);
  v8 = *(v0 + 112);
  v10 = *(v0 + 64);
  *(v2 + 2) = v5;
  v11 = &v2[56 * v4];
  *(v11 + 2) = v9;
  *(v11 + 3) = v8;
  *(v11 + 8) = v7;
  *(v11 + 9) = v6;
  v11[80] = 1;
  v12 = *(v10 + 16);
  v23 = v0;
  if (v12)
  {
    v13 = 56 * v4 + 136;
    v14 = (*(v0 + 64) + 72);
    do
    {
      v15 = *(v14 - 4);
      v16 = *(v14 - 2);
      v25 = *(v14 - 3);
      v26 = *(v14 - 5);
      v17 = *v14;
      v24 = *(v14 - 1);
      v18 = v2;
      v19 = *(v2 + 3);

      if (v5 >= v19 >> 1)
      {
        v2 = sub_100034588((v19 > 1), v5 + 1, 1, v18);
      }

      else
      {
        v2 = v18;
      }

      v14 += 6;
      *(v2 + 2) = v5 + 1;
      v20 = &v2[v13];
      *(v20 - 6) = v26;
      *(v20 - 5) = v15;
      *(v20 - 4) = v25;
      *(v20 - 3) = v16;
      *(v20 - 2) = v24;
      *(v20 - 1) = v17;
      v13 += 56;
      ++v5;
      *v20 = 0;
      --v12;
    }

    while (v12);
  }

  v21 = *(v23 + 8);

  return v21(v2);
}

uint64_t sub_100031974(uint64_t a1, _OWORD *a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 88) = *a2;
  *(v3 + 104) = v4;
  *(v3 + 120) = a2[2];
  *(v3 + 136) = type metadata accessor for MainActor();
  *(v3 + 144) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 152) = v6;
  *(v3 + 160) = v5;

  return _swift_task_switch(sub_100031A28, v6, v5);
}

uint64_t sub_100031A28()
{
  v1 = *(v0 + 72);
  *(v0 + 168) = *v1;
  v2 = v1[1];
  *(v0 + 176) = v2;
  *(v0 + 184) = v1[2];
  *(v0 + 192) = v1[3];
  *(v0 + 200) = v1[4];
  *(v0 + 208) = v1[5];
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    *(v0 + 216) = *sub_100004BCC((*(v0 + 80) + 112), *(*(v0 + 80) + 136));

    *(v0 + 224) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 232) = v8;
    *(v0 + 240) = v7;

    return _swift_task_switch(sub_100031B80, v8, v7);
  }

  else
  {
    v9 = *(v0 + 144);

    v10 = *(v0 + 64);
    v11 = *(v0 + 104);
    v12 = *(v0 + 120);
    *v10 = *(v0 + 88);
    v10[1] = v11;
    v10[2] = v12;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100031B80()
{
  v1 = *(*(v0 + 216) + 16);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_100031C14;

  return sub_100015EF4();
}

uint64_t sub_100031C14(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return _swift_task_switch(sub_100031D3C, v5, v4);
}

uint64_t sub_100031D3C()
{
  v1 = v0[28];

  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_100031DA0, v2, v3);
}

uint64_t sub_100031DA0()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v15 = *(v0 + 168);
  v16 = *(v0 + 184);
  v4 = *(v0 + 144);

  *(v0 + 16) = v15;
  *(v0 + 32) = v16;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  LOBYTE(v3) = sub_100034B04(sub_10003579C, v5, v1);

  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  if (v3)
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
  }

  else
  {
    v11 = *(v0 + 176);

    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0uLL;
  }

  v12 = *(v0 + 64);
  *v12 = v10;
  *(v12 + 16) = v9;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v6;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100031ED4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_100031F88;

  return sub_100029334(1);
}

uint64_t sub_100031F88()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000320C4, v5, v4);
}

uint64_t sub_1000320C4()
{
  v1 = v0;
  v2 = v0[6];
  v3 = v0[4];

  v4 = *(v3 + 64);
  swift_getKeyPath();
  v22 = v1;
  v1[2] = v4;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 24);

  v21 = *(v5 + 16);
  if (v21)
  {
    v7 = 0;
    v8 = (v5 + 80);
    v20 = v5;
    while (v7 < *(v5 + 16))
    {
      v9 = v22[5];
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      v23 = *(v8 - 5);
      v24 = *(v8 - 6);
      sub_100034A54();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v14)
      {
        v17 = 1;
        v16 = v23;
        v15 = v24;
        goto LABEL_10;
      }

      ++v7;
      result = sub_100034234();
      v8 += 56;
      v5 = v20;
      if (v21 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v15 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v17 = -1;
LABEL_10:

    v18 = v22[3];
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v10;
    *(v18 + 24) = v11;
    *(v18 + 32) = v12;
    *(v18 + 40) = v13;
    *(v18 + 48) = v17;
    v19 = v22[1];

    return v19();
  }

  return result;
}

uint64_t sub_100032310(uint64_t a1, char a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v5 = type metadata accessor for TaskPriority();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v3[21] = v8;
  *v8 = v3;
  v8[1] = sub_100032434;

  return sub_100032D64((v3 + 8), a2);
}

uint64_t sub_100032434()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 176) = v6;
  *(v1 + 184) = v5;

  return _swift_task_switch(sub_100032578, v6, v5);
}

uint64_t sub_100032578()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 160);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v13 = *(v0 + 80);
    v5 = *(v0 + 64);

    v6 = *(v0 + 144);
    v7 = *(v0 + 112);

    *v7 = v5;
    *(v7 + 8) = v1;
    *(v7 + 16) = v13;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 152);
    *(v0 + 192) = *sub_100004BCC((*(v0 + 120) + 112), *(*(v0 + 120) + 136));
    *(v0 + 200) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 208) = v12;
    *(v0 + 216) = v11;

    return _swift_task_switch(sub_1000326A0, v12, v11);
  }
}

uint64_t sub_1000326C8()
{
  v1 = *(*(v0 + 224) + 104);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_1000326EC, v1, 0);
}

uint64_t sub_1000326EC()
{
  v1 = v0[29];
  v2 = v1[14];
  v0[30] = v2;
  v3 = v1[15];
  v0[31] = v3;
  v0[32] = v1[16];
  v0[33] = v1[17];
  v0[34] = v1[18];
  v0[35] = v1[19];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_100032784, 0, 0);
}

uint64_t sub_100032784()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 240);
    *(v0 + 336) = *(v0 + 272);
    *(v0 + 344) = v2;
    *(v0 + 320) = v3;
    *(v0 + 304) = v4;
    *(v0 + 312) = v1;
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);

    return _swift_task_switch(sub_100032AE4, v5, v6);
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(*(v0 + 224) + 16);
    v9 = swift_allocObject();
    *(v0 + 288) = v9;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v10 = swift_task_alloc();
    *(v0 + 296) = v10;
    *v10 = v0;
    v10[1] = sub_10003290C;
    v11 = *(v0 + 144);

    return (sub_10004464C)(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v11, &unk_100061708, v9);
  }
}

uint64_t sub_10003290C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 128);
  v13 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 56);
  v9 = *(v1 + 16);
  v8 = *(v1 + 32);
  *(v1 + 336) = *(v1 + 48);
  *(v1 + 344) = v7;
  *(v1 + 304) = v9;
  *(v1 + 320) = v8;
  v10 = *(v1 + 216);
  v11 = *(v1 + 208);

  return _swift_task_switch(sub_100032AE4, v11, v10);
}

uint64_t sub_100032AE4()
{
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_100032B48, v2, v3);
}

uint64_t sub_100032B48()
{
  v28 = v0;
  v1 = v0[20];

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[39];
  v5 = type metadata accessor for Logger();
  sub_1000080BC(v5, qword_100086758);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[40];
    v8 = v0[41];
    v11 = v0[38];
    v10 = v0[39];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    v26 = v11;
    *v12 = 136315138;
    v27 = v10;

    v14._countAndFlagsBits = 45;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v9;
    v15._object = v8;
    String.append(_:)(v15);
    v16 = sub_10005305C(v26, v10, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[ui:mark] fallbackMicrophone: %s", v12, 0xCu);
    sub_100004B28(v13);
  }

  v17 = v0[42];
  v18 = v0[43];
  v23 = *(v0 + 19);
  v24 = *(v0 + 20);
  v19 = v0[18];
  v20 = v0[14];

  *v20 = v23;
  *(v20 + 16) = v24;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  v21 = v0[1];

  return v21();
}

uint64_t sub_100032D64(uint64_t a1, char a2)
{
  *(v3 + 568) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  *(v3 + 320) = type metadata accessor for MainActor();
  *(v3 + 328) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 336) = v5;
  *(v3 + 344) = v4;

  return _swift_task_switch(sub_100032E04, v5, v4);
}

uint64_t sub_100032E04()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 568);
  *(v0 + 352) = *sub_100004BCC((*(v0 + 312) + 112), *(*(v0 + 312) + 136));
  *(v0 + 360) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 368) = v4;
  *(v0 + 376) = v3;
  if (v2 == 1)
  {
    v5 = sub_100032EC8;
  }

  else
  {
    v5 = sub_10003374C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100032EC8()
{
  v1 = *(*(v0 + 352) + 16);
  v2 = swift_task_alloc();
  *(v0 + 384) = v2;
  *v2 = v0;
  v2[1] = sub_100032F64;

  return sub_1000172A0(v0 + 112);
}

uint64_t sub_100032F64()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v7 = *v0;

  v3 = *(v1 + 128);
  *(v1 + 392) = *(v1 + 112);
  *(v1 + 408) = v3;
  v4 = *(v1 + 376);
  v5 = *(v1 + 368);

  return _swift_task_switch(sub_10003309C, v5, v4);
}

uint64_t sub_10003309C()
{
  v1 = v0[45];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_100033100, v2, v3);
}

uint64_t sub_100033100()
{
  v1 = v0[40];
  v0[53] = *sub_100004BCC((v0[39] + 112), *(v0[39] + 136));
  v0[54] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[55] = v3;
  v0[56] = v2;

  return _swift_task_switch(sub_1000331A0, v3, v2);
}

uint64_t sub_1000331A0()
{
  v1 = *(*(v0 + 424) + 16);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_100033240;

  return sub_100016BFC(v0 + 64, 1);
}

uint64_t sub_100033240()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v7 = *v0;

  v3 = *(v1 + 80);
  *(v1 + 464) = *(v1 + 64);
  *(v1 + 480) = v3;
  *(v1 + 496) = *(v1 + 96);
  v4 = *(v1 + 448);
  v5 = *(v1 + 440);

  return _swift_task_switch(sub_100033374, v5, v4);
}

uint64_t sub_100033374()
{
  v1 = v0[54];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_1000333D8, v2, v3);
}

uint64_t sub_1000333D8()
{
  v35 = v0;
  v1 = *(v0 + 328);

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 312);
  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);

  sub_100008AF8(v0 + 112, v0 + 208, &qword_100083928, &qword_100061950);
  sub_100008AF8(v0 + 64, v0 + 256, &qword_100083928, &qword_100061950);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
  sub_100008B68(v0 + 64, &qword_100083928, &qword_100061950);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v7 = 136315650;
    if (*(v6 + 72))
    {
      if (*(v6 + 72) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v10 = 7104878;
    v11 = sub_10005305C(v9, v8, &v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (*(v0 + 120))
    {
      v13 = *(v0 + 408);
      v12 = *(v0 + 416);
      v14 = *(v0 + 400);
      v33 = *(v0 + 392);
      v34 = v14;

      v15._countAndFlagsBits = 45;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = v13;
      v16._object = v12;
      String.append(_:)(v16);
      sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
      v17 = v33;
      v18 = v34;
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    v19 = sub_10005305C(v17, v18, &v32);

    *(v7 + 14) = v19;
    *(v7 + 22) = 2080;
    if (*(v0 + 72))
    {
      v21 = *(v0 + 480);
      v20 = *(v0 + 488);
      v22 = *(v0 + 472);
      v33 = *(v0 + 464);
      v34 = v22;

      v23._countAndFlagsBits = 45;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v21;
      v24._object = v20;
      String.append(_:)(v24);
      v10 = v33;
      v25 = v34;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_10005305C(v10, v25, &v32);

    *(v7 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] system preferred: %s, device routed %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
  }

  v27 = *(v0 + 304);
  v28 = *(v0 + 480);
  v29 = *(v0 + 496);
  *v27 = *(v0 + 464);
  v27[1] = v28;
  v27[2] = v29;
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10003374C()
{
  v1 = *(*(v0 + 352) + 16);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  v2[1] = sub_1000337E0;

  return sub_100015EF4();
}

uint64_t sub_1000337E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v7 = *v1;
  *(*v1 + 520) = a1;

  v4 = *(v2 + 376);
  v5 = *(v2 + 368);

  return _swift_task_switch(sub_100033908, v5, v4);
}

uint64_t sub_100033908()
{
  v1 = v0[45];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_10003396C, v2, v3);
}

uint64_t sub_10003396C()
{
  v1 = v0[40];
  v0[66] = *sub_100004BCC((v0[39] + 112), *(v0[39] + 136));
  v0[67] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[68] = v3;
  v0[69] = v2;

  return _swift_task_switch(sub_100033A10, v3, v2);
}

uint64_t sub_100033A10()
{
  v1 = *(*(v0 + 528) + 16);
  v2 = swift_task_alloc();
  *(v0 + 560) = v2;
  *v2 = v0;
  v2[1] = sub_100033AAC;

  return sub_1000172A0(v0 + 16);
}

uint64_t sub_100033AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v6 = *v0;

  v3 = *(v1 + 552);
  v4 = *(v1 + 544);

  return _swift_task_switch(sub_100033BCC, v4, v3);
}

uint64_t sub_100033BCC()
{
  v1 = v0[67];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_100033C30, v2, v3);
}

uint64_t sub_100033C30()
{
  v34 = v0;
  v1 = v0[41];

  v3 = v0[2];
  v2 = v0[3];
  if (!v2)
  {
    v20 = v0[65];

    v3 = 0;
LABEL_11:
    v5 = 0;
    v4 = 0;
    v21 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v0[20] = v3;
  v8 = v0[65];
  v0[21] = v2;
  v0[22] = v5;
  v0[23] = v4;
  v0[24] = v7;
  v0[25] = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = v0 + 20;
  v10 = sub_100034B04(sub_100034FEC, v9, v8);

  if ((v10 & 1) == 0)
  {

    v3 = 0;
    v2 = 0;
    goto LABEL_11;
  }

  v30 = v7;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v11 = v0[39];
  v12 = type metadata accessor for Logger();
  sub_1000080BC(v12, qword_100086758);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v29 = v14;
    v15 = v0[39];
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = v5;
    if (*(v15 + 72))
    {
      if (*(v15 + 72) == 1)
      {
        v18 = 0xE600000000000000;
        v19 = 0x7070412D6E49;
      }

      else
      {
        v18 = 0xE800000000000000;
        v19 = 0x73676E6974746553;
      }
    }

    else
    {
      v18 = 0xE200000000000000;
      v19 = 17219;
    }

    v22 = sub_10005305C(v19, v18, &v31);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v32 = v3;
    v33 = v2;

    v23._countAndFlagsBits = 45;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = v17;
    v24._object = v4;
    String.append(_:)(v24);
    v25 = sub_10005305C(v32, v33, &v31);

    *(v16 + 14) = v25;
    v5 = v17;
    _os_log_impl(&_mh_execute_header, v13, v29, "[ui][%s] systemPreferredMicrophone :%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v30;
LABEL_16:
  v26 = v0[38];
  *v26 = v3;
  v26[1] = v2;
  v26[2] = v5;
  v26[3] = v4;
  v26[4] = v21;
  v26[5] = v6;
  v27 = v0[1];

  return v27();
}

uint64_t sub_100033F8C()
{
  v1 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[deinit] RoutingControllerInputPickerViewModel deinit", v5, 2u);
  }

  v6 = *(v1 + 24);
  sub_10003427C(*(v1 + 16));
  v7 = *(v1 + 40);
  sub_10003427C(*(v1 + 32));
  v8 = *(v1 + 56);

  v9 = *(v1 + 64);

  v10 = *(v1 + 80);

  v11 = *(v1 + 96);

  sub_100004B28((v1 + 112));

  return v1;
}

uint64_t sub_1000340AC()
{
  sub_100033F8C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

uint64_t type metadata accessor for RoutingControllerInputPickerViewModel.State()
{
  result = qword_100083A60;
  if (!qword_100083A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034158()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_100034234();
  }

  return result;
}

uint64_t sub_100034234()
{
}

uint64_t sub_10003427C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_10003428C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_100003B78(v5);
        sub_100003B78(v7);
        v8 = sub_10002769C(v5, v7);
        sub_100003C9C(v7);
        sub_100003C9C(v5);
        if (!v8)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_100034344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000343D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 40;
    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(v3 + 40);
      if (*(i + 40))
      {
        if ((*(v3 + 40) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(v3 + 40))
      {
        return 0;
      }

      v6 = *(i - 8) == *(v3 - 8) && *i == *v3;
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_10003447C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_100083368, "\b:");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034588(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_100083B58, &qword_100061DF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000346AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100034720()
{
  result = qword_100083B28;
  if (!qword_100083B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B28);
  }

  return result;
}

uint64_t sub_100034774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002F980(a1, v4, v5, v6);
}

uint64_t sub_100034828()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034860(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_10003489C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t sub_1000348AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002F980(a1, v4, v5, v6);
}

uint64_t sub_100034960()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100034998()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_10002DE0C(v2, v3);
}

uint64_t sub_100034A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_100034A54();
  }

  return result;
}

uint64_t sub_100034A54()
{
}

uint64_t sub_100034AA0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *a2;
  sub_100008AF8(v6, v5, &qword_100083B50, &qword_100061D60);
  return sub_1000281CC(v6);
}

uint64_t sub_100034B04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 72);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 4);
      v16[0] = *(v7 - 5);
      v16[1] = v12;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v8;
      v16[5] = v9;

      v13 = a1(v16);

      if (v3)
      {
        break;
      }

      v7 += 6;
      v14 = v6-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_100034BE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 80);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v16 = *(v5 - 1);
      v17[0] = *(v5 - 6);
      v15 = *v5;
      v17[1] = v6;
      v17[2] = v7;
      v17[3] = v8;
      v17[4] = v9;
      v17[5] = v16;
      v18 = v15;
      sub_100034A54();
      v10 = v19;
      v11 = a1(v17);
      sub_100034234();
      v19 = v10;
      if (v10)
      {
        break;
      }

      v12 = v4-- == 0;
      v5 += 56;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100034CF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  if (a1[6])
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL sub_100034D6C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 48);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 16);
  if (v5 == 255)
  {
    if (v8 == 255)
    {
      goto LABEL_14;
    }
  }

  else if (v8 != 255)
  {
    if (v5)
    {
      if (v8)
      {
        if (v3 != v6 || v4 != v7)
        {
LABEL_15:
          v15 = *a1;
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          return (v14 & 1) == 0;
        }

        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (v8)
    {
LABEL_11:
      v14 = 0;
      return (v14 & 1) == 0;
    }

    if (v3 != v6 || v4 != v7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = 1;
    return (v14 & 1) == 0;
  }

  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  sub_100008AF8(a1, v22, &qword_100083B50, &qword_100061D60);
  sub_100008AF8(a2, v22, &qword_100083B50, &qword_100061D60);
  sub_10003421C(v3, v4, v9, v10, v12, v11, v5);
  sub_10003421C(v17, v18, v13, v19, v20, v21, v8);
  v14 = 0;
  return (v14 & 1) == 0;
}

uint64_t sub_100034F04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_100034F7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_100034FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_100035008(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10003514C()
{
  result = qword_100083B70;
  if (!qword_100083B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B70);
  }

  return result;
}

uint64_t sub_1000351A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002BE54(a1, v4, v5, v6);
}

uint64_t sub_100035254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100041CE0(a1, v4, v5, v6);
}

uint64_t sub_100035310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100028EDC(a1, v4, v5, v6);
}

uint64_t sub_1000353C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003541C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100030A64(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000354DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014310;

  return sub_10003051C(a1, v4, v5, v6);
}

uint64_t sub_100035598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035644(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100035690(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10002F4B4(v7, a1, v4, v5, v6);
}

uint64_t sub_1000357B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = static HorizontalAlignment.leading.getter();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v16[0] = a1;
  *(&v16[0] + 1) = a2;
  sub_100003B30(&qword_100083B78, &qword_100062038);
  State.wrappedValue.getter();
  sub_100034860(a3);
  sub_10004BDA0(v14, a3, a4, v16);

  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  *&v15[71] = v16[4];
  *&v15[87] = v17;
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v12 = swift_allocObject();
  *(a5 + 49) = *&v15[32];
  *(a5 + 65) = *&v15[48];
  *(a5 + 81) = *&v15[64];
  *(a5 + 96) = *&v15[79];
  *(a5 + 17) = *v15;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 33) = *&v15[16];
  *(a5 + 112) = sub_1000370E0;
  *(a5 + 120) = v11;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = sub_100037158;
  *(a5 + 168) = v12;
  sub_100034860(a3);

  sub_100034860(a3);
}

uint64_t sub_1000359E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083B78, &qword_100062038);
  State.wrappedValue.getter();
  *(v8 + 105) = a6;
  sub_100028BF0();

  State.wrappedValue.getter();
  *(v8 + 104) = a6;
  sub_1000289E0();
}

uint64_t sub_100035B00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v8 = a6;
  v122 = a6;
  v120 = a2;
  v121 = a4;
  v119 = a3;
  v111 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v110 = *(v111 - 8);
  v11 = *(v110 + 64);
  v13 = __chkstk_darwin(v111, v12);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v14;
  __chkstk_darwin(v13, v15);
  v107 = &v101 - v16;
  v106 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  v19 = __chkstk_darwin(v106, v18);
  v104 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v20;
  __chkstk_darwin(v19, v21);
  v102 = &v101 - v22;
  v117 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  v115 = *(v117 - 8);
  v118 = *(v115 + 64);
  v24 = __chkstk_darwin(v117, v23);
  v116 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v114 = &v101 - v27;
  v113 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v28 = *(v113 - 8);
  v29 = *(v28 + 64);
  v31 = __chkstk_darwin(v113, v30);
  v112 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v101 - v33;
  v35 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8, v37);
  v39 = &v101 - v38;
  v123 = &v101 - v38;
  v128 = type metadata accessor for MicrophoneManager();
  v129 = &off_10007AE10;
  v127[0] = a1;
  v40 = type metadata accessor for RoutingControllerInputPickerViewModel.State();
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyArrayStorage;
  *(v43 + 24) = _swiftEmptyArrayStorage;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0u;
  *(v43 + 80) = 255;
  *(v43 + 88) = 0x3FF0000000000000;
  ObservationRegistrar.init()();
  *(a7 + 64) = v43;
  type metadata accessor for AVInputPickerTaskRegistry();
  v44 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v44 + 112) = sub_100053868(_swiftEmptyArrayStorage);
  *(a7 + 80) = v44;
  *(a7 + 104) = 0;
  *(a7 + 152) = [objc_allocWithZone(type metadata accessor for MeterController()) init];
  v45 = v120;
  *(a7 + 48) = v121;
  *(a7 + 56) = a5;
  v46 = v119;
  *(a7 + 88) = v45;
  *(a7 + 96) = v46;
  sub_100026C30(v127, a7 + 112);
  *(a7 + 72) = v8;
  v47 = type metadata accessor for TaskPriority();
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v120 = v48 + 56;
  v121 = v49;
  v49(v39, 1, 1, v47);
  v50 = sub_100004BCC(v127, v128);
  v51 = v28;
  v52 = *(v28 + 16);
  v53 = v113;
  v52(v34, *v50 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream, v113);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v53;
  v52(&v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v53);
  type metadata accessor for MainActor();

  v56 = static MainActor.shared.getter();
  v57 = v51;
  (*(v51 + 8))(v34, v55);
  v58 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = &protocol witness table for MainActor;
  (*(v57 + 32))(v59 + v58, v112, v55);
  *(v59 + ((v29 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;

  v60 = v123;
  sub_100054078(0, 0, v123, &unk_100061F58, v59);

  v119 = v47;
  v121(v60, 1, 1, v47);
  v61 = a7;
  v62 = sub_100004BCC(v127, v128);
  v64 = v114;
  v63 = v115;
  v65 = *(v115 + 16);
  v66 = v117;
  v65(v114, *v62 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream, v117);
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = v116;
  v65(v116, v64, v66);

  v69 = static MainActor.shared.getter();
  (*(v63 + 8))(v64, v66);
  v70 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v71 = (v118 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v72 + 16) = v69;
  *(v72 + 24) = &protocol witness table for MainActor;
  (*(v63 + 32))(v72 + v70, v68, v66);
  v73 = v72 + v71;
  *v73 = v67;
  *(v73 + 8) = v122;

  v74 = v123;
  sub_100054078(0, 0, v123, &unk_100061F60, v72);

  v125 = &type metadata for FeatureFlags;
  v126 = sub_100034720();
  LOBYTE(v67) = isFeatureEnabled(_:)();
  sub_100004B28(&v124);
  if (v67)
  {
    v118 = v61;
    v121(v74, 1, 1, v119);
    v75 = sub_100004BCC(v127, v128);
    v76 = v105;
    v77 = *(v105 + 16);
    v78 = v102;
    v79 = v106;
    v77(v102, *v75 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream, v106);
    v80 = swift_allocObject();
    swift_weakInit();
    v81 = v104;
    v77(v104, v78, v79);

    v82 = static MainActor.shared.getter();
    (*(v76 + 8))(v78, v79);
    v83 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v84 = (v103 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    *(v85 + 16) = v82;
    *(v85 + 24) = &protocol witness table for MainActor;
    (*(v76 + 32))(v85 + v83, v81, v79);
    v86 = v85 + v84;
    *v86 = v80;
    *(v86 + 8) = v122;

    v87 = v123;
    sub_100054078(0, 0, v123, &unk_100061F68, v85);

    v121(v87, 1, 1, v119);
    v61 = v118;
    v88 = sub_100004BCC(v127, v128);
    v89 = v110;
    v90 = *(v110 + 16);
    v91 = v107;
    v92 = v111;
    v90(v107, *v88 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream, v111);
    v93 = swift_allocObject();
    swift_weakInit();

    v94 = v109;
    v90(v109, v91, v92);
    sub_100026C30(v127, &v124);

    v95 = static MainActor.shared.getter();
    (*(v89 + 8))(v91, v92);
    v96 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v97 = (v108 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    *(v99 + 16) = v95;
    *(v99 + 24) = &protocol witness table for MainActor;
    (*(v89 + 32))(v99 + v96, v94, v92);
    *(v99 + v97) = v93;
    sub_100026B0C(&v124, v99 + v98);
    *(v99 + v98 + 40) = v122;

    sub_100054078(0, 0, v123, &unk_100061F70, v99);
  }

  sub_100004B28(v127);
  return v61;
}

uint64_t sub_100036628(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a6;
  v10 = type metadata accessor for MicrophoneManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v23[3] = v10;
  v23[4] = &off_10007AE10;
  v23[0] = sub_10003FAC4(a1, a2, 1);
  type metadata accessor for RoutingControllerInputPickerViewModel();
  v13 = swift_allocObject();
  v14 = sub_100026B24(v23, v10);
  v15 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v14, v14);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;

  v20 = sub_100035B00(v19, a1, a2, a3, a4, 1, v13);
  sub_100004B28(v23);
  v22[2] = v20;

  State.init(wrappedValue:)();

  return v23[0];
}

uint64_t sub_1000367EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036824()
{
  v1 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036908(uint64_t a1)
{
  v4 = *(sub_100003B30(&qword_100083B68, &qword_100061E20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027414;

  return sub_10002C41C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100036A48(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B48, &qword_100061F50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014310;

  return sub_10002CA58(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_100036BA0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003B30(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return _swift_deallocObject(v2, v7 + 9, v5 | 7);
}

uint64_t sub_100036C74(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B38, &qword_100061D10) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100027414;

  return sub_10002D544(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_100036DB8()
{
  v1 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  sub_100004B28((v0 + v6));

  return _swift_deallocObject(v0, v6 + 41, v3 | 7);
}

uint64_t sub_100036EB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B18, &unk_100061C80) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 40);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027414;

  return sub_10002E034(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t sub_100037004(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10003701C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}