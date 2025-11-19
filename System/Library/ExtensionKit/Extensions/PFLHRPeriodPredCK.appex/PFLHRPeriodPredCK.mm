uint64_t sub_100001150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002528;

  return sub_100001728();
}

uint64_t sub_1000011F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001298;

  return sub_100001D34(a1);
}

uint64_t sub_100001298(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100001478;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001478()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000156C(uint64_t a1)
{
  v2 = sub_1000016D4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001618();
  sub_1000025CC();
  return 0;
}

unint64_t sub_100001618()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_1000016D4()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001728()
{
  v1 = *(*(sub_100002338(&qword_100008038, &qword_1000028B0) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_10000256C();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v5 = *(*(sub_100002338(&qword_100008040, &qword_1000028B8) - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v6 = *(*(sub_100002338(&qword_100008048, &qword_1000028C0) - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v7 = sub_10000253C();
  v0[9] = v7;
  v8 = *(v7 - 8);
  v0[10] = v8;
  v9 = *(v8 + 64) + 15;
  v0[11] = swift_task_alloc();
  v10 = sub_10000257C();
  v0[12] = v10;
  v11 = *(v10 - 8);
  v0[13] = v11;
  v12 = *(v11 + 64) + 15;
  v0[14] = swift_task_alloc();
  v13 = sub_1000025AC();
  v0[15] = v13;
  v14 = *(v13 - 8);
  v0[16] = v14;
  v15 = *(v14 + 64) + 15;
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000019AC, 0, 0);
}

uint64_t sub_1000019AC()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[7];
  v7 = v0[8];
  v31 = v0[11];
  v33 = v0[6];
  v9 = v0[4];
  v35 = v0[2];
  v37 = v0[3];
  (*(v6 + 104))(v4, enum case for Calendar.Identifier.gregorian(_:), v5);
  sub_10000258C();
  (*(v6 + 8))(v4, v5);
  (*(v1 + 56))(v7, 1, 1, v3);
  v10 = sub_1000025BC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_10000252C();
  sub_10000255C();
  sub_10000259C();
  if ((*(v9 + 48))(v35, 1, v37) == 1)
  {
    sub_1000024C0(v0[2]);
  }

  else
  {
    v11 = v0[6];
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    v12 = sub_10000254C();
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];
    if (v12)
    {
      v16 = objc_allocWithZone(sub_10000261C());
      v38 = sub_10000260C();
      v17 = *(v14 + 8);
      v17(v13, v15);
      v18 = v17;
      goto LABEL_7;
    }

    (*(v14 + 8))(v0[5], v0[3]);
  }

  v19 = v0[4];
  v20 = objc_allocWithZone(sub_10000261C());
  v38 = sub_10000260C();
  v18 = *(v19 + 8);
LABEL_7:
  v22 = v0[16];
  v21 = v0[17];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[10];
  v26 = v0[11];
  v27 = v0[9];
  v30 = v0[8];
  v32 = v0[7];
  v34 = v0[5];
  v36 = v0[2];
  v18(v0[6], v0[3]);
  (*(v25 + 8))(v26, v27);
  (*(v22 + 8))(v21, v23);

  v28 = v0[1];

  return v28(v38);
}

uint64_t sub_100001D34(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_1000025FC();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_10000264C();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_10000269C();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100001EAC, 0, 0);
}

uint64_t sub_100001EAC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[11];
  sub_100002338(&qword_100008010, &qword_100002898);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000027B0;
  sub_10000266C();
  sub_10000267C();
  sub_10000268C();
  sub_10000265C();
  v0[7] = v9;
  sub_10000242C(&qword_100008018, &type metadata accessor for PFLPluginConsent);
  sub_100002338(&qword_100008020, &qword_1000028A0);
  sub_100002380();
  sub_1000026CC();
  (*(v5 + 104))(v4, enum case for PFLTaskSource.CKProd(_:), v20);
  v10 = sub_1000026BC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[18] = sub_1000026AC();
  v13 = sub_1000025EC();
  (*(v6 + 104))(v22, enum case for HIDPFLUseCase.HR_Period_Prediction_CK(_:), v21);
  v14 = sub_1000025DC();
  v0[19] = v14;
  v0[5] = v13;
  v15 = sub_10000242C(&qword_100008030, &type metadata accessor for NightingalePFLRunner);
  v0[2] = v14;
  v0[6] = v15;
  v16 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
  v23 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_100002198;
  v18 = v0[8];

  return (v23)(v18, v0 + 2);
}

uint64_t sub_100002198(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(v2 + 168) = a1;

  sub_100002474((v2 + 16));

  return _swift_task_switch(sub_1000022A0, 0, 0);
}

uint64_t sub_1000022A0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = v0[21];

  return v6(v7);
}

uint64_t sub_100002338(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002380()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000023E4(&qword_100008020, &qword_1000028A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000023E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000242C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002474(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000024C0(uint64_t a1)
{
  v2 = sub_100002338(&qword_100008038, &qword_1000028B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}