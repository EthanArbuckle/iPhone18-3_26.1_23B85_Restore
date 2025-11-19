int main(int argc, const char **argv, const char **envp)
{
  sub_100001174();
  static App.main()();
  return 0;
}

unint64_t sub_100001174()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

unint64_t sub_1000011F8()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    sub_10000125C(&qword_1000080A0, qword_1000013F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}

uint64_t sub_10000125C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}