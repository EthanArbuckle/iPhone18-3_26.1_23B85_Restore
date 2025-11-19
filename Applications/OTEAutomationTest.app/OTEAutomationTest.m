double sub_100000FB0@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

unint64_t sub_100001078()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_1000010FC(&qword_100008008, &unk_1000015B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

uint64_t sub_1000010FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001148()
{
  v0 = sub_100001328(&qword_100008018, &qword_100001610);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_100001370();
  WindowGroup.init(id:title:lazyContent:)();
  sub_1000013C4();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000012A8();
  static App.main()();
  return 0;
}

unint64_t sub_1000012A8()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_100001328(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001370()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008020);
  }

  return result;
}

unint64_t sub_1000013C4()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000010FC(&qword_100008018, &qword_100001610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}