int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_1000011EC(v5, qword_100008028);
  v8 = sub_100001250(v3, qword_100008028);
  v9 = type metadata accessor for Daemon();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = objc_autoreleasePoolPush();
  sub_100001288();
  objc_autoreleasePoolPop(v10);
  swift_beginAccess();
  sub_100002030(v8, v7, &qword_100008010, &qword_100002768);
  v11 = [objc_opt_self() mainRunLoop];
  [v11 run];

  sub_100002098(v7, &qword_100008010, &qword_100002768);
  return 0;
}

uint64_t sub_1000011A4(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_1000011EC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001250(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001288()
{
  v0 = (*(*(sub_1000011A4(&qword_100008018, &qword_100002770) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v31 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Daemon();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v21 = sub_100001250(v18, &unk_100008028);
  Daemon.init()();
  (*(v12 + 56))(v20, 0, 1, v11);
  swift_beginAccess();
  sub_1000016FC(v20, v21);
  swift_endAccess();
  if ((*(v12 + 48))(v21, 1, v11))
  {
    static Log.default.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not determine bundle identifier, exiting", v27, 2u);
    }

    (*(v4 + 8))(v10, v3);
LABEL_10:
    exit(1);
  }

  (*(v12 + 16))(v15, v21, v11);
  Daemon.bundleIdentifier.getter();
  (*(v12 + 8))(v15, v11);
  if ((static Sandbox.bootstrap(_:)() & 1) == 0)
  {
    static Log.default.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Sandbox bootstrapped failed, exiting", v30, 2u);
    }

    (*(v4 + 8))(v8, v3);
    goto LABEL_10;
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v2, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_100001B58(0, 0, v2, &unk_100002780, v23);
}

uint64_t sub_1000016FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000011A4(&qword_100008010, &qword_100002768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000176C(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Daemon();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v1[9] = sub_100001250(v5, qword_100008028);

  return _swift_task_switch(sub_100001850, 0, 0);
}

uint64_t sub_100001850()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  swift_beginAccess();
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 88) = v4;
  if (v4)
  {
    v5 = *(v0 + 64);
    **(v0 + 40) = 1;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
    v8 = async function pointer to Daemon.activate()[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_10000198C;
    v10 = *(v0 + 64);

    return Daemon.activate()();
  }
}

uint64_t sub_10000198C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100001AE4, 0, 0);
}

uint64_t sub_100001AE4()
{
  v1 = *(v0 + 64);
  **(v0 + 40) = *(v0 + 88) != 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000011A4(&qword_100008018, &qword_100002770) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100002030(a3, v26 - v10, &qword_100008018, &qword_100002770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002098(v11, &qword_100008018, &qword_100002770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_1000011A4(&qword_100008020, &qword_100002798);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100002098(a3, &qword_100008018, &qword_100002770);

      return v23;
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

  sub_100002098(a3, &qword_100008018, &qword_100002770);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_1000011A4(&qword_100008020, &qword_100002798);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100001E6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001F3C;

  return sub_10000176C(a1);
}

uint64_t sub_100001F3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000011A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100002098(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000011A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000020F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000021EC;

  return v6(v2 + 32);
}

uint64_t sub_1000021EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100002300()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002338(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000024AC;

  return sub_1000020F8(a1, v5);
}

uint64_t sub_1000023F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001F3C;

  return sub_1000020F8(a1, v5);
}