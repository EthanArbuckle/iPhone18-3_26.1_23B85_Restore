uint64_t sub_100000FB0(uint64_t a1)
{
  v2 = sub_100001120();

  return AppExtensionManager.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000105C();
  sub_100001194();
  return 0;
}

unint64_t sub_10000105C()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_1000010C8()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_100001174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_100001120()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}