uint64_t sub_100001748@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100001D90();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100001DA0();
  v5 = sub_100001D60();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_100001D70();
  sub_100001BF8(&qword_100008838, &qword_100002588);
  v8 = *(sub_100001D20() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000024F0;
  sub_100001C40(&qword_100008840, &type metadata accessor for PRRenderingConfiguration);

  sub_100001D10();
  sub_100001C40(&qword_100008848, &type metadata accessor for PREditingConfiguration);

  sub_100001D10();

  *a1 = v11;
  return result;
}

id sub_100001974()
{
  v0 = objc_allocWithZone(InfographPoster);

  return [v0 init];
}

uint64_t sub_1000019B0()
{
  [objc_allocWithZone(InfographPoster) init];
  v0 = sub_100001BF8(&qword_100008828, &qword_100002500);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100001D80();
  sub_100001CBC(&qword_100008830);
  sub_100001D50();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001B14();
  sub_100001CBC(&qword_100008820);
  sub_100001D30();
  return 0;
}

unint64_t sub_100001B14()
{
  result = qword_100008818;
  if (!qword_100008818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008818);
  }

  return result;
}

uint64_t sub_100001B68(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001BF8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001CBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100001B68(&qword_100008828, &qword_100002500);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}