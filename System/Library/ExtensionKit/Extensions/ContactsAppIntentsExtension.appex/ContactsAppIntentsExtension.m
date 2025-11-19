uint64_t sub_1000012E0(uint64_t a1)
{
  v2 = sub_100001468();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

id sub_10000132C()
{
  v0 = objc_opt_self();

  return [v0 setupAppIntentDependencies];
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000013C0();
  sub_1000014DC();
  return 0;
}

unint64_t sub_1000013C0()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_100001468()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}