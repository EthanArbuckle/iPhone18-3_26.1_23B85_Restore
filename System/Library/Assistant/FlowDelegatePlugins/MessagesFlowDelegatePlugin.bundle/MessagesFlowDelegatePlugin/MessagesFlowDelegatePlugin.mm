uint64_t type metadata accessor for MessagesFlowDelegatePlugin()
{
  result = qword_80E0;
  if (!qword_80E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_129C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1308();
}

uint64_t sub_12D0()
{
  v0 = sub_1318();

  return _swift_deallocClassInstance(v0, 16, 7);
}