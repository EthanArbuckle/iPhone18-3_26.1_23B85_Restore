id sub_10000144C()
{
  swift_getObjectType();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    sub_1000063D8();
    v2 = sub_100006428();

    v3 = [v1 applicationIsInstalled:v2];

    sub_100006568(22);

    v15 = 0xD000000000000013;
    v16 = 0x8000000100006CB0;
    if (v3)
    {
      v4._countAndFlagsBits = 1702195828;
    }

    else
    {
      v4._countAndFlagsBits = 0x65736C6166;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    v4._object = v5;
    sub_100006448(v4);

    v17._countAndFlagsBits = 10;
    v17._object = 0xE100000000000000;
    sub_100006448(v17);
    v7 = v15;
    v6 = v16;
    if (qword_10000C198 != -1)
    {
      swift_once();
    }

    v8 = sub_100006418();
    sub_100003BA4(v8, qword_10000C3D0);

    v9 = sub_1000063F8();
    v10 = sub_100006518();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_100006618();
      v14 = sub_100003DCC(v12, v13, &v15);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100003DCC(v7, v6, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000016D4()
{
  swift_getObjectType();
  v0 = sub_100006388();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    sub_100006398();
    v3 = sub_100006428();

    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  sub_100006568(23);

  v17 = 0xD000000000000014;
  v18 = 0x8000000100006C90;
  if (v4)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_100006448(v5);

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  sub_100006448(v19);
  v8 = v17;
  v7 = v18;
  if (qword_10000C198 != -1)
  {
    swift_once();
  }

  v9 = sub_100006418();
  sub_100003BA4(v9, qword_10000C3D0);

  v10 = sub_1000063F8();
  v11 = sub_100006518();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_100006618();
    v15 = sub_100003DCC(v13, v14, &v17);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100003DCC(v8, v7, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return v8;
}

uint64_t sub_100001978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  return _swift_task_switch(sub_10000199C, 0, 0);
}

uint64_t sub_10000199C()
{
  v1 = sub_100006378();
  v0[24] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100001AC0;
  v2 = swift_continuation_init();
  v0[17] = sub_100003888(&qword_10000C1E8, &qword_100006B18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100001FDC;
  v0[13] = &unk_100008708;
  v0[14] = v2;
  [v1 accountInfoWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100001AC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_100001D10;
  }

  else
  {
    v3 = sub_100001BD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001BD0()
{
  v1 = *(v0 + 144);

  v2 = [v1 supportsDeviceToDeviceEncryption];
  sub_100006568(27);

  if (v2)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_100006448(v3);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  sub_100006448(v11);

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v6 + 16) = 0xD000000000000018;
  *(v6 + 24) = 0x8000000100006C70;

  sub_100006538();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100001D10()
{
  v27 = v0;
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  if (qword_10000C198 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v4 = sub_100006418();
  sub_100003BA4(v4, qword_10000C3D0);
  swift_errorRetain();
  v5 = sub_1000063F8();
  v6 = sub_100006508();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    v12 = sub_100006618();
    v14 = sub_100003DCC(v12, v13, &v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to fetch CloudKit account info: %@", v9, 0x16u);
    sub_100005CE0(v10, &qword_10000C1E0, &qword_100006B00);

    sub_100005E6C(v11);
  }

  v16 = v0[25];
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_100006568(27);
  v17 = v26;
  v0[10] = v25;
  v0[11] = v17;
  v29._object = 0x8000000100006C70;
  v29._countAndFlagsBits = 0xD000000000000018;
  sub_100006448(v29);
  v0[18] = v16;
  sub_100003888(&qword_10000C1D8, &qword_100006AF8);
  sub_100006598();
  v30._countAndFlagsBits = 10;
  v30._object = 0xE100000000000000;
  sub_100006448(v30);

  v18 = v0[10];
  v19 = v0[11];
  v21 = v0[21];
  v20 = v0[22];
  swift_beginAccess();
  v22 = *(v21 + 24);
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;

  sub_100006538();
  v23 = v0[1];

  return v23();
}

uint64_t sub_100001FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005E28((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003888(&qword_10000C1D8, &qword_100006AF8);
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

uint64_t sub_1000020B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003888(&qword_10000C1C8, &qword_100006AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000043D4(a3, v26 - v10);
  v12 = sub_1000064E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005CE0(v11, &qword_10000C1C8, &qword_100006AC0);
  }

  else
  {
    sub_1000064D8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000064C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006438() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100005CE0(a3, &qword_10000C1C8, &qword_100006AC0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005CE0(a3, &qword_10000C1C8, &qword_100006AC0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000023C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(*(sub_100003888(&qword_10000C1C8, &qword_100006AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v25[-v5];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  v8 = dispatch_semaphore_create(0);
  v9 = sub_1000064E8();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = ObjectType;

  v11 = v8;
  sub_1000020B4(0, 0, v6, a2, v10);

  sub_100006528();
  if (qword_10000C198 != -1)
  {
    swift_once();
  }

  v12 = sub_100006418();
  sub_100003BA4(v12, qword_10000C3D0);

  v13 = sub_1000063F8();
  v14 = sub_100006518();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_100006618();
    v18 = sub_100003DCC(v16, v17, v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    swift_beginAccess();
    v19 = *(v7 + 16);
    v20 = *(v7 + 24);

    v21 = sub_100003DCC(v19, v20, v26);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s - %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  v22 = *(v7 + 16);
  v23 = *(v7 + 24);

  return v22;
}

uint64_t sub_1000026E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_1000063C8();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000027AC, 0, 0);
}

uint64_t sub_1000027AC()
{
  v1 = *(v0 + 128);
  sub_1000063B8();
  v2 = async function pointer to DeviceCloudKitCoordinator.fetchDevices()[1];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_100002848;
  v4 = *(v0 + 128);

  return DeviceCloudKitCoordinator.fetchDevices()();
}

uint64_t sub_100002848(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_100002AA4;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_100002970;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100002970()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_1000063E8();
  v5 = sub_1000064B8();
  v7 = v6;

  v15._countAndFlagsBits = v5;
  v15._object = v7;
  sub_100006448(v15);

  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  sub_100006448(v16);
  (*(v3 + 8))(v2, v4);
  v8 = v0[16];
  v10 = v0[11];
  v9 = v0[12];
  swift_beginAccess();
  v11 = *(v10 + 24);
  *(v10 + 16) = 0x3A73656369766544;
  *(v10 + 24) = 0xE900000000000020;

  sub_100006538();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100002AA4()
{
  v24 = v0;
  (*(v0[15] + 8))(v0[16], v0[14]);
  if (qword_10000C198 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_100006418();
  sub_100003BA4(v2, qword_10000C3D0);
  swift_errorRetain();
  v3 = sub_1000063F8();
  v4 = sub_100006508();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136315394;
    v10 = sub_100006618();
    v12 = sub_100003DCC(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to fetch devices: %@", v7, 0x16u);
    sub_100005CE0(v8, &qword_10000C1E0, &qword_100006B00);

    sub_100005E6C(v9);
  }

  v14 = v0[18];
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v26._countAndFlagsBits = 0x3A73656369766544;
  v26._object = 0xE900000000000020;
  sub_100006448(v26);
  v0[10] = v14;
  sub_100003888(&qword_10000C1D8, &qword_100006AF8);
  sub_100006598();
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  sub_100006448(v27);

  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[16];
  v19 = v0[11];
  v18 = v0[12];
  swift_beginAccess();
  v20 = *(v19 + 24);
  *(v19 + 16) = v15;
  *(v19 + 24) = v16;

  sub_100006538();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100002D74@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = (*(*(sub_100003888(&qword_10000C238, &qword_100006B38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = &v28 - v2;
  v32 = sub_100006368();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100006318();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000062F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000062D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_1000062E8() - 8) + 64);
  __chkstk_darwin();
  (*(v22 + 104))(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v23 = v15;
  v24 = v32;
  (*(v16 + 104))(v19, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v23);
  v25 = v9;
  v26 = v33;
  (*(v11 + 104))(v14, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v10);
  (*(v6 + 104))(v25, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v31);
  sub_100006358();
  result = (*(v3 + 48))(v26, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v29, v26, v24);
    return sub_100006308();
  }

  return result;
}

id sub_100003178(uint64_t a1)
{
  sub_100006238(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100006278();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_100006218();

    swift_willThrow();
    v10 = sub_100006278();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_1000032D0(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100003888(&qword_10000C228, &qword_100006B28);
  if (swift_dynamicCast())
  {
    sub_100005E10(__src, &v41);
    sub_100005E28(&v41, v42);
    sub_100006208();
    __src[0] = v40;
    sub_100005E6C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100005CE0(__src, &qword_10000C230, &qword_100006B30);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_100006588();
  }

  sub_10000472C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100004ED0(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin();
  v10 = sub_1000047F4(sub_100005D40);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1000062A8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100004D4C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100006458();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100006488();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100006588();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100004D4C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100006468();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1000062B8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1000062B8();
    sub_100005DFC(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100005DFC(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100005DA8(*&__src[0], *(&__src[0] + 1));

  sub_100005C44(v32, *(&v32 + 1));
  return v32;
}

id sub_100003830()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetsuoDiagnosticExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003888(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000038D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000039D0;

  return sub_1000026E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000039D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Int sub_100003ADC()
{
  v1 = *v0;
  sub_1000065E8();
  sub_1000065F8(v1);
  return sub_100006608();
}

Swift::Int sub_100003B50()
{
  v1 = *v0;
  sub_1000065E8();
  sub_1000065F8(v1);
  return sub_100006608();
}

uint64_t sub_100003BA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003BDC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003CD4;

  return v7(a1);
}

uint64_t sub_100003CD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003DCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003E98(v11, 0, 0, 1, a1, a2);
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
    sub_100004374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E6C(v11);
  return v7;
}

unint64_t sub_100003E98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003FA4(a5, a6);
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
    result = sub_100006588();
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

char *sub_100003FA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003FF0(a1, a2);
  sub_100004120(&off_100008618);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003FF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000420C(v5, 0);
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

  result = sub_100006588();
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
        v10 = sub_100006458();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000420C(v10, 0);
        result = sub_100006558();
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

uint64_t sub_100004120(uint64_t result)
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

  result = sub_100004280(result, v12, 1, v3);
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

void *sub_10000420C(uint64_t a1, uint64_t a2)
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

  sub_100003888(&qword_10000C1D0, &qword_100006AD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004280(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003888(&qword_10000C1D0, &qword_100006AD8);
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

uint64_t sub_100004374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000043D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003888(&qword_10000C1C8, &qword_100006AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000060B0;

  return sub_100003BDC(a1, v5);
}

uint64_t sub_1000044FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004534(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000039D0;

  return sub_100003BDC(a1, v5);
}

uint64_t sub_1000045F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000060B0;

  return sub_100001978(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000472C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100004E18(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1000061F8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1000061A8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_100006298();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1000047F4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100005C44(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100005C44(v6, v5);
    *v3 = xmmword_100006A80;
    sub_100005C44(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1000061B8() && __OFSUB__(v6, sub_1000061E8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1000061F8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_100006198();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_100004C98(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100005C44(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100006A80;
    sub_100005C44(0, 0xC000000000000000);
    sub_100006288();
    result = sub_100004C98(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100004B98@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100004E18(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100004F70(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100004FEC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100004C2C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100004C98(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1000061B8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1000061E8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1000061D8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100004D4C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100006498();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100006478();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100004DC8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_100006578();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004E18(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100004ED0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1000061F8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1000061C8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100006298();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100004F70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000061F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1000061A8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100006298();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100004FEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000061F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1000061A8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*sub_100005070(uint64_t a1, unint64_t a2))(char *)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_100006228();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  (__chkstk_darwin)();
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100006278();
  v73 = *(v72 - 8);
  v5 = *(v73 + 8);
  v6 = (__chkstk_darwin)();
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v68 = &v63 - v9;
  __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v12 = sub_100006328();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100006348();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006338();
  sub_100002D74(v16);
  v22 = sub_1000062C8();
  v24 = v23;
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_100006568(32);

  v74 = 0xD00000000000001ALL;
  v75 = 0x8000000100006CD0;
  v76._countAndFlagsBits = v22;
  v76._object = v24;
  sub_100006448(v76);

  v77._countAndFlagsBits = 1735355438;
  v77._object = 0xE400000000000000;
  sub_100006448(v77);
  v26 = v74;
  v25 = v75;
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  v29 = [v28 temporaryDirectory];

  v30 = v68;
  sub_100006248();

  v74 = v26;
  v75 = v25;
  v32 = v69;
  v31 = v70;
  v33 = v71;
  (*(v70 + 104))(v69, enum case for URL.DirectoryHint.inferFromPath(_:), v71);
  sub_100005B48();
  sub_100006268();
  (*(v31 + 8))(v32, v33);
  v34 = *(v73 + 1);
  v35 = v30;
  v36 = v72;
  v34(v35);

  sub_100006258(0);
  v37 = [v27 defaultManager];
  v38 = sub_100006428();

  LODWORD(v29) = [v37 createFileAtPath:v38 contents:0 attributes:0];

  if (!v29)
  {
    sub_100005B9C();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
    (v34)(v11, v36);
    return v34;
  }

  sub_100005C98(0, &qword_10000C210, NSFileHandle_ptr);
  v39 = v66;
  (*(v73 + 2))(v66, v11, v36);
  v40 = v67;
  v41 = sub_100003178(v39);
  v42 = v11;
  if (v40)
  {
    v43 = v11;
    v44 = v36;
LABEL_4:
    (v34)(v43, v44);
    return v34;
  }

  v47 = v41;
  v48 = v36;
  v49 = v65;

  v50 = sub_1000032D0(v64, v49);
  v52 = v51;
  v74 = v50;
  v75 = v51;
  sub_100005BF0();
  sub_1000064F8();
  v74 = 0;
  v53 = [v47 closeAndReturnError:&v74];
  v54 = v74;
  if (!v53)
  {
    v73 = v74;
    sub_100006218();

    swift_willThrow();
    sub_100005C44(v50, v52);

    v43 = v42;
    v44 = v48;
    goto LABEL_4;
  }

  v73 = v34;
  v55 = objc_allocWithZone(DEAttachmentItem);
  v56 = v54;
  v57 = v42;
  sub_100006238(v58);
  v60 = v59;
  v34 = [v55 initWithPathURL:v59];

  if (v34)
  {
    sub_100005C98(0, &qword_10000C220, NSNumber_ptr);
    isa = sub_100006548(1).super.super.isa;
    [v34 setDeleteOnAttach:isa];

    sub_100005C44(v50, v52);
    (v73)(v57, v72);
  }

  else
  {
    sub_100005B9C();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();
    sub_100005C44(v50, v52);

    (v73)(v42, v72);
  }

  return v34;
}

uint64_t sub_1000057BC()
{
  swift_getObjectType();
  if (qword_10000C198 != -1)
  {
    swift_once();
  }

  v0 = sub_100006418();
  sub_100003BA4(v0, qword_10000C3D0);
  v1 = sub_1000063F8();
  v2 = sub_100006518();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    v5 = sub_100006618();
    v7 = sub_100003DCC(v5, v6, &v13);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s making Tetsuo attachments", v3, 0xCu);
    sub_100005E6C(v4);
  }

  v13 = sub_10000144C();
  v14 = v8;
  v15._countAndFlagsBits = sub_1000016D4();
  sub_100006448(v15);

  v16._countAndFlagsBits = sub_100001958();
  sub_100006448(v16);

  v17._countAndFlagsBits = sub_1000023A4();
  sub_100006448(v17);

  v9 = sub_100005070(v13, v14);

  sub_100003888(&qword_10000C1F0, &qword_100006B20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100006A90;
  v11 = sub_100005C98(0, &qword_10000C1F8, DEAttachmentItem_ptr);
  result = v10;
  *(v10 + 56) = v11;
  *(v10 + 32) = v9;
  return result;
}

unint64_t sub_100005B48()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

unint64_t sub_100005B9C()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

unint64_t sub_100005BF0()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

uint64_t sub_100005C44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005C98(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100005CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003888(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100005D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100004C2C(sub_100005EB8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100005DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005C44(a1, a2);
  }

  return a1;
}

uint64_t sub_100005E10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100005E28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005E6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for TetsuoDiagnosticExtension.TetsuoDiagnosticExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TetsuoDiagnosticExtension.TetsuoDiagnosticExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006054()
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C240);
  }

  return result;
}

uint64_t sub_1000060B4()
{
  v0 = sub_100006418();
  sub_100006134(v0, qword_10000C3D0);
  sub_100003BA4(v0, qword_10000C3D0);
  return sub_100006408();
}

uint64_t *sub_100006134(uint64_t a1, uint64_t *a2)
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