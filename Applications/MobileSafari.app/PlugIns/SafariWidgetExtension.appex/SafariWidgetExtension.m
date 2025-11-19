uint64_t sub_1000017D0()
{
  result = sub_10004C25C();
  qword_10006E1B8 = result;
  return result;
}

uint64_t sub_10000180C()
{
  result = sub_10004C25C();
  qword_10006E1C0 = result;
  return result;
}

uint64_t sub_100001848()
{
  result = sub_10004C15C();
  qword_10006E1C8 = result;
  return result;
}

uint64_t sub_100001868()
{
  result = sub_10004C16C();
  qword_10006E1D0 = result;
  return result;
}

uint64_t sub_100001888()
{
  result = sub_10004C12C();
  qword_10006E1D8 = result;
  return result;
}

uint64_t sub_1000018D4()
{
  v0 = sub_100001E64(&qword_10006C3F8, &qword_10004FF78);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v17 - v2;
  v4 = sub_100001E64(&qword_10006C400, &qword_10004FF80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  *v3 = sub_10004BFAC();
  *(v3 + 1) = 0x4008000000000000;
  v3[16] = 0;
  v8 = sub_100001E64(&qword_10006C408, &qword_10004FF88);
  sub_100001AF4(&v3[*(v8 + 44)]);
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  sub_10004C13C();
  v9 = sub_10004C14C();
  KeyPath = swift_getKeyPath();
  v11 = &v3[*(v0 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_10004C34C();
  sub_10004BE8C();
  sub_100001EB4(v3, v7);
  v12 = &v7[*(v4 + 36)];
  v13 = v17[5];
  *(v12 + 4) = v17[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v17[6];
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v14;
  v15 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v15;
  sub_100001F24();
  sub_10004C1FC();
  return sub_1000022E8(v7, &qword_10006C400, &qword_10004FF80);
}

uint64_t sub_100001AF4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10004BDCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = sub_100001E64(&qword_10006C440, &qword_10004FFD0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v35 - v15);
  v17 = sub_10004C27C();
  v18 = (v16 + *(v10 + 44));
  v19 = *(sub_100001E64(&qword_10006C448, &qword_10004FFD8) + 28);
  v20 = enum case for Image.Scale.large(_:);
  v21 = sub_10004C2AC();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v16 = v17;
  sub_10004BDBC();
  sub_10004BDBC();
  v22 = sub_10004BD9C();
  v24 = v23;
  v25 = *(v2 + 8);
  v25(v6, v1);
  v25(v8, v1);
  v37 = v22;
  v38 = v24;
  sub_100002214();
  v26 = sub_10004C1AC();
  v28 = v27;
  LOBYTE(v8) = v29;
  v31 = v30;
  sub_100002268(v16, v14);
  v32 = v36;
  sub_100002268(v14, v36);
  v33 = v32 + *(sub_100001E64(&qword_10006C458, &unk_100050010) + 48);
  *v33 = v26;
  *(v33 + 8) = v28;
  *(v33 + 16) = v8 & 1;
  *(v33 + 24) = v31;
  sub_1000022D8(v26, v28, v8 & 1);

  sub_1000022E8(v16, &qword_10006C440, &qword_10004FFD0);
  sub_100002348(v26, v28, v8 & 1);

  return sub_1000022E8(v14, &qword_10006C440, &qword_10004FFD0);
}

uint64_t sub_100001E64(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E64(&qword_10006C3F8, &qword_10004FF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100001F24()
{
  result = qword_10006C410;
  if (!qword_10006C410)
  {
    sub_100001FB0(&qword_10006C400, &qword_10004FF80);
    sub_100001FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C410);
  }

  return result;
}

uint64_t sub_100001FB0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001FF8()
{
  result = qword_10006C418;
  if (!qword_10006C418)
  {
    sub_100001FB0(&qword_10006C3F8, &qword_10004FF78);
    sub_1000020DC(&qword_10006C420, &qword_10006C428, &qword_10004FFC0);
    sub_1000020DC(&qword_10006C430, &qword_10006C438, &qword_10004FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C418);
  }

  return result;
}

uint64_t sub_1000020DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001FB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002148(uint64_t a1)
{
  v2 = sub_10004C2AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004BEAC();
}

unint64_t sub_100002214()
{
  result = qword_10006C450;
  if (!qword_10006C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C450);
  }

  return result;
}

uint64_t sub_100002268(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E64(&qword_10006C440, &qword_10004FFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000022D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000022E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001E64(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100002358()
{
  sub_100001FB0(&qword_10006C400, &qword_10004FF80);
  sub_100001F24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000023E8@<X0>(uint64_t a1@<X8>)
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
  sub_100002C30();
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

uint64_t sub_1000029C0()
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

uint64_t sub_100002AF0@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_100002C30()
{
  result = qword_10006C488;
  if (!qword_10006C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C488);
  }

  return result;
}

uint64_t sub_100002C84()
{
  sub_100001FB0(&qword_10006C478, &qword_1000500A0);
  sub_100001FB0(&qword_10006C470, &unk_100050200);
  sub_100001FB0(&qword_10006C468, &unk_100050090);
  sub_100001FB0(&qword_10006C460, &unk_1000501F0);
  sub_1000020DC(&qword_10006C498, &qword_10006C460, &unk_1000501F0);
  swift_getOpaqueTypeConformance2();
  sub_100002214();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002E18@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100027BFC(KeyPath, a1);
}

uint64_t sub_100002E68()
{
  sub_100001FB0(&qword_10006C4A0, &unk_100051920);
  sub_100001FB0(&qword_10006C4A8, qword_100050170);
  sub_100001FB0(&qword_10006C4B0, &unk_100051930);
  sub_100002F60();
  sub_100002214();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100002F60()
{
  result = qword_10006C4B8;
  if (!qword_10006C4B8)
  {
    sub_100001FB0(&qword_10006C4B0, &unk_100051930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C4B8);
  }

  return result;
}

uint64_t sub_100002FF0@<X0>(uint64_t a1@<X8>)
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
  sub_100003834();
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

uint64_t sub_1000035C8()
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

uint64_t sub_1000036F8@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_100003834()
{
  result = qword_10006C4C0;
  if (!qword_10006C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C4C0);
  }

  return result;
}

unint64_t sub_10000388C()
{
  result = qword_10006C4E8;
  if (!qword_10006C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C4E8);
  }

  return result;
}

uint64_t sub_100003924()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v18 = &v16 - v2;
  v17 = sub_10004BC5C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BD8C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C54C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10004BBDC();
  sub_1000090DC(v14, qword_10006E1E0);
  sub_1000090A4(v14, qword_10006E1E0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_10004BC8C();
  (*(v12 + 56))(v18, 1, 1, v11);
  return sub_10004BBCC();
}

uint64_t sub_100003C38()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E1F8);
  sub_1000090A4(v0, qword_10006E1F8);
  return sub_10004BC4C();
}

uint64_t sub_100003C9C()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E210);
  v1 = sub_1000090A4(v0, qword_10006E210);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100003D5C()
{
  result = swift_getKeyPath();
  qword_10006E228 = result;
  return result;
}

uint64_t sub_100003DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006C730, &qword_100051000) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006C738, &qword_100051008);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100003FA8, 0, 0);
}

uint64_t sub_100003FA8()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000052F0();
  *v3 = v0;
  v3[1] = sub_100004078;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000094E8, 0, &type metadata for AutoFillCreditCardEntity, v4);
}

uint64_t sub_100004078()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100004174, 0, 0);
}

uint64_t sub_100004174()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C208 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E228;
  *(v0 + 176) = qword_10006E228;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006C720, &qword_10006C728, &qword_100050FF0);
  *v6 = v0;
  v6[1] = sub_1000042D4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000042D4()
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
    v5 = sub_100004428;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004428()
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
  sub_10000388C();
  sub_1000056C4();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100004690()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_100004758()
{
  v0 = sub_100001E64(&qword_10006C740, &qword_100051010);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C208 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_1000056C4();
  sub_1000020DC(&qword_10006C748, &qword_10006C740, &qword_100051010);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000048CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10004B85C();
  *a1 = v5;
  return result;
}

uint64_t (*sub_10000490C(uint64_t *a1))()
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

uint64_t sub_100004984@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10004B85C();
  *a1 = v5;
  return result;
}

uint64_t sub_1000049C0(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10004B86C();
}

uint64_t (*sub_1000049F8(uint64_t *a1))()
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

unint64_t sub_100004AB8()
{
  result = qword_10006C500;
  if (!qword_10006C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C500);
  }

  return result;
}

unint64_t sub_100004B10()
{
  result = qword_10006C508;
  if (!qword_10006C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C508);
  }

  return result;
}

uint64_t sub_100004C20(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100003DC8(a1, v5, v4);
}

uint64_t sub_100004CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000084D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100004D14()
{
  result = qword_10006C510;
  if (!qword_10006C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C510);
  }

  return result;
}

unint64_t sub_100004D6C()
{
  result = qword_10006C518;
  if (!qword_10006C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C518);
  }

  return result;
}

uint64_t sub_100004DE0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(WBUFormDataController) init];
  v3 = [v2 shouldAutoFillFromCreditCardData];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004EA0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(WBUFormDataController) init];
  [v2 setShouldAutoFillFromCreditCardData:v1];
  v3 = [objc_opt_self() defaultCenter];
  [v3 postNotificationName:WBSAutoFillUseCreditCardsChangedNotification object:0 userInfo:0 deliverImmediately:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004F7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_10000893C();
}

unint64_t sub_100005024()
{
  result = qword_10006C520;
  if (!qword_10006C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C520);
  }

  return result;
}

uint64_t sub_100005078(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000059C4();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100005128(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100005240()
{
  result = qword_10006C528;
  if (!qword_10006C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C528);
  }

  return result;
}

unint64_t sub_100005298()
{
  result = qword_10006C530;
  if (!qword_10006C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C530);
  }

  return result;
}

unint64_t sub_1000052F0()
{
  result = qword_10006C538;
  if (!qword_10006C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C538);
  }

  return result;
}

uint64_t sub_100005344(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000059C4();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000053F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000059C4();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_1000054A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005568;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005568(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_10000566C()
{
  result = qword_10006C540;
  if (!qword_10006C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C540);
  }

  return result;
}

unint64_t sub_1000056C4()
{
  result = qword_10006C548;
  if (!qword_10006C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C548);
  }

  return result;
}

uint64_t sub_10000575C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005024();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100005810()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005810;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000059C4()
{
  result = qword_10006C560;
  if (!qword_10006C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C560);
  }

  return result;
}

uint64_t sub_100005A18()
{
  v0 = qword_10006C4C8;

  return v0;
}

unint64_t sub_100005A54()
{
  result = qword_10006C568;
  if (!qword_10006C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C568);
  }

  return result;
}

unint64_t sub_100005AAC()
{
  result = qword_10006C570;
  if (!qword_10006C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C570);
  }

  return result;
}

unint64_t sub_100005B04()
{
  result = qword_10006C578;
  if (!qword_10006C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C578);
  }

  return result;
}

unint64_t sub_100005B68()
{
  result = qword_10006C580;
  if (!qword_10006C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C580);
  }

  return result;
}

unint64_t sub_100005BC0()
{
  result = qword_10006C588;
  if (!qword_10006C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C588);
  }

  return result;
}

unint64_t sub_100005C18()
{
  result = qword_10006C590;
  if (!qword_10006C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C590);
  }

  return result;
}

uint64_t sub_100005D0C(uint64_t a1)
{
  v2 = sub_1000052F0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100005D5C()
{
  result = qword_10006C5A8;
  if (!qword_10006C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5A8);
  }

  return result;
}

uint64_t sub_100005DB0(uint64_t a1)
{
  v2 = sub_100004D6C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100005DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000094C4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100005EC0(uint64_t a1)
{
  v2 = sub_100005C18();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100005F10()
{
  result = qword_10006C5B0;
  if (!qword_10006C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5B0);
  }

  return result;
}

uint64_t sub_100005FA8()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v18 = &v16 - v2;
  v17 = sub_10004BC5C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BD8C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C54C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10004BBDC();
  sub_1000090DC(v14, qword_10006E230);
  sub_1000090A4(v14, qword_10006E230);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_10004BC8C();
  (*(v12 + 56))(v18, 1, 1, v11);
  return sub_10004BBCC();
}

uint64_t sub_1000062BC()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E248);
  sub_1000090A4(v0, qword_10006E248);
  return sub_10004BC4C();
}

uint64_t sub_100006320()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E260);
  v1 = sub_1000090A4(v0, qword_10006E260);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000063E0()
{
  result = swift_getKeyPath();
  qword_10006E278 = result;
  return result;
}

uint64_t sub_100006408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006C6F8, &qword_100050F90) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006C700, &qword_100050F98);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000065E8, 0, 0);
}

uint64_t sub_1000065E8()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100007824();
  *v3 = v0;
  v3[1] = sub_1000066B8;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000094F0, 0, &type metadata for AutoFillContactInfoEntity, v4);
}

uint64_t sub_1000066B8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000067B4, 0, 0);
}

uint64_t sub_1000067B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C228 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E278;
  *(v0 + 176) = qword_10006E278;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006C6D8, &qword_10006C6E0, &qword_100050F70);
  *v6 = v0;
  v6[1] = sub_100006914;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100006914()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_1000094E4;
  }

  else
  {
    v5 = sub_100006A68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006A68()
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
  sub_100005F10();
  sub_100007AF8();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006CD4()
{
  v0 = sub_100001E64(&qword_10006C708, &qword_100050FA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C228 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100007AF8();
  sub_1000020DC(&qword_10006C710, &qword_10006C708, &qword_100050FA0);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100006E48(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10004B86C();
}

uint64_t (*sub_100006E90(uint64_t *a1))()
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
  return sub_10000950C;
}

uint64_t (*sub_100006F04(uint64_t *a1))()
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

void sub_100006F78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100006FE8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

unint64_t sub_100007050()
{
  result = qword_10006C5C8;
  if (!qword_10006C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5C8);
  }

  return result;
}

unint64_t sub_1000070A8()
{
  result = qword_10006C5D0;
  if (!qword_10006C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5D0);
  }

  return result;
}

uint64_t sub_1000071F8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v6 = sub_1000090A4(v5, a2);

  return sub_100009450(v6, a3);
}

uint64_t sub_100007268(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100006408(a1, v5, v4);
}

uint64_t sub_100007314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008C40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000735C()
{
  result = qword_10006C5D8;
  if (!qword_10006C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5D8);
  }

  return result;
}

unint64_t sub_1000073B4()
{
  result = qword_10006C5E0;
  if (!qword_10006C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5E0);
  }

  return result;
}

uint64_t sub_100007428()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(WBUFormDataController) init];
  v3 = [v2 shouldAutoFillFromAddressBook];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000074E8()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(WBUFormDataController) init];
  [v2 setShouldAutoFillFromAddressBook:v1];
  v3 = [objc_opt_self() defaultCenter];
  [v3 postNotificationName:WBSAutoFillUseContactInfoChangedNotification object:0 userInfo:0 deliverImmediately:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000075C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100009140();
}

unint64_t sub_10000766C()
{
  result = qword_10006C5E8;
  if (!qword_10006C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5E8);
  }

  return result;
}

uint64_t sub_1000076C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007D78();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100007774()
{
  result = qword_10006C5F0;
  if (!qword_10006C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5F0);
  }

  return result;
}

unint64_t sub_1000077CC()
{
  result = qword_10006C5F8;
  if (!qword_10006C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5F8);
  }

  return result;
}

unint64_t sub_100007824()
{
  result = qword_10006C600;
  if (!qword_10006C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C600);
  }

  return result;
}

uint64_t sub_100007878(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100007D78();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000792C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007D78();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_1000079DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100009550;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

unint64_t sub_100007AA0()
{
  result = qword_10006C608;
  if (!qword_10006C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C608);
  }

  return result;
}

unint64_t sub_100007AF8()
{
  result = qword_10006C610;
  if (!qword_10006C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C610);
  }

  return result;
}

uint64_t sub_100007B90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100001FB0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000766C();
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100007CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000094C4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100007D78()
{
  result = qword_10006C628;
  if (!qword_10006C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C628);
  }

  return result;
}

uint64_t sub_100007DCC()
{
  v0 = qword_10006C4D8;

  return v0;
}

unint64_t sub_100007E08()
{
  result = qword_10006C630;
  if (!qword_10006C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C630);
  }

  return result;
}

unint64_t sub_100007E60()
{
  result = qword_10006C638;
  if (!qword_10006C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C638);
  }

  return result;
}

unint64_t sub_100007EB8()
{
  result = qword_10006C640;
  if (!qword_10006C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C640);
  }

  return result;
}

unint64_t sub_100007F10()
{
  result = qword_10006C648;
  if (!qword_10006C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C648);
  }

  return result;
}

unint64_t sub_100007F68()
{
  result = qword_10006C650;
  if (!qword_10006C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C650);
  }

  return result;
}

unint64_t sub_100007FC0()
{
  result = qword_10006C658;
  if (!qword_10006C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C658);
  }

  return result;
}

uint64_t sub_10000802C@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = sub_10004B80C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000080A8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_100008194(uint64_t a1)
{
  v2 = sub_100007824();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000081E4()
{
  result = qword_10006C670;
  if (!qword_10006C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C670);
  }

  return result;
}

uint64_t sub_100008238(uint64_t a1)
{
  v2 = sub_1000073B4();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100008284(uint64_t a1)
{
  v2 = sub_100007FC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1000082F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000837C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000084D8()
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
  v28 = sub_100001E64(&qword_10006C6D0, &qword_100050F50);
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
  sub_1000052F0();
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

uint64_t sub_10000893C()
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

  return _swift_task_switch(sub_100008A7C, 0, 0);
}

uint64_t sub_100008A7C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100001E64(&qword_10006C4F8, qword_100050240);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006C720, &qword_10006C728, &qword_100050FF0);
  v7 = sub_10004BC3C();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100008C40()
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
  v28 = sub_100001E64(&qword_10006C6C0, &unk_100050F40);
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
  sub_100007824();
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

uint64_t sub_1000090A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000090DC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100009140()
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

  return _swift_task_switch(sub_100009280, 0, 0);
}

uint64_t sub_100009280()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100001E64(&qword_10006C5C0, qword_100050810);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006C6D8, &qword_10006C6E0, &qword_100050F70);
  v7 = sub_10004BC3C();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100009450(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000956C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001E64(&qword_10006C750, &unk_1000510C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000963C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001E64(&qword_10006C750, &unk_1000510C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SmallReadingListWidgetBackgroundView()
{
  result = qword_10006C7B0;
  if (!qword_10006C7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009738()
{
  sub_1000097CC();
  if (v0 <= 0x3F)
  {
    sub_100009824();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000097CC()
{
  if (!qword_10006C7C0)
  {
    sub_10004BE7C();
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006C7C0);
    }
  }
}

void sub_100009824()
{
  if (!qword_10006C7C8)
  {
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006C7C8);
    }
  }
}

double sub_100009890@<D0>(uint64_t a1@<X8>)
{
  if (sub_100009A0C())
  {
    v3 = sub_10004C33C();
    v5 = v4;
    sub_100009D24(v1, &v21);
    v9 = v21;
    v10 = v22;
    v11 = v23;
    v12 = v24;
    v13[0] = v21;
    v13[1] = v22;
    v13[2] = v23;
    v13[3] = v24;
    sub_10000A490(&v9, v15, &qword_10006C810, &qword_100051150);
    sub_1000022E8(v13, &qword_10006C810, &qword_100051150);
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v14 = 0;
    v15[0] = v3;
    v15[1] = v5;
    v20 = 0;
  }

  else
  {
    if (qword_10006C1D0 != -1)
    {
      swift_once();
    }

    LOBYTE(v13[0]) = 1;
    v15[0] = qword_10006E1C0;
    v20 = 1;
  }

  sub_100001E64(&qword_10006C800, &qword_100051148);
  sub_10000A42C();
  sub_10004C09C();
  v6 = v24;
  *(a1 + 32) = v23;
  *(a1 + 48) = v6;
  *(a1 + 64) = v25;
  *(a1 + 80) = v26;
  result = *&v21;
  v8 = v22;
  *a1 = v21;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_100009A0C()
{
  v1 = sub_10004BF8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BE7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = *(v0 + 8);
  if (!*(v14 + 16))
  {
    goto LABEL_6;
  }

  v15 = type metadata accessor for BookmarkItem();
  if (!*(v14 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(v15 + 28)))
  {
    goto LABEL_6;
  }

  v24 = v2;
  v16 = type metadata accessor for SmallReadingListWidgetBackgroundView();
  v17 = v0;
  v18 = v0 + *(v16 + 20);
  sub_100011540(v13);
  sub_10000A4F8(&qword_10006C828);
  sub_10004C65C();
  sub_10000A4F8(&qword_10006C830);
  LOBYTE(v18) = sub_10004C4EC();
  v19 = *(v7 + 8);
  v19(v11, v6);
  v19(v13, v6);
  if (v18)
  {
    v20 = v17 + *(v16 + 24);
    v21 = *v20;
    if (*(v20 + 8) != 1)
    {

      sub_10004C61C();
      v22 = sub_10004C0FC();
      sub_10004BDDC();

      sub_10004BF7C();
      swift_getAtKeyPath();
      sub_10000A53C(v21, 0);
      (*(v24 + 8))(v5, v1);
      LOBYTE(v21) = v25;
    }
  }

  else
  {
LABEL_6:
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

uint64_t sub_100009D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C28C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 8);
  if (*(v9 + 16) && (v10 = type metadata accessor for BookmarkItem(), *(v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(v10 + 28))))
  {
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);

    v11 = sub_10004C2CC();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = 0;
  }

  sub_100009F54(&v27);
  v12 = v27;
  v14 = v28;
  v13 = v29;
  v18 = v27;
  v19 = v28;
  *&v20 = v29;
  WORD4(v20) = 256;
  *(a2 + 40) = v20;
  v15 = v18;
  *(a2 + 24) = v19;
  v21 = 0x3FE3333333333333;
  v22[0] = v12;
  *a2 = v11;
  *(a2 + 56) = 0x3FE3333333333333;
  *(a2 + 8) = v15;
  v22[1] = *(&v12 + 1);
  v23 = v14;
  v24 = v13;
  v25 = 256;
  v26 = 0x3FE3333333333333;

  sub_10000A490(&v18, v17, &qword_10006C818, &qword_100051158);
  sub_1000022E8(v22, &qword_10006C818, &qword_100051158);
}

double sub_100009F54@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C22C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001E64(&qword_10006C820, &qword_100051160);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100051040;
  v8 = enum case for Color.RGBColorSpace.sRGB(_:);
  v9 = *(v3 + 104);
  v9(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_10004C24C();
  *(v7 + 32) = sub_10004C31C();
  *(v7 + 40) = v10;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 48) = sub_10004C31C();
  *(v7 + 56) = v11;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 64) = sub_10004C31C();
  *(v7 + 72) = v12;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 80) = sub_10004C31C();
  *(v7 + 88) = v13;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 96) = sub_10004C31C();
  *(v7 + 104) = v14;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 112) = sub_10004C31C();
  *(v7 + 120) = v15;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 128) = sub_10004C31C();
  *(v7 + 136) = v16;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 144) = sub_10004C31C();
  *(v7 + 152) = v17;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 160) = sub_10004C31C();
  *(v7 + 168) = v18;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 176) = sub_10004C31C();
  *(v7 + 184) = v19;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 192) = sub_10004C31C();
  *(v7 + 200) = v20;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 208) = sub_10004C31C();
  *(v7 + 216) = v21;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 224) = sub_10004C31C();
  *(v7 + 232) = v22;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 240) = sub_10004C31C();
  *(v7 + 248) = v23;
  v9(v6, v8, v2);
  sub_10004C24C();
  *(v7 + 256) = sub_10004C31C();
  *(v7 + 264) = v24;
  sub_10004C36C();
  sub_10004C32C();
  sub_10004BE6C();
  result = *&v28;
  v26 = v29;
  *a1 = v28;
  *(a1 + 16) = v26;
  *(a1 + 32) = v30;
  return result;
}

unint64_t sub_10000A42C()
{
  result = qword_10006C808;
  if (!qword_10006C808)
  {
    sub_100001FB0(&qword_10006C800, &qword_100051148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C808);
  }

  return result;
}

uint64_t sub_10000A490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E64(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A4F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004BE7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A53C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10000A54C()
{
  result = qword_10006C838;
  if (!qword_10006C838)
  {
    sub_100001FB0(&qword_10006C840, &qword_100051168);
    sub_10000A42C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C838);
  }

  return result;
}

__n128 sub_10000A5D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000A5EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000A634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000A6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v67 = a1;
  v82 = a3;
  v68 = sub_10004BDCC();
  *&v85 = *(v68 - 8);
  v4 = *(v85 + 64);
  __chkstk_darwin(v68);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100001E64(&qword_10006C848, &qword_100051218);
  v71 = *(v69 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v69);
  v9 = &v65 - v8;
  v72 = sub_100001E64(&qword_10006C850, &qword_100051220);
  v74 = *(v72 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v72);
  v83 = &v65 - v11;
  v12 = sub_100001E64(&qword_10006C858, &qword_100051228);
  v13 = *(v12 - 8);
  v76 = v12;
  v77 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v84 = &v65 - v15;
  v78 = sub_100001E64(&qword_10006C860, &qword_100051230);
  v80 = *(v78 - 8);
  v16 = *(v80 + 64);
  __chkstk_darwin(v78);
  v73 = &v65 - v17;
  v79 = sub_100001E64(&qword_10006C868, &qword_100051238);
  v81 = *(v79 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v79);
  v75 = &v65 - v19;
  sub_100001E64(&qword_10006C870, &qword_100051240);
  v20 = sub_10004C3CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  v70 = v24;
  *(v24 + 16) = xmmword_100051170;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, enum case for WidgetFamily.systemSmall(_:), v20);
  v26(v25 + v22, enum case for WidgetFamily.systemMedium(_:), v20);
  v26(v25 + 2 * v22, enum case for WidgetFamily.systemLarge(_:), v20);
  v88 = type metadata accessor for ReadingListWidgetWebBookmarksDataSource();
  v89 = &off_10006A4E0;
  v86 = a2;
  type metadata accessor for ReadingListWidgetView();
  sub_10000B098();
  sub_10000B0F0();

  sub_10004C48C();
  v27 = v6;
  v66 = v6;
  sub_10004BDBC();
  v28 = sub_10004BDAC();
  v30 = v29;
  v31 = *(v85 + 8);
  *&v85 = v85 + 8;
  v32 = v68;
  v31(v27, v68);
  v86 = v28;
  v87 = v30;
  sub_100002214();
  v33 = sub_10004C1AC();
  v35 = v34;
  LOBYTE(v27) = v36;
  v37 = sub_10000B144();
  v38 = v69;
  sub_10004C06C();
  sub_100002348(v33, v35, v27 & 1);

  (*(v71 + 8))(v9, v38);
  v39 = v66;
  sub_10004BDBC();
  v40 = sub_10004BDAC();
  v42 = v41;
  v31(v39, v32);
  v86 = v40;
  v87 = v42;
  v43 = sub_10004C1AC();
  v45 = v44;
  LOBYTE(a2) = v46;
  v86 = v38;
  v87 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v83;
  v49 = v72;
  sub_10004C00C();
  sub_100002348(v43, v45, a2 & 1);

  v50 = v48;
  v51 = v49;
  (*(v74 + 8))(v50, v49);
  sub_100001E64(&qword_10006C890, &qword_100051248);
  v52 = *(sub_10004C3FC() - 8);
  v53 = *(v52 + 72);
  v54 = *(v52 + 80);
  v55 = swift_allocObject();
  v85 = xmmword_100051180;
  *(v55 + 16) = xmmword_100051180;
  sub_10004C3DC();
  v86 = v51;
  v87 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v73;
  v58 = v76;
  v59 = v84;
  sub_10004C04C();

  (*(v77 + 8))(v59, v58);
  *(swift_allocObject() + 16) = v85;
  sub_10004C3EC();
  v86 = v58;
  v87 = v56;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v75;
  v62 = v78;
  sub_10004C04C();

  (*(v80 + 8))(v57, v62);
  v86 = v62;
  v87 = v60;
  swift_getOpaqueTypeConformance2();
  v63 = v79;
  sub_10004C03C();

  return (*(v81 + 8))(v61, v63);
}

uint64_t sub_10000AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v4 = *(type metadata accessor for ReadingListWidgetView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_100001E64(&qword_10006C898, &unk_100051280);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000B038@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReadingListWidgetWebBookmarksDataSource();
  result = swift_initStaticObject();
  *a1 = 0xD000000000000011;
  a1[1] = 0x80000001000511A0;
  a1[2] = result;
  return result;
}

unint64_t sub_10000B098()
{
  result = qword_10006C878;
  if (!qword_10006C878)
  {
    type metadata accessor for ReadingListWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C878);
  }

  return result;
}

unint64_t sub_10000B0F0()
{
  result = qword_10006C880;
  if (!qword_10006C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C880);
  }

  return result;
}

unint64_t sub_10000B144()
{
  result = qword_10006C888;
  if (!qword_10006C888)
  {
    sub_100001FB0(&qword_10006C848, &qword_100051218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C888);
  }

  return result;
}

uint64_t sub_10000B1F0()
{
  sub_100001FB0(&qword_10006C868, &qword_100051238);
  sub_100001FB0(&qword_10006C860, &qword_100051230);
  sub_100001FB0(&qword_10006C858, &qword_100051228);
  sub_100001FB0(&qword_10006C850, &qword_100051220);
  sub_100001FB0(&qword_10006C848, &qword_100051218);
  sub_10000B144();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000B374@<X0>(uint64_t a1@<X8>)
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
  sub_10000BBB8();
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

uint64_t sub_10000B94C()
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

uint64_t sub_10000BA7C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_10000BBB8()
{
  result = qword_10006C8A0;
  if (!qword_10006C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C8A0);
  }

  return result;
}

uint64_t sub_10000BC0C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = sub_10004BD0C();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006C958, &qword_100051368);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_10004BD6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 address];
  if (!v16)
  {
    sub_10004C56C();
    v16 = sub_10004C55C();
  }

  v17 = [v15 UUID];
  if (!v17)
  {
    sub_10004C56C();
    v17 = sub_10004C55C();
  }

  sub_10004C56C();
  sub_10004BD3C();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000022E8(v9, &qword_10006C958, &qword_100051368);
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v14, v9, v10);
    v19 = [v16 safari_userVisibleURL];

    if (v19)
    {
      v20 = [v19 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
      v38 = v18;
      v21 = v20;

      v22 = sub_10004C56C();
      v36 = v23;

      v37 = sub_10000C070(v15);
      v24 = [objc_opt_self() safari_URLForReadingListItemWithUUIDString:v17];

      v25 = v39;
      sub_10004BCDC();

      v26 = [v15 title];
      v27 = sub_10004C56C();
      v29 = v28;

      v30 = type metadata accessor for BookmarkItem();
      v31 = v42;
      v38(v42 + v30[8], v14, v10);
      *v31 = v27;
      v31[1] = v29;
      v32 = v36;
      v31[2] = v22;
      v31[3] = v32;
      (*(v40 + 32))(v31 + v30[6], v25, v41);
      *(v31 + v30[7]) = v37;
      return (*(*(v30 - 1) + 56))(v31, 0, 1, v30);
    }

    (*(v11 + 8))(v14, v10);
  }

  v34 = type metadata accessor for BookmarkItem();
  return (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
}

id sub_10000C070(void *a1)
{
  v2 = sub_10004BD0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  result = [a1 readingListIconUUID];
  if (result)
  {
    v11 = result;
    sub_10004C56C();

    v12 = [objc_opt_self() bookmarkImagesDirectoryPath];
    sub_10004C56C();

    sub_10004BCAC();

    sub_10004BCBC();

    v13 = *(v3 + 8);
    v13(v7, v2);
    sub_10004BCEC();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_10004C55C();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = sub_10004C26C();
      v13(v9, v2);
      return v17;
    }

    else
    {
      v13(v9, v2);
      return 0;
    }
  }

  return result;
}

size_t sub_10000C2C8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_100001E64(&qword_10006C950, &qword_100051360);
  v10 = *(type metadata accessor for BookmarkItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for BookmarkItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000C4A0(unint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_100001E64(&qword_10006C940, &qword_1000515C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v54 - v8);
  v10 = type metadata accessor for BookmarkItem();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v10);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v54 - v14;
  v15 = type metadata accessor for ReadingListWidgetEntry();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() readonlySafariBookmarkCollectionConfiguration];
  v20 = [objc_allocWithZone(WebBookmarkCollection) initWithConfiguration:v19];

  if (!v20)
  {
    v30 = &v18[*(v15 + 20)];
    sub_10004BD1C();
    *v18 = 1;
    *(v18 + 1) = &_swiftEmptyArrayStorage;
    a2(v18);
    return sub_10000CA90(v18);
  }

  v58 = v18;
  v59 = a3;
  v21 = &ReadingListWidgetWebBookmarksDataSource;
  v60 = v20;
  v22 = [v20 readingListWithUnreadOnly:0];
  v23 = &ReadingListWidgetWebBookmarksDataSource;
  v24 = [v22 bookmarkArrayRequestingCount:1];

  sub_10000CAEC();
  v25 = sub_10004C5CC();

  if (v25 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10004C6EC())
  {

    v57 = i;
    if (i)
    {
      result = [v60 *&v21[3].flags];
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (HIDWORD(a1))
      {
        goto LABEL_59;
      }

      v28 = result;
      v29 = [result *&v23[3].ivar:a1 base:?size];

      i = sub_10004C5CC();
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      i = &_swiftEmptyArrayStorage;
    }

    v56 = a2;
    v23 = (i >> 62);
    if (!(i >> 62))
    {
      result = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a1)
      {
        v31 = a1;
      }

      else
      {
        v31 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a1)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (result < v32)
      {
        goto LABEL_57;
      }

      goto LABEL_19;
    }

LABEL_47:
    v52 = sub_10004C6EC();
    result = sub_10004C6EC();
    if (result < 0)
    {
      goto LABEL_60;
    }

    if (v52 >= a1)
    {
      v53 = a1;
    }

    else
    {
      v53 = v52;
    }

    if (v52 < 0)
    {
      v53 = a1;
    }

    if (a1)
    {
      v32 = v53;
    }

    else
    {
      v32 = 0;
    }

    result = sub_10004C6EC();
    if (result < v32)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

LABEL_19:
    if ((i & 0xC000000000000001) != 0)
    {

      if (v32)
      {
        v33 = 0;
        do
        {
          v34 = v33 + 1;
          sub_10004C68C(v33);
          v33 = v34;
        }

        while (v32 != v34);
      }
    }

    else
    {
    }

    if (v23)
    {
      v38 = sub_10004C6FC();
      v37 = v39;
      v35 = v40;
      v42 = v41;

      v36 = v38;
      v32 = v42 >> 1;
    }

    else
    {
      v35 = 0;
      v36 = i & 0xFFFFFFFFFFFFFF8;
      v37 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v54 = v36;
    v55 = v15;
    swift_unknownObjectRetain();
    v43 = v32 - v35;
    if (v32 == v35)
    {
      break;
    }

    a1 = 0;
    v21 = (v62 + 48);
    if (v32 <= v35)
    {
      v47 = v35;
    }

    else
    {
      v47 = v32;
    }

    v23 = (v47 - v35);
    v48 = (v37 + 8 * v35);
    a2 = &_swiftEmptyArrayStorage;
    v15 = v10;
    while (v23)
    {
      v64 = *v48;
      sub_10000BC0C(&v64, v9);
      if ((*&v21->flags)(v9, 1, v10) == 1)
      {
        sub_1000022E8(v9, &qword_10006C940, &qword_1000515C0);
      }

      else
      {
        v49 = v61;
        sub_10000CB38(v9, v61);
        sub_10000CB38(v49, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_10000C2C8(0, *(a2 + 2) + 1, 1, a2);
        }

        v51 = *(a2 + 2);
        v50 = *(a2 + 3);
        if (v51 >= v50 >> 1)
        {
          a2 = sub_10000C2C8(v50 > 1, v51 + 1, 1, a2);
        }

        *(a2 + 2) = v51 + 1;
        sub_10000CB38(v63, a2 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v51);
        v10 = v15;
      }

      v23 = (v23 - 1);
      ++v48;
      if (!--v43)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    ;
  }

  a2 = &_swiftEmptyArrayStorage;
LABEL_30:
  v44 = v57 == 0;
  swift_unknownObjectRelease_n();
  v45 = *(v55 + 20);

  v46 = v58;
  sub_10004BD1C();
  *v46 = v44;
  *(v46 + 8) = a2;
  v56(v46);
  sub_10000CA90(v46);
}

uint64_t sub_10000CA90(uint64_t a1)
{
  v2 = type metadata accessor for ReadingListWidgetEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CAEC()
{
  result = qword_10006C948;
  if (!qword_10006C948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C948);
  }

  return result;
}

uint64_t sub_10000CB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10000CBA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000CBB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000CBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CC58()
{
  result = qword_10006C960;
  if (!qword_10006C960)
  {
    type metadata accessor for ReadingListWidgetEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C960);
  }

  return result;
}

uint64_t type metadata accessor for ReadingListWidgetEntry()
{
  result = qword_10006C9D0;
  if (!qword_10006C9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10004BD2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000CD74(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_10004C4AC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100001E64(&qword_10006C968, &qword_100051450);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_100001E64(&qword_10006C970, &qword_100051458);
  v11 = *(type metadata accessor for ReadingListWidgetEntry() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100051180;
  sub_10000D4E4(a1, v14 + v13);
  sub_10004C49C();
  sub_10000CC58();
  sub_10004C4CC();
  a2(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000CF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C3CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  sub_10004C4BC();
  (*(v3 + 32))(v7, v9, v2);
  v10 = (*(v3 + 88))(v7, v2);
  if (v10 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v10 == enum case for WidgetFamily.systemMedium(_:))
    {
      v11 = 2;
      goto LABEL_7;
    }

    if (v10 == enum case for WidgetFamily.systemLarge(_:))
    {
      v11 = 5;
      goto LABEL_7;
    }

    (*(v3 + 8))(v7, v2);
  }

  v11 = 1;
LABEL_7:
  v12 = sub_100044874(v11);
  v14 = v13;
  v15 = a1 + *(type metadata accessor for ReadingListWidgetEntry() + 20);
  result = sub_10004BD1C();
  *a1 = v12 & 1;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_10000D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v10 = sub_10004C3CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  sub_10004C4BC();
  (*(v11 + 32))(v15, v17, v10);
  v19 = (*(v11 + 88))(v15, v10);
  if (v19 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v19 == enum case for WidgetFamily.systemMedium(_:))
    {
      v20 = 2;
      goto LABEL_7;
    }

    if (v19 == enum case for WidgetFamily.systemLarge(_:))
    {
      v20 = 5;
      goto LABEL_7;
    }

    (*(v11 + 8))(v15, v10);
  }

  v20 = 1;
LABEL_7:

  sub_10000C4A0(v20, a7, v18);
}

uint64_t sub_10000D33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005810;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000094C4;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000D4A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingListWidgetEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000D584(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BD2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004BD2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000D6E8()
{
  result = sub_10004BD2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000D77C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001E64(&qword_10006C750, &unk_1000510C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_10000D920(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001E64(&qword_10006C750, &unk_1000510C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for SmallReadingListWidgetView()
{
  result = qword_10006CA70;
  if (!qword_10006CA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DAFC()
{
  sub_10000DC14(319, &qword_10006CA80, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10000DC14(319, &qword_10006C7C0, &type metadata accessor for RedactionReasons);
    if (v1 <= 0x3F)
    {
      sub_100009824();
      if (v2 <= 0x3F)
      {
        sub_10000DC14(319, &unk_10006CA88, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000DC14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10000DC84@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SmallReadingListWidgetView();
  sub_10000A490(v1 + *(v12 + 32), v11, &qword_10006CB28, &qword_100051620);
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

uint64_t sub_10000DE8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = sub_10004C0EC();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006CAC8, &qword_100051540);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v36 = sub_100001E64(&qword_10006CAD0, &qword_100051548);
  v13 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v15 = (&v36 - v14);
  v16 = sub_100001E64(&qword_10006CAD8, &qword_100051550);
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  __chkstk_darwin(v16);
  v38 = &v36 - v18;
  *v15 = sub_10004C33C();
  v15[1] = v19;
  v20 = sub_100001E64(&qword_10006CAE0, &qword_100051558);
  sub_10000E474(v2, v15 + *(v20 + 44));
  v42 = v2;
  v21 = *(v2 + 8);
  if (*(v21 + 16))
  {
    v22 = type metadata accessor for BookmarkItem();
    v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v24 = v21 + *(v22 + 24);
    v25 = sub_10004BD0C();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v10, v24 + v23, v25);
    (*(v26 + 56))(v10, 0, 1, v25);
    (*(v26 + 32))(v12, v10, v25);
  }

  else
  {
    v25 = sub_10004BD0C();
    v27 = *(v25 - 8);
    (*(v27 + 56))(v10, 1, 1, v25);
    v28 = [objc_opt_self() safari_readingListURL];
    sub_10004BCDC();

    if ((*(v27 + 48))(v10, 1, v25) != 1)
    {
      sub_1000022E8(v10, &qword_10006CAC8, &qword_100051540);
    }
  }

  sub_10004BD0C();
  (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  v29 = sub_1000020DC(&qword_10006CAE8, &qword_10006CAD0, &qword_100051548);
  v30 = v38;
  v31 = v36;
  sub_10004C1CC();
  sub_1000022E8(v12, &qword_10006CAC8, &qword_100051540);
  sub_1000022E8(v15, &qword_10006CAD0, &qword_100051548);
  v32 = v43;
  v33 = sub_10004C0DC();
  __chkstk_darwin(v33);
  sub_10004C33C();
  type metadata accessor for SmallReadingListWidgetBackgroundView();
  v44 = v31;
  v45 = v29;
  swift_getOpaqueTypeConformance2();
  sub_100010560(&qword_10006CAF0, type metadata accessor for SmallReadingListWidgetBackgroundView);
  v34 = v41;
  sub_10004C21C();
  (*(v3 + 8))(v32, v37);
  return (*(v40 + 8))(v30, v34);
}

uint64_t sub_10000E474@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10004BF8C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E64(&qword_10006C940, &qword_1000515C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_10004BE0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001E64(&qword_10006CB00, &qword_1000515C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v49 - v17;
  v19 = sub_100001E64(&qword_10006CB08, &qword_1000515D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v49 - v24;
  __chkstk_darwin(v23);
  v53 = &v49 - v26;
  *v18 = sub_10004BFEC();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v27 = sub_100001E64(&qword_10006CB10, &qword_1000515D8);
  sub_10000EA54(a1, &v18[*(v27 + 44)]);
  KeyPath = swift_getKeyPath();
  if (sub_10000FA50())
  {
    (*(v11 + 104))(v14, enum case for ColorScheme.dark(_:), v10);
  }

  else
  {
    v29 = &a1[*(type metadata accessor for SmallReadingListWidgetView() + 20)];
    sub_100011568(v14);
  }

  v30 = &v25[*(v19 + 36)];
  v31 = sub_100001E64(&qword_10006CB18, &qword_100051610);
  (*(v11 + 32))(v30 + *(v31 + 28), v14, v10);
  *v30 = KeyPath;
  sub_1000108E8(v18, v25, &qword_10006CB00, &qword_1000515C8);
  v32 = v53;
  sub_1000108E8(v25, v53, &qword_10006CB08, &qword_1000515D0);
  v33 = *(a1 + 1);
  v34 = *(v33 + 16);
  v35 = type metadata accessor for BookmarkItem();
  v36 = *(v35 - 8);
  v37 = v36;
  if (v34)
  {
    sub_1000104C0(v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v9);
    (*(v37 + 56))(v9, 0, 1, v35);
    sub_1000022E8(v9, &qword_10006C940, &qword_1000515C0);
LABEL_6:
    v38 = 0;
    v39 = 255;
    goto LABEL_7;
  }

  (*(v36 + 56))(v9, 1, 1, v35);
  sub_1000022E8(v9, &qword_10006C940, &qword_1000515C0);
  v44 = &a1[*(type metadata accessor for SmallReadingListWidgetView() + 28)];
  v45 = *v44;
  if (v44[8] == 1)
  {
    if ((v45 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_10004C61C();
    v46 = sub_10004C0FC();
    sub_10004BDDC();

    v47 = v50;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v45, 0);
    (*(v51 + 8))(v47, v52);
    if (v56 != 1)
    {
      goto LABEL_6;
    }
  }

  v48 = *a1;
  v38 = swift_getKeyPath();
  if (v48)
  {
    v39 = 0;
  }

  else
  {
    v39 = 256;
  }

LABEL_7:
  v40 = v54;
  sub_10000A490(v32, v54, &qword_10006CB08, &qword_1000515D0);
  v41 = v55;
  sub_10000A490(v40, v55, &qword_10006CB08, &qword_1000515D0);
  v42 = v41 + *(sub_100001E64(&qword_10006CB20, &qword_100051618) + 48);
  sub_100010524(v38, v39);
  sub_100010548(v38, v39);
  *v42 = v38;
  *(v42 + 8) = v39;
  sub_1000022E8(v32, &qword_10006CB08, &qword_1000515D0);
  sub_100010548(v38, v39);
  return sub_1000022E8(v40, &qword_10006CB08, &qword_1000515D0);
}

uint64_t sub_10000EA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_100001E64(&qword_10006C940, &qword_1000515C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v60 - v5;
  v70 = type metadata accessor for BookmarkItem();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v70);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10004BF8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001E64(&qword_10006CB30, &qword_100051628);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  *v20 = sub_10004BFFC();
  *(v20 + 1) = 0x4000000000000000;
  v20[16] = 0;
  v21 = *(sub_100001E64(&qword_10006CB38, &qword_100051630) + 44);
  v71 = v20;
  sub_10000F3A4(a1, &v20[v21]);
  v22 = a1 + *(type metadata accessor for SmallReadingListWidgetView() + 28);
  v23 = *v22;
  v65 = *(v22 + 8);
  v61 = v12;
  v62 = v11;
  v66 = v23;
  if (v65 != 1)
  {

    sub_10004C61C();
    v24 = sub_10004C0FC();
    sub_10004BDDC();

    v25 = v68;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v23, 0);
    (*(v12 + 8))(v25, v11);
    LODWORD(v23) = v102;
  }

  v67 = a1;
  v26 = *(a1 + 8);
  if (*(v26 + 16))
  {
    v64 = v23;
    sub_1000104C0(v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10);
    v63 = sub_10004BFCC();
    v99 = 1;
    sub_10000FE6C(v10, &v102);
    v81 = v110;
    v82 = v111;
    v83[0] = v112[0];
    *(v83 + 9) = *(v112 + 9);
    v77 = v106;
    v78 = v107;
    v79 = v108;
    v80 = v109;
    v73 = v102;
    v74 = v103;
    v75 = v104;
    v76 = v105;
    v94 = v110;
    v95 = v111;
    v96[0] = v112[0];
    *(v96 + 9) = *(v112 + 9);
    v90 = v106;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v89 = v105;
    sub_10000A490(&v73, &v100, &qword_10006CB40, &qword_100051638);
    sub_1000022E8(&v86, &qword_10006CB40, &qword_100051638);
    *(&v98[8] + 7) = v81;
    *(&v98[9] + 7) = v82;
    *(&v98[10] + 7) = v83[0];
    v98[11] = *(v83 + 9);
    *(&v98[4] + 7) = v77;
    *(&v98[5] + 7) = v78;
    *(&v98[6] + 7) = v79;
    *(&v98[7] + 7) = v80;
    *(v98 + 7) = v73;
    *(&v98[1] + 7) = v74;
    *(&v98[2] + 7) = v75;
    *(&v98[3] + 7) = v76;
    *(&v101[8] + 1) = v98[8];
    *(&v101[9] + 1) = v98[9];
    *(&v101[10] + 1) = v98[10];
    *(&v101[11] + 1) = *(v83 + 9);
    *(&v101[4] + 1) = v98[4];
    *(&v101[5] + 1) = v98[5];
    *(&v101[6] + 1) = v98[6];
    *(&v101[7] + 1) = v98[7];
    *(v101 + 1) = v98[0];
    *(&v101[1] + 1) = v98[1];
    LOBYTE(v23) = v64;
    *(&v101[2] + 1) = v98[2];
    v100 = v63;
    LOBYTE(v101[0]) = v99;
    *(&v101[3] + 1) = v98[3];
    nullsub_1(&v100);
    sub_1000105A8(v10);
    v112[0] = v101[9];
    v112[1] = v101[10];
    v113 = v101[11];
    v114 = v101[12];
    v108 = v101[5];
    v109 = v101[6];
    v110 = v101[7];
    v111 = v101[8];
    v104 = v101[1];
    v105 = v101[2];
    v106 = v101[3];
    v107 = v101[4];
    v102 = v100;
    v103 = v101[0];
    if (*(v26 + 16))
    {
LABEL_5:
      sub_1000104C0(v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      (*(v7 + 56))(v6, 0, 1, v70);
      sub_1000022E8(v6, &qword_10006C940, &qword_1000515C0);
LABEL_6:
      v70 = 0;
      v27 = 0;
      KeyPath = 0;
      v29 = 0;
      v30 = 255;
      goto LABEL_7;
    }
  }

  else
  {
    sub_10001063C(&v102);
    if (*(v26 + 16))
    {
      goto LABEL_5;
    }
  }

  (*(v7 + 56))(v6, 1, 1, v70);
  sub_1000022E8(v6, &qword_10006C940, &qword_1000515C0);
  if (v65)
  {
    v54 = v67;
    if (v66)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v55 = v66;

    sub_10004C61C();
    v56 = sub_10004C0FC();
    sub_10004BDDC();

    v57 = v68;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v55, 0);
    (*(v61 + 8))(v57, v62);
    v54 = v67;
    if (v100)
    {
      goto LABEL_6;
    }
  }

  v70 = sub_10004BFCC();
  v58 = *v54;
  KeyPath = swift_getKeyPath();
  sub_10001053C(KeyPath, 0);
  sub_10000A53C(KeyPath, 0);
  v29 = 1;
  LOBYTE(v100) = 1;
  LOBYTE(v86) = 0;
  LOBYTE(v73) = 1;
  v27 = 1;
  v59 = 256;
  if (v58)
  {
    v59 = 0;
  }

  v30 = v59;
  sub_10001053C(KeyPath, 0);
LABEL_7:
  v31 = v72;
  sub_10000A490(v71, v72, &qword_10006CB30, &qword_100051628);
  v83[0] = v112[0];
  v83[1] = v112[1];
  v84 = v113;
  v85 = v114;
  v79 = v108;
  v80 = v109;
  v81 = v110;
  v82 = v111;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v107;
  v73 = v102;
  v74 = v103;
  v32 = v31;
  v33 = v69;
  sub_10000A490(v32, v69, &qword_10006CB30, &qword_100051628);
  v34 = sub_100001E64(&qword_10006CB48, &qword_100051640);
  v35 = v33 + v34[12];
  *v35 = 0;
  *(v35 + 8) = v23 & 1;
  *(v35 + 9) = (v23 & 1) == 0;
  v36 = v34[16];
  v37 = v75;
  v38 = v76;
  v88 = v75;
  v89 = v76;
  v39 = v83[1];
  v96[0] = v83[0];
  v96[1] = v83[1];
  v40 = v84;
  v96[2] = v84;
  v41 = v79;
  v42 = v80;
  v92 = v79;
  v93 = v80;
  v43 = v81;
  v44 = v82;
  v94 = v81;
  v95 = v82;
  v45 = v77;
  v46 = v78;
  v90 = v77;
  v91 = v78;
  v47 = v33 + v36;
  *(v47 + 160) = v83[0];
  *(v47 + 176) = v39;
  *(v47 + 192) = v40;
  *(v47 + 96) = v41;
  *(v47 + 112) = v42;
  *(v47 + 128) = v43;
  *(v47 + 144) = v44;
  *(v47 + 32) = v37;
  *(v47 + 48) = v38;
  *(v47 + 64) = v45;
  *(v47 + 80) = v46;
  v48 = v73;
  v49 = v74;
  v50 = v74;
  *v47 = v73;
  *(v47 + 16) = v50;
  v97 = v85;
  *(v47 + 208) = v85;
  v51 = v33 + v34[20];
  v86 = v48;
  v87 = v49;
  sub_10000A490(&v86, &v100, &qword_10006CB50, &qword_100051648);
  v52 = v70;
  sub_100010604(v70, 0, v27, KeyPath, v30);
  sub_100010620(v52, 0, v27, KeyPath, v30);
  *v51 = v52;
  *(v51 + 8) = 0;
  *(v51 + 16) = v27;
  *(v51 + 24) = KeyPath;
  *(v51 + 32) = v30;
  *(v51 + 40) = 0;
  *(v51 + 48) = v29;
  sub_1000022E8(v71, &qword_10006CB30, &qword_100051628);
  sub_100010620(v52, 0, v27, KeyPath, v30);
  v101[9] = v83[0];
  v101[10] = v83[1];
  v101[11] = v84;
  LOBYTE(v101[12]) = v85;
  v101[5] = v79;
  v101[6] = v80;
  v101[7] = v81;
  v101[8] = v82;
  v101[1] = v75;
  v101[2] = v76;
  v101[3] = v77;
  v101[4] = v78;
  v100 = v73;
  v101[0] = v74;
  sub_1000022E8(&v100, &qword_10006CB50, &qword_100051648);
  return sub_1000022E8(v72, &qword_10006CB30, &qword_100051628);
}

uint64_t sub_10000F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_10004C22C();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BF8C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C39C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v64 = sub_100001E64(&qword_10006CB78, &qword_1000516D0);
  v61 = *(v64 - 8);
  v18 = *(v61 + 64);
  __chkstk_darwin(v64);
  v20 = &v58 - v19;
  v62 = sub_100001E64(&qword_10006CB80, &qword_1000516D8);
  v21 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v23 = &v58 - v22;
  v63 = sub_100001E64(&qword_10006CB88, &unk_1000516E0);
  v24 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v58 - v25;
  sub_10000DC84(v17);
  sub_10004C38C();
  v26 = sub_10004C37C();
  v27 = *(v11 + 8);
  v27(v15, v10);
  v27(v17, v10);
  v28 = a1;
  if (v26)
  {
    goto LABEL_2;
  }

  if (sub_10000FA50())
  {
    v30 = a1 + *(type metadata accessor for SmallReadingListWidgetView() + 28);
    v31 = *v30;
    if (*(v30 + 8) == 1)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_2:
      v29 = sub_10004C0AC();
      goto LABEL_9;
    }

    sub_10004C61C();
    v32 = sub_10004C0FC();
    sub_10004BDDC();

    v33 = v58;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v31, 0);
    (*(v59 + 8))(v33, v60);
    if (v69)
    {
      goto LABEL_2;
    }
  }

LABEL_8:
  v29 = sub_10004C0CC();
LABEL_9:
  v70 = v29;
  sub_100001E64(&qword_10006CB90, &unk_100058570);
  sub_1000107DC();
  sub_10004C1BC();
  sub_10000FA50();
  v34 = enum case for Color.RGBColorSpace.sRGB(_:);
  v35 = v67;
  v36 = *(v66 + 104);
  v36(v6, enum case for Color.RGBColorSpace.sRGB(_:), v67);
  v37 = sub_10004C24C();
  (*(v61 + 32))(v23, v20, v64);
  v38 = &v23[*(v62 + 36)];
  *v38 = v37;
  *(v38 + 8) = xmmword_100051480;
  *(v38 + 3) = 0x4000000000000000;
  sub_10000FA50();
  v36(v6, v34, v35);
  v39 = sub_10004C24C();
  v40 = v65;
  sub_1000108E8(v23, v65, &qword_10006CB80, &qword_1000516D8);
  v41 = v40 + *(v63 + 36);
  *v41 = v39;
  *(v41 + 8) = xmmword_100051490;
  *(v41 + 24) = 0x3FF0000000000000;
  v42 = sub_10004C11C();
  v43 = v28 + *(type metadata accessor for SmallReadingListWidgetView() + 28);
  v44 = *v43;
  if ((*(v43 + 8) & 1) == 0)
  {

    sub_10004C61C();
    v45 = sub_10004C0FC();
    sub_10004BDDC();

    v46 = v58;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v44, 0);
    (*(v59 + 8))(v46, v60);
  }

  sub_10004BDEC();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v68;
  sub_1000108E8(v40, v68, &qword_10006CB88, &unk_1000516E0);
  result = sub_100001E64(&qword_10006CBB8, &qword_1000516F8);
  v57 = v55 + *(result + 36);
  *v57 = v42;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  return result;
}

uint64_t sub_10000FA50()
{
  v1 = v0;
  v2 = sub_10004BF8C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004BE7C();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_10004C39C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  sub_10000DC84(&v32 - v18);
  sub_10004C38C();
  v20 = sub_10004C37C();
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (v20)
  {
    goto LABEL_7;
  }

  v22 = *(v1 + 8);
  if (!*(v22 + 16))
  {
    goto LABEL_7;
  }

  v23 = type metadata accessor for BookmarkItem();
  if (!*(v22 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)) + *(v23 + 28)))
  {
    goto LABEL_7;
  }

  v24 = type metadata accessor for SmallReadingListWidgetView();
  v25 = v1 + *(v24 + 24);
  sub_100011540(v11);
  sub_100010560(&qword_10006C828, &type metadata accessor for RedactionReasons);
  sub_10004C65C();
  sub_100010560(&qword_10006C830, &type metadata accessor for RedactionReasons);
  LOBYTE(v25) = sub_10004C4EC();
  v26 = *(v36 + 8);
  v26(v9, v5);
  v26(v11, v5);
  if (v25)
  {
    v27 = v1 + *(v24 + 28);
    v28 = *v27;
    if (*(v27 + 8) != 1)
    {

      sub_10004C61C();
      v29 = sub_10004C0FC();
      sub_10004BDDC();

      v30 = v33;
      sub_10004BF7C();
      swift_getAtKeyPath();
      sub_10000A53C(v28, 0);
      (*(v34 + 8))(v30, v35);
      LOBYTE(v28) = v37;
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v28) = 0;
  }

  return v28 & 1;
}

uint64_t sub_10000FE6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004BFFC();
  LOBYTE(v34) = 0;
  sub_1000100F4(a1, &v36);
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v22 = v36;
  v23 = v37;
  v32[6] = v42;
  v32[7] = v43;
  v32[8] = v44;
  v32[2] = v38;
  v32[3] = v39;
  v32[4] = v40;
  v32[5] = v41;
  v31 = v45[0];
  v33 = v45[0];
  v32[0] = v36;
  v32[1] = v37;
  sub_10000A490(&v22, v46, &qword_10006CB58, &qword_100051650);
  sub_1000022E8(v32, &qword_10006CB58, &qword_100051650);
  *(&v21[3] + 7) = v25;
  *(&v21[2] + 7) = v24;
  *(&v21[6] + 7) = v28;
  *(&v21[7] + 7) = v29;
  *(&v21[8] + 7) = v30;
  *(&v21[9] + 7) = v31;
  *(&v21[4] + 7) = v26;
  *(&v21[5] + 7) = v27;
  *(v21 + 7) = v22;
  *(&v21[1] + 7) = v23;
  v5 = v34;
  *&v34 = v4;
  *(&v34 + 1) = 0x4000000000000000;
  LOBYTE(v35[0]) = v5;
  v6 = v21[5];
  *(&v35[6] + 1) = v21[6];
  v7 = v21[6];
  *(&v35[7] + 1) = v21[7];
  v8 = v21[7];
  *(&v35[8] + 1) = v21[8];
  *(&v35[8] + 12) = *(&v21[8] + 11);
  v9 = v21[1];
  *(&v35[2] + 1) = v21[2];
  v10 = v21[2];
  *(&v35[3] + 1) = v21[3];
  v11 = v21[3];
  *(&v35[4] + 1) = v21[4];
  v12 = v21[4];
  *(&v35[5] + 1) = v21[5];
  *(v35 + 1) = v21[0];
  v13 = v21[0];
  *(&v35[1] + 1) = v21[1];
  v43 = v35[6];
  v44 = v35[7];
  v45[0] = v35[8];
  *(v45 + 12) = *(&v21[8] + 11);
  v40 = v35[3];
  v41 = v35[4];
  v42 = v35[5];
  v36 = v34;
  v37 = v35[0];
  v14 = v35[2];
  v38 = v35[1];
  v39 = v35[2];
  v15 = v45[0];
  *(a2 + 128) = v35[7];
  *(a2 + 144) = v15;
  *(a2 + 160) = v45[1];
  v16 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v16;
  v17 = v43;
  *(a2 + 96) = v42;
  *(a2 + 112) = v17;
  v18 = v37;
  *a2 = v36;
  *(a2 + 16) = v18;
  *(a2 + 32) = v38;
  *(a2 + 48) = v14;
  v54 = v7;
  v55 = v8;
  *v56 = v21[8];
  *&v56[11] = *(&v21[8] + 11);
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v53 = v6;
  v20[176] = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v46[0] = v4;
  v46[1] = 0x4000000000000000;
  v47 = v5;
  v48 = v13;
  v49 = v9;
  sub_10000A490(&v34, v20, &qword_10006CB60, &qword_100051658);
  return sub_1000022E8(v46, &qword_10006CB60, &qword_100051658);
}

uint64_t sub_1000100F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  if (qword_10006C1E8 != -1)
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
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  v17 = qword_10006E1D0;
  v18 = swift_getKeyPath();
  v19 = v15 & 1;

  v20 = sub_10004C0CC();
  *&v52 = v38;
  *(&v52 + 1) = v37;
  LOBYTE(v53) = v10;
  *(&v53 + 1) = v36;
  *&v54 = KeyPath;
  *(&v54 + 1) = 4;
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
  v43 = 4;
  v44 = 0;
  v45 = v33;
  v46 = v34;
  return sub_1000022E8(v39, &qword_10006CB68, &unk_1000516C0);
}

uint64_t sub_1000103F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v4 = type metadata accessor for SmallReadingListWidgetBackgroundView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100001E64(&qword_10006CAF8, &qword_100051590);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
}

uint64_t sub_1000104C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010524(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10001053C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10001053C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100010548(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000A53C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100010560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000105A8(uint64_t a1)
{
  v2 = type metadata accessor for BookmarkItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10001053C(a4, a5 & 1);
  }

  return result;
}

uint64_t sub_100010620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10000A53C(a4, a5 & 1);
  }

  return result;
}

double sub_10001063C(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100010664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004BF0C();
  *a1 = result;
  return result;
}

uint64_t sub_100010690(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004BF1C();
}

uint64_t sub_1000106BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004BF5C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000106F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004BF5C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100010724(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004BF6C();
}

uint64_t sub_100010754(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004BF6C();
}

uint64_t sub_100010784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004BF0C();
  *a1 = result;
  return result;
}

uint64_t sub_1000107B0(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004BF1C();
}

unint64_t sub_1000107DC()
{
  result = qword_10006CB98;
  if (!qword_10006CB98)
  {
    sub_100001FB0(&qword_10006CB90, &unk_100058570);
    sub_100010894();
    sub_1000020DC(&qword_10006CBA8, &qword_10006CBB0, &qword_1000516F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CB98);
  }

  return result;
}

unint64_t sub_100010894()
{
  result = qword_10006CBA0;
  if (!qword_10006CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CBA0);
  }

  return result;
}

uint64_t sub_1000108E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E64(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010950()
{
  sub_100001FB0(&qword_10006CAD8, &qword_100051550);
  type metadata accessor for SmallReadingListWidgetBackgroundView();
  sub_100001FB0(&qword_10006CAD0, &qword_100051548);
  sub_1000020DC(&qword_10006CAE8, &qword_10006CAD0, &qword_100051548);
  swift_getOpaqueTypeConformance2();
  sub_100010560(&qword_10006CAF0, type metadata accessor for SmallReadingListWidgetBackgroundView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100010A88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010B58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001E64(&qword_10006CBC0, &unk_100051700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ReadingListWidgetView()
{
  result = qword_10006CC20;
  if (!qword_10006CC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100010C54()
{
  sub_100010CD0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100010CD0()
{
  if (!qword_10006CC30)
  {
    sub_10004C3CC();
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006CC30);
    }
  }
}

uint64_t sub_100010D94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_100001E64(&qword_10006CAC8, &qword_100051540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v47 - v5;
  v53 = type metadata accessor for LargeReadingListWidgetView();
  v7 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100001E64(&qword_10006CC60, &qword_100051780);
  v49 = *(v54 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v54);
  v48 = &v47 - v11;
  v50 = sub_100001E64(&qword_10006CC68, &qword_100051788);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v52 = &v47 - v13;
  v51 = type metadata accessor for SmallReadingListWidgetView();
  v14 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C3CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v47 - v23;
  v25 = &v1[*(type metadata accessor for ReadingListWidgetView() + 20)];
  sub_100011590(&qword_10006C898, &unk_100051280, &type metadata accessor for WidgetFamily, v24);
  (*(v18 + 104))(v22, enum case for WidgetFamily.systemSmall(_:), v17);
  sub_100011C44(&qword_10006CC70, &type metadata accessor for WidgetFamily);
  sub_10004C5BC();
  sub_10004C5BC();
  v26 = *(v18 + 8);
  v26(v22, v17);
  v26(v24, v17);
  v27 = v56;
  v28 = v58;
  v29 = *v2;
  v30 = *(v2 + 1);
  KeyPath = swift_getKeyPath();
  if (v27 == v28)
  {
    v32 = v51;
    *&v16[*(v51 + 32)] = KeyPath;
    sub_100001E64(&qword_10006CB28, &qword_100051620);
    swift_storeEnumTagMultiPayload();
    *v16 = v29;
    *(v16 + 1) = v30;
    v33 = v32[5];
    *&v16[v33] = swift_getKeyPath();
    sub_100001E64(&qword_10006CC88, &qword_100051830);
    swift_storeEnumTagMultiPayload();
    v34 = v32[6];
    *&v16[v34] = swift_getKeyPath();
    sub_100001E64(&qword_10006CAF8, &qword_100051590);
    swift_storeEnumTagMultiPayload();
    v35 = &v16[v32[7]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    sub_100011B80(v16, v52);
    swift_storeEnumTagMultiPayload();
    sub_100011C44(&qword_10006CC80, type metadata accessor for SmallReadingListWidgetView);
    v36 = sub_100011C44(&qword_10006CC78, type metadata accessor for LargeReadingListWidgetView);

    v56 = v53;
    v57 = v36;
    swift_getOpaqueTypeConformance2();
    sub_10004C09C();
    return sub_100011BE4(v16, type metadata accessor for SmallReadingListWidgetView);
  }

  else
  {
    v38 = v53;
    *&v9[*(v53 + 24)] = KeyPath;
    sub_100001E64(&qword_10006CB28, &qword_100051620);
    swift_storeEnumTagMultiPayload();
    *v9 = v29;
    *(v9 + 1) = v30;
    v39 = *(v38 + 20);
    *&v9[v39] = swift_getKeyPath();
    sub_100001E64(&qword_10006C898, &unk_100051280);
    swift_storeEnumTagMultiPayload();
    v40 = objc_opt_self();

    v41 = [v40 safari_readingListURL];
    sub_10004BCDC();

    v42 = sub_10004BD0C();
    (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
    v43 = sub_100011C44(&qword_10006CC78, type metadata accessor for LargeReadingListWidgetView);
    v44 = v48;
    sub_10004C1CC();
    sub_100011A4C(v6);
    sub_100011BE4(v9, type metadata accessor for LargeReadingListWidgetView);
    v45 = v49;
    v46 = v54;
    (*(v49 + 16))(v52, v44, v54);
    swift_storeEnumTagMultiPayload();
    sub_100011C44(&qword_10006CC80, type metadata accessor for SmallReadingListWidgetView);
    v56 = v38;
    v57 = v43;
    swift_getOpaqueTypeConformance2();
    sub_10004C09C();
    return (*(v45 + 8))(v44, v46);
  }
}

uint64_t sub_100011590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10004BF8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001E64(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_10000A490(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10004C61C();
    v22 = sub_10004C0FC();
    sub_10004BDDC();

    sub_10004BF7C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100011808()
{
  sub_10004BF2C();
  sub_100011C44(&qword_10006CC90, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10004BF9C();
  return v1;
}

uint64_t sub_100011884@<X0>(_BYTE *a1@<X8>)
{
  sub_10004BF2C();
  sub_100011C44(&qword_10006CC90, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10004BF9C();
  *a1 = v3;
  return result;
}

uint64_t sub_100011938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100011A4C(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006CAC8, &qword_100051540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallReadingListWidgetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011C44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100011C90()
{
  result = qword_10006CC98;
  if (!qword_10006CC98)
  {
    sub_100001FB0(&qword_10006CCA0, &qword_100051898);
    sub_100011C44(&qword_10006CC80, type metadata accessor for SmallReadingListWidgetView);
    type metadata accessor for LargeReadingListWidgetView();
    sub_100011C44(&qword_10006CC78, type metadata accessor for LargeReadingListWidgetView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CC98);
  }

  return result;
}

uint64_t sub_100011DE0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100028328(KeyPath, a1);
}

unint64_t sub_100011E34()
{
  result = qword_10006CCB8;
  if (!qword_10006CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCB8);
  }

  return result;
}

uint64_t sub_100011ECC()
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
  sub_1000090DC(v15, qword_10006E280);
  sub_1000090A4(v15, qword_10006E280);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_1000121BC()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E298);
  sub_1000090A4(v0, qword_10006E298);
  return sub_10004BC4C();
}

uint64_t sub_100012220()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E2B0);
  v1 = sub_1000090A4(v0, qword_10006E2B0);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000122E0()
{
  result = swift_getKeyPath();
  qword_10006E2C8 = result;
  return result;
}

uint64_t sub_100012308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006CDB0, &qword_100052018) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006CDB8, &qword_100052020);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000124E8, 0, 0);
}

uint64_t sub_1000124E8()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000135E4();
  *v3 = v0;
  v3[1] = sub_1000125B8;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001483C, 0, &type metadata for BlockPopUpsEntity, v4);
}

uint64_t sub_1000125B8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000126B4, 0, 0);
}

uint64_t sub_1000126B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C248 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E2C8;
  *(v0 + 176) = qword_10006E2C8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006CDA0, &qword_10006CDA8, &qword_100051FF0);
  *v6 = v0;
  v6[1] = sub_100012814;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100012814()
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
    v5 = sub_100012968;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012968()
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
  sub_100011E34();
  sub_1000137F8();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100012BD4()
{
  v0 = sub_100001E64(&qword_10006CDC0, &qword_100052028);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C248 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_1000137F8();
  sub_1000020DC(&qword_10006CDC8, &qword_10006CDC0, &qword_100052028);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100012D48(uint64_t *a1))()
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

uint64_t (*sub_100012DBC(uint64_t *a1))()
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

uint64_t sub_100012E30()
{
  if (qword_10006C248 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100012E90()
{
  result = qword_10006CCD0;
  if (!qword_10006CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCD0);
  }

  return result;
}

unint64_t sub_100012EE8()
{
  result = qword_10006CCD8;
  if (!qword_10006CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCD8);
  }

  return result;
}

uint64_t sub_100012FF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C240 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E2B0);

  return sub_100009450(v3, a1);
}

uint64_t sub_10001307C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100012308(a1, v5, v4);
}

uint64_t sub_100013128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013F80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100013170()
{
  result = qword_10006CCE0;
  if (!qword_10006CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCE0);
  }

  return result;
}

unint64_t sub_1000131C8()
{
  result = qword_10006CCE8;
  if (!qword_10006CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCE8);
  }

  return result;
}

uint64_t sub_10001323C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = [v2 BOOLForKey:_SFJavaScriptCanOpenWindowsAutomaticallyDefaultsKey];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000132F0(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_1000143E4(v3);
}

uint64_t sub_100013384(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100014528();
}

unint64_t sub_10001342C()
{
  result = qword_10006CCF0;
  if (!qword_10006CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCF0);
  }

  return result;
}

uint64_t sub_100013480(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001398C();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100013534()
{
  result = qword_10006CCF8;
  if (!qword_10006CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CCF8);
  }

  return result;
}

unint64_t sub_10001358C()
{
  result = qword_10006CD00;
  if (!qword_10006CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD00);
  }

  return result;
}

unint64_t sub_1000135E4()
{
  result = qword_10006CD08;
  if (!qword_10006CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD08);
  }

  return result;
}

uint64_t sub_100013638(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001398C();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000136EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001398C();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000137A0()
{
  result = qword_10006CD10;
  if (!qword_10006CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD10);
  }

  return result;
}

unint64_t sub_1000137F8()
{
  result = qword_10006CD18;
  if (!qword_10006CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD18);
  }

  return result;
}

unint64_t sub_100013850()
{
  result = qword_10006CD20;
  if (!qword_10006CD20)
  {
    sub_100001FB0(&qword_10006CD28, qword_100051BE0);
    sub_1000137F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD20);
  }

  return result;
}

uint64_t sub_1000138D4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001342C();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10001398C()
{
  result = qword_10006CD30;
  if (!qword_10006CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD30);
  }

  return result;
}

uint64_t sub_1000139E0()
{
  v0 = qword_10006CCA8;

  return v0;
}

unint64_t sub_100013A1C()
{
  result = qword_10006CD38;
  if (!qword_10006CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD38);
  }

  return result;
}

unint64_t sub_100013A74()
{
  result = qword_10006CD40;
  if (!qword_10006CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD40);
  }

  return result;
}

unint64_t sub_100013ACC()
{
  result = qword_10006CD48;
  if (!qword_10006CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD48);
  }

  return result;
}

unint64_t sub_100013B24()
{
  result = qword_10006CD50;
  if (!qword_10006CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD50);
  }

  return result;
}

unint64_t sub_100013B7C()
{
  result = qword_10006CD58;
  if (!qword_10006CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD58);
  }

  return result;
}

unint64_t sub_100013BD4()
{
  result = qword_10006CD60;
  if (!qword_10006CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD60);
  }

  return result;
}

uint64_t sub_100013C28@<X0>(uint64_t *a1@<X8>)
{
  sub_1000131C8();
  result = sub_10004B80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013CA0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_100013D8C(uint64_t a1)
{
  v2 = sub_1000135E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013DDC()
{
  result = qword_10006CD78;
  if (!qword_10006CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CD78);
  }

  return result;
}

uint64_t sub_100013E30(uint64_t a1)
{
  v2 = sub_1000131C8();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100013E7C(uint64_t a1)
{
  v2 = sub_100013BD4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013F80()
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
  v28 = sub_100001E64(&qword_10006CD98, &qword_100051FC8);
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
  sub_1000135E4();
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

uint64_t sub_100014404()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = _SFJavaScriptCanOpenWindowsAutomaticallyDefaultsKey;
  [v3 setBool:(v1 & 1) == 0 forKey:_SFJavaScriptCanOpenWindowsAutomaticallyDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100014528()
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

  return _swift_task_switch(sub_100014668, 0, 0);
}

uint64_t sub_100014668()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100001E64(&qword_10006CCC8, qword_100051940);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006CDA0, &qword_10006CDA8, &qword_100051FF0);
  v7 = sub_10004BC3C();

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_100014858()
{
  result = qword_10006CDF0;
  if (!qword_10006CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CDF0);
  }

  return result;
}

uint64_t sub_1000148F0()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v17[0] = v17 - v2;
  v3 = sub_10004BC5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
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
  sub_1000090DC(v15, qword_10006E2D0);
  sub_1000090A4(v15, qword_10006E2D0);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004BC8C();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_100014C0C()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E2E8);
  sub_1000090A4(v0, qword_10006E2E8);
  return sub_10004BC4C();
}

uint64_t sub_100014C70()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E300);
  v1 = sub_1000090A4(v0, qword_10006E300);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100014D30()
{
  result = swift_getKeyPath();
  qword_10006E318 = result;
  return result;
}

uint64_t sub_100014D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006D0C0, &qword_1000531F8) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006D0C8, &qword_100053200);
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_100014F6C, 0, 0);
}

uint64_t sub_100014F6C()
{
  v1 = v0[10];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_100016310();
  *v3 = v0;
  v3[1] = sub_10001503C;
  v5 = v0[21];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001D288, 0, &type metadata for SearchEngineEntity, v4);
}

uint64_t sub_10001503C()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_100015138, 0, 0);
}

uint64_t sub_100015138()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_10004B85C();
  v3 = v0[3];
  v0[4] = v3;
  v0[23] = v3;
  sub_10004B85C();
  v4 = v0[5];
  v0[6] = v4;
  v0[24] = v4;
  if (qword_10006C268 != -1)
  {
    swift_once();
  }

  v5 = qword_10006E318;
  v0[25] = qword_10006E318;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[26] = v7;
  v8 = sub_1000020DC(&qword_10006D0B0, &qword_10006D0B8, &qword_1000531E8);
  *v7 = v0;
  v7[1] = sub_10001529C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 6, v5, &type metadata for SearchEngineOption, v8);
}

uint64_t sub_10001529C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v6 = sub_100015674;
  }

  else
  {
    v6 = sub_10001540C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001540C()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v12 = v0[20];
  v13 = v0[17];
  v4 = v0[14];
  v15 = v0[16];
  v16 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v14 = v0[9];
  sub_10004B85C();
  v0[8] = v0[7];
  v8 = sub_10004BBAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10004BBEC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100014858();
  sub_100016524();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100015674()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  (*(v0[19] + 8))(v0[21], v0[18]);

  v6 = v0[1];
  v7 = v0[27];

  return v6();
}

uint64_t sub_10001573C()
{
  v0 = sub_100001E64(&qword_10006D0D0, &qword_100053208);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C268 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100016524();
  sub_1000020DC(&qword_10006D0D8, &qword_10006D0D0, &qword_100053208);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000158B0(uint64_t *a1))()
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

uint64_t sub_100015924@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10004B85C();
  *a1 = v5;
  return result;
}

uint64_t (*sub_100015964(uint64_t *a1))()
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

unint64_t sub_100015A00()
{
  result = qword_10006CE08;
  if (!qword_10006CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE08);
  }

  return result;
}

unint64_t sub_100015A58()
{
  result = qword_10006CE10;
  if (!qword_10006CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE10);
  }

  return result;
}

uint64_t sub_100015B54(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100014D8C(a1, v5, v4);
}

uint64_t sub_100015C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001A9C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100015C48()
{
  result = qword_10006CE18;
  if (!qword_10006CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE18);
  }

  return result;
}

unint64_t sub_100015CA0()
{
  result = qword_10006CE20;
  if (!qword_10006CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE20);
  }

  return result;
}

uint64_t sub_100015D14()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v2 = [v1 defaultSearchEngineName];
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = v2;
    v5 = sub_10004C56C();
    v7 = v6;

    v8 = sub_10001ADBC(v5, v7);
    *v3 = v8;
  }

  else
  {
    sub_10004B68C();
    sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10004BA3C();
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_100015E84()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v2 = [v1 currentSearchEngineNames];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10004C5CC();

    v5 = (v4 + 40);
    v6 = -*(v4 + 16);
    v7 = -1;
    while (v6 + v7 != -1)
    {
      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v8 = v5 + 2;
      v9 = v0[6];
      v10 = *v5;
      v0[2] = *(v5 - 1);
      v0[3] = v10;

      sub_10004B81C();
      v11 = v0[5];
      sub_100002214();
      v12 = sub_10004C63C();

      v5 = v8;
      if (!v12)
      {
        v13 = v0[6];

        sub_10004B81C();
        v14 = v0[2];
        v15 = v0[3];
        v16 = sub_10004C55C();

        [v1 setDefaultSearchEngine:v16 forPrivateBrowsing:0];

        v17 = v0[1];
        goto LABEL_8;
      }
    }

    sub_10004B68C();
    sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10004BA3C();
    swift_willThrow();

    v17 = v0[1];
LABEL_8:

    v17();
  }

  else
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t sub_1000160B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_10001B040();
}

unint64_t sub_100016158()
{
  result = qword_10006CE28;
  if (!qword_10006CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE28);
  }

  return result;
}

uint64_t sub_1000161AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100016674();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100016260()
{
  result = qword_10006CE30;
  if (!qword_10006CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE30);
  }

  return result;
}

unint64_t sub_1000162B8()
{
  result = qword_10006CE38;
  if (!qword_10006CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE38);
  }

  return result;
}

unint64_t sub_100016310()
{
  result = qword_10006CE40;
  if (!qword_10006CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE40);
  }

  return result;
}

uint64_t sub_100016364(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100016674();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100016418(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100016674();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000164CC()
{
  result = qword_10006CE48;
  if (!qword_10006CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE48);
  }

  return result;
}

unint64_t sub_100016524()
{
  result = qword_10006CE50;
  if (!qword_10006CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE50);
  }

  return result;
}

uint64_t sub_1000165BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100016158();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100016674()
{
  result = qword_10006CE68;
  if (!qword_10006CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE68);
  }

  return result;
}

uint64_t sub_1000166C8()
{
  v0 = qword_10006CDD0;

  return v0;
}

unint64_t sub_100016704()
{
  result = qword_10006CE70;
  if (!qword_10006CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE70);
  }

  return result;
}

unint64_t sub_10001675C()
{
  result = qword_10006CE78;
  if (!qword_10006CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE78);
  }

  return result;
}

unint64_t sub_1000167B4()
{
  result = qword_10006CE80;
  if (!qword_10006CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE80);
  }

  return result;
}

unint64_t sub_10001680C()
{
  result = qword_10006CE88;
  if (!qword_10006CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE88);
  }

  return result;
}

unint64_t sub_100016864()
{
  result = qword_10006CE90;
  if (!qword_10006CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE90);
  }

  return result;
}

unint64_t sub_1000168BC()
{
  result = qword_10006CE98;
  if (!qword_10006CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CE98);
  }

  return result;
}

uint64_t sub_1000169A4(uint64_t a1)
{
  v2 = sub_100016310();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000169F4()
{
  result = qword_10006CEB0;
  if (!qword_10006CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEB0);
  }

  return result;
}

uint64_t sub_100016A48(uint64_t a1)
{
  v2 = sub_100015CA0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100016A94(uint64_t a1)
{
  v2 = sub_1000168BC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016AE4()
{
  result = qword_10006CEB8;
  if (!qword_10006CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEB8);
  }

  return result;
}

uint64_t sub_100016B7C()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v17[0] = v17 - v2;
  v3 = sub_10004BC5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
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
  sub_1000090DC(v15, qword_10006E320);
  sub_1000090A4(v15, qword_10006E320);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004BC8C();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_100016E94()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E338);
  sub_1000090A4(v0, qword_10006E338);
  return sub_10004BC4C();
}

uint64_t sub_100016EF8()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E350);
  v1 = sub_1000090A4(v0, qword_10006E350);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100016FB8()
{
  result = swift_getKeyPath();
  qword_10006E368 = result;
  return result;
}

uint64_t sub_100016FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006D090, &qword_100053188) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006D098, &qword_100053190);
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000171C0, 0, 0);
}

uint64_t sub_1000171C0()
{
  v1 = v0[10];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_100018754();
  *v3 = v0;
  v3[1] = sub_100017290;
  v5 = v0[21];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001D28C, 0, &type metadata for PrivateSearchEngineEntity, v4);
}

uint64_t sub_100017290()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_10001738C, 0, 0);
}

uint64_t sub_10001738C()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_10004B85C();
  v3 = v0[3];
  v0[4] = v3;
  v0[23] = v3;
  sub_10004B85C();
  v4 = v0[5];
  v0[6] = v4;
  v0[24] = v4;
  if (qword_10006C288 != -1)
  {
    swift_once();
  }

  v5 = qword_10006E368;
  v0[25] = qword_10006E368;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[26] = v7;
  v8 = sub_1000020DC(&qword_10006D070, &qword_10006D078, &qword_100053168);
  *v7 = v0;
  v7[1] = sub_1000174F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 6, v5, &type metadata for SearchEngineOption, v8);
}

uint64_t sub_1000174F0()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v6 = sub_10001D284;
  }

  else
  {
    v6 = sub_100017660;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100017660()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v12 = v0[20];
  v13 = v0[17];
  v4 = v0[14];
  v15 = v0[16];
  v16 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v14 = v0[9];
  sub_10004B85C();
  v0[8] = v0[7];
  v8 = sub_10004BBAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10004BBEC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100016AE4();
  sub_100018968();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000178CC()
{
  v0 = sub_100001E64(&qword_10006D0A0, &qword_100053198);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C288 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100018968();
  sub_1000020DC(&qword_10006D0A8, &qword_10006D0A0, &qword_100053198);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100017A40(uint64_t *a1))()
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
  return sub_10000950C;
}

uint64_t sub_100017AB4(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;

  sub_10004B86C();
}

uint64_t (*sub_100017AFC(uint64_t *a1))()
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

unint64_t sub_100017B98()
{
  result = qword_10006CED0;
  if (!qword_10006CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CED0);
  }

  return result;
}

unint64_t sub_100017BF0()
{
  result = qword_10006CED8;
  if (!qword_10006CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CED8);
  }

  return result;
}

uint64_t sub_100017D40@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v6 = sub_1000090A4(v5, a2);
  return sub_10000A490(v6, a3, &qword_10006C718, &qword_100050FD0);
}

uint64_t sub_100017DBC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_100016FE0(a1, v5, v4);
}

uint64_t sub_100017E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B350();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100017EB0()
{
  result = qword_10006CEE0;
  if (!qword_10006CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEE0);
  }

  return result;
}

unint64_t sub_100017F08()
{
  result = qword_10006CEE8;
  if (!qword_10006CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEE8);
  }

  return result;
}

uint64_t sub_100017F7C()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v2 = [v1 privateSearchEngineName];
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = v2;
    v5 = sub_10004C56C();
    v7 = v6;

    v8 = sub_10001ADBC(v5, v7);
    *v3 = v8;
  }

  else
  {
    sub_10004B68C();
    sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10004BA3C();
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1000180EC()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];

  v2 = [v1 currentSearchEngineNames];
  if (!v2)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v3 = sub_10004C5CC();

  v4 = (v3 + 40);
  v5 = -*(v3 + 16);
  v6 = -1;
  do
  {
    if (v5 + v6 == -1)
    {

      sub_10004B68C();
      sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
      swift_allocError();
      sub_10004BA3C();
      swift_willThrow();

      v20 = v0[1];
      goto LABEL_20;
    }

    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v7 = v4 + 2;
    v8 = v0[6];
    v9 = *v4;
    v0[2] = *(v4 - 1);
    v0[3] = v9;

    sub_10004B81C();
    v10 = v0[5];
    sub_100002214();
    v11 = sub_10004C63C();

    v4 = v7;
  }

  while (v11);

  v12 = [objc_opt_self() safari_browserSharedDefaults];
  v13 = sub_10004C55C();
  v14 = [v12 BOOLForKey:v13];

  v15 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v16 = [v15 defaultSearchEngineName];

  if (v16)
  {
    v17 = sub_10004C56C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v21 = v0[6];
  sub_10004B81C();
  if (v19)
  {
    if (v17 == v0[2] && v19 == v0[3])
    {

      goto LABEL_19;
    }

    v22 = v0[3];
    v23 = sub_10004C72C();

    if ((v23 & 1) == 0 && ((v14 ^ 1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v14)
    {
LABEL_18:
      v24 = sub_10004C55C();
      sub_10001B744(&_swiftEmptyArrayStorage);
      isa = sub_10004C4DC().super.isa;

      [v12 safari_setBool:0 forKey:v24 andNotifyWithUserInfo:isa];
    }
  }

LABEL_19:
  v26 = v0[6];
  sub_10004B81C();
  v27 = v0[2];
  v28 = v0[3];
  v29 = sub_10004C55C();

  [v1 setDefaultSearchEngine:v29 forPrivateBrowsing:1];

  v20 = v0[1];
LABEL_20:

  v20();
}

uint64_t sub_1000184F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_10001C020();
}

unint64_t sub_10001859C()
{
  result = qword_10006CEF0;
  if (!qword_10006CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEF0);
  }

  return result;
}

uint64_t sub_1000185F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100018AB8();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000186A4()
{
  result = qword_10006CEF8;
  if (!qword_10006CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CEF8);
  }

  return result;
}

unint64_t sub_1000186FC()
{
  result = qword_10006CF00;
  if (!qword_10006CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF00);
  }

  return result;
}

unint64_t sub_100018754()
{
  result = qword_10006CF08;
  if (!qword_10006CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF08);
  }

  return result;
}

uint64_t sub_1000187A8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100018AB8();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10001885C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100018AB8();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100018910()
{
  result = qword_10006CF10;
  if (!qword_10006CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF10);
  }

  return result;
}

unint64_t sub_100018968()
{
  result = qword_10006CF18;
  if (!qword_10006CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF18);
  }

  return result;
}

uint64_t sub_100018A00(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001859C();
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100018AB8()
{
  result = qword_10006CF30;
  if (!qword_10006CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF30);
  }

  return result;
}

uint64_t sub_100018B0C()
{
  v0 = qword_10006CDE0;

  return v0;
}

unint64_t sub_100018B48()
{
  result = qword_10006CF38;
  if (!qword_10006CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF38);
  }

  return result;
}

unint64_t sub_100018BA0()
{
  result = qword_10006CF40;
  if (!qword_10006CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF40);
  }

  return result;
}

unint64_t sub_100018BF8()
{
  result = qword_10006CF48;
  if (!qword_10006CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF48);
  }

  return result;
}

unint64_t sub_100018C50()
{
  result = qword_10006CF50;
  if (!qword_10006CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF50);
  }

  return result;
}

unint64_t sub_100018CA8()
{
  result = qword_10006CF58;
  if (!qword_10006CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF58);
  }

  return result;
}

unint64_t sub_100018D00()
{
  result = qword_10006CF60;
  if (!qword_10006CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF60);
  }

  return result;
}

uint64_t sub_100018D6C@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = sub_10004B80C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100018E2C(uint64_t a1)
{
  v2 = sub_100018754();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100018E7C()
{
  result = qword_10006CF78;
  if (!qword_10006CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF78);
  }

  return result;
}

uint64_t sub_100018ED0(uint64_t a1)
{
  v2 = sub_100017F08();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100018F1C(uint64_t a1)
{
  v2 = sub_100018D00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100018F6C()
{
  result = qword_10006CF80;
  if (!qword_10006CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF80);
  }

  return result;
}

unint64_t sub_100018FC4()
{
  result = qword_10006CF88;
  if (!qword_10006CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF88);
  }

  return result;
}

unint64_t sub_10001901C()
{
  result = qword_10006CF90;
  if (!qword_10006CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF90);
  }

  return result;
}

uint64_t sub_100019070()
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
  sub_1000090DC(v15, qword_10006E370);
  sub_1000090A4(v15, qword_10006E370);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t sub_100019360()
{
  v0 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10004C53C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C52C();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10004C51C(v16);
  sub_10004B81C();
  sub_10004C50C(v15);

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10004C51C(v17);
  sub_10004BC6C();
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = sub_10004BA7C();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return sub_10004BAAC();
}

uint64_t sub_1000195D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009550;

  return sub_10001CE38(a1);
}

uint64_t sub_100019678(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_10001C92C();
}

unint64_t sub_10001971C()
{
  result = qword_10006CF98;
  if (!qword_10006CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CF98);
  }

  return result;
}

uint64_t sub_100019770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1000094F4;

  return (sub_10001C330)(a2, a3);
}

unint64_t sub_10001982C()
{
  result = qword_10006CFA0;
  if (!qword_10006CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFA0);
  }

  return result;
}

unint64_t sub_100019880()
{
  result = qword_10006CFA8;
  if (!qword_10006CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFA8);
  }

  return result;
}

uint64_t sub_100019918(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100001FB0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019994(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001971C();
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100019A4C()
{
  result = qword_10006CFC0;
  if (!qword_10006CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFC0);
  }

  return result;
}

unint64_t sub_100019AA4()
{
  result = qword_10006CFC8;
  if (!qword_10006CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFC8);
  }

  return result;
}

unint64_t sub_100019AFC()
{
  result = qword_10006CFD0;
  if (!qword_10006CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFD0);
  }

  return result;
}

unint64_t sub_100019B58()
{
  result = qword_10006CFD8;
  if (!qword_10006CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFD8);
  }

  return result;
}

unint64_t sub_100019BB0()
{
  result = qword_10006CFE0;
  if (!qword_10006CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFE0);
  }

  return result;
}

unint64_t sub_100019C0C()
{
  result = qword_10006CFE8;
  if (!qword_10006CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006CFE8);
  }

  return result;
}

uint64_t sub_100019C60@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10004B81C();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_100019CD4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_100019DC0(uint64_t a1)
{
  v2 = sub_10001901C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100019E10()
{
  result = qword_10006D000;
  if (!qword_10006D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D000);
  }

  return result;
}

uint64_t sub_100019E6C(uint64_t a1)
{
  v2 = sub_100019C0C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001A048(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004C74C();
  sub_10004C59C();

  v5 = sub_10004C76C();

  return sub_10001A37C(a1 & 1, v5);
}

unint64_t sub_10001A0E4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004C74C();
  sub_10004C59C();

  v5 = sub_10004C76C();

  return sub_10001A4B0(a1 & 1, v5);
}

unint64_t sub_10001A1A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004C66C(*(v2 + 40));

  return sub_10001A614(a1, v4);
}

unint64_t sub_10001A1E8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10004C74C();
  sub_10004C59C();

  v4 = sub_10004C76C();

  return sub_10001A6DC(a1, v4);
}

unint64_t sub_10001A2D0(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004C74C();
  sub_10004C59C();

  v5 = sub_10004C76C();

  return sub_10001A87C(a1 & 1, v5);
}

unint64_t sub_10001A37C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6D6F74746F62;
    }

    else
    {
      v6 = 7368564;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6D6F74746F62 : 7368564;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10004C72C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001A4B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x54746361706D6F63;
    }

    else
    {
      v6 = 0x6574617261706573;
    }

    if (a1)
    {
      v7 = 0xED00007261426261;
    }

    else
    {
      v7 = 0xEE00726142626154;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x54746361706D6F63 : 0x6574617261706573;
      v9 = *(*(v2 + 48) + v4) ? 0xED00007261426261 : 0xEE00726142626154;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10004C72C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001A614(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001D1C4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10004C67C();
      sub_10001D220(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001A6DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x6B656557656E6FLL : 0x68746E6F4D656E6FLL;
      v8 = v6 == 2 ? 0xE700000000000000 : 0xE800000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x796144656E6FLL : 0x796C6C61756E616DLL;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6B656557656E6FLL : 0x68746E6F4D656E6FLL;
      v14 = v5 == 2 ? 0xE700000000000000 : 0xE800000000000000;
      v15 = v5 ? 0x796144656E6FLL : 0x796C6C61756E616DLL;
      v16 = v5 ? 0xE600000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_10004C72C();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001A87C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x62615477656ELL;
    }

    else
    {
      v6 = 0x72676B6361426E69;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xEC000000646E756FLL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x62615477656ELL : 0x72676B6361426E69;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xEC000000646E756FLL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10004C72C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10001A9C8()
{
  v30 = sub_10004BAFC();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v28 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006D048, &unk_100053120);
  sub_10004BC4C();
  v27 = *(v15 + 56);
  v27(v13, 1, 1, v14);
  v31 = 0;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = v7;
  v18(v7, 1, 1, v17);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v29;
  v20(v29);
  sub_100016310();
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006D040, &qword_100053118);
  sub_10004BC4C();
  v27(v13, 1, 1, v28);
  v31 = 0;
  v18(v9, 1, 1, v17);
  v18(v19, 1, 1, v17);
  v24(v21, v25, v30);
  sub_10001901C();
  sub_10004B88C();
  return v26;
}

uint64_t sub_10001ADBC(uint64_t a1, uint64_t a2)
{
  v16[0] = a2;
  v3 = sub_10004BC5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C54C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004BC7C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100001E64(&qword_10006D060, &qword_100053138);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004BC8C();
  v14 = sub_10004B83C();
  v16[1] = a1;
  v16[2] = v16[0];

  sub_10004B82C();

  return v14;
}

uint64_t sub_10001B040()
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

  return _swift_task_switch(sub_10001B180, 0, 0);
}

uint64_t sub_10001B180()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100001E64(&qword_10006CE00, qword_100052060);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006D0B0, &qword_10006D0B8, &qword_1000531E8);
  sub_10001901C();
  v7 = sub_10004BC2C();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10001B350()
{
  v30 = sub_10004BAFC();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v28 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006D038, &qword_100053110);
  sub_10004BC4C();
  v27 = *(v15 + 56);
  v27(v13, 1, 1, v14);
  v31 = 0;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = v7;
  v18(v7, 1, 1, v17);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v29;
  v20(v29);
  sub_100018754();
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006D040, &qword_100053118);
  sub_10004BC4C();
  v27(v13, 1, 1, v28);
  v31 = 0;
  v18(v9, 1, 1, v17);
  v18(v19, 1, 1, v17);
  v24(v21, v25, v30);
  sub_10001901C();
  sub_10004B88C();
  return v26;
}

unint64_t sub_10001B744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E64(&qword_10006D080, &qword_100053170);
    v3 = sub_10004C70C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A490(v4, v13, &qword_10006D088, &qword_100053178);
      result = sub_10001A1A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10001D1B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001B880(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006D110, &qword_100053268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001E64(&qword_10006D118, &unk_100053270);
    v8 = sub_10004C70C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A490(v10, v6, &qword_10006D110, &qword_100053268);
      v12 = *v6;
      result = sub_10001A048(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004BABC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001BA68(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006D100, &qword_100053258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001E64(&qword_10006D108, &qword_100053260);
    v8 = sub_10004C70C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A490(v10, v6, &qword_10006D100, &qword_100053258);
      v12 = *v6;
      result = sub_10001A1E8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004BABC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001BC50(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006D0F0, &unk_1000560C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001E64(&qword_10006D0F8, &qword_100053250);
    v8 = sub_10004C70C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A490(v10, v6, &qword_10006D0F0, &unk_1000560C0);
      v12 = *v6;
      result = sub_10001A2D0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004BABC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001BE38(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006D0E0, &unk_100058480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001E64(&qword_10006D0E8, &unk_100053240);
    v8 = sub_10004C70C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A490(v10, v6, &qword_10006D0E0, &unk_100058480);
      v12 = *v6;
      result = sub_10001A0E4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004BABC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001C020()
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

  return _swift_task_switch(sub_10001C160, 0, 0);
}

uint64_t sub_10001C160()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100001E64(&qword_10006CEC8, qword_100052630);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004BC9C();
  sub_1000020DC(&qword_10006D070, &qword_10006D078, &qword_100053168);
  sub_10001901C();
  v7 = sub_10004BC2C();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10001C330(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_10004BC5C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_10004BD8C() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(sub_10004C54C() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(sub_10004BC7C() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10001C474, 0, 0);
}

void sub_10001C474()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v2 = [v1 currentSearchEngineNames];
  if (v2)
  {
    v40 = v1;
    v3 = v2;
    v4 = sub_10004C5CC();

    v5 = *(v4 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v7 = 0;
      v8 = -v5;
      v9 = v4 + 40;
      do
      {
        v41 = v6;
        v10 = (v9 + 16 * v7++);
        while (1)
        {
          if ((v7 - 1) >= *(v4 + 16))
          {
            __break(1u);
            return;
          }

          v12 = v0[8];
          v11 = v0[9];
          v13 = *(v10 - 1);
          v14 = *v10;
          v0[2] = v13;
          v0[3] = v14;
          v0[4] = v12;
          v0[5] = v11;
          sub_100002214();

          if (sub_10004C64C())
          {
            break;
          }

          ++v7;
          v10 += 2;
          if (v8 + v7 == 1)
          {
            v6 = v41;
            goto LABEL_18;
          }
        }

        v15 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100038530(0, v41[2] + 1, 1);
          v15 = v41;
        }

        v17 = v15[2];
        v16 = v15[3];
        if (v17 >= v16 >> 1)
        {
          sub_100038530((v16 > 1), v17 + 1, 1);
          v15 = v41;
        }

        v15[2] = v17 + 1;
        v18 = &v15[2 * v17];
        v18[4] = v13;
        v18[5] = v14;
        v6 = v15;
        v9 = v4 + 40;
      }

      while (v8 + v7);
    }

LABEL_18:

    v24 = v6[2];
    if (v24)
    {
      v25 = v0[11];
      sub_10004C6BC();
      sub_100001E64(&qword_10006D060, &qword_100053138);
      v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v42 = (v25 + 104);
      v26 = v6 + 5;
      do
      {
        v28 = v0[14];
        v27 = v0[15];
        v29 = v0[12];
        v30 = v0[13];
        v31 = v0[10];
        v32 = *(v26 - 1);
        v33 = *v26;

        sub_10004C4FC();
        sub_10004BD7C();
        (*v42)(v29, v43, v31);
        sub_10004BC8C();
        sub_10004B83C();
        v0[6] = v32;
        v0[7] = v33;

        sub_10004B82C();

        sub_10004C69C();
        v34 = _swiftEmptyArrayStorage[2];
        sub_10004C6CC();
        sub_10004C6DC();
        sub_10004C6AC();
        v26 += 2;
        --v24;
      }

      while (v24);
    }

    else
    {
    }

    v36 = v0[14];
    v35 = v0[15];
    v38 = v0[12];
    v37 = v0[13];

    v39 = v0[1];

    v39(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = v0[14];
    v20 = v0[15];
    v22 = v0[12];
    v21 = v0[13];
    sub_10004B6BC();
    sub_10001CDF0(&qword_10006D058, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004B69C();
    swift_willThrow();

    v23 = v0[1];

    v23();
  }
}

uint64_t sub_10001C92C()
{
  v1 = sub_10004BC5C();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v4 = *(*(sub_10004BD8C() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v5 = *(*(sub_10004C54C() - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v6 = *(*(sub_10004BC7C() - 8) + 64) + 15;
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001CA6C, 0, 0);
}

uint64_t sub_10001CA6C()
{
  v1 = [objc_allocWithZone(SFSearchEngineControllerWrapper) init];
  v2 = [v1 currentSearchEngineNames];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10004C5CC();

    v5 = *(v4 + 16);
    if (v5)
    {
      v27 = v1;
      v6 = v0[5];
      sub_10004C6BC();
      sub_100001E64(&qword_10006D060, &qword_100053138);
      v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v28 = (v6 + 104);
      v7 = (v4 + 40);
      do
      {
        v9 = v0[8];
        v8 = v0[9];
        v10 = v0[6];
        v11 = v0[7];
        v12 = v0[4];
        v13 = *(v7 - 1);
        v14 = *v7;

        sub_10004C4FC();
        sub_10004BD7C();
        (*v28)(v10, v29, v12);
        sub_10004BC8C();
        sub_10004B83C();
        v0[2] = v13;
        v0[3] = v14;

        sub_10004B82C();

        sub_10004C69C();
        v15 = _swiftEmptyArrayStorage[2];
        sub_10004C6CC();
        sub_10004C6DC();
        sub_10004C6AC();
        v7 += 2;
        --v5;
      }

      while (v5);
    }

    else
    {
    }

    v23 = v0[8];
    v22 = v0[9];
    v25 = v0[6];
    v24 = v0[7];

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    sub_10004B68C();
    sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10004BA2C();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10001CDF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001CE38(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10004BC5C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_10004BD8C() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = *(*(sub_10004C54C() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = *(*(sub_10004BC7C() - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001CF7C, 0, 0);
}

uint64_t sub_10001CF7C()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    sub_10004C6BC();
    sub_100001E64(&qword_10006D060, &qword_100053138);
    v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v19 = (v3 + 104);
    v4 = (v1 + 40);
    do
    {
      v6 = v0[9];
      v5 = v0[10];
      v8 = v0[7];
      v7 = v0[8];
      v9 = v0[5];
      v10 = *(v4 - 1);
      v11 = *v4;

      sub_10004C4FC();
      sub_10004BD7C();
      (*v19)(v8, v20, v9);
      sub_10004BC8C();
      sub_10004B83C();
      v0[2] = v10;
      v0[3] = v11;

      sub_10004B82C();

      sub_10004C69C();
      v12 = _swiftEmptyArrayStorage[2];
      sub_10004C6CC();
      sub_10004C6DC();
      sub_10004C6AC();
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[7];
  v15 = v0[8];

  v17 = v0[1];

  return v17(_swiftEmptyArrayStorage);
}

_OWORD *sub_10001D1B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001D2D4()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v18 = &v16 - v2;
  v17 = sub_10004BC5C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BD8C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C54C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004BC7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10004BBDC();
  sub_1000090DC(v14, qword_10006E388);
  sub_1000090A4(v14, qword_10006E388);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_10004BC8C();
  (*(v12 + 56))(v18, 1, 1, v11);
  return sub_10004BBCC();
}

uint64_t sub_10001D5E8()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E3A0);
  sub_1000090A4(v0, qword_10006E3A0);
  return sub_10004BC4C();
}

uint64_t sub_10001D64C()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E3B8);
  v1 = sub_1000090A4(v0, qword_10006E3B8);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001D70C()
{
  result = swift_getKeyPath();
  qword_10006E3D0 = result;
  return result;
}

uint64_t sub_10001D734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001E64(&qword_10006C6E8, &unk_100050F80) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001E64(&qword_10006C6F0, &qword_100052010) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001E64(&qword_10006D2A0, &qword_100053C40) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B7DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001E64(&qword_10006D2A8, &qword_100053C48);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001D914, 0, 0);
}

uint64_t sub_10001D914()
{
  v1 = v0[8];
  sub_10004B85C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10001FE88();
  *v3 = v0;
  v3[1] = sub_10001D9E4;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000218F8, 0, &type metadata for TabBarLayoutEntity, v4);
}

uint64_t sub_10001D9E4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10001DAE0, 0, 0);
}

uint64_t sub_10001DAE0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10004B85C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C2B0 != -1)
  {
    swift_once();
  }

  v4 = qword_10006E3D0;
  *(v0 + 176) = qword_10006E3D0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020DC(&qword_10006D290, &qword_10006D298, &qword_100053C28);
  *v6 = v0;
  v6[1] = sub_10001DC40;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for CapsuleLayoutStyle, v7);
}

uint64_t sub_10001DC40()
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
    v5 = sub_10001DD94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001DD94()
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
  sub_10001FB24();
  sub_10001FF38();
  sub_10004B7AC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001E000()
{
  v0 = sub_100001E64(&qword_10006D2B0, &qword_100053C50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10006C2B0 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_10001FF38();
  sub_1000020DC(&qword_10006D2B8, &qword_10006D2B0, &qword_100053C50);
  sub_10004BA4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10001E174(uint64_t *a1))()
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

uint64_t (*sub_10001E1E8(uint64_t *a1))()
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

uint64_t sub_10001E25C()
{
  if (qword_10006C2B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001E2F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C2A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E3B8);

  return sub_100009450(v3, a1);
}

uint64_t sub_10001E374(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10001D734(a1, v5, v4);
}

uint64_t sub_10001E420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020D4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001E484()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_10004C60C();
  v0[5] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_10001E52C, v2, v1);
}

uint64_t sub_10001E52C()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = [v2 currentDevice];

  return _swift_task_switch(sub_10001E5B4, 0, 0);
}

uint64_t sub_10001E5B4()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = sub_10004C5FC();
  v3 = sub_10004C5EC();

  return _swift_task_switch(sub_10001E640, v3, v2);
}

uint64_t sub_10001E640()
{
  v2 = v0[6];
  v1 = v0[7];

  v0[8] = [v2 userInterfaceIdiom];

  return _swift_task_switch(sub_10001E6C0, 0, 0);
}

uint64_t sub_10001E6C0()
{
  if (*(v0 + 64) == 1)
  {
    goto LABEL_4;
  }

  v1 = [objc_opt_self() safari_browserDefaults];
  v2 = [v1 integerForKey:SFPreferredCapsuleLayoutStyleKey];

  if (v2 == 1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
LABEL_4:
    v3 = 0;
LABEL_5:
    **(v0 + 16) = v3;
    v4 = *(v0 + 8);
    goto LABEL_6;
  }

  sub_10004B68C();
  sub_10001CDF0(&qword_10006D068, &type metadata accessor for _PrebuiltAppIntentError);
  swift_allocError();
  sub_10004BA3C();
  swift_willThrow();
  v4 = *(v0 + 8);
LABEL_6:

  return v4();
}

uint64_t sub_10001E80C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000094C4;

  return sub_10002114C(v3);
}

uint64_t sub_10001E8A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_1000212C0();
}

uint64_t sub_10001E944(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100020018();
  *v5 = v2;
  v5[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_10001E9F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100020018();
  *v6 = v2;
  v6[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10001EAA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100020018();
  *v5 = v2;
  v5[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_10001EB58(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001FD80();
  *v6 = v2;
  v6[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001EC0C()
{
  v0 = qword_10006D120;

  return v0;
}

uint64_t sub_10001EC44@<X0>(uint64_t *a1@<X8>)
{
  sub_10001FD28();
  result = sub_10004B80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001ECBC(uint64_t a1)
{
  v2 = sub_10001FE88();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001ED08(uint64_t a1)
{
  v2 = sub_10001FD28();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10001ED54(uint64_t a1)
{
  v2 = sub_100020228();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t CapsuleLayoutStyle.id.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_10001EDCC()
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
  sub_1000090DC(v15, static CapsuleLayoutStyle.typeDisplayRepresentation);
  sub_1000090A4(v15, static CapsuleLayoutStyle.typeDisplayRepresentation);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004BC9C();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004BBCC();
}

uint64_t CapsuleLayoutStyle.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10006C2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();

  return sub_1000090A4(v0, static CapsuleLayoutStyle.typeDisplayRepresentation);
}

uint64_t static CapsuleLayoutStyle.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C2B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static CapsuleLayoutStyle.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CapsuleLayoutStyle.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10006C2B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static CapsuleLayoutStyle.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CapsuleLayoutStyle.typeDisplayRepresentation.modify())()
{
  if (qword_10006C2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();
  sub_1000090A4(v0, static CapsuleLayoutStyle.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}