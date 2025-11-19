uint64_t sub_1220@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_17D8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_17B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1848();
  sub_1838();
  sub_1828();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_174C();
  sub_17C8();
  sub_17A8();
  sub_17E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v16}];
  v10 = sub_17F8();
  v12 = v11;
  v14 = v13;
  sub_14F4();
  sub_1808();
  sub_1798(v10, v12, v14 & 1);

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_14AC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_14F4()
{
  result = qword_80A0;
  if (!qword_80A0)
  {
    sub_17B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A0);
  }

  return result;
}

unint64_t sub_1550()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_15C0()
{
  sub_14AC(&qword_8098, qword_19A0);
  sub_17B8();
  sub_14F4();
  swift_getOpaqueTypeConformance2();
  return sub_1818();
}

unint64_t sub_16A0()
{
  result = qword_8148;
  if (!qword_8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_1704(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_174C()
{
  result = qword_8158;
  if (!qword_8158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8158);
  }

  return result;
}

uint64_t sub_1798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}