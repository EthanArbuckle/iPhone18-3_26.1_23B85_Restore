uint64_t sub_1000013C0(uint64_t a1)
{
  v2 = sub_100001578();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_100001410()
{
  sub_1000015EC(&qword_100008010, "V");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100001720;
  v1 = sub_1000016AC();
  v2 = sub_100001634();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000014D0();
  sub_10000169C();
  return 0;
}

unint64_t sub_1000014D0()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001578()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_1000015EC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001634()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    sub_1000016AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}