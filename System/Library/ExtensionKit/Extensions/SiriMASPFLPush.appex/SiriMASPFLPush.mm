uint64_t sub_1000010F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100001DC0;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_1000011A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001250;

  return sub_1000016E0(a1);
}

uint64_t sub_100001250(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100001430;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001430()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001524(uint64_t a1)
{
  v2 = sub_10000168C();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000015D0();
  sub_100001DE4();
  return 0;
}

unint64_t sub_1000015D0()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_10000168C()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_1000016E0(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_100001E34();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_100001E64();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000017FC, 0, 0);
}

uint64_t sub_1000017FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  sub_100001E24();
  sub_100001C38(&qword_100008010, &qword_100002088);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100001FB0;
  sub_100001E54();
  sub_100001E44();
  v0[7] = v10;
  sub_100001D2C(&qword_100008018, &type metadata accessor for PFLPluginConsent);
  sub_100001C38(&qword_100008020, &qword_100002090);
  sub_100001C80();
  sub_100001E94();
  (*(v5 + 104))(v3, enum case for PFLTaskSource.CKProd(_:), v6);
  v11 = sub_100001E84();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[15] = sub_100001E74();
  v14 = sub_100001DD4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_100001DC4();
  v0[16] = v17;
  v0[5] = v14;
  v18 = sub_100001D2C(&unk_100008030, &type metadata accessor for SiriMASPFLPluginRunner);
  v0[2] = v17;
  v0[6] = v18;
  v19 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
  v23 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_100001AA4;
  v21 = v0[8];

  return (v23)(v21, v0 + 2);
}

uint64_t sub_100001AA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(v2 + 144) = a1;

  sub_100001D74((v2 + 16));

  return _swift_task_switch(sub_100001BAC, 0, 0);
}

uint64_t sub_100001BAC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];
  v6 = v0[18];

  return v5(v6);
}

uint64_t sub_100001C38(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001C80()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_100001CE4(&qword_100008020, &qword_100002090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100001CE4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001D74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}