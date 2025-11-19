uint64_t sub_1120()
{
  v1 = sub_1438();
  v2 = sub_13B0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1428();
  sub_1408();
  return (*(v4 + 8))(v8, v0);
}

uint64_t sub_11F0()
{
  v1 = sub_1438();
  v2 = sub_13B0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1428();
  v9 = sub_1418();
  result = (*(v4 + 8))(v8, v0);
  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1110();
  *a1 = result;
  return result;
}

unint64_t sub_135C()
{
  result = qword_8138;
  if (!qword_8138)
  {
    type metadata accessor for ControlsFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8138);
  }

  return result;
}