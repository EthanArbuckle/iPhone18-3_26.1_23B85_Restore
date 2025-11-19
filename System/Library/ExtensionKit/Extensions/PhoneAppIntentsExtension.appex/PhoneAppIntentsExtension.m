uint64_t sub_100000FB8(uint64_t a1)
{
  v2 = sub_10000110C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001064();
  sub_1000012C4();
  return 0;
}

unint64_t sub_100001064()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_10000110C()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001170()
{
  v0 = sub_1000012E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000012B4();
  v5 = sub_1000012D4();
  v6 = sub_1000012F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PhoneAppIntentsExtension initialized", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}