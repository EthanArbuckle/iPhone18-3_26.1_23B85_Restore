uint64_t sub_100001670()
{
  v0 = sub_1000056B4();
  sub_1000016F0(v0, qword_10000C300);
  sub_100001754(v0, qword_10000C300);
  return sub_1000056A4();
}

uint64_t *sub_1000016F0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001754(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000178C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = (*(*(sub_1000025BC(&qword_10000C118, &qword_100005CC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v51 = &v41 - v2;
  v3 = sub_100005644();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  __chkstk_darwin();
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100005624();
  v44 = *(v47 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000025BC(&qword_10000C120, &qword_100005CD0);
  v42 = *(v9 - 8);
  v10 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = sub_1000025BC(&qword_10000C128, &qword_100005CD8);
  v43 = *(v13 - 8);
  v14 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v41 - v15;
  v17 = sub_1000025BC(&qword_10000C130, &qword_100005CE0);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v21 = &v41 - v20;
  v22 = sub_1000025BC(&qword_10000C138, &qword_100005CE8);
  v23 = *(v22 - 8);
  v48 = v22;
  v49 = v23;
  v24 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v41 = &v41 - v25;
  sub_1000025BC(&qword_10000C140, &qword_100005CF0);
  sub_100002604(&qword_10000C148, &qword_10000C140, &qword_100005CF0);
  sub_1000057A4();
  sub_100005614();
  v26 = sub_100002604(&qword_10000C150, &qword_10000C120, &qword_100005CD0);
  sub_100005714();
  v27 = *(v44 + 8);
  v28 = v47;
  v27(v8, v47);
  (*(v42 + 8))(v12, v9);
  sub_100005614();
  v55 = v9;
  v56 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  v27(v8, v28);
  (*(v43 + 8))(v16, v13);
  v55 = v13;
  v56 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v41;
  v32 = v45;
  sub_100005724();
  v33 = v21;
  v34 = v32;
  (*(v46 + 8))(v33, v32);
  v35 = sub_100005654();
  (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
  v36 = objc_allocWithZone(sub_100005684());
  v37 = sub_100005674();
  v38 = v50;
  sub_100005664();

  sub_100005634();
  (*(v52 + 8))(v38, v53);
  v55 = v34;
  v56 = v30;
  swift_getOpaqueTypeConformance2();
  v39 = v48;
  sub_100005734();
  return (*(v49 + 8))(v31, v39);
}

uint64_t sub_100001E28()
{
  sub_1000025BC(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8);
  sub_1000024A0();

  return sub_100005794();
}

uint64_t sub_100001F38@<X0>(uint64_t a1@<X8>)
{
  sub_1000056E4();
  result = sub_100005744();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_100002040()
{
  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000056B4();
  sub_100001754(v1, qword_10000C300);
  v2 = sub_100005694();
  v3 = sub_1000057F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#TypeToSiriControlWidget - perform", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v6 activateFromSource:55];
  [v6 invalidate];
  sub_1000055C4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000021BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return LaunchTypeToSiriIntent.perform()(a1);
}

uint64_t sub_100002254()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002348(uint64_t a1)
{
  v2 = sub_1000024A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002388()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_1000023E0()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_1000024A0()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100002548(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000025BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002604(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002548(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000264C()
{
  sub_100002548(&qword_10000C138, &qword_100005CE8);
  sub_100002548(&qword_10000C130, &qword_100005CE0);
  sub_100002548(&qword_10000C128, &qword_100005CD8);
  sub_100002548(&qword_10000C120, &qword_100005CD0);
  sub_100002604(&qword_10000C150, &qword_10000C120, &qword_100005CD0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000027A4()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

unint64_t sub_1000027FC()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_1000028BC()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

uint64_t sub_100002910@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = (*(*(sub_1000025BC(&qword_10000C118, &qword_100005CC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v46 = &v36 - v2;
  v3 = sub_100005644();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin();
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100005624();
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin();
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000025BC(&qword_10000C180, &qword_100005E90);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = sub_1000025BC(&qword_10000C188, &qword_100005E98);
  v36 = *(v13 - 8);
  v14 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v36 - v15;
  v43 = sub_1000025BC(&qword_10000C190, &qword_100005EA0);
  v37 = *(v43 - 8);
  v17 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v19 = &v36 - v18;
  v44 = sub_1000025BC(&qword_10000C198, &qword_100005EA8);
  v42 = *(v44 - 8);
  v20 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v40 = &v36 - v21;
  sub_1000025BC(&qword_10000C1A0, &unk_100005EB0);
  sub_100002604(&qword_10000C1A8, &qword_10000C1A0, &unk_100005EB0);
  sub_1000057A4();
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v22 = v41;
  sub_100001754(v41, qword_10000C318);
  v23 = sub_100002604(&qword_10000C1B0, &qword_10000C180, &qword_100005E90);
  sub_100005714();
  (*(v9 + 8))(v12, v8);
  if (qword_10000C0C0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000055F4();
  sub_100001754(v24, qword_10000C330);
  v25 = v38;
  sub_1000055E4();
  v50 = v8;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  (*(v39 + 8))(v25, v22);
  (*(v36 + 8))(v16, v13);
  v50 = v13;
  v51 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v40;
  v29 = v43;
  sub_100005724();
  (*(v37 + 8))(v19, v29);
  v30 = sub_100005654();
  (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
  v31 = objc_allocWithZone(sub_100005684());
  v32 = sub_100005674();
  v33 = v45;
  sub_100005664();

  sub_100005634();
  (*(v47 + 8))(v33, v48);
  v50 = v29;
  v51 = v27;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  sub_100005734();
  return (*(v42 + 8))(v28, v34);
}

uint64_t sub_10000301C()
{
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  sub_1000025BC(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8);
  sub_1000028BC();

  return sub_100005794();
}

uint64_t sub_100003158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005624();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100001754(v2, qword_10000C318);
  (*(v3 + 16))(v6, v7, v2);
  result = sub_100005754();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1000032A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_1000032D8()
{
  v0 = sub_100005624();
  sub_1000016F0(v0, qword_10000C318);
  sub_100001754(v0, qword_10000C318);
  return sub_100005614();
}

uint64_t sub_100003344()
{
  v0 = sub_1000055F4();
  sub_1000016F0(v0, qword_10000C330);
  sub_100001754(v0, qword_10000C330);
  return sub_1000055D4();
}

uint64_t sub_1000033A8()
{
  v0 = sub_100005604();
  sub_1000016F0(v0, qword_10000C348);
  v1 = sub_100001754(v0, qword_10000C348);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100003430(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000057E4();
  *(v1 + 24) = sub_1000057D4();
  v3 = sub_1000057C4();

  return _swift_task_switch(sub_1000034C8, v3, v2);
}

uint64_t sub_1000034C8()
{
  v1 = v0[3];

  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056B4();
  sub_100001754(v2, qword_10000C300);
  v3 = sub_100005694();
  v4 = sub_1000057F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#TalkToSiriControlWidget - perform", v5, 2u);
  }

  v6 = v0[2];

  v7 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v7 activateFromSource:58];
  [v7 invalidate];
  sub_1000055C4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000036A4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100001754(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000374C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return sub_100003430(a1);
}

uint64_t sub_1000037E4(uint64_t a1)
{
  v2 = sub_1000028BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000385C()
{
  sub_100002548(&qword_10000C198, &qword_100005EA8);
  sub_100002548(&qword_10000C190, &qword_100005EA0);
  sub_100002548(&qword_10000C188, &qword_100005E98);
  sub_100002548(&qword_10000C180, &qword_100005E90);
  sub_100002604(&qword_10000C1B0, &qword_10000C180, &qword_100005E90);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000039B0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v52 = sub_1000025BC(&qword_10000C1C0, &qword_100005F18);
  v1 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v51 = &v39 - v2;
  v50 = sub_1000025BC(&qword_10000C1C8, &qword_100005F20);
  v54 = *(v50 - 8);
  v3 = v54[8];
  v4 = (__chkstk_darwin)();
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v39 - v6;
  v7 = sub_1000025BC(&qword_10000C1D0, &qword_100005F28);
  v40 = v7;
  v45 = *(v7 - 8);
  v8 = v45;
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v7);
  v55 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_1000025BC(&qword_10000C1D8, &qword_100005F30);
  v48 = *(v14 - 8);
  v15 = v48;
  v16 = *(v48 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  sub_100003EEC();
  v47 = v21;
  sub_1000056F4();
  sub_100003F40();
  v44 = v13;
  sub_1000056F4();
  sub_100003F94();
  v22 = v56;
  sub_1000056F4();
  v42 = *(v15 + 16);
  v43 = v14;
  v23 = v19;
  v46 = v19;
  v42(v19, v21, v14);
  v41 = *(v8 + 16);
  v24 = v55;
  v41(v55, v13, v7);
  v25 = v54[2];
  v26 = v49;
  v27 = v22;
  v28 = v50;
  v25(v49, v27, v50);
  v29 = v51;
  v42(v51, v23, v14);
  v30 = v52;
  v31 = v24;
  v32 = v40;
  v41(&v29[*(v52 + 48)], v31, v40);
  v25(&v29[*(v30 + 64)], v26, v28);
  sub_1000056C4();
  v33 = v54[1];
  v33(v56, v28);
  v34 = *(v45 + 8);
  v35 = v32;
  v34(v44, v32);
  v36 = *(v48 + 8);
  v37 = v43;
  v36(v47, v43);
  v33(v26, v28);
  v34(v55, v35);
  return (v36)(v46, v37);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003E6C();
  sub_1000056D4();
  return 0;
}

unint64_t sub_100003E6C()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

unint64_t sub_100003EEC()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100003F40()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

unint64_t sub_100003F94()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    sub_100002548(&qword_10000C200, &qword_100005F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100004054()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

unint64_t sub_1000040AC()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

unint64_t sub_10000416C()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

uint64_t sub_1000041C0()
{
  v0 = sub_1000025BC(&qword_10000C118, &qword_100005CC8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_100005644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005654();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = objc_allocWithZone(sub_100005684());
  v11 = sub_100005674();
  sub_100005664();

  v12 = sub_100005634();
  (*(v5 + 8))(v8, v4);
  v13 = AFVisualIntelligenceCameraRestricted();
  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056B4();
  sub_100001754(v14, qword_10000C300);
  v15 = sub_100005694();
  v16 = sub_1000057F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109632;
    *(v17 + 4) = v12 & (v13 ^ 1) & 1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = v12;
    *(v17 + 14) = 1024;
    *(v17 + 16) = v13 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "#VisualIntelligenceControlWidget - IsVisualIntelligenceEnabled: %{BOOL}d - isGMSEligible: %{BOOL}d - isVisualIntelligenceRestricted: %{BOOL}d", v17, 0x14u);
  }

  return v12 & (v13 ^ 1) & 1;
}

uint64_t sub_100004434@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100005624();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  __chkstk_darwin(v1);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000025BC(&qword_10000C220, &qword_1000060D0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_1000025BC(&qword_10000C228, &qword_1000060D8);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v31 = sub_1000025BC(&qword_10000C230, &qword_1000060E0);
  v29 = *(v31 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v31);
  v14 = &v27 - v13;
  v32 = sub_1000025BC(&qword_10000C238, &qword_1000060E8);
  v30 = *(v32 - 8);
  v15 = *(v30 + 64);
  __chkstk_darwin(v32);
  v17 = &v27 - v16;
  sub_1000025BC(&qword_10000C240, &unk_1000060F0);
  sub_100002604(&qword_10000C248, &qword_10000C240, &unk_1000060F0);
  sub_1000057A4();
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0D8 != -1)
  {
    swift_once();
  }

  v18 = v35;
  sub_100001754(v35, qword_10000C360);
  v19 = sub_100002604(&qword_10000C250, &qword_10000C220, &qword_1000060D0);
  sub_100005714();
  (*(v27 + 8))(v7, v4);
  if (qword_10000C0E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000055F4();
  sub_100001754(v20, qword_10000C378);
  v21 = v33;
  sub_1000055E4();
  v37 = v4;
  v38 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  (*(v34 + 8))(v21, v18);
  (*(v28 + 8))(v11, v8);
  v37 = v8;
  v38 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_100005724();
  (*(v29 + 8))(v14, v24);
  sub_1000041C0();
  v37 = v24;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100005734();
  return (*(v30 + 8))(v17, v25);
}

uint64_t sub_1000049E4()
{
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  sub_1000025BC(&qword_10000C258, &unk_100006100);
  sub_100002548(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8);
  sub_100005378();
  swift_getOpaqueTypeConformance2();
  sub_10000416C();
  return sub_100005794();
}

uint64_t sub_100004B20()
{
  v0 = sub_100005624();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000025BC(&qword_10000C158, qword_100005CF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - v5;
  sub_100005784();
  sub_100005614();
  v9[0] = sub_1000057B4();
  v9[1] = v7;
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8);
  sub_100005378();
  sub_100005764();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100004D18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005624();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0D8 != -1)
  {
    swift_once();
  }

  v7 = sub_100001754(v2, qword_10000C360);
  (*(v3 + 16))(v6, v7, v2);
  result = sub_100005754();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_100004E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_100004EA4()
{
  v0 = sub_100005624();
  sub_1000016F0(v0, qword_10000C360);
  sub_100001754(v0, qword_10000C360);
  return sub_100005614();
}

uint64_t sub_100004F08()
{
  v0 = sub_1000055F4();
  sub_1000016F0(v0, qword_10000C378);
  sub_100001754(v0, qword_10000C378);
  return sub_1000055D4();
}

uint64_t sub_100004F6C()
{
  v0 = sub_100005604();
  sub_1000016F0(v0, qword_10000C390);
  v1 = sub_100001754(v0, qword_10000C390);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100004FF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000057E4();
  *(v1 + 24) = sub_1000057D4();
  v3 = sub_1000057C4();

  return _swift_task_switch(sub_10000508C, v3, v2);
}

uint64_t sub_10000508C()
{
  v1 = v0[3];

  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056B4();
  sub_100001754(v2, qword_10000C300);
  v3 = sub_100005694();
  v4 = sub_1000057F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#VisualIntelligenceControlWidget - perform", v5, 2u);
  }

  v6 = v0[2];

  v7 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v7 activateFromSource:57];
  [v7 invalidate];
  sub_1000055C4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100005268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return sub_100004FF4(a1);
}

uint64_t sub_100005300(uint64_t a1)
{
  v2 = sub_10000416C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100005378()
{
  result = qword_10000C260;
  if (!qword_10000C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C260);
  }

  return result;
}

uint64_t sub_1000053CC()
{
  sub_100002548(&qword_10000C238, &qword_1000060E8);
  sub_100002548(&qword_10000C230, &qword_1000060E0);
  sub_100002548(&qword_10000C228, &qword_1000060D8);
  sub_100002548(&qword_10000C220, &qword_1000060D0);
  sub_100002604(&qword_10000C250, &qword_10000C220, &qword_1000060D0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}