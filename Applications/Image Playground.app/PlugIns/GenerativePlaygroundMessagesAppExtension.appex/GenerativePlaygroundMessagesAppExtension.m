uint64_t sub_100001B10()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100001B40()
{
  v1[2] = v0;
  v2 = sub_10000A5A4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_10000A654();
  v1[7] = sub_10000A644();
  v6 = sub_10000A634();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_100001C40, v6, v5);
}

uint64_t sub_100001C40()
{
  v1 = v0[6];
  sub_10000A4C4();
  v2 = sub_10000A594();
  v3 = sub_10000A684();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching auth token", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token + 8);
  if (v10)
  {
    v11 = *(v8 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token);
    v12 = v0[7];
    v13 = v0[5];
    v14 = *(v8 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token + 8);

    sub_10000A4C4();
    v15 = sub_10000A594();
    v16 = sub_10000A684();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reusing cached authentication token", v21, 2u);
    }

    v9(v18, v20);
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];

    return v24(v11, v10);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = sub_100001EB0;
    v27 = v0[2];

    return sub_1000020E4();
  }
}

uint64_t sub_100001EB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_10000206C;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_100001FE4;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100001FE4()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_10000206C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1000020E4()
{
  v1[23] = v0;
  sub_10000A654();
  v1[24] = sub_10000A644();
  v3 = sub_10000A634();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_10000217C, v3, v2);
}

uint64_t sub_10000217C()
{
  v1 = sub_10000A5A4();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  sub_10000A4C4();
  v5 = sub_10000A594();
  v6 = sub_10000A684();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000246C;
    v12 = swift_continuation_init();
    v0[17] = sub_1000031C4(&qword_100014A00, &qword_10000B980);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000028E0;
    v0[13] = &unk_1000108A0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v13 = v0[24];

    sub_1000034E0();
    swift_allocError();
    *v14 = xmmword_10000B890;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10000246C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100002574, v2, v1);
}

uint64_t sub_100002574()
{
  v1 = v0[24];

  v2 = v0[21];
  v3 = [v2 serviceTicket];
  if (v3)
  {
    v4 = v0[31];
    v5 = v0[23];
    v6 = v3;
    v7 = sub_10000A5E4();
    v9 = v8;

    v10 = (v5 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token);
    v11 = *(v5 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token + 8);
    *v10 = v7;
    v10[1] = v9;

    v12 = v0[1];

    return v12(v7, v9);
  }

  else
  {
    v14 = v0[29] + 15;
    v15 = swift_task_alloc();
    sub_10000A4C4();
    v16 = v2;
    v17 = sub_10000A594();
    v18 = sub_10000A694();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 error];
      if (v21)
      {
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 4) = v21;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to authenticate: %@", v19, 0xCu);
      sub_1000035F4(v20);
    }

    v23 = v0[30];
    v24 = v0[27];
    v25 = v0[28];

    v23(v15, v24);

    v26 = [v16 error];
    if (v26)
    {
      v27 = v26;
      swift_getErrorValue();
      v28 = v0[18];
      v29 = v0[19];
      v30 = v0[20];
      v31 = *(v29 - 8);
      v32 = *(v31 + 64) + 15;
      v33 = swift_task_alloc();
      (*(v31 + 16))(v33, v28, v29);

      v34 = sub_10000A794();
      v36 = v35;
      (*(v31 + 8))(v33, v29);
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = v0[31];
    sub_1000034E0();
    swift_allocError();
    *v38 = v34;
    v38[1] = v36;
    swift_willThrow();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1000028E0(uint64_t a1, void *a2)
{
  v3 = sub_10000365C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100002944(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return sub_10000A5D4();
  }

  sub_1000031C4(&qword_100014A10, &qword_10000BA70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000B8A0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000037C0();
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100003814(a1, 0);
  }

  sub_100003828(a1, a2);
  v6 = sub_10000A5D4();

  return v6;
}

id sub_100002A7C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_context;
  v4 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v5 = objc_allocWithZone(NSNumber);
  v6 = v4;
  v7 = [v5 initWithInteger:191000];
  [v6 setAppID:v7];

  [v6 setEnvironment:0];
  *&v0[v3] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100002B8C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_10000A654();
  v6[5] = sub_10000A644();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_100002CE8;

  return sub_100001B40();
}

uint64_t sub_100002CE8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *v3;
  v7[7] = v2;

  v10 = v7[5];
  v11 = v7[4];
  if (v4)
  {
    v12 = sub_10000A634();
    v14 = v13;
    v15 = sub_100002F00;
  }

  else
  {
    v7[8] = a2;
    v7[9] = a1;
    v12 = sub_10000A634();
    v14 = v16;
    v15 = sub_100002E74;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_100002E74()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v5(v2, v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100002F00()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(0, 0, v1);

  v5 = v0[1];

  return v5();
}

__n128 sub_100003124(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003178(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000031C4(uint64_t *a1, uint64_t *a2)
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

void sub_10000320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_10000A5C4();
    if (a3)
    {
LABEL_3:
      v7 = sub_10000A334();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_10000329C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000033EC;

  return sub_100002C38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000033EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000034E0()
{
  result = qword_1000149F8;
  if (!qword_1000149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000149F8);
  }

  return result;
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000035A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000035F4(uint64_t a1)
{
  v2 = sub_1000031C4(&qword_100014A08, &qword_10000B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000365C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000036A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000036C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100003780(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000037C0()
{
  result = qword_100014A18;
  if (!qword_100014A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014A18);
  }

  return result;
}

uint64_t sub_100003814(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100003828(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000031C4(&qword_1000149F0, &qword_10000BAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100009CA4(a3, v26 - v10);
  v12 = sub_10000A674();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A1B8(v11, &qword_1000149F0, &qword_10000BAD0);
  }

  else
  {
    sub_10000A664();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000A634();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000A5F4() + 32;
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

      sub_10000A1B8(a3, &qword_1000149F0, &qword_10000BAD0);

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

  sub_10000A1B8(a3, &qword_1000149F0, &qword_10000BAD0);
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

uint64_t sub_100003B2C()
{
  v0 = sub_10000A5A4();
  sub_100009EC0(v0, qword_100014AE0);
  sub_100009A94(v0, qword_100014AE0);
  return sub_10000A4D4();
}

void sub_100003B78()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  sub_10000A464();
  (*(v4 + 104))(v7, enum case for ImagePlaygroundScene.Identifier.editorWithMultiSelectionPicker(_:), v3);
  v8 = sub_10000A3E4();
  swift_unknownObjectRetain();
  sub_10000A444();
  [v1 gp_addChildViewController:v8];
  v9 = *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = v8;
  v10 = v8;

  [objc_opt_self() setMaxConcurrentDecodeCount:1];
}

void sub_100003D34(void *a1)
{
  v2 = v1;
  v3 = [a1 draftAssetArchives];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000A624();

    v6 = sub_100008CE0(v5);
    v7 = v6;
    v8 = v6[2];
    if (v8)
    {
      v9 = 0;
      v10 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
      v11 = (v6 + 5);
      while (v9 < v7[2])
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        sub_1000077E8(&v16, v13, v12);
        swift_endAccess();

        v14 = *(v2 + v10);
        if (!v14)
        {
          goto LABEL_10;
        }

        ++v9;
        v15 = v14;
        v17._countAndFlagsBits = v13;
        v17._object = v12;
        sub_10000A404(v17);

        v11 += 2;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

uint64_t sub_100003E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10000A654();
  v5[3] = sub_10000A644();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100003F3C;

  return sub_1000040D8(a5);
}

uint64_t sub_100003F3C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10000A634();

  return _swift_task_switch(sub_100004078, v5, v4);
}

uint64_t sub_100004078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000040D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10000A4B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10000A4A4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_1000031C4(&qword_100014B70, &qword_10000BB58) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_10000A534();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  sub_10000A654();
  v2[15] = sub_10000A644();
  v14 = sub_10000A634();
  v2[16] = v14;
  v2[17] = v13;

  return _swift_task_switch(sub_1000042C8, v14, v13);
}

void sub_1000042C8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
  v0[18] = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
  v3 = *(v1 + v2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = sub_10000A424();

  if (v5)
  {
    v6 = v0[15];

    v7 = v0[14];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v11 = v0[6];

    v12 = v0[1];

    v12();
    return;
  }

  v13 = *(v1 + v2);
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  sub_10000A3D4();

  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_100004444;
  v16 = v0[11];
  v17 = v0[2];
  v18 = v0[3];

  sub_100005B48(v16, v17);
}

uint64_t sub_100004444()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100004910;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100004568;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100004568()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v49 = &_swiftEmptyArrayStorage;
  sub_10000A524();
  if (v5)
  {
    v6 = v0[10];
    sub_10000A484();

    v7 = sub_100007068(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100007068(v8 > 1, v9 + 1, 1, v7);
    }

    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v7[2] = v9 + 1;
    (*(v12 + 32))(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v10, v11);
    v49 = v7;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v13 = v0[14];
  result = sub_10000A514();
  if (result)
  {
    v15 = *(result + 16);
    if (v15)
    {
      v16 = v0[8];
      v17 = v0[5];
      v18 = result;
      sub_100008938(0, v15, 0);
      v19 = *(v17 + 16);
      v17 += 16;
      v20 = v18 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v47 = *(v17 + 56);
      v48 = v19;
      v21 = (v17 - 8);
      do
      {
        v22 = v0[9];
        v23 = v0[6];
        v24 = v0[4];
        v48(v23, v20, v24);
        sub_10000A494();
        (*v21)(v23, v24);
        v26 = *(&_swiftEmptyArrayStorage + 2);
        v25 = *(&_swiftEmptyArrayStorage + 3);
        if (v26 >= v25 >> 1)
        {
          sub_100008938(v25 > 1, v26 + 1, 1);
        }

        v27 = v0[9];
        v28 = v0[7];
        *(&_swiftEmptyArrayStorage + 2) = v26 + 1;
        (*(v16 + 32))(&_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v27, v28);
        v20 += v47;
        --v15;
      }

      while (v15);
    }

    result = sub_1000062A8(&_swiftEmptyArrayStorage);
    v7 = v49;
  }

  v29 = v0[18];
  if (!v7[2])
  {
LABEL_17:
    v38 = v0[15];
    v39 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v37 = *(v39 + v29);
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v30 = v0[3];
  v31 = *(v30 + v29);
  if (!v31)
  {
    __break(1u);
    goto LABEL_22;
  }

  v32 = v0[14];
  v33 = v0[15];
  v34 = v0[12];
  v35 = v0[13];
  v36 = v31;

  sub_10000A434();

  (*(v35 + 8))(v32, v34);
  v37 = *(v30 + v29);
  if (!v37)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  v40 = v37;
  sub_10000A3D4();
  v41 = v0[14];
  v43 = v0[10];
  v42 = v0[11];
  v44 = v0[9];
  v45 = v0[6];

  v46 = v0[1];

  return v46();
}

uint64_t sub_100004910()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[3];

  (*(v4 + 56))(v5, 1, 1, v3);
  result = sub_10000A1B8(v5, &qword_100014B70, &qword_10000BB58);
  v8 = *(v6 + v1);
  if (v8)
  {
    v9 = v8;
    sub_10000A3D4();
    v10 = v0[14];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];

    return v15();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100004B7C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "didBecomeActiveWithConversation:", a1);
  sub_10000A4D4();
  v10 = sub_10000A594();
  v11 = sub_10000A6A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Messages extension did become active.", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v17 = 0u;
  v18 = 0u;
  if ([objc_opt_self() getHostAuditToken:&v17])
  {
    v13 = *&v2[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v20 = v17;
    v21 = v18;
    v22 = 0;
    v14 = v13;
    sub_10000A3F4();
  }

  v15 = *&v2[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
  if (!v15)
  {
    __break(1u);
  }

  v16 = v15;
  sub_10000A454();
}

uint64_t sub_100004E10(void *a1)
{
  v2 = sub_100009608(a1);
  v4 = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  v7 = a1;
  sub_1000052C4(v2, v4, sub_100009B0C, v6);

  return sub_100009B14(v2, v4);
}

void sub_100005088(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_1000148F0 != -1)
      {
        swift_once();
      }

      v7 = sub_10000A5A4();
      sub_100009A94(v7, qword_100014AE0);
      swift_errorRetain();
      v8 = sub_10000A594();
      v9 = sub_10000A694();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = sub_10000A794();
        v14 = sub_100007240(v12, v13, &v19);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to stage asset with error: %s", v10, 0xCu);
        sub_1000035A8(v11);
      }

      else
      {
      }
    }

    else
    {
      v15 = [a3 identifier];
      v16 = sub_10000A5E4();
      v18 = v17;

      swift_beginAccess();
      sub_1000077E8(&v20, v16, v18);
      swift_endAccess();
    }
  }
}

void sub_1000052C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 activeConversation];
  if (v8)
  {
    v9 = v8;
    isa = sub_10000A384().super.isa;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v13[4] = sub_100009B68;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000058DC;
    v13[3] = &unk_1000109F8;
    v12 = _Block_copy(v13);
    sub_100009BB8(a3);

    [v9 _insertAssetArchive:isa completionHandler:v12];
    _Block_release(v12);
  }
}

void sub_1000053F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_1000148F0 != -1)
      {
        swift_once();
      }

      v9 = sub_10000A5A4();
      sub_100009A94(v9, qword_100014AE0);
      swift_errorRetain();
      v10 = sub_10000A594();
      v11 = sub_10000A694();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = sub_10000A794();
        v16 = sub_100007240(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unstage asset with error: %s", v12, 0xCu);
        sub_1000035A8(v13);
      }

      else
      {
      }
    }

    else
    {
      swift_beginAccess();
      sub_1000080AC(a3, a4);
      swift_endAccess();
    }
  }
}

void sub_10000560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 activeConversation];
  if (v8)
  {
    v9 = v8;
    v10 = sub_10000A5C4();
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v13[4] = sub_100009F68;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000058DC;
    v13[3] = &unk_100010AC0;
    v12 = _Block_copy(v13);
    sub_100009BB8(a3);

    [v9 _removeAssetArchiveWithIdentifier:v10 completionHandler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_1000057C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10000A654();
  v6[5] = sub_10000A644();
  v8 = sub_10000A634();

  return _swift_task_switch(sub_100005864, v8, v7);
}

uint64_t sub_100005864()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v4(v2);
  v5 = v0[1];

  return v5();
}

void sub_1000058DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100005948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000031C4(&qword_1000149F0, &qword_10000BAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = __chkstk_darwin();
  v12 = &v16 - v11;
  if (a2)
  {
    v13 = sub_10000A674();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10000A654();
    sub_100009BB8(a2);
    sub_100009BB8(a2);
    swift_errorRetain();
    v14 = sub_10000A644();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = a1;
    sub_10000383C(0, 0, v12, a5, v15);
    sub_100009C94(a2);
  }

  return result;
}

uint64_t sub_100005AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10000A654();
  v6[5] = sub_10000A644();
  v8 = sub_10000A634();

  return _swift_task_switch(sub_10000A2CC, v8, v7);
}

uint64_t sub_100005B48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000031C4(&qword_100014B80, &qword_10000BB70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_10000A554();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_10000A654();
  v3[9] = sub_10000A644();
  v9 = sub_10000A634();
  v3[10] = v9;
  v3[11] = v8;

  return _swift_task_switch(sub_100005C78, v9, v8);
}

uint64_t sub_100005C78()
{
  v1 = [*(v0 + 24) contextItems];
  sub_10000A218(0, &qword_100014B88, MSConversationContextItem_ptr);
  v2 = sub_10000A624();

  if (v2 >> 62)
  {
    v3 = sub_10000A724();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:

    v9 = v44;
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = sub_1000088F4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(v4, v5, v6, v7);
  }

  v8 = 0;
  v9 = v44;
  v41 = v2 & 0xC000000000000001;
  v42 = v44[7];
  v40 = v42 + 32;
  v43 = v2;
  do
  {
    if (v41)
    {
      v10 = sub_10000A704();
    }

    else
    {
      v10 = *(v2 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 timestamp];
    if (v12)
    {
      v13 = v9[5];
      v14 = v12;
      sub_10000A3B4();

      v9 = v44;
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v9[5];
    v17 = sub_10000A3C4();
    (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
    v18 = [v11 messageContent];
    if (v18)
    {
      v19 = v18;
      sub_10000A5E4();
    }

    v20 = [v11 senderHandle];
    if (v20)
    {
      v21 = v20;
      sub_10000A5E4();
    }

    v22 = [v11 senderDisplayName];
    if (v22)
    {
      v23 = v22;
      sub_10000A5E4();
    }

    v9 = v44;
    v24 = v44[8];
    v25 = v44[5];
    sub_10000A544();

    v27 = *(&_swiftEmptyArrayStorage + 2);
    v26 = *(&_swiftEmptyArrayStorage + 3);
    if (v27 >= v26 >> 1)
    {
      sub_1000088F4(v26 > 1, v27 + 1, 1);
      v9 = v44;
    }

    v28 = v9[8];
    v29 = v9[6];
    ++v8;
    *(&_swiftEmptyArrayStorage + 2) = v27 + 1;
    (*(v42 + 32))(&_swiftEmptyArrayStorage + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v27, v28, v29);
    v2 = v43;
  }

  while (v3 != v8);

LABEL_23:
  v9[12] = &_swiftEmptyArrayStorage;
  v30 = v9[3];
  v31 = v9;
  v32 = *(v9[4] + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_contextSummarizer);
  v33 = [v30 generatedSummary];
  v34 = sub_10000A5E4();
  v36 = v35;

  v31[13] = v36;
  v37 = async function pointer to VisualSummarizationClient.summarizeContext(from:precomputedSummary:)[1];
  v38 = swift_task_alloc();
  v31[14] = v38;
  *v38 = v31;
  v38[1] = sub_100006078;
  v4 = v31[2];
  v5 = &_swiftEmptyArrayStorage;
  v6 = v34;
  v7 = v36;

  return VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(v4, v5, v6, v7);
}

uint64_t sub_100006078()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_100006214;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_10000619C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10000619C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100006214()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_1000062A8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100007068(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_10000A4A4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1000063D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = 0;
  v8 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_contextSummarizer;
  v9 = sub_10000A584();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v3[v8] = sub_10000A574();
  *&v3[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers] = &_swiftEmptySetSingleton;
  if (a2)
  {
    v12 = sub_10000A5C4();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100006524(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = 0;
  v4 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_contextSummarizer;
  v5 = sub_10000A584();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_10000A574();
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers] = &_swiftEmptySetSingleton;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_100006808(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &GPMessagesAppHelper__metaData; v1; i = &GPMessagesAppHelper__metaData)
  {
    ivar_lyt = i[39].ivar_lyt;
    v54 = a1 & 0xC000000000000001;
    v3 = a1;
    a1 = swift_beginAccess();
    v4 = 0;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v51 = v3;
    v49 = v3 + 32;
    v5 = &_swiftEmptyArrayStorage;
    v6 = &GPMessagesAppHelper__metaData;
    v52 = v1;
    while (1)
    {
      if (v54)
      {
        a1 = sub_10000A704();
      }

      else
      {
        if (v4 >= *(v50 + 16))
        {
          goto LABEL_27;
        }

        a1 = *(v49 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = [a1 *&v6[17].flags];
      v10 = sub_10000A5E4();
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100006F5C(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_100006F5C((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v16 = *&ivar_lyt[v55];

      v17 = v6;
      v18 = [v7 *&v6[17].flags];
      v19 = sub_10000A5E4();
      v21 = v20;

      if (*(v16 + 16) && (v22 = *(v16 + 40), sub_10000A7E4(), sub_10000A604(), v23 = sub_10000A7F4(), v24 = -1 << *(v16 + 32), v25 = v23 & ~v24, ((*(v16 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v16 + 48) + 16 * v25);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28 || (sub_10000A764() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v16 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:

        sub_100004E10(v7);
      }

      v6 = v17;
      if (v4 == v52)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v29 = a1;
    v1 = sub_10000A724();
    a1 = v29;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_30:
  v30 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers;
  swift_beginAccess();
  v31 = *(v55 + v30);
  v34 = *(v31 + 56);
  v33 = v31 + 56;
  v32 = v34;
  v35 = 1 << *(*(v55 + v30) + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v54 = *(v55 + v30);

  v40 = 0;
  v41 = 0;
  if (v37)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v44 >= v38)
    {
    }

    v37 = *(v33 + 8 * v44);
    ++v40;
    if (v37)
    {
      while (1)
      {
        v45 = (*(v54 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v37)))));
        v46 = *v45;
        v47 = v45[1];
        v37 &= v37 - 1;
        v56[0] = *v45;
        v56[1] = v47;
        __chkstk_darwin(result);
        v48[2] = v56;

        if (sub_100008B58(sub_100008C04, v48, v5))
        {

          v40 = v44;
          if (!v37)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v42 = swift_allocObject();
          ivar_lyt = v41;
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          v43[2] = v42;
          v43[3] = v46;
          v43[4] = v47;

          v41 = ivar_lyt;
          sub_10000560C(v46, v47, sub_100008CD4, v43);

          v40 = v44;
          if (!v37)
          {
            goto LABEL_36;
          }
        }

LABEL_35:
        v44 = v40;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100006D6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006E64;

  return v7(a1);
}

uint64_t sub_100006E64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100006F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000031C4(&qword_100014B68, &qword_10000BB38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100007068(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000031C4(&qword_100014B78, &qword_10000BB68);
  v10 = *(sub_10000A4A4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A4A4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100007240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000730C(v11, 0, 0, 1, a1, a2);
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
    sub_100003544(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000035A8(v11);
  return v7;
}

unint64_t sub_10000730C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007418(a5, a6);
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
    result = sub_10000A714();
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

char *sub_100007418(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007464(a1, a2);
  sub_100007594(&off_1000107A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007464(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007680(v5, 0);
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

  result = sub_10000A714();
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
        v10 = sub_10000A614();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007680(v10, 0);
        result = sub_10000A6F4();
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

uint64_t sub_100007594(uint64_t result)
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

  result = sub_1000076F4(result, v12, 1, v3);
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

void *sub_100007680(uint64_t a1, uint64_t a2)
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

  sub_1000031C4(&qword_100014B50, &unk_10000BB08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000076F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000031C4(&qword_100014B50, &unk_10000BB08);
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

uint64_t sub_1000077E8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10000A7E4();
  sub_10000A604();
  v9 = sub_10000A7F4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10000A764() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100007B98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  result = sub_10000A6E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10000A7E4();
      sub_10000A604();
      result = sub_10000A7F4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100007B98(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100007938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100007D18();
      goto LABEL_16;
    }

    sub_100007E74(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10000A7E4();
  sub_10000A604();
  result = sub_10000A7F4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10000A764();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10000A774();
  __break(1u);
  return result;
}

void *sub_100007D18()
{
  v1 = v0;
  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  v2 = *v0;
  v3 = sub_10000A6D4();
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

uint64_t sub_100007E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  result = sub_10000A6E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10000A7E4();

      sub_10000A604();
      result = sub_10000A7F4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000080AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10000A7E4();
  sub_10000A604();
  v7 = sub_10000A7F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10000A764() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100007D18();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000081E8(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1000081E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_10000A6C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10000A7E4();

        sub_10000A604();
        v15 = sub_10000A7F4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000083AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000A7E4();
  sub_10000A604();
  v6 = sub_10000A7F4();

  return sub_1000086CC(a1, a2, v6);
}

uint64_t sub_100008424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000031C4(&qword_100014B60, &qword_10000BB20);
  v38 = a2;
  result = sub_10000A744();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_10000A7E4();
      sub_10000A604();
      result = sub_10000A7F4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1000086CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000A764())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100008784()
{
  v1 = v0;
  sub_1000031C4(&qword_100014B60, &qword_10000BB20);
  v2 = *v0;
  v3 = sub_10000A734();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

size_t sub_1000088F4(size_t a1, int64_t a2, char a3)
{
  result = sub_10000897C(a1, a2, a3, *v3, &qword_100014B90, qword_10000BB78, &type metadata accessor for ConversationContextItem);
  *v3 = result;
  return result;
}

size_t sub_100008938(size_t a1, int64_t a2, char a3)
{
  result = sub_10000897C(a1, a2, a3, *v3, &qword_100014B78, &qword_10000BB68, &type metadata accessor for ImagePlaygroundConcept);
  *v3 = result;
  return result;
}

size_t sub_10000897C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000031C4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100008B58(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100008C04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A764() & 1;
  }
}

uint64_t sub_100008C5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100008CE0(uint64_t a1)
{
  v2 = sub_10000A5A4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin();
  v7 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = 0;
  v10 = 0;
  v42 = (v4 + 8);
  result = &_swiftEmptyArrayStorage;
  v12 = a1 + 40;
  *&v6 = 136315138;
  v38 = v6;
  v43 = v8;
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1 + 40;
  do
  {
    v37 = result;
    for (i = (v12 + 16 * v9); ; i += 2)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v44 = v9 + 1;
      v14 = *(i - 1);
      v15 = *i;
      sub_10000A218(0, &qword_100014B98, NSKeyedUnarchiver_ptr);
      sub_10000A218(0, &qword_100014BA0, AEAssetPackage_ptr);
      sub_10000A260(v14, v15);
      v16 = sub_10000A6B4();
      if (v10)
      {
        sub_10000A4D4();
        swift_errorRetain();
        v17 = sub_10000A594();
        v18 = sub_10000A694();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v45 = v40;
          *v19 = v38;
          swift_getErrorValue();
          v20 = sub_10000A794();
          v22 = sub_100007240(v20, v21, &v45);
          v41 = v10;
          v23 = v2;
          v24 = v22;

          *(v19 + 4) = v24;
          v2 = v23;
          _os_log_impl(&_mh_execute_header, v17, v18, "Failed to extract staged asset identifier from draft archive with error: %s", v19, 0xCu);
          sub_1000035A8(v40);

          v7 = v39;

          (*v42)(v7, v23);
        }

        else
        {

          (*v42)(v7, v2);
        }

        result = sub_100009B14(v14, v15);
        v10 = 0;
        v8 = v43;
        goto LABEL_6;
      }

      if (v16)
      {
        break;
      }

      result = sub_100009B14(v14, v15);
LABEL_6:
      ++v9;
      if (v44 == v8)
      {
        return v37;
      }
    }

    v41 = 0;
    v25 = v7;
    v26 = v16;
    v27 = [v16 identifier];
    v28 = sub_10000A5E4();
    v30 = v29;

    sub_100009B14(v14, v15);
    v31 = v37;
    v32 = v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v31;
    }

    else
    {
      result = sub_100006F5C(0, v31[2] + 1, 1, v31);
    }

    v34 = result[2];
    v33 = result[3];
    v7 = v25;
    v8 = v43;
    if (v34 >= v33 >> 1)
    {
      result = sub_100006F5C((v33 > 1), v34 + 1, 1, result);
    }

    v9 = v44;
    v10 = v41;
    result[2] = v34 + 1;
    v35 = &result[2 * v34];
    *(v35 + 4) = v28;
    *(v35 + 5) = v30;
    v2 = v32;
    v12 = v36;
  }

  while (v9 != v8);
  return result;
}

unint64_t sub_1000090CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000031C4(&qword_100014B60, &qword_10000BB20);
    v3 = sub_10000A754();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000083AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1000091D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1000083AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008424(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_1000083AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10000A784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100008784();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_10000934C(void *a1)
{
  v2 = sub_10000A3C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000090CC(&_swiftEmptyArrayStorage);
  v8 = [a1 pixelWidth];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v7;
  sub_1000091D0(v8, 0xD00000000000001FLL, 0x800000010000BE40, isUniquelyReferenced_nonNull_native, &v27);
  v10 = v27;
  v11 = [a1 pixelHeight];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_1000091D0(v11, 0xD000000000000020, 0x800000010000BE60, v12, &v27);
  v13 = v27;
  v14 = [a1 creationDate];
  sub_10000A3B4();

  sub_10000A3A4();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  v17 = [objc_allocWithZone(NSDate) initWithTimeIntervalSince1970:v16];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v13;
  sub_1000091D0(v17, 0xD000000000000021, 0x800000010000BE90, v18, &v27);
  v19 = v27;
  v20 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v19;
  sub_1000091D0(v20, 0xD00000000000001ELL, 0x800000010000BEC0, v21, &v27);
  v22 = v27;
  v23 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v22;
  sub_1000091D0(v23, 0xD000000000000022, 0x800000010000BEE0, v24, &v27);
  return v27;
}

void *sub_100009608(void *a1)
{
  v37 = sub_10000A504();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_10000A5E4();
    v11 = sub_10000A5C4();
  }

  v12 = [objc_allocWithZone(AEMutableAssetPackage) initWithAssetIdentifier:v11];

  v13 = [a1 imageURLWrapper];
  v14 = [v13 url];

  sub_10000A364();
  sub_10000A354(v15);
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  sub_10000A4F4();
  sub_10000A4E4();
  (*(v2 + 8))(v5, v37);
  v18 = sub_10000A5C4();

  [v12 storeURL:v17 forType:v18];

  v19 = [a1 previewImage];
  [v12 setSidecarObject:v19 forKey:kUTTypeAssetPreviewImage];

  v20 = [a1 recipeData];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 underlyingData];
    v23 = sub_10000A394();
    v25 = v24;

    v26 = objc_allocWithZone(NSData);
    isa = sub_10000A384().super.isa;
    v28 = [v26 initWithData:isa];

    sub_100009B14(v23, v25);
    v29 = sub_10000A5C4();
    [v12 setSidecarObject:v28 forKey:v29];
  }

  sub_10000934C(a1);
  sub_1000031C4(&qword_100014B58, &qword_10000BB18);
  v30 = sub_10000A5B4().super.isa;

  [v12 addSidecarEntriesFromDictionary:v30];

  v31 = objc_opt_self();
  v38 = 0;
  v32 = [v31 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v38];
  v33 = v38;
  if (v32)
  {
    v34 = sub_10000A394();
  }

  else
  {
    v34 = v33;
    sub_10000A344();

    swift_willThrow();
  }

  return v34;
}

uint64_t sub_100009A94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100009ACC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009B14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A2C4;

  return sub_1000057C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009C94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000031C4(&qword_1000149F0, &qword_10000BAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009D14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009D4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A2C4;

  return sub_100006D6C(a1, v5);
}

uint64_t sub_100009E04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000033EC;

  return sub_100006D6C(a1, v5);
}

uint64_t *sub_100009EC0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100009F28()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009FA0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009FE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A2C4;

  return sub_100005AAC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000A0B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A0F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000033EC;

  return sub_100003E80(a1, v4, v5, v7, v6);
}

uint64_t sub_10000A1B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000031C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A218(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000A260(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}