uint64_t sub_100001244()
{
  v0 = sub_1000014CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000014BC();
  sub_1000013D8();
  sub_1000014EC();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001358();
  sub_1000014DC();
  return 0;
}

unint64_t sub_100001358()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

unint64_t sub_1000013D8()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    sub_1000014CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}

uint64_t sub_100001430()
{
  sub_1000014CC();
  sub_1000013D8();
  return swift_getOpaqueTypeConformance2();
}