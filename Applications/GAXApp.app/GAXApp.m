uint64_t sub_100001038@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000010C8()
{
  v0 = sub_1000012A8(&qword_100008098, &unk_1000015C0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_1000012F0();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100001344();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001228();
  static App.main()();
  return 0;
}

unint64_t sub_100001228()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

uint64_t sub_1000012A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000012F0()
{
  result = qword_1000080A0;
  if (!qword_1000080A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A0);
  }

  return result;
}

unint64_t sub_100001344()
{
  result = qword_1000080A8;
  if (!qword_1000080A8)
  {
    sub_1000013A8(&qword_100008098, &unk_1000015C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A8);
  }

  return result;
}

uint64_t sub_1000013A8(uint64_t *a1, uint64_t *a2)
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