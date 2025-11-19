uint64_t sub_100001108()
{
  v0 = sub_100002A08();
  sub_1000026D0(v0, qword_1000080C0);
  sub_100002034(v0, qword_1000080C0);
  sub_100002978();
  return sub_1000029F8();
}

double sub_100001174()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1000011A4()
{
  sub_10000277C(v0 + 16, &qword_1000081A0, &unk_100002E70);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000011F4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000011EC();
  *a1 = v3;
  return result;
}

uint64_t sub_100001250(_xpc_connection_s *a1)
{
  v2 = v1;
  v4 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_100002A38();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000029B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  pid = xpc_connection_get_pid(a1);
  sub_1000029D8();
  *v14 = sub_1000016A8;
  v14[1] = 0;
  (*(v11 + 104))(v14, enum case for InferenceProviderXPCRequestDispatcher.ProviderConfiguration.uninitializedBuiltIn(_:), v10);
  v16 = sub_1000029C8();
  sub_100001FD0(&qword_100008190, &qword_100002E38);
  v22[1] = v16;

  sub_1000029A8();
  sub_100002A48();
  *(swift_allocObject() + 16) = pid;
  swift_unknownObjectRetain();

  sub_100002A28();
  v17 = sub_100002A18();
  v18 = sub_100002AB8();
  sub_100002250(v7, 1, 1, v18);
  sub_100002A98();

  v19 = sub_100002A88();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v2;
  v20[5] = v17;
  sub_100001BE0(0, 0, v7, &unk_100002E50, v20);
}

void sub_1000016A8(uint64_t a1)
{
  v2 = sub_100002988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v11 - v8;
  v10 = *(v3 + 16);
  v10(v11 - v8, a1, v2);
  v10(v7, v9, v2);
  (*(v3 + 88))(v7, v2);
  sub_100002AD8();
  __break(1u);
}

void sub_100001814(uint64_t a1, int a2)
{
  v4 = sub_100002A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000080B8 != -1)
  {
    swift_once();
  }

  v9 = sub_100002A08();
  sub_100002034(v9, qword_1000080C0);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = sub_1000029E8();
  v12 = sub_100002AC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a2;
    *(v13 + 8) = 2112;
    sub_100002734(&qword_1000081A8, 255, &type metadata accessor for XPCRichError);
    swift_allocError();
    v10(v15, v8, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v13 + 10) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "Session with host process with %d was cancelled: %@", v13, 0x12u);
    sub_10000277C(v14, &qword_100008198, &qword_100002E40);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  exit(1);
}

uint64_t sub_100001A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_100002A98();
  v5[12] = sub_100002A88();
  v7 = sub_100002A78();

  return _swift_task_switch(sub_100001B2C, v7, v6);
}

uint64_t sub_100001B2C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v0[5] = sub_100002A48();
  v0[6] = &protocol witness table for XPCSession;
  v0[2] = v2;
  swift_beginAccess();

  sub_100002660((v0 + 2), v3 + 16);
  swift_endAccess();
  sub_100002824();

  return v4();
}

uint64_t sub_100001BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100002460(a3, v26 - v11);
  v13 = sub_100002AB8();
  v14 = sub_1000024D0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10000277C(v12, &qword_100008188, &qword_100002E30);
  }

  else
  {
    sub_100002AA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100002A78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100002A68() + 32;
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

      sub_10000277C(a3, &qword_100008188, &qword_100002E30);

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

  sub_10000277C(a3, &qword_100008188, &qword_100002E30);
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

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for BuiltInInferenceProviderService();
  sub_100002734(&qword_1000080D8, v3, type metadata accessor for BuiltInInferenceProviderService);
  sub_100002968();
  return 0;
}

uint64_t sub_100001FD0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000206C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002164;

  return v7(a1);
}

uint64_t sub_100002164()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002814();
  *v3 = v2;

  sub_100002824();

  return v4();
}

uint64_t sub_100002278()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000022C0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100002804(v7);
  *v8 = v9;
  v8[1] = sub_100002378;

  return sub_100001A94(a1, v3, v4, v6, v5);
}

uint64_t sub_100002378()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002814();
  *v3 = v2;

  sub_100002824();

  return v4();
}

uint64_t sub_100002460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000024F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100002804(v3);
  *v4 = v5;
  v6 = sub_1000027E4(v4);

  return v7(v6);
}

uint64_t sub_100002590()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100002804(v3);
  *v4 = v5;
  v6 = sub_1000027E4(v4);

  return v7(v6);
}

uint64_t sub_100002660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FD0(&qword_1000081A0, &unk_100002E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000026D0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000277C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FD0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000027E4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100002824()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void BuiltInInferenceProvider.inferenceProvider.getter()
{
  v1 = sub_100002988();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  (*(v2 + 88))(v5, v1);
  sub_100002AD8();
  __break(1u);
}