id sub_100001170@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(HKHealthStore) init];
  *a1 = result;
  return result;
}

uint64_t sub_1000011AC(uint64_t a1)
{
  v2 = sub_1000013D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000011F8()
{
  sub_1000016BC();
  sub_1000016AC();
  sub_1000015A4();
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  sub_10000169C();

  return sub_1000015F0(v1);
}

uint64_t sub_100001278()
{
  sub_100001448();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100001820;
  v1 = sub_1000016DC();
  v2 = sub_10000154C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000132C();
  sub_1000016EC();
  return 0;
}

unint64_t sub_10000132C()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_1000013D4()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void sub_100001448()
{
  if (!qword_100008018)
  {
    sub_1000014A0();
    v0 = sub_10000170C();
    if (!v1)
    {
      atomic_store(v0, &qword_100008018);
    }
  }
}

unint64_t sub_1000014A0()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    sub_1000014E8();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_100008020);
  }

  return result;
}

unint64_t sub_1000014E8()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

unint64_t sub_10000154C()
{
  result = qword_100008030;
  if (!qword_100008030)
  {
    sub_1000016DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008030);
  }

  return result;
}

unint64_t sub_1000015A4()
{
  result = qword_100008038;
  if (!qword_100008038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008038);
  }

  return result;
}

uint64_t sub_1000015F0(uint64_t a1)
{
  sub_10000164C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000164C()
{
  if (!qword_100008040)
  {
    v0 = sub_1000016FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100008040);
    }
  }
}