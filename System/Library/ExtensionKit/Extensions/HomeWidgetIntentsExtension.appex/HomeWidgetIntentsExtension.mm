uint64_t sub_1000013D0(uint64_t a1)
{
  v2 = sub_100001524();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000147C();
  sub_1000015DC();
  return 0;
}

unint64_t sub_10000147C()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

unint64_t sub_100001524()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}