uint64_t sub_100000E78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100001038();
}

uint64_t sub_100000EAC()
{
  v0 = sub_100001048();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GenerativeExperiencesSafetyInferenceProviderService();
  sub_100000F88();
  sub_100001028();
  return 0;
}

uint64_t type metadata accessor for GenerativeExperiencesSafetyInferenceProviderService()
{
  result = qword_1000080E8;
  if (!qword_1000080E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100000F88()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    type metadata accessor for GenerativeExperiencesSafetyInferenceProviderService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}