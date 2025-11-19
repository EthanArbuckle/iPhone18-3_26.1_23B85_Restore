id sub_100001440()
{
  v0 = [objc_allocWithZone(HMMutableHomeManagerConfiguration) initWithOptions:517 cachePolicy:1];
  [v0 setDiscretionary:0];
  result = [v0 setAdaptive:1];
  qword_100008068 = v0;
  return result;
}

uint64_t sub_1000014AC(uint64_t a1)
{
  v2 = sub_100001888();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

void sub_1000014F8()
{
  sub_100001CE0();
  if (qword_100008060 != -1)
  {
    swift_once();
  }

  v0 = qword_100008068;
  sub_100001CB0();
  sub_100001CD0();
  v1 = sub_100001CC0();
}

uint64_t sub_100001580()
{
  v0 = sub_100001CA0();
  sub_100001B7C(v0, qword_100008380);
  sub_100001B44(v0, qword_100008380);
  return sub_100001C90();
}

uint64_t sub_1000015E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008070 != -1)
  {
    swift_once();
  }

  v2 = sub_100001CA0();
  v3 = sub_100001B44(v2, qword_100008380);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000016C4()
{
  v1 = *(v0 + 16);
  sub_100001C80();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001730()
{
  v0 = qword_100008018;

  return v0;
}

uint64_t sub_10000176C(uint64_t a1)
{
  v2 = sub_100001A1C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001804();
  sub_100001CF0();
  return 0;
}

unint64_t sub_100001804()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

unint64_t sub_100001888()
{
  result = qword_100008030;
  if (!qword_100008030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008030);
  }

  return result;
}

unint64_t sub_1000018E0()
{
  result = qword_100008038;
  if (!qword_100008038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008038);
  }

  return result;
}

unint64_t sub_100001938()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

unint64_t sub_100001A1C()
{
  result = qword_100008048;
  if (!qword_100008048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008048);
  }

  return result;
}

unint64_t sub_100001A98()
{
  result = qword_100008050;
  if (!qword_100008050)
  {
    sub_100001AFC(&qword_100008058, &qword_100002088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008050);
  }

  return result;
}

uint64_t sub_100001AFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001B7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}