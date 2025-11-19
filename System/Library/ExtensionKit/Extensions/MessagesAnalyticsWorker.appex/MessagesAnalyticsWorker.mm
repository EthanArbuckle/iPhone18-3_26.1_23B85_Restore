uint64_t sub_100001498()
{
  v0 = sub_1000069DC();
  sub_100002D9C(v0, qword_100010360);
  sub_100002B04(v0, qword_100010360);
  return sub_1000069CC();
}

uint64_t sub_100001534()
{
  sub_100002EAC();
  v1 = *(v0 + 16);
  v2 = sub_1000015AC();
  if (!v2)
  {
    objc_allocWithZone(sub_10000695C());
    v2 = sub_10000694C();
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000015AC()
{
  v0 = objc_opt_self();
  v1 = sub_1000069FC();
  v2 = [v0 allowSubmissionForBundleID:v1 isDPG:1];

  if (v2)
  {
    v3 = sub_1000069FC();
    v4 = [v0 allowDPGBundleID:v3];

    if (v4)
    {
      return 0;
    }
  }

  v6 = objc_allocWithZone(sub_10000695C());
  return sub_10000694C();
}

void sub_10000167C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000681C();
  v5 = sub_100002EB8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002ABC(&qword_100010280, &qword_1000070E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_100002ABC(&qword_100010298, &qword_1000070E8);
  v17 = sub_100002EB8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  sub_100002B84(a1, v15);
  if (sub_100002BF4(v15, 1, v16) == 1)
  {
    sub_100002C44(v15, &qword_100010280, &qword_1000070E0);
    if (qword_1000101B0 != -1)
    {
      sub_100002E04();
    }

    v27 = sub_1000069DC();
    sub_100002B04(v27, qword_100010360);
    v28 = sub_1000069BC();
    v29 = sub_100006A9C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Execution without additional parameters", v30, 2u);
      sub_100002E3C();
    }
  }

  else
  {
    v48 = v11;
    (*(v19 + 32))(v26, v15, v16);
    if (qword_1000101B0 != -1)
    {
      sub_100002E04();
    }

    v49 = v7;
    v31 = sub_1000069DC();
    sub_100002B04(v31, qword_100010360);
    (*(v19 + 16))(v24, v26, v16);
    v32 = sub_1000069BC();
    v33 = sub_100006A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = v4;
      v35 = v34;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v35 = 136315138;
      sub_100002CA4();
      v36 = sub_100006B0C();
      v47 = v2;
      v38 = v37;
      v39 = sub_100002E58();
      v40(v39);
      v41 = sub_100003A60(v36, v38, &v50);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Configuration: %s", v35, 0xCu);
      sub_100002D50(v45);
      sub_100002E74();
      v4 = v46;
      sub_100002E74();
    }

    else
    {

      v42 = sub_100002E58();
      v43(v42);
    }

    v44 = v48;
    sub_10000698C();
    sub_100002EEC(v44);
    (*(v49 + 8))(v44, v4);
    (v24)(v26, v16);
  }
}

uint64_t sub_100001AC0()
{
  sub_100002EAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = sub_100006A4C();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = *(*(sub_100002ABC(&qword_100010278, &qword_1000070D8) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_100002ABC(&qword_100010280, &qword_1000070E0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100001C20, 0, 0);
}

uint64_t sub_100001C20()
{
  v1 = v0[5];
  if (sub_1000015AC())
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[9];
    v4 = v0[10];

    v6 = sub_100002E8C();

    return v7(v6);
  }

  else
  {
    if (qword_1000101B0 != -1)
    {
      sub_100002E04();
    }

    v9 = v0[4];
    v10 = sub_1000069DC();
    v0[13] = sub_100002B04(v10, qword_100010360);
    v11 = v9;
    v12 = sub_1000069BC();
    v13 = sub_100006A9C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "Context: %@", v15, 0xCu);
      sub_100002C44(v16, &qword_1000102A8, &qword_1000070F8);
      sub_100002E74();
      sub_100002E3C();
    }

    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];

    v21 = sub_10000699C();
    v22 = v19[3];
    v19[2] = v21;
    v19[3] = v23;

    v24 = sub_1000069AC();
    v25 = v19[5];
    v19[4] = v24;
    v19[5] = v26;

    v0[2] = v19;
    v27 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
    v28 = swift_task_alloc();
    v0[14] = v28;
    v29 = sub_10000681C();
    v0[15] = v29;
    sub_100002E24();
    v33 = sub_100002B3C(v30, v31, v32);
    v34 = sub_100002B3C(&qword_100010288, 255, &type metadata accessor for PoirotDefaultTaskParameters);
    v35 = sub_100002B3C(&qword_100010290, 255, &type metadata accessor for PoirotDefaultTaskParameters);
    *v28 = v0;
    v28[1] = sub_100001F20;
    v36 = v0[12];
    v37 = v0[4];

    return MLHostExtension.loadConfig<A>(context:)(v36, v37, v18, v29, v33, v34, v35);
  }
}

uint64_t sub_100001F20()
{
  sub_100002EAC();
  v1 = *(*v0 + 112);
  v2 = *v0;
  sub_100002E9C();
  *v3 = v2;

  return _swift_task_switch(sub_100002010, 0, 0);
}

uint64_t sub_100002010()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  sub_10000167C(v1);
  sub_100002B84(v1, v2);
  v4 = sub_100002ABC(&qword_100010298, &qword_1000070E8);
  v5 = sub_100002BF4(v2, 1, v4);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_100002C44(v0[11], &qword_100010280, &qword_1000070E0);
    v7 = 1;
  }

  else
  {
    v8 = v0[10];
    sub_10000698C();
    (*(*(v4 - 8) + 8))(v6, v4);
    v7 = 0;
  }

  v9 = v0[10];
  v10 = v0[5];
  sub_100002C1C(v9, v7, 1, v0[15]);
  sub_1000031BC(v9);
  v11 = v0[13];
  sub_100002C44(v0[10], &qword_100010278, &qword_1000070D8);
  v12 = sub_1000069BC();
  v13 = sub_100006A9C();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    sub_100002ECC(&_mh_execute_header, v14, v15, "Execution is completed.");
    sub_100002E3C();
  }

  v16 = v0[12];

  v17 = objc_allocWithZone(sub_10000695C());
  sub_10000694C();
  sub_100002C44(v16, &qword_100010280, &qword_1000070E0);
  v19 = v0[11];
  v18 = v0[12];
  v21 = v0[9];
  v20 = v0[10];

  v22 = sub_100002E8C();

  return v23(v22);
}

uint64_t sub_100002430()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_100002458()
{
  sub_100002430();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_10000248C()
{
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x8000000100007360;
  result[4] = 0xD000000000000010;
  result[5] = 0x8000000100007360;
  return result;
}

uint64_t sub_1000024D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002E00;

  return sub_100001514();
}

uint64_t sub_100002560()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000025F8;

  return sub_100001AC0();
}

uint64_t sub_1000025F8()
{
  sub_100002EAC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002E9C();
  *v3 = v2;

  v4 = sub_100002E8C();

  return v5(v4);
}

uint64_t sub_1000026E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000027C4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000027C4()
{
  sub_100002EAC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002E9C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000028AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002B3C(&qword_100010270, a2, type metadata accessor for MessagesAnalyticsWorker);

  return MLHostExtension.configuration.getter(a1, v3);
}

void *sub_100002928@<X0>(void *a1@<X8>)
{
  result = sub_10000248C();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MessagesAnalyticsWorker();
  sub_100002E24();
  sub_100002B3C(v3, v4, v5);
  sub_10000693C();
  return 0;
}

uint64_t sub_100002ABC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002B04(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002B3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_100010280, &qword_1000070E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002C44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002ABC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100002CA4()
{
  result = qword_1000102B0;
  if (!qword_1000102B0)
  {
    sub_100002D08(&qword_100010298, &qword_1000070E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102B0);
  }

  return result;
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002D50(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100002D9C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002E04()
{

  return swift_once();
}

uint64_t sub_100002E3C()
{
}

uint64_t sub_100002E58()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t sub_100002E74()
{
}

void sub_100002ECC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_100002EEC(uint64_t a1)
{
  v2 = sub_10000681C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (__chkstk_darwin)();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  if (qword_1000101B0 != -1)
  {
    sub_100004030();
    swift_once();
  }

  v10 = sub_1000069DC();
  sub_100002B04(v10, qword_100010360);
  v11 = v3[2];
  v11(v9, a1, v2);
  v11(v7, a1, v2);
  v12 = sub_1000069BC();
  v13 = sub_100006A9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315394;
    v15 = sub_10000680C();
    v17 = v16;
    v18 = v3[1];
    v18(v9, v2);
    v19 = sub_100003A60(v15, v17, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = sub_1000067FC();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v18(v7, v2);
    v24 = sub_100003A60(v22, v23, &v27);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Task parameters: recipeFolderPath-%s loggingPath-%s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100004054();

    sub_100004054();
  }

  else
  {

    v25 = v3[1];
    v25(v7, v2);
    v25(v9, v2);
  }
}

uint64_t sub_1000031BC(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100002ABC(&qword_100010278, &qword_1000070D8);
  v6 = sub_100004044(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v35 - v11;
  v13 = sub_100002ABC(&qword_1000102B8, &qword_100007130);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  result = sub_100003504();
  if (!v2)
  {
    v35 = v8;
    v36 = a1;
    v21 = type metadata accessor for TaskHostEnvironment();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_100006284();
    v37 = sub_100002ABC(&qword_1000102C0, &qword_100007138);
    sub_100002ABC(&qword_1000102C8, &qword_100007140);
    v25 = sub_10000685C();
    sub_100004044(v25);
    v27 = *(v26 + 72);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_100007120;
    v30 = BMMessagesSearchEventIdentifier;
    sub_10000684C();
    v31 = sub_1000068AC();
    sub_100002C1C(v19, 1, 1, v31);
    sub_100002C1C(v17, 1, 1, v31);

    sub_10000683C();
    sub_10000376C(v36, v12);
    v32 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_1000038F0(v12, v34 + v32);
    *(v34 + v33) = v3;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

    sub_10000682C();
  }

  return result;
}

uint64_t sub_100003504()
{
  v1 = v0;
  result = sub_100006A7C();
  if (result)
  {
    if (qword_1000101B0 != -1)
    {
      sub_100004030();
      swift_once();
    }

    v3 = sub_1000069DC();
    sub_100002B04(v3, qword_100010360);

    v4 = sub_1000069BC();
    v5 = sub_100006A9C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = v1[2];
      v8 = v1[3];

      v9 = sub_100003A60(v7, v8, &v13);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      v10 = v1[4];
      v11 = v1[5];

      v12 = sub_100003A60(v10, v11, &v13);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "TaskId: %s, TaskName: %s: asked to stop!", v6, 0x16u);
      swift_arrayDestroy();
      sub_100004054();

      sub_100004054();
    }

    sub_100006A4C();
    sub_100003A08();
    swift_allocError();
    sub_1000069EC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000036D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000681C();
  result = sub_100002BF4(a2, 1, v3);
  if (result == 1)
  {
    return sub_100004060();
  }

  return result;
}

uint64_t sub_10000376C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_100010278, &qword_1000070D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000037DC()
{
  v1 = sub_100002ABC(&qword_100010278, &qword_1000070D8);
  sub_100004044(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_10000681C();
  if (!sub_100002BF4(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_1000038F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_100010278, &qword_1000070D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003960(uint64_t a1)
{
  v3 = sub_100002ABC(&qword_100010278, &qword_1000070D8);
  sub_100004044(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000036D8(a1, v1 + v8);
}

unint64_t sub_100003A08()
{
  result = qword_1000102D0;
  if (!qword_1000102D0)
  {
    sub_100006A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102D0);
  }

  return result;
}

uint64_t sub_100003A60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003B24(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100003FD0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002D50(v11);
  return v7;
}

unint64_t sub_100003B24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003C24(a5, a6);
    *a1 = v9;
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
    result = sub_100006AEC();
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

char *sub_100003C24(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003C70(a1, a2);
  sub_100003D88(&off_10000C638);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003C70(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100006A2C())
  {
    result = sub_100003E6C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100006ADC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100006AEC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100003D88(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100003EDC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003E6C(uint64_t a1, uint64_t a2)
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

  sub_100002ABC(&qword_1000102D8, &qword_100007148);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003EDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002ABC(&qword_1000102D8, &qword_100007148);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100003FD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004060()
{
  result = sub_100005264();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  for (i = (result + 48); ; i += 3)
  {
    if (v4 == v3)
    {
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = sub_100005258();
    sub_1000042FC(v9, v10);
    v11 = sub_100005258();
    sub_100004144(v11, v12);
    if (v0)
    {

      v15 = sub_100005258();
      return sub_100004354(v15, v16);
    }

    ++v3;
    sub_10000650C(v7, 0);
    v13 = sub_100005258();
    result = sub_100004354(v13, v14);
  }

  __break(1u);
  return result;
}

void sub_100004144(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100002ABC(&qword_1000102E0, &qword_100007158);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = sub_100006A6C();
  sub_100002C1C(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v10;
  v13[8] = v11;

  v14 = v11;
  sub_1000042FC(a1, a2);
  sub_1000048A8(0, 0, v9, &unk_100007168, v13);

  sub_100006ABC();
  swift_beginAccess();
  if (*(v10 + 16))
  {
    v15 = *(v10 + 16);
    swift_willThrow();
    swift_errorRetain();
  }
}

uint64_t sub_1000042FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004354(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000043AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  return _swift_task_switch(sub_1000043D0, 0, 0);
}

uint64_t sub_1000043D0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedLogger];
  v0[22] = v3;
  isa = sub_1000067EC().super.isa;
  v0[23] = isa;
  v5 = sub_1000069FC();
  v0[24] = v5;
  v6 = sub_1000069FC();
  v0[25] = v6;
  v0[2] = v0;
  v0[3] = sub_100004588;
  v7 = swift_continuation_init();
  v0[17] = sub_100002ABC(&qword_1000102E8, &qword_100007188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000047C8;
  v0[13] = &unk_10000C728;
  v0[14] = v7;
  [v3 reportDataPlatformBatchedEvent:isa forBundleID:v5 ofSchema:v6 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004588()
{
  sub_100002EAC();
  sub_10000524C();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 208) = v4;
  if (v4)
  {
    v5 = sub_10000470C;
  }

  else
  {
    v5 = sub_100004690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004690()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  dispatch_group_leave(*(v0 + 168));
  sub_100005240();

  return v4();
}

uint64_t sub_10000470C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  swift_willThrow();

  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = v2;

  dispatch_group_leave(*(v0 + 168));
  sub_100005240();

  return v8();
}

uint64_t sub_1000047C8(uint64_t a1, void *a2)
{
  v3 = sub_1000051C4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_100004838(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_100004838(uint64_t a1, uint64_t a2)
{
  sub_100002ABC(&qword_1000102A0, &qword_1000070F0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000048A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002ABC(&qword_1000102E0, &qword_100007158);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100004D90(a3, v26 - v11);
  v13 = sub_100006A6C();
  v14 = sub_100002BF4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100004E00(v12);
  }

  else
  {
    sub_100006A5C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100006A3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006A0C() + 32;
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

      sub_100004E00(a3);

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

  sub_100004E00(a3);
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

uint64_t sub_100004B4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004B84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100004354(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100004BDC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_100005230(v10);
  *v11 = v12;
  v11[1] = sub_100004CB0;

  return sub_1000043AC(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100004CB0()
{
  sub_100002EAC();
  sub_10000524C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002E9C();
  *v4 = v3;

  sub_100005240();

  return v5();
}

uint64_t sub_100004D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_1000102E0, &qword_100007158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E00(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_1000102E0, &qword_100007158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004E68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004F60;

  return v7(a1);
}

uint64_t sub_100004F60()
{
  sub_100002EAC();
  sub_10000524C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002E9C();
  *v4 = v3;

  sub_100005240();

  return v5();
}

uint64_t sub_100005044()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005230(v3);
  *v4 = v5;
  v6 = sub_100005210(v4);

  return v7(v6);
}

uint64_t sub_1000050DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005114()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005230(v3);
  *v4 = v5;
  v6 = sub_100005210(v4);

  return v7(v6);
}

void *sub_1000051C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005210(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100005240()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

char *sub_100005264()
{
  v0 = 0xEE00656D6F69426DLL;
  v1 = 0x6F72466863746546;
  v51 = sub_10000688C();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v51);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v47 = &v43 - v7;
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  result = sub_10000692C();
  v11 = result;
  v12 = 0;
  v13 = *(result + 2);
  v50 = v2 + 16;
  v48 = v13;
  v49 = (v2 + 8);
  v44 = (v2 + 32);
  v46 = &_swiftEmptyArrayStorage;
  while (v48 != v12)
  {
    if (v12 >= *(v11 + 2))
    {
      __break(1u);
      return result;
    }

    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    (*(v2 + 16))(v9, &v11[v14 + v15 * v12], v51);
    if (sub_10000686C() == v1 && v16 == v0)
    {
      v18 = v1;
      v19 = v0;
    }

    else
    {
      v18 = v1;
      v19 = v0;
      v20 = sub_100006B1C();

      if ((v20 & 1) == 0)
      {
        result = (*v49)(v9, v51);
        ++v12;
        goto LABEL_10;
      }
    }

    v21 = *v44;
    (*v44)(v45, v9, v51);
    v22 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v22;
    v43 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100005B4C(0, v22[2] + 1, 1);
      v22 = v52;
    }

    v25 = v22[2];
    v24 = v22[3];
    v26 = (v25 + 1);
    if (v25 >= v24 >> 1)
    {
      v46 = (v25 + 1);
      sub_100005B4C(v24 > 1, v25 + 1, 1);
      v26 = v46;
      v22 = v52;
    }

    ++v12;
    v22[2] = v26;
    v46 = v22;
    result = (v43)(v22 + v14 + v25 * v15, v45, v51);
LABEL_10:
    v0 = v19;
    v1 = v18;
  }

  v27 = v46[2];
  if (v27)
  {
    v28 = v46 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 = *(v2 + 72);
    v30 = *(v2 + 16);
    v31 = &_swiftEmptyArrayStorage;
    v48 = v30;
    do
    {
      v32 = v47;
      v33 = v51;
      v30(v47, v28, v51);
      v34 = sub_10000687C();
      v35 = sub_10000567C(v34);
      v37 = v36;
      v39 = v38;
      (*v49)(v32, v33);
      if (v39 >> 60 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100005960(0, *(v31 + 2) + 1, 1, v31);
        }

        v41 = *(v31 + 2);
        v40 = *(v31 + 3);
        if (v41 >= v40 >> 1)
        {
          v31 = sub_100005960((v40 > 1), v41 + 1, 1, v31);
        }

        *(v31 + 2) = v41 + 1;
        v42 = &v31[24 * v41];
        *(v42 + 4) = v35;
        *(v42 + 5) = v37;
        *(v42 + 6) = v39;
        v30 = v48;
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v31;
}

uint64_t sub_10000567C(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_1000102F8, &qword_100007198);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  sub_10000589C(0x64616F6C796170, 0xE700000000000000, a1, v15 - v7);
  v9 = sub_1000068CC();
  if (sub_100002BF4(v8, 1, v9) == 1)
  {

    v10 = v8;
LABEL_3:
    sub_100005B6C(v10);
    return 0;
  }

  sub_1000068BC();
  v11 = *(*(v9 - 8) + 8);
  v11(v8, v9);
  if ((sub_100005F90() & 1) == 0)
  {

    return 0;
  }

  v12 = v15[0];
  v13 = v15[1];
  sub_10000589C(0x6D617473656D6974, 0xE900000000000070, a1, v6);

  if (sub_100002BF4(v6, 1, v9) == 1)
  {
    sub_100004354(v12, v13);
    v10 = v6;
    goto LABEL_3;
  }

  sub_1000068BC();
  v11(v6, v9);
  if (sub_100005F90())
  {
    return v15[0];
  }

  sub_100004354(v12, v13);
  return 0;
}

uint64_t sub_10000589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005D88(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1000068CC();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1000068CC();
    v11 = a4;
    v12 = 1;
  }

  return sub_100002C1C(v11, v12, 1, v13);
}

char *sub_100005960(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002ABC(&qword_1000102F0, &qword_100007190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005A78(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_10000688C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_10000688C();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

size_t sub_100005B4C(size_t a1, int64_t a2, char a3)
{
  result = sub_100005BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100005B6C(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_1000102F8, &qword_100007198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_100005BD4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100002ABC(&qword_100010300, &qword_1000071A0);
  v10 = *(sub_10000688C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000688C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100005A78(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100005D88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100006B2C();
  sub_100006A1C();
  v6 = sub_100006B3C();

  return sub_100005E00(a1, a2, v6);
}

unint64_t sub_100005E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100006B1C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100005EB4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100005ED0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005EE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100005F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100005F90()
{

  return swift_dynamicCast();
}

uint64_t type metadata accessor for TaskHostEnvironment()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000603C()
{
  v0 = sub_1000067DC();
  sub_100002D9C(v0, qword_100010378);
  sub_100002B04(v0, qword_100010378);
  sub_100006088();
}

void sub_100006088()
{
  type metadata accessor for TaskHostEnvironment();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_1000069FC();
  v3 = sub_1000069FC();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_1000067CC();
  }

  else
  {
    sub_100006AFC();
    __break(1u);
  }
}

uint64_t sub_1000061D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_100006748(0xD00000000000002ELL, 0x80000001000074F0);
  if (!result)
  {
    result = sub_100006AFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006284()
{
  v0 = sub_10000689C();
  v1 = sub_100002EB8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000067DC();
  v9 = sub_100002EB8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000101B8 != -1)
  {
    swift_once();
  }

  v16 = sub_100002B04(v8, qword_100010378);
  (*(v11 + 16))(v15, v16, v8);
  (*(v3 + 104))(v7, enum case for LoggingType.console(_:), v0);
  return sub_1000068DC();
}

uint64_t sub_100006420()
{
  v0 = sub_1000061D8();
  v1 = sub_1000067AC();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_100006ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000066E0(v7);
    return 0;
  }
}

void sub_10000650C(uint64_t a1, char a2)
{
  v3 = sub_1000061D8();
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100006A8C().super.super.isa;
  }

  v5 = sub_1000067AC();
  [v3 setObject:isa forKey:v5];

  swift_unknownObjectRelease();
}

uint64_t sub_1000065DC()
{
  v0 = sub_1000068EC();

  return _swift_deallocClassInstance(v0, 16, 7);
}

void (*sub_10000664C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_100006420();
  *(a1 + 8) = v3 & 1;
  return sub_10000669C;
}

uint64_t sub_1000066E0(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_100010358, &qword_1000072D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100006748(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1000069FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

NSString sub_1000067AC()
{

  return sub_1000069FC();
}