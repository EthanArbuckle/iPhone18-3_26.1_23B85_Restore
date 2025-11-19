uint64_t sub_100001500@<X0>(uint64_t a1@<X8>)
{
  sub_100001C44();

  sub_100001C54();
  v2 = sub_100001C14();
  v3 = sub_100001C24();
  v4 = a1 + *(sub_1000018FC(&qword_100008038, &qword_100001DD0) + 36);
  *v4 = v2;
  *(v4 + 8) = v3;
  v5 = *(sub_1000018FC(&qword_100008020, &qword_100001DC8) + 36);
  v6 = enum case for ColorScheme.dark(_:);
  v7 = sub_100001C04();
  v10 = *(v7 - 8);
  (*(v10 + 104))(a1 + v5, v6, v7);
  v8 = *(v10 + 56);

  return v8(a1 + v5, 0, 1, v7);
}

uint64_t sub_10000164C()
{
  v1 = *v0;

  v2 = sub_1000018FC(&qword_100008020, &qword_100001DC8);
  v3 = sub_100001944();

  return LockedCameraCaptureUIScene.init(content:)(sub_1000018F4, v1, v2, v3);
}

uint64_t sub_1000016D0(uint64_t a1)
{
  v2 = sub_1000018A0();

  return LockedCameraCaptureExtension.configuration.getter(a1, v2);
}

id sub_10000171C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100001C44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_100001C34();
  result = [objc_opt_self() preheatCaptureResources];
  *a1 = v5;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000017D4();
  sub_100001BD4();
  return 0;
}

unint64_t sub_1000017D4()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_1000018A0()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_1000018FC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001944()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000019FC(&qword_100008020, &qword_100001DC8);
    sub_100001A44();
    sub_100001B8C(&qword_100008048, &qword_100008050, &qword_100001DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000019FC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001A44()
{
  result = qword_100008030;
  if (!qword_100008030)
  {
    sub_1000019FC(&qword_100008038, &qword_100001DD0);
    sub_100001B00(&qword_100008040, &type metadata accessor for ViewfinderViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008030);
  }

  return result;
}

uint64_t sub_100001B00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001B8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000019FC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}