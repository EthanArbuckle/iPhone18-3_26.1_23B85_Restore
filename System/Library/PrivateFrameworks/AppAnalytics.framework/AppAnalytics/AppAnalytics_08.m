uint64_t sub_1B6A2E80C()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A2E8C4()
{
  *v0;
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A2E968()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A2EA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B6A2F7A8();
  *a2 = result;
  return result;
}

void sub_1B6A2EA4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00706D61747365;
  v4 = 0xEC000000706D6174;
  v5 = 0x73656D6954646E65;
  if (v2 != 1)
  {
    v5 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D69547472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B6A2EAC0()
{
  v1 = 0x73656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_1B6A2EB30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B6A2F7A8();
  *a1 = result;
  return result;
}

uint64_t sub_1B6A2EB58(uint64_t a1)
{
  v2 = sub_1B6A2EF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2EB94(uint64_t a1)
{
  v2 = sub_1B6A2EF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimedData.init(startTimestamp:endTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a3, a1, v6);
  v9 = type metadata accessor for TimedData();
  v8(a3 + *(v9 + 20), a2, v6);
  sub_1B6AB8D00();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(a2, v6);
  result = (v12)(a1, v6);
  v14 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    *(a3 + *(v9 + 24)) = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TimedData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6A2F450(0, &qword_1EDBC96D0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2EF68();
  sub_1B6ABA2D0();
  v18 = 0;
  sub_1B6AB8DB0();
  sub_1B69A8468(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
  sub_1B6ABA040();
  if (!v2)
  {
    v12 = type metadata accessor for TimedData();
    v13 = *(v12 + 20);
    v17 = 1;
    sub_1B6ABA040();
    v15[1] = *(v3 + *(v12 + 24));
    v16 = 2;
    sub_1B6A2EFBC();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B6A2EF68()
{
  result = qword_1EDBC96F0[0];
  if (!qword_1EDBC96F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBC96F0);
  }

  return result;
}

unint64_t sub_1B6A2EFBC()
{
  result = qword_1EDBC9968;
  if (!qword_1EDBC9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9968);
  }

  return result;
}

uint64_t TimedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_1B6AB8DB0();
  v30 = *(v32 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v26 - v8;
  sub_1B6A2F450(0, &qword_1EDBC8018, MEMORY[0x1E69E6F48]);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TimedData();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2EF68();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v16;
  v28 = a1;
  v26 = v13;
  v38 = 0;
  sub_1B69A8468(&qword_1EDBC8C70, MEMORY[0x1E6969530]);
  v18 = v31;
  v19 = v32;
  sub_1B6AB9F90();
  v31 = *(v30 + 32);
  (v31)(v27, v18, v19);
  v37 = 1;
  v20 = v7;
  sub_1B6AB9F90();
  v22 = v26;
  v21 = v27;
  (v31)(&v27[*(v26 + 20)], v20, v19);
  v36 = 2;
  sub_1B6A2F4B4();
  sub_1B6AB9F90();
  v23 = v21;
  v24 = v28;
  (*(v33 + 8))(v12, v34);
  *(v23 + *(v22 + 24)) = v35;
  sub_1B6A2F508(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1B6A2F56C(v23);
}

void sub_1B6A2F450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2EF68();
    v7 = a3(a1, &type metadata for TimedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2F4B4()
{
  result = qword_1EDBC8300[0];
  if (!qword_1EDBC8300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBC8300);
  }

  return result;
}

uint64_t sub_1B6A2F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A2F56C(uint64_t a1)
{
  v2 = type metadata accessor for TimedData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A2F5C8(uint64_t a1)
{
  *(a1 + 8) = sub_1B69A8468(&qword_1EDBCAAB0, type metadata accessor for TimedData);
  result = sub_1B69A8468(&qword_1EDBCAAB8, type metadata accessor for TimedData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2F6A4()
{
  result = qword_1EB95B7C8;
  if (!qword_1EB95B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7C8);
  }

  return result;
}

unint64_t sub_1B6A2F6FC()
{
  result = qword_1EDBC96E0;
  if (!qword_1EDBC96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC96E0);
  }

  return result;
}

unint64_t sub_1B6A2F754()
{
  result = qword_1EDBC96E8;
  if (!qword_1EDBC96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC96E8);
  }

  return result;
}

uint64_t sub_1B6A2F7A8()
{
  v0 = sub_1B6AB9EF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void static UserActivityBeganEvent.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static UserActivityBeganEvent.timeDurationGranularity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A998 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B7D0);
  *a1 = word_1EB95B7D0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1B6A2F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A2F9D4(uint64_t a1)
{
  v2 = sub_1B6A2FBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2FA10(uint64_t a1)
{
  v2 = sub_1B6A2FBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserActivityBeganEvent.Model.encode(to:)(void *a1)
{
  sub_1B6A2FE9C(0, &qword_1EB95B7D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2D0();
  type metadata accessor for EventData();
  sub_1B69BFE9C(&qword_1EDBCAAD0);
  sub_1B6ABA040();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B6A2FBC0()
{
  result = qword_1EB95B7E0;
  if (!qword_1EB95B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7E0);
  }

  return result;
}

uint64_t UserActivityBeganEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2FE9C(0, &qword_1EB95B7E8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for UserActivityBeganEvent.Model();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v17 = v21;
    sub_1B69BFE9C(&qword_1EDBCAAC8);
    v18 = v22;
    sub_1B6AB9F90();
    (*(v17 + 8))(v11, v8);
    sub_1B69BFDA0(v18, v15, type metadata accessor for EventData);
    sub_1B69BFDA0(v15, v20, type metadata accessor for UserActivityBeganEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2FE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2FBC0();
    v7 = a3(a1, &type metadata for UserActivityBeganEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for UserActivityBeganEvent.Model()
{
  result = qword_1EB95B7F0;
  if (!qword_1EB95B7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A2FF64(void *a1)
{
  sub_1B6A2FE9C(0, &qword_1EB95B7D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2D0();
  type metadata accessor for EventData();
  sub_1B69BFE9C(&qword_1EDBCAAD0);
  sub_1B6ABA040();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B6A300D8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A998 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B7D0);
  *a1 = word_1EB95B7D0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1B6A30180()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B6A30200()
{
  result = qword_1EB95B800;
  if (!qword_1EB95B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B800);
  }

  return result;
}

unint64_t sub_1B6A30258()
{
  result = qword_1EB95B808;
  if (!qword_1EB95B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B808);
  }

  return result;
}

unint64_t sub_1B6A302B0()
{
  result = qword_1EB95B810;
  if (!qword_1EB95B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B810);
  }

  return result;
}

void static UserActivityEndedEvent.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static UserActivityEndedEvent.timeDurationGranularity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A9A0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B818);
  *a1 = word_1EB95B818;
  a1[1] = v1;
  return result;
}

uint64_t type metadata accessor for UserActivityEndedEvent.Model()
{
  result = qword_1EB95B838;
  if (!qword_1EB95B838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserActivityEndedEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B69BFE08(a1, a3, type metadata accessor for EventData);
  v5 = type metadata accessor for UserActivityEndedEvent.Model();
  return sub_1B69BFE08(a2, a3 + *(v5 + 20), type metadata accessor for TimedData);
}

uint64_t sub_1B6A30570()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_1B6A305A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B6A3068C(uint64_t a1)
{
  v2 = sub_1B6A30914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A306C8(uint64_t a1)
{
  v2 = sub_1B6A30914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserActivityEndedEvent.Model.encode(to:)(void *a1)
{
  sub_1B6A30D4C(0, &qword_1EB95B820, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A30914();
  sub_1B6ABA2D0();
  v12[15] = 0;
  type metadata accessor for EventData();
  sub_1B69BFEE0(&qword_1EDBCAAD0, type metadata accessor for EventData);
  sub_1B6ABA040();
  if (!v1)
  {
    v10 = *(type metadata accessor for UserActivityEndedEvent.Model() + 20);
    v12[14] = 1;
    type metadata accessor for TimedData();
    sub_1B69BFEE0(&qword_1EDBCAAB8, type metadata accessor for TimedData);
    sub_1B6ABA040();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A30914()
{
  result = qword_1EB95B828;
  if (!qword_1EB95B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B828);
  }

  return result;
}

uint64_t UserActivityEndedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for TimedData();
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EventData();
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A30D4C(0, &qword_1EB95B830, MEMORY[0x1E69E6F48]);
  v29 = v9;
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = type metadata accessor for UserActivityEndedEvent.Model();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A30914();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v18 = v26;
  v19 = v16;
  v31 = 0;
  sub_1B69BFEE0(&qword_1EDBCAAC8, type metadata accessor for EventData);
  v20 = v28;
  sub_1B6AB9F90();
  sub_1B69BFE08(v20, v19, type metadata accessor for EventData);
  v30 = 1;
  sub_1B69BFEE0(&qword_1EDBCAAB0, type metadata accessor for TimedData);
  sub_1B6AB9F90();
  (*(v18 + 8))(v12, v29);
  sub_1B69BFE08(v6, v19 + *(v13 + 20), type metadata accessor for TimedData);
  sub_1B6A30DB0(v19, v24, type metadata accessor for UserActivityEndedEvent.Model);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1B6A30E18(v19, type metadata accessor for UserActivityEndedEvent.Model);
}

void sub_1B6A30D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A30914();
    v7 = a3(a1, &type metadata for UserActivityEndedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A30DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A30E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A30EA8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A9A0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B818);
  *a1 = word_1EB95B818;
  a1[1] = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeDurationGranularity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TimeDurationGranularity(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B6A31094()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimedData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B6A3112C()
{
  result = qword_1EB95B848;
  if (!qword_1EB95B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B848);
  }

  return result;
}

unint64_t sub_1B6A31184()
{
  result = qword_1EB95B850;
  if (!qword_1EB95B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B850);
  }

  return result;
}

unint64_t sub_1B6A311DC()
{
  result = qword_1EB95B858;
  if (!qword_1EB95B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B858);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B6A3125C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6A312A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A31310(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x444972657375;
    v5 = 0xD000000000000012;
    if (a1 != 3)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    if (a1)
    {
      v4 = 0x6F43444972657375;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6873614872657375;
    if (a1 != 9)
    {
      v1 = 0x6570795472657375;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    if (a1 != 5)
    {
      v2 = 0x7261745372657375;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6A314A4(void *a1)
{
  v3 = v1;
  sub_1B6A32364(0, &qword_1EB95B888, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v26[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A322BC();
  sub_1B6ABA2D0();
  v12 = *v3;
  v13 = v3[1];
  v26[15] = 0;
  sub_1B6ABA000();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v26[14] = 1;
    sub_1B6ABA000();
    v16 = v3[4];
    v26[13] = 2;
    sub_1B6ABA030();
    v17 = v3[5];
    v26[12] = 3;
    sub_1B6ABA030();
    v18 = v3[6];
    v26[11] = 4;
    sub_1B6ABA030();
    v19 = *(v3 + 56);
    v26[10] = 5;
    sub_1B6ABA010();
    v20 = v3[8];
    v26[9] = 6;
    sub_1B6ABA030();
    v21 = v3[9];
    v26[8] = 7;
    sub_1B6ABA030();
    v22 = v3[10];
    v23 = v3[11];
    v26[7] = 8;
    sub_1B6ABA000();
    v25 = v3[12];
    v26[6] = 9;
    sub_1B6ABA030();
    v26[5] = *(v3 + 104);
    v26[4] = 10;
    sub_1B6A323C8();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B6A3175C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A3194C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A31790(uint64_t a1)
{
  v2 = sub_1B6A322BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A317CC(uint64_t a1)
{
  v2 = sub_1B6A322BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1B6A31808@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6A31CF4(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1B6A31874(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A318A4();
  result = sub_1B6A318F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A318A4()
{
  result = qword_1EB95B860;
  if (!qword_1EB95B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B860);
  }

  return result;
}

unint64_t sub_1B6A318F8()
{
  result = qword_1EB95B868;
  if (!qword_1EB95B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B868);
  }

  return result;
}

uint64_t sub_1B6A3194C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43444972657375 && a2 == 0xED0000747865746ELL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B6ACAB90 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B6ACABB0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6ACABD0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B6ACABF0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xEE0068746E6F4D74 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00007261655974 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6ACAC10 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6873614872657375 && a2 == 0xEB00000000646F4DLL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B6A31CF4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B6A32364(0, &qword_1EB95B870, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A322BC();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v12 = sub_1B6AB9F50();
  v14 = v13;
  v60 = a2;
  v15 = v12;
  LOBYTE(v44[0]) = 1;
  v16 = sub_1B6AB9F50();
  *(&v37 + 1) = v17;
  *&v37 = v16;
  LOBYTE(v44[0]) = 2;
  v36 = sub_1B6AB9F80();
  LOBYTE(v44[0]) = 3;
  v35 = sub_1B6AB9F80();
  LOBYTE(v44[0]) = 4;
  v34 = sub_1B6AB9F80();
  LOBYTE(v44[0]) = 5;
  v33 = sub_1B6AB9F60();
  LOBYTE(v44[0]) = 6;
  v18 = sub_1B6AB9F80();
  LOBYTE(v44[0]) = 7;
  v31 = sub_1B6AB9F80();
  LOBYTE(v44[0]) = 8;
  v30 = sub_1B6AB9F50();
  v32 = v19;
  LOBYTE(v44[0]) = 9;
  v29 = sub_1B6AB9F80();
  v57 = 10;
  sub_1B6A32310();
  sub_1B6AB9F90();
  v20 = v33 & 1;
  (*(v7 + 8))(v10, v6);
  v33 = v58;
  *&v38 = v15;
  *(&v38 + 1) = v14;
  v21 = v37;
  v39 = v37;
  v22 = v36;
  *&v40 = v36;
  *(&v40 + 1) = v35;
  v23 = v34;
  *&v41 = v34;
  BYTE8(v41) = v20;
  *(&v41 + 9) = *v59;
  HIDWORD(v41) = *&v59[3];
  *&v42 = v18;
  *(&v42 + 1) = v31;
  *v43 = v30;
  *&v43[8] = v32;
  *&v43[16] = v29;
  v43[24] = v58;
  sub_1B6A0B758(&v38, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v15;
  v44[1] = v14;
  v45 = __PAIR128__(*(&v37 + 1), v21);
  v46 = v22;
  v47 = v35;
  v48 = v23;
  v49 = v20;
  *v50 = *v59;
  *&v50[3] = *&v59[3];
  v51 = v18;
  v52 = v31;
  v53 = v30;
  v54 = v32;
  v55 = v29;
  v56 = v33;
  result = sub_1B6A0B878(v44);
  v25 = *v43;
  v26 = v60;
  v60[4] = v42;
  v26[5] = v25;
  *(v26 + 89) = *&v43[9];
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  v28 = v41;
  v26[2] = v40;
  v26[3] = v28;
  return result;
}

unint64_t sub_1B6A322BC()
{
  result = qword_1EB95B878;
  if (!qword_1EB95B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B878);
  }

  return result;
}

unint64_t sub_1B6A32310()
{
  result = qword_1EB95B880;
  if (!qword_1EB95B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B880);
  }

  return result;
}

void sub_1B6A32364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A322BC();
    v7 = a3(a1, &type metadata for AppAnalyticsUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A323C8()
{
  result = qword_1EB95B890;
  if (!qword_1EB95B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppAnalyticsUserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppAnalyticsUserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6A32570()
{
  result = qword_1EB95B898;
  if (!qword_1EB95B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B898);
  }

  return result;
}

unint64_t sub_1B6A325C8()
{
  result = qword_1EB95B8A0;
  if (!qword_1EB95B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8A0);
  }

  return result;
}

unint64_t sub_1B6A32620()
{
  result = qword_1EB95B8A8;
  if (!qword_1EB95B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8A8);
  }

  return result;
}

uint64_t sub_1B6A32684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E696E7275746572;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7824750;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x6E696E7275746572;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7824750;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B6ABA0F0();
  }

  return v11 & 1;
}

uint64_t sub_1B6A32788()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A32828()
{
  *v0;
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A328B4()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A32950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B6A32AE4();
  *a2 = result;
  return result;
}

void sub_1B6A32980(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E696E7275746572;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7824750;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B6A32A90()
{
  result = qword_1EB95B8B0;
  if (!qword_1EB95B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8B0);
  }

  return result;
}

uint64_t sub_1B6A32AE4()
{
  v0 = sub_1B6AB9EF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B6A32B30()
{
  result = qword_1EB95B8B8;
  if (!qword_1EB95B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8B8);
  }

  return result;
}

uint64_t Batch.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Batch.userAgent.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Batch.groupName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Batch.sessionStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch() + 40);

  return sub_1B69B20C4(v3, a1);
}

uint64_t Batch.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for Batch() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Batch.sessionCrashDetails.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Batch() + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1B69EC458(v4, v5, v6, v7, v8, v9);
}

uint64_t Batch.flushDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch() + 56);

  return sub_1B69B20C4(v3, a1);
}

uint64_t sub_1B6A32D98(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  sub_1B698FE74(a2, &v7);
  if (v6[0] == 0x4D65746176697270 && v2 == 0xEF61746164617465)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B6ABA0F0() ^ 1;
  }

  sub_1B69B4B90(v6);
  return v4 & 1;
}

uint64_t sub_1B6A32E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1B6A32EB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_1B698FE74(v15 + 32 * v14, v24);

    v18 = a4(v25, v24);
    __swift_destroy_boxed_opaque_existential_1(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1B69B4BEC(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B69B4BEC(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B6A33038(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B6A32EB0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t BatchEvent.metadata.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void BatchEvent.privateMetadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t BatchEvent.Metadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B6A331B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A3323C(uint64_t a1)
{
  v2 = sub_1B6A3341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A33278(uint64_t a1)
{
  v2 = sub_1B6A3341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.Metadata.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8C8, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A3341C()
{
  result = qword_1EDBC8BC8;
  if (!qword_1EDBC8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BC8);
  }

  return result;
}

uint64_t BatchEvent.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1B6A34E00(0, &qword_1EDBC8960, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v11 = v17;
    v12 = sub_1B6AB9F50();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A33630(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8C8, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B6A337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001B6ACAC30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B6A33850(uint64_t a1)
{
  v2 = sub_1B6A33A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A3388C(uint64_t a1)
{
  v2 = sub_1B6A33A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.PrivateMetadata.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D0, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2D0();
  sub_1B6ABA050();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A33A2C()
{
  result = qword_1EDBC8670;
  if (!qword_1EDBC8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8670);
  }

  return result;
}

uint64_t BatchEvent.PrivateMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1B6A34E00(0, &qword_1EDBC8020, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v11 = v15;
    v12 = sub_1B6AB9FA0();
    (*(v6 + 8))(v9, v5);
    *v11 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A33C3C(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D0, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2D0();
  sub_1B6ABA050();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B6A33DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B6A33E3C()
{
  if (!qword_1EDBC8988[0])
  {
    type metadata accessor for EventData();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBC8988);
    }
  }
}

uint64_t sub_1B6A33E94(uint64_t a1)
{
  v2 = sub_1B6A340B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A33ED0(uint64_t a1)
{
  v2 = sub_1B6A340B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.Event.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D8, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2D0();
  type metadata accessor for EventData();
  sub_1B69BFF28(&qword_1EDBCAAD0, type metadata accessor for EventData);
  sub_1B6AB9FF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B6A340B8()
{
  result = qword_1EDBC8C68;
  if (!qword_1EDBC8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C68);
  }

  return result;
}

uint64_t BatchEvent.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1B6A33E3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A34E00(0, &qword_1EDBC8970, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for BatchEvent.Event(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v18 = v21;
    v17 = v22;
    type metadata accessor for EventData();
    sub_1B69BFF28(&qword_1EDBCAAC8, type metadata accessor for EventData);
    v19 = v23;
    sub_1B6AB9F40();
    (*(v18 + 8))(v11, v8);
    sub_1B6A343C8(v19, v15, sub_1B6A33E3C);
    sub_1B6A343C8(v15, v17, type metadata accessor for BatchEvent.Event);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A343C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A34448(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D8, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2D0();
  type metadata accessor for EventData();
  sub_1B69BFF28(&qword_1EDBCAAD0, type metadata accessor for EventData);
  sub_1B6AB9FF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B6A345F4()
{
  v1 = 0x4D65746176697270;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B6A34654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A355BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A3467C(uint64_t a1)
{
  v2 = sub_1B6A34960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A346B8(uint64_t a1)
{
  v2 = sub_1B6A34960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6A34E00(0, &qword_1EB95B8E0, sub_1B6A34960, &type metadata for BatchEvent.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A34960();
  sub_1B6ABA2D0();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = 0;
  sub_1B6A349B4();

  sub_1B6ABA040();
  if (v2)
  {
  }

  else
  {

    v13 = *(v3 + 24);
    v16 = v3[2];
    LOBYTE(v17) = v13;
    v18 = 1;
    sub_1B6A34A08();
    sub_1B6AB9FF0();
    v14 = *(type metadata accessor for BatchEvent(0) + 24);
    LOBYTE(v16) = 2;
    type metadata accessor for BatchEvent.Event(0);
    sub_1B69BFF28(&qword_1EB95B8F8, type metadata accessor for BatchEvent.Event);
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B6A34960()
{
  result = qword_1EDBC8BE0;
  if (!qword_1EDBC8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BE0);
  }

  return result;
}

unint64_t sub_1B6A349B4()
{
  result = qword_1EB95B8E8;
  if (!qword_1EB95B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8E8);
  }

  return result;
}

unint64_t sub_1B6A34A08()
{
  result = qword_1EB95B8F0;
  if (!qword_1EB95B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8F0);
  }

  return result;
}

uint64_t BatchEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for BatchEvent.Event(0);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A34E00(0, &qword_1EDBC8968, sub_1B6A34960, &type metadata for BatchEvent.CodingKeys, MEMORY[0x1E69E6F48]);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BatchEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A34960();
  v26 = v9;
  v15 = v27;
  sub_1B6ABA2A0();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v24;
  v17 = v13;
  v30 = 0;
  sub_1B6A34E68();
  v18 = v25;
  sub_1B6AB9F90();
  v19 = v29;
  *v17 = v28;
  *(v17 + 8) = v19;
  v30 = 1;
  sub_1B6A34EBC();
  sub_1B6AB9F40();
  v20 = v29;
  *(v17 + 16) = v28;
  *(v17 + 24) = v20;
  LOBYTE(v28) = 2;
  sub_1B69BFF28(&qword_1EDBC8C50, type metadata accessor for BatchEvent.Event);
  sub_1B6AB9F90();
  (*(v16 + 8))(v26, v18);
  sub_1B6A343C8(v5, v17 + *(v10 + 24), type metadata accessor for BatchEvent.Event);
  sub_1B6A33DD4(v17, v22, type metadata accessor for BatchEvent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A34F10(v17);
}

void sub_1B6A34E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1B6A34E68()
{
  result = qword_1EDBC8BB0;
  if (!qword_1EDBC8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BB0);
  }

  return result;
}

unint64_t sub_1B6A34EBC()
{
  result = qword_1EDBC8658;
  if (!qword_1EDBC8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8658);
  }

  return result;
}

uint64_t sub_1B6A34F10(uint64_t a1)
{
  v2 = type metadata accessor for BatchEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A34FC4()
{
  sub_1B6A35058();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BatchEvent.Event(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6A35058()
{
  if (!qword_1EDBC8650)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8650);
    }
  }
}

void sub_1B6A350F0()
{
  sub_1B6A33E3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B6A351A0()
{
  result = qword_1EB95B900;
  if (!qword_1EB95B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B900);
  }

  return result;
}

unint64_t sub_1B6A351F8()
{
  result = qword_1EB95B908;
  if (!qword_1EB95B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B908);
  }

  return result;
}

unint64_t sub_1B6A35250()
{
  result = qword_1EB95B910;
  if (!qword_1EB95B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B910);
  }

  return result;
}

unint64_t sub_1B6A352A8()
{
  result = qword_1EB95B918;
  if (!qword_1EB95B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B918);
  }

  return result;
}

unint64_t sub_1B6A35300()
{
  result = qword_1EDBC8BD0;
  if (!qword_1EDBC8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BD0);
  }

  return result;
}

unint64_t sub_1B6A35358()
{
  result = qword_1EDBC8BD8;
  if (!qword_1EDBC8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BD8);
  }

  return result;
}

unint64_t sub_1B6A353B0()
{
  result = qword_1EDBC8C58;
  if (!qword_1EDBC8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C58);
  }

  return result;
}

unint64_t sub_1B6A35408()
{
  result = qword_1EDBC8C60;
  if (!qword_1EDBC8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C60);
  }

  return result;
}

unint64_t sub_1B6A35460()
{
  result = qword_1EDBC8660;
  if (!qword_1EDBC8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8660);
  }

  return result;
}

unint64_t sub_1B6A354B8()
{
  result = qword_1EDBC8668;
  if (!qword_1EDBC8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8668);
  }

  return result;
}

unint64_t sub_1B6A35510()
{
  result = qword_1EDBC8BB8;
  if (!qword_1EDBC8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BB8);
  }

  return result;
}

unint64_t sub_1B6A35568()
{
  result = qword_1EDBC8BC0;
  if (!qword_1EDBC8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BC0);
  }

  return result;
}

uint64_t sub_1B6A355BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D65746176697270 && a2 == 0xEF61746164617465 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for BatchRepair()
{
  result = qword_1EDBC99D8;
  if (!qword_1EDBC99D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B6A3575C()
{
  result = type metadata accessor for Batch();
  if (v1 <= 0x3F)
  {
    result = sub_1B697E288();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6A35804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A35888(uint64_t a1)
{
  v2 = sub_1B6A35CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A358C4(uint64_t a1)
{
  v2 = sub_1B6A35CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A35900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A35D04(0, &qword_1EB95B930, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A35CB0();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = sub_1B6AB9F50();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B6A35A8C(void *a1)
{
  sub_1B6A35D04(0, &qword_1EB95B940, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A35CB0();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A35BD8(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A35C08();
  result = sub_1B6A35C5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A35C08()
{
  result = qword_1EB95B920;
  if (!qword_1EB95B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B920);
  }

  return result;
}

unint64_t sub_1B6A35C5C()
{
  result = qword_1EB95B928;
  if (!qword_1EB95B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B928);
  }

  return result;
}

unint64_t sub_1B6A35CB0()
{
  result = qword_1EB95B938;
  if (!qword_1EB95B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B938);
  }

  return result;
}

void sub_1B6A35D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A35CB0();
    v7 = a3(a1, &type metadata for EssentialUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A35D7C()
{
  result = qword_1EB95B948;
  if (!qword_1EB95B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B948);
  }

  return result;
}

unint64_t sub_1B6A35DD4()
{
  result = qword_1EB95B950;
  if (!qword_1EB95B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B950);
  }

  return result;
}

unint64_t sub_1B6A35E2C()
{
  result = qword_1EB95B958;
  if (!qword_1EB95B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B958);
  }

  return result;
}

void Flushable.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B698E534;
    v6[3] = &block_descriptor_6;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 flushWithCallbackQueue:a1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_1B6A35F50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A35FA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6A35FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B6A36038(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = a1[3];
  if (((*(a3 + 24))(a2, a3) & 1) != 0 && (v11 & 1) != 0 || ((*(a3 + 32))(a2, a3) & 1) != 0 && (v13 = *(v12 + OBJC_IVAR___AATrackingConsent_consented), os_unfair_lock_lock((v13 + 20)), v14 = *(v13 + 16), os_unfair_lock_unlock((v13 + 20)), v14))
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    a4(v9, v10);
  }
}

void sub_1B6A36124(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v23 = a1[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v9 = [ObjCClassFromMetadata requiresDiagnosticsConsent];
  }

  else
  {
    v9 = 2;
  }

  v10 = [ObjCClassFromMetadata respondsToSelector_];
  if (v10)
  {
    v11 = [ObjCClassFromMetadata requiresTrackingConsent];
    v12 = v9 == 2;
    if (((v9 != 2) & v9 & v7) != 0)
    {
      goto LABEL_28;
    }

    if (v11)
    {
      v13 = *(v23 + OBJC_IVAR___AATrackingConsent_consented);
      os_unfair_lock_lock((v13 + 20));
      v22 = *(v13 + 16);
      os_unfair_lock_unlock((v13 + 20));
      if (!v22)
      {
        v14 = 1;
        goto LABEL_11;
      }

LABEL_28:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  else
  {
    v12 = v9 == 2;
    if (((v9 != 2) & v9 & v7) == 1)
    {
      goto LABEL_28;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = a2(v5, v6);
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = v15;
  type metadata accessor for BridgedRawDataEvent();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    if (v12)
    {
      v9 = v18[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent];
    }

    v19 = v23;
    if ((v10 & 1) == 0)
    {
      v14 = v18[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent];
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      if (v7)
      {
LABEL_27:
        swift_unknownObjectRelease();

        goto LABEL_28;
      }

LABEL_21:
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_19:
    if ((v9 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 &= !v12;
  v19 = v23;
  v18 = 0;
  if (v10)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    v14 = 1;
    if (v7)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_26:
  v20 = *(v19 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v20 + 20));
  v21 = *(v20 + 16);
  os_unfair_lock_unlock((v20 + 20));
  if (v21)
  {
    goto LABEL_27;
  }

LABEL_29:
  *(a3 + 24) = &type metadata for BridgedDataEvent;
  *(a3 + 32) = sub_1B69E85A4();

  *a3 = v16;
}

void _s12AppAnalytics12TimeDurationV12timeIntervalACSd_tcfC_0(void *a1@<X8>, double a2@<D0>)
{
  v2 = a2 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    *a1 = v2;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t TimeDuration.init(_:)@<X0>(void *a1@<X8>)
{
  v2 = sub_1B6ABA2E0() * 1000.0;
  result = sub_1B6ABA2E0();
  v5 = v2 + v4 * 1.0e-15;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    *a1 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TimeDuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_1B6ABA120();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDuration.encode(to:)(void *a1)
{
  sub_1B6A3682C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB9E10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2B0();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1B6ABA2C0();
  sub_1B6AB9E00();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v8 + 32))(v11, v6, v7);
  if (!*(v15 + 16) || (v17 = sub_1B69A5E70(v11), (v18 & 1) == 0))
  {

    (*(v8 + 8))(v11, v7);
    goto LABEL_7;
  }

  sub_1B698FE74(*(v15 + 56) + 32 * v17, v23);
  (*(v8 + 8))(v11, v7);

  if (!swift_dynamicCast())
  {
LABEL_7:
    v19 = 2;
    goto LABEL_8;
  }

  v19 = v22 | (BYTE1(v22) << 8);
LABEL_8:
  v25 = (v19 != 2) & v19;
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = HIBYTE(v19);
  }

  v26 = v20;
  v22 = v12;
  sub_1B6A407E8(&v22, v23);
  __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1B6ABA140();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1B6A3682C()
{
  if (!qword_1EDBC9B90)
  {
    sub_1B6AB9E10();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9B90);
    }
  }
}

uint64_t sub_1B6A36884@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_1B6ABA120();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BridgedEventData.eventID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_eventID);
  v2 = *(v0 + OBJC_IVAR___AAEventData_eventID + 8);

  return v1;
}

uint64_t BridgedEventData.eventDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAEventData_eventDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BridgedEventData.eventPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_eventPath);
  v2 = *(v0 + OBJC_IVAR___AAEventData_eventPath + 8);

  return v1;
}

uint64_t BridgedEventData.sessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_sessionID);
  v2 = *(v0 + OBJC_IVAR___AAEventData_sessionID + 8);

  return v1;
}

uint64_t BridgedEventData.appSessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_appSessionID);
  v2 = *(v0 + OBJC_IVAR___AAEventData_appSessionID + 8);

  return v1;
}

id BridgedEventData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedEventData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedEventData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedEventData()
{
  result = qword_1EDBC98A8;
  if (!qword_1EDBC98A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A36F50()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B6A37044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B6AB8A60();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t BridgedTracker.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_name);
  v2 = *(v0 + OBJC_IVAR___AATracker_name + 8);

  return v1;
}

uint64_t BridgedTracker.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_identifier);
  v2 = *(v0 + OBJC_IVAR___AATracker_identifier + 8);

  return v1;
}

id BridgedTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedTracker.time(eventType:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 timeEventType:ObjCClassFromMetadata submitAndRestartWithSession:1];
}

uint64_t BridgedTracker.time(eventType:startTime:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v9 = *(v8 + 88);
  v14 = *(v8 + 96);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 2) = v8;
  *(v11 + 3) = v12;
  *(v11 + 4) = v7 | 0x4000000000000000;
  (*(v5 + 32))(&v11[v10], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11[v10 + v6] = 1;
  swift_retain_n();

  sub_1B69877A4(v9, sub_1B6A3F448, v11);
}

uint64_t BridgedTracker.time(eventType:submitAndRestartWithSession:)(uint64_t a1, int a2)
{
  v20 = a2;
  v19 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v11 = *(v2 + OBJC_IVAR___AATracker_tracker);

  sub_1B6AB8DA0();
  v12 = *(v11 + 96);
  v18[0] = *(v11 + 88);
  v18[1] = v12;
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = v13 + v5;
  v15 = swift_allocObject();
  v16 = v19;
  *(v15 + 2) = v11;
  *(v15 + 3) = v16;
  *(v15 + 4) = v10 | 0x4000000000000000;
  (*(v4 + 32))(&v15[v13], v7, v3);
  v15[v14] = v20;

  sub_1B69877A4(v18[0], sub_1B6A402A8, v15);

  return (*(v4 + 8))(v9, v3);
}

uint64_t BridgedTracker.time(eventType:submitAndRestartWithSession:startTime:)(uint64_t a1, int a2, uint64_t a3)
{
  v17 = a2;
  v16 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore);
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v10 = *(v9 + 88);
  v15[1] = *(v9 + 96);
  (*(v6 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = v16;
  *(v12 + 2) = v9;
  *(v12 + 3) = v13;
  *(v12 + 4) = v8 | 0x4000000000000000;
  (*(v6 + 32))(&v12[v11], v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v12[v11 + v7] = v17;
  swift_retain_n();

  sub_1B69877A4(v10, sub_1B6A402A8, v12);
}

void BridgedTracker.time(rawEvent:startTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 timeRawEvent:a1 submitAndRestartWithSession:1 startTime:v3];
}

uint64_t BridgedTracker.time(rawEvent:submitAndRestartWithSession:)(void *a1, int a2)
{
  v19 = a2;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(v2 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v12 = *(v11 + 88);
  v18 = *(v11 + 96);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  *(v15 + 2) = v11;
  *(v15 + 3) = a1;
  *(v15 + 4) = 0x8000000000000000;
  (*(v5 + 32))(&v15[v13], v8, v4);
  v15[v14] = v19;

  v16 = a1;
  sub_1B69877A4(v12, sub_1B6A402A8, v15);

  return (*(v5 + 8))(v10, v4);
}

uint64_t BridgedTracker.time(rawEvent:submitAndRestartWithSession:startTime:)(void *a1, int a2, uint64_t a3)
{
  v17 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v11 = *(v9 + 88);
  v10 = *(v9 + 96);
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v6);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v9;
  *(v13 + 3) = a1;
  *(v13 + 4) = 0x8000000000000000;
  (*(v7 + 32))(&v13[v12], &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13[v12 + v8] = v17;

  v14 = a1;
  sub_1B69877A4(v11, sub_1B6A402A8, v13);
}

id BridgedTracker.submit(eventType:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 submitEventType:ObjCClassFromMetadata onlyIfTimed:0];
}

uint64_t BridgedTracker.submit(eventType:onlyIfTimed:)(uint64_t a1, int a2)
{
  v27 = a2;
  v26 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v25 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v10 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v30, 0, sizeof(v30));

  sub_1B6AB8DA0();
  v11 = *(v10 + 96);
  v12 = *(v4 + 16);
  v28 = v9;
  v12(v7, v9, v3);
  sub_1B69C1678(v30, v29);
  v13 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = v25;
  v17 = v26;
  *(v15 + 16) = v10;
  *(v15 + 24) = v17;
  *(v15 + 32) = v16;
  *(v15 + 40) = v27;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v18 = (v15 + v14);
  v19 = v29[1];
  *v18 = v29[0];
  v18[1] = v19;
  v20 = (v15 + ((v14 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_1EDBCAA18;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDBCFD78;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B6A3F44C;
  *(v23 + 24) = v15;

  sub_1B69877A4(v22, sub_1B69B6F90, v23);

  (*(v4 + 8))(v28, v3);
  return sub_1B6981634(v30);
}

void BridgedTracker.submit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_7;
  v7 = _Block_copy(v8);

  [v3 submitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
}

uint64_t BridgedTracker.submit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v32) = a2;
  v31 = a1;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v29 = *(v4 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v14 = *(v4 + OBJC_IVAR___AATracker_tracker);
  memset(v35, 0, sizeof(v35));
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  sub_1B6AB8DA0();
  v30 = *(v14 + 96);
  v16 = *(v8 + 16);
  v33 = v13;
  v16(v11, v13, v7);
  sub_1B69C1678(v35, v34);
  v17 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v14;
  *(v19 + 24) = v20;
  *(v19 + 32) = v29;
  *(v19 + 40) = v32;
  v32 = v8;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v21 = (v19 + v18);
  v22 = v34[1];
  *v21 = v34[0];
  v21[1] = v22;
  v23 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1B6A40310;
  v23[1] = v15;
  v24 = qword_1EDBCAA18;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v19;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  (*(v32 + 8))(v33, v7);
  return sub_1B6981634(v35);
}

uint64_t BridgedTracker.submit(rawEvent:onlyIfTimed:)(void *a1, int a2)
{
  v27 = a2;
  v26 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v30, 0, sizeof(v30));
  sub_1B6AB8DA0();
  v11 = *(v10 + 96);
  v12 = *(v4 + 16);
  v28 = v9;
  v12(v7, v9, v3);
  sub_1B69C1678(v30, v29);
  v13 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = v26;
  *(v15 + 16) = v10;
  *(v15 + 24) = v16;
  *(v15 + 32) = 0x8000000000000000;
  *(v15 + 40) = v27;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v17 = (v15 + v14);
  v18 = v29[1];
  *v17 = v29[0];
  v17[1] = v18;
  v19 = (v15 + ((v14 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  v20 = qword_1EDBCAA18;

  v21 = v16;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDBCFD78;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B6A402AC;
  *(v23 + 24) = v15;

  sub_1B69877A4(v22, sub_1B6A402B8, v23);

  (*(v4 + 8))(v28, v3);
  return sub_1B6981634(v30);
}

uint64_t BridgedTracker.submit(rawEvent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *(v4 + OBJC_IVAR___AATracker_tracker);
  memset(v33, 0, sizeof(v33));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_1B6AB8DA0();
  v30 = *(v14 + 96);
  v31 = v13;
  (*(v8 + 16))(v11, v13, v7);
  sub_1B69C1678(v33, v32);
  v16 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v14;
  *(v18 + 24) = v19;
  *(v18 + 32) = 0x8000000000000000;
  *(v18 + 40) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v20 = (v18 + v17);
  v21 = v32[1];
  *v20 = v32[0];
  v20[1] = v21;
  v22 = (v18 + ((v17 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1B6A40310;
  v22[1] = v15;
  v23 = qword_1EDBCAA18;

  v24 = v19;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v18;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  (*(v8 + 8))(v31, v7);
  return sub_1B6981634(v33);
}

void sub_1B6A393C8(uint64_t a1, void (*a2)(void, id))
{
  sub_1B6A3FEAC(0, qword_1EDBC8B18, type metadata accessor for ProcessEvent);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v30 - v7);
  sub_1B6A3FEAC(0, qword_1EDBC8268, type metadata accessor for EventSubmitResult);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - v11);
  sub_1B6A3FF0C(a1, &v30 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = *v12;
    a2(0, v13);
  }

  else
  {
    sub_1B6A243B0(v12, v8);
    v16 = *v8;
    v15 = v8[1];
    v18 = v8[3];
    v17 = v8[4];
    v19 = v8[2];
    v20 = (v8 + *(v5 + 48));
    v31 = a2;
    v21 = *v20;
    v22 = v20[1];
    v23 = type metadata accessor for BridgedProcessEvent();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR___AAProcessEvent_name];
    *v25 = v16;
    *(v25 + 1) = v15;
    v26 = &v24[OBJC_IVAR___AAProcessEvent_version];
    *v26 = v18;
    *(v26 + 1) = v17;
    *&v24[OBJC_IVAR___AAProcessEvent_json] = v19;
    v27 = &v24[OBJC_IVAR___AAProcessEvent_groupName];
    *v27 = v21;
    *(v27 + 1) = v22;
    v32.receiver = v24;
    v32.super_class = v23;

    v28 = v19;
    v29 = objc_msgSendSuper2(&v32, sel_init);
    v31(v29, 0);

    sub_1B6A3FF8C(v8);
  }
}

uint64_t BridgedTracker.submit(rawEvent:onlyIfTimed:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v29 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(v5 + OBJC_IVAR___AATracker_tracker);
  memset(v34, 0, sizeof(v34));
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  sub_1B6AB8DA0();
  v31 = *(v15 + 96);
  v32 = v14;
  (*(v9 + 16))(v12, v14, v8);
  sub_1B69C1678(v34, v33);
  v17 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v15;
  *(v19 + 24) = v20;
  *(v19 + 32) = 0x8000000000000000;
  *(v19 + 40) = v30;
  (*(v9 + 32))(v19 + v17, v12, v8);
  v21 = (v19 + v18);
  v22 = v33[1];
  *v21 = v33[0];
  v21[1] = v22;
  v23 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1B6A40310;
  v23[1] = v16;
  v24 = qword_1EDBCAA18;

  v25 = v20;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDBCFD78;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B6A402AC;
  *(v27 + 24) = v19;

  sub_1B69877A4(v26, sub_1B6A402B8, v27);

  (*(v9 + 8))(v32, v8);
  return sub_1B6981634(v34);
}

id BridgedTracker.delayedSubmit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v23 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-v11];
  sub_1B6AB8DA0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = v23;
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v24;
  v16[1] = a4;
  v17 = type metadata accessor for DelayedToken();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v19 = &v18[OBJC_IVAR___AADelayedToken_block];
  *v19 = sub_1B6A3F7C0;
  v19[1] = v15;
  v25.receiver = v18;
  v25.super_class = v17;

  v20 = objc_msgSendSuper2(&v25, sel_init);
  (*(v7 + 8))(v12, v6);

  return v20;
}

void sub_1B6A39C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = *(Strong + OBJC_IVAR___AATracker_eventMirrorStore);
    v34 = a2;
    v35 = v36 | 0x4000000000000000;
    v17 = *(Strong + OBJC_IVAR___AATracker_tracker);
    memset(v39, 0, sizeof(v39));
    v18 = swift_allocObject();
    v32 = a3;
    v19 = v18;
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    v37 = *(v17 + 96);
    (*(v12 + 16))(&v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v11);
    sub_1B69C1678(v39, v38);
    v20 = (*(v12 + 80) + 41) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = a6;
    v22 = swift_allocObject();
    v24 = v34;
    v23 = v35;
    *(v22 + 16) = v17;
    *(v22 + 24) = v24;
    *(v22 + 32) = v23;
    *(v22 + 40) = v32 & 1;
    (*(v12 + 32))(v22 + v20, v14, v11);
    v25 = (v22 + v21);
    v26 = v38[1];
    *v25 = v38[0];
    v25[1] = v26;
    v27 = (v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_1B6A40310;
    v27[1] = v19;
    v28 = qword_1EDBCAA18;
    swift_retain_n();

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDBCFD78;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B6A402AC;
    *(v30 + 24) = v22;

    sub_1B69877A4(v29, sub_1B6A402B8, v30);

    sub_1B6981634(v39);
  }
}

id BridgedTracker.delayedSubmit(eventType:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5[4] = nullsub_1;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1B6A12D6C;
  v5[3] = &block_descriptor_72_0;
  v2 = _Block_copy(v5);
  v3 = [v0 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v2];
  _Block_release(v2);
  return v3;
}

id BridgedTracker.delayedSubmit(eventType:onlyIfTimed:)(uint64_t a1, char a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_75;
  v5 = _Block_copy(v8);
  v6 = [v2 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:a2 & 1 completion:v5];
  _Block_release(v5);
  return v6;
}

id BridgedTracker.delayedSubmit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B6A12D6C;
  v10[3] = &block_descriptor_78;
  v7 = _Block_copy(v10);

  v8 = [v3 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
  return v8;
}

id BridgedTracker.delayedSubmit(rawEvent:onlyIfTimed:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v24 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  sub_1B6AB8DA0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = v24;
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v25;
  v16[1] = a4;
  v17 = type metadata accessor for DelayedToken();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v19 = &v18[OBJC_IVAR___AADelayedToken_block];
  *v19 = sub_1B6A3F7D8;
  v19[1] = v15;
  v26.receiver = v18;
  v26.super_class = v17;

  v20 = a1;

  v21 = objc_msgSendSuper2(&v26, sel_init);
  (*(v7 + 8))(v12, v6);

  return v21;
}

void sub_1B6A3A7C0(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = a3;
    v16 = *&Strong[OBJC_IVAR___AATracker_tracker];
    memset(v36, 0, sizeof(v36));
    v34 = Strong;
    v17 = swift_allocObject();
    v18 = a6;
    v32 = a6;
    v19 = v17;
    *(v17 + 16) = a5;
    *(v17 + 24) = v18;
    v33 = *(v16 + 96);
    (*(v12 + 16))(&v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v11);
    sub_1B69C1678(v36, v35);
    v20 = (*(v12 + 80) + 41) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = a2;
    *(v22 + 32) = 0x8000000000000000;
    *(v22 + 40) = v31 & 1;
    (*(v12 + 32))(v22 + v20, v14, v11);
    v23 = (v22 + v21);
    v24 = v35[1];
    *v23 = v35[0];
    v23[1] = v24;
    v25 = (v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_1B6A40004;
    v25[1] = v19;
    v26 = qword_1EDBCAA18;

    v27 = a2;

    if (v26 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDBCFD78;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B6A402AC;
    *(v29 + 24) = v22;

    sub_1B69877A4(v28, sub_1B6A402B8, v29);

    sub_1B6981634(v36);
  }
}

id BridgedTracker.delayedSubmit(rawEvent:)(uint64_t a1)
{
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B6A12D6C;
  v6[3] = &block_descriptor_85;
  v3 = _Block_copy(v6);
  v4 = [v1 delayedSubmitRawEvent:a1 onlyIfTimed:0 completion:v3];
  _Block_release(v3);
  return v4;
}

id BridgedTracker.delayedSubmit(rawEvent:onlyIfTimed:)(uint64_t a1, char a2)
{
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_88_0;
  v5 = _Block_copy(v8);
  v6 = [v2 delayedSubmitRawEvent:a1 onlyIfTimed:a2 & 1 completion:v5];
  _Block_release(v5);
  return v6;
}

id BridgedTracker.delayedSubmit(rawEvent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_91;
  v5 = _Block_copy(v8);

  v6 = [v3 delayedSubmitRawEvent:a1 onlyIfTimed:0 completion:v5];
  _Block_release(v5);
  return v6;
}

uint64_t BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v29 = a2;
  v28 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v12 = *(v5 + OBJC_IVAR___AATracker_tracker);
  memset(v32, 0, sizeof(v32));
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v30 = *(v12 + 96);
  (*(v9 + 16))(v11, v26, v8);
  sub_1B69C1678(v32, v31);
  v14 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = v28;
  *(v16 + 16) = v12;
  *(v16 + 24) = v17;
  *(v16 + 32) = v25;
  *(v16 + 40) = v29;
  (*(v9 + 32))(v16 + v14, v11, v8);
  v18 = (v16 + v15);
  v19 = v31[1];
  *v18 = v31[0];
  v18[1] = v19;
  v20 = (v16 + ((v15 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_1B6A40310;
  v20[1] = v13;
  v21 = qword_1EDBCAA18;
  swift_retain_n();

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDBCFD78;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B6A402AC;
  *(v23 + 24) = v16;

  sub_1B69877A4(v22, sub_1B6A402B8, v23);

  return sub_1B6981634(v32);
}

uint64_t BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:)(uint64_t a1, int a2, uint64_t a3)
{
  v26 = a2;
  v25 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  memset(v28, 0, sizeof(v28));
  v10 = *(v9 + 96);
  (*(v6 + 16))(v8, a3, v5);
  sub_1B69C1678(v28, v27);
  v11 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v14 = v24;
  v15 = v25;
  *(v13 + 16) = v9;
  *(v13 + 24) = v15;
  *(v13 + 32) = v14;
  *(v13 + 40) = v26;
  (*(v6 + 32))(v13 + v11, v8, v5);
  v16 = (v13 + v12);
  v17 = v27[1];
  *v16 = v27[0];
  v16[1] = v17;
  v18 = (v13 + ((v12 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_1EDBCAA18;
  swift_retain_n();

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDBCFD78;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B6A402AC;
  *(v21 + 24) = v13;

  sub_1B69877A4(v20, sub_1B6A402B8, v21);

  return sub_1B6981634(v28);
}

uint64_t BridgedTracker.explicitSubmit(eventType:submitTime:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v25, 0, sizeof(v25));
  v9 = *(v8 + 96);
  (*(v5 + 16))(v7, a2, v4);
  sub_1B69C1678(v25, v24);
  v10 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v22;
  v14 = v23;
  *(v12 + 16) = v8;
  *(v12 + 24) = v14;
  *(v12 + 32) = v13;
  *(v12 + 40) = 0;
  (*(v5 + 32))(v12 + v10, v7, v4);
  v15 = (v12 + v11);
  v16 = v24[1];
  *v15 = v24[0];
  v15[1] = v16;
  v17 = (v12 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v17 = 0;
  v17[1] = 0;
  v18 = qword_1EDBCAA18;
  swift_retain_n();

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDBCFD78;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6A402AC;
  *(v20 + 24) = v12;

  sub_1B69877A4(v19, sub_1B6A402B8, v20);

  return sub_1B6981634(v25);
}

void BridgedTracker.explicitSubmit(eventType:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_121;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitEvent:ObjCClassFromMetadata onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28[1] = a5;
  v29 = a2;
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + OBJC_IVAR___AATracker_tracker);
  memset(v32, 0, sizeof(v32));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v30 = *(v15 + 96);
  (*(v12 + 16))(v14, a3, v11);
  sub_1B69C1678(v32, v31);
  v17 = (*(v12 + 80) + 41) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a1;
  *(v19 + 32) = 0x8000000000000000;
  *(v19 + 40) = v29;
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v31[1];
  *v20 = v31[0];
  v20[1] = v21;
  v22 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1B6A40310;
  v22[1] = v16;
  v23 = qword_1EDBCAA18;

  v24 = a1;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v19;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  return sub_1B6981634(v32);
}

uint64_t BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:)(void *a1, int a2, uint64_t a3)
{
  v24 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + OBJC_IVAR___AATracker_tracker);
  memset(v26, 0, sizeof(v26));
  v11 = *(v10 + 96);
  (*(v7 + 16))(v9, a3, v6);
  sub_1B69C1678(v26, v25);
  v12 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = a1;
  *(v14 + 32) = 0x8000000000000000;
  *(v14 + 40) = v24;
  (*(v7 + 32))(v14 + v12, v9, v6);
  v15 = (v14 + v13);
  v16 = v25[1];
  *v15 = v25[0];
  v15[1] = v16;
  v17 = (v14 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v17 = 0;
  v17[1] = 0;
  v18 = qword_1EDBCAA18;

  v19 = a1;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDBCFD78;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B6A402AC;
  *(v21 + 24) = v14;

  sub_1B69877A4(v20, sub_1B6A402B8, v21);

  return sub_1B6981634(v26);
}

uint64_t BridgedTracker.explicitRawSubmit(rawEvent:submitTime:)(void *a1, uint64_t a2)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v23, 0, sizeof(v23));
  v10 = *(v9 + 96);
  (*(v6 + 16))(v8, a2, v5);
  sub_1B69C1678(v23, v22);
  v11 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = a1;
  *(v13 + 32) = 0x8000000000000000;
  *(v13 + 40) = 0;
  (*(v6 + 32))(v13 + v11, v8, v5);
  v14 = (v13 + v12);
  v15 = v22[1];
  *v14 = v22[0];
  v14[1] = v15;
  v16 = (v13 + ((v12 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v16 = 0;
  v16[1] = 0;
  v17 = qword_1EDBCAA18;

  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDBCFD78;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6A402AC;
  *(v20 + 24) = v13;

  sub_1B69877A4(v19, sub_1B6A402B8, v20);

  return sub_1B6981634(v23);
}

void BridgedTracker.explicitRawSubmit(rawEvent:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_151;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedTracker.register(dataType:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [swift_getObjCClassFromMetadata() dataName];
  v8 = sub_1B6AB92E0();
  v10 = v9;

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v14 = *(v12 + 88);
  v13 = *(v12 + 96);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = sub_1B6A3F89C;
  v15[6] = v11;

  sub_1B69877A4(v14, sub_1B6A3F8A8, v15);
}

id sub_1B6A3CD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B6AB92B0();
  v5 = (*(a3 + 16))(a3, v4);

  return v5;
}

uint64_t BridgedTracker.push(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v8 = sub_1B6A43B04(a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v5 + OBJC_IVAR___AATracker_tracker);
  if (a2)
  {
    v16 = sub_1B69D821C();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v15 + 88);
  v17 = *(v15 + 96);
  v19 = v14 & 1;
  v20 = (v14 >> 8) & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v8;
  *(v21 + 32) = v10;
  *(v21 + 40) = v12;
  *(v21 + 48) = v19;
  *(v21 + 49) = v20;
  *(v21 + 56) = v16;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  *(v21 + 80) = a5;

  swift_unknownObjectRetain();

  sub_1B69877A4(v18, sub_1B6A3F8C0, v21);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall BridgedTracker.pop(dataName:)(Swift::String dataName)
{
  object = dataName._object;
  countAndFlagsBits = dataName._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___AATracker_tracker);
  v6 = *(v4 + 88);
  v5 = *(v4 + 96);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = countAndFlagsBits;
  v7[4] = object;

  sub_1B69877A4(v6, sub_1B6A40314, v7);
}

uint64_t sub_1B6A3D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [swift_getObjCClassFromMetadata() dataName];
  v6 = sub_1B6AB92E0();
  v8 = v7;

  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v11 = *(v9 + 88);
  v10 = *(v9 + 96);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v6;
  v12[4] = v8;

  sub_1B69877A4(v11, a3, v12);
}

uint64_t sub_1B6A3D25C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a1;
  v9 = [ObjCClassFromMetadata dataName];
  v10 = sub_1B6AB92E0();
  v12 = v11;

  v13 = *&v8[OBJC_IVAR___AATracker_tracker];
  v15 = *(v13 + 88);
  v14 = *(v13 + 96);
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v10;
  v16[4] = v12;

  sub_1B69877A4(v15, a5, v16);
}

uint64_t BridgedTracker.clearStack(of:includeParentTrackers:)(uint64_t a1, char a2)
{
  v4 = [swift_getObjCClassFromMetadata() dataName];
  v5 = sub_1B6AB92E0();
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v10 = *(v8 + 88);
  v9 = *(v8 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = a2;

  sub_1B69877A4(v10, sub_1B6A3F938, v11);
}

id BridgedTracker.chain(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v7 = Tracker.chain(name:identifier:)(a1, a2, 0, 0);
  v8 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore);
  v9 = type metadata accessor for BridgedTracker();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___AATracker_name];
  *v11 = a1;
  v11[1] = a2;
  *&v10[OBJC_IVAR___AATracker_tracker] = v7;
  *&v10[OBJC_IVAR___AATracker_eventMirrorStore] = v8;
  v12 = &v10[OBJC_IVAR___AATracker_identifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  v14.receiver = v10;
  v14.super_class = v9;

  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedTracker.chain(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + OBJC_IVAR___AATracker_tracker);
  v11 = Tracker.chain(name:identifier:)(a1, a2, a3, a4);
  v12 = *(v5 + OBJC_IVAR___AATracker_eventMirrorStore);
  v13 = type metadata accessor for BridgedTracker();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___AATracker_name];
  *v15 = a1;
  v15[1] = a2;
  *&v14[OBJC_IVAR___AATracker_tracker] = v11;
  *&v14[OBJC_IVAR___AATracker_eventMirrorStore] = v12;
  v16 = &v14[OBJC_IVAR___AATracker_identifier];
  *v16 = a3;
  v16[1] = a4;
  v18.receiver = v14;
  v18.super_class = v13;

  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t BridgedTracker.path.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);

  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v1[3];
    if (v5)
    {
      v6 = v1[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B69B5A00(0, *(v2 + 2) + 1, 1, v2);
      }

      v8 = *(v2 + 2);
      v7 = *(v2 + 3);
      if (v8 >= v7 >> 1)
      {
        v2 = sub_1B69B5A00((v7 > 1), v8 + 1, 1, v2);
      }

      *(v2 + 2) = v8 + 1;
      v3 = &v2[16 * v8];
      *(v3 + 4) = v6;
      *(v3 + 5) = v5;
    }

    v4 = v1[19];

    v1 = v4;
  }

  while (v4);

  return sub_1B69B919C(v2);
}

uint64_t BridgedTracker.debugPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);
  v7 = MEMORY[0x1E69E7CC0];

  while (1)
  {

    v3 = sub_1B6A50610(v2, &v7);

    v4 = *(v1 + 152);

    if (!v4)
    {
      break;
    }

    v1 = v4;
    if ((v3 & 1) == 0)
    {

      break;
    }
  }

  v5 = v7;

  return sub_1B69B919C(v5);
}

id BridgedTracker.onSessionChange(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  v8 = Tracker.onSessionChange(block:)(sub_1B6A3F968, v7);

  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for BridgedSessionObserver();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___AASessionObserver_sessionObserver] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_1B6A3DCF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *&Strong[OBJC_IVAR___AATracker_eventMirrorStore];

  v9 = type metadata accessor for BridgedAccessTracker();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v10[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v8;
  v12.receiver = v10;
  v12.super_class = v9;

  v11 = objc_msgSendSuper2(&v12, sel_init);
  a4(v11, a2);
}

uint64_t BridgedTracker.removeSessionObservers(forObject:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___AATracker_tracker);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    v5 = *(result + 56);
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1B69877A4(v6, sub_1B6A3F974, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BridgedTracker.transaction(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(v5 + 88);
  v7 = *(v5 + 96);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1B6A3F97C;
  v9[4] = v6;
  v10 = v2;

  sub_1B69877A4(v8, sub_1B69AA644, v9);
}

uint64_t BridgedTracker.dynamicTransaction(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___AATracker_tracker];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v12 = *(v9 + 88);
  v11 = *(v9 + 96);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = sub_1B6A402BC;
  v13[6] = v10;
  v14 = v4;

  sub_1B69877A4(v12, sub_1B6A3F99C, v13);
}

void sub_1B6A3E2D4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v5 = *(a2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v6 = type metadata accessor for BridgedAccessTracker();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v7[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v8 = objc_msgSendSuper2(&v10, sel_init);
  a3(v8, v9);
}

uint64_t BridgedTracker.whenSession(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B6A3F9B4;
  *(v7 + 24) = v6;
  v9 = *(v5 + 88);
  v8 = *(v5 + 96);
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = sub_1B6A3F9D4;
  v10[4] = v7;

  v11 = v2;

  sub_1B69877A4(v9, sub_1B6A0ABEC, v10);
}

uint64_t BridgedTracker.ifSession(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v8 = *(v5 + 88);
  v7 = *(v5 + 96);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1B6A402C0;
  v9[4] = v6;

  v10 = v2;

  sub_1B69877A4(v8, sub_1B6A3F9DC, v9);
}

void sub_1B6A3E880(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + OBJC_IVAR___AATracker_eventMirrorStore);
  v7 = type metadata accessor for BridgedAccessTracker();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v8[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  v9 = objc_msgSendSuper2(&v11, sel_init);
  a2(v9, v10);
}

Swift::Void __swiftcall BridgedTracker.enterGroup(groupName:)(Swift::String groupName)
{
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v11 = *(v10 + 88);
  v17 = *(v10 + 96);
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = countAndFlagsBits;
  *(v14 + 2) = v10;
  *(v14 + 3) = v15;
  *(v14 + 4) = object;
  (*(v4 + 32))(&v14[v12], v7, v3);
  v16 = &v14[v13];
  *v16 = 0;
  v16[8] = 1;

  sub_1B69877A4(v11, sub_1B6A3F9E8, v14);

  (*(v4 + 8))(v9, v3);
}

uint64_t BridgedTracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = *(v3 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v13 = *(v12 + 88);
  v20[1] = *(v12 + 96);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v6 + 32))(&v16[v14], v9, v5);
  v18 = &v16[v15];
  *v18 = v22;
  v18[8] = 0;

  sub_1B69877A4(v13, sub_1B6A402B0, v16);

  return (*(v6 + 8))(v11, v5);
}

Swift::Void __swiftcall BridgedTracker.enterGroup()()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8E30();
  v22[0] = sub_1B6AB8DD0();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  sub_1B6AB8DA0();
  v16 = *(v13 + 88);
  v22[1] = *(v13 + 96);
  (*(v2 + 16))(v5, v7, v1);
  v17 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v22[0];
  *(v19 + 2) = v13;
  *(v19 + 3) = v20;
  *(v19 + 4) = v15;
  (*(v2 + 32))(&v19[v17], v5, v1);
  v21 = &v19[v18];
  *v21 = 0;
  v21[8] = 1;

  sub_1B69877A4(v16, sub_1B6A402B0, v19);

  (*(v2 + 8))(v7, v1);
}

Swift::Void __swiftcall BridgedTracker.leaveGroup()()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;

  sub_1B69877A4(v3, sub_1B6A3FB60, v4);
}

uint64_t sub_1B6A3F33C(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___AATracker_tracker);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a1(*(result + 56));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6A3F3C0(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *&a1[OBJC_IVAR___AATracker_tracker];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(result + 56);
    v8 = a1;
    a3(v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6A3F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    sub_1B69E85A4();
    a2 = sub_1B6ABA330();
    v9 = v10;
  }

  swift_beginAccess();

  v11 = *(a1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 136);
  *(a1 + 136) = 0x8000000000000000;
  sub_1B69C2F78(a4, a5, a2, v9, isUniquelyReferenced_nonNull_native);

  *(a1 + 136) = v14;
  return swift_endAccess();
}

uint64_t sub_1B6A3F530(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = sub_1B6AB9110();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (a2)
  {
    v16 = a1;
    v17 = a2;
  }

  else
  {
    sub_1B69E85A4();
    v16 = sub_1B6ABA330();
    v17 = v18;
  }

  swift_beginAccess();
  v19 = v4[16];
  v20 = *(v19 + 16);

  if (!v20)
  {
LABEL_12:

    if ((a3 & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v21 = sub_1B6993940(v16, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B6982544(*(v19 + 56) + 40 * v21, v29);

  sub_1B6A3FE48();
  sub_1B6A244C4();
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = v28[2];
  v26 = v28[3];
  v27 = *(v28[1] + 16);

  if (!v27)
  {
LABEL_11:

    goto LABEL_12;
  }

  v29[4] = &off_1F2E77398;
  v29[0] = MEMORY[0x1E69E7CC0];
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v24;
  swift_beginAccess();
  sub_1B699A480(v29, v16, v17);
  result = swift_endAccess();
  if ((a3 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v4[19])
  {
    return sub_1B6A3F530(a1, a2, 1);
  }

  return result;
}

uint64_t sub_1B6A3F7F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1B6AB8DB0() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v4, v5, v6, v1 + v3, v8, v9);
}

void sub_1B6A3F89C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  sub_1B6A36124(a1, *(v2 + 24), a2);
}

uint64_t sub_1B6A3F8C0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (*(v0 + 49))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 16);
  return sub_1B6A21578(v5, v7, v8, v10 | v9, v1, v2, v3, v4);
}

uint64_t sub_1B6A3F90C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1B6A21EA4(v1, v2);
}

uint64_t sub_1B6A3F938()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  return sub_1B6A3F530(v1, v2, v3);
}

uint64_t objectdestroy_212Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

void sub_1B6A3FAC4()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[8];

  sub_1B6A53B34(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t objectdestroy_197Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_185Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_162Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1B6A3FCE0()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = v0[2];
  return sub_1B6A164AC(v2, v3, v4, *(v4 + *(v1 + 64)));
}

id sub_1B6A3FD68(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for BridgedEventMirrorStore();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = type metadata accessor for BridgedTracker();
  v6 = objc_allocWithZone(v5);
  v7 = 0x6E6564646968;
  if (v2)
  {
    v7 = v3;
  }

  v8 = 0xE600000000000000;
  if (v2)
  {
    v8 = v2;
  }

  v9 = &v6[OBJC_IVAR___AATracker_name];
  *v9 = v7;
  v9[1] = v8;
  *&v6[OBJC_IVAR___AATracker_tracker] = a1;
  *&v6[OBJC_IVAR___AATracker_eventMirrorStore] = v4;
  v10 = &v6[OBJC_IVAR___AATracker_identifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v12.receiver = v6;
  v12.super_class = v5;

  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_1B6A3FE48()
{
  result = qword_1EDBCC3B0;
  if (!qword_1EDBCC3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCC3B0);
  }

  return result;
}

void sub_1B6A3FEAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for BridgedEvent, &off_1F2E74868);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A3FF0C(uint64_t a1, uint64_t a2)
{
  sub_1B6A3FEAC(0, qword_1EDBC8268, type metadata accessor for EventSubmitResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A3FF8C(uint64_t a1)
{
  sub_1B6A3FEAC(0, qword_1EDBC8B18, type metadata accessor for ProcessEvent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  sub_1B69C346C(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  }

  if (*(v0 + v6))
  {
    v8 = *(v0 + v6 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1B6A4012C()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 40);
  v5 = *(*(v0 + 16) + 88);
  v7[2] = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v4;
  v10 = v0 + v2;
  v11 = 0;
  v12 = 0;
  v13 = v0 + v3;
  v14 = *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B6995F94(v5, sub_1B6A40224, v7, v0 + v2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A40338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A40388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6A403E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A403FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 28789;
    }

    else
    {
      v4 = 0x6F626C6F6F686373;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xEA00000000006B6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1853321060;
    }

    else
    {
      v4 = 1701736302;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE200000000000000;
  v7 = 28789;
  if (a2 != 2)
  {
    v7 = 0x6F626C6F6F686373;
    v6 = 0xEA00000000006B6FLL;
  }

  if (a2)
  {
    v2 = 1853321060;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B6ABA0F0();
  }

  return v10 & 1;
}

uint64_t sub_1B6A40518(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7954788;
    }

    else
    {
      v4 = 0x65736963657270;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1920298856;
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 3)
    {
      v4 = 0x6574756E696DLL;
    }

    else
    {
      v4 = 0x72657474696ALL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 7954788;
    }

    else
    {
      v8 = 0x65736963657270;
    }

    if (a2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6574756E696DLL;
    if (a2 != 3)
    {
      v5 = 0x72657474696ALL;
    }

    if (a2 == 2)
    {
      v6 = 1920298856;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1B6ABA0F0();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1B6A40670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x534F64615069;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5459817;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x534F63616DLL;
    if (a2 != 3)
    {
      v6 = 0x534F6E6F69736976;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F64615069;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1B6ABA0F0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void sub_1B6A407E8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  sub_1B6A41384();
  if (v5 && (v4 & 1) != 0)
  {
    v7 = 1000.0;
    v8 = v6 / 1000.0;
    if (v5 == 1)
    {
      goto LABEL_12;
    }

    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = ceil(v8) * 1000.0;
    if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v6 < 9.22337204e18)
    {
LABEL_19:
      *a2 = v6;
      return;
    }

    __break(1u);
  }

  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = 9.22337204e18;
  v8 = 9.22337204e18;
  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v6 = floor(v8) * v7;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = 9.22337204e18;
  v8 = 9.22337204e18;
  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_16:
  v6 = round(v8) * v7;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for TimeDurationGranularity.RoundingRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeDurationGranularity.RoundingRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B6A40B24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73646E6F636573;
  }

  else
  {
    v4 = 0x636573696C6C696DLL;
  }

  if (v3)
  {
    v5 = 0xEC00000073646E6FLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x73646E6F636573;
  }

  else
  {
    v6 = 0x636573696C6C696DLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEC00000073646E6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();
  }

  return v9 & 1;
}

uint64_t sub_1B6A40BD4()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A40C60()
{
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A40CD8()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A40D60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B6AB9EF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B6A40DC0(uint64_t *a1@<X8>)
{
  v2 = 0x636573696C6C696DLL;
  if (*v1)
  {
    v2 = 0x73646E6F636573;
  }

  v3 = 0xEC00000073646E6FLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1B6A40ECC()
{
  result = qword_1EB95B998;
  if (!qword_1EB95B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B998);
  }

  return result;
}

uint64_t sub_1B6A40F50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A40FA0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A40FA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B6AB95D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B6A40FF8()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A410A4()
{
  *v0;
  *v0;
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A4113C()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A411E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B6A412E4();
  *a2 = result;
  return result;
}

void sub_1B6A41214(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE200000000000000;
  v5 = 28789;
  if (*v1 != 2)
  {
    v5 = 0x6F626C6F6F686373;
    v4 = 0xEA00000000006B6FLL;
  }

  if (*v1)
  {
    v3 = 1853321060;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1B6A41290()
{
  result = qword_1EB95B9B0;
  if (!qword_1EB95B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B9B0);
  }

  return result;
}

uint64_t sub_1B6A412E4()
{
  v0 = sub_1B6AB9EF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B6A41330()
{
  result = qword_1EB95B9B8;
  if (!qword_1EB95B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B9B8);
  }

  return result;
}

void sub_1B6A41384()
{
  if (!qword_1EDBC97A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC97A0);
    }
  }
}

id sub_1B6A41408(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10 = sub_1B6AB8D20();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_1B6A41520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id BridgedTimedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTimedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedTimedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedTimedData()
{
  result = qword_1EDBC9898;
  if (!qword_1EDBC9898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A41890()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1B6A4197C()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  v7 = v0[5];
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v0[5];
  }

  if (v7 >= 3)
  {
    v9 = v0[4];
  }

  else
  {
    v9 = 0;
  }

  v27 = v9;
  v28 = v6;
  if (v7 >= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v25 = v8;
  v26 = v10;
  v11 = v0[1];
  v24 = *v0;
  v12 = type metadata accessor for Session();
  v13 = *(v2 + 16);
  v13(v5, v0 + *(v12 + 28), v1);
  v14 = *(v0 + *(v12 + 32));
  v15 = type metadata accessor for BridgedSession();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___AASession_identifier];
  v18 = v25;
  *v17 = v24;
  *(v17 + 1) = v11;
  *&v16[OBJC_IVAR___AASession_kind] = v18;
  v19 = &v16[OBJC_IVAR___AASession_name];
  v20 = v26;
  *v19 = v27;
  *(v19 + 1) = v20;
  v13(&v16[OBJC_IVAR___AASession_startDate], v5, v1);
  *&v16[OBJC_IVAR___AASession_sessionData] = v14;
  sub_1B6992E2C(v28, v7);
  v29.receiver = v16;
  v29.super_class = v15;

  v21 = objc_msgSendSuper2(&v29, sel_init);
  (*(v2 + 8))(v5, v1);
  return v21;
}

uint64_t Session.Kind.description.getter()
{
  v1 = v0[1];
  v2 = 0x7274656D656C6574;
  v3 = 0x656D69746C616572;
  if (v1 != 2)
  {
    v3 = *v0;
    v4 = v0[1];
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x6E65764572657375;
  }

  sub_1B6992E2C(*v0, v1);
  return v5;
}

uint64_t Session.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Session.appSessionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Session.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B6992E2C(v2, v3);
}

uint64_t Session.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Session() + 28);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Session.sessionData.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session() + 32));
}

id sub_1B6A41D24()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      if (qword_1EB95A9B0 != -1)
      {
        swift_once();
      }

      v2 = qword_1EB95BAE8;
    }

    else
    {
      if (v1 != 2)
      {
        v4 = *v0;
        v5 = type metadata accessor for BridgedIDSessionKind();
        v6 = objc_allocWithZone(v5);
        *&v6[OBJC_IVAR___AAIDSessionKind_kind] = 3;
        v7 = &v6[OBJC_IVAR___AAIDSessionKind_name];
        *v7 = v4;
        *(v7 + 1) = v1;
        v8.receiver = v6;
        v8.super_class = v5;

        return objc_msgSendSuper2(&v8, sel_init);
      }

      if (qword_1EB95A9B8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EB95BAF0;
    }
  }

  else
  {
    if (qword_1EB95A9A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB95BAE0;
  }

  return v2;
}

uint64_t Session.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_1B6ABA110();
    v8 = v6;
    v9 = v7 == 0x6E65764572657375 && v6 == 0xEA00000000007374;
    if (v9 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v7 = 0;
      v8 = 0;
    }

    else if (v7 == 0x7274656D656C6574 && v8 == 0xE900000000000079 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v7 = 0;
      v8 = 1;
    }

    else if (v7 == 0x656D69746C616572 && v8 == 0xE800000000000000 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v7 = 0;
      v8 = 2;
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v7;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Session.Kind.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2B0();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1B6992E2C(v2, v3);
  sub_1B6ABA130();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Session.Kind.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1B8C98A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1B8C98A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1B8C98A40](v2);
  }

  v4 = *v0;
  MEMORY[0x1B8C98A40](3);

  return sub_1B6AB9380();
}

uint64_t Session.Kind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6ABA1F0();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8C98A40](v3);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A422A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6ABA1F0();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8C98A40](v3);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A42334()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1B8C98A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1B8C98A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1B8C98A40](v2);
  }

  v4 = *v0;
  MEMORY[0x1B8C98A40](3);

  return sub_1B6AB9380();
}

uint64_t sub_1B6A423CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6ABA1F0();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8C98A40](v3);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A42488()
{
  v1 = v0[1];
  v2 = 0x7274656D656C6574;
  v3 = 0x656D69746C616572;
  if (v1 != 2)
  {
    v3 = *v0;
    v4 = v0[1];
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x6E65764572657375;
  }

  sub_1B6992E2C(*v0, v1);
  return v5;
}

uint64_t _s12AppAnalytics7SessionV4KindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_1B69C2E8C(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_1B69C2E8C(*a1, 1uLL);
        sub_1B69C2E8C(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_1B69C2E8C(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_1B69C2E8C(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_1B6992E2C(*a2, *(a2 + 8));
    sub_1B6992E2C(v2, v3);
    sub_1B69C2E8C(v2, v3);
    sub_1B69C2E8C(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1B6992E2C(*a1, v3);
    sub_1B6992E2C(v2, v3);
    sub_1B69C2E8C(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = *a1;
  v11 = sub_1B6ABA0F0();
  sub_1B6992E2C(v4, v5);
  sub_1B6992E2C(v2, v3);
  sub_1B69C2E8C(v2, v3);
  sub_1B69C2E8C(v4, v5);
  return v11 & 1;
}

uint64_t sub_1B6A426A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A42700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B6A42760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6A427A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A42804(uint64_t a1)
{
  sub_1B69809F4(0, qword_1EDBC90C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A42870(uint64_t a1)
{
  sub_1B6A428CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A428CC()
{
  if (!qword_1EB95B9C0)
  {
    sub_1B697ED90(255, &qword_1EDBCB820);
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B9C0);
    }
  }
}

uint64_t SnapshotEntry.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B6A42994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6A429DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id BridgedRawEvent.init(name:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v3[OBJC_IVAR___AARawEvent_properties] = a3;
  if (qword_1EDBC8A58 != -1)
  {
    v12 = ObjectType;
    swift_once();
    ObjectType = v12;
  }

  v9 = qword_1EDBC8A60;
  *&v3[OBJC_IVAR___AARawEvent_sessionGroup] = qword_1EDBC8A60;
  v3[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v3[OBJC_IVAR___AARawEvent_timestampGranularity] = 0;
  *&v3[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v3[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v3[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = v9;
  return objc_msgSendSuper2(&v13, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:timestampGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___AARawEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v11[OBJC_IVAR___AARawEvent_properties] = a5;
  *&v11[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  v11[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v11[OBJC_IVAR___AARawEvent_timestampGranularity] = a4;
  *&v11[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v11[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v11[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:timestampGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___AARawEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v5[OBJC_IVAR___AARawEvent_properties] = a5;
  *&v5[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  v5[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v5[OBJC_IVAR___AARawEvent_timestampGranularity] = a4;
  *&v5[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v5[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v5[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___AARawEvent_name];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR___AARawEvent_properties] = a7;
  v15[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v15[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v15[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v15[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v15[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v15[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR___AARawEvent_name];
  *v16 = a1;
  v16[1] = a2;
  *&v7[OBJC_IVAR___AARawEvent_properties] = a7;
  v7[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v7[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v7[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v7[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v7[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v7[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v18.receiver = v7;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___AARawEvent_name];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR___AARawEvent_properties] = a7;
  v17[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v17[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v17[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v17[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v17[OBJC_IVAR___AARawEvent_samplingThreshold] = a8;
  v17[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR___AARawEvent_name];
  *v18 = a1;
  v18[1] = a2;
  *&v8[OBJC_IVAR___AARawEvent_properties] = a7;
  v8[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v8[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v8[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v8[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v8[OBJC_IVAR___AARawEvent_samplingThreshold] = a8;
  v8[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v20.receiver = v8;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:requiresTrackingConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___AARawEvent_name];
  *v19 = a1;
  v19[1] = a2;
  *&v18[OBJC_IVAR___AARawEvent_properties] = a8;
  v18[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  v18[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = a5;
  *&v18[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v18[OBJC_IVAR___AARawEvent_timestampGranularity] = a6;
  *&v18[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a7;
  *&v18[OBJC_IVAR___AARawEvent_samplingThreshold] = a9;
  v21.receiver = v18;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:requiresTrackingConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v19 = &v9[OBJC_IVAR___AARawEvent_name];
  *v19 = a1;
  v19[1] = a2;
  *&v9[OBJC_IVAR___AARawEvent_properties] = a8;
  v9[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  v9[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = a5;
  *&v9[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v9[OBJC_IVAR___AARawEvent_timestampGranularity] = a6;
  *&v9[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a7;
  *&v9[OBJC_IVAR___AARawEvent_samplingThreshold] = a9;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_1B6A43710()
{
  v1 = *(v0 + OBJC_IVAR___AARawEvent_properties);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + OBJC_IVAR___AARawEvent_properties) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v22 = *(v0 + OBJC_IVAR___AARawEvent_properties);

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v11;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v7)) | (v10 << 6);
        v14 = (*(v22 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v22 + 56) + 8 * v13);

        v18 = v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B69BDE7C(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1B69BDE7C((v19 > 1), v20 + 1, 1, v11);
          v11 = result;
        }

        v7 &= v7 - 1;
        *(v11 + 16) = v20 + 1;
        v21 = v11 + 56 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v15;
        *(v21 + 48) = v18;
        *(v21 + 56) = v23;
        *(v21 + 72) = &type metadata for BridgedRawEventMirrorProperty;
        *(v21 + 80) = &off_1F2E75D08;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

id BridgedRawEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DataEventType.toDict(timestampGranularity:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = *a1;
  v5 = 0;
  v6 = 0;
  return (*(a3 + 56))(v4);
}

uint64_t DataEventType.toDict(timestampConfiguration:)(_BYTE *a1, double a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v6 = a2;
  v7 = 0;
  return (*(a4 + 56))(v5);
}

uint64_t sub_1B6A43B04(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_1B6A46A3C();
  sub_1B6A46A3C();

  sub_1B6A46A3C();

  return a1;
}

void *sub_1B6A43C94(int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v45 = a2;
  v46 = a1;
  v54[4] = *MEMORY[0x1E69E9840];
  v47 = sub_1B6AB8850();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6AB9E10();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v23 = sub_1B6AB88A0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    __break(1u);
  }

  v26 = v45;
  v27 = v45 >> 8;
  (*(v19 + 32))(v22, v17, v18);
  v54[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v54[0]) = v26 & 1;
  BYTE1(v54[0]) = v27;
  v28 = sub_1B6AB8880();
  sub_1B69A4BDC(v54, v22);
  v28(v53, 0);
  v29 = swift_allocObject();
  *(v29 + 16) = v46;
  *(v29 + 24) = a6;
  *(v29 + 32) = v26 & 1;
  *(v29 + 33) = v27;
  *v13 = sub_1B69C084C;
  v13[1] = v29;
  (*(v10 + 104))(v13, *MEMORY[0x1E6967FB8], v47);
  sub_1B6AB8860();
  sub_1B6A2CA74();
  v30 = v48;
  v31 = sub_1B6AB8870();
  if (!v30)
  {
    v35 = v31;
    v36 = v32;
    v37 = objc_opt_self();
    v38 = sub_1B6AB8C60();
    v53[0] = 0;
    v13 = [v37 JSONObjectWithData:v38 options:0 error:v53];

    v39 = v53[0];
    if (v13)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v54, v53);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v13 = v49;
        v40 = sub_1B6AB91F0();
        v41 = [v37 isValidJSONObject_];

        if (v41)
        {
          __swift_destroy_boxed_opaque_existential_1(v54);
          sub_1B6993C94(v35, v36);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v44 = v13;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v43 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_4;
    }

    v42 = v39;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v35, v36);
  }

LABEL_4:
  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

void *sub_1B6A44190(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v50 = a6;
  v46 = a2;
  v47 = a1;
  v57[4] = *MEMORY[0x1E69E9840];
  v48 = sub_1B6AB8850();
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB9E10();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = v50;
  v24 = sub_1B6AB88A0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    __break(1u);
  }

  v27 = v46;
  v28 = v46 >> 8;
  (*(v20 + 32))(v23, v18, v19);
  v57[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v57[0]) = v27 & 1;
  BYTE1(v57[0]) = v28;
  v29 = sub_1B6AB8880();
  sub_1B69A4BDC(v57, v23);
  v29(v56, 0);
  v30 = swift_allocObject();
  *(v30 + 16) = v47;
  *(v30 + 24) = a7;
  *(v30 + 32) = v27 & 1;
  *(v30 + 33) = v28;
  *v14 = sub_1B69C084C;
  v14[1] = v30;
  (*(v11 + 104))(v14, *MEMORY[0x1E6967FB8], v48);
  sub_1B6AB8860();
  sub_1B6A2D99C();
  v31 = v49;
  v32 = sub_1B6AB8870();
  if (!v31)
  {
    v36 = v32;
    v37 = v33;
    v38 = objc_opt_self();
    v39 = sub_1B6AB8C60();
    v56[0] = 0;
    v14 = [v38 JSONObjectWithData:v39 options:0 error:v56];

    v40 = v56[0];
    if (v14)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v57, v56);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v14 = v51;
        v41 = sub_1B6AB91F0();
        v42 = [v38 isValidJSONObject_];

        if (v42)
        {
          __swift_destroy_boxed_opaque_existential_1(v57);
          sub_1B6993C94(v36, v37);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v45 = v14;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v44 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v36, v37);
      __swift_destroy_boxed_opaque_existential_1(v57);
      goto LABEL_4;
    }

    v43 = v40;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v36, v37);
  }

LABEL_4:
  v34 = *MEMORY[0x1E69E9840];
  return v14;
}

void *sub_1B6A44690(int a1, __int16 a2, double a3)
{
  v42 = a1;
  v54[4] = *MEMORY[0x1E69E9840];
  v44 = sub_1B6AB8850();
  v43 = *(v44 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B6AB9E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v3[5];
  v51 = v3[4];
  v52[0] = v18;
  *(v52 + 9) = *(v3 + 89);
  v19 = v3[1];
  v47 = *v3;
  v20 = v3[2];
  v50 = v3[3];
  v48 = v19;
  v49 = v20;
  v21 = sub_1B6AB88A0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  (*(v14 + 32))(v17, v12, v13);
  v54[3] = &type metadata for TimeDurationGranularity;
  LOWORD(v54[0]) = a2 & 0xFF01;
  v24 = sub_1B6AB8880();
  sub_1B69A4BDC(v54, v17);
  v24(v53, 0);
  v25 = swift_allocObject();
  *(v25 + 16) = v42;
  *(v25 + 24) = a3;
  *(v25 + 32) = a2 & 1;
  *(v25 + 33) = HIBYTE(a2);
  *v8 = sub_1B69C084C;
  v8[1] = v25;
  (*(v43 + 104))(v8, *MEMORY[0x1E6967FB8], v44);
  sub_1B6AB8860();
  sub_1B6A318F8();
  v26 = v45;
  v27 = sub_1B6AB8870();
  if (!v26)
  {
    v31 = v27;
    v32 = v28;
    v33 = objc_opt_self();
    v34 = sub_1B6AB8C60();
    v53[0] = 0;
    v8 = [v33 JSONObjectWithData:v34 options:0 error:v53];

    v35 = v53[0];
    if (v8)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v54, v53);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v8 = v46;
        v36 = sub_1B6AB91F0();
        v37 = [v33 isValidJSONObject_];

        if (v37)
        {
          __swift_destroy_boxed_opaque_existential_1(v54);
          sub_1B6993C94(v31, v32);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v40 = v8;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v39 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_4;
    }

    v38 = v35;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v31, v32);
  }

LABEL_4:
  v29 = *MEMORY[0x1E69E9840];
  return v8;
}

id sub_1B6A44BCC(int a1, unsigned int a2, double a3)
{
  v43 = a1;
  v48[4] = *MEMORY[0x1E69E9840];
  v44 = sub_1B6AB8850();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B6AB9E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B6AB88A0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  v21 = a2;
  v22 = a2 >> 8;
  (*(v14 + 32))(v17, v12, v13);
  v48[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v48[0]) = v21 & 1;
  BYTE1(v48[0]) = v22;
  v23 = sub_1B6AB8880();
  sub_1B69A4BDC(v48, v17);
  v23(v47, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = a3;
  *(v24 + 32) = v21 & 1;
  *(v24 + 33) = v22;
  *v8 = sub_1B69C084C;
  v8[1] = v24;
  v26 = *(v5 + 104);
  v25 = (v5 + 104);
  v26(v8, *MEMORY[0x1E6967FB8], v44);
  sub_1B6AB8860();
  type metadata accessor for SummaryEventData();
  sub_1B6A4717C(qword_1EDBC9208, type metadata accessor for SummaryEventData);
  v27 = v45;
  v28 = sub_1B6AB8870();
  if (!v27)
  {
    v32 = v28;
    v33 = v29;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v47[0] = 0;
    v25 = [v34 JSONObjectWithData:v35 options:0 error:v47];

    v36 = v47[0];
    if (v25)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v48, v47);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v25 = v46;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v48);
          sub_1B6993C94(v32, v33);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v25;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_4;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

LABEL_4:
  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

char *sub_1B6A450F0(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, double a9)
{
  v56 = a8;
  v53 = a6;
  v54 = a7;
  v51 = a5;
  v50 = a1;
  v61[4] = *MEMORY[0x1E69E9840];
  v52 = sub_1B6AB8850();
  v49 = *(v52 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B6AB9E10();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v59 = a4;
  v25 = sub_1B6AB88A0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    __break(1u);
  }

  v28 = a2 >> 8;
  (*(v21 + 32))(v24, v19, v20);
  v61[3] = &type metadata for TimeDurationGranularity;
  v29 = a2 & 1;
  LOWORD(v61[0]) = a2 & 0xFF01;
  v30 = sub_1B6AB8880();
  sub_1B69A4BDC(v61, v24);
  v30(v60, 0);
  v31 = swift_allocObject();
  *(v31 + 16) = v50;
  *(v31 + 24) = a9;
  *(v31 + 32) = v29;
  *(v31 + 33) = v28;
  v32 = v52;
  *v15 = v53;
  v15[1] = v31;
  (*(v49 + 104))(v15, *MEMORY[0x1E6967FB8], v32);
  v33 = sub_1B6AB8860();
  v54(v33);
  v34 = v55;
  v35 = sub_1B6AB8870();
  if (!v34)
  {
    v39 = v35;
    v40 = v36;
    v41 = objc_opt_self();
    v42 = sub_1B6AB8C60();
    v60[0] = 0;
    v24 = [v41 JSONObjectWithData:v42 options:0 error:v60];

    v43 = v60[0];
    if (v24)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v61, v60);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v24 = v57;
        v44 = sub_1B6AB91F0();
        v45 = [v41 isValidJSONObject_];

        if (v45)
        {
          __swift_destroy_boxed_opaque_existential_1(v61);
          sub_1B6993C94(v39, v40);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v48 = v24;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v47 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v39, v40);
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_4;
    }

    v46 = v43;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v39, v40);
  }

LABEL_4:
  v37 = *MEMORY[0x1E69E9840];
  return v24;
}

void *sub_1B6A455DC(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v45 = a2;
  v46 = a1;
  v54[4] = *MEMORY[0x1E69E9840];
  v47 = sub_1B6AB8850();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6AB9E10();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v23 = sub_1B6AB88A0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    __break(1u);
  }

  v26 = v45;
  v27 = v45 >> 8;
  (*(v19 + 32))(v22, v17, v18);
  v54[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v54[0]) = v26 & 1;
  BYTE1(v54[0]) = v27;
  v28 = sub_1B6AB8880();
  sub_1B69A4BDC(v54, v22);
  v28(v53, 0);
  v29 = swift_allocObject();
  *(v29 + 16) = v46;
  *(v29 + 24) = a6;
  *(v29 + 32) = v26 & 1;
  *(v29 + 33) = v27;
  *v13 = sub_1B69C084C;
  v13[1] = v29;
  (*(v10 + 104))(v13, *MEMORY[0x1E6967FB8], v47);
  sub_1B6AB8860();
  sub_1B6A47128();
  v30 = v48;
  v31 = sub_1B6AB8870();
  if (!v30)
  {
    v35 = v31;
    v36 = v32;
    v37 = objc_opt_self();
    v38 = sub_1B6AB8C60();
    v53[0] = 0;
    v13 = [v37 JSONObjectWithData:v38 options:0 error:v53];

    v39 = v53[0];
    if (v13)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v54, v53);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v13 = v49;
        v40 = sub_1B6AB91F0();
        v41 = [v37 isValidJSONObject_];

        if (v41)
        {
          __swift_destroy_boxed_opaque_existential_1(v54);
          sub_1B6993C94(v35, v36);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v44 = v13;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v43 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_4;
    }

    v42 = v39;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v35, v36);
  }

LABEL_4:
  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

id sub_1B6A45AD8(int a1, unsigned int a2, double a3)
{
  v43 = a1;
  v48[4] = *MEMORY[0x1E69E9840];
  v44 = sub_1B6AB8850();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B6AB9E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B6AB88A0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  v21 = a2;
  v22 = a2 >> 8;
  (*(v14 + 32))(v17, v12, v13);
  v48[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v48[0]) = v21 & 1;
  BYTE1(v48[0]) = v22;
  v23 = sub_1B6AB8880();
  sub_1B69A4BDC(v48, v17);
  v23(v47, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = a3;
  *(v24 + 32) = v21 & 1;
  *(v24 + 33) = v22;
  *v8 = sub_1B69C084C;
  v8[1] = v24;
  v26 = *(v5 + 104);
  v25 = (v5 + 104);
  v26(v8, *MEMORY[0x1E6967FB8], v44);
  sub_1B6AB8860();
  type metadata accessor for SummaryEventMetaData();
  sub_1B6A4717C(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData);
  v27 = v45;
  v28 = sub_1B6AB8870();
  if (!v27)
  {
    v32 = v28;
    v33 = v29;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v47[0] = 0;
    v25 = [v34 JSONObjectWithData:v35 options:0 error:v47];

    v36 = v47[0];
    if (v25)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v48, v47);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v25 = v46;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v48);
          sub_1B6993C94(v32, v33);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v25;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_4;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

LABEL_4:
  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

id sub_1B6A45FFC(int a1, unsigned int a2, double a3)
{
  v43 = a1;
  v48[4] = *MEMORY[0x1E69E9840];
  v44 = sub_1B6AB8850();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B6AB9E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B6AB88A0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  v21 = a2;
  v22 = a2 >> 8;
  (*(v14 + 32))(v17, v12, v13);
  v48[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v48[0]) = v21 & 1;
  BYTE1(v48[0]) = v22;
  v23 = sub_1B6AB8880();
  sub_1B69A4BDC(v48, v17);
  v23(v47, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = a3;
  *(v24 + 32) = v21 & 1;
  *(v24 + 33) = v22;
  *v8 = sub_1B69C084C;
  v8[1] = v24;
  v26 = *(v5 + 104);
  v25 = (v5 + 104);
  v26(v8, *MEMORY[0x1E6967FB8], v44);
  sub_1B6AB8860();
  type metadata accessor for TimedData();
  sub_1B6A4717C(&qword_1EDBCAAB8, type metadata accessor for TimedData);
  v27 = v45;
  v28 = sub_1B6AB8870();
  if (!v27)
  {
    v32 = v28;
    v33 = v29;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v47[0] = 0;
    v25 = [v34 JSONObjectWithData:v35 options:0 error:v47];

    v36 = v47[0];
    if (v25)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v48, v47);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v25 = v46;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v48);
          sub_1B6993C94(v32, v33);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v25;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_4;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

LABEL_4:
  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

void *sub_1B6A4671C(unsigned __int8 *a1)
{
  v7 = v1[4];
  *v8 = v1[5];
  *&v8[9] = *(v1 + 89);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B6A44690(*a1, 0, 0.0);
}

void *sub_1B6A46774(unsigned __int8 *a1, double a2)
{
  v8 = v2[4];
  *v9 = v2[5];
  *&v9[9] = *(v2 + 89);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1B6A44690(*a1, 0, a2);
}

void *sub_1B6A467C8(double *a1)
{
  v7 = v1[4];
  *v8 = v1[5];
  *&v8[9] = *(v1 + 89);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B6A44690(*a1, *(a1 + 16) | (*(a1 + 17) << 8), a1[1]);
}

int *sub_1B6A4698C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for PushEvent();
  v13 = (a7 + result[9]);
  *v13 = a2;
  v13[1] = a3;
  *(a7 + result[10]) = a4;
  *(a7 + result[11]) = a5;
  return result;
}

uint64_t sub_1B6A46A3C()
{
  type metadata accessor for BridgedRawDataEvent();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent);
    v2 = *(v0 + OBJC_IVAR___AARawDataEvent_name);
    v3 = *(v0 + OBJC_IVAR___AARawDataEvent_name + 8);
    v4 = *(v0 + OBJC_IVAR___AARawDataEvent_requiresTrackingConsent);
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [ObjCClassFromMetadata dataName];
    v2 = sub_1B6AB92E0();

    if ([ObjCClassFromMetadata respondsToSelector_])
    {
      [ObjCClassFromMetadata requiresDiagnosticsConsent];
    }

    if ([ObjCClassFromMetadata respondsToSelector_])
    {
      [ObjCClassFromMetadata requiresTrackingConsent];
    }
  }

  return v2;
}

void *sub_1B6A46C68(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = 0;
  v6 = 0;
  return sub_1B6AB0048(&v4, v2);
}

void *sub_1B6A46CA0(char *a1, double a2)
{
  v3 = *v2;
  v5 = *a1;
  v6 = a2;
  v7 = 0;
  return sub_1B6AB0048(&v5, v3);
}

uint64_t sub_1B6A46DE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B6A46F40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1B6A47128()
{
  result = qword_1EB95BA08;
  if (!qword_1EB95BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BA08);
  }

  return result;
}

uint64_t sub_1B6A4717C(unint64_t *a1, void (*a2)(uint64_t))
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

id BridgedLegacyStoredUserIDComponents.__allocating_init(userID:rotationPeriod:startDate:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v29 = a1;
  v30 = a2;
  v7 = type metadata accessor for LegacyStoredUserIDComponents();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_allocWithZone(v4);
  v28 = sub_1B6AB8E40();
  v12 = *(v28 - 8);
  (*(v12 + 16))(v11, a1, v28);
  v13 = v8[8];
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = v27;
  v16(&v11[v13], v27, v14);
  v16(&v11[v8[9]], a4, v14);
  *&v11[v8[7]] = v30;
  v18 = v26;
  v19 = objc_allocWithZone(v26);
  sub_1B6A47A08(v11, v19 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v32.receiver = v19;
  v32.super_class = v18;
  v20 = objc_msgSendSuper2(&v32, sel_init);
  v21 = *(v15 + 8);
  v21(a4, v14);
  v21(v17, v14);
  (*(v12 + 8))(v29, v28);
  sub_1B6A47A6C(v11);
  v22 = v31;
  swift_getObjectType();
  v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x30);
  v24 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x34);
  swift_deallocPartialClassInstance();
  return v20;
}

id BridgedLegacyStoredUserIDComponents.init(userID:rotationPeriod:startDate:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v25 = a3;
  v28 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for LegacyStoredUserIDComponents();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B6AB8E40();
  v11 = *(v27 - 8);
  (*(v11 + 16))(v10, a1, v27);
  v12 = v7[8];
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v25;
  v15(&v10[v12], v25, v13);
  v15(&v10[v7[9]], a4, v13);
  *&v10[v7[7]] = v29;
  v17 = ObjectType;
  v18 = objc_allocWithZone(ObjectType);
  sub_1B6A47A08(v10, v18 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v31.receiver = v18;
  v31.super_class = v17;
  v19 = objc_msgSendSuper2(&v31, sel_init);
  v20 = *(v14 + 8);
  v20(a4, v13);
  v20(v16, v13);
  (*(v11 + 8))(v28, v27);
  sub_1B6A47A6C(v10);
  v21 = v30;
  swift_getObjectType();
  v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x30);
  v23 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x34);
  swift_deallocPartialClassInstance();
  return v19;
}

uint64_t sub_1B6A47A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyStoredUserIDComponents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A47A6C(uint64_t a1)
{
  v2 = type metadata accessor for LegacyStoredUserIDComponents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BridgedLegacyStoredUserIDComponents.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedLegacyStoredUserIDComponents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedLegacyStoredUserIDComponents()
{
  result = qword_1EB95BA18;
  if (!qword_1EB95BA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A47F18()
{
  result = type metadata accessor for LegacyStoredUserIDComponents();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Endpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAEndpoint_url;
  v4 = sub_1B6AB8BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Endpoint.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEndpoint_name);
  v2 = *(v0 + OBJC_IVAR___AAEndpoint_name + 8);

  return v1;
}

uint64_t Endpoint.sharedContainerIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier);
  v2 = *(v0 + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier + 8);

  return v1;
}

id Endpoint.__allocating_init(url:name:sharedContainerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR___AAEndpoint_url;
  v13 = sub_1B6AB8BB0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR___AAEndpoint_name];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v11[OBJC_IVAR___AAEndpoint_sharedContainerIdentifier];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

id Endpoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Endpoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ResourceType.toData()(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = (*(a2 + 32))();
  if (!v3)
  {
    v2 = v4;
    v5 = objc_opt_self();
    v6 = MEMORY[0x1E69E6158];
    v7 = sub_1B6AB91F0();
    v8 = [v5 isValidJSONObject_];

    if (v8)
    {
      v9 = sub_1B6AB91F0();

      v19[0] = 0;
      v10 = [v5 dataWithJSONObject:v9 options:0 error:v19];

      v11 = v19[0];
      if (v10)
      {
        v2 = sub_1B6AB8C80();

        goto LABEL_10;
      }

      v2 = v11;
      sub_1B6AB8A70();
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98F0();
      sub_1B69990B4();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B6ABD890;
      v13 = sub_1B6AB9220();
      v15 = v14;
      *(v12 + 56) = v6;
      *(v12 + 64) = sub_1B698CEC0();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      sub_1B6AB8F70();

      sub_1B6A2A954();
      swift_allocError();
      *v16 = v2;
      *(v16 + 8) = 0;
    }

    swift_willThrow();
  }

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B6A48950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B6A48998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t UploadBatchQueueKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  return sub_1B6AB9380();
}

uint64_t UploadBatchQueueKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v5)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A48B30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v5)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A48BD0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  return sub_1B6AB9380();
}

uint64_t sub_1B6A48C64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v5)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t _s12AppAnalytics19UploadBatchQueueKeyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v12 = v3 == v8 && v2 == v7;
      if (v12 || (v13 = *a1, (sub_1B6ABA0F0() & 1) != 0))
      {
        if (v5 != v10 || v4 != v9)
        {
          v15 = sub_1B6ABA0F0();
          sub_1B69E0EBC(v8, v7, v10, v9, 1);
          sub_1B69E0EBC(v3, v2, v5, v4, 1);
          sub_1B69B47D4(v3, v2, v5, v4, 1);
          v16 = v8;
          v17 = v7;
          v18 = v10;
          v19 = v9;
          v20 = 1;
LABEL_21:
          sub_1B69B47D4(v16, v17, v18, v19, v20);
          return v15 & 1;
        }

        sub_1B69E0EBC(v8, v7, v5, v4, 1);
        sub_1B69E0EBC(v3, v2, v5, v4, 1);
        sub_1B69B47D4(v3, v2, v5, v4, 1);
        v29 = v8;
        v30 = v7;
        v31 = v5;
        v32 = v4;
        v33 = 1;
        goto LABEL_24;
      }

      sub_1B69E0EBC(v8, v7, v10, v9, 1);
      sub_1B69E0EBC(v3, v2, v5, v4, 1);
      sub_1B69B47D4(v3, v2, v5, v4, 1);
      v21 = v8;
      v22 = v7;
      v23 = v10;
      v24 = v9;
      v25 = 1;
LABEL_15:
      sub_1B69B47D4(v21, v22, v23, v24, v25);
      return 0;
    }

LABEL_14:
    sub_1B69E0EBC(*a2, *(a2 + 8), v10, v9, v11);
    sub_1B69E0EBC(v3, v2, v5, v4, v6);
    sub_1B69B47D4(v3, v2, v5, v4, v6);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = v11;
    goto LABEL_15;
  }

  if (*(a2 + 32))
  {
    goto LABEL_14;
  }

  v27 = *a1;
  if (v3 != v8 || v2 != v7)
  {
    v15 = sub_1B6ABA0F0();
    sub_1B69E0EBC(v8, v7, v10, v9, 0);
    sub_1B69E0EBC(v3, v2, v5, v4, 0);
    sub_1B69B47D4(v3, v2, v5, v4, 0);
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = 0;
    goto LABEL_21;
  }

  sub_1B69E0EBC(v27, v2, v10, v9, 0);
  sub_1B69E0EBC(v3, v2, v5, v4, 0);
  sub_1B69B47D4(v3, v2, v5, v4, 0);
  v29 = v3;
  v30 = v2;
  v31 = v10;
  v32 = v9;
  v33 = 0;
LABEL_24:
  sub_1B69B47D4(v29, v30, v31, v32, v33);
  return 1;
}

unint64_t sub_1B6A4902C()
{
  result = qword_1EDBCB248[0];
  if (!qword_1EDBCB248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCB248);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6A490A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B6A490E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B6A49150(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 96);
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  *(v14 + 32) = v6;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;

  sub_1B69877A4(v13, sub_1B6A5746C, v14);
}

uint64_t Tracker.path.getter()
{

  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0[3];
    if (v4)
    {
      v5 = v0[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1B69B5A00(0, *(v1 + 2) + 1, 1, v1);
      }

      v7 = *(v1 + 2);
      v6 = *(v1 + 3);
      if (v7 >= v6 >> 1)
      {
        v1 = sub_1B69B5A00((v6 > 1), v7 + 1, 1, v1);
      }

      *(v1 + 2) = v7 + 1;
      v2 = &v1[16 * v7];
      *(v2 + 4) = v5;
      *(v2 + 5) = v4;
    }

    v3 = v0[19];

    v0 = v3;
  }

  while (v3);

  return sub_1B69B919C(v1);
}

uint64_t Tracker.debugPath.getter()
{
  v6 = MEMORY[0x1E69E7CC0];

  while (1)
  {

    v2 = sub_1B6A50610(v1, &v6);

    v3 = *(v0 + 152);

    if (!v3)
    {
      break;
    }

    v0 = v3;
    if ((v2 & 1) == 0)
    {

      break;
    }
  }

  v4 = v6;

  return sub_1B69B919C(v4);
}

uint64_t Tracker.removeSessionObservers(forObject:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v3 = *(result + 56);
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1B69877A4(v4, sub_1B6A3F974, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Tracker.dynamicTransaction(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 96);
  v11 = *(v5 + 88);
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;

  sub_1B69877A4(v11, sub_1B6A56098, v12);
}

Swift::Void __swiftcall Tracker.enterGroup(groupName:)(Swift::String groupName)
{
  v2 = v1;
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  sub_1B6AB8DA0();
  v12 = v1 + 88;
  v11 = *(v1 + 88);
  v18 = *(v12 + 8);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = countAndFlagsBits;
  *(v15 + 2) = v2;
  *(v15 + 3) = v16;
  *(v15 + 4) = object;
  (*(v5 + 32))(&v15[v13], v8, v4);
  v17 = &v15[v14];
  *v17 = 0;
  v17[8] = 1;

  sub_1B69877A4(v11, sub_1B6A560D0, v15);

  (*(v5 + 8))(v10, v4);
}