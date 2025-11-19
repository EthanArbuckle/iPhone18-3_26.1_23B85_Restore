uint64_t sub_100001270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000020BC;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000013C8;

  return sub_100001858(a1);
}

uint64_t sub_1000013C8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000014C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000015A8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000015A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000169C(uint64_t a1)
{
  v2 = sub_100001804();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001748();
  sub_1000020C0();
  return 0;
}

unint64_t sub_100001748()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

unint64_t sub_100001804()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_100001858(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1000020F0();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_100002150();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = sub_1000021A0();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000019D0, 0, 0);
}

uint64_t sub_1000019D0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[17];
    v3 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    v28 = v0[13];
    v8 = v0[11];
    v29 = v0[12];
    v30 = v0[10];
    sub_1000021D0();

    v0[7] = &type metadata for PFLNightingaleD;
    sub_100001F34(&qword_100008020, &qword_1000023E0);
    sub_1000021E0();
    sub_100001F34(&qword_100008028, &qword_1000023E8);
    v9 = *(v4 + 72);
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100002320;
    sub_100002170();
    sub_100002180();
    sub_100002190();
    sub_100002160();
    v0[8] = v11;
    sub_100002028(&qword_100008030, &type metadata accessor for PFLPluginConsent);
    sub_100001F34(&qword_100008038, &qword_1000023F0);
    sub_100001F7C();
    sub_1000021F0();
    (*(v7 + 104))(v6, enum case for PFLTaskSource.CKProd(_:), v28);
    v12 = sub_1000021C0();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v0[19] = sub_1000021B0();
    v15 = sub_1000020E0();
    (*(v8 + 104))(v29, enum case for HIDPFLUseCase.NightingaleD_CK(_:), v30);
    v16 = sub_1000020D0();
    v0[20] = v16;
    v0[5] = v15;
    v17 = sub_100002028(&qword_100008048, &type metadata accessor for NightingaleDPFLRunner);
    v0[2] = v16;
    v0[6] = v17;
    v18 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
    v31 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_100001D94;
    v20 = v0[9];

    return (v31)(v20, v0 + 2);
  }

  else
  {
    v22 = objc_allocWithZone(sub_100002110());
    v23 = sub_100002100();
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[12];

    v27 = v0[1];

    return v27(v23);
  }
}

uint64_t sub_100001D94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(v2 + 176) = a1;

  sub_100002070((v2 + 16));

  return _swift_task_switch(sub_100001E9C, 0, 0);
}

uint64_t sub_100001E9C()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];

  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_100001F34(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001F7C()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    sub_100001FE0(&qword_100008038, &qword_1000023F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

uint64_t sub_100001FE0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002070(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}