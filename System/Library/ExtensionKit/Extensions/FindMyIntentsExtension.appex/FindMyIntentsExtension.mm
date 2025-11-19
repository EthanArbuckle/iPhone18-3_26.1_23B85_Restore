uint64_t sub_100000DA0()
{
  sub_100000E14(&qword_100008000, ":");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100000F10;
  v1 = sub_100000EB4();
  v2 = sub_100000E5C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_100000E14(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100000E5C()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_100000EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}