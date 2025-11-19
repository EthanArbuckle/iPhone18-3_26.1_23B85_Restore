uint64_t sub_10000108C()
{
  v0 = sub_1000012E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000012D0();
  sub_100001220();
  sub_100001300();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000011A0();
  sub_1000012F0();
  return 0;
}

unint64_t sub_1000011A0()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001220()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_1000012E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001278()
{
  sub_1000012E0();
  sub_100001220();
  return swift_getOpaqueTypeConformance2();
}