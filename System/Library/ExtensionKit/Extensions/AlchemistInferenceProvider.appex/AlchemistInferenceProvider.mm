uint64_t sub_100000FA8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100001168();
}

uint64_t sub_100000FDC()
{
  v0 = sub_100001178();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AlchemistInferenceProviderService();
  sub_1000010B8();
  sub_100001158();
  return 0;
}

uint64_t type metadata accessor for AlchemistInferenceProviderService()
{
  result = qword_1000080E8;
  if (!qword_1000080E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000010B8()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    type metadata accessor for AlchemistInferenceProviderService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}