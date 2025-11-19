uint64_t sub_100001500()
{
  v27 = 0;
  v35 = 0;
  v20 = 0;
  v21 = sub_100001DFC();
  v22 = *(v21 - 8);
  v23 = v22;
  v0 = *(v22 + 64);
  __chkstk_darwin();
  v24 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v24;
  sub_100001DDC();
  v29 = sub_100001DEC();
  v25 = v29;
  v28 = sub_100001E1C();
  v26 = v28;
  sub_100001AA4(&qword_100008000, &qword_100001FF0);
  v30 = sub_100001E5C();
  if (os_log_type_enabled(v29, v28))
  {
    v2 = v20;
    v11 = sub_100001E4C();
    v7 = v11;
    v8 = sub_100001AA4(&qword_100008008, &qword_100001FF8);
    v9 = 0;
    v12 = sub_100001988(0);
    v10 = v12;
    v13 = sub_100001988(v9);
    v34 = v11;
    v33 = v12;
    v32 = v13;
    v14 = 0;
    v15 = &v34;
    sub_1000019DC(0, &v34);
    sub_1000019DC(v14, v15);
    v31 = v30;
    v16 = &v5;
    __chkstk_darwin();
    v17 = &v5 - 6;
    *(&v5 - 4) = v3;
    *(&v5 - 3) = &v33;
    *(&v5 - 2) = &v32;
    v18 = sub_100001AA4(&qword_100008010, &qword_100002000);
    sub_100001B40();
    sub_100001E0C();
    v19 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v25, v26, "Initializing MailShortcutsExtension", v7, 2u);
      v5 = 0;
      sub_100001A3C(v10);
      sub_100001A3C(v13);
      sub_100001E2C();

      v6 = v19;
    }
  }

  else
  {

    v6 = v20;
  }

  return (*(v23 + 8))(v24, v21);
}

uint64_t sub_100001988(uint64_t a1)
{
  if (a1)
  {
    return sub_100001E4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000019DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_100001A3C(uint64_t a1)
{
  if (a1)
  {
    sub_100001E3C();
    sub_100001E2C();
  }
}

uint64_t sub_100001AA4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t sub_100001B40()
{
  v2 = qword_100008018;
  if (!qword_100008018)
  {
    sub_100001BC8(&qword_100008010, &qword_100002000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008018);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100001BC8(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t sub_100001C3C()
{
  v2 = qword_100008020;
  if (!qword_100008020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100001CD0()
{
  v2 = qword_100008028;
  if (!qword_100008028)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008028);
    return WitnessTable;
  }

  return v2;
}