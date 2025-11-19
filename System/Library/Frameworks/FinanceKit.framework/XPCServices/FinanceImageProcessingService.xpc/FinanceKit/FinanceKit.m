void *sub_1000012C0()
{
  v1 = v0;
  v2 = sub_100001AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A94();
  v7 = sub_100001AA4();
  v8 = sub_100001AC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing XPC Service", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = sub_100001A84();
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_100001A74();
  v1[10] = v10;
  v1[11] = sub_1000019CC(&qword_100008198, 255, &type metadata accessor for ImageProcessingUIImplementation);
  v1[7] = v13;
  v14 = sub_100001A34();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_100001A24();
  v1[5] = v14;
  v1[6] = &protocol witness table for ImageProcessingImplementation;
  v1[2] = v17;
  return v1;
}

uint64_t sub_1000014B0()
{
  swift_allocObject();
  sub_1000012C0();
  sub_1000019CC(&qword_100008190, v0, type metadata accessor for FinanceImageProcessingService);
}

uint64_t sub_100001550()
{
  sub_100001980((v0 + 16));
  sub_100001980((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100001590(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1000015B8, 0, 0);
}

uint64_t sub_1000015B8()
{
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000193C(v1 + 7, v2);
  v4 = async function pointer to dispatch thunk of ImageProcessingUIXPCServiceProviding.generateIcon(for:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_100001678;
  v6 = v0[2];
  v7 = v0[3];

  return dispatch thunk of ImageProcessingUIXPCServiceProviding.generateIcon(for:)(v6, v7, v2, v3);
}

uint64_t sub_100001678()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000176C()
{
  v1 = *(*v0 + 48);
  sub_10000193C((*v0 + 16), *(*v0 + 40));
  return sub_100001A44();
}

uint64_t sub_1000017CC()
{
  v1 = *(*v0 + 48);
  sub_10000193C((*v0 + 16), *(*v0 + 40));
  return sub_100001A54();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FinanceImageProcessingService();
  sub_1000014B0();
  return 0;
}

void *sub_10000193C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001980(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000019CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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