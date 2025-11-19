uint64_t sub_10003E728()
{
  if (qword_10006C378 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003E794()
{
  v0 = sub_10004B9BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10002CFFC();
  v39 = v5;
  sub_10002D870();
  sub_10004B9CC();
  v37 = sub_10004B9AC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v38 = sub_10002414C();
  v39 = v7;
  sub_1000220D4();
  sub_10004B9CC();
  v36 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100026A90();
  v39 = v8;
  sub_100024A20();
  sub_10004B9CC();
  v35 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_1000084D8();
  v39 = v9;
  sub_10000388C();
  sub_10004B9CC();
  v34 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100008C40();
  v39 = v10;
  sub_100005F10();
  sub_10004B9CC();
  v33 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100013F80();
  v39 = v11;
  sub_100011E34();
  sub_10004B9CC();
  v32 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100041B04();
  v39 = v12;
  sub_10003EEA8();
  sub_10004B9CC();
  v31 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100031D04();
  v39 = v13;
  sub_100030CF8();
  sub_10004B9CC();
  v14 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_10001A9C8();
  v39 = v15;
  sub_100014858();
  sub_10004B9CC();
  v16 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_10001B350();
  v39 = v17;
  sub_100016AE4();
  sub_10004B9CC();
  v18 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_100020D4C();
  v39 = v19;
  sub_10001FB24();
  sub_10004B9CC();
  v20 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_10004883C();
  v39 = v21;
  sub_10003EEFC();
  sub_10004B9CC();
  v22 = sub_10004B9AC();
  v6(v4, v0);
  v38 = sub_1000390D4();
  sub_100037E04();
  sub_10004B9CC();
  v23 = sub_10004B9AC();
  v6(v4, v0);
  sub_100001E64(&qword_10006DA30, &qword_100056AC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100056A50;
  v25 = v36;
  *(v24 + 32) = v37;
  *(v24 + 40) = v25;
  v26 = v34;
  *(v24 + 48) = v35;
  *(v24 + 56) = v26;
  v27 = v32;
  *(v24 + 64) = v33;
  *(v24 + 72) = v27;
  *(v24 + 80) = v31;
  *(v24 + 88) = v14;
  *(v24 + 96) = v16;
  *(v24 + 104) = v18;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 128) = v23;
  v28 = sub_10004B99C();

  return v28;
}

unint64_t sub_10003EEA8()
{
  result = qword_10006DA20;
  if (!qword_10006DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA20);
  }

  return result;
}

unint64_t sub_10003EEFC()
{
  result = qword_10006DA28;
  if (!qword_10006DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA28);
  }

  return result;
}

uint64_t sub_10003EF50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004B85C();
  *a2 = v5;
  return result;
}

uint64_t sub_10003EF8C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_10004B86C();
}

unint64_t sub_10003EFC4()
{
  result = qword_10006DA60;
  if (!qword_10006DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DA60);
  }

  return result;
}

uint64_t sub_10003F020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004B85C();
  *a2 = v5;
  return result;
}

uint64_t sub_10003F05C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;

  return sub_10004B86C();
}

unint64_t sub_10003F0A0()
{
  result = qword_10006DAE0;
  if (!qword_10006DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DAE0);
  }

  return result;
}

uint64_t sub_10003F0F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004B85C();
  *a2 = v5;
  return result;
}

uint64_t sub_10003F130(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10004B86C();
}

uint64_t sub_10003F168@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004B85C();
  *a2 = v5;
  return result;
}

uint64_t sub_10003F1A4(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10004B86C();
}

uint64_t sub_10003F258@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_10004BDCC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001E64(&qword_10006C460, &unk_1000501F0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_100001E64(&qword_10006C468, &unk_100050090);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_100001E64(&qword_10006C470, &unk_100050200);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = sub_100001E64(&qword_10006C478, &qword_1000500A0);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v36 = &v35 - v21;
  swift_getKeyPath();
  sub_100001E64(&qword_10006C480, &unk_1000500D0);
  sub_100004D6C();
  sub_1000020DC(&qword_10006C490, &qword_10006C480, &unk_1000500D0);
  sub_10004C44C();
  sub_10004BFDC();
  v22 = sub_1000020DC(&qword_10006C498, &qword_10006C460, &unk_1000501F0);
  sub_10004C05C();

  (*(v35 + 8))(v7, v4);
  v23 = v37;
  sub_10004BDBC();
  v24 = sub_10004BDAC();
  v26 = v25;
  (*(v44 + 8))(v23, v45);
  v47 = v24;
  v48 = v26;
  v51 = v4;
  v52 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100002214();
  v29 = v38;
  sub_10004C01C();

  (*(v39 + 8))(v12, v29);
  v47 = v29;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v36;
  v32 = v40;
  sub_10004C08C();
  (*(v41 + 8))(v17, v32);
  v47 = v32;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_10004C02C();
  return (*(v43 + 8))(v31, v33);
}

uint64_t sub_10003F830()
{
  v0 = sub_10004BDCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v5 = sub_10004BDAC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_100002214();
  return sub_10004C2EC();
}

uint64_t sub_10003F960@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004BDCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BDBC();
  v7 = sub_10004BDAC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_100002214();
  result = sub_10004C1AC();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10003FA9C()
{
  sub_100002214();

  return sub_10004C2EC();
}

uint64_t sub_10003FB54()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004BC5C();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C54C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004BC7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004BBDC();
  sub_1000090DC(v15, qword_10006E5B0);
  sub_1000090A4(v15, qword_10006E5B0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_10003FE40()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E5C8);
  sub_1000090A4(v0, qword_10006E5C8);
  return sub_10004BC4C();
}

uint64_t sub_10003FEA4()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E5E0);
  v1 = sub_1000090A4(v0, qword_10006E5E0);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10003FF64()
{
  result = swift_getKeyPath();
  qword_10006E5F8 = result;
  return result;
}

uint64_t sub_10003FF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006DC88, &qword_100057568) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006DC90, &qword_100057570);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004016C, 0, 0);
}

uint64_t sub_10004016C()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100041210();
  *v3 = v0;
  v3[1] = sub_10004023C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000426FC, 0, &type metadata for LandscapeTabBarEntity, v4);
}

uint64_t sub_10004023C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100040338, 0, 0);
}

uint64_t sub_100040338()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C398 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E5F8;
  *(v0 + 176) = qword_10006E5F8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006DC70, &qword_10006DC78, &qword_100057540);
  *v6 = v0;
  v6[1] = sub_100040498;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100040498()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100004690;
  }

  else
  {
    v5 = sub_1000405EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000405EC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10004B85C();
  v0[6] = v0[5];
  v8 = sub_10004BBAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10004BBEC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10003EEA8();
  sub_100041424();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100040858()
{
  v0 = sub_100001E64(&qword_10006DC98, &qword_100057578);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C398 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100041424();
  sub_1000020DC(&qword_10006DCA0, &qword_10006DC98, &qword_100057578);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000409CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_100040A40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004B84C();
  return sub_10000950C;
}

uint64_t sub_100040AB4()
{
  if (qword_10006C398 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100040B14()
{
  result = qword_10006DBB0;
  if (!qword_10006DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBB0);
  }

  return result;
}

unint64_t sub_100040B6C()
{
  result = qword_10006DBB8;
  if (!qword_10006DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBB8);
  }

  return result;
}

uint64_t sub_100040C7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C390 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E5E0);

  return sub_100009450(v3, a1);
}

uint64_t sub_100040D00(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10003FF8C(a1, v5, v4);
}

uint64_t sub_100040DAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041B04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100040DF4()
{
  result = qword_10006DBC0;
  if (!qword_10006DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBC0);
  }

  return result;
}

uint64_t sub_100040E6C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:SFShowTabBarDefaultsKey];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100040F1C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_100041F68(v3);
}

uint64_t sub_100040FB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_1000420A8();
}

unint64_t sub_100041058()
{
  result = qword_10006DBC8;
  if (!qword_10006DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBC8);
  }

  return result;
}

uint64_t sub_1000410AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000415B8();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100041160()
{
  result = qword_10006DBD0;
  if (!qword_10006DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBD0);
  }

  return result;
}

unint64_t sub_1000411B8()
{
  result = qword_10006DBD8;
  if (!qword_10006DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBD8);
  }

  return result;
}

unint64_t sub_100041210()
{
  result = qword_10006DBE0;
  if (!qword_10006DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBE0);
  }

  return result;
}

uint64_t sub_100041264(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000415B8();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100041318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000415B8();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000413CC()
{
  result = qword_10006DBE8;
  if (!qword_10006DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBE8);
  }

  return result;
}

unint64_t sub_100041424()
{
  result = qword_10006DBF0;
  if (!qword_10006DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBF0);
  }

  return result;
}

unint64_t sub_10004147C()
{
  result = qword_10006DBF8;
  if (!qword_10006DBF8)
  {
    sub_100001FB0(&qword_10006DC00, qword_100057150);
    sub_100041424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DBF8);
  }

  return result;
}

uint64_t sub_100041500(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100041058();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000415B8()
{
  result = qword_10006DC08;
  if (!qword_10006DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC08);
  }

  return result;
}

uint64_t sub_10004160C()
{
  v0 = qword_10006DB90;

  return v0;
}

unint64_t sub_100041648()
{
  result = qword_10006DC10;
  if (!qword_10006DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC10);
  }

  return result;
}

unint64_t sub_1000416A0()
{
  result = qword_10006DC18;
  if (!qword_10006DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC18);
  }

  return result;
}

unint64_t sub_1000416F8()
{
  result = qword_10006DC20;
  if (!qword_10006DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC20);
  }

  return result;
}

unint64_t sub_100041750()
{
  result = qword_10006DC28;
  if (!qword_10006DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC28);
  }

  return result;
}

unint64_t sub_1000417A8()
{
  result = qword_10006DC30;
  if (!qword_10006DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC30);
  }

  return result;
}

unint64_t sub_100041800()
{
  result = qword_10006DC38;
  if (!qword_10006DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC38);
  }

  return result;
}

uint64_t sub_100041854@<X0>(uint64_t *a1@<X8>)
{
  sub_10000BBB8();
  result = sub_10004B80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100041910(uint64_t a1)
{
  v2 = sub_100041210();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100041960()
{
  result = qword_10006DC50;
  if (!qword_10006DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC50);
  }

  return result;
}

uint64_t sub_1000419B4(uint64_t a1)
{
  v2 = sub_10000BBB8();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100041A00(uint64_t a1)
{
  v2 = sub_100041800();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100041B04()
{
  v0 = sub_100001E64(&qword_10006C6A8, &unk_100051FB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10004BAFC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10004BC7C();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100001E64(&qword_10006DC80, &unk_100057550);
  sub_10004BC4C();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10004B7DC();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100041210();
  v28 = sub_10004B88C();
  sub_100001E64(&qword_10006C6C8, &qword_100051FD0);
  sub_10004BC4C();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10004C5DC();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10004B89C();
  return v28;
}

uint64_t sub_100041F88()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = SFShowTabBarDefaultsKey;
  [v3 setBool:v1 forKey:SFShowTabBarDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000420A8()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004BD8C() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_10004C54C() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_10004BC7C() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000421E8, 0, 0);
}

uint64_t sub_1000421E8()
{
  v0[8] = objc_opt_self();
  v0[9] = sub_10004C60C();
  v0[10] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_100042290, v2, v1);
}

uint64_t sub_100042290()
{
  v1 = v0[10];
  v2 = v0[8];

  v0[11] = [v2 currentDevice];

  return _swift_task_switch(sub_100042318, 0, 0);
}

uint64_t sub_100042318()
{
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_10004C5FC();
  v3 = sub_10004C5EC();

  return _swift_task_switch(sub_1000423A4, v3, v2);
}

uint64_t sub_1000423A4()
{
  v2 = v0[11];
  v1 = v0[12];

  v0[13] = [v2 userInterfaceIdiom];

  return _swift_task_switch(sub_100042424, 0, 0);
}

uint64_t sub_100042424()
{
  if (v0[13] == 1)
  {
    v1 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v3 = v0[5];
    sub_10004B6BC();
    sub_100042698();
    swift_allocError();
    sub_10004B6AC();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    sub_100001E64(&qword_10006DBA8, qword_100056EB0);
    sub_10004C4FC();
    sub_10004BD7C();
    (*(v12 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
    sub_10004BC9C();
    sub_1000020DC(&qword_10006DC70, &qword_10006DC78, &qword_100057540);
    v13 = sub_10004BC3C();

    v14 = v0[1];

    return v14(v13);
  }
}

unint64_t sub_100042698()
{
  result = qword_10006D058;
  if (!qword_10006D058)
  {
    sub_10004B6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D058);
  }

  return result;
}

uint64_t sub_100042728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BookmarkItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100042854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BookmarkItem();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ReadingListWidgetCell()
{
  result = qword_10006DD00;
  if (!qword_10006DD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000429B8()
{
  type metadata accessor for BookmarkItem();
  if (v0 <= 0x3F)
  {
    sub_100042A54();
    if (v1 <= 0x3F)
    {
      sub_100042AAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100042A54()
{
  if (!qword_10006CA80)
  {
    sub_10004BE0C();
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006CA80);
    }
  }
}

void sub_100042AAC()
{
  if (!qword_10006DD10)
  {
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006DD10);
    }
  }
}

uint64_t sub_100042B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10004BFBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100001E64(&qword_10006DD60, &qword_100057628);
  return sub_100042B70(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_100042B70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = sub_100001E64(&qword_10006DD68, &qword_100057630);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v55 = (&v51 - v5);
  v6 = sub_100001E64(&qword_10006DD70, &qword_100057638);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v51 - v8;
  v52 = sub_10004C28C();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v52);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100001E64(&qword_10006DD78, &qword_100057640);
  v14 = *(*(v53 - 8) + 64);
  v15 = __chkstk_darwin(v53);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v57 = sub_100001E64(&qword_10006DD80, &qword_100057648);
  v19 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = (&v51 - v20);
  v21 = sub_100001E64(&qword_10006DD88, &unk_100057650);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v60 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v62 = &v51 - v25;
  v61 = sub_10004BFFC();
  LOBYTE(v68) = 1;
  sub_1000433E4(a1, &v65);
  v77 = v66[5];
  v78 = v66[6];
  v79 = v66[7];
  v73 = v66[1];
  v74 = v66[2];
  v75 = v66[3];
  v76 = v66[4];
  v71 = v65;
  v72 = v66[0];
  v81[6] = v66[5];
  v81[7] = v66[6];
  v81[8] = v66[7];
  v81[2] = v66[1];
  v81[3] = v66[2];
  v81[4] = v66[3];
  v81[5] = v66[4];
  v80 = v66[8];
  v82 = v66[8];
  v81[0] = v65;
  v81[1] = v66[0];
  sub_10000A490(&v71, &v63, &qword_10006CB58, &qword_100051650);
  sub_1000022E8(v81, &qword_10006CB58, &qword_100051650);
  *(&v67[6] + 7) = v77;
  *(&v67[7] + 7) = v78;
  *(&v67[8] + 7) = v79;
  *(&v67[2] + 7) = v73;
  *(&v67[3] + 7) = v74;
  *(&v67[4] + 7) = v75;
  *(&v67[5] + 7) = v76;
  *(v67 + 7) = v71;
  *(&v67[9] + 7) = v80;
  *(&v67[1] + 7) = v72;
  v26 = a1;
  v58 = v68;
  if (*(a1 + *(type metadata accessor for BookmarkItem() + 28)))
  {
    v27 = v52;
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v52);

    sub_10004C2CC();
    (*(v10 + 8))(v13, v27);
    sub_10004C3AC();
    v28 = sub_10004C3BC();
    (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
    sub_10004C2BC();

    sub_1000022E8(v9, &qword_10006DD70, &qword_100057638);
    sub_10004C33C();
    sub_10004BE5C();
    v29 = &v18[*(sub_100001E64(&qword_10006DDA0, &qword_100057670) + 36)];
    v30 = v69;
    *v29 = v68;
    *(v29 + 1) = v30;
    *(v29 + 2) = v70;
    *&v18[*(sub_100001E64(&qword_10006DDA8, &qword_100057678) + 36)] = 256;
    v31 = sub_10004C33C();
    v33 = v32;
    v34 = &v18[*(v53 + 36)];
    sub_1000436E4(v26, v34);
    v35 = (v34 + *(sub_100001E64(&qword_10006DDB0, &qword_100057680) + 36));
    *v35 = v31;
    v35[1] = v33;
    v36 = v54;
    sub_10000A490(v18, v54, &qword_10006DD78, &qword_100057640);
    v37 = v55;
    *v55 = 0;
    *(v37 + 8) = 1;
    v38 = sub_100001E64(&qword_10006DDB8, &qword_100057688);
    sub_10000A490(v36, v37 + *(v38 + 48), &qword_10006DD78, &qword_100057640);
    sub_1000022E8(v36, &qword_10006DD78, &qword_100057640);
    sub_10000A490(v37, v56, &qword_10006DD68, &qword_100057630);
    swift_storeEnumTagMultiPayload();
    sub_1000020DC(&qword_10006DD90, &qword_10006DD68, &qword_100057630);
    sub_10004C09C();

    sub_1000022E8(v37, &qword_10006DD68, &qword_100057630);
    sub_1000022E8(v18, &qword_10006DD78, &qword_100057640);
  }

  else
  {
    v39 = v56;
    *v56 = 0;
    *(v39 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1000020DC(&qword_10006DD90, &qword_10006DD68, &qword_100057630);
    sub_10004C09C();
  }

  v40 = v62;
  v41 = v60;
  sub_10000A490(v62, v60, &qword_10006DD88, &unk_100057650);
  v42 = v61;
  v63 = v61;
  v43 = v58;
  LOBYTE(v64[0]) = v58;
  *(&v64[7] + 1) = v67[7];
  *(&v64[6] + 1) = v67[6];
  *(&v64[8] + 1) = v67[8];
  *(&v64[8] + 12) = *(&v67[8] + 11);
  *(&v64[2] + 1) = v67[2];
  *(&v64[3] + 1) = v67[3];
  *(&v64[4] + 1) = v67[4];
  *(&v64[5] + 1) = v67[5];
  *(v64 + 1) = v67[0];
  *(&v64[1] + 1) = v67[1];
  v44 = v64[8];
  a2[8] = v64[7];
  a2[9] = v44;
  *(a2 + 156) = *(&v64[8] + 12);
  v45 = v64[4];
  a2[4] = v64[3];
  a2[5] = v45;
  v46 = v64[6];
  a2[6] = v64[5];
  a2[7] = v46;
  v47 = v64[0];
  *a2 = v63;
  a2[1] = v47;
  v48 = v64[2];
  a2[2] = v64[1];
  a2[3] = v48;
  v49 = sub_100001E64(&qword_10006DD98, &unk_100057660);
  sub_10000A490(v41, a2 + *(v49 + 48), &qword_10006DD88, &unk_100057650);
  sub_10000A490(&v63, &v65, &qword_10006CB60, &qword_100051658);
  sub_1000022E8(v40, &qword_10006DD88, &unk_100057650);
  sub_1000022E8(v41, &qword_10006DD88, &unk_100057650);
  *(&v66[6] + 1) = v67[6];
  *(&v66[7] + 1) = v67[7];
  *(&v66[8] + 1) = v67[8];
  *(&v66[8] + 12) = *(&v67[8] + 11);
  *(&v66[2] + 1) = v67[2];
  *(&v66[3] + 1) = v67[3];
  *(&v66[4] + 1) = v67[4];
  *(&v66[5] + 1) = v67[5];
  *(v66 + 1) = v67[0];
  v65 = v42;
  LOBYTE(v66[0]) = v43;
  *(&v66[1] + 1) = v67[1];
  return sub_1000022E8(&v65, &qword_10006CB60, &qword_100051658);
}

uint64_t sub_1000433E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v61 = *a1;
  v62 = v4;
  sub_100002214();

  v5 = sub_10004C1AC();
  v37 = v6;
  v38 = v5;
  v8 = v7;
  v36 = v9;
  KeyPath = swift_getKeyPath();
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  sub_10004C13C();
  v34 = sub_10004C14C();
  v33 = swift_getKeyPath();
  v10 = v8 & 1;
  LOBYTE(v61) = v8 & 1;
  LOBYTE(v57) = 0;
  v11 = a1[3];
  v61 = a1[2];
  v62 = v11;

  v12 = sub_10004C1AC();
  v31 = v13;
  v32 = v12;
  v15 = v14;
  v30 = v16;
  v29 = swift_getKeyPath();
  if (qword_10006C1D8 != -1)
  {
    swift_once();
  }

  v17 = qword_10006E1C8;
  v18 = swift_getKeyPath();
  v19 = v15 & 1;

  v20 = sub_10004C0CC();
  *&v52 = v38;
  *(&v52 + 1) = v37;
  LOBYTE(v53) = v10;
  *(&v53 + 1) = v36;
  *&v54 = KeyPath;
  *(&v54 + 1) = 2;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = v33;
  v56 = v34;
  *v51 = v34;
  v49 = v54;
  v50 = v55;
  v47 = v52;
  v48 = v53;
  *&v57 = v32;
  *(&v57 + 1) = v31;
  LOBYTE(v58) = v19;
  *(&v58 + 1) = v30;
  *&v59 = v29;
  *(&v59 + 1) = 1;
  v60[0] = 0;
  *&v60[8] = v18;
  *&v60[16] = v17;
  *&v60[24] = v20;
  *&v51[8] = v57;
  *&v51[68] = *&v60[12];
  *&v51[56] = *v60;
  *&v51[40] = v59;
  *&v51[24] = v58;
  v21 = v53;
  *a2 = v52;
  *(a2 + 16) = v21;
  v22 = v49;
  v23 = v50;
  v24 = *&v51[16];
  *(a2 + 64) = *v51;
  *(a2 + 80) = v24;
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  v25 = *&v51[32];
  v26 = *&v51[48];
  v27 = *&v51[64];
  *(a2 + 144) = *&v51[80];
  *(a2 + 112) = v26;
  *(a2 + 128) = v27;
  *(a2 + 96) = v25;
  v61 = v32;
  v62 = v31;
  v63 = v19;
  v64 = v30;
  v65 = v29;
  v66 = 1;
  v67 = 0;
  v68 = v18;
  v69 = v17;
  v70 = v20;
  sub_10000A490(&v52, v39, &qword_10006CB68, &unk_1000516C0);
  sub_10000A490(&v57, v39, &qword_10006CB70, &qword_100057700);
  sub_1000022E8(&v61, &qword_10006CB70, &qword_100057700);
  v39[0] = v38;
  v39[1] = v37;
  v40 = v10;
  v41 = v36;
  v42 = KeyPath;
  v43 = 2;
  v44 = 0;
  v45 = v33;
  v46 = v34;
  return sub_1000022E8(v39, &qword_10006CB68, &unk_1000516C0);
}

uint64_t sub_1000436E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_10004BE0C();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = sub_10004C35C();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004BF8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006C1C8 != -1)
  {
    swift_once();
  }

  v45 = qword_10006E1B8;
  v19 = type metadata accessor for ReadingListWidgetCell();
  v20 = a1 + *(v19 + 24);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v50 = *v20;
  }

  else
  {

    sub_10004C61C();
    v43 = v14;
    v22 = sub_10004C0FC();
    v44 = v10;
    v23 = v8;
    v24 = a1;
    v25 = v22;
    sub_10004BDDC();

    a1 = v24;
    v8 = v23;
    v10 = v44;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v21, 0);
    (*(v15 + 8))(v18, v43);
  }

  sub_10004BE2C();
  v26 = v51;
  v27 = v53;
  v44 = v54;
  v28 = v55;
  v29 = v45;

  v30 = sub_10004C33C();
  v32 = v31;
  v33 = a1 + *(v19 + 20);
  sub_100011568(v10);
  v34 = v52;
  v35 = v49;
  (*(v4 + 104))(v8, enum case for ColorScheme.dark(_:), v49);
  LOBYTE(v33) = sub_10004BDFC();
  v36 = *(v4 + 8);
  v36(v8, v35);
  v36(v10, v35);
  v38 = v46;
  v37 = v47;
  v39 = &enum case for BlendMode.lighten(_:);
  if ((v33 & 1) == 0)
  {
    v39 = &enum case for BlendMode.darken(_:);
  }

  v40 = v48;
  (*(v47 + 104))(v46, *v39, v48);
  v41 = sub_100001E64(&qword_10006DDC0, &qword_100057690);
  result = (*(v37 + 32))(a2 + *(v41 + 36), v38, v40);
  *a2 = v26 * 0.5;
  *(a2 + 8) = v26;
  *(a2 + 16) = v34;
  *(a2 + 24) = v27;
  *(a2 + 32) = v44;
  *(a2 + 40) = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = 256;
  *(a2 + 64) = v30;
  *(a2 + 72) = v32;
  return result;
}

double sub_100043B48@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BD0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for BookmarkItem();
  (*(v4 + 16))(v7, v1 + *(v8 + 24), v3);
  v13 = v1;
  sub_100001E64(&qword_10006DD48, &qword_100057618);
  sub_1000020DC(&qword_10006DD50, &qword_10006DD48, &qword_100057618);
  sub_10004C17C();
  sub_10004C33C();
  sub_10004BE5C();
  v9 = (a1 + *(sub_100001E64(&qword_10006DD58, &qword_100057620) + 36));
  v10 = v15;
  *v9 = v14;
  v9[1] = v10;
  result = *&v16;
  v9[2] = v16;
  return result;
}

unint64_t sub_100043D04()
{
  result = qword_10006DDC8;
  if (!qword_10006DDC8)
  {
    sub_100001FB0(&qword_10006DD58, &qword_100057620);
    sub_1000020DC(&qword_10006DDD0, &qword_10006DDD8, &qword_100057708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDC8);
  }

  return result;
}

uint64_t sub_100043DC8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100043DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100043E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100043E94@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10004BF8C();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10004BFEC();
  v50 = 0;
  v10 = sub_1000442E4();
  v12 = v11;
  v14 = v13;
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  sub_10004C13C();
  sub_10004C14C();
  v15 = sub_10004C18C();
  v42 = v16;
  v43 = v15;
  v18 = v17;
  v41 = v19;

  sub_100002348(v10, v12, v14 & 1);

  if (a2)
  {
    v20 = a1;
  }

  else
  {

    sub_10004C61C();
    v21 = sub_10004C0FC();
    sub_10004BDDC();

    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(a1, 0);
    (*(v44 + 8))(v9, v45);
    v20 = v48;
  }

  KeyPath = swift_getKeyPath();
  v23 = v18 & 1;
  v49 = v18 & 1;
  v24 = v50;
  v25 = sub_10004C0BC();
  result = sub_10004C10C();
  v27 = result;
  if ((a2 & 1) == 0)
  {

    sub_10004C61C();
    v31 = sub_10004C0FC();
    HIDWORD(v40) = v23;
    v32 = v27;
    v33 = v24;
    v34 = v25;
    v35 = KeyPath;
    v36 = v31;
    sub_10004BDDC();

    KeyPath = v35;
    v25 = v34;
    v24 = v33;
    v27 = v32;
    LOBYTE(v23) = BYTE4(v40);
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(a1, 0);
    result = (*(v44 + 8))(v9, v45);
    if (v47)
    {
      goto LABEL_8;
    }

LABEL_10:
    result = sub_10004BDEC();
    v29 = 0;
    *(&v28 + 1) = v37;
    *(&v30 + 1) = v38;
    goto LABEL_11;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v28 = 0uLL;
  v29 = 1;
  v30 = 0uLL;
LABEL_11:
  *a3 = v46;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = v24;
  v39 = v42;
  *(a3 + 24) = v43;
  *(a3 + 32) = v39;
  *(a3 + 40) = v23;
  *(a3 + 48) = v41;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v20 & 1;
  *(a3 + 68) = v25;
  *(a3 + 72) = v27;
  *(a3 + 80) = v28;
  *(a3 + 96) = v30;
  *(a3 + 112) = v29;
  return result;
}

Swift::Int sub_100044204()
{
  v1 = *v0;
  sub_10004C74C();
  sub_10004C75C(v1);
  return sub_10004C76C();
}

Swift::Int sub_100044278()
{
  v1 = *v0;
  sub_10004C74C();
  sub_10004C75C(v1);
  return sub_10004C76C();
}

uint64_t sub_1000442E4()
{
  v0 = sub_10004BDCC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v4 + 8);
  sub_10004BDBC();
  v6 = sub_10004BDAC();
  v8 = v7;
  (*v5)(v3, v0);
  v10[2] = v6;
  v10[3] = v8;
  sub_100002214();
  return sub_10004C1AC();
}

uint64_t sub_100044430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004BEEC();
  *a1 = result;
  return result;
}

unint64_t sub_100044498()
{
  result = qword_10006DDE0;
  if (!qword_10006DDE0)
  {
    sub_100001FB0(&qword_10006DDE8, "2U");
    sub_100044524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDE0);
  }

  return result;
}

unint64_t sub_100044524()
{
  result = qword_10006DDF0;
  if (!qword_10006DDF0)
  {
    sub_100001FB0(&qword_10006DDF8, "jU");
    sub_1000020DC(&qword_10006DE00, &qword_10006DE08, qword_100057840);
    sub_1000020DC(&qword_10006CBA8, &qword_10006CBB0, &qword_1000516F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDF0);
  }

  return result;
}

unint64_t sub_10004460C()
{
  result = qword_10006DE10;
  if (!qword_10006DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DE10);
  }

  return result;
}

uint64_t sub_100044660(uint64_t a1, int a2)
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

uint64_t sub_1000446A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000446F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10004BD6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004476C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_10004C72C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_10004C72C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for BookmarkItem();
  v7 = v6[6];
  if ((sub_10004BCCC() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[7];
  v9 = *(a2 + v8);
  if (!*(a1 + v8))
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(a2 + v8);

  v11 = sub_10004C29C();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v12 = v6[8];

  return static UUID.== infix(_:_:)(a1 + v12, a2 + v12);
}

uint64_t sub_100044874(int64_t a1)
{
  v2 = sub_100001E64(&qword_10006CAC8, &qword_100051540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for BookmarkItem();
  v23 = *(v6 - 1);
  v7 = *(v23 + 64);
  result = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
LABEL_14:
    __break(1u);
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
    result = sub_100038510(0, a1, 0);
    v11 = 0;
    v12 = v24;
    v22[0] = 0x800000010004FC60;
    v22[1] = "Update Landscape Tab Bar";
    v13 = 1;
    v14 = a1;
    while (!v11)
    {
      sub_10004BCFC();
      v15 = sub_10004BD0C();
      v16 = *(v15 - 8);
      result = (*(v16 + 48))(v5, 1, v15);
      if (result == 1)
      {
        goto LABEL_16;
      }

      v17 = sub_10004C27C();
      v18 = &v10[v6[8]];
      sub_10004BD5C();
      *v10 = 0x1000000000000049;
      *(v10 + 1) = v22[0];
      *(v10 + 2) = 0x6F632E656C707061;
      *(v10 + 3) = 0xE90000000000006DLL;
      (*(v16 + 32))(&v10[v6[6]], v5, v15);
      *&v10[v6[7]] = v17;
      v24 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_100038510(v19 > 1, v20 + 1, 1);
        v12 = v24;
      }

      v12[2] = v20 + 1;
      result = sub_10000CB38(v10, v12 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20);
      v11 = v13 == a1;
      if (v13 == a1)
      {
        v13 = 0;
      }

      else if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }

      if (!--v14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BookmarkItem()
{
  result = qword_10006DE70;
  if (!qword_10006DE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004BD0C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004BD6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100044D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004BD0C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004BD6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100044E24()
{
  sub_10004BD0C();
  if (v0 <= 0x3F)
  {
    sub_100044ED0();
    if (v1 <= 0x3F)
    {
      sub_10004BD6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044ED0()
{
  if (!qword_10006DE80)
  {
    v0 = sub_10004C62C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006DE80);
    }
  }
}

unint64_t sub_100044F24()
{
  result = qword_10006DEC0;
  if (!qword_10006DEC0)
  {
    sub_10004BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DEC0);
  }

  return result;
}

uint64_t sub_100044F7C()
{
  type metadata accessor for ReadingListWidgetWebBookmarksDataSource();
  v1[0] = 0xD000000000000011;
  v1[1] = 0x800000010004FCB0;
  v1[2] = swift_initStaticObject();
  v2 = v1;
  sub_100044FF8(&v2);
}

uint64_t sub_100044FF8(uint64_t **a1)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];

  sub_100001E64(&qword_10006DED0, &qword_1000579E8);
  return sub_10004BE3C();
}

void sub_100045064()
{
  v0 = [objc_opt_self() safari_browserDefaults];
  [v0 safari_registerMobileSafariDefaults];
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100045100();
  sub_10004BE4C();
  return 0;
}

unint64_t sub_100045100()
{
  result = qword_10006DEC8;
  if (!qword_10006DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DEC8);
  }

  return result;
}

unint64_t sub_100045184()
{
  result = qword_10006DED8;
  if (!qword_10006DED8)
  {
    sub_100001FB0(&qword_10006DEE0, &unk_1000579F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DED8);
  }

  return result;
}

uint64_t sub_100045214@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10002909C(KeyPath, a1);
}

uint64_t sub_100045264()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004BC5C();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C54C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004BC7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004BBDC();
  sub_1000090DC(v15, qword_10006E600);
  sub_1000090A4(v15, qword_10006E600);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_100045550()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E618);
  sub_1000090A4(v0, qword_10006E618);
  return sub_10004BC4C();
}

uint64_t sub_1000455B4()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E630);
  v1 = sub_1000090A4(v0, qword_10006E630);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100045674()
{
  result = swift_getKeyPath();
  qword_10006E648 = result;
  return result;
}

uint64_t sub_10004569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006E040, &qword_100058438) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006E048, &qword_100058440);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004587C, 0, 0);
}

uint64_t sub_10004587C()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100047A50();
  *v3 = v0;
  v3[1] = sub_10004594C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100049240, 0, &type metadata for TabLayoutEntity, v4);
}

uint64_t sub_10004594C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100045A48, 0, 0);
}

uint64_t sub_100045A48()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E648;
  *(v0 + 176) = qword_10006E648;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006E020, &qword_10006E028, &unk_100058410);
  *v6 = v0;
  v6[1] = sub_100045BA8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for TabLayoutConfigurationType, v7);
}

uint64_t sub_100045BA8()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100004690;
  }

  else
  {
    v5 = sub_100045CFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100045CFC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10004B85C();
  v0[6] = v0[5];
  v8 = sub_10004BBAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10004BBEC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10003EEFC();
  sub_100047B00();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100045F68()
{
  v0 = sub_100001E64(&qword_10006E050, &qword_100058448);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100047B00();
  sub_1000020DC(&qword_10006E058, &qword_10006E050, &qword_100058448);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000460DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_100046150(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004B84C();
  return sub_10000950C;
}

uint64_t sub_1000461C4()
{
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100046258@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E630);

  return sub_100009450(v3, a1);
}

uint64_t sub_1000462DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10004569C(a1, v5, v4);
}

uint64_t sub_100046388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004883C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000463EC()
{
  v1 = *(v0 + 16);
  v2 = SFEnableStandaloneTabBarKey;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 safari_browserDefaults];
  v6 = [v5 BOOLForKey:v4];

  *v1 = v6 ^ 1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000464DC()
{
  v1 = SFEnableStandaloneTabBarKey;
  if (*(v0 + 16) == 1)
  {
    v2 = sub_10004C72C();
  }

  else
  {
    v2 = 1;
  }

  v3 = v1;

  v4 = objc_opt_self();
  v5 = [v4 safari_browserDefaults];
  [v5 setBool:v2 & 1 forKey:v3];

  v6 = [objc_opt_self() defaultCenter];
  v7 = [v4 safari_notificationNameForUserDefaultsKey:v3];

  [v6 postNotificationName:v7 object:0 userInfo:0 deliverImmediately:1];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100046680(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100048C3C();
}

uint64_t sub_100046724(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100047BE0();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_1000467D4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100047BE0();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100046888(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100047BE0();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100046938(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100047948();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000469EC()
{
  v0 = qword_10006DEE8;

  return v0;
}

uint64_t sub_100046A24@<X0>(uint64_t *a1@<X8>)
{
  sub_100029FF8();
  result = sub_10004B80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046A9C(uint64_t a1)
{
  v2 = sub_100047A50();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100046AE8(uint64_t a1)
{
  v2 = sub_100029FF8();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100046B34(uint64_t a1)
{
  v2 = sub_100047D9C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100046B80()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004BC5C();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C54C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004BC7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004BBDC();
  sub_1000090DC(v15, static TabLayoutConfigurationType.typeDisplayRepresentation);
  sub_1000090A4(v15, static TabLayoutConfigurationType.typeDisplayRepresentation);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t TabLayoutConfigurationType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10006C3C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();

  return sub_1000090A4(v0, static TabLayoutConfigurationType.typeDisplayRepresentation);
}

uint64_t static TabLayoutConfigurationType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C3C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static TabLayoutConfigurationType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TabLayoutConfigurationType.id.getter(char a1)
{
  if (a1)
  {
    return 0x54746361706D6F63;
  }

  else
  {
    return 0x6574617261706573;
  }
}

uint64_t sub_100046FB8()
{
  v0 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v30 - v2;
  v3 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v30 - v5;
  v36 = sub_10004BC5C();
  v46 = *(v36 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v36);
  v43 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C54C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004BC7C();
  v31 = v12;
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  sub_100001E64(&qword_10006E060, &qword_100058478);
  v14 = sub_100001E64(&qword_10006D0E0, &unk_100058480);
  v44 = v14;
  v15 = *(v14 - 8);
  v39 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v40 = v17;
  *(v17 + 16) = xmmword_100053280;
  v18 = v17 + v16;
  v38 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_10004C4FC();
  v34 = "Use Contact Info in Autofill";
  sub_10004BD7C();
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v46 + 104);
  v46 += 104;
  v37 = v19;
  v19(v43);
  sub_10004BC9C();
  v20 = *(v45 + 56);
  v45 += 56;
  v32 = v20;
  v21 = v41;
  v20(v41, 1, 1, v12);
  v22 = sub_10004BA7C();
  v23 = *(*(v22 - 8) + 56);
  v24 = v42;
  v23(v42, 1, 1, v22);
  v33 = v18;
  v25 = v21;
  v26 = v24;
  sub_10004BAAC();
  v27 = (v18 + v39);
  v39 = *(v44 + 48);
  *v27 = 1;
  sub_10004C4FC();
  sub_10004BD7C();
  v37(v43, v35, v36);
  sub_10004BC9C();
  v32(v25, 1, 1, v31);
  v23(v26, 1, 1, v22);
  sub_10004BAAC();
  v28 = sub_10001BE38(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static TabLayoutConfigurationType.caseDisplayRepresentations = v28;
  return result;
}

uint64_t *TabLayoutConfigurationType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  return &static TabLayoutConfigurationType.caseDisplayRepresentations;
}

uint64_t static TabLayoutConfigurationType.caseDisplayRepresentations.getter()
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TabLayoutConfigurationType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TabLayoutConfigurationType.caseDisplayRepresentations = a1;
}

uint64_t (*static TabLayoutConfigurationType.caseDisplayRepresentations.modify())()
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

SafariWidgetExtension::TabLayoutConfigurationType_optional __swiftcall TabLayoutConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10006A190;
  v6._object = object;
  v3 = sub_10004C71C(v2, v6);

  if (v3 == 1)
  {
    v4.value = SafariWidgetExtension_TabLayoutConfigurationType_compactTabBar;
  }

  else
  {
    v4.value = SafariWidgetExtension_TabLayoutConfigurationType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000477DC()
{
  result = qword_10006DF08;
  if (!qword_10006DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF08);
  }

  return result;
}

unint64_t sub_100047834()
{
  result = qword_10006DF10;
  if (!qword_10006DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF10);
  }

  return result;
}

unint64_t sub_1000478EC()
{
  result = qword_10006DF18;
  if (!qword_10006DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF18);
  }

  return result;
}

unint64_t sub_100047948()
{
  result = qword_10006DF20;
  if (!qword_10006DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF20);
  }

  return result;
}

unint64_t sub_1000479A0()
{
  result = qword_10006DF28;
  if (!qword_10006DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF28);
  }

  return result;
}

unint64_t sub_1000479F8()
{
  result = qword_10006DF30;
  if (!qword_10006DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF30);
  }

  return result;
}

unint64_t sub_100047A50()
{
  result = qword_10006DF38;
  if (!qword_10006DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF38);
  }

  return result;
}

unint64_t sub_100047AA8()
{
  result = qword_10006DF40;
  if (!qword_10006DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF40);
  }

  return result;
}

unint64_t sub_100047B00()
{
  result = qword_10006DF48;
  if (!qword_10006DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF48);
  }

  return result;
}

unint64_t sub_100047B58()
{
  result = qword_10006DF50;
  if (!qword_10006DF50)
  {
    sub_100001FB0(&qword_10006DF58, qword_100057D30);
    sub_100047B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF50);
  }

  return result;
}

unint64_t sub_100047BE0()
{
  result = qword_10006DF60;
  if (!qword_10006DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF60);
  }

  return result;
}

unint64_t sub_100047C38()
{
  result = qword_10006DF68;
  if (!qword_10006DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF68);
  }

  return result;
}

unint64_t sub_100047C90()
{
  result = qword_10006DF70;
  if (!qword_10006DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF70);
  }

  return result;
}

unint64_t sub_100047CE8()
{
  result = qword_10006DF78;
  if (!qword_10006DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF78);
  }

  return result;
}

unint64_t sub_100047D44()
{
  result = qword_10006DF80;
  if (!qword_10006DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF80);
  }

  return result;
}

unint64_t sub_100047D9C()
{
  result = qword_10006DF88;
  if (!qword_10006DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF88);
  }

  return result;
}

unint64_t sub_100047E38()
{
  result = qword_10006DFA0;
  if (!qword_10006DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFA0);
  }

  return result;
}

uint64_t sub_100047E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x54746361706D6F63;
  }

  else
  {
    v4 = 0x6574617261706573;
  }

  if (v3)
  {
    v5 = 0xEE00726142626154;
  }

  else
  {
    v5 = 0xED00007261426261;
  }

  if (*a2)
  {
    v6 = 0x54746361706D6F63;
  }

  else
  {
    v6 = 0x6574617261706573;
  }

  if (*a2)
  {
    v7 = 0xED00007261426261;
  }

  else
  {
    v7 = 0xEE00726142626154;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10004C72C();
  }

  return v9 & 1;
}

uint64_t sub_100047F4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10006A190;
  v8._object = v3;
  v5 = sub_10004C71C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100047FAC(uint64_t *a1@<X8>)
{
  v2 = 0x6574617261706573;
  if (*v1)
  {
    v2 = 0x54746361706D6F63;
  }

  v3 = 0xEE00726142626154;
  if (*v1)
  {
    v3 = 0xED00007261426261;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100048008()
{
  result = qword_10006DFA8;
  if (!qword_10006DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFA8);
  }

  return result;
}

Swift::Int sub_10004805C()
{
  v1 = *v0;
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_1000480F8()
{
  *v0;
  sub_10004C59C();
}

Swift::Int sub_100048180()
{
  v1 = *v0;
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

unint64_t sub_10004821C()
{
  result = qword_10006DFB0;
  if (!qword_10006DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFB0);
  }

  return result;
}

unint64_t sub_100048274()
{
  result = qword_10006DFB8;
  if (!qword_10006DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFB8);
  }

  return result;
}

unint64_t sub_1000482CC()
{
  result = qword_10006DFC0;
  if (!qword_10006DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFC0);
  }

  return result;
}

unint64_t sub_100048324()
{
  result = qword_10006DFC8;
  if (!qword_10006DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFC8);
  }

  return result;
}

unint64_t sub_10004837C()
{
  result = qword_10006DFD0;
  if (!qword_10006DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFD0);
  }

  return result;
}

unint64_t sub_1000483D8()
{
  result = qword_10006DFD8;
  if (!qword_10006DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFD8);
  }

  return result;
}

uint64_t sub_100048464@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000090A4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100048580(uint64_t a1)
{
  v2 = sub_100029F50();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000485D0()
{
  result = qword_10006DFE0;
  if (!qword_10006DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFE0);
  }

  return result;
}

unint64_t sub_100048628()
{
  result = qword_10006DFE8;
  if (!qword_10006DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFE8);
  }

  return result;
}

unint64_t sub_100048680()
{
  result = qword_10006DFF0;
  if (!qword_10006DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFF0);
  }

  return result;
}

uint64_t sub_1000486D4(uint64_t a1)
{
  v2 = sub_1000483D8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004883C()
{
  v31 = sub_10004BAFC();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10004BC7C();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006E030, &qword_100058420);
  sub_10004BC4C();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_10004B7DC();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100047A50();
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006E038, &qword_100058428);
  sub_10004BC4C();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100029F50();
  sub_10004B87C();
  return v26;
}

uint64_t sub_100048C3C()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004BD8C() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_10004C54C() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_10004BC7C() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100048D7C, 0, 0);
}

uint64_t sub_100048D7C()
{
  v0[8] = objc_opt_self();
  v0[9] = sub_10004C60C();
  v0[10] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_100048E24, v2, v1);
}

uint64_t sub_100048E24()
{
  v1 = v0[10];
  v2 = v0[8];

  v0[11] = [v2 currentDevice];

  return _swift_task_switch(sub_100048EAC, 0, 0);
}

uint64_t sub_100048EAC()
{
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_10004C5FC();
  v3 = sub_10004C5EC();

  return _swift_task_switch(sub_100048F38, v3, v2);
}

uint64_t sub_100048F38()
{
  v2 = v0[11];
  v1 = v0[12];

  v0[13] = [v2 userInterfaceIdiom];

  return _swift_task_switch(sub_100048FB8, 0, 0);
}

uint64_t sub_100048FB8()
{
  if (v0[13])
  {
    v1 = v0[6];
    v2 = v0[7];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];
    sub_100001E64(&qword_10006DF00, qword_100057A90);
    sub_10004C4FC();
    sub_10004BD7C();
    (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
    sub_10004BC9C();
    sub_1000020DC(&qword_10006E020, &qword_10006E028, &unk_100058410);
    sub_100029F50();
    v7 = sub_10004BC1C();

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[6];
    v11 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    sub_10004B6BC();
    sub_100042698();
    swift_allocError();
    sub_10004B6AC();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10004927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001E64(&qword_10006CBC0, &unk_100051700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000493CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001E64(&qword_10006CBC0, &unk_100051700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeReadingListWidgetView()
{
  result = qword_10006E0C0;
  if (!qword_10006E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049554()
{
  sub_100049620(319, &qword_10006CC30, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100049620(319, &unk_10006CA88, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100049620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BE1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100049690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BF8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001E64(&qword_10006CB28, &qword_100051620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LargeReadingListWidgetView();
  sub_10000A490(v1 + *(v12 + 24), v11, &qword_10006CB28, &qword_100051620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004C39C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004C61C();
    v16 = sub_10004C0FC();
    sub_10004BDDC();

    sub_10004BF7C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100049898@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001E64(&qword_10006E118, &qword_100058510);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  *v10 = sub_10004BFEC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100001E64(&qword_10006E120, &qword_100058518);
  sub_100049A58(a1, &v10[*(v11 + 44)]);
  if (*(*(a1 + 1) + 16))
  {
    KeyPath = 0;
    v13 = 255;
  }

  else
  {
    v14 = *a1;
    KeyPath = swift_getKeyPath();
    if (v14)
    {
      v13 = 0;
    }

    else
    {
      v13 = 256;
    }
  }

  sub_10000A490(v10, v8, &qword_10006E118, &qword_100058510);
  sub_10000A490(v8, a2, &qword_10006E118, &qword_100058510);
  v15 = a2 + *(sub_100001E64(&qword_10006E128, &qword_100058520) + 48);
  sub_100010524(KeyPath, v13);
  sub_100010548(KeyPath, v13);
  *v15 = KeyPath;
  *(v15 + 8) = v13;
  sub_1000022E8(v10, &qword_10006E118, &qword_100058510);
  sub_100010548(KeyPath, v13);
  return sub_1000022E8(v8, &qword_10006E118, &qword_100058510);
}

uint64_t sub_100049A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_10004C3CC();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = __chkstk_darwin(v3);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v68 - v7;
  v8 = sub_100001E64(&qword_10006E130, &qword_100058550);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v8);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v68 - v12;
  v71 = type metadata accessor for LargeReadingListWidgetView();
  v74 = *(v71 - 8);
  v13 = *(v74 + 64);
  __chkstk_darwin(v71);
  v14 = sub_100001E64(&qword_10006E138, &qword_100058558);
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  v16 = __chkstk_darwin(v14);
  v86 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v68 - v18;
  v19 = sub_10004C39C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  v27 = sub_100001E64(&qword_10006E140, &qword_100058560);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v85 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v68 - v31;
  *v32 = sub_10004BFAC();
  *(v32 + 1) = 0;
  v32[16] = 1;
  sub_100049690(v26);
  sub_10004C38C();
  v33 = sub_10004C37C();
  v34 = *(v20 + 8);
  v34(v24, v19);
  v34(v26, v19);
  if (v33)
  {
    v35 = sub_10004C0AC();
  }

  else
  {
    v35 = sub_10004C0CC();
  }

  v36 = v35;
  v37 = *(sub_100001E64(&qword_10006E148, &qword_100058568) + 44);
  LODWORD(v89) = v36;
  sub_100001E64(&qword_10006CB90, &unk_100058570);
  sub_1000107DC();
  v84 = v32;
  sub_10004C1BC();
  v89 = *(a1 + 8);
  v38 = v89;
  sub_10004B49C(a1, &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeReadingListWidgetView);
  v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v73 = v13;
  v40 = swift_allocObject();
  v70 = v39;
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(v74, v40 + v39, type metadata accessor for LargeReadingListWidgetView);
  v69 = v38;

  sub_100001E64(&qword_10006E150, &qword_100058580);
  sub_10004BD6C();
  sub_100001E64(&qword_10006E158, &unk_100058588);
  sub_1000020DC(&qword_10006E160, &qword_10006E150, &qword_100058580);
  sub_1000020DC(&qword_10006E168, &qword_10006E158, &unk_100058588);
  sub_10004B118();
  sub_10004C30C();
  v41 = a1 + *(v71 + 20);
  v42 = v72;
  sub_100011790(v72);
  v44 = v75;
  v43 = v76;
  v45 = v42;
  v46 = v77;
  (*(v76 + 32))(v75, v45, v77);
  v47 = (*(v43 + 88))(v44, v46);
  if (v47 == enum case for WidgetFamily.systemSmall(_:))
  {
    v48 = 1;
    v49 = v74;
  }

  else
  {
    v49 = v74;
    if (v47 == enum case for WidgetFamily.systemMedium(_:))
    {
      v48 = 2;
    }

    else if (v47 == enum case for WidgetFamily.systemLarge(_:))
    {
      v48 = 5;
    }

    else
    {
      (*(v43 + 8))(v44, v46);
      v48 = 1;
    }
  }

  v50 = (v48 - *(v69 + 16)) & ~((v48 - *(v69 + 16)) >> 63);
  v89 = 0;
  v90 = v50;
  swift_getKeyPath();
  sub_10004B49C(a1, v49, type metadata accessor for LargeReadingListWidgetView);
  v51 = v70;
  v52 = swift_allocObject();
  sub_10004B564(v49, v52 + v51, type metadata accessor for LargeReadingListWidgetView);
  sub_100001E64(&qword_10006E178, &qword_1000585B0);
  sub_100001E64(&qword_10006E180, &qword_1000585B8);
  sub_10004B388();
  sub_1000020DC(&qword_10006E198, &qword_10006E180, &qword_1000585B8);
  v53 = v87;
  sub_10004C2FC();
  v54 = v85;
  sub_10000A490(v84, v85, &qword_10006E140, &qword_100058560);
  v56 = v78;
  v55 = v79;
  v77 = *(v78 + 16);
  v57 = v86;
  v77(v86, v88, v79);
  v58 = v80;
  v59 = v81;
  v76 = *(v81 + 16);
  v60 = v53;
  v61 = v82;
  (v76)(v80, v60, v82);
  v62 = v83;
  sub_10000A490(v54, v83, &qword_10006E140, &qword_100058560);
  v63 = sub_100001E64(&qword_10006E1A0, &qword_1000585C0);
  v64 = v62 + v63[12];
  *v64 = 0;
  *(v64 + 8) = 1;
  v77(v62 + v63[16], v57, v55);
  (v76)(v62 + v63[20], v58, v61);
  v65 = *(v59 + 8);
  v65(v87, v61);
  v66 = *(v56 + 8);
  v66(v88, v55);
  sub_1000022E8(v84, &qword_10006E140, &qword_100058560);
  v65(v58, v61);
  v66(v86, v55);
  return sub_1000022E8(v85, &qword_10006E140, &qword_100058560);
}

uint64_t sub_10004A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReadingListWidgetCell();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_10004B49C(a1, &v17 - v10, type metadata accessor for BookmarkItem);
  v12 = *(v5 + 28);
  *&v11[v12] = swift_getKeyPath();
  sub_100001E64(&qword_10006CC88, &qword_100051830);
  swift_storeEnumTagMultiPayload();
  v13 = &v11[*(v5 + 32)];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = sub_10004A5A8(a1);
  sub_10004B49C(v11, v9, type metadata accessor for ReadingListWidgetCell);
  sub_10004B49C(v9, a2, type metadata accessor for ReadingListWidgetCell);
  v15 = a2 + *(sub_100001E64(&qword_10006E1A8, &qword_100058630) + 48);
  *v15 = 0;
  *(v15 + 8) = (v14 & 1) == 0;
  *(v15 + 9) = v14 & 1;
  sub_10004B504(v11, type metadata accessor for ReadingListWidgetCell);
  return sub_10004B504(v9, type metadata accessor for ReadingListWidgetCell);
}

uint64_t sub_10004A5A8(uint64_t a1)
{
  v3 = sub_10004C3CC();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = __chkstk_darwin(v3);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v45 - v7;
  v8 = type metadata accessor for BookmarkItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v51 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100001E64(&qword_10006E1B0, &qword_100058638);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_100001E64(&qword_10006C940, &qword_1000515C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v52 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v22 = &v45 - v21;
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  sub_10004B49C(a1, &v45 - v23, type metadata accessor for BookmarkItem);
  v25 = *(v9 + 56);
  v26 = 1;
  v25(v24, 0, 1, v8);
  v47 = v1;
  v27 = *(v1 + 8);
  v28 = *(v27 + 16);
  if (v28)
  {
    sub_10004B49C(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v28 - 1), v22, type metadata accessor for BookmarkItem);
    v26 = 0;
  }

  v25(v22, v26, 1, v8);
  v29 = *(v12 + 48);
  sub_10000A490(v24, v15, &qword_10006C940, &qword_1000515C0);
  sub_10000A490(v22, &v15[v29], &qword_10006C940, &qword_1000515C0);
  v30 = *(v9 + 48);
  if (v30(v15, 1, v8) == 1)
  {
    sub_1000022E8(v22, &qword_10006C940, &qword_1000515C0);
    sub_1000022E8(v24, &qword_10006C940, &qword_1000515C0);
    if (v30(&v15[v29], 1, v8) == 1)
    {
      sub_1000022E8(v15, &qword_10006C940, &qword_1000515C0);
      goto LABEL_10;
    }

LABEL_8:
    sub_1000022E8(v15, &qword_10006E1B0, &qword_100058638);
    return 0;
  }

  v31 = v52;
  sub_10000A490(v15, v52, &qword_10006C940, &qword_1000515C0);
  if (v30(&v15[v29], 1, v8) == 1)
  {
    sub_1000022E8(v22, &qword_10006C940, &qword_1000515C0);
    sub_1000022E8(v24, &qword_10006C940, &qword_1000515C0);
    sub_10004B504(v31, type metadata accessor for BookmarkItem);
    goto LABEL_8;
  }

  v33 = &v15[v29];
  v34 = v51;
  sub_10004B564(v33, v51, type metadata accessor for BookmarkItem);
  v35 = sub_10004476C(v31, v34);
  sub_10004B504(v34, type metadata accessor for BookmarkItem);
  sub_1000022E8(v22, &qword_10006C940, &qword_1000515C0);
  sub_1000022E8(v24, &qword_10006C940, &qword_1000515C0);
  sub_10004B504(v31, type metadata accessor for BookmarkItem);
  sub_1000022E8(v15, &qword_10006C940, &qword_1000515C0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v36 = *(v27 + 16);
  if (!v36)
  {
    return 1;
  }

  v37 = type metadata accessor for LargeReadingListWidgetView();
  v38 = v46;
  v39 = v47 + *(v37 + 20);
  sub_100011790(v46);
  v41 = v48;
  v40 = v49;
  v42 = v50;
  (*(v49 + 32))(v48, v38, v50);
  v43 = (*(v40 + 88))(v41, v42);
  if (v43 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v43 == enum case for WidgetFamily.systemMedium(_:))
    {
      v44 = 2;
      return v36 >= v44;
    }

    if (v43 == enum case for WidgetFamily.systemLarge(_:))
    {
      v44 = 5;
      return v36 >= v44;
    }

    (*(v40 + 8))(v41, v42);
  }

  v44 = 1;
  return v36 >= v44;
}

BOOL sub_10004AB98@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_10004C23C();
  sub_10004C33C();
  sub_10004BE5C();
  result = sub_10004AC70(v3);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = !result;
  *(a2 + 65) = result;
  return result;
}

BOOL sub_10004AC70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004C3CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = v1 + *(type metadata accessor for LargeReadingListWidgetView() + 20);
  sub_100011790(v11);
  (*(v5 + 32))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v13 == enum case for WidgetFamily.systemMedium(_:))
    {
      v14 = 2;
      return ((v14 - *(*(v2 + 8) + 16)) & ~((v14 - *(*(v2 + 8) + 16)) >> 63)) - 1 == a1;
    }

    if (v13 == enum case for WidgetFamily.systemLarge(_:))
    {
      v14 = 5;
      return ((v14 - *(*(v2 + 8) + 16)) & ~((v14 - *(*(v2 + 8) + 16)) >> 63)) - 1 == a1;
    }

    (*(v5 + 8))(v9, v4);
  }

  v14 = 1;
  return ((v14 - *(*(v2 + 8) + 16)) & ~((v14 - *(*(v2 + 8) + 16)) >> 63)) - 1 == a1;
}

uint64_t sub_10004AE24@<X0>(void *a1@<X8>)
{
  if (qword_10006C1D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10006E1C0;
}

uint64_t sub_10004AE94()
{
  v1 = sub_10004C0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006E100, &qword_100058500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v13 - v8);
  *v9 = sub_10004C33C();
  v9[1] = v10;
  v11 = sub_100001E64(&qword_10006E108, &qword_100058508);
  sub_100049898(v0, v9 + *(v11 + 44));
  sub_10004C0DC();
  sub_10004C33C();
  sub_1000020DC(&qword_10006E110, &qword_10006E100, &qword_100058500);
  sub_10004C21C();
  (*(v2 + 8))(v5, v1);
  return sub_1000022E8(v9, &qword_10006E100, &qword_100058500);
}

uint64_t sub_10004B098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for LargeReadingListWidgetView() - 8) + 80);

  return sub_10004A3E8(a1, a2);
}

unint64_t sub_10004B118()
{
  result = qword_10006E170;
  if (!qword_10006E170)
  {
    type metadata accessor for BookmarkItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E170);
  }

  return result;
}

uint64_t sub_10004B170()
{
  v1 = type metadata accessor for LargeReadingListWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v1 + 20);
  sub_100001E64(&qword_10006C898, &unk_100051280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10004C3CC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v1 + 24);
  sub_100001E64(&qword_10006CB28, &qword_100051620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004C39C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_10004B308@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for LargeReadingListWidgetView() - 8) + 80);

  return sub_10004AB98(a1, a2);
}

unint64_t sub_10004B388()
{
  result = qword_10006E188;
  if (!qword_10006E188)
  {
    sub_100001FB0(&qword_10006E178, &qword_1000585B0);
    sub_10004B414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E188);
  }

  return result;
}

unint64_t sub_10004B414()
{
  result = qword_10006E190;
  if (!qword_10006E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E190);
  }

  return result;
}

uint64_t sub_10004B470@<X0>(void *a1@<X8>)
{
  result = sub_10004BECC();
  *a1 = v3;
  return result;
}

uint64_t sub_10004B49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004B564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B5CC()
{
  sub_100001FB0(&qword_10006E100, &qword_100058500);
  sub_1000020DC(&qword_10006E110, &qword_10006E100, &qword_100058500);
  return swift_getOpaqueTypeConformance2();
}