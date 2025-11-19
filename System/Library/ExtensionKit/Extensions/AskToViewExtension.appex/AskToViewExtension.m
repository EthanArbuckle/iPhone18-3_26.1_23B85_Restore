uint64_t sub_1000013CC()
{
  v0 = sub_1000017B0();
  v1 = sub_100001678(&qword_100008148, 255, &type metadata accessor for MessageComposeApexEntryView);

  return MessageComposeScene.init(content:)(sub_1000013B8, 0, v0, v1);
}

uint64_t sub_100001464()
{
  v0 = type metadata accessor for AskToViewExtension();
  v2 = sub_100001678(&qword_100008140, v1, type metadata accessor for AskToViewExtension);

  return MessageComposeExtension.configuration.getter(v0, v2);
}

uint64_t sub_1000014E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AskToViewExtension();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AskToViewExtension();
  sub_100001678(&qword_100008090, v3, type metadata accessor for AskToViewExtension);
  sub_100001770();
  return 0;
}

uint64_t sub_100001678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000016C4()
{
  result = qword_100008150;
  if (!qword_100008150)
  {
    sub_100001728(&qword_100008158, &qword_100001918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008150);
  }

  return result;
}

uint64_t sub_100001728(uint64_t *a1, uint64_t *a2)
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