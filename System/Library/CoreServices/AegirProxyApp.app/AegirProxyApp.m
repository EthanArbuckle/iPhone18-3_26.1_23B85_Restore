uint64_t sub_100000FEC()
{
  v0 = sub_1000011D0(&qword_100008098, qword_100001408);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100001218();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001150();
  static App.main()();
  return 0;
}

unint64_t sub_100001150()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

uint64_t sub_1000011D0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001218()
{
  result = qword_1000080A0;
  if (!qword_1000080A0)
  {
    sub_10000127C(&qword_100008098, qword_100001408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A0);
  }

  return result;
}

uint64_t sub_10000127C(uint64_t *a1, uint64_t *a2)
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