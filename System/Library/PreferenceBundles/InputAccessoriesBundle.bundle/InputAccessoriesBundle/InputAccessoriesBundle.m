unint64_t sub_1088()
{
  result = qword_8128;
  if (!qword_8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_10F8()
{
  sub_13A8();
  sub_1398();
  sub_1388();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1368();
  sub_1348();
  sub_1358();
}

uint64_t sub_11B4()
{
  v0 = sub_1240(&qword_8130, &unk_1570);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();

  return SettingsPane.init(makeContent:)(sub_10F8, 0, v0, OpaqueTypeConformance2);
}

uint64_t sub_1240(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_129C()
{
  result = qword_8138;
  if (!qword_8138)
  {
    sub_1300(&unk_8140, &unk_15A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8138);
  }

  return result;
}

uint64_t sub_1300(uint64_t *a1, uint64_t *a2)
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