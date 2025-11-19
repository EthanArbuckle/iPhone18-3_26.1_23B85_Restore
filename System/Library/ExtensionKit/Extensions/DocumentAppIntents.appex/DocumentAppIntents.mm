uint64_t sub_100001650(uint64_t a1)
{
  v2 = sub_100001868();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

unint64_t sub_1000016A0()
{
  sub_1000018DC(&qword_100008018, "V");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100001A80;
  v1 = sub_10000199C();
  result = sub_100001924();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_100008028 = v0;
  return result;
}

uint64_t sub_100001708()
{
  if (qword_100008000 != -1)
  {
    swift_once();
  }

  v1 = qword_100008028;

  return _swift_bridgeObjectRetain(v1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000017C0();
  sub_10000198C();
  return 0;
}

unint64_t sub_1000017C0()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_100001868()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_1000018DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001924()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    sub_10000199C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008020);
  }

  return result;
}