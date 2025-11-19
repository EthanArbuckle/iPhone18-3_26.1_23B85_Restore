void *sub_1238@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_14DC(v1 + 16, __src);
  if (__src[3])
  {
    return memcpy(a1, __src, 0xA0uLL);
  }

  sub_1594(__src);
  sub_1728();
  sub_15FC(a1, __src);
  swift_beginAccess();
  sub_1658(__src, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_12E0()
{
  v0 = swift_allocObject();
  bzero((v0 + 16), 0xA0uLL);
  return v0;
}

uint64_t sub_1320()
{
  sub_1238(v1);
  sub_1718();
  return sub_1488(v1);
}

uint64_t sub_1374()
{
  sub_1594(v0 + 16);

  return _swift_deallocClassInstance(v0, 176, 7);
}

uint64_t sub_13F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_12E0();
  *a1 = result;
  return result;
}

unint64_t sub_1434()
{
  result = qword_8180;
  if (!qword_8180)
  {
    type metadata accessor for CalendarFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8180);
  }

  return result;
}

uint64_t sub_14DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_154C(&qword_8188, &unk_18D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_154C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1594(uint64_t a1)
{
  v2 = sub_154C(&qword_8188, &unk_18D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1658(uint64_t a1, uint64_t a2)
{
  v4 = sub_154C(&qword_8188, &unk_18D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}