unint64_t sub_14A0()
{
  result = qword_8128;
  if (!qword_8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_1510()
{
  v1 = *v0;
  v2 = sub_17CC();
  v3 = sub_1684();

  return SettingsPane.init(makeContent:)(sub_15D4, v1, v2, v3);
}

uint64_t sub_158C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_17AC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_179C();
  *a1 = result;
  return result;
}

uint64_t sub_15D4()
{
  sub_180C();
  v0 = sub_17FC();
  sub_17EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_17BC();

  return _swift_release(v0);
}

unint64_t sub_1684()
{
  result = qword_8130;
  if (!qword_8130)
  {
    sub_17CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8130);
  }

  return result;
}

unint64_t sub_16F0()
{
  result = qword_8138;
  if (!qword_8138)
  {
    sub_1754(&unk_8140, &qword_1A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8138);
  }

  return result;
}

uint64_t sub_1754(uint64_t *a1, uint64_t *a2)
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