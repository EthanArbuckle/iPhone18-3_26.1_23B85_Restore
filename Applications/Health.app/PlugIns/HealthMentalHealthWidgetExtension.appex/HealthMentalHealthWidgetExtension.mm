uint64_t sub_10000116C()
{
  v0 = sub_1000013F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000013E4();
  sub_100001300();
  sub_100001414();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001280();
  sub_100001404();
  return 0;
}

unint64_t sub_100001280()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

unint64_t sub_100001300()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    sub_1000013F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}

uint64_t sub_100001358()
{
  sub_1000013F4();
  sub_100001300();
  return swift_getOpaqueTypeConformance2();
}