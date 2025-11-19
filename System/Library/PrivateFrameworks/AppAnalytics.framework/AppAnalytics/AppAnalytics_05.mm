_OWORD *sub_1B69E7CF4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B69979CC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1B69E7D5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1B69E7DB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB8E40();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1B69E7ED8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1B6AB8E40();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_1B69E7FD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB8E40();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Tracker.DelayedEvent(0);
  result = sub_1B69E86F0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for Tracker.DelayedEvent);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1B69E80C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B69E810C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UserIDComponents();
  result = sub_1B69E86F0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for UserIDComponents);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B69E81B8(uint64_t a1, uint64_t a2)
{
  sub_1B69809A4(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69E8244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69E8EF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69E82B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69E831C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69E8364()
{
  if (!qword_1EB95AE40)
  {
    type metadata accessor for SummaryEventData();
    sub_1B69E831C(&qword_1EDBC91F8, type metadata accessor for SummaryEventData);
    v0 = type metadata accessor for DataEventStack.Entry();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AE40);
    }
  }
}

void sub_1B69E83F8()
{
  if (!qword_1EB95AE70)
  {
    sub_1B69E8910(255, &qword_1EDBCBB00);
    v0 = sub_1B6AB9740();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AE70);
    }
  }
}

unint64_t sub_1B69E8478()
{
  result = qword_1EDBC7B58;
  if (!qword_1EDBC7B58)
  {
    type metadata accessor for ViewingSession();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDBC7B58);
  }

  return result;
}

void sub_1B69E84D8()
{
  if (!qword_1EDBC82F0)
  {
    sub_1B69E8CE0(255, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for SessionData);
    sub_1B69E85F8(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v0 = type metadata accessor for DataEventStack.Entry();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC82F0);
    }
  }
}

unint64_t sub_1B69E85A4()
{
  result = qword_1EDBC98B8;
  if (!qword_1EDBC98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98B8);
  }

  return result;
}

uint64_t sub_1B69E85F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B69E8CE0(255, a2, a3, a4, type metadata accessor for SessionData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B69E8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B69E86F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B69E8758()
{
  if (!qword_1EB95AE80)
  {
    sub_1B69E87CC(255, &qword_1EB95AE88, type metadata accessor for SnapshotLevel);
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AE80);
    }
  }
}

void sub_1B69E87CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809A4(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B69E8884()
{
  if (!qword_1EB95AEA0)
  {
    sub_1B69809A4(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AEA0);
    }
  }
}

uint64_t sub_1B69E8910(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1B69E896C()
{
  if (!qword_1EDBC8948)
  {
    sub_1B69E8CE0(255, &qword_1EDBC82F8, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for DataEventStack.Entry);
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8948);
    }
  }
}

unint64_t sub_1B69E89FC()
{
  result = qword_1EDBC8DC8;
  if (!qword_1EDBC8DC8)
  {
    type metadata accessor for AccessSessionManager();
    type metadata accessor for AccessTracker();
    type metadata accessor for AnalyticsActor();
    result = swift_getFunctionTypeMetadataGlobalActor();
    atomic_store(result, &qword_1EDBC8DC8);
  }

  return result;
}

void sub_1B69E8A88()
{
  if (!qword_1EB95AEC8)
  {
    sub_1B69E8CE0(255, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData, type metadata accessor for SessionData);
    sub_1B69E85F8(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v0 = type metadata accessor for DataEventStack.Entry();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AEC8);
    }
  }
}

unint64_t sub_1B69E8B54()
{
  result = qword_1EB95AED8;
  if (!qword_1EB95AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AED8);
  }

  return result;
}

void sub_1B69E8BA8()
{
  if (!qword_1EDBC8E50)
  {
    type metadata accessor for UserIDComponents();
    sub_1B69811C4();
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8E50);
    }
  }
}

void sub_1B69E8C14()
{
  if (!qword_1EB95AEF8)
  {
    sub_1B69E8CE0(255, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, type metadata accessor for SessionData);
    sub_1B69E85F8(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v0 = type metadata accessor for DataEventStack.Entry();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AEF8);
    }
  }
}

void sub_1B69E8CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1B69E8D48()
{
  result = qword_1EB95AF08;
  if (!qword_1EB95AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF08);
  }

  return result;
}

void sub_1B69E8D9C()
{
  if (!qword_1EB95AF18)
  {
    sub_1B69E8E20(255, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AF18);
    }
  }
}

void sub_1B69E8E20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809A4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B69E8E9C(uint64_t a1)
{
  sub_1B69E8D9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B69E8EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t LegacyStoredUserIDComponents.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8E40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for LegacyStoredUserIDComponents()
{
  result = qword_1EB95AF28;
  if (!qword_1EB95AF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyStoredUserIDComponents.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LegacyStoredUserIDComponents() + 24);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyStoredUserIDComponents.lastRotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LegacyStoredUserIDComponents() + 28);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyStoredUserIDComponents.init(id:rotationPeriod:startDate:lastRotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B6AB8E40();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for LegacyStoredUserIDComponents();
  *(a5 + v11[5]) = a2;
  v12 = v11[6];
  v13 = sub_1B6AB8DB0();
  v16 = *(*(v13 - 8) + 32);
  (v16)((v13 - 8), a5 + v12, a3, v13);
  v14 = a5 + v11[7];

  return v16(v14, a4, v13);
}

uint64_t sub_1B69E92D0()
{
  result = sub_1B6AB8E40();
  if (v1 <= 0x3F)
  {
    result = sub_1B6AB8DB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B69E935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v120 = a3;
  v4 = sub_1B6AB8EE0();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DA8(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v93 - v9;
  v10 = sub_1B6AB8F20();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8E50();
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB8F00();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DA8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v93 - v21;
  v119 = sub_1B6AB8DB0();
  v23 = *(v119 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v119);
  v106 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v93 - v27;
  v28 = sub_1B6AB8E40();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v93 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v93 - v37;
  v39 = type metadata accessor for RotationMode();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DFC(a1, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v119;
    (*(v23 + 8))(v118, v119);
    sub_1B698114C();
    v45 = *(v44 + 48);
    v46 = *(v44 + 64);
    v47 = v120;
    (*(v29 + 32))(v120, v42, v28);
    v48 = type metadata accessor for LegacyStoredUserIDComponents();
    v49 = *(v23 + 32);
    v49(v47 + v48[6], &v42[v45], v43);
    v49(v47 + v48[7], &v42[v46], v43);
LABEL_12:
    v92 = *(a1 + *(type metadata accessor for StoredUserIDComponents() + 20));
    sub_1B69E9E60(a1);
    result = type metadata accessor for LegacyStoredUserIDComponents();
    *(v120 + v48[5]) = v92;
    return result;
  }

  v100 = v22;
  sub_1B698103C(0);
  v51 = v50[12];
  v52 = *&v42[v50[16]];
  v102 = *&v42[v50[20]];
  (*(v29 + 32))(v38, v42, v28);
  v53 = *(v23 + 32);
  v99 = v23 + 32;
  v97 = v53;
  v53(v117, &v42[v51], v119);
  v54 = *(v29 + 16);
  v98 = v38;
  v54(v36, v38, v28);
  v55 = *(type metadata accessor for StoredUserIDComponents() + 20);
  v101 = a1;
  v56 = *(a1 + v55);
  v54(v33, v36, v28);
  v121 = v52;
  v122 = sub_1B6ABA080();
  v123 = v57;
  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v121 = v102;
  v58 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v58);

  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v121 = v56;
  v59 = v120;
  v60 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v60);

  v61 = sub_1B699F46C(v122, v123);
  sub_1B6A7C174(v33, v61, v62, v59);
  v65 = *(v29 + 8);
  v63 = v29 + 8;
  v64 = v65;
  v65(v36, v28);
  v48 = type metadata accessor for LegacyStoredUserIDComponents();
  v66 = v48[6];
  v102 = v23;
  v67 = v117;
  (*(v23 + 16))(v59 + v66, v117, v119);
  result = sub_1B69FAD2C(v118);
  if (!v56)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_14;
  }

  v94 = v64;
  v95 = v56;
  v93 = v63;
  v69 = v67;
  v96 = v28;
  v71 = v110;
  v70 = v111;
  v72 = v112;
  (*(v111 + 104))(v110, *MEMORY[0x1E6969868], v112);
  v73 = v113;
  sub_1B6AB8E60();
  (*(v70 + 8))(v71, v72);
  v74 = v116;
  sub_1B6AB8F10();
  v76 = v114;
  v75 = v115;
  result = (*(v114 + 48))(v74, 1, v115);
  if (result != 1)
  {
    (*(v76 + 32))(v103, v74, v75);
    sub_1B6AB8ED0();
    v78 = v107;
    v77 = v108;
    v79 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x1E6969A78], v109);
    v80 = v100;
    v81 = v118;
    sub_1B6AB8EB0();
    v82 = v78;
    v83 = v80;
    (*(v77 + 8))(v82, v79);
    (*(v104 + 8))(v73, v105);
    v84 = v102;
    v85 = *(v102 + 8);
    v86 = v119;
    v85(v69, v119);
    v94(v98, v96);
    v87 = *(v84 + 48);
    if (v87(v83, 1, v86) == 1)
    {
      v88 = v106;
      v89 = v81;
      v90 = v97;
      v97(v106, v89, v86);
      v91 = v87(v83, 1, v86);
      a1 = v101;
      if (v91 != 1)
      {
        sub_1B69E9EBC(v83);
      }
    }

    else
    {
      v85(v81, v86);
      v88 = v106;
      v90 = v97;
      v97(v106, v83, v86);
      a1 = v101;
    }

    v90(v120 + v48[7], v88, v86);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1B69E9DA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69E9DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69E9E60(uint64_t a1)
{
  v2 = type metadata accessor for StoredUserIDComponents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69E9EBC(uint64_t a1)
{
  sub_1B69E9DA8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69E9F34()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B69E9F7C()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

void sub_1B69E9FC0(_BYTE *a1@<X8>)
{
  v2 = sub_1B6AB8F80();
  v3 = sub_1B6AB98E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B697C000, v2, v3, "Attempting to use DiagnosticsConsentProvider during repair, but it wasn't provided. See rdar://137756327", v4, 2u);
    MEMORY[0x1B8C99550](v4, -1, -1);
  }

  *a1 = 1;
}

void sub_1B69EA060(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = *(type metadata accessor for BatchRepair() - 8);
    v12 = (a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = MEMORY[0x1B8C98C40]();
      sub_1B69EA154(a2, v12, a3, a4);
      if (v5)
      {
        break;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v14);
      v12 = (v12 + v13);
      if (!--v6)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
    __break(1u);
  }
}

void sub_1B69EA154(void *a1, uint64_t *a2, void (*a3)(void *), uint64_t a4)
{
  v149 = a3;
  v148 = a4;
  sub_1B69882EC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v146 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v147 = &v126 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v126 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v126 - v14;
  v15 = type metadata accessor for Batch();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for BatchRepair();
  v19 = *(*(v126 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v126);
  v131 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v130 = &v126 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v129 = &v126 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v126 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v126 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v126 - v32;
  v34 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  sub_1B699A2C4(a2, &v126 - v32, type metadata accessor for BatchRepair);
  sub_1B699A2C4(a2, v31, type metadata accessor for BatchRepair);
  sub_1B699A2C4(a2, v28, type metadata accessor for BatchRepair);
  v156 = a1;
  v128 = v34;
  v35 = sub_1B6AB8F80();
  v36 = sub_1B6AB9900();
  v37 = os_log_type_enabled(v35, v36);
  v158 = v15;
  if (v37)
  {
    v38 = swift_slowAlloc();
    LODWORD(v154) = v36;
    v39 = v38;
    v155 = swift_slowAlloc();
    v165 = v155;
    *v39 = 136446722;
    v153 = v35;
    v41 = *(v33 + 2);
    v40 = *(v33 + 3);

    sub_1B69EC4A4(v33, type metadata accessor for BatchRepair);
    v42 = sub_1B698F63C(v41, v40, &v165);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = ContentType.description.getter(*(v31 + 6));
    v45 = v44;
    sub_1B69EC4A4(v31, type metadata accessor for BatchRepair);
    v46 = sub_1B698F63C(v43, v45, &v165);

    *(v39 + 14) = v46;
    *(v39 + 22) = 2082;
    v15 = v158;
    v47 = *(v28 + 8);
    v159 = *(v28 + 7);
    v160 = v47;
    sub_1B69825F8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

    v48 = sub_1B6AB9330();
    v50 = v49;
    sub_1B69EC4A4(v28, type metadata accessor for BatchRepair);
    v51 = sub_1B698F63C(v48, v50, &v165);

    *(v39 + 24) = v51;
    v52 = v153;
    _os_log_impl(&dword_1B697C000, v153, v154, "Attempting to repair batch, identifier=%{public}s, contentType=%{public}s, groupName=%{public}s)", v39, 0x20u);
    v53 = v155;
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v53, -1, -1);
    MEMORY[0x1B8C99550](v39, -1, -1);
  }

  else
  {

    sub_1B69EC4A4(v28, type metadata accessor for BatchRepair);
    sub_1B69EC4A4(v31, type metadata accessor for BatchRepair);
    sub_1B69EC4A4(v33, type metadata accessor for BatchRepair);
  }

  v54 = v156[2];
  v55 = v54[13];
  v56 = v54[14];
  __swift_project_boxed_opaque_existential_1(v54 + 10, v55);
  v144 = (*(v56 + 8))(v55, v56);
  v57 = v54[13];
  v58 = v54[14];
  __swift_project_boxed_opaque_existential_1(v54 + 10, v57);
  (*(v58 + 16))(&v159, v57, v58);
  v60 = v159;
  v59 = v160;
  v153 = v162;
  v154 = v161;
  v151 = v164;
  v152 = v163;
  v61 = sub_1B6AB8DB0();
  v62 = *(v61 - 8);
  v63 = v145;
  v127 = *(v62 + 56);
  v127(v145, 1, 1, v61);
  v64 = a2[5];
  v142 = a2[4];
  v141 = v64;
  v65 = a2[7];
  v140 = a2[6];
  v139 = v65;
  v138 = a2[8];
  sub_1B6994EC0(a2 + v15[10], v157, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v66 = (a2 + v15[11]);
  v68 = *v66;
  v67 = v66[1];
  v137 = v68;
  v136 = v67;
  v69 = a2[1];
  v135 = *a2;
  v134 = v69;
  v70 = a2[3];
  v133 = a2[2];
  v132 = v70;
  v155 = v59;
  if (v59 == 2)
  {
    v71 = (a2 + v15[13]);
    v72 = v71[1];
    v73 = v71[2];
    v74 = v71[3];
    v75 = v71[4];
    v76 = v71[5];
    v143 = *v71;
    v154 = v73;
    v155 = v72;
    v152 = v75;
    v153 = v74;
    v151 = v76;
    sub_1B69EC458(v143, v72, v73, v74, v75, v76);
  }

  else
  {
    v143 = v60;
  }

  v77 = v63;
  v78 = v146;
  sub_1B69B3830(v77, v146);
  v79 = *(v62 + 48);
  v80 = v79(v78, 1, v61);
  v81 = v141;
  if (v80 == 1)
  {
    v82 = v147;
    sub_1B6994EC0(a2 + *(v158 + 56), v147, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    LODWORD(v145) = v79(v78, 1, v61);
    v83 = v138;

    v84 = v136;

    v85 = v135;

    v86 = v134;

    v87 = v132;

    v88 = v78;
    v89 = v87;
    if (v145 != 1)
    {
      sub_1B69ADAB0(v88, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v90 = v147;
    (*(v62 + 32))(v147, v78, v61);
    v82 = v90;
    v127(v90, 0, 1, v61);
    v83 = v138;

    v84 = v136;

    v85 = v135;

    v86 = v134;

    v89 = v132;
  }

  v18[4] = v142;
  v18[5] = v81;
  v91 = v139;
  v18[6] = v140;
  v18[7] = v91;
  v18[8] = v83;
  v92 = v158;
  sub_1B69B3830(v157, v18 + *(v158 + 40));
  v93 = (v18 + v92[11]);
  *v93 = v137;
  v93[1] = v84;
  *v18 = v85;
  v18[1] = v86;
  v18[2] = v133;
  v18[3] = v89;
  *(v18 + v92[12]) = v144 & 1;
  v94 = (v18 + v92[13]);
  v95 = v154;
  v96 = v155;
  *v94 = v143;
  v94[1] = v96;
  v94[2] = v95;
  v97 = v152;
  v94[3] = v153;
  v94[4] = v97;
  v94[5] = v151;
  sub_1B69B3830(v82, v18 + v92[14]);
  v98 = v150;
  v149(v18);
  if (v98)
  {
    sub_1B69EC4A4(v18, type metadata accessor for Batch);
    v99 = v129;
    sub_1B699A2C4(a2, v129, type metadata accessor for BatchRepair);
    v100 = v130;
    sub_1B699A2C4(a2, v130, type metadata accessor for BatchRepair);
    v101 = v131;
    sub_1B699A2C4(a2, v131, type metadata accessor for BatchRepair);
    v102 = v98;
    v103 = sub_1B6AB8F80();
    v104 = sub_1B6AB98E0();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      LODWORD(v157) = v104;
      v106 = v100;
      v107 = v105;
      v156 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v165 = v158;
      *v107 = 136446978;
      v108 = *(v99 + 16);
      v109 = *(v99 + 24);

      sub_1B69EC4A4(v99, type metadata accessor for BatchRepair);
      v110 = sub_1B698F63C(v108, v109, &v165);

      *(v107 + 4) = v110;
      *(v107 + 12) = 2082;
      v111 = ContentType.description.getter(*(v106 + 48));
      v113 = v112;
      sub_1B69EC4A4(v106, type metadata accessor for BatchRepair);
      v114 = sub_1B698F63C(v111, v113, &v165);

      *(v107 + 14) = v114;
      *(v107 + 22) = 2082;
      v115 = *(v101 + 64);
      v159 = *(v101 + 56);
      v160 = v115;
      sub_1B69825F8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v116 = sub_1B6AB9330();
      v118 = v117;
      sub_1B69EC4A4(v101, type metadata accessor for BatchRepair);
      v119 = sub_1B698F63C(v116, v118, &v165);

      *(v107 + 24) = v119;
      *(v107 + 32) = 2114;
      v120 = v98;
      v121 = _swift_stdlib_bridgeErrorToNSError();
      *(v107 + 34) = v121;
      v122 = v156;
      *v156 = v121;
      _os_log_impl(&dword_1B697C000, v103, v157, "Failed to repair batch, identifier=%{public}s, contentType=%{public}s, groupName=%{public}s, error: %{public}@", v107, 0x2Au);
      sub_1B69EC4A4(v122, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v122, -1, -1);
      v123 = v158;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v123, -1, -1);
      MEMORY[0x1B8C99550](v107, -1, -1);
    }

    else
    {

      sub_1B69EC4A4(v101, type metadata accessor for BatchRepair);
      sub_1B69EC4A4(v100, type metadata accessor for BatchRepair);
      sub_1B69EC4A4(v99, type metadata accessor for BatchRepair);
    }
  }

  else
  {
    v124 = a2 + *(v126 + 20);
    v125 = *(v124 + 1);
    (*v124)();

    sub_1B69EC4A4(v18, type metadata accessor for Batch);
  }
}

uint64_t sub_1B69EAE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8F90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(v14 + 16);
    v32 = v13;
    v19(v17, Strong + OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger, v13);

    (*(v9 + 16))(v12, a2, v8);
    v20 = sub_1B6AB8F80();
    v21 = sub_1B6AB9900();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30[1] = a5;
      v23 = v22;
      v30[0] = swift_slowAlloc();
      v33 = v30[0];
      *v23 = 136446210;
      v24 = sub_1B6AB8AC0();
      v31 = a4;
      v26 = v25;
      (*(v9 + 8))(v12, v8);
      v27 = sub_1B698F63C(v24, v26, &v33);
      a4 = v31;

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1B697C000, v20, v21, "Flush manager finished flushing file, url=%{public}s", v23, 0xCu);
      v28 = v30[0];
      __swift_destroy_boxed_opaque_existential_1(v30[0]);
      MEMORY[0x1B8C99550](v28, -1, -1);
      MEMORY[0x1B8C99550](v23, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    Strong = (*(v14 + 8))(v17, v32);
  }

  return a4(Strong);
}

void sub_1B69EB118(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v105 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v109 = &v102 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v102 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v111 = &v102 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v110 = &v102 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  *&v108 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v102 - v20;
  v118 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  v21 = sub_1B6AB8F80();
  v22 = sub_1B6AB9900();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B697C000, v21, v22, "Flush manager attempting clean up of flushed directories.", v23, 2u);
    MEMORY[0x1B8C99550](v23, -1, -1);
  }

  swift_beginAccess();
  v24 = v2[29];
  v25 = *(v24 + 16);
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);

  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  LODWORD(v26) = *(v24 + 24);
  os_unfair_lock_unlock(*(*(v24 + 16) + 16));

  if (v26 == 2)
  {
    v28 = v2[21];
    v29 = v2[22];
    __swift_project_boxed_opaque_existential_1(v2 + 18, v28);
    v30 = v102;
    (*(v29 + 8))(v28, v29);
    v31 = sub_1B69939D0(v30);
    v120 = *(v5 + 8);
    v121 = v5 + 8;
    v120(v30, v4);
    v33 = *(v31 + 16);
    v116 = v2;
    v115 = a1;
    v122 = v4;
    v117 = v5;
    v103 = v13;
    v114 = v33;
    if (v33)
    {
      v34 = v5;
      v35 = 0;
      v112 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v119 = v34 + 16;
      v123 = a1 + 56;
      *&v32 = 136446210;
      v106 = v32;
      *&v32 = 136446466;
      v104 = v32;
      v36 = v108;
      v113 = v31;
      while (v35 < *(v31 + 16))
      {
        v37 = *(v117 + 16);
        v37(v36, v112 + *(v117 + 72) * v35, v4);
        v38 = sub_1B6AB8B10();
        v40 = v39;
        if (*(a1 + 16) && (v41 = v38, v42 = *(a1 + 40), sub_1B6ABA1F0(), sub_1B6AB9380(), v43 = sub_1B6ABA230(), v44 = -1 << *(a1 + 32), v45 = v43 & ~v44, ((*(v123 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (*(a1 + 48) + 16 * v45);
            v48 = *v47 == v41 && v47[1] == v40;
            if (v48 || (sub_1B6ABA0F0() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v123 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v4 = v122;
          v120(v36, v122);
        }

        else
        {
LABEL_17:

          v49 = v110;
          v4 = v122;
          v37(v110, v36, v122);
          v50 = sub_1B6AB8F80();
          v51 = sub_1B6AB9900();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = v49;
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v124[0] = v54;
            *v53 = v106;
            v55 = sub_1B6AB8AC0();
            v57 = v56;
            v120(v52, v122);
            v58 = v55;
            v36 = v108;
            v59 = sub_1B698F63C(v58, v57, v124);
            v4 = v122;

            *(v53 + 4) = v59;
            _os_log_impl(&dword_1B697C000, v50, v51, "Flush manager cleaning up directory, url=%{public}s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            v60 = v54;
            v2 = v116;
            MEMORY[0x1B8C99550](v60, -1, -1);
            MEMORY[0x1B8C99550](v53, -1, -1);
          }

          else
          {

            v120(v49, v4);
          }

          v61 = v2[26];
          v62 = v2[27];
          __swift_project_boxed_opaque_existential_1(v2 + 23, v61);
          (*(v62 + 112))(v36, 1, v61, v62);
          v120(v36, v4);
          a1 = v115;
        }

        ++v35;
        v31 = v113;
        if (v35 == v114)
        {

          v5 = v117;
          v13 = v103;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_27:
    if ((*(v2[7] + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled) & 1) == 0)
    {
      v66 = v2[21];
      v67 = v2[22];
      __swift_project_boxed_opaque_existential_1(v2 + 18, v66);
      v68 = v102;
      (*(v67 + 16))(v66, v67);
      v69 = sub_1B69939D0(v68);
      v120(v68, v4);
      v71 = v69;
      v114 = *(v69 + 16);
      if (v114)
      {
        v72 = 0;
        v112 = v69 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v119 = v5 + 16;
        v73 = v115;
        v123 = v115 + 56;
        *&v70 = 136446210;
        v108 = v70;
        *&v70 = 136446466;
        v107 = v70;
        v74 = v111;
        v113 = v71;
        while (v72 < *(v71 + 16))
        {
          v75 = *(v5 + 16);
          v75(v74, v112 + *(v5 + 72) * v72, v4);
          v76 = sub_1B6AB8B10();
          v78 = v77;
          if (*(v73 + 16) && (v79 = v76, v80 = *(v73 + 40), sub_1B6ABA1F0(), sub_1B6AB9380(), v81 = sub_1B6ABA230(), v82 = -1 << *(v73 + 32), v83 = v81 & ~v82, ((*(v123 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0))
          {
            v84 = ~v82;
            while (1)
            {
              v85 = (*(v73 + 48) + 16 * v83);
              v86 = *v85 == v79 && v85[1] == v78;
              if (v86 || (sub_1B6ABA0F0() & 1) != 0)
              {
                break;
              }

              v83 = (v83 + 1) & v84;
              if (((*(v123 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v74 = v111;
            v4 = v122;
            v120(v111, v122);
          }

          else
          {
LABEL_41:

            v4 = v122;
            v75(v13, v111, v122);
            v87 = sub_1B6AB8F80();
            v88 = sub_1B6AB9900();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v124[0] = v90;
              *v89 = v108;
              v91 = sub_1B6AB8AC0();
              v93 = v92;
              v120(v13, v122);
              v94 = sub_1B698F63C(v91, v93, v124);
              v4 = v122;

              *(v89 + 4) = v94;
              _os_log_impl(&dword_1B697C000, v87, v88, "Flush manager cleaning up debug directory, url=%{public}s", v89, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v90);
              MEMORY[0x1B8C99550](v90, -1, -1);
              MEMORY[0x1B8C99550](v89, -1, -1);
            }

            else
            {

              v120(v13, v4);
            }

            v95 = v116[26];
            v96 = v116[27];
            __swift_project_boxed_opaque_existential_1(v116 + 23, v95);
            v97 = v111;
            (*(v96 + 112))(v111, 0, v95, v96);
            v120(v97, v4);
            v73 = v115;
            v5 = v117;
            v74 = v97;
          }

          ++v72;
          v71 = v113;
          if (v72 == v114)
          {

            v2 = v116;
            goto LABEL_48;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }
    }

LABEL_48:
    v98 = v2[29];
    v99 = *(v98 + 16);
    v100 = *(v99 + 16);
    v101 = *(v99 + 24);

    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    *(v98 + 24) = 0;
    os_unfair_lock_unlock(*(*(v98 + 16) + 16));
  }

  else
  {
    v63 = sub_1B6AB8F80();
    v64 = sub_1B6AB98E0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1B697C000, v63, v64, "Error: Flush manager attempting to clean up unflushed directories.", v65, 2u);
      MEMORY[0x1B8C99550](v65, -1, -1);
    }
  }
}

uint64_t FlushManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));

  v3 = *(v0 + 232);

  v4 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  v5 = sub_1B6AB8F90();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t FlushManager.__deallocating_deinit()
{
  FlushManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69EC1DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1B69EC280()
{
  result = qword_1EB95AF40;
  if (!qword_1EB95AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF40);
  }

  return result;
}

void sub_1B69EC2D4()
{
  if (!qword_1EDBC8E08)
  {
    sub_1B6986438(255, &qword_1EDBC8E10, 0x1E69E58C0);
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8E08);
    }
  }
}

uint64_t sub_1B69EC348()
{
  v1 = *(sub_1B6AB8BB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1B69EAE18(v4, v0 + v2, v5, v7, v8);
}

void sub_1B69EC3E8(_BYTE *a1@<X8>)
{
  v2 = *(*(sub_1B6AB8F90() - 8) + 80);

  sub_1B69E9FC0(a1);
}

uint64_t sub_1B69EC458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 2)
  {
    sub_1B69D2C14(result, a2);

    return sub_1B69D2C68(a5, a6);
  }

  return result;
}

uint64_t sub_1B69EC4A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1B69EC594@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1B6A8ABE8();
  *a1 = result;
  return result;
}

void sub_1B69EC5D0()
{
  if (!qword_1EDBC9BB8)
  {
    v0 = sub_1B6AB97E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BB8);
    }
  }
}

id BridgedUserDataConfiguration.__allocating_init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1B69ECA38(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1B69ECA38(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

id BridgedUserDataConfiguration.__allocating_init(userIDConfigurationsByKind:startDateStorage:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1B69ED228(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1B69ED228(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v5;
}

id BridgedUserDataConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserDataConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B69ECA38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1B69F7488(MEMORY[0x1E69E7CC0]);
  v75 = ObjectType;
  v76 = v5;
  v74 = a3;
  v71 = a4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_1B6AB9E20() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v12 = ~v15;
    v11 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 64);
    v14 = a1;
  }

  v18 = 0;
  v19 = (v12 + 64) >> 6;
  v78 = v14;
  v79 = v11;
  v77 = v19;
  while ((v14 & 0x8000000000000000) == 0)
  {
    v20 = v18;
    v21 = v13;
    v22 = v18;
    if (!v13)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_41;
        }

        v21 = *(v11 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
LABEL_48:
      v52 = qword_1EB95C320;
      v51 = *algn_1EB95C328;
      v54 = qword_1EB95C330;
      v53 = qword_1EB95C338;

      v55 = a5;
      if (a5)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_15:
    v23 = (v21 - 1) & v21;
    v24 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v25 = *(*(v14 + 56) + v24);
    v26 = *(*(v14 + 48) + v24);
    v27 = v25;
    if (!v26)
    {
      goto LABEL_41;
    }

LABEL_19:
    v30 = *&v26[OBJC_IVAR___AAIDSessionKind_kind];
    v80 = v23;
    if (v30 <= 1)
    {
      if (!v30)
      {
        v31 = 0;
        goto LABEL_30;
      }

      if (v30 != 1)
      {
LABEL_64:
        *&v95 = *&v26[OBJC_IVAR___AAIDSessionKind_kind];
        sub_1B6ABA160();
        __break(1u);
LABEL_65:
        sub_1B6ABA190();
        __break(1u);
        goto LABEL_66;
      }

LABEL_27:
      v31 = 0;
      goto LABEL_30;
    }

    if (v30 == 2)
    {
      goto LABEL_27;
    }

    if (v30 != 3)
    {
      goto LABEL_64;
    }

    if (*&v26[OBJC_IVAR___AAIDSessionKind_name + 8])
    {
      v31 = *&v26[OBJC_IVAR___AAIDSessionKind_name];
      v30 = *&v26[OBJC_IVAR___AAIDSessionKind_name + 8];
    }

    else
    {
      v31 = 0;
      v30 = 0xE000000000000000;
    }

LABEL_30:
    sub_1B69E12F0(v27 + OBJC_IVAR___AAUserIDConfiguration_configuration, &v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = v10;
    v34 = sub_1B69DA824(v31, v30);
    v35 = v10[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_61;
    }

    v38 = v33;
    if (v10[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v33)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B69DE5F8();
        if (v38)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1B69DB5AC(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_1B69DA824(v31, v30);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_65;
      }

      v34 = v39;
      if (v38)
      {
LABEL_8:
        sub_1B69C2E8C(v31, v30);
        v10 = v84;
        sub_1B69EDCA0(&v95, *(v84 + 56) + 48 * v34);

        goto LABEL_9;
      }
    }

    v10 = v84;
    *(v84 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (v10[6] + 16 * v34);
    *v41 = v31;
    v41[1] = v30;
    v42 = (v10[7] + 48 * v34);
    v44 = v96;
    v43 = v97;
    *v42 = v95;
    v42[1] = v44;
    v42[2] = v43;

    v45 = v10[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_62;
    }

    v10[2] = v47;
LABEL_9:
    v18 = v22;
    v11 = v79;
    v13 = v80;
    v19 = v77;
    v14 = v78;
  }

  if (sub_1B6AB9E30())
  {
    v29 = v28;
    type metadata accessor for BridgedIDSessionKind();
    swift_dynamicCast();
    v26 = v95;
    *&v84 = v29;
    type metadata accessor for BridgedUserIDConfiguration();
    swift_dynamicCast();
    v27 = v95;
    v22 = v18;
    v23 = v13;
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  sub_1B69EDB24();

  if (a2)
  {
    v48 = &off_1F2E75710;
    v49 = &type metadata for ProxyUserStartDateStorage;
    v50 = a2;
  }

  else
  {
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v94[1] = 0;
    v94[2] = 0;
  }

  v94[0] = v50;
  v94[3] = v49;
  v94[4] = v48;
  if (!v71)
  {
    v59 = qword_1EB95A9C8;
    swift_unknownObjectRetain();
    if (v59 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  v52 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  v51 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 8);
  v54 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 16);
  v53 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 24);

  swift_unknownObjectRetain();
  v55 = a5;
  if (a5)
  {
LABEL_46:
    v56 = &off_1F2E7B720;
    v57 = &type metadata for ProxyStorefrontProvider;
    v58 = v55;
    goto LABEL_50;
  }

LABEL_49:
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v93[1] = 0;
  v93[2] = 0;
LABEL_50:
  v93[0] = v58;
  v93[3] = v57;
  v93[4] = v56;
  v60 = v10[2];
  swift_unknownObjectRetain();
  if (v60 && (v61 = sub_1B69DA824(0, 0), (v62 & 1) != 0))
  {
    sub_1B69E12F0(v10[7] + 48 * v61, &v95);
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
  }

  sub_1B69EDB2C(&v95);
  *&v84 = v10;
  sub_1B69EDBD8(v94, &v82, &qword_1EB95AF60, &qword_1EB95AF68);
  if (v83)
  {
    sub_1B6980E70(&v82, &v95);
  }

  else
  {
    *(&v96 + 1) = &type metadata for DefaultStartDateStorage;
    *&v97 = &protocol witness table for DefaultStartDateStorage;
    v63 = swift_allocObject();
    *&v95 = v63;
    *(v63 + 40) = &type metadata for DefaultKeyValueStore;
    *(v63 + 48) = &off_1F2E74C50;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    v64 = [objc_opt_self() standardUserDefaults];
    *(v63 + 56) = 0xD00000000000001BLL;
    *(v63 + 64) = 0x80000001B6AC9070;
    *(v63 + 88) = 2;
    *(v63 + 72) = 2;
    *(v63 + 80) = v64;
    if (v83)
    {
      sub_1B69A0A44(&v82, &qword_1EB95AF60, &qword_1EB95AF68);
    }
  }

  sub_1B6980E70(&v95, &v84 + 8);
  *&v87 = v52;
  *(&v87 + 1) = v51;
  *&v88 = v54;
  *(&v88 + 1) = v53;
  v92 = 0uLL;
  *(&v91 + 1) = v74;
  sub_1B69EDBD8(v93, &v82, &qword_1EB95AF70, qword_1EB95AF78);
  if (v83)
  {
    sub_1B69A0A44(v93, &qword_1EB95AF70, qword_1EB95AF78);
    sub_1B69A0A44(v94, &qword_1EB95AF60, &qword_1EB95AF68);
    sub_1B6980E70(&v82, &v95);
    sub_1B6980E70(&v95, &v89);
    v65 = v89;
    v101 = v90;
    v102 = v91;
    v103 = v92;
    v97 = v86;
    v98 = v87;
    v99 = v88;
    v100 = v89;
    v66 = v85;
    v95 = v84;
    v96 = v85;
    v67 = &v76[OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration];
    v68 = v91;
    *(v67 + 6) = v90;
    *(v67 + 7) = v68;
    *(v67 + 8) = v103;
    v69 = v98;
    *(v67 + 2) = v97;
    *(v67 + 3) = v69;
    *(v67 + 4) = v99;
    *(v67 + 5) = v65;
    *v67 = v95;
    *(v67 + 1) = v66;
    v81.receiver = v76;
    v81.super_class = v75;
    return objc_msgSendSuper2(&v81, sel_init);
  }

LABEL_66:
  sub_1B69A0A44(&v82, &qword_1EB95AF70, qword_1EB95AF78);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

id sub_1B69ED228(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1B69F7488(MEMORY[0x1E69E7CC0]);
  v73 = ObjectType;
  v74 = v4;
  v70 = a3;
  v71 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = sub_1B6AB9E20() | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v11 = ~v14;
    v10 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(a1 + 64);
    v13 = a1;
  }

  v17 = 0;
  v18 = (v11 + 64) >> 6;
  v76 = v13;
  v77 = v10;
  v75 = v18;
  while ((v13 & 0x8000000000000000) == 0)
  {
    v19 = v17;
    v20 = v12;
    v21 = v17;
    if (!v12)
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_41;
        }

        v20 = *(v10 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
LABEL_48:
      v51 = qword_1EB95C320;
      v50 = *algn_1EB95C328;
      v53 = qword_1EB95C330;
      v52 = qword_1EB95C338;

      v54 = a4;
      if (a4)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
    v24 = *(*(v13 + 56) + v23);
    v25 = *(*(v13 + 48) + v23);
    v26 = v24;
    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_19:
    v29 = *&v25[OBJC_IVAR___AAIDSessionKind_kind];
    v78 = v22;
    if (v29 <= 1)
    {
      if (!v29)
      {
        v30 = 0;
        goto LABEL_30;
      }

      if (v29 != 1)
      {
LABEL_64:
        *&v93 = *&v25[OBJC_IVAR___AAIDSessionKind_kind];
        sub_1B6ABA160();
        __break(1u);
LABEL_65:
        sub_1B6ABA190();
        __break(1u);
        goto LABEL_66;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_30;
    }

    if (v29 == 2)
    {
      goto LABEL_27;
    }

    if (v29 != 3)
    {
      goto LABEL_64;
    }

    if (*&v25[OBJC_IVAR___AAIDSessionKind_name + 8])
    {
      v30 = *&v25[OBJC_IVAR___AAIDSessionKind_name];
      v29 = *&v25[OBJC_IVAR___AAIDSessionKind_name + 8];
    }

    else
    {
      v30 = 0;
      v29 = 0xE000000000000000;
    }

LABEL_30:
    sub_1B69E12F0(v26 + OBJC_IVAR___AAUserIDConfiguration_configuration, &v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = v9;
    v33 = sub_1B69DA824(v30, v29);
    v34 = v9[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_61;
    }

    v37 = v32;
    if (v9[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B69DE5F8();
        if (v37)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1B69DB5AC(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_1B69DA824(v30, v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_65;
      }

      v33 = v38;
      if (v37)
      {
LABEL_8:
        sub_1B69C2E8C(v30, v29);
        v9 = v82;
        sub_1B69EDCA0(&v93, *(v82 + 56) + 48 * v33);

        goto LABEL_9;
      }
    }

    v9 = v82;
    *(v82 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v40 = (v9[6] + 16 * v33);
    *v40 = v30;
    v40[1] = v29;
    v41 = (v9[7] + 48 * v33);
    v43 = v94;
    v42 = v95;
    *v41 = v93;
    v41[1] = v43;
    v41[2] = v42;

    v44 = v9[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_62;
    }

    v9[2] = v46;
LABEL_9:
    v17 = v21;
    v10 = v77;
    v12 = v78;
    v18 = v75;
    v13 = v76;
  }

  if (sub_1B6AB9E30())
  {
    v28 = v27;
    type metadata accessor for BridgedIDSessionKind();
    swift_dynamicCast();
    v25 = v93;
    *&v82 = v28;
    type metadata accessor for BridgedUserIDConfiguration();
    swift_dynamicCast();
    v26 = v93;
    v21 = v17;
    v22 = v12;
    if (v25)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  sub_1B69EDB24();

  if (v71)
  {
    v47 = &off_1F2E75710;
    v48 = &type metadata for ProxyUserStartDateStorage;
    v49 = v71;
  }

  else
  {
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v92[1] = 0;
    v92[2] = 0;
  }

  v92[0] = v49;
  v92[3] = v48;
  v92[4] = v47;
  if (!v70)
  {
    v58 = qword_1EB95A9C8;
    swift_unknownObjectRetain();
    if (v58 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  v51 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  v50 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 8);
  v53 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 16);
  v52 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 24);

  swift_unknownObjectRetain();
  v54 = a4;
  if (a4)
  {
LABEL_46:
    v55 = &off_1F2E7B720;
    v56 = &type metadata for ProxyStorefrontProvider;
    v57 = v54;
    goto LABEL_50;
  }

LABEL_49:
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v91[1] = 0;
  v91[2] = 0;
LABEL_50:
  v91[0] = v57;
  v91[3] = v56;
  v91[4] = v55;
  v59 = v9[2];
  swift_unknownObjectRetain();
  if (v59 && (v60 = sub_1B69DA824(0, 0), (v61 & 1) != 0))
  {
    sub_1B69E12F0(v9[7] + 48 * v60, &v93);
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
  }

  sub_1B69EDB2C(&v93);
  *&v82 = v9;
  sub_1B69EDBD8(v92, &v80, &qword_1EB95AF60, &qword_1EB95AF68);
  if (v81)
  {
    sub_1B6980E70(&v80, &v93);
  }

  else
  {
    *(&v94 + 1) = &type metadata for DefaultStartDateStorage;
    *&v95 = &protocol witness table for DefaultStartDateStorage;
    v62 = swift_allocObject();
    *&v93 = v62;
    *(v62 + 40) = &type metadata for DefaultKeyValueStore;
    *(v62 + 48) = &off_1F2E74C50;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v63 = [objc_opt_self() standardUserDefaults];
    *(v62 + 56) = 0xD00000000000001BLL;
    *(v62 + 64) = 0x80000001B6AC9070;
    *(v62 + 88) = 2;
    *(v62 + 72) = 2;
    *(v62 + 80) = v63;
    if (v81)
    {
      sub_1B69A0A44(&v80, &qword_1EB95AF60, &qword_1EB95AF68);
    }
  }

  sub_1B6980E70(&v93, &v82 + 8);
  *&v85 = v51;
  *(&v85 + 1) = v50;
  *&v86 = v53;
  *(&v86 + 1) = v52;
  v90 = 0uLL;
  *(&v89 + 1) = 100;
  sub_1B69EDBD8(v91, &v80, &qword_1EB95AF70, qword_1EB95AF78);
  if (v81)
  {
    sub_1B69A0A44(v91, &qword_1EB95AF70, qword_1EB95AF78);
    sub_1B69A0A44(v92, &qword_1EB95AF60, &qword_1EB95AF68);
    sub_1B6980E70(&v80, &v93);
    sub_1B6980E70(&v93, &v87);
    v64 = v87;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v95 = v84;
    v96 = v85;
    v97 = v86;
    v98 = v87;
    v65 = v83;
    v93 = v82;
    v94 = v83;
    v66 = &v74[OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration];
    v67 = v89;
    *(v66 + 6) = v88;
    *(v66 + 7) = v67;
    *(v66 + 8) = v101;
    v68 = v96;
    *(v66 + 2) = v95;
    *(v66 + 3) = v68;
    *(v66 + 4) = v97;
    *(v66 + 5) = v64;
    *v66 = v93;
    *(v66 + 1) = v65;
    v79.receiver = v74;
    v79.super_class = v73;
    return objc_msgSendSuper2(&v79, sel_init);
  }

LABEL_66:
  sub_1B69A0A44(&v80, &qword_1EB95AF70, qword_1EB95AF78);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

unint64_t sub_1B69EDA78()
{
  result = qword_1EB95AF50;
  if (!qword_1EB95AF50)
  {
    type metadata accessor for BridgedIDSessionKind();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF50);
  }

  return result;
}

uint64_t sub_1B69EDB2C(uint64_t a1)
{
  sub_1B69EDB88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B69EDB88()
{
  if (!qword_1EB95AF58)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AF58);
    }
  }
}

uint64_t sub_1B69EDBD8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1B69EDC48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1B69EDC48(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B697ED90(255, a3);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69EDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotEvent.MissingData();
  sub_1B6AB95D0();

  swift_getWitnessTable();
  v6 = sub_1B6AB9490();

  *a3 = (v6 & 1) == 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1B69EDE00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69EDE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B69EDE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B69EDEDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B69EDF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B69EDFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B69949E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a3, v12);
  v13 = sub_1B6AB9680();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B69D0D00(v12);
  }

  else
  {
    sub_1B6AB9670();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B6AB95E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B6AB9350() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B69D0D00(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B69D0D00(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B69EE268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B69949E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a3, v12);
  v13 = sub_1B6AB9680();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B69D0D00(v12);
  }

  else
  {
    sub_1B6AB9670();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B6AB95E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1B6AB9350() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1B69F2738(0, &qword_1EB95B1C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B69D0D00(v27[0]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B69D0D00(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1B69F2738(0, &qword_1EB95B1C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B69EE634()
{
  v6 = &type metadata for DisabledKeyValueStore;
  v7 = &off_1F2E74C88;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = objc_allocWithZone(type metadata accessor for TrackingConsent());
  sub_1B69F2528(v5, v4);
  v2 = sub_1B69F1338(v4, v0, 2, v1);
  result = sub_1B69F2560(v5);
  qword_1EB967220 = v2;
  return result;
}

BOOL TrackingConsent.hasConsented.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

char *TrackingConsent.__allocating_init(keychainAccessGroup:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v11[3] = &type metadata for DefaultKeyValueStore;
  v11[4] = &off_1F2E74C50;
  v11[0] = a1;
  v11[1] = a2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = objc_allocWithZone(v2);
  sub_1B69EE930(v11, v10);
  v8 = sub_1B69F15D4(v10, v6, 2, v7);
  sub_1B69F1870(v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

char *TrackingConsent.init(keychainAccessGroup:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10[3] = &type metadata for DefaultKeyValueStore;
  v10[4] = &off_1F2E74C50;
  v10[0] = a1;
  v10[1] = a2;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = objc_allocWithZone(ObjectType);
  sub_1B69EE930(v10, v9);
  v7 = sub_1B69F15D4(v9, v5, 2, v6);
  sub_1B69F1870(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

char *TrackingConsent.init(keychainAccessGroup:initialPermission:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = &type metadata for DefaultKeyValueStore;
  v12[4] = &off_1F2E74C50;
  v12[0] = a1;
  v12[1] = a2;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = objc_allocWithZone(ObjectType);
  sub_1B69EE930(v12, v11);
  v9 = sub_1B69F15D4(v11, v7, (a3 & 1) == 0, v8);
  sub_1B69F1870(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

char *TrackingConsent.__allocating_init(keychainAccessGroup:initialPermission:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v10[3] = &type metadata for DefaultKeyValueStore;
  v10[4] = &off_1F2E74C50;
  v10[0] = a1;
  v10[1] = a2;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = objc_allocWithZone(v3);
  sub_1B69EE930(v10, v9);
  v7 = sub_1B69F15D4(v9, v5, v4, v6);
  sub_1B69F1870(v10);
  return v7;
}

void sub_1B69EEC4C(_BYTE *a1, void *a2, char a3, void *a4)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 8))(&v22, v7, v8);
  v9 = v22;
  if (v22 == 3)
  {
    sub_1B69EEE80(a3, &v22 + 1);
    v9 = BYTE1(v22);
  }

  v10 = sub_1B6AB92B0();
  [a4 setBool:v9 == 0 forKey:v10];

  *a1 = v9;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6AB8F90();
  __swift_project_value_buffer(v11, qword_1EDBCFDA8);
  v12 = sub_1B6AB8F80();
  v13 = sub_1B6AB98D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = " not yet decided";
    v17 = 0xD00000000000001BLL;
    if (v9 != 1)
    {
      v17 = 0xD000000000000020;
      v16 = "ed (tracking consent granted)";
    }

    if (v9)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0xD000000000000018;
    }

    if (v9)
    {
      v19 = v16;
    }

    else
    {
      v19 = "Tracking consent disallowed";
    }

    v20 = sub_1B698F63C(v18, v19 | 0x8000000000000000, &v21);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1B697C000, v12, v13, "Tracking consent initialized with value: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8C99550](v15, -1, -1);
    MEMORY[0x1B8C99550](v14, -1, -1);
  }
}

void sub_1B69EEE80(char a1@<W0>, _BYTE *a2@<X8>)
{
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6AB8F90();
  __swift_project_value_buffer(v4, qword_1EDBCFDA8);
  v5 = sub_1B6AB8F80();
  v6 = sub_1B6AB98D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xD000000000000018;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD00000000000001BLL;
      }

      else
      {
        v7 = 0xD000000000000020;
      }

      if (a1 == 1)
      {
        v10 = " not yet decided";
      }

      else
      {
        v10 = "ed (tracking consent granted)";
      }
    }

    else
    {
      v10 = "Tracking consent disallowed";
    }

    v11 = sub_1B698F63C(v7, v10 | 0x8000000000000000, &v12);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_1B697C000, v5, v6, "No consent found in keychain, defaulting to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8C99550](v9, -1, -1);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  *a2 = a1;
}

uint64_t sub_1B69EF01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = MEMORY[0x1E69E6370];
  sub_1B69F2738(0, &qword_1EB95B1A8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8688]);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_1B69F2738(0, &qword_1EB95B1B0, v6, MEMORY[0x1E69E8658]);
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_1B69F2738(0, &qword_1EB95B1B8, v6, MEMORY[0x1E69E8698]);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69EF1FC, 0, 0);
}

uint64_t sub_1B69EF1FC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  v14 = v0[6];
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = 0xD000000000000026;
  v8[4] = 0x80000001B6AC9100;
  (*(v5 + 104))(v3, *MEMORY[0x1E69E8650], v4);
  sub_1B6AB9700();

  sub_1B6AB96E0();
  swift_beginAccess();
  v9 = *(MEMORY[0x1E69E8678] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1B69EF388;
  v11 = v0[9];
  v12 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v12);
}

uint64_t sub_1B69EF388()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B69EF484, 0, 0);
}

uint64_t sub_1B69EF484()
{
  v20 = v0;
  v1 = *(v0 + 136);
  if (v1 == 2 || (sub_1B6AB9730() & 1) != 0 || (v2 = *(v0 + 48), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v14 + 8))(v13, v15);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v4 = (v1 & 1) == 0;
    v5 = *(Strong + OBJC_IVAR___AATrackingConsent_consented);
    v6 = Strong;

    os_unfair_lock_lock((v5 + 20));
    *(v5 + 16) = v4;
    os_unfair_lock_unlock((v5 + 20));

    v7 = *&v6[OBJC_IVAR___AATrackingConsent_storage + 24];
    v8 = *&v6[OBJC_IVAR___AATrackingConsent_storage + 32];
    __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR___AATrackingConsent_storage], v7);
    v19 = v4;
    (*(v8 + 16))(&v19, v7, v8);

    v9 = *(MEMORY[0x1E69E8678] + 4);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_1B69EF388;
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);

    return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v12);
  }
}

id TrackingConsent.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB9680();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *&v0[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask];
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v9 = sub_1B69F18A0();
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v9;
  v10[4] = v7;

  sub_1B69EE268(0, 0, v5, &unk_1B6ABDF68, v10);

  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_1B69EF7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B69EF874, v6, v5);
}

uint64_t sub_1B69EF874()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
    sub_1B6AB9710();
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_1B69EFB70(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    *a1 = 0;
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v3 = sub_1B6AB8F90();
    __swift_project_value_buffer(v3, qword_1EDBCFDA8);
    v4 = sub_1B6AB8F80();
    v5 = sub_1B6AB9900();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B697C000, v4, v5, "Tracking consent has been allowed", v6, 2u);
      MEMORY[0x1B8C99550](v6, -1, -1);
    }

    if (*(a2 + OBJC_IVAR___AATrackingConsent_consentEnforcement))
    {
      v7 = *(a2 + OBJC_IVAR___AATrackingConsent_userDefaults);
      v8 = sub_1B6AB92B0();
      [v7 setBool:1 forKey:v8];
    }

    else
    {
      dispatch_group_leave(*(a2 + OBJC_IVAR___AATrackingConsent_accessGroup));
    }
  }
}

Swift::Void __swiftcall TrackingConsent.deny()()
{
  v1 = *(v0 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  sub_1B69F19C8((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

void sub_1B69EFD98(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 1;
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v3 = sub_1B6AB8F90();
    __swift_project_value_buffer(v3, qword_1EDBCFDA8);
    v4 = sub_1B6AB8F80();
    v5 = sub_1B6AB9900();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B697C000, v4, v5, "Tracking consent has been denied", v6, 2u);
      MEMORY[0x1B8C99550](v6, -1, -1);
    }

    if (*(a2 + OBJC_IVAR___AATrackingConsent_consentEnforcement))
    {
      v7 = *(a2 + OBJC_IVAR___AATrackingConsent_userDefaults);
      v8 = sub_1B6AB92B0();
      [v7 setBool:0 forKey:v8];
    }

    else
    {
      dispatch_group_enter(*(a2 + OBJC_IVAR___AATrackingConsent_accessGroup));
    }
  }
}

uint64_t sub_1B69EFF80()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 8);
  v4 = sub_1B69F23CC();
  v5 = sub_1B69F2420();
  v6 = sub_1B69F2474();
  return v3(0xD000000000000026, 0x80000001B6AC9100, 1, &type metadata for TrackingConsent.TrackingPermission, v4, v5, v6, v1, v2);
}

uint64_t sub_1B69F0058(char *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v10 = v2;
  v5 = *(v4 + 16);
  v6 = sub_1B69F23CC();
  v7 = sub_1B69F2420();
  v8 = sub_1B69F2474();
  return v5(&v10, 0xD000000000000026, 0x80000001B6AC9100, 1, &type metadata for TrackingConsent.TrackingPermission, v6, v7, v8, v3, v4);
}

unint64_t TrackingConsent.TrackingPermission.debugDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002DLL;
  }

  *v0;
  return result;
}

unint64_t TrackingConsent.TrackingPermission.description.getter()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1B69F01E8(uint64_t a1)
{
  v2 = sub_1B69F1A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0224(uint64_t a1)
{
  v2 = sub_1B69F1A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F0260()
{
  v1 = 0x776F6C6C61736964;
  if (*v0 != 1)
  {
    v1 = 0x6564696365646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465776F6C6C61;
  }
}

uint64_t sub_1B69F02C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B69F22A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B69F02EC(uint64_t a1)
{
  v2 = sub_1B69F1AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0328(uint64_t a1)
{
  v2 = sub_1B69F1AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F0364(uint64_t a1)
{
  v2 = sub_1B69F1A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F03A0(uint64_t a1)
{
  v2 = sub_1B69F1A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F03DC(uint64_t a1)
{
  v2 = sub_1B69F19E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0418(uint64_t a1)
{
  v2 = sub_1B69F19E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackingConsent.TrackingPermission.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1B69F1B34(0, &qword_1EB95B098, sub_1B69F19E4, &type metadata for TrackingConsent.TrackingPermission.UndecidedCodingKeys, MEMORY[0x1E69E6F58]);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - v6;
  sub_1B69F1B34(0, &qword_1EB95B0A8, sub_1B69F1A38, &type metadata for TrackingConsent.TrackingPermission.DisallowedCodingKeys, v3);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v9;
  sub_1B69F1B34(0, &qword_1EB95B0B8, sub_1B69F1A8C, &type metadata for TrackingConsent.TrackingPermission.AllowedCodingKeys, v3);
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  sub_1B69F1B34(0, &qword_1EB95B0C8, sub_1B69F1AE0, &type metadata for TrackingConsent.TrackingPermission.CodingKeys, v3);
  v36 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F1AE0();
  sub_1B6ABA2D0();
  v21 = (v15 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v38 = 1;
      sub_1B69F1A38();
      v22 = v30;
      v23 = v36;
      sub_1B6AB9FD0();
      (*(v31 + 8))(v22, v32);
      return (*v21)(v18, v23);
    }

    v39 = 2;
    sub_1B69F19E4();
    v13 = v33;
    v25 = v36;
    sub_1B6AB9FD0();
    v27 = v34;
    v26 = v35;
  }

  else
  {
    v37 = 0;
    sub_1B69F1A8C();
    v25 = v36;
    sub_1B6AB9FD0();
    v27 = v28;
    v26 = v29;
  }

  (*(v27 + 8))(v13, v26);
  return (*v21)(v18, v25);
}

uint64_t TrackingConsent.TrackingPermission.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t TrackingConsent.TrackingPermission.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B69F1B34(0, &qword_1EB95B0D8, sub_1B69F19E4, &type metadata for TrackingConsent.TrackingPermission.UndecidedCodingKeys, MEMORY[0x1E69E6F48]);
  v46 = v4;
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v40 - v6;
  sub_1B69F1B34(0, &qword_1EB95B0E0, sub_1B69F1A38, &type metadata for TrackingConsent.TrackingPermission.DisallowedCodingKeys, v3);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v40 - v9;
  sub_1B69F1B34(0, &qword_1EB95B0E8, sub_1B69F1A8C, &type metadata for TrackingConsent.TrackingPermission.AllowedCodingKeys, v3);
  v11 = v10;
  v42 = *(v10 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  sub_1B69F1B34(0, &qword_1EB95B0F0, sub_1B69F1AE0, &type metadata for TrackingConsent.TrackingPermission.CodingKeys, v3);
  v16 = v15;
  v50 = *(v15 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F1AE0();
  v21 = v51;
  sub_1B6ABA2A0();
  if (v21)
  {
    goto LABEL_2;
  }

  v41 = v11;
  v23 = v48;
  v24 = v49;
  v51 = a1;
  v25 = sub_1B6AB9FB0();
  v26 = *(v25 + 16);
  if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
  {
    v29 = sub_1B6AB9D10();
    swift_allocError();
    v31 = v30;
    sub_1B69F1B9C();
    v33 = *(v32 + 48);
    *v31 = &type metadata for TrackingConsent.TrackingPermission;
    sub_1B6AB9F20();
    sub_1B6AB9CF0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v50 + 8))(v19, v16);
    swift_unknownObjectRelease();
LABEL_10:
    v22 = v51;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (!*(v25 + 32))
  {
    v52 = 0;
    sub_1B69F1A8C();
    sub_1B6AB9F10();
    v38 = v50;
    (*(v42 + 8))(v14, v41);
    (*(v38 + 8))(v19, v16);
    swift_unknownObjectRelease();
    v37 = v47;
LABEL_22:
    *v37 = v27;
    goto LABEL_10;
  }

  v42 = 0;
  v35 = v50;
  if (v27 == 1)
  {
    v53 = 1;
    sub_1B69F1A38();
    v36 = v42;
    sub_1B6AB9F10();
    v37 = v47;
    if (v36)
    {
      goto LABEL_18;
    }

    (*(v44 + 8))(v23, v45);
    (*(v35 + 8))(v19, v16);
    goto LABEL_21;
  }

  v54 = 2;
  sub_1B69F19E4();
  v39 = v42;
  sub_1B6AB9F10();
  v37 = v47;
  if (!v39)
  {
    (*(v43 + 8))(v24, v46);
    (*(v35 + 8))(v19, v16);
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_18:
  (*(v35 + 8))(v19, v16);
  swift_unknownObjectRelease();
  a1 = v51;
LABEL_2:
  v22 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1B69F0F14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B69F0F58()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002DLL;
  }

  *v0;
  return result;
}

unint64_t sub_1B69F0FE0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1B69F1038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B69F1130(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B69F1224;

  return v6(v2 + 32);
}

uint64_t sub_1B69F1224()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

char *sub_1B69F1338(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34[3] = &type metadata for TrackingConsent.DisabledStorage;
  v34[4] = &off_1F2E75510;
  v13 = swift_allocObject();
  v34[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  v15 = OBJC_IVAR___AATrackingConsent_accessGroup;
  *&a4[v15] = dispatch_group_create();
  v16 = OBJC_IVAR___AATrackingConsent_consented;
  sub_1B69F24C8();
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  v18 = (v17 + 20);
  *(v17 + 16) = 2;
  v19 = (v17 + 16);
  *&a4[v16] = v17;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = 0;
  sub_1B6982544(v34, &a4[OBJC_IVAR___AATrackingConsent_storage]);
  a4[OBJC_IVAR___AATrackingConsent_consentEnforcement] = 1;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaults] = a2;
  v30 = v34;
  v31 = a3;
  v32 = a2;

  v20 = a2;
  os_unfair_lock_lock(v18);
  sub_1B69F2590(v19);
  os_unfair_lock_unlock(v18);

  v33.receiver = a4;
  v33.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v33, sel_init);
  v22 = sub_1B6AB9680();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v20;
  v24[5] = v23;
  v25 = v21;
  v26 = sub_1B69EDFB0(0, 0, v12, &unk_1B6ABE568, v24);
  v27 = *&v25[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask];
  *&v25[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = v26;

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v25;
}

char *sub_1B69F15D4(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34[3] = &type metadata for TrackingConsent.TrackingConsentStorage;
  v34[4] = &off_1F2E752E8;
  v13 = swift_allocObject();
  v34[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  v15 = OBJC_IVAR___AATrackingConsent_accessGroup;
  *&a4[v15] = dispatch_group_create();
  v16 = OBJC_IVAR___AATrackingConsent_consented;
  sub_1B69F24C8();
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  v18 = (v17 + 20);
  *(v17 + 16) = 2;
  v19 = (v17 + 16);
  *&a4[v16] = v17;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = 0;
  sub_1B6982544(v34, &a4[OBJC_IVAR___AATrackingConsent_storage]);
  a4[OBJC_IVAR___AATrackingConsent_consentEnforcement] = 1;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaults] = a2;
  v30 = v34;
  v31 = a3;
  v32 = a2;

  v20 = a2;
  os_unfair_lock_lock(v18);
  sub_1B69F2A2C(v19);
  os_unfair_lock_unlock(v18);

  v33.receiver = a4;
  v33.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v33, sel_init);
  v22 = sub_1B6AB9680();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v20;
  v24[5] = v23;
  v25 = v21;
  v26 = sub_1B69EDFB0(0, 0, v12, &unk_1B6ABE5A0, v24);
  v27 = *&v25[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask];
  *&v25[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = v26;

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v25;
}

unint64_t sub_1B69F18A0()
{
  result = qword_1EDBC7F20;
  if (!qword_1EDBC7F20)
  {
    type metadata accessor for AnalyticsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC7F20);
  }

  return result;
}

uint64_t sub_1B69F18F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B69EF7DC(a1, v4, v5, v6);
}

unint64_t sub_1B69F19E4()
{
  result = qword_1EB95B0A0;
  if (!qword_1EB95B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0A0);
  }

  return result;
}

unint64_t sub_1B69F1A38()
{
  result = qword_1EB95B0B0;
  if (!qword_1EB95B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0B0);
  }

  return result;
}

unint64_t sub_1B69F1A8C()
{
  result = qword_1EB95B0C0;
  if (!qword_1EB95B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0C0);
  }

  return result;
}

unint64_t sub_1B69F1AE0()
{
  result = qword_1EB95B0D0;
  if (!qword_1EB95B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0D0);
  }

  return result;
}

void sub_1B69F1B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1B69F1B9C()
{
  if (!qword_1EB95B0F8)
  {
    sub_1B69F1C0C();
    sub_1B6AB9D00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B0F8);
    }
  }
}

unint64_t sub_1B69F1C0C()
{
  result = qword_1EB95B100;
  if (!qword_1EB95B100)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB95B100);
  }

  return result;
}

unint64_t sub_1B69F1C5C()
{
  result = qword_1EB95B108;
  if (!qword_1EB95B108)
  {
    sub_1B69F2738(255, &qword_1EB95B110, &type metadata for TrackingConsent.TrackingPermission, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B108);
  }

  return result;
}

unint64_t sub_1B69F1CDC()
{
  result = qword_1EB95B118;
  if (!qword_1EB95B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackingConsent.AccessGroupConsentEnforcement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for TrackingConsent.AccessGroupConsentEnforcement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1B69F1F38()
{
  result = qword_1EB95B138;
  if (!qword_1EB95B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B138);
  }

  return result;
}

unint64_t sub_1B69F1F90()
{
  result = qword_1EB95B140;
  if (!qword_1EB95B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B140);
  }

  return result;
}

unint64_t sub_1B69F1FE8()
{
  result = qword_1EB95B148;
  if (!qword_1EB95B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B148);
  }

  return result;
}

unint64_t sub_1B69F2040()
{
  result = qword_1EB95B150;
  if (!qword_1EB95B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B150);
  }

  return result;
}

unint64_t sub_1B69F2098()
{
  result = qword_1EB95B158;
  if (!qword_1EB95B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B158);
  }

  return result;
}

unint64_t sub_1B69F20F0()
{
  result = qword_1EB95B160;
  if (!qword_1EB95B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B160);
  }

  return result;
}

unint64_t sub_1B69F2148()
{
  result = qword_1EB95B168;
  if (!qword_1EB95B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B168);
  }

  return result;
}

unint64_t sub_1B69F21A0()
{
  result = qword_1EB95B170;
  if (!qword_1EB95B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B170);
  }

  return result;
}

unint64_t sub_1B69F21F8()
{
  result = qword_1EB95B178;
  if (!qword_1EB95B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B178);
  }

  return result;
}

unint64_t sub_1B69F2250()
{
  result = qword_1EB95B180;
  if (!qword_1EB95B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B180);
  }

  return result;
}

uint64_t sub_1B69F22A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C61736964 && a2 == 0xEA00000000006465 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564696365646E75 && a2 == 0xE900000000000064)
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

unint64_t sub_1B69F23CC()
{
  result = qword_1EB95B188;
  if (!qword_1EB95B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B188);
  }

  return result;
}

unint64_t sub_1B69F2420()
{
  result = qword_1EB95B190;
  if (!qword_1EB95B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B190);
  }

  return result;
}

unint64_t sub_1B69F2474()
{
  result = qword_1EB95B198;
  if (!qword_1EB95B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B198);
  }

  return result;
}

void sub_1B69F24C8()
{
  if (!qword_1EB95B1A0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B1A0);
    }
  }
}

uint64_t sub_1B69F25B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69EF01C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B69F2680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B69D1460;

  return sub_1B69F1130(a1, v5);
}

void sub_1B69F2738(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69F2788(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B69AD75C;

  return sub_1B69F1130(a1, v5);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69F2888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69AD75C;

  return sub_1B69EF01C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B69F2948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69F2990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t BridgedEventPropertyRequirement.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B69F2A78()
{
  result = qword_1EB95B1C8[0];
  if (!qword_1EB95B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95B1C8);
  }

  return result;
}

uint64_t *sub_1B69F2ACC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B69F2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B69F2C28;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1B69F2C28(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1B69F2D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B69F2D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B69F2DD8()
{
  v0 = sub_1B6AB9EF0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69F2E2C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B69F2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F2EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B69F2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F3014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B69F2DD8();
  *a2 = result;
  return result;
}

uint64_t sub_1B69F3044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B69F2E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B69F3078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B69F2DD8();
  *a1 = result;
  return result;
}

uint64_t sub_1B69F30A0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1B69F3778();
  *a2 = result;
  return result;
}

uint64_t sub_1B69F30CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B69F3120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SessionData.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v18[0] = *(a2 + 24);
  v18[1] = v4;
  type metadata accessor for SessionData.Keys();
  swift_getWitnessTable();
  v5 = sub_1B6ABA060();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v18[2];
  sub_1B6ABA2D0();
  v12 = *v11;
  v13 = v11[1];
  v20 = 0;
  v14 = v18[3];
  sub_1B6ABA000();
  if (!v14)
  {
    v15 = *(a2 + 36);
    v19 = 1;
    v16 = *(v18[0] + 16);
    sub_1B6ABA040();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SessionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionData.Keys();
  swift_getWitnessTable();
  v35 = sub_1B6AB9FC0();
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - v10;
  v34 = a3;
  v12 = type metadata accessor for SessionData();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v36;
  sub_1B6ABA2A0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a1;
  v28 = v12;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v38 = 0;
  v21 = v15;
  *v15 = sub_1B6AB9F50();
  v15[1] = v22;
  v27 = v22;
  v37 = 1;
  v23 = *(v20 + 8);
  sub_1B6AB9F90();
  (*(v18 + 8))(v11, v35);
  v24 = v28;
  (*(v30 + 32))(v15 + *(v28 + 36), v19, a2);
  v25 = v29;
  (*(v29 + 16))(v31, v21, v24);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return (*(v25 + 8))(v21, v24);
}

id BridgedUserStartDateStorageType.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, char a2)
{
  v3 = v2;
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B6AB8D20();
  v9[0] = 0;
  LODWORD(v3) = [v3 storeUserStartDate:v5 isDiagnosticSubmissionAllowed:a2 & 1 error:v9];

  if (v3)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1B6AB8A70();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BridgedUserStartDateStorageType.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [v2 userStartDateWithIsDiagnosticSubmissionAllowed_];
  if (v4)
  {
    v5 = v4;
    sub_1B6AB8D80();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B6AB8DB0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void sub_1B69F390C(uint64_t a1, char a2, char a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B6AB8D20();
  v18[0] = 0;
  LODWORD(a4) = [a4 storeUserStartDate:v7 isDiagnosticSubmissionAllowed:a2 & 1 isTrackingConsentAllowed:a3 & 1 error:v18];

  if (a4)
  {
    v8 = v18[0];
  }

  else
  {
    v9 = v18[0];
    v10 = sub_1B6AB8A70();

    swift_willThrow();
    v11 = sub_1B6AB8A60();
    if ([v11 code])
    {
      v12 = [v11 domain];
      v13 = sub_1B6AB92E0();
      v15 = v14;

      if (v13 == 0xD00000000000001CLL && 0x80000001B6AC9360 == v15)
      {
      }

      else
      {
        v16 = sub_1B6ABA0F0();

        if ((v16 & 1) == 0)
        {
          swift_willThrow();

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B69F3AF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [*v2 userStartDateWithIsDiagnosticSubmissionAllowed:a1 & 1 isTrackingConsentAllowed:1];
  if (v5)
  {
    v6 = v5;
    sub_1B6AB8D80();

    v4 = 0;
  }

  v7 = sub_1B6AB8DB0();
  return (*(*(v7 - 8) + 56))(a2, v4, 1, v7);
}

uint64_t sub_1B69F3BA8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = [*v3 userStartDateWithIsDiagnosticSubmissionAllowed:a1 & 1 isTrackingConsentAllowed:a2 & 1];
  if (v5)
  {
    v6 = v5;
    sub_1B6AB8D80();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B6AB8DB0();
  return (*(*(v8 - 8) + 56))(a3, v7, 1, v8);
}

uint64_t sub_1B69F3C88()
{
  v1 = [*v0 taskDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B6AB92E0();

  return v3;
}

void sub_1B69F3CF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setTaskDescription_];
}

void (*sub_1B69F3D60(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [v3 taskDescription];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B6AB92E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1B69F3DE8;
}

void sub_1B69F3DE8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v7 = sub_1B6AB92B0();
    }

    else
    {
      v7 = 0;
    }

    [a1[2] setTaskDescription_];
  }

  else if (v3)
  {
    v6 = *a1;
    v7 = sub_1B6AB92B0();

    [a1[2] setTaskDescription_];
  }

  else
  {
    v7 = 0;
    [a1[2] setTaskDescription_];
  }
}

uint64_t sub_1B69F3ECC()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return swift_deallocClassInstance();
}

void sub_1B69F3F14(unint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = sub_1B6AB87A0();
  if (a1 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B6AB8C60();
  }

  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B69D1A0C;
  v14[3] = &block_descriptor_2;
  v12 = _Block_copy(v14);

  v13 = [v9 uploadTaskWithRequest:v10 fromData:v11 completionHandler:v12];
  _Block_release(v12);

  a4[3] = &type metadata for ProxyURLSessionUploadTask;
  a4[4] = &off_1F2E757A8;
  *a4 = v13;
}

uint64_t MigrationUserIDStorage.init(accessGroup:legacyStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1B6982544(a3, (a4 + 5));
  a4[3] = &type metadata for DefaultUserIDStorage;
  a4[4] = &protocol witness table for DefaultUserIDStorage;
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 40) = &type metadata for DefaultKeyValueStore;
  *(v8 + 48) = &off_1F2E74C50;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = [objc_opt_self() standardUserDefaults];
  *(v8 + 56) = 0xD000000000000017;
  *(v8 + 64) = 0x80000001B6AC94D0;
  *(v8 + 88) = 2;
  *(v8 + 72) = 2;
  *(v8 + 80) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t MigrationUserIDStorage.init(accessGroup:legacyStorage:syncRequirements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a4;
  sub_1B6982544(a3, (a5 + 5));
  a5[3] = &type metadata for DefaultUserIDStorage;
  a5[4] = &protocol witness table for DefaultUserIDStorage;
  v10 = swift_allocObject();
  *a5 = v10;
  *(v10 + 40) = &type metadata for DefaultKeyValueStore;
  *(v10 + 48) = &off_1F2E74C50;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = [objc_opt_self() standardUserDefaults];
  *(v10 + 56) = 0xD000000000000017;
  *(v10 + 64) = 0x80000001B6AC94D0;
  *(v10 + 88) = 2;
  *(v10 + 72) = v9;
  *(v10 + 80) = v11;

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t MigrationUserIDStorage.init(newStorage:legacyStorage:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B6980E70(a1, a3);

  return sub_1B6980E70(a2, a3 + 40);
}

uint64_t MigrationUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B6AB8DB0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoredUserIDComponents();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v29 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegacyStoredUserIDComponents();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  v21 = v4[3];
  v20 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v21);
  v33 = v18;
  v34 = v19;
  v22 = *(v20 + 16);
  v31 = a1;
  v32 = a3;
  v23 = v35;
  result = v22(a1, &v33, a3, 1, v21, v20);
  if (!v23)
  {
    v25 = v4[8];
    v26 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v25);
    v27 = v29;
    sub_1B69F4778(v31, v29);
    v28 = v30;
    sub_1B6AB8D90();
    sub_1B69E935C(v27, v28, v17);
    v33 = v18;
    v34 = v19;
    (*(v26 + 16))(v17, &v33, v32 & 1, v25, v26);
    return sub_1B69F50F4(v17, type metadata accessor for LegacyStoredUserIDComponents);
  }

  return result;
}

uint64_t MigrationUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v34 = a4;
  v9 = sub_1B6AB8DB0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StoredUserIDComponents();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LegacyStoredUserIDComponents();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = a2[1];
  v23 = v5[3];
  v22 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v23);
  v35 = v20;
  v36 = v21;
  v24 = *(v22 + 16);
  v32 = a1;
  v33 = a3;
  v25 = v37;
  result = v24(a1, &v35, a3, v34, v23, v22);
  if (!v25)
  {
    v27 = v5[8];
    v28 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v27);
    sub_1B69F4778(v32, v15);
    v29 = v31;
    sub_1B6AB8D90();
    sub_1B69E935C(v15, v29, v19);
    v35 = v20;
    v36 = v21;
    (*(v28 + 16))(v19, &v35, v33 & 1, v27, v28);
    return sub_1B69F50F4(v19, type metadata accessor for LegacyStoredUserIDComponents);
  }

  return result;
}

uint64_t sub_1B69F4778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredUserIDComponents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MigrationUserIDStorage.userIDComponents(for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v72 = a3;
  v63 = a4;
  v8 = type metadata accessor for StoredUserIDComponents();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69F4E64(0, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v57 - v15;
  sub_1B69F4E64(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v26 = *a1;
  v25 = a1[1];
  v27 = v5[3];
  v28 = v5[4];
  v62 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v27);
  v69 = v26;
  v70 = v25;
  v29 = v68;
  result = (*(v28 + 32))(&v69, a2, v72, v27, v28);
  if (!v29)
  {
    v58 = v25;
    v59 = v26;
    v71 = a2;
    v57 = v22;
    v32 = v64;
    v31 = v65;
    v68 = 0;
    v33 = v66;
    v34 = v67;
    v35 = *(v66 + 48);
    if (v35(v24, 1, v67) != 1)
    {
      v49 = v63;
      sub_1B69F5090(v24, v63);
      return (*(v33 + 56))(v49, 0, 1, v34);
    }

    sub_1B69F4EB8(v24, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6AB8F90();
    v66 = __swift_project_value_buffer(v36, qword_1EDBCFD80);
    v37 = sub_1B6AB8F80();
    v38 = sub_1B6AB98D0();
    v39 = v31;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B697C000, v37, v38, "No ID components found in AA storage, checking legacy storage...", v40, 2u);
      MEMORY[0x1B8C99550](v40, -1, -1);
    }

    v41 = v62[8];
    v42 = v62[9];
    __swift_project_boxed_opaque_existential_1(v62 + 5, v41);
    v44 = v58;
    v43 = v59;
    v69 = v59;
    v70 = v58;
    v45 = v68;
    result = (*(v42 + 8))(&v69, v71 & 1, v41, v42);
    if (!v45)
    {
      v68 = 0;
      sub_1B69F4FA4(v32, v39, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
      v46 = v57;
      sub_1B6AA9BB0(v39, v57);
      v47 = v61;
      sub_1B69F4FA4(v46, v61, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
      if (v35(v47, 1, v67) == 1)
      {
        sub_1B69F4EB8(v32, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        sub_1B69F4EB8(v47, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
        v48 = v63;
      }

      else
      {
        v50 = v60;
        sub_1B69F5090(v47, v60);
        v52 = v62[3];
        v51 = v62[4];
        __swift_project_boxed_opaque_existential_1(v62, v52);
        v69 = v43;
        v70 = v44;
        v53 = v68;
        (*(v51 + 16))(v50, &v69, v71 & 1, v72 & 1, v52, v51);
        v68 = v53;
        if (v53)
        {
          sub_1B69F50F4(v50, type metadata accessor for StoredUserIDComponents);
          sub_1B69F4EB8(v57, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
          return sub_1B69F4EB8(v32, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        }

        v54 = sub_1B6AB8F80();
        v55 = sub_1B6AB98D0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_1B697C000, v54, v55, "ID components found in legacy storage, successfully migrated to AA storage.", v56, 2u);
          MEMORY[0x1B8C99550](v56, -1, -1);
        }

        sub_1B69F50F4(v50, type metadata accessor for StoredUserIDComponents);
        sub_1B69F4EB8(v32, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        v48 = v63;
        v46 = v57;
      }

      return sub_1B69F5010(v46, v48);
    }
  }

  return result;
}

void sub_1B69F4E64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69F4EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B69F4E64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69F4FA4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B69F4E64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B69F5010(uint64_t a1, uint64_t a2)
{
  sub_1B69F4E64(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69F5090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredUserIDComponents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69F50F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B69F5170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69F51B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v14 = *a4;
  v15 = a4[1];
  v17 = a4[2];
  v16 = a4[3];
  if (*(a1 + 16) && (v18 = sub_1B69DA824(0, 0), (v19 & 1) != 0))
  {
    sub_1B69E12F0(*(a1 + 56) + 48 * v18, &v26);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  sub_1B69EDB2C(&v26);
  *a8 = a1;
  sub_1B69EDBD8(a2, &v24, &qword_1EB95AF60, &qword_1EB95AF68);
  if (v25)
  {
    sub_1B6980E70(&v24, &v26);
  }

  else
  {
    *(&v27 + 1) = &type metadata for DefaultStartDateStorage;
    *&v28 = &protocol witness table for DefaultStartDateStorage;
    v20 = swift_allocObject();
    *&v26 = v20;
    *(v20 + 40) = &type metadata for DefaultKeyValueStore;
    *(v20 + 48) = &off_1F2E74C50;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = [objc_opt_self() standardUserDefaults];
    *(v20 + 56) = 0xD00000000000001BLL;
    *(v20 + 64) = 0x80000001B6AC9070;
    *(v20 + 88) = 2;
    *(v20 + 72) = 2;
    *(v20 + 80) = v21;
    if (v25)
    {
      sub_1B69A0A44(&v24, &qword_1EB95AF60, &qword_1EB95AF68);
    }
  }

  sub_1B6980E70(&v26, (a8 + 1));
  a8[6] = v14;
  a8[7] = v15;
  a8[8] = v17;
  a8[9] = v16;
  a8[15] = a3;
  a8[16] = a6;
  a8[17] = a7;
  sub_1B69EDBD8(a5, &v24, &qword_1EB95AF70, qword_1EB95AF78);
  if (v25)
  {
    sub_1B69A0A44(a5, &qword_1EB95AF70, qword_1EB95AF78);
    sub_1B69A0A44(a2, &qword_1EB95AF60, &qword_1EB95AF68);
    sub_1B6980E70(&v24, &v26);
    return sub_1B6980E70(&v26, (a8 + 10));
  }

  else
  {
    sub_1B69A0A44(&v24, &qword_1EB95AF70, qword_1EB95AF78);
    result = sub_1B6AB9E40();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DateVIeghr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B69F5518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B69F558C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = sub_1B6AB9B30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *(a1 + 56);
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = *(a1 + 40);
  v18 = v9;
  type metadata accessor for CombineLatestStorage();
  v11 = *(a1 + 68);
  v10 = *(a1 + 72);
  v12 = *(v3 - 8);
  (*(v12 + 16))(v8, v1 + v10, v3);
  (*(v12 + 56))(v8, 0, 1, v3);
  v13 = sub_1B69D06F0(v1, v1 + v11, v8);
  (*(v5 + 8))(v8, v4);
  return sub_1B69F5718(v13);
}

uint64_t sub_1B69F5718(uint64_t a1)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 112);
  type metadata accessor for AsyncCombineLatest3Sequence.Iterator.InternalClass();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B69F5790(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B69F57C4()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B69C8DF0();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_1B69F5808()
{
  sub_1B69F57C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1B69F585C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B69F5904(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1B69F5BBC(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1B69F5F40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69F5F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B69F6038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v2[4] = swift_getAssociatedTypeWitness();
  v6 = v3[14];
  v7 = v3[11];
  v2[5] = swift_getAssociatedTypeWitness();
  v8 = v3[15];
  v9 = v3[12];
  v2[6] = swift_getAssociatedTypeWitness();
  v2[7] = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[8] = TupleTypeMetadata3;
  v11 = sub_1B6AB9B30();
  v2[9] = v11;
  v12 = *(v11 - 8);
  v2[10] = v12;
  v13 = *(v12 + 64) + 15;
  v2[11] = swift_task_alloc();
  v14 = *(TupleTypeMetadata3 - 8);
  v2[12] = v14;
  v15 = *(v14 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69F6284, 0, 0);
}

uint64_t sub_1B69F6284()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1B69F6320;
  v3 = v0[11];

  return sub_1B69C9014(v3);
}

uint64_t sub_1B69F6320()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1B69F6890;
  }

  else
  {
    v3 = sub_1B69F6434;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B69F6434()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    (*(v0[10] + 8))(v1, v0[9]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v7, 1, 1, TupleTypeMetadata3);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v12 = v0[5];
    v40 = v0[14];
    v43 = v0[6];
    v13 = v0[4];
    v36 = v0[2];
    (*(v2 + 32))(v9, v1, v3);
    v34 = swift_getTupleTypeMetadata3();
    v38 = *(v34 + 48);
    v14 = *(v2 + 16);
    v14(v10, v9, v3);
    v35 = *(v13 - 8);
    (*(v35 + 32))(v36, v10, v13);
    v14(v40, v9, v3);
    v33 = *(v12 - 8);
    (*(v33 + 32))(v36 + v38, v40 + *(v3 + 48), v12);
    v14(v11, v9, v3);
    v15 = *(v43 - 8);
    v39 = *(v3 + 64);
    v41 = v11;
    result = (*(v15 + 48))(v11 + v39, 1);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v37 = v0[15];
    v17 = v0[13];
    v31 = v0[7];
    v32 = v0[14];
    v18 = v0[6];
    v44 = v0[5];
    v19 = v0[2];
    v20 = *(v34 + 64);
    v21 = *(v3 + 48);
    v30 = v0[4];
    (*(v0[12] + 8))(v0[16], v0[8]);
    (*(v15 + 32))(v19 + v20, v41 + v39, v18);
    (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
    v42 = *(v33 + 8);
    v42(v17 + v21, v44);
    v22 = *(v35 + 8);
    v22(v17, v30);
    v23 = *(*(v31 - 8) + 8);
    v23(v32 + v39, v31);
    v22(v32, v30);
    v23(v37 + v39, v31);
    v42(v37 + v21, v44);
  }

  v25 = v0[15];
  v24 = v0[16];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B69F6890()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_1B69F6924(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69F6944, 0, 0);
}

uint64_t sub_1B69F6944()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B69F69E0;
  v3 = *(v0 + 16);

  return sub_1B69F6038(v3);
}

uint64_t sub_1B69F69E0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B69F6AD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B69AD75C;

  return sub_1B69F6924(a1);
}

uint64_t sub_1B69F6B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 40);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v18 = *(MEMORY[0x1E69E85D8] + 4);
  v19 = swift_task_alloc();
  v6[6] = v19;
  *v19 = v6;
  v19[1] = sub_1B69F6CC0;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v17);
}

uint64_t sub_1B69F6CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1B69F6E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B69F558C(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1B69F6E78()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69F6EE0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t sub_1B69F6F30()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69F6F94(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B6ABA0F0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B6ABA0F0();
    }
  }

  return result;
}

void *SessionGroupManager.__allocating_init(accessQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v2[4] = sub_1B6987D80(v3);
  v2[2] = a1;
  return v2;
}

void *SessionGroupManager.init(accessQueue:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v1[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v1[4] = sub_1B6987D80(v3);
  v1[2] = a1;
  return v1;
}

uint64_t SessionGroupManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SessionGroupManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1B69F7164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBC9B88);
    v3 = sub_1B6AB9E90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B6993940(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B69F7264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E0B1C();
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v13, sub_1B69D6438);
      v5 = v13;
      result = sub_1B69DA770(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B69F7378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E0A7C();
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v11, sub_1B69D5350);
      v5 = v11;
      result = sub_1B69DA770(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B69979CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B69F7488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69C1208(0, &qword_1EB95AE18, sub_1B69811C4);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7CCC(v4, v13, &qword_1EB95B3F8);
      result = sub_1B69DA824(*&v13[0], *(&v13[0] + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v13[0];
      v7 = (v3[7] + 48 * result);
      v8 = v13[1];
      v9 = v13[3];
      v7[1] = v13[2];
      v7[2] = v9;
      *v7 = v8;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B69F760C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B69F7654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B69F76A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EB95ADC0);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7CCC(v4, &v16, &qword_1EB95B3F0);
      v5 = v16;
      v6 = v17;
      result = sub_1B6993940(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B69F77E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E1100();
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v17, sub_1B69F7BC0);
      v5 = v17;
      v6 = v18;
      result = sub_1B6993940(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 56 * result;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(v10 + 48) = v22;
      *(v10 + 16) = v12;
      *(v10 + 32) = v13;
      *v10 = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B69F791C(uint64_t a1)
{
  sub_1B69F7AF4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
    v9 = sub_1B6AB9E90();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1B69F7F74(v11, v7, sub_1B69F7AF4);
      result = sub_1B69DA824(*v7, *(v7 + 1));
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 16 * result) = *v7;
      v16 = v9[7];
      v17 = type metadata accessor for UserIDComponents();
      result = sub_1B69F7B5C(&v7[v10], v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B69F7AF4()
{
  if (!qword_1EB95B3E0)
  {
    type metadata accessor for UserIDComponents();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B3E0);
    }
  }
}

uint64_t sub_1B69F7B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIDComponents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B69F7BC0()
{
  if (!qword_1EB95B3E8)
  {
    sub_1B69F7C44(255, &qword_1EB95ADF8, sub_1B697E288);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B3E8);
    }
  }
}

void sub_1B69F7C44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B69809F4(255, &qword_1EB95ADF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B69F7CCC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1B69F7FDC(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B69F7D3C()
{
  if (!qword_1EB95ADC8)
  {
    sub_1B69E1084();
    v0 = sub_1B6AB9EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95ADC8);
    }
  }
}

void sub_1B69F7DA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B69F7E1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69F7E64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    sub_1B69F7E1C(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B69F7F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B69F7F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B69F7FDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1B69F8074()
{
  result = qword_1EB95B400;
  if (!qword_1EB95B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B400);
  }

  return result;
}

unint64_t sub_1B69F80CC()
{
  result = qword_1EB95B408;
  if (!qword_1EB95B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B408);
  }

  return result;
}

unint64_t sub_1B69F8124()
{
  result = qword_1EB95B410;
  if (!qword_1EB95B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B410);
  }

  return result;
}

unint64_t sub_1B69F817C()
{
  result = qword_1EB95B418;
  if (!qword_1EB95B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequirements(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequirements(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B69F822C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      return 0x7972746572;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else if (a3 == 2)
  {
    return 0x64656C696166;
  }

  else if (a3 == 3)
  {
    v3 = ContentType.description.getter(a1);
    MEMORY[0x1B8C97BE0](v3);

    return 0x696F70646E456F6ELL;
  }

  else
  {
    if (a1 ^ 1 | a2)
    {
      v5 = 0x656E6F646E616261;
    }

    else
    {
      v5 = 0x656E696C66666FLL;
    }

    if (a1 | a2)
    {
      return v5;
    }

    else
    {
      return 0x64656C6261736964;
    }
  }
}

uint64_t sub_1B69F8378()
{
  sub_1B6AB9CA0();

  v0 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v0);

  MEMORY[0x1B8C97BE0](0x726564616568202CLL, 0xEA00000000003D73);
  v1 = sub_1B6AB9220();
  MEMORY[0x1B8C97BE0](v1);

  return 0x6F43737574617473;
}

uint64_t sub_1B69F846C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B69F8E6C(0, &qword_1EB95B420, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F8928();
  sub_1B6ABA2D0();
  v16 = 0;
  sub_1B6ABA030();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_1B69A7DCC();
    sub_1B69F8ED0(&qword_1EDBC8060);
    sub_1B6ABA040();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B69F862C()
{
  if (*v0)
  {
    result = 0x73726564616568;
  }

  else
  {
    result = 0x6F43737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1B69F866C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
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

uint64_t sub_1B69F875C(uint64_t a1)
{
  v2 = sub_1B69F8928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F8798(uint64_t a1)
{
  v2 = sub_1B69F8928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F87D4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B69F897C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69F87F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B69F8C74(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B69F8840()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B69F8378();
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12UploadResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1B69F8874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B69F88BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B69F8900(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B69F8928()
{
  result = qword_1EB95B428;
  if (!qword_1EB95B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B428);
  }

  return result;
}

uint64_t sub_1B69F897C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B6993940(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B6ABA0F0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69F8B20(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          return a1 == a4;
        }

        return 0;
      }

      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 4 || a4 != 2)
          {
            return 0;
          }
        }

        else if (a6 != 4 || a4 != 1)
        {
          return 0;
        }

        return !a5;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }

    return a1 == a4 && (sub_1B69F897C(a2, a5) & 1) != 0;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    return a1 == a4 && (sub_1B69F897C(a2, a5) & 1) != 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 != a4)
  {
    return 0;
  }

  v9 = a2;

  LOBYTE(v9) = sub_1B69F897C(v9, a5);
  sub_1B69F8F30(a1, a5, 1u);
  result = 1;
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B69F8C74(uint64_t *a1)
{
  sub_1B69F8E6C(0, &qword_1EB95B430, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B69F8928();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1B6AB9F80();
    sub_1B69A7DCC();
    v11[15] = 1;
    sub_1B69F8ED0(&qword_1EB95B438);
    sub_1B6AB9F90();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1B69F8E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B69F8928();
    v7 = a3(a1, &type metadata for UploadResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B69F8ED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B69A7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B69F8F30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B69F8F5C()
{
  result = qword_1EB95B440;
  if (!qword_1EB95B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B440);
  }

  return result;
}

unint64_t sub_1B69F8FB4()
{
  result = qword_1EB95B448;
  if (!qword_1EB95B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B448);
  }

  return result;
}

unint64_t sub_1B69F900C()
{
  result = qword_1EB95B450;
  if (!qword_1EB95B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B450);
  }

  return result;
}

uint64_t sub_1B69F9060(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimedData();
  if (swift_dynamicCastMetatype())
  {
    v3 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName);
    v4 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName + 8);
    if (v3 == 0x4464656D69544141 && v4 == 0xEB00000000617461)
    {
      return 1;
    }

    v6 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName);
    v7 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName + 8);
    if (sub_1B6ABA0F0())
    {
      return 1;
    }

    v8 = v3 == 0xD000000000000010 && 0x80000001B6AC9580 == v4;
    if (v8 || (sub_1B6ABA0F0() & 1) != 0)
    {
      return 1;
    }
  }

  type metadata accessor for EventData();
  if (swift_dynamicCastMetatype() && ((v9 = a2 + OBJC_IVAR___AARawEventProperty_dataName, v10 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName), v11 = *(v9 + 8), v10 == 0x44746E6576454141) ? (v12 = v11 == 0xEB00000000617461) : (v12 = 0), v12 || (v13 = *(v9 + 8), (sub_1B6ABA0F0() & 1) != 0) || (v10 == 0xD000000000000010 ? (v14 = 0x80000001B6AC9560 == v11) : (v14 = 0), v14 || (sub_1B6ABA0F0() & 1) != 0)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69F91E8()
{
  v1 = (*v0 + OBJC_IVAR___AARawEventProperty_dataName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B69F922C()
{
  v1 = *(*v0 + OBJC_IVAR___AARawEventProperty_requirement);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(*v0 + OBJC_IVAR___AARawEventProperty_requirement);
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t Client.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAClient_identifier);
  v2 = *(v0 + OBJC_IVAR___AAClient_identifier + 8);

  return v1;
}

uint64_t Client.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAClient_name);
  v2 = *(v0 + OBJC_IVAR___AAClient_name + 8);

  return v1;
}

unsigned __int8 *sub_1B69F9390()
{
  v1 = v0 + OBJC_IVAR___AAClient_buildNumber;
  v3 = *(v0 + OBJC_IVAR___AAClient_buildNumber);
  v2 = *(v1 + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    while (sub_1B6AB9440() != 46 || v5 != 0xE100000000000000)
    {
      v6 = sub_1B6ABA0F0();

      if ((v6 & 1) != 0 || 4 * v4 == sub_1B6AB9390() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v7 = sub_1B6AB9460();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ((v7 ^ v9) < 0x4000)
  {

    return 0;
  }

  v14 = sub_1B69FA118(v7, v9, v11, v13, 10);
  if ((v15 & 0x100) == 0)
  {
    v16 = v15;
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return v17;
    }

    return 0;
  }

  v19 = sub_1B69F9B80(v7, v9, v11, v13, 10);
  v21 = v20;

  if (v21)
  {
    return 0;
  }

  return v19;
}

id sub_1B69F9540(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1B6AB92B0();

  return v6;
}

uint64_t sub_1B69F9644()
{
  v2 = *(v0 + OBJC_IVAR___AAClient_version);
  v3 = *(v0 + OBJC_IVAR___AAClient_version + 8);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  MEMORY[0x1B8C97BE0](*(v0 + OBJC_IVAR___AAClient_buildNumber), *(v0 + OBJC_IVAR___AAClient_buildNumber + 8));
  return v2;
}

id Client.__allocating_init(identifier:name:version:buildNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___AAClient_identifier];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___AAClient_name];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v17[OBJC_IVAR___AAClient_version];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v17[OBJC_IVAR___AAClient_buildNumber];
  *v21 = a7;
  *(v21 + 1) = a8;
  v23.receiver = v17;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

id Client.init(identifier:name:version:buildNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___AAClient_identifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR___AAClient_name];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v8[OBJC_IVAR___AAClient_version];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v8[OBJC_IVAR___AAClient_buildNumber];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v14, sel_init);
}

id Client.__allocating_init(identifier:name:version:build:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1B6AB92B0();

  v3 = sub_1B6AB92B0();

  v4 = sub_1B6AB92B0();

  sub_1B6ABA080();
  v5 = sub_1B6AB92B0();

  v6 = [v1 initWithIdentifier:v2 name:v3 version:v4 buildNumber:v5];

  return v6;
}

id Client.init(identifier:name:version:build:)()
{
  v1 = sub_1B6AB92B0();

  v2 = sub_1B6AB92B0();

  v3 = sub_1B6AB92B0();

  sub_1B6ABA080();
  v4 = sub_1B6AB92B0();

  v5 = [v0 initWithIdentifier:v1 name:v2 version:v3 buildNumber:v4];

  return v5;
}

id Client.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Client.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unsigned __int8 *sub_1B69F9B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1B69FA2CC();

  result = sub_1B6AB9450();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B6AB17A0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B6AB9D40();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B69FA118(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1B6AB9D40();
  }

  result = sub_1B69FA320(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void sub_1B69FA1E4()
{
  if (!qword_1EDBCBAF0)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCBAF0);
    }
  }
}

unint64_t sub_1B69FA2CC()
{
  result = qword_1EB95B478;
  if (!qword_1EB95B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B478);
  }

  return result;
}

uint64_t sub_1B69FA320(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1B69D5E18(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1B6AB93F0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1B69D5E18(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1B69D5E18(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1B6AB93F0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1B69FA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B69F2C28;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1B69FA8BC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  sub_1B6993C94(v2, v3);

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v5 = v0[14];
  __swift_project_value_buffer(v0[10], qword_1EDBCFD80);
  v6 = v5;
  v7 = sub_1B6AB8F80();
  v8 = sub_1B6AB98E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B697C000, v7, v8, "Failed to sign our data, error=%@", v10, 0xCu);
    sub_1B69FAAA0(v11);
    MEMORY[0x1B8C99550](v11, -1, -1);
    MEMORY[0x1B8C99550](v10, -1, -1);
  }

  v14 = v0[14];

  swift_willThrow();
  v15 = v0[1];
  v16 = v0[14];

  return v15();
}

uint64_t sub_1B69FAA68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B69FAAA0(uint64_t a1)
{
  sub_1B69EC2D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69FAAFC(uint64_t a1)
{
  result = 0xD000000000000039;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 3)
      {
        return 0xD00000000000003DLL;
      }

      else
      {
        return 0xD000000000000038;
      }
    }

    if (!a1)
    {
      return 0xD000000000000034;
    }

    if (a1 == 1)
    {
      return result;
    }

LABEL_20:
    result = sub_1B6ABA160();
    __break(1u);
    return result;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return 0xD000000000000044;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  if (a1 == 7)
  {
    return 0xD00000000000003ALL;
  }

  if (a1 != 8 && a1 != 9)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B69FAC88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69B193C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B69FACC8()
{
  result = qword_1EB95B480;
  if (!qword_1EB95B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B480);
  }

  return result;
}

uint64_t sub_1B69FAD2C(uint64_t a1)
{
  v80 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1B69866DC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = v65 - v6;
  v7 = sub_1B6AB8DB0();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = v87[8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = v65 - v11;
  v72 = sub_1B6AB8970();
  v70 = *(v72 - 8);
  v12 = *(v70 + 64);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v69 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v86 = v65 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v65 - v17;
  sub_1B69866DC(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0], v1);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v65 - v20;
  v22 = sub_1B6AB8F20();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B6AB8E50();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B6AB8F00();
  v67 = *(v68 - 8);
  v32 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v34 = v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v31, *MEMORY[0x1E6969868], v27);
  v85 = v34;
  sub_1B6AB8E60();
  (*(v28 + 8))(v31, v27);
  sub_1B6AB8F10();
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v23 + 32))(v26, v21, v22);
  sub_1B6AB8ED0();
  sub_1B69866DC(0, &qword_1EB95B488, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v83 = v36;
  v37 = sub_1B6AB8EE0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v76 = (((v40 + 32) & ~v40) + 2 * v39);
  v82 = (v40 + 32) & ~v40;
  v41 = swift_allocObject();
  v75 = xmmword_1B6ABF500;
  *(v41 + 16) = xmmword_1B6ABF500;
  v42 = v41 + ((v40 + 32) & ~v40);
  v74 = *MEMORY[0x1E6969A68];
  v66 = v38;
  v43 = *(v38 + 104);
  v65[0] = v38 + 104;
  v43(v42);
  v73 = *MEMORY[0x1E6969A78];
  v43(v42 + v39);
  sub_1B6AA01D0(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B6AB8E90();

  v65[1] = v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v75;
  v45 = v44 + v82;
  (v43)(v44 + v82, v74, v37);
  v79 = v39;
  v46 = v45 + v39;
  v47 = v73;
  v76 = v43;
  (v43)(v46, v73, v37);
  sub_1B6AA01D0(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B6AB8E90();

  v48 = v81;
  sub_1B6AB8EA0();
  v49 = v87[6];
  result = v49(v48, 1, v88);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v50 = v88;
  v51 = v87[4];
  v52 = v78;
  v51();
  v53 = v77;
  sub_1B6AB8EA0();
  result = v49(v53, 1, v50);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v54 = v71;
  v55 = v88;
  (v51)(v71, v53, v88);
  v56 = v82;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B6ABD890;
  v76(v57 + v56, v47, v37);
  sub_1B6AA01D0(v57);
  swift_setDeallocating();
  (*(v66 + 8))(v57 + v56, v37);
  swift_deallocClassInstance();
  v58 = v69;
  v59 = v52;
  v60 = v85;
  sub_1B6AB8E80();

  v83 = sub_1B6AB8960();
  LOBYTE(v57) = v61;
  v62 = *(v70 + 8);
  v63 = v72;
  v62(v58, v72);
  v64 = v87[1];
  v64(v54, v55);
  v64(v59, v55);
  v62(v86, v63);
  v62(v84, v63);
  (*(v67 + 8))(v60, v68);
  if (v57)
  {
    return 0;
  }

  else
  {
    return v83;
  }
}

uint64_t MigrationStartDateStorage.init(legacyStorage:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for DefaultStartDateStorage;
  a2[4] = &protocol witness table for DefaultStartDateStorage;
  v4 = swift_allocObject();
  *a2 = v4;
  *(v4 + 40) = &type metadata for DefaultKeyValueStore;
  *(v4 + 48) = &off_1F2E74C50;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = [objc_opt_self() standardUserDefaults];
  *(v4 + 56) = 0xD00000000000001BLL;
  *(v4 + 64) = 0x80000001B6AC9070;
  *(v4 + 88) = 2;
  *(v4 + 72) = 2;
  *(v4 + 80) = v5;

  return sub_1B699A784(a1, (a2 + 5));
}

uint64_t MigrationStartDateStorage.init(legacyStorage:syncRequirements:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  a3[3] = &type metadata for DefaultStartDateStorage;
  a3[4] = &protocol witness table for DefaultStartDateStorage;
  v6 = swift_allocObject();
  *a3 = v6;
  *(v6 + 40) = &type metadata for DefaultKeyValueStore;
  *(v6 + 48) = &off_1F2E74C50;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = [objc_opt_self() standardUserDefaults];
  *(v6 + 56) = 0xD00000000000001BLL;
  *(v6 + 64) = 0x80000001B6AC9070;
  *(v6 + 88) = 2;
  *(v6 + 72) = v5;
  *(v6 + 80) = v7;

  return sub_1B699A784(a1, (a3 + 5));
}

uint64_t MigrationStartDateStorage.init(legacyStorage:newStorage:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B699A784(a2, a3);

  return sub_1B699A784(a1, a3 + 40);
}

uint64_t MigrationStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(v7 + 16))(a1, a2, 1, v6, v7);
  if (!v3)
  {
    v9 = v2[8];
    v10 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v9);
    return (*(v10 + 8))(a1, a2 & 1, v9, v10);
  }

  return result;
}

uint64_t MigrationStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  result = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = v5[8];
    v13 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v12);
    return (*(v13 + 8))(a1, a2 & 1, v12, v13);
  }

  return result;
}

uint64_t MigrationStartDateStorage.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a2;
  v48 = a3;
  v6 = sub_1B6AB8DB0();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69B2128();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = v3[3];
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v19);
  v21 = v51;
  result = (*(v20 + 32))(a1, v53, v19, v20);
  if (!v21)
  {
    v46 = v13;
    v52 = a1;
    v23 = v16;
    v24 = v48;
    v25 = v49;
    v51 = 0;
    v26 = *(v49 + 48);
    v27 = v50;
    if (v26(v18, 1, v50) != 1)
    {
      (*(v25 + 32))(v24, v18, v27);
      return (*(v25 + 56))(v24, 0, 1, v27);
    }

    sub_1B69E9EBC(v18);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v28 = sub_1B6AB8F90();
    __swift_project_value_buffer(v28, qword_1EDBCFD80);
    v29 = sub_1B6AB8F80();
    v30 = sub_1B6AB98D0();
    v31 = v23;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B697C000, v29, v30, "No user start date found in AA storage, checking legacy storage...", v32, 2u);
      MEMORY[0x1B8C99550](v32, -1, -1);
    }

    v33 = v4[8];
    v34 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v33);
    v35 = v51;
    result = (*(v34 + 24))(v52 & 1, v33, v34);
    if (!v35)
    {
      v51 = 0;
      v36 = v46;
      sub_1B69B20C4(v31, v46);
      v37 = v50;
      if (v26(v36, 1, v50) == 1)
      {
        sub_1B69E9EBC(v36);
      }

      else
      {
        v38 = v49;
        v39 = v47;
        (*(v49 + 32))(v47, v36, v37);
        v40 = v4[3];
        v41 = v4[4];
        __swift_project_boxed_opaque_existential_1(v4, v40);
        v42 = v51;
        (*(v41 + 16))(v39, v52 & 1, v53 & 1, v40, v41);
        v51 = v42;
        if (v42)
        {
          (*(v38 + 8))(v39, v37);
          return sub_1B69E9EBC(v31);
        }

        v43 = sub_1B6AB8F80();
        v44 = sub_1B6AB98D0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1B697C000, v43, v44, "User start date found in legacy storage, successfully migrated to AA storage.", v45, 2u);
          MEMORY[0x1B8C99550](v45, -1, -1);
        }

        (*(v49 + 8))(v39, v50);
      }

      return sub_1B69B3830(v31, v24);
    }
  }

  return result;
}

uint64_t sub_1B69FBE94(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(v7 + 16))(a1, a2, 1, v6, v7);
  if (!v3)
  {
    v9 = v2[8];
    v10 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v9);
    return (*(v10 + 8))(a1, a2 & 1, v9, v10);
  }

  return result;
}

uint64_t sub_1B69FBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  result = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = v5[8];
    v13 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v12);
    return (*(v13 + 8))(a1, a2 & 1, v12, v13);
  }

  return result;
}

unint64_t sub_1B69FC0B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69FC320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1B69FC0EC()
{
  result = [objc_allocWithZone(type metadata accessor for BridgedTimestampGranularityFactory()) init];
  qword_1EDBC8120 = result;
  return result;
}

id BridgedTimestampGranularityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BridgedTimestampGranularityFactory.sharedInstance.getter()
{
  if (qword_1EDBC8118 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8120;

  return v1;
}

id BridgedTimestampGranularityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedTimestampGranularityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B69FC320(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t _s12AppAnalytics34BridgedTimestampGranularityFactoryC04makedE0yAA0cdE0OSSF_0()
{
  v1 = sub_1B6AB9340();
  v2 = v0;
  if (v1 == 7954788 && v0 == 0xE300000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 1920298856 && v2 == 0xE400000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (v1 == 0x6574756E696DLL && v2 == 0xE600000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 4;
  }

  else if (v1 == 0x72657474696ALL && v2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v4 = sub_1B6ABA0F0();

    if (v4)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1B69FC4A0()
{
  result = qword_1EB95B490;
  if (!qword_1EB95B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B490);
  }

  return result;
}

void *SessionManager.__allocating_init(accessQueue:sessionGroupManager:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v26 = a6;
  v27 = a5;
  v12 = type metadata accessor for SummaryEventConfiguration(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  v19 = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_1EDBCA728);
  sub_1B6980478(v20, v15, type metadata accessor for SummaryEventConfiguration);
  v21 = *(v7 + 48);
  v22 = *(v7 + 52);
  v23 = swift_allocObject();
  v24 = sub_1B6A07FC4(a1, v19, a2, 0, a3, v16, v17, v18, v27, v26, v15, v23);

  swift_unknownObjectRelease();
  return v24;
}

void *SessionManager.__allocating_init(accessQueue:sessionGroupManager:options:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v29 = a7;
  v30 = a4;
  v31 = a6;
  v13 = type metadata accessor for SummaryEventConfiguration(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = *a5;
  v19 = *(a5 + 8);
  v20 = *(a5 + 16);
  v21 = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_1EDBCA728);
  sub_1B6980478(v22, v16, type metadata accessor for SummaryEventConfiguration);
  v23 = *(v8 + 48);
  v24 = *(v8 + 52);
  v25 = swift_allocObject();
  v26 = sub_1B6A07FC4(a1, v21, a2, v17, v30, v18, v19, v20, v31, v29, v16, v25);

  swift_unknownObjectRelease();
  return v26;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a2;
  v36 = a3;
  v37 = a5;
  v35 = a1;
  v11 = type metadata accessor for SummaryEventConfiguration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DiagnosticsConsentProvider(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a4;
  v22 = *a6;
  v21 = *(a6 + 8);
  v23 = *(a6 + 16);
  v24 = dispatch_group_create();
  sub_1B6AB8E30();
  v25 = &v19[*(v16 + 28)];
  *v25 = sub_1B69A3378;
  *(v25 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v11, qword_1EDBCA728);
  sub_1B6980478(v26, v14, type metadata accessor for SummaryEventConfiguration);
  ObjectType = swift_getObjectType();
  v31 = v14;
  v28 = v35;
  v29 = sub_1B6A089EC(v35, v24, v36, v20, v37, v22, v21, v23, a7, v19, v31, ObjectType, v33);

  swift_unknownObjectRelease();
  return v29;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:summaryEventConfiguration:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = sub_1B6A09EC0(a1, a2, a3, a4, a5, v18, a7, a8, a9, v9, v17, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v19;
}