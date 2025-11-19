uint64_t sub_13D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  v6 = sub_298C();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_14A8, 0, 0);
}

uint64_t sub_14A8()
{
  v1 = *(v0 + 88);
  if (v1 == 3)
  {
    v6 = *(v0 + 40);
    sub_297C();
    v7 = async function pointer to AccountStateUpdater.unregisterICloudLogin()[1];
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_17BC;
    v9 = *(v0 + 40);

    return AccountStateUpdater.unregisterICloudLogin()();
  }

  else if (v1 == 1)
  {
    v2 = *(v0 + 48);
    sub_297C();
    v3 = async function pointer to AccountStateUpdater.registerICloudLogin()[1];
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_160C;
    v5 = *(v0 + 48);

    return AccountStateUpdater.registerICloudLogin()();
  }

  else
  {
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_160C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_196C, 0, 0);
  }

  else
  {
    v8 = v6[5];
    v7 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_17BC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1A58, 0, 0);
  }

  else
  {
    v8 = v6[5];
    v7 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_196C()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = sub_299C();
  v4 = sub_2A1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Error updating login state", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A58()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = sub_299C();
  v4 = sub_2A1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Error updating login state", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_23AC(&qword_83D8, &qword_2DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_2684(a3, v26 - v10);
  v12 = sub_29FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F4(v11);
  }

  else
  {
    sub_29EC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29CC() + 32;
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

      sub_26F4(a3);

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

  sub_26F4(a3);
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

id sub_1E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDSNotificationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_DWORD *sub_1ED0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1EEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1FE4;

  return v7(a1);
}

uint64_t sub_1FE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DC(int a1)
{
  v2 = (*(*(sub_23AC(&qword_83D8, &qword_2DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v19 - v3;
  v5 = sub_29BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  sub_29AC();
  v12 = sub_299C();
  v13 = sub_2A0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_0, v12, v13, "account update triggered with type: %u", v14, 8u);
  }

  v15 = sub_29FC();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  (*(v6 + 16))(v9, v11, v5);
  v16 = (*(v6 + 80) + 36) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a1;
  (*(v6 + 32))(v17 + v16, v9, v5);
  sub_1B44(0, 0, v4, &unk_2DD8, v17);

  (*(v6 + 8))(v11, v5);
  return 0;
}

uint64_t sub_23AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23F4()
{
  v1 = sub_29BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B8()
{
  v2 = *(sub_29BC() - 8);
  v3 = (*(v2 + 80) + 36) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2590;

  return sub_13D8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_2590()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2684(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_83D8, &qword_2DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4(uint64_t a1)
{
  v2 = sub_23AC(&qword_83D8, &qword_2DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2794(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2958;

  return sub_1EEC(a1, v5);
}

uint64_t sub_284C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2590;

  return sub_1EEC(a1, v5);
}

void type metadata accessor for ACAccountChangeType()
{
  if (!qword_83E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_83E0);
    }
  }
}