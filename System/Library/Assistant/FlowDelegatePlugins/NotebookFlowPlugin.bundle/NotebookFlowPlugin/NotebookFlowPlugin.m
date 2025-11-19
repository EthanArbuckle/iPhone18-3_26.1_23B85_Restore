uint64_t sub_1668()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1974();
  return v3;
}

uint64_t sub_16D8()
{
  v1 = OBJC_IVAR____TtC18NotebookFlowPlugin18NotebookFlowPlugin_flowProvider;
  v2 = sub_1984();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for NotebookFlowPlugin()
{
  result = qword_8180;
  if (!qword_8180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17C8()
{
  result = sub_1984();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_187C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1668();
  *a1 = result;
  return result;
}

unint64_t sub_18BC()
{
  result = qword_8168;
  if (!qword_8168)
  {
    type metadata accessor for NotebookFlowPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8168);
  }

  return result;
}