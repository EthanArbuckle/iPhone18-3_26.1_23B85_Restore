__n128 sub_1000925FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100092610(uint64_t a1, int a2)
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

uint64_t sub_100092658(uint64_t result, int a2, int a3)
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

__n128 sub_1000926B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000926C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100092710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100092764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000927AC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_100092808()
{
  result = qword_100177180;
  if (!qword_100177180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177180);
  }

  return result;
}

unint64_t sub_10009285C(uint64_t a1)
{
  result = sub_100092884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092884()
{
  result = qword_100177188;
  if (!qword_100177188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177188);
  }

  return result;
}

unint64_t sub_1000928DC()
{
  result = qword_100177190;
  if (!qword_100177190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177190);
  }

  return result;
}

unint64_t sub_100092930(uint64_t a1)
{
  result = sub_100092958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092958()
{
  result = qword_100177198;
  if (!qword_100177198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177198);
  }

  return result;
}

unint64_t sub_1000929B0()
{
  result = qword_1001771A0;
  if (!qword_1001771A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771A0);
  }

  return result;
}

unint64_t sub_100092A04(uint64_t a1)
{
  result = sub_100092A2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092A2C()
{
  result = qword_1001771A8;
  if (!qword_1001771A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771A8);
  }

  return result;
}

unint64_t sub_100092A84()
{
  result = qword_1001771B0;
  if (!qword_1001771B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B0);
  }

  return result;
}

unint64_t sub_100092AD8(uint64_t a1)
{
  result = sub_100092B00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092B00()
{
  result = qword_1001771B8;
  if (!qword_1001771B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B8);
  }

  return result;
}

unint64_t sub_100092B58()
{
  result = qword_1001771C0;
  if (!qword_1001771C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C0);
  }

  return result;
}

unint64_t sub_100092BAC(uint64_t a1)
{
  result = sub_100092BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100092BD4()
{
  result = qword_1001771C8;
  if (!qword_1001771C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C8);
  }

  return result;
}

uint64_t Function.functionDescriptors.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t Function.highestExceptionLevel.getter()
{
  v37 = v0[4];
  v38 = v0[5];
  v39 = v0[6];
  v40 = *(v0 + 14);
  v33 = *v0;
  v34 = v0[1];
  v35 = v0[2];
  v36 = v0[3];
  v1 = ControlInterface.highestExceptionLevel.getter();
  v2 = *(v0 + 15);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      v6 = v5 + 40 * v4;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      if (v8)
      {
        break;
      }

      v10 = 0;
      v14 = *(v7 + 16);
      if (v14)
      {
        goto LABEL_22;
      }

LABEL_3:
      ++v4;

      if (v1 <= v10)
      {
        v1 = v10;
      }

      else
      {
        v1 = v1;
      }

      if (v4 == v3)
      {
        return v1;
      }
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v8 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 == 68 || v12 == 67 || v12 == 16)
        {
          if (!v10)
          {
            v10 = 1;
          }
        }

        else if (v10 < 2u)
        {
          v10 = 2;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = *(v7 + 16);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    for (i = 0; i != v14; ++i)
    {
      v16 = v7 + 32 + 80 * i;
      v17 = *(v16 + 72);
      if (v17 && (v18 = *(v17 + 16)) != 0)
      {
        v19 = 0;
        v20 = (v17 + 32);
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v22 == 68 || v21 == 67 || v21 == 16)
          {
            if (!v19)
            {
              v19 = 1;
            }
          }

          else if (v19 < 2u)
          {
            v19 = 2;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v23 = *(v16 + 56);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = v23 + 32;
        do
        {
          v27 = *(v26 + 80 * v25 + 72);
          if (v27)
          {
            v28 = *(v27 + 16);
            if (v28)
            {
              v29 = (v27 + 32);
              do
              {
                v31 = *v29++;
                v30 = v31;
                if (v31 == 68 || v30 == 67 || v30 == 16)
                {
                  if (!v19)
                  {
                    v19 = 1;
                  }
                }

                else if (v19 < 2u)
                {
                  v19 = 2;
                }

                --v28;
              }

              while (v28);
            }
          }

          ++v25;
        }

        while (v25 != v24);
      }

      if (v10 <= v19)
      {
        v10 = v19;
      }
    }

    goto LABEL_3;
  }

  return v1;
}

__n128 Function.init(_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100093EF4(a1, a2, a3, v11);
  if (!v4)
  {
    v7 = v11[9];
    *(a4 + 128) = v11[8];
    *(a4 + 144) = v7;
    *(a4 + 160) = v12;
    v8 = v11[5];
    *(a4 + 64) = v11[4];
    *(a4 + 80) = v8;
    v9 = v11[7];
    *(a4 + 96) = v11[6];
    *(a4 + 112) = v9;
    v10 = v11[1];
    *a4 = v11[0];
    *(a4 + 16) = v10;
    result = v11[3];
    *(a4 + 32) = v11[2];
    *(a4 + 48) = result;
  }

  return result;
}

uint64_t sub_100092FE0(char *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 80);
  v79[17] = *(v2 + 64);
  v79[18] = v7;
  v79[19] = *(v2 + 96);
  v80 = *(v2 + 112);
  v8 = *(v2 + 16);
  v79[13] = *v2;
  v79[14] = v8;
  v9 = *(v2 + 48);
  v79[15] = *(v2 + 32);
  v79[16] = v9;
  sub_100021248(v2, v79);
  v10 = sub_100075CCC(a1, a2);
  if (v3)
  {
    sub_1000212F0(v2);
  }

  else
  {
    v59 = a1;
    v61 = v10;
    v60 = *(v2 + 144);
    v12 = *(v2 + 120);
    v13 = *(v12 + 16);
    v14 = _swiftEmptyArrayStorage;
    v58 = v2;
    if (v13)
    {
      *&v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v15 = (v12 + 64);
      do
      {
        v16 = *(v15 - 3);
        v17 = *(v15 - 16);
        v18 = *(v15 - 1);
        v19 = *v15;
        v81 = *(v15 - 4);
        v82 = v16;
        v83 = v17;
        v84 = v18;
        v85 = v19;
        if (*(v16 + 16))
        {
          v20 = *(v16 + 48);
          v21 = *(v16 + 80);
          v22 = *(v16 + 96);
          v86[2] = *(v16 + 64);
          v86[3] = v21;
          v86[4] = v22;
          v86[0] = *(v16 + 32);
          v86[1] = v20;

          sub_10001EBF0(v86, v79);
          v23 = StreamingAltInterface.synchronizationType.getter();
          sub_10001EC4C(v86);
        }

        else
        {

          v23 = 0;
        }

        sub_100085C28(v59, v61, v60, a2 & 1, v23);
        v15 += 5;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = *(v64 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v13;
      }

      while (v13);
      v14 = v64;
      v4 = v2;
    }

    v25 = *(v4 + 160);
    v26 = *(v25 + 16);
    v27 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v87 = _swiftEmptyArrayStorage;
      sub_100046804(0, v26, 0);
      v27 = v87;
      v28 = (v25 + 32);
      for (i = v26 - 1; ; --i)
      {
        v79[0] = *v28;
        v30 = v28[1];
        v31 = v28[2];
        v32 = v28[4];
        v79[3] = v28[3];
        v79[4] = v32;
        v79[1] = v30;
        v79[2] = v31;
        v33 = v28[5];
        v34 = v28[6];
        v35 = v28[8];
        v79[7] = v28[7];
        v79[8] = v35;
        v79[5] = v33;
        v79[6] = v34;
        v36 = v28[9];
        v37 = v28[10];
        v38 = v28[12];
        v79[11] = v28[11];
        v79[12] = v38;
        v79[9] = v36;
        v79[10] = v37;
        v39 = v28[11];
        v74 = v28[10];
        v75 = v39;
        v76 = v28[12];
        v40 = v28[7];
        v70 = v28[6];
        v71 = v40;
        v41 = v28[9];
        v72 = v28[8];
        v73 = v41;
        v42 = v28[3];
        v66 = v28[2];
        v67 = v42;
        v43 = v28[5];
        v68 = v28[4];
        v69 = v43;
        v44 = v28[1];
        v64 = *v28;
        v65 = v44;
        sub_100095BD4(v79, v62);
        sub_100093560(&v64, v61, &v63, &v77);
        v62[10] = v74;
        v62[11] = v75;
        v62[12] = v76;
        v62[6] = v70;
        v62[7] = v71;
        v62[8] = v72;
        v62[9] = v73;
        v62[2] = v66;
        v62[3] = v67;
        v62[4] = v68;
        v62[5] = v69;
        v62[0] = v64;
        v62[1] = v65;
        sub_100095C0C(v62);
        v45 = v77;
        v46 = v78;
        v87 = v27;
        v48 = v27[2];
        v47 = v27[3];
        if (v48 >= v47 >> 1)
        {
          v57 = v77;
          sub_100046804((v47 > 1), v48 + 1, 1);
          v45 = v57;
          v27 = v87;
        }

        v27[2] = v48 + 1;
        v49 = &v27[3 * v48];
        *(v49 + 2) = v45;
        v49[6] = v46;
        if (!i)
        {
          break;
        }

        v28 += 13;
      }

      v4 = v58;
    }

    if (v60)
    {
      if (v60 == 32)
      {
        type metadata accessor for ADC2Function();
        v50 = &off_100161450;
      }

      else
      {
        if (v60 != 48)
        {

          sub_1000212F0(v4);

          return 0;
        }

        type metadata accessor for ADC3Function();
        v50 = &off_100162308;
      }
    }

    else
    {
      type metadata accessor for ADC1Function();
      v50 = &off_1001652A8;
    }

    a2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    v51 = *(v4 + 144);
    *(a2 + 144) = *(v4 + 128);
    *(a2 + 160) = v51;
    *(a2 + 176) = *(v4 + 160);
    v52 = *(v4 + 80);
    *(a2 + 80) = *(v4 + 64);
    *(a2 + 96) = v52;
    v53 = *(v4 + 112);
    *(a2 + 112) = *(v4 + 96);
    *(a2 + 128) = v53;
    v54 = *(v4 + 16);
    *(a2 + 16) = *v4;
    *(a2 + 32) = v54;
    v55 = *(v4 + 48);
    *(a2 + 48) = *(v4 + 32);
    *(a2 + 64) = v55;
    swift_unknownObjectWeakAssign();
    *(a2 + 192) = v61;
    *(a2 + 200) = v14;
    *(a2 + 208) = v27;
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_1000570D4(ObjectType, v50);
    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_100093560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a1[7];
  v5 = a1[17];
  v47 = a1[25];
  v6 = *(a2 + 168);
  v7 = _swiftEmptyArrayStorage;
  *&v56 = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  v66 = v6;
  if (v8)
  {
    v9 = v6 + 32;
    do
    {
      sub_10001EAFC(v9, &v63);
      v11 = v64;
      v10 = v65;
      sub_10001EAB8(&v63, v64);
      if (*(v10 + 48))(v11, v10) == v5 && (sub_10001EAFC(&v63, v59), sub_100001AB4(&qword_100174F60, &qword_100121090), type metadata accessor for ActiveInputTerminal(), (swift_dynamicCast()))
      {
        sub_10000CE78(&v63);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v56;
      }

      else
      {
        sub_10000CE78(&v63);
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_50:

    sub_10000CA2C();
    v37 = swift_allocError();
    *v39 = 50;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    result = swift_willThrow();
LABEL_55:
    *a3 = v37;
    return result;
  }

LABEL_49:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_50;
  }

LABEL_12:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v13 = *(v7 + 32);
  }

  v15 = _swiftEmptyArrayStorage;
  *&v56 = _swiftEmptyArrayStorage;
  v16 = *(v66 + 16);
  v46 = v13;
  if (v16)
  {
    v17 = v66 + 32;
    do
    {
      sub_10001EAFC(v17, &v63);
      v18 = v64;
      v19 = v65;
      sub_10001EAB8(&v63, v64);
      if (*(v19 + 48))(v18, v19) == v4 && (sub_10001EAFC(&v63, v59), sub_100001AB4(&qword_100174F60, &qword_100121090), type metadata accessor for ActiveOutputTerminal(), (swift_dynamicCast()))
      {
        sub_10000CE78(&v63);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v56;
      }

      else
      {
        result = sub_10000CE78(&v63);
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  if (!(v15 >> 62))
  {
    v4 = v47;
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = v47;
  if (!result)
  {
LABEL_53:

    sub_10000CA2C();
    v37 = swift_allocError();
    *v40 = 50;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_54:

    goto LABEL_55;
  }

LABEL_26:
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_58;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v15 + 32);

    while (1)
    {

      v22 = *(v4 + 16);
      v23 = _swiftEmptyArrayStorage;
      if (!v22)
      {
        break;
      }

      v43 = v21;
      v62 = _swiftEmptyArrayStorage;
      sub_100047370(0, v22, 0);
      v24 = 0;
      v23 = v62;
      v25 = v4 + 32;
      v44 = v66 + 32;
      v7 = *(v66 + 16);
      v41 = v4 + 32;
      v42 = v22;
      while (v24 < *(v4 + 16))
      {
        sub_10001EAFC(v25 + 40 * v24, v59);
        v26 = v60;
        v4 = v61;
        sub_10001EAB8(v59, v60);
        v27 = (*(*(v4 + 8) + 16))(v26);
        if (!v7)
        {
LABEL_45:
          v56 = 0u;
          v57 = 0u;
          v58 = 0;
LABEL_46:
          sub_10000D040(&v56, &qword_100174F70, &qword_100120FD0);
          sub_10000CA2C();
          v37 = swift_allocError();
          *v38 = 50;
          *(v38 + 8) = 0;
          *(v38 + 16) = 0xE000000000000000;
          swift_willThrow();

          sub_10000CE78(v59);
          goto LABEL_54;
        }

        v28 = v27;
        v29 = 0;
        ++v24;
        v30 = v44;
        while (1)
        {
          if (v29 >= *(v66 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          sub_10001EAFC(v30, &v52);
          v32 = v53;
          v31 = v54;
          sub_10001EAB8(&v52, v53);
          (*(v31 + 8))(v49, v32, v31);
          v33 = v50;
          v34 = v51;
          sub_10001EAB8(v49, v50);
          v4 = (*(v34 + 16))(v33, v34);
          sub_10000CE78(v49);
          if (v4 == v28)
          {
            break;
          }

          v29 = (v29 + 1);
          sub_10000CE78(&v52);
          v30 += 40;
          if (v7 == v29)
          {
            goto LABEL_45;
          }
        }

        sub_10000D0A0(&v52, v55);
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v58 = 0;
          v57 = 0u;
          v56 = 0u;
          goto LABEL_46;
        }

        if (!*(&v57 + 1))
        {
          goto LABEL_46;
        }

        sub_10000D0A0(&v56, &v63);
        sub_10000CE78(v59);
        v62 = v23;
        v36 = v23[2];
        v35 = v23[3];
        if (v36 >= v35 >> 1)
        {
          sub_100047370((v35 > 1), v36 + 1, 1);
          v23 = v62;
        }

        v23[2] = v36 + 1;
        result = sub_10000D0A0(&v63, &v23[5 * v36 + 4]);
        v25 = v41;
        v4 = v47;
        if (v24 == v42)
        {
          v21 = v43;
          goto LABEL_44;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

LABEL_44:
    *a4 = v21;
    a4[1] = v46;
    a4[2] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100093C84()
{
  v1 = *(v0 + 120);
  v27 = *(v1 + 16);
  v2 = 0;
  if (v27)
  {
    v3 = 0;
    v26 = v1 + 32;
    while (1)
    {
      v5 = (v26 + 40 * v3);
      v6 = v5[1];
      if (!v6[2])
      {
        break;
      }

      v7 = v6[11];
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v5[3];
        v10 = v5[4];
        v11 = (v7 + 32);
        v12 = v6[12];
        v28 = v6[13];

        v13 = v8 - 1;
        for (i = 32; ; i += 80)
        {
          v31[0] = *(v7 + i);
          v15 = *(v7 + i + 16);
          v16 = *(v7 + i + 32);
          v17 = *(v7 + i + 64);
          v31[3] = *(v7 + i + 48);
          v31[4] = v17;
          v31[1] = v15;
          v31[2] = v16;
          v18 = *&v31[0];
          sub_100022594(v31, v30);
          if (IOUSBGetEndpointUsageType(v18))
          {
            sub_1000225F0(v31);
          }

          else
          {
            wMaxPacketSize = v18->wMaxPacketSize;
            sub_1000225F0(v31);
            if ((wMaxPacketSize - 3) >= 6)
            {
              break;
            }
          }

          if (IOUSBGetEndpointUsageType(v18) == 2)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_3;
          }

          --v13;
        }

        if (IOUSBGetEndpointDirection(v18) != 1)
        {
LABEL_3:

          goto LABEL_4;
        }

        v20 = *(v7 + 16);
        if (v20)
        {
          v4 = 0;
          v21 = 0;
          while (v21 < *(v7 + 16))
          {
            v30[0] = *v11;
            v23 = v11[1];
            v24 = v11[2];
            v25 = v11[4];
            v30[3] = v11[3];
            v30[4] = v25;
            v30[1] = v23;
            v30[2] = v24;
            if (v4)
            {
              v4 = 1;
            }

            else
            {
              v22 = *&v30[0];
              sub_100022594(v30, v29);
              LODWORD(v22) = IOUSBGetEndpointUsageType(v22);
              sub_1000225F0(v30);
              v4 = v22 == 2;
            }

            ++v21;
            v11 += 5;
            if (v20 == v21)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          break;
        }

        v4 = 0;
LABEL_24:
      }

      else
      {
LABEL_4:
        v4 = 0;
      }

      ++v3;
      v2 |= v4;
      if (v3 == v27)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100093EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for LogID(0);
  v11 = a1;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  *&v235 = a1;
  *(&v235 + 1) = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_196;
  }

  v15 = *(a1 + 41) - 2;
  if (v15 >= 3)
  {

    sub_10000CA2C();
    swift_allocError();
    v17 = 25;
LABEL_6:
    *v16 = v17;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  v186 = v13;
  v187 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = a3;
  LOBYTE(v236) = 0x302000u >> (8 * (v15 & 0x1F));

  sub_1000740B8(v11, v238);
  if (v5)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v184 = v11;
  LODWORD(v195) = *(*&v238[0] + 7);
  v19 = v189 + 27;
  v20 = *(v189 + 16) + 1;
  v197 = a2;
  do
  {
    if (!--v20)
    {
      LODWORD(v183) = 1u >> (v15 & 7);
      v185 = *&v238[0];
      v182 = a4;
      v264 = 0;
      *&v196 = *(a2 + 16);
      goto LABEL_23;
    }

    v21 = (v19 + 8);
    v22 = *(v19 + 7);
    v19 += 8;
  }

  while (v22 != *(*&v238[0] + 2));
  v23 = v22 + *v21;
  if (((v22 + *v21) & 0x100) != 0)
  {
    goto LABEL_202;
  }

  *&v196 = *(a2 + 16);
  if (!v196)
  {
    LODWORD(v183) = 1u >> (v15 & 7);
    v185 = *&v238[0];
    v182 = a4;
    v264 = 0;
    *&v196 = 0;
    goto LABEL_23;
  }

  v24 = v22 + 1;
  if (((v22 + 1) & 0x100) != 0)
  {
    goto LABEL_203;
  }

  v25 = (a2 + 41);
  v26 = v196;
  v27 = (a2 + 41);
  do
  {
    v28 = *v27;
    v27 += 24;
    LOBYTE(v29) = v24;
    if ((v28 - 6) <= 3 && (v29 = *(*(v25 - 9) + 2), v29 < v24) || v23 < v29)
    {

      sub_1000572F0(v238);

      sub_10000CA2C();
      swift_allocError();
      v17 = 84;
      goto LABEL_6;
    }

    v25 = v27;
    --v26;
  }

  while (v26);
  LODWORD(v183) = 1u >> (v15 & 7);
  v185 = *&v238[0];
  v182 = a4;
  v264 = 0;
LABEL_23:
  v30 = 0;
  v194 = _swiftEmptyArrayStorage;
LABEL_24:
  v31 = 3 * v30;
  while (v196 != v30)
  {
    v32 = v264;
    if (v30 >= v197[2])
    {
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v33 = v197[v31 + 6];
    v34 = v197[v31 + 4];
    v35 = v197[v31 + 5];

    sub_100087A04(v34, v35, v33, v195, v240);
    if (v32)
    {

      sub_1000572F0(v238);
    }

    v264 = 0;
    ++v30;
    v31 += 3;
    v36 = v240[0];
    v5 = v240[1];
    v37 = v241;
    v38 = v242;
    v39 = v243;

    if (v5)
    {
      v40 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100025120(0, *(v40 + 2) + 1, 1, v40);
      }

      v41 = v40;
      v42 = *(v40 + 2);
      v194 = v41;
      v43 = *(v41 + 3);
      if (v42 >= v43 >> 1)
      {
        v194 = sub_100025120((v43 > 1), v42 + 1, 1, v194);
      }

      v44 = v194;
      *(v194 + 2) = v42 + 1;
      v45 = &v44[40 * v42];
      *(v45 + 4) = v36;
      *(v45 + 5) = v5;
      v45[48] = v37 & 1;
      *(v45 + 7) = v38;
      *(v45 + 8) = v39;
      goto LABEL_24;
    }
  }

  v46 = v194;
  v47 = *(v194 + 2);

  v188 = v47;
  if (!v47)
  {
    goto LABEL_66;
  }

  if (!*(v46 + 2))
  {
    goto LABEL_193;
  }

  v48 = 0;
  v5 = 0;
  v190 = v46 + 32;
LABEL_40:
  v49 = &v190[40 * v48];
  v50 = *(v49 + 1);
  if (!*(v50 + 16))
  {
    goto LABEL_195;
  }

  v52 = *(v49 + 3);
  v51 = *(v49 + 4);
  v53 = *(v50 + 48);
  v54 = *(v50 + 64);
  v55 = *(v50 + 96);
  v217 = *(v50 + 80);
  v218 = v55;
  ++v48;
  v215 = v53;
  v216 = v54;
  v214 = *(v50 + 32);
  v56 = *(&v217 + 1);
  v57 = *(*(&v217 + 1) + 16);
  if (!v57)
  {
    goto LABEL_59;
  }

  LODWORD(v196) = v5;
  v195 = v48;
  v191 = v51;

  v193 = v50;

  v192 = v52;

  sub_10001EBF0(&v214, &v203);
  if (!*(v56 + 16))
  {
LABEL_182:
    __break(1u);
LABEL_183:

    sub_1000572F0(v238);

    sub_10000D040(&v257, &qword_1001771D0, &unk_100123900);

    sub_10000CA2C();
    swift_allocError();
    *v175 = 102;
    *(v175 + 8) = 0;
    *(v175 + 16) = 0xE000000000000000;
    swift_willThrow();

    v218 = v231;
    v219 = v232;
    v220 = v233;
    *&v221 = v234;
    v214 = v227;
    v215 = v228;
    v216 = v229;
    v217 = v230;
    sub_1000572F0(&v214);
  }

  v58 = 0;
  v59 = (v56 + 32);
  v60 = (v56 + 32);
  while (1)
  {
    v203 = *v60;
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[4];
    v206 = v60[3];
    v207 = v63;
    v204 = v61;
    v205 = v62;
    v64 = v203;
    sub_100022594(&v203, &v198);
    if (IOUSBGetEndpointUsageType(v64))
    {
      sub_1000225F0(&v203);
    }

    else
    {
      wMaxPacketSize = v64->wMaxPacketSize;
      sub_1000225F0(&v203);
      if ((wMaxPacketSize - 3) >= 6)
      {
        goto LABEL_51;
      }
    }

    if (IOUSBGetEndpointUsageType(v64) == 2)
    {
LABEL_51:
      v66 = IOUSBGetEndpointDirection(v64);
      v5 = v196;
      if (v66 != 1)
      {
        sub_10001EC4C(&v214);

        v46 = v194;
        v48 = v195;
        if ((v5 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_37:
        v5 = 1;
        goto LABEL_38;
      }

      LOBYTE(v67) = 0;
      for (i = 0; i != v57; ++i)
      {
        if (i >= *(v56 + 16))
        {
          __break(1u);
LABEL_190:

          *&v229 = _swiftEmptyArrayStorage;
LABEL_181:
          v211 = v235;
          v212 = v236;
          v207 = v231;
          v208 = v232;
          v209 = v233;
          v210 = v234;
          v203 = v227;
          v204 = v228;
          v205 = v229;
          v206 = v230;
          v222 = v235;
          v223 = v236;
          v218 = v231;
          v219 = v232;
          v220 = v233;
          v221 = v234;
          v214 = v227;
          v215 = v228;
          v213 = v237;
          v224 = v237;
          v216 = v229;
          v217 = v230;
          sub_100021248(&v203, &v198);
          result = sub_1000212F0(&v214);
          v169 = v212;
          v170 = v182;
          *(v182 + 128) = v211;
          *(v170 + 144) = v169;
          *(v170 + 160) = v213;
          v171 = v208;
          *(v170 + 64) = v207;
          *(v170 + 80) = v171;
          v172 = v210;
          *(v170 + 96) = v209;
          *(v170 + 112) = v172;
          v173 = v204;
          *v170 = v203;
          *(v170 + 16) = v173;
          v174 = v206;
          *(v170 + 32) = v205;
          *(v170 + 48) = v174;
          return result;
        }

        v198 = *v59;
        v70 = v59[1];
        v71 = v59[2];
        v72 = v59[4];
        v201 = v59[3];
        v202 = v72;
        v199 = v70;
        v200 = v71;
        if (v67)
        {
          v67 = 1;
        }

        else
        {
          v69 = v198;
          sub_100022594(&v198, v226);
          LODWORD(v69) = IOUSBGetEndpointUsageType(v69);
          sub_1000225F0(&v198);
          v67 = v69 == 2;
        }

        v59 += 5;
      }

      sub_10001EC4C(&v214);

      v5 = v5 | v67;
      v46 = v194;
      v48 = v195;
LABEL_38:
      if (v48 == v188)
      {

        if ((v5 & 1) == 0)
        {
          goto LABEL_67;
        }

        v129 = *(v46 + 2);

        v193 = v129;
        if (!v129)
        {
          v191 = v46;
LABEL_188:

          v46 = v191;
          goto LABEL_67;
        }

        v130 = 0;
        v191 = v46;
        while (2)
        {
          if (v130 >= *(v46 + 2))
          {
            goto LABEL_200;
          }

          v131 = v130;
          v132 = &v190[40 * v130];
          v133 = *(v132 + 1);
          if (!*(v133 + 16))
          {
            goto LABEL_201;
          }

          v135 = *(v132 + 3);
          v134 = *(v132 + 4);
          v136 = *(v133 + 48);
          v137 = *(v133 + 64);
          v138 = *(v133 + 96);
          v217 = *(v133 + 80);
          v218 = v138;
          v215 = v136;
          v216 = v137;
          v214 = *(v133 + 32);
          v139 = *(&v217 + 1);
          v5 = *(*(&v217 + 1) + 16);
          v195 = v135;
          *&v196 = v134;
          if (v5)
          {

            sub_10001EBF0(&v214, &v203);
            if (!*(v139 + 16))
            {
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v140 = 0;
            v141 = (v139 + 32);
            v142 = (v5 - 1);
            while (1)
            {
              v203 = *v141;
              v143 = v141[1];
              v144 = v141[2];
              v145 = v141[4];
              v206 = v141[3];
              v207 = v145;
              v204 = v143;
              v205 = v144;
              v146 = v203;
              sub_100022594(&v203, &v198);
              if (IOUSBGetEndpointUsageType(v146))
              {
                sub_1000225F0(&v203);
              }

              else
              {
                v5 = v146->wMaxPacketSize;
                sub_1000225F0(&v203);
                if ((v5 - 3) >= 6)
                {
                  goto LABEL_131;
                }
              }

              if (IOUSBGetEndpointUsageType(v146) == 2)
              {
LABEL_131:
                v148 = IOUSBGetEndpointDirection(v146);
                sub_10001EC4C(&v214);
                v147 = v148 == 0;
                goto LABEL_133;
              }

              if (v142 == v140)
              {
                break;
              }

              ++v140;
              v141 += 5;
              if (v140 >= *(v139 + 16))
              {
                goto LABEL_191;
              }
            }

            sub_10001EC4C(&v214);
            v147 = 1;
          }

          else
          {

            v147 = 1;
          }

LABEL_133:
          v130 = v131 + 1;
          v46 = v194;
          if (!*(v133 + 16))
          {
            goto LABEL_116;
          }

          v149 = *(v133 + 48);
          v150 = *(v133 + 64);
          v151 = *(v133 + 96);
          v206 = *(v133 + 80);
          v207 = v151;
          v204 = v149;
          v205 = v150;
          v203 = *(v133 + 32);
          v152 = *(&v206 + 1);
          v5 = *(*(&v206 + 1) + 16);
          if (!v5)
          {
LABEL_116:

            goto LABEL_117;
          }

          LODWORD(v192) = v147;
          sub_10001EBF0(&v203, &v198);
          if (!*(v152 + 16))
          {
            goto LABEL_194;
          }

          v153 = 0;
          v154 = (v152 + 32);
          --v5;
          while (1)
          {
            v198 = *v154;
            v155 = v154[1];
            v156 = v154[2];
            v157 = v154[4];
            v201 = v154[3];
            v202 = v157;
            v199 = v155;
            v200 = v156;
            v158 = v198;
            sub_100022594(&v198, v226);
            if (!IOUSBGetEndpointUsageType(v158) && v158->wMaxPacketSize - 3 > 5)
            {
              break;
            }

            if (IOUSBGetEndpointUsageType(v158) == 2)
            {
              break;
            }

            sub_1000225F0(&v198);
            if (v5 == v153)
            {
              sub_10001EC4C(&v203);

              v46 = v194;
              goto LABEL_117;
            }

            ++v153;
            v154 += 5;
            if (v153 >= *(v152 + 16))
            {
              goto LABEL_194;
            }
          }

          v5 = IOUSBGetEndpointSynchronizationType(v158);
          if (IOUSBGetEndpointDirection(v158) == 1)
          {
            v46 = v194;
            if (v5)
            {
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
              if ((v192 & 1) == 0)
              {
                goto LABEL_117;
              }

LABEL_149:
              if (v5 == 1)
              {
LABEL_150:
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_1000CCF08(v191);
                  v191 = result;
                }

                if (v131 >= *(v191 + 16))
                {
                  goto LABEL_208;
                }

                *(v191 + 40 * v131 + 48) = 1;
              }
            }

            else if (IOUSBGetEndpointUsageType(v158))
            {
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
            }

            else
            {
              v5 = v158->wMaxPacketSize;
              sub_10001EC4C(&v203);

              sub_1000225F0(&v198);
              if (v5 > 8)
              {
                if (v192)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                v5 = v5 < 3;
                if (v192)
                {
                  goto LABEL_149;
                }
              }
            }
          }

          else
          {
            sub_10001EC4C(&v203);

            sub_1000225F0(&v198);
            v46 = v194;
            if (v192)
            {
              goto LABEL_149;
            }
          }

LABEL_117:
          if (v130 == v193)
          {
            goto LABEL_188;
          }

          continue;
        }
      }

LABEL_39:
      if (v48 >= *(v46 + 2))
      {
        goto LABEL_193;
      }

      goto LABEL_40;
    }

    if (v57 - 1 == v58)
    {
      break;
    }

    ++v58;
    v60 += 5;
    if (v58 >= *(v56 + 16))
    {
      goto LABEL_182;
    }
  }

  sub_10001EC4C(&v214);

  v46 = v194;
  v48 = v195;
  v5 = v196;
LABEL_59:
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_60:
  if (v48 != v188)
  {
    v5 = 0;
    goto LABEL_39;
  }

LABEL_66:

LABEL_67:
  if (!v183)
  {
    v116 = v46;
    v117 = v189;
    v118 = *(v189 + 16);
    sub_100057294(v238, &v214);
    if (v118)
    {
      v119 = 0;
      v120 = v117 + 36;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v121 = (v120 + 8 * v119);
        v122 = v119;
        while (1)
        {
          if (v122 >= v118)
          {
            goto LABEL_197;
          }

          v119 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_198;
          }

          v123 = *(v121 - 2);
          if (v123 == *(v185 + 2))
          {
            v124 = *(v121 - 1);
            if (*(v116 + 2) < v124)
            {
              break;
            }
          }

          ++v122;
          v121 += 2;
          if (v119 == v118)
          {
            goto LABEL_168;
          }
        }

        LODWORD(v194) = *(v121 - 2);
        LODWORD(v195) = *v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v196 = v120;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_10002501C(0, *(v5 + 16) + 1, 1, v5);
        }

        v127 = *(v5 + 16);
        v126 = *(v5 + 24);
        if (v127 >= v126 >> 1)
        {
          v5 = sub_10002501C((v126 > 1), v127 + 1, 1, v5);
        }

        *(v5 + 16) = v127 + 1;
        v128 = (v5 + 8 * v127);
        *(v128 + 16) = v194;
        v128[34] = v123;
        v128[35] = v124;
        *(v128 + 9) = v195;
        v120 = v196;
      }

      while (v119 != v118);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_168:
    sub_1000572F0(v238);
    if (*(v5 + 16) != 1)
    {

      sub_1000572F0(v238);

      sub_10000CA2C();
      swift_allocError();
      *v168 = 38;
      *(v168 + 8) = 0;
      *(v168 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_178;
    }

    *&v162 = *(v5 + 32);
    v196 = v162;

    v74 = v196;
    v163 = BYTE6(v196) != 48 || BYTE5(v196) == 1;
    v46 = v116;
    if (!v163)
    {

      sub_1000572F0(v238);

      v5 = "ADC3 BADD shortcut not supported";
      if (qword_100173CB8 != -1)
      {
        goto LABEL_206;
      }

      goto LABEL_174;
    }

LABEL_70:
    v231 = v238[4];
    v232 = v238[5];
    v233 = v238[6];
    v227 = v238[0];
    v228 = v238[1];
    v229 = v238[2];
    v230 = v238[3];
    v75 = *(&v238[0] + 1);
    *&v234 = v239;
    *(&v234 + 1) = v46;
    *(&v236 + 1) = v74;
    v226[0] = _swiftEmptyArrayStorage;
    v225 = &_swiftEmptySetSingleton;
    v257 = *(&v238[0] + 1);
    v5 = *(*(&v238[0] + 1) + 16);
    if (!v5)
    {
      sub_100057294(v238, &v214);

      v5 = _swiftEmptyArrayStorage;
      v159 = &_swiftEmptySetSingleton;
LABEL_163:
      v237 = v5;
      v160 = v159[2];
      if (v160)
      {
        if (!v229)
        {

          sub_1000572F0(v238);

          v176 = v159[2];
          if (!v176)
          {
            goto LABEL_190;
          }

          v177 = sub_1001193F0(v159[2], 0);
          v178 = sub_10011B610(&v214, v177 + 32, v176, v159);
          result = sub_100022644();
          if (v178 != v176)
          {
            __break(1u);
LABEL_208:
            __break(1u);
            return result;
          }

          *&v229 = v177;
          goto LABEL_181;
        }

        v161 = sub_1001193F0(v159[2], 0);
        v197 = sub_10011B610(&v214, v161 + 32, v160, v159);
        v195 = v216;
        *&v196 = *(&v215 + 1);

        sub_100022644();
        if (v197 != v160)
        {
          goto LABEL_205;
        }

        sub_1000572F0(v238);

        sub_10007E564(v161);
      }

      else
      {

        sub_1000572F0(v238);
      }

      goto LABEL_181;
    }

    v76 = *(&v238[0] + 1) + 32;
    sub_100057294(v238, &v214);
    v194 = v46;

    sub_100095C3C(&v257, &v214);
    v77 = 0;
    v195 = 0x800000010012E680;
    v188 = "with no sourceID";
    v185 = "or output terminal ";
    v180 = "to connect it to";
    v183 = " path from Output Terminal ";
    v181 = xmmword_10011DE90;
    v190 = v75;
    *&v196 = v5;
    while (1)
    {
      if (v77 >= *(v75 + 2))
      {
        goto LABEL_199;
      }

      sub_10001EAFC(v76, &v203);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_76:
      ++v77;
      v76 += 40;
      if (v5 == v77)
      {
        sub_10000D040(&v257, &qword_1001771D0, &unk_100123900);
        v5 = v226[0];
        v159 = v225;
        goto LABEL_163;
      }
    }

    v260 = v216;
    v261 = v217;
    v262 = v218;
    v263 = v219;
    v258 = v214;
    v259 = v215;
    *(&v204 + 1) = &type metadata for OutputTerminal;
    *&v205 = sub_100095CAC();
    v92 = swift_allocObject();
    *&v203 = v92;
    v93 = v261;
    v92[3] = v260;
    v92[4] = v93;
    v94 = v263;
    v92[5] = v262;
    v92[6] = v94;
    v95 = v259;
    v92[1] = v258;
    v92[2] = v95;
    sub_1000766B0(&v258, &v214);
    v96 = v264;
    v97 = sub_10007135C(&v203, _swiftEmptyArrayStorage, &v258);
    v264 = v96;
    if (v96)
    {
      sub_10000CE78(&v203);
      *&v214 = 0;
      *(&v214 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v214 = 0xD00000000000002BLL;
      *(&v214 + 1) = v195;
      *&v203 = *(&v261 + 1);
      v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v98);

      v99 = v214;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v100 = sub_10000A1BC(v186, qword_1001794F0);
      v101 = v187;
      sub_10000A2A4(v100, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v102, qword_100179508);
      sub_100039F58(1, v101, v99, *(&v99 + 1));

      sub_10000C9D0(v101);

      v264 = 0;
      *&v198 = _swiftEmptyArrayStorage;
    }

    else
    {
      v115 = v97;
      sub_10000CE78(&v203);
      *&v198 = v115;
      if (*(v115 + 16))
      {
        sub_100076AD0(&v258);
LABEL_74:
        if (!*(v198 + 16))
        {
          goto LABEL_183;
        }

        sub_10007E37C(v198);
        v5 = v196;
        goto LABEL_76;
      }
    }

    sub_10009B498(&v214, 102);
    if (v261)
    {
      sub_100076AD0(&v258);
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v103 = sub_10000A1BC(v186, qword_1001794F0);
      v104 = v187;
      sub_10000A2A4(v103, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v105, qword_100179508);
      sub_100039F58(1, v104, 0xD000000000000020, (v183 | 0x8000000000000000));
      sub_10000C9D0(v104);
    }

    else
    {
      *&v214 = 0;
      *(&v214 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(101);
      v106._countAndFlagsBits = 0xD000000000000033;
      v106._object = (v188 | 0x8000000000000000);
      String.append(_:)(v106);
      v107 = *(&v261 + 1);
      *&v203 = *(&v261 + 1);
      v108._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v108);

      v109._countAndFlagsBits = 0xD000000000000030;
      v109._object = (v185 | 0x8000000000000000);
      String.append(_:)(v109);
      v110 = v214;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v111 = sub_10000A1BC(v186, qword_1001794F0);
      v112 = v187;
      sub_10000A2A4(v111, v187);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for AUALog(0);
      v114 = sub_10000A1BC(v113, qword_100179508);
      sub_100039F58(1, v112, v110, *(&v110 + 1));

      sub_10000C9D0(v112);
      sub_100073638(v258 != 257, v244);
      if (v248)
      {
        v192 = v111;
        v193 = v248;
        v254 = v244[0];
        v255 = v244[1];
        v78 = v246;
        v256 = v245;
        v253 = v247;
        v251 = v249;
        v252 = v250;
        *&v214 = 0;
        *(&v214 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        strcpy(&v214, "Connecting OT ");
        HIBYTE(v214) = -18;
        *&v203 = v107;
        v191 = v114;
        v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v79);

        v80._countAndFlagsBits = 0x205449206F7420;
        v80._object = 0xE700000000000000;
        String.append(_:)(v80);
        *&v203 = v78;
        v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v81);

        v82 = v214;
        sub_10000A2A4(v192, v112);
        sub_100039F58(1, v112, v82, *(&v82 + 1));

        sub_10000C9D0(v112);
        sub_100001AB4(&qword_1001754C8, &unk_100123910);
        v83 = swift_allocObject();
        v205 = v260;
        v206 = v261;
        v207 = v262;
        v208 = v263;
        v203 = v258;
        v204 = v259;
        v209 = v254;
        v210 = v255;
        *&v211 = v256;
        v216 = v260;
        v217 = v261;
        v214 = v258;
        v215 = v259;
        v84 = v256;
        *&v222 = v256;
        v220 = v254;
        v221 = v255;
        v218 = v262;
        v219 = v263;
        v85 = v254;
        v86 = v255;
        v87 = v262;
        *(v83 + 112) = v263;
        *(v83 + 128) = v85;
        *(v83 + 144) = v86;
        v88 = v216;
        v89 = v217;
        v90 = v214;
        *(v83 + 48) = v215;
        *(v83 + 64) = v88;
        *(v83 + 80) = v89;
        *(v83 + 96) = v87;
        *(v83 + 16) = v181;
        *(v83 + 32) = v90;
        *(v83 + 160) = v84;
        *(v83 + 168) = v78;
        *(v83 + 176) = v253;
        *(v83 + 192) = v193;
        v91 = v252;
        *(v83 + 200) = v251;
        *(v83 + 216) = v91;
        *(v83 + 232) = _swiftEmptyArrayStorage;
        sub_10007E37C(v83);
      }

      else
      {
        sub_100076AD0(&v258);
        sub_10000A2A4(v111, v112);
        sub_100039F58(1, v112, 0xD00000000000002ELL, (v180 | 0x8000000000000000));
        sub_10000C9D0(v112);
      }

      v75 = v190;
    }

    goto LABEL_74;
  }

  v73 = *(v46 + 2);
  if (v73 <= 0xFE)
  {
    LOWORD(v74) = 2824;
    BYTE2(v74) = *(v185 + 2);
    BYTE3(v74) = v73 + 1;
    HIDWORD(v74) = 1;
    goto LABEL_70;
  }

LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  swift_once();
LABEL_174:
  v164 = sub_10000A1BC(v186, qword_1001794F0);
  v165 = v187;
  sub_10000A2A4(v164, v187);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v166 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v166, qword_100179508);
  sub_100039F58(1, v165, 0xD000000000000020, ((v5 - 32) | 0x8000000000000000));
  sub_10000C9D0(v165);
  sub_10000CA2C();
  swift_allocError();
  *v167 = 60;
  *(v167 + 8) = 0;
  *(v167 + 16) = 0xE000000000000000;
  swift_willThrow();

LABEL_178:
}

__n128 sub_10009598C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1000959C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100095A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095A88(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100095AA4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100095ACC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_100095B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 208) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_1001771D0, &unk_100123900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100095CAC()
{
  result = qword_1001771D8;
  if (!qword_1001771D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771D8);
  }

  return result;
}

uint64_t sub_100095D00()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100095D40()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = [objc_allocWithZone(AUAPluginTrampoline) init];
  v8[4] = sub_10009C9F8;
  v8[5] = v0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009601C;
  v8[3] = &unk_100163BA0;
  v2 = _Block_copy(v8);

  [v1 setFnHALInitializeWithPluginHost:v2];
  _Block_release(v2);
  v3 = objc_allocWithZone(type metadata accessor for DriverPlugin());
  v4 = v1;
  v5 = sub_100096F10();

  swift_beginAccess();
  v6 = *(v0 + 16);
  *(v0 + 16) = v5;
  v7 = v5;

  qword_1001771E0 = v7;
}

void sub_100095EA0()
{
  v0 = [objc_allocWithZone(AUAPluginTrampoline) init];
  v5[4] = AUAError.init(_:message:);
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009601C;
  v5[3] = &unk_1001638F8;
  v1 = _Block_copy(v5);
  [v0 setFnHALInitializeWithPluginHost:v1];
  _Block_release(v1);
  v2 = objc_allocWithZone(type metadata accessor for DriverPlugin());
  v3 = v0;
  v4 = sub_100096F10();

  qword_1001771E8 = v4;
}

void sub_100095FA4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = v7;
    sub_1000979B4(a1, a2);
  }
}

uint64_t sub_10009601C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v5(a2, sub_10009C718, v7);
}

void sub_1000960C0(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_1001772D8, &qword_100123978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = sub_10009C954;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100163B50;
  v9 = _Block_copy(aBlock);

  AudioServerPlugInRegisterRemote();
  _Block_release(v9);
}

void sub_100096268()
{
  v0 = type metadata accessor for LogID(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v5 = sub_10000A1BC(v2, qword_1001794F0);
  sub_10000A2A4(v5, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039AA0(0, v4, 0xD000000000000023, 0x800000010012EDE0);
  sub_10000C9D0(v4);
  exit(0);
}

uint64_t sub_1000963B0()
{
  v1 = [*(v0 + 16) driverRef];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_1000965C0;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000964BC()
{
  v1 = [*(v0 + 16) driverRef];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_1000965C0;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000965C0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000966D8, 0, 0);
}

uint64_t sub_1000966D8()
{
  if (machServiceExists("com.apple.audio.driver-registrar"))
  {

    return _swift_task_switch(sub_1000964BC, 0, 0);
  }

  else
  {
    v1 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_1000967B8;

    return static Task<>.sleep(nanoseconds:)(100000000);
  }
}

uint64_t sub_1000967B8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10009CAC8, 0, 0);
  }
}

uint64_t sub_1000968E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10009C848(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D040(v11, &qword_1001771F0, &qword_100123930);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000D040(a3, &qword_1001771F0, &qword_100123930);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D040(a3, &qword_1001771F0, &qword_100123930);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t static DriverPlugin.registerActiveDriverInLoop()()
{
  v1 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  if (qword_100173CC8 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1001771E0 + OBJC_IVAR___AUAPlugin_plugin);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v5;
  v8 = v5;
  sub_1000968E8(0, 0, v4, &unk_100123940, v7);
}

uint64_t sub_100096CCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100096D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100096DCC;

  return sub_100096390(a1, v4, v5, v7, v6);
}

uint64_t sub_100096DCC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000976E4(unint64_t a1)
{
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = "Handling SIGTERM";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = sub_10000A1BC(v4, qword_1001794F0);
    sub_10000A2A4(v8, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v9, qword_100179508);
    sub_100039AA0(1, v6, 0xD000000000000010, ((v7 - 32) | 0x8000000000000000));
    sub_10000C9D0(v6);
    v7 = OBJC_IVAR___AUAPlugin_usbDeviceList;
    swift_beginAccess();
    a1 = *&v7[a1];
    if (a1 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {
LABEL_7:

      exit(0);
    }

    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * v10 + 32);
      }

      v7 = v4;
      v11 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      USBDevice.handleSigTerm()();

      ++v10;
      if (v11 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v12 = v4;
    swift_once();
    v4 = v12;
  }
}

uint64_t sub_1000978DC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000979B4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  a2(a1);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10009C56C;
  *(v9 + 24) = v8;
  v10 = *&v3[OBJC_IVAR___AUAPlugin_notificationQueue];
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = sub_10009CAD0;
  v11[4] = v9;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10009C5B4;
  v13[3] = v11;
  v13[4] = v10;
  v13[5] = sub_10009C60C;
  v13[6] = v12;
  v14 = v3;

  swift_retain_n();

  sub_10009B838(v10, sub_10009CACC, v13);
  v16 = v15;
  v18 = v17;

  v19 = &v14[OBJC_IVAR___AUAPlugin_cancel];
  v20 = *&v14[OBJC_IVAR___AUAPlugin_cancel + 8];
  *v19 = v16;
  *(v19 + 1) = v18;
}

uint64_t sub_100097D78(void *a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&a2[OBJC_IVAR___AUAPlugin_notificationQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_10009C6B0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_1001638D0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v19);
}

uint64_t (*static AUAPluginUtils.usbHostInterestHandler(terminationHandler:)(uint64_t a1, uint64_t a2))(uint64_t a1, int a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_10009AD6C;
}

char *sub_1000980AC(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 conformsToIOClassName:v13];

  if (!v14)
  {
LABEL_9:
    sub_10000CA2C();
    swift_allocError();
    *v26 = 6;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    goto LABEL_10;
  }

  aBlock[0] = 0;
  v15 = [a1 parentEntryInServicePlaneWithError:aBlock];
  v16 = aBlock[0];
  if (v15)
  {
    v17 = v15;
    v42 = a2;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v41 = v17;
      if (a3[OBJC_IVAR___AUAPlugin_kextActive])
      {
        v20 = v16;
        v21 = [v19 object];
        v22 = objc_allocWithZone(IOUSBHostDevice);
        aBlock[0] = 0;
        v23 = [v22 initWithIOService:v21 options:0 queue:v42 error:aBlock interestHandler:0];
        v24 = aBlock[0];
        if (v23)
        {
          a3 = v23;
LABEL_42:
          v39 = v24;
          return a3;
        }

LABEL_43:
        a3 = v24;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return a3;
      }

      v28 = v16;
      sub_100022654(aBlock, a1, 3);
      if (v46)
      {
        if (swift_dynamicCast() && (v44 & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(aBlock, v19, 3);
      if (v46)
      {
        if (swift_dynamicCast() & 1) != 0 && (v44)
        {
LABEL_20:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          a3 = " skipping enumeration";
          v29 = sub_10000A1BC(v9, qword_1001794F0);
          sub_10000A2A4(v29, v12);
          v30 = v41;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v31, qword_100179508);
          sub_100039AA0(1, v12, 0xD000000000000035, 0x800000010012EB60);
          sub_10000C9D0(v12);
          sub_10000CA2C();
          swift_allocError();
          v33 = 8;
LABEL_39:
          *v32 = v33;
          *(v32 + 8) = 0;
          *(v32 + 16) = 0xE000000000000000;
          swift_willThrow();

          return a3;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(aBlock, a1, 4);
      if (v46)
      {
        if (swift_dynamicCast() && (v44 & 1) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      sub_100022654(aBlock, v19, 4);
      if (v46)
      {
        if (swift_dynamicCast() & 1) != 0 && (v44)
        {
LABEL_34:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          a3 = "tObject8I16^v20";
          v34 = sub_10000A1BC(v9, qword_1001794F0);
          sub_10000A2A4(v34, v12);
          v30 = v41;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v35, qword_100179508);
          sub_100039AA0(1, v12, 0xD000000000000035, 0x800000010012EB20);
          sub_10000C9D0(v12);
          sub_10000CA2C();
          swift_allocError();
          v33 = 9;
          goto LABEL_39;
        }
      }

      else
      {
        sub_10000D040(aBlock, &unk_100174A20, &unk_100120170);
      }

      v36 = [a1 object];
      v37 = objc_allocWithZone(IOUSBHostInterface);
      v47 = a4;
      v48 = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000FCE8C;
      v46 = &unk_100163880;
      v38 = _Block_copy(aBlock);

      aBlock[0] = 0;
      a3 = [v37 initWithIOService:v36 options:0 queue:v42 error:aBlock interestHandler:v38];
      _Block_release(v38);
      v24 = aBlock[0];
      if (a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v25 = v16;

    goto LABEL_9;
  }

  a3 = aBlock[0];
  _convertNSErrorToError(_:)();

LABEL_10:
  swift_willThrow();
  return a3;
}

void sub_100098748(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100098884(a1, a2);
  }
}

uint64_t static AUAPluginUtils.discoverAudioControlInterfaces(queue:options:interestHandler:usbObjectFactory:deviceHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a1;
  v13[5] = a7;
  v13[6] = a8;

  v14 = a1;

  sub_10009B838(v14, sub_10009B494, v13);
  v16 = v15;

  return v16;
}

void sub_100098884(void *a1, void *a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a2 propertyForKey:v9];

  v126 = v2;
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  aBlock = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v11 = v134;
      v130 = [v134 unsignedIntegerValue];

      LODWORD(v133) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v130 = 0;
  LODWORD(v133) = 1;
LABEL_9:
  v12 = String._bridgeToObjectiveC()();
  v13 = [a2 propertyForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  aBlock = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v14 = v134;
      v124 = [v134 unsignedIntegerValue];

      LODWORD(v132) = 0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v124 = 0;
  LODWORD(v132) = 1;
LABEL_17:
  v15 = String._bridgeToObjectiveC()();
  v16 = [a2 propertyForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  aBlock = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v17 = v134;
      v123 = [v134 unsignedIntegerValue];

      LODWORD(v131) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v123 = 0;
  LODWORD(v131) = 1;
LABEL_25:
  v18 = String._bridgeToObjectiveC()();
  v19 = [a2 propertyForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  aBlock = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v20 = swift_dynamicCast();
    v21 = v134;
    if (!v20)
    {
      v21 = 0;
    }

    v117 = v21;
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
    v117 = 0;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = [a2 propertyForKey:v22];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  aBlock = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v24 = v134;
    }

    else
    {
      v24 = 0;
    }

    [v24 unsignedIntValue];
  }

  else
  {
    sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
  }

  v25 = sub_1000FD338(a2);
  v27 = v26;
  v28 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(a1, "ioService")}];
  v29 = [v28 entryID];

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x800000010012E8D0;
  String.append(_:)(v30);
  *&v139 = v29;
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000018;
  v32._object = 0x800000010012E900;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v25;
  v125 = v27;
  v33._object = v27;
  String.append(_:)(v33);
  v34 = aBlock;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v128 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v128, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for AUALog(0);
  v127 = sub_10000A1BC(v35, qword_100179508);
  sub_100039AA0(1, v8, v34, *(&v34 + 1));

  sub_10000C9D0(v8);
  v36 = String._bridgeToObjectiveC()();
  v37 = swift_allocObject();
  v38 = v125;
  *(v37 + 16) = v25;
  *(v37 + 24) = v38;
  v137 = sub_10009BF08;
  v138 = v37;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v136 = sub_1000F81CC;
  *(&v136 + 1) = &unk_1001636F0;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);

  v40 = v126;
  v41 = *(v126 + OBJC_IVAR___AUAPlugin_kextActive);
  v42 = sub_1000FDDDC(a1, v41 ^ 1u, *(v126 + OBJC_IVAR___AUAPlugin_kextActive), a2, *(v126 + OBJC_IVAR___AUAPlugin_plugin));
  v129 = v8;
  if (!v42)
  {
    goto LABEL_51;
  }

  if (((v133 | v132 | v131) & 1) == 0)
  {
    v43 = v42;
    v44 = String._bridgeToObjectiveC()();
    v45 = swift_allocObject();
    v46 = v117;
    v47 = v130;
    v45[2] = v117;
    v45[3] = v47;
    v48 = v123;
    v45[4] = v124;
    v45[5] = v48;
    v137 = sub_10009C4E4;
    v138 = v45;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v136 = sub_1000F81CC;
    *(&v136 + 1) = &unk_100163790;
    v49 = _Block_copy(&aBlock);
    v50 = v46;

    AnalyticsSendEventLazy();
    _Block_release(v49);

    v42 = v43;
  }

  if (v41)
  {

LABEL_51:

    goto LABEL_126;
  }

  v51 = v42;
  v52 = OBJC_IVAR___AUAPlugin_usbDeviceList;
  swift_beginAccess();
  v53 = *(v40 + v52);
  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v51;
    if (v54)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v74 = _CocoaArrayWrapper.endIndex.getter();
  v55 = v51;
  if (!v74)
  {
LABEL_54:
    v56 = os_transaction_create();
    v57 = *(v40 + OBJC_IVAR___AUAPlugin_pressuredExitHold);
    *(v40 + OBJC_IVAR___AUAPlugin_pressuredExitHold) = v56;
    swift_unknownObjectRelease();
    v55 = v51;
  }

LABEL_55:
  v114 = v55;
  v58 = [v114 audioDevices];
  if (!v58)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v59 = v58;
  v122 = sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_58;
    }

LABEL_73:

    v63 = _swiftEmptyArrayStorage;
    goto LABEL_74;
  }

  v61 = _CocoaArrayWrapper.endIndex.getter();
  if (!v61)
  {
    goto LABEL_73;
  }

LABEL_58:
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000473B0(0, v61 & ~(v61 >> 63), 0);
  if (v61 < 0)
  {
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v62 = 0;
  v63 = aBlock;
  do
  {
    if ((v60 & 0xC000000000000001) != 0)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v64 = *(v60 + 8 * v62 + 32);
    }

    v65 = v64;
    v66 = [v64 deviceUID];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;
    }

    else
    {

      v68 = 0;
      v70 = 0;
    }

    *&aBlock = v63;
    v72 = v63[2];
    v71 = v63[3];
    if (v72 >= v71 >> 1)
    {
      sub_1000473B0((v71 > 1), v72 + 1, 1);
      v63 = aBlock;
    }

    ++v62;
    v63[2] = v72 + 1;
    v73 = &v63[2 * v72];
    v73[4] = v68;
    v73[5] = v70;
  }

  while (v61 != v62);

LABEL_74:
  v75 = sub_10009B78C(v63);

  v76 = *(v126 + v52);
  v113[1] = v52;
  if (v76 >> 62)
  {
LABEL_131:
    v112 = v76;
    v77 = _CocoaArrayWrapper.endIndex.getter();
    v76 = v112;
  }

  else
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v76;

  if (!v77)
  {
    goto LABEL_124;
  }

  v78 = 0;
  v121 = v115 & 0xC000000000000001;
  v120 = v115 & 0xFFFFFFFFFFFFFF8;
  v119 = v115 + 32;
  v79 = v75 + 56;
  v116 = "o Functions (probably MIDI)";
  v123 = v75;
  v118 = v77;
  while (1)
  {
LABEL_79:
    if (v121)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v78 >= *(v120 + 16))
      {
        goto LABEL_130;
      }

      v76 = *(v119 + 8 * v78);
    }

    v80 = v76;
    v81 = __OFADD__(v78++, 1);
    if (v81)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v82 = [v76 audioDevices];
    if (!v82)
    {
      goto LABEL_133;
    }

    v83 = v82;
    v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v130 = v80;
    if (v84 >> 62)
    {
      break;
    }

    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v85)
    {
      goto LABEL_86;
    }

LABEL_78:

    if (v78 == v118)
    {
      goto LABEL_124;
    }
  }

  v76 = _CocoaArrayWrapper.endIndex.getter();
  v85 = v76;
  if (!v76)
  {
    goto LABEL_78;
  }

LABEL_86:
  v86 = 0;
  v133 = v84 & 0xC000000000000001;
  v132 = v84 & 0xFFFFFFFFFFFFFF8;
  v131 = v84 + 32;
  v124 = v85;
  while (1)
  {
LABEL_87:
    if (v133)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v86 >= *(v132 + 16))
      {
        goto LABEL_128;
      }

      v76 = *(v131 + 8 * v86);
    }

    v87 = v76;
    v81 = __OFADD__(v86++, 1);
    if (v81)
    {
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v88 = [v76 deviceUID];
    if (!v88)
    {
      break;
    }

    v89 = v88;
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    if (*(v75 + 16))
    {
      goto LABEL_95;
    }

LABEL_110:

    if (v86 == v85)
    {
      goto LABEL_78;
    }
  }

  v90 = 0;
  v92 = 0;
  if (!*(v75 + 16))
  {
    goto LABEL_110;
  }

LABEL_95:
  v93 = *(v75 + 40);
  Hasher.init(_seed:)();
  if (v92)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v94 = Hasher._finalize()();
  v95 = -1 << *(v75 + 32);
  v96 = v94 & ~v95;
  if (((*(v79 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
  {
    goto LABEL_110;
  }

  v97 = ~v95;
  v98 = *(v75 + 48);
  while (2)
  {
    v99 = (v98 + 16 * v96);
    v100 = v99[1];
    if (v100)
    {
      if (v92)
      {
        v101 = *v99 == v90 && v100 == v92;
        if (v101 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_117;
        }
      }

      goto LABEL_101;
    }

    if (v92)
    {
LABEL_101:
      v96 = (v96 + 1) & v97;
      if (((*(v79 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
      {

        v75 = v123;
        v85 = v124;
        if (v86 != v124)
        {
          goto LABEL_87;
        }

        goto LABEL_78;
      }

      continue;
    }

    break;
  }

LABEL_117:
  v102 = v129;
  sub_10000A2A4(v128, v129);
  sub_100039F58(1, v102, 0xD00000000000001DLL, (v116 | 0x8000000000000000));
  sub_10000C9D0(v102);
  v103 = v130;
  v104 = *&v130[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  v75 = v123;
  v105 = v118;
  if (v104)
  {
    v106 = v104;
    sub_10009A4A0(v106);
  }

  if (v78 != v105)
  {
    goto LABEL_79;
  }

LABEL_124:

  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100120A20;
  v108 = v114;
  *(inited + 32) = v114;
  swift_beginAccess();
  v109 = v108;
  sub_10007E650(inited);
  swift_endAccess();
  [v109 addDevicesToPlugin];
  v110 = [v109 plugin];
  if (!v110)
  {
LABEL_135:
    __break(1u);
    return;
  }

  v111 = v110;

  [v111 addBox:v109];

LABEL_126:
}

unint64_t sub_100099F34()
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  strcpy((inited + 32), "HostController");
  *(inited + 47) = -18;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v1 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  return v1;
}

uint64_t sub_10009A000(void *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v8 = NSString.init(stringLiteral:)();
  }

  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 4475222;
  *(inited + 40) = 0xE300000000000000;
  result = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;
  result = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  *(inited + 48) = result;
  *(inited + 56) = 4475216;
  *(inited + 64) = 0xE300000000000000;
  if (a3 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = NSNumber.init(integerLiteral:)(a3).super.super.isa;
  *(inited + 72) = result;
  *(inited + 80) = 0x6E6F6973726556;
  *(inited + 88) = 0xE700000000000000;
  if ((a4 & 0x8000000000000000) == 0)
  {
    *(inited + 96) = NSNumber.init(integerLiteral:)(a4);
    strcpy((inited + 104), "productString");
    *(inited + 118) = -4864;
    *(inited + 120) = v8;
    v12 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_100001AB4(&qword_100174A38, &qword_100120180);
    swift_arrayDestroy();
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10009A1B0(void *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v8 = NSString.init(stringLiteral:)();
  }

  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100123920;
  *(inited + 32) = 4475222;
  *(inited + 40) = 0xE300000000000000;
  result = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;
  result = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  *(inited + 48) = result;
  *(inited + 56) = 4475216;
  *(inited + 64) = 0xE300000000000000;
  if (a3 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = NSNumber.init(integerLiteral:)(a3).super.super.isa;
  *(inited + 72) = result;
  *(inited + 80) = 0x6E6F6973726556;
  *(inited + 88) = 0xE700000000000000;
  if ((a4 & 0x8000000000000000) == 0)
  {
    *(inited + 96) = NSNumber.init(integerLiteral:)(a4);
    strcpy((inited + 104), "productString");
    *(inited + 118) = -4864;
    *(inited + 120) = v8;
    *(inited + 128) = 0x65446769666E6F63;
    *(inited + 136) = 0xEA00000000006373;
    v12 = objc_allocWithZone(NSString);
    v13 = v8;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 initWithString:v14];

    *(inited + 144) = v15;
    *(inited + 152) = 0x6544656369766564;
    *(inited + 160) = 0xEA00000000006373;
    v16 = objc_allocWithZone(NSString);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithString:v17];

    *(inited + 168) = v18;
    *(inited + 176) = 0x726F727265;
    *(inited + 184) = 0xE500000000000000;
    swift_errorRetain();
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    String.init<A>(describing:)();
    v19 = objc_allocWithZone(NSString);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithString:v20];

    *(inited + 192) = v21;
    v22 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_100001AB4(&qword_100174A38, &qword_100120180);
    swift_arrayDestroy();

    return v22;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10009A4A0(void *a1)
{
  v2 = v1;
  v46 = a1;
  inited = type metadata accessor for LogID(0);
  v4 = *(*(inited - 8) + 64);
  __chkstk_darwin(inited);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AUAPlugin_usbDeviceList;
  swift_beginAccess();
  v8 = *&v7[v2];
  if (v8 >> 62)
  {
LABEL_55:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v43 = inited;
    v44 = v6;
    v40 = v7;
    v41 = v2;
    v47 = v8 & 0xC000000000000001;
    v45 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = "could not remove usbDevice";

    v10 = 0;
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
LABEL_5:
    v42 = v10;
    v12 = v6;
    while (1)
    {
      if (v47)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v45 + 16))
        {
          goto LABEL_54;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v7 = v13;
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v14 = *&v13[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
      if (v14)
      {
        sub_10001EBA8(0, &unk_100177260, IOUSBHostObject_ptr);
        v15 = v14;
        v16 = v46;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v23 = sub_10000A1BC(v43, qword_1001794F0);
          v24 = v44;
          sub_10000A2A4(v23, v44);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v25, qword_100179508);
          sub_100039AA0(1, v24, 0xD000000000000012, (v39 | 0x8000000000000000));
          sub_10000C9D0(v24);
          v26 = v7;
          [v26 removeDevicesFromPlugin];
          result = [v26 plugin];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v28 = result;
          [result removeBox:v26];

          v2 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
          swift_beginAccess();
          inited = *&v26[v2];
          if (inited)
          {
            v29 = *&v26[v2];

            sub_100022C14();

            inited = *&v26[v2];
          }

          *&v26[v2] = 0;

          v10 = 1;
          if (v6 == v9)
          {

            v7 = v40;
            v2 = v41;
            v36 = *&v40[v41];
            *&v40[v41] = v11;

            goto LABEL_47;
          }

          goto LABEL_5;
        }
      }

      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      inited = swift_initStackObject();
      *(inited + 32) = v7;
      v2 = v11 >> 62;
      if (v11 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v19 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_52;
        }
      }

      v7 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v2)
      {
        goto LABEL_22;
      }

      v2 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v19 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

LABEL_24:
      if (*(v2 + 16) >= *(v2 + 24) >> 1)
      {
        goto LABEL_53;
      }

      type metadata accessor for USBDevice();
      swift_arrayInitWithCopy();

      swift_setDeallocating();
      v21 = *(inited + 32);
      swift_unknownObjectRelease();
      ++*(v2 + 16);
      ++v12;
      if (v6 == v9)
      {

        v7 = v40;
        v2 = v41;
        v30 = *&v40[v41];
        *&v40[v41] = v11;

        inited = v43;
        v6 = v44;
        if (v42)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }
    }

    if (v2)
    {
LABEL_22:
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v20 = *(v2 + 16);
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = v11 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_24;
  }

  v31 = *&v7[v2];
  *&v7[v2] = _swiftEmptyArrayStorage;

LABEL_42:
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A1BC(inited, qword_1001794F0);
  sub_10000A2A4(v32, v6);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v33, qword_100179508);
  sub_100039F58(1, v6, 0xD00000000000001ALL, 0x800000010012E870);
  sub_10000C9D0(v6);
LABEL_47:
  v34 = *&v7[v2];
  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v34 < 0)
  {
    v37 = *&v7[v2];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_49:
    v35 = *(v2 + OBJC_IVAR___AUAPlugin_pressuredExitHold);
    *(v2 + OBJC_IVAR___AUAPlugin_pressuredExitHold) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

id DriverPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriverPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DriverPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009ABC4(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -536870896)
  {
    if (qword_100173CB8 != -1)
    {
      v14 = result;
      swift_once();
      result = v14;
    }

    v12 = sub_10000A1BC(result, qword_1001794F0);
    sub_10000A2A4(v12, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v13, qword_100179508);
    sub_100039AA0(1, v11, 0xD00000000000001ALL, 0x800000010012ED70);
    sub_10000C9D0(v11);
    return a4(a1);
  }

  return result;
}

uint64_t sub_10009AD34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10009AD74(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      v9 = a1;
      a3(v8);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10009AE1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10009AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (swift_beginAccess(), *(a2 + 16)) || (result = swift_beginAccess(), *(a3 + 16)))
  {
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a3;
    v19[4] = a2;
    aBlock[4] = sub_10009C83C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172D4;
    aBlock[3] = &unk_100163B00;
    v20 = _Block_copy(aBlock);
    v22 = a4;
    v23 = v13;
    v21 = v20;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v23);
  }

  return result;
}

void sub_10009B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;
}

void sub_10009B248(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = a2(a1, a4);
  v13 = v12;
  a5();
}

uint64_t sub_10009B498(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100119D4C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10009B590(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100119E98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_10009B718(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10009CA00();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10009B498(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10009B78C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100001AB4(&qword_100177290, &qword_100120B80);
  sub_10009C4F0();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10009B590(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_10009B838(void *a1, uint64_t a2, void *a3)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(IOKNotificationPort) initOnDispatchQueue:a1];
  if (!v14)
  {
    sub_10000CA2C();
    swift_allocError();
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v15 = v14;
  v45 = v10;
  v46 = v9;
  v47 = v5;
  v48 = a1;
  v16 = objc_opt_self();
  isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  v18 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v19 = [v16 createMatchingDictionaryWithVendorID:0 productID:0 bcdDevice:0 interfaceNumber:0 configurationValue:0 interfaceClass:isa interfaceSubclass:v18 interfaceProtocol:0 speed:0 productIDArray:0];

  v20 = v16;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    aBlock = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    if (aBlock)
    {
      v43 = v4;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v44 = objc_opt_self();
      v22 = IOKMatchedNotification;
      v23 = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      v25 = v49;
      v26 = v50;
      v24[2] = v21;
      v24[3] = v25;
      v24[4] = v26;
      v56 = sub_10009C77C;
      v57 = v24;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10009AE1C;
      v55 = &unk_1001639E8;
      v27 = _Block_copy(&aBlock);
      v49 = v21;

      aBlock = 0;
      v28 = [v44 addNotificationOfType:v22 forMatching:v23 usingNotificationPort:v15 error:&aBlock withEnumerationBlock:v27];
      _Block_release(v27);

      v29 = aBlock;
      if (v28)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        v56 = sub_10009C788;
        v57 = v30;
        aBlock = _NSConcreteStackBlock;
        v53 = 1107296256;
        v54 = sub_1000172D4;
        v55 = &unk_100163A38;
        v50 = _Block_copy(&aBlock);
        v31 = v29;
        v32 = v28;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
        sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
        v33 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v50;
        v35 = v48;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v34);
        (*(v47 + 8))(v8, v33);
        (*(v45 + 8))(v13, v46);

        v36 = swift_allocObject();
        *(v36 + 16) = v15;
        v37 = swift_allocObject();
        *(v37 + 16) = v28;
        v38 = swift_allocObject();
        v38[2] = v49;
        v38[3] = v36;
        v38[4] = v37;
        v38[5] = v35;
        v39 = v35;
        return;
      }

      v42 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_9;
    }
  }

  else
  {
  }

  sub_10000CA2C();
  swift_allocError();
  *v41 = 1;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0xE000000000000000;
  swift_willThrow();
LABEL_9:
}

uint64_t sub_10009BED0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10009BF08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100099F34();
}

uint64_t sub_10009BF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009C424()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10009C474()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  return sub_10009A1B0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_10009C4AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10009C4F0()
{
  result = qword_100177298;
  if (!qword_100177298)
  {
    sub_10001E8F0(&qword_100177290, &qword_100120B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177298);
  }

  return result;
}

uint64_t sub_10009C574()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C5D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C618()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009C670()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10009C6B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10009A4A0(v1);
}

uint64_t sub_10009C6E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C73C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009C7F4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_1001771F0, &qword_100123930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C8C0()
{
  v1 = sub_100001AB4(&qword_1001772D8, &qword_100123978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10009C954()
{
  v0 = *(*(sub_100001AB4(&qword_1001772D8, &qword_100123978) - 8) + 80);

  sub_100096268();
}

uint64_t sub_10009C9C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10009CA00()
{
  result = qword_1001772E0;
  if (!qword_1001772E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772E0);
  }

  return result;
}

uint64_t sub_10009CAD4(__int16 a1, id a2)
{
  if ((a1 & 0x1FF) == 8)
  {
    return *[a2 bytes];
  }

  sub_10000CA2C();
  swift_allocError();
  *v3 = 32;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t ADCControlRequestParameterBlock.getCur()@<X0>(id a1@<X1>, __int16 a2@<W0>, uint64_t a3@<X8>)
{
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v29 = a1;
      v30 = [a1 bytes];
      *(a3 + 24) = &type metadata for UInt8;
      result = sub_10009EFBC();
      *(a3 + 32) = result;
      *a3 = *v30;
      return result;
    }

    if (a2 == 1)
    {
      v14 = a1;
      v15 = [a1 bytes];
      *(a3 + 24) = &type metadata for UInt16;
      result = sub_10009EF68();
      *(a3 + 32) = result;
      *a3 = *v15;
      return result;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v20 = a1;
    v21 = [a1 bytes];
    *(a3 + 24) = &type metadata for UInt32;
    result = sub_10009EF14();
    *(a3 + 32) = result;
    *a3 = *v21;
    return result;
  }

  if (a2 != 3)
  {
    if (a2 == 8)
    {
      v4 = a3;
      v5 = sub_10009E0B8(a1);
      v7 = v5;
      v8 = v6;
      v9 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        if (!v9)
        {
          v50[0] = v5;
          LOWORD(v50[1]) = v6;
          BYTE2(v50[1]) = BYTE2(v6);
          BYTE3(v50[1]) = BYTE3(v6);
          BYTE4(v50[1]) = BYTE4(v6);
          BYTE5(v50[1]) = BYTE5(v6);
          v10 = v50 + BYTE6(v6);
          v11 = v50;
LABEL_59:
          sub_10009E754(v11, v10, v51);
          goto LABEL_60;
        }

        v41 = (v5 >> 32) - v5;
        if (v5 >> 32 >= v5)
        {
          v39 = __DataStorage._bytes.getter();
          if (!v39)
          {
LABEL_51:
            v47 = __DataStorage._length.getter();
            if (v47 >= v41)
            {
              v48 = v41;
            }

            else
            {
              v48 = v47;
            }

            v49 = (v48 + v39);
            if (v39)
            {
              v10 = v49;
            }

            else
            {
              v10 = 0;
            }

            v11 = v39;
            goto LABEL_59;
          }

          v46 = __DataStorage._offset.getter();
          if (!__OFSUB__(v7, v46))
          {
            v39 += v7 - v46;
            goto LABEL_51;
          }

LABEL_69:
          __break(1u);
        }

        goto LABEL_65;
      }

      goto LABEL_26;
    }

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v17 = 32;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v4 = a3;
  v22 = sub_10009E0B8(a1);
  v7 = v22;
  v8 = v23;
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v50[0] = v22;
      LOWORD(v50[1]) = v23;
      BYTE2(v50[1]) = BYTE2(v23);
      BYTE3(v50[1]) = BYTE3(v23);
      BYTE4(v50[1]) = BYTE4(v23);
      BYTE5(v50[1]) = BYTE5(v23);
      v25 = v50 + BYTE6(v23);
      v26 = v50;
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  if (v24 != 2)
  {
    memset(v50, 0, 14);
    sub_10009E4B4(v50, v50, v51);
LABEL_60:
    if (v3)
    {
      return sub_10007676C(v7, v8);
    }

    sub_10007676C(v7, v8);
    return sub_10000D0A0(v51, v4);
  }

  v31 = *(v22 + 16);
  v32 = *(v22 + 24);
  v33 = __DataStorage._bytes.getter();
  if (v33)
  {
    v34 = __DataStorage._offset.getter();
    v9 = v31 - v34;
    if (__OFSUB__(v31, v34))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v33 += v9;
  }

  v35 = __OFSUB__(v32, v31);
  v36 = v32 - v31;
  if (v35)
  {
    __break(1u);
LABEL_26:
    if (v9 != 2)
    {
      memset(v50, 0, 14);
      v11 = v50;
      v10 = v50;
      goto LABEL_59;
    }

    v37 = *(v7 + 16);
    v38 = *(v7 + 24);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v39 += v37 - v40;
    }

    v35 = __OFSUB__(v38, v37);
    v41 = v38 - v37;
    if (!v35)
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_33:
    v36 = (v7 >> 32) - v7;
    if (v7 >> 32 < v7)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v42))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v33 += v7 - v42;
    }
  }

  v43 = __DataStorage._length.getter();
  if (v43 >= v36)
  {
    v44 = v36;
  }

  else
  {
    v44 = v43;
  }

  v45 = (v44 + v33);
  if (v33)
  {
    v25 = v45;
  }

  else
  {
    v25 = 0;
  }

  v26 = v33;
LABEL_44:
  sub_10009E4B4(v26, v25, v51);
  result = sub_10007676C(v7, v8);
  if (!v3)
  {
    return sub_10000D0A0(v51, v4);
  }

  return result;
}

uint64_t sub_10009D018(__int16 a1, void *a2)
{
  if ((a1 & 0x100) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    *v3 = 32;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v5 = a1;
  v6 = a2;
  v7 = *[v6 bytes];
  v8 = sub_10009E0B8(v6);
  v10 = v8;
  v11 = v9;
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(v32, 0, 14);
      v13 = v32;
LABEL_32:
      sub_10009F2B8(v32, v13, v7, v5, &v31);
      result = sub_10007676C(v10, v11);
      if (!v2)
      {
        return v31;
      }

      return result;
    }

    v14 = *(v8 + 16);
    v30 = *(v8 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v16))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v15 += v14 - v16;
    }

    if (!__OFSUB__(v30, v14))
    {
      v17 = __DataStorage._length.getter();
      if (v17 >= v30 - v14)
      {
        v18 = v30 - v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = v18 + v15;
      if (v15)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v5;
      v22 = v15;
      v23 = v7;
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v12)
  {
    v32[0] = v8;
    LOWORD(v32[1]) = v9;
    BYTE2(v32[1]) = BYTE2(v9);
    BYTE3(v32[1]) = BYTE3(v9);
    BYTE4(v32[1]) = BYTE4(v9);
    BYTE5(v32[1]) = BYTE5(v9);
    v13 = v32 + BYTE6(v9);
    goto LABEL_32;
  }

  v24 = (v8 >> 32) - v8;
  if (v8 >> 32 < v8)
  {
    __break(1u);
    goto LABEL_36;
  }

  v25 = __DataStorage._bytes.getter();
  if (v25)
  {
    v26 = __DataStorage._offset.getter();
    if (!__OFSUB__(v10, v26))
    {
      v25 += v10 - v26;
      goto LABEL_22;
    }

LABEL_38:
    __break(1u);
  }

LABEL_22:
  v27 = __DataStorage._length.getter();
  if (v27 >= v24)
  {
    v28 = (v10 >> 32) - v10;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28 + v25;
  if (v25)
  {
    v20 = v29;
  }

  else
  {
    v20 = 0;
  }

  v21 = v5;
  v22 = v25;
  v23 = v7;
LABEL_29:
  sub_10009F2B8(v22, v20, v23, v21, v32);
  result = sub_10007676C(v10, v11);
  if (!v2)
  {
    return v32[0];
  }

  return result;
}

_BYTE *sub_10009D2FC(unint64_t a1, unsigned __int8 a2, id a3)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      result = [a3 bytes];
      if (a1 <= 0xFF)
      {
        *result = a1;
        return result;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      result = [a3 bytes];
      if (!(a1 >> 16))
      {
        *result = a1;
        return result;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    sub_10000CA2C();
    swift_allocError();
    *v5 = 32;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      result = [a3 bytes];
      *result = a1;
      result[2] = BYTE2(a1);
      return result;
    }

    goto LABEL_9;
  }

  result = [a3 bytes];
  if (!HIDWORD(a1))
  {
    *result = a1;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10009D42C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D468@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

unint64_t sub_10009D4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D4E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

unint64_t sub_10009D52C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for UInt8;
  result = sub_1000A1718();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D568@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for Int8;
  result = sub_1000A16C4();
  *(a1 + 32) = result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

Swift::Int sub_10009D5AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009D61C()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009D668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_10009D70C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D748@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D784@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for UInt16;
  result = sub_1000A1670();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009D838@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for Int16;
  result = sub_1000A161C();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

Swift::Int sub_10009D874()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009D8E4()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009D930()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_10009D9D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DA88@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 4);
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(a1 + 24) = &type metadata for UInt32;
  result = sub_1000A15C8();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_10009DB00@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  a1[3] = &type metadata for Int;
  result = sub_1000A1574();
  a1[4] = result;
  *a1 = v3;
  return result;
}

Swift::Int sub_10009DB3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10009DBA8()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10009DBF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t ADCControlRequestParameterBlock.init(blockLayout:data:)(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        if (a1 == 6)
        {
          v11 = a3 >> 62;
          if ((a3 >> 62) <= 1)
          {
            if (!v11)
            {
              if (BYTE6(a3) != 6)
              {
                goto LABEL_56;
              }

LABEL_52:
              v36 = objc_allocWithZone(NSMutableData);
              isa = Data._bridgeToObjectiveC()().super.isa;
              [v36 initWithData:isa];

              sub_10007676C(a2, a3);
              return a1;
            }

            if (!__OFSUB__(HIDWORD(a2), a2))
            {
              if (HIDWORD(a2) - a2 != 6)
              {
                goto LABEL_56;
              }

              goto LABEL_52;
            }

            goto LABEL_72;
          }

          if (v11 == 2)
          {
            v32 = *(a2 + 16);
            v31 = *(a2 + 24);
            v25 = __OFSUB__(v31, v32);
            v33 = v31 - v32;
            if (!v25)
            {
              if (v33 != 6)
              {
                goto LABEL_56;
              }

              goto LABEL_52;
            }

            goto LABEL_71;
          }

LABEL_56:
          sub_10000CA2C();
          swift_allocError();
          *v38 = 29;
          *(v38 + 8) = 0;
          *(v38 + 16) = 0xE000000000000000;
          swift_willThrow();
          return sub_10007676C(a2, a3);
        }

LABEL_24:
        v17 = result;
        v40 = 0;
        v41 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v18._object = 0x800000010012BF00;
        v18._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v18);
        v39[15] = a1;
        _print_unlocked<A, B>(_:_:)();
        v19 = v40;
        v20 = v41;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v21 = sub_10000A1BC(v17, qword_1001794F0);
        sub_10000A2A4(v21, v10);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v22, qword_100179508);
        sub_100039F58(2, v10, v19, v20);

        sub_10000C9D0(v10);
        goto LABEL_56;
      }

      v15 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (!v15)
        {
          v16 = BYTE6(a3);
          goto LABEL_55;
        }

        LODWORD(v16) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v16 = v16;
LABEL_55:
          if (v16 == 3)
          {
            goto LABEL_52;
          }

          goto LABEL_56;
        }

        goto LABEL_68;
      }

      goto LABEL_33;
    }

    v14 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_56;
      }

      v24 = *(a2 + 16);
      v23 = *(a2 + 24);
      v25 = __OFSUB__(v23, v24);
      v15 = v23 - v24;
      if (v25)
      {
        __break(1u);
LABEL_33:
        if (v15 != 2)
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 16);
        v26 = *(a2 + 24);
        v25 = __OFSUB__(v26, v27);
        v16 = v26 - v27;
        if (!v25)
        {
          goto LABEL_55;
        }

        __break(1u);
LABEL_37:
        if (v16 != 2)
        {
          goto LABEL_56;
        }

        v29 = *(a2 + 16);
        v28 = *(a2 + 24);
        v25 = __OFSUB__(v28, v29);
        v30 = v28 - v29;
        if (!v25)
        {
          if (v30 != 1)
          {
            goto LABEL_56;
          }

          goto LABEL_52;
        }

        goto LABEL_69;
      }

LABEL_51:
      if (v15 == 4)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    if (!v14)
    {
      v15 = BYTE6(a3);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v15) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v15 = v15;
    goto LABEL_51;
  }

  if (!a1)
  {
    v16 = a3 >> 62;
    if ((a3 >> 62) <= 1)
    {
      if (!v16)
      {
        if (BYTE6(a3) != 1)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 != 1)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      goto LABEL_70;
    }

    goto LABEL_37;
  }

  if (a1 != 1)
  {
    goto LABEL_24;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_56;
    }

    v35 = *(a2 + 16);
    v34 = *(a2 + 24);
    v25 = __OFSUB__(v34, v35);
    v13 = v34 - v35;
    if (v25)
    {
      __break(1u);
      goto LABEL_49;
    }

LABEL_65:
    if (v13 != 2)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (!v12)
  {
    v13 = BYTE6(a3);
    goto LABEL_65;
  }

  LODWORD(v13) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v13 = v13;
    goto LABEL_65;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_10009E0B8(void *a1)
{
  *&v31 = a1;
  sub_1000A1244();
  v2 = a1;
  sub_100001AB4(&qword_100177330, &qword_100123B30);
  if (swift_dynamicCast())
  {
    sub_10000D0A0(v32, v34);
    sub_10001EAB8(v34, v34[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v31;
    sub_10000CE78(v34);
    goto LABEL_40;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_1000A1290(v32);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v32[0] = sub_1000A04F8(v4 - v3);
  *(&v32[0] + 1) = v9;
  __chkstk_darwin(*&v32[0]);
  v12 = sub_10009FC64(sub_1000A12F8);
  v13 = v10;
  v14 = *&v32[0];
  v15 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v32[0] + 16);
      v16 = *(*&v32[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v32[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v32[0]), v32[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v32[0]) - LODWORD(v32[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v32[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v32[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v34, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v34 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v32[0];
  sub_1000A1360(*&v32[0], *(&v32[0] + 1));

  sub_10007676C(v29, *(&v29 + 1));
  return v29;
}

uint64_t sub_10009E4B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    result = sub_1000D5D10(a1, a2, 3);
    if (v3)
    {
      return result;
    }

    v7 = sub_1001128D0(a1, 3);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) <= 1)
    {
      if (!v11)
      {
        v26[0] = v7;
        LOWORD(v26[1]) = v8;
        BYTE2(v26[1]) = BYTE2(v8);
        BYTE3(v26[1]) = BYTE3(v8);
        BYTE4(v26[1]) = BYTE4(v8);
        BYTE5(v26[1]) = BYTE5(v8);
LABEL_18:
        v22 = v26;
        goto LABEL_19;
      }

      if (v7 <= v7 >> 32)
      {
        v19 = __DataStorage._bytes.getter();
        if (v19)
        {
          v20 = v19;
          v21 = __DataStorage._offset.getter();
          if (!__OFSUB__(v9, v21))
          {
            v18 = (v9 - v21 + v20);
            result = __DataStorage._length.getter();
            if (v18)
            {
              goto LABEL_16;
            }

LABEL_30:
            __break(1u);
            return result;
          }

LABEL_26:
          __break(1u);
        }

LABEL_29:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_30;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v11 != 2)
    {
      memset(v26, 0, 14);
      goto LABEL_18;
    }

    v14 = *(v7 + 16);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v17))
      {
        goto LABEL_25;
      }

      v18 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v18)
      {
LABEL_16:
        v22 = v18;
LABEL_19:
        v23 = sub_10010AC70(v22, 3);
        sub_10007676C(v9, v10);
        if (*(v23 + 2) == 3)
        {
          v24 = (v23[34] << 16) | (v23[33] << 8);
          v25 = v23[32];

          *(a3 + 24) = &type metadata for UInt32;
          result = sub_10009EF14();
          *(a3 + 32) = result;
          *a3 = v24 | v25;
          return result;
        }

        sub_10000CA2C();
        swift_allocError();
        v13 = 32;
        goto LABEL_22;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_10000CA2C();
  swift_allocError();
  v13 = 57;
LABEL_22:
  *v12 = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10009E754@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_34;
  }

  result = sub_1000D5D10(a1, a2, 1);
  if (v3)
  {
    return result;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1001128D0(a1, 1);
  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_17;
    }

    v16 = *(v11 + 16);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v19))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v20 = (v16 - v19 + v18);
      __DataStorage._length.getter();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_98;
  }

  if (v15)
  {
    if (v11 > v11 >> 32)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v23))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v20 = (v13 - v23 + v22);
      __DataStorage._length.getter();
      if (v20)
      {
LABEL_15:
        v24 = v20;
        goto LABEL_18;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_98:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_99;
  }

  v77[0] = v11;
  LOWORD(v77[1]) = v12;
  BYTE2(v77[1]) = BYTE2(v12);
  BYTE3(v77[1]) = BYTE3(v12);
  BYTE4(v77[1]) = BYTE4(v12);
  BYTE5(v77[1]) = BYTE5(v12);
LABEL_17:
  v24 = v77;
LABEL_18:
  v25 = sub_10010AC70(v24, 1);
  sub_10007676C(v13, v14);
  if (!*(v25 + 2))
  {
    __break(1u);
    goto LABEL_81;
  }

  v26 = v25[32];

  if (v26 == 4)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_1000D5D10(v9, v10, 4);
    v37 = sub_1001128D0(v9, 4);
    v39 = v37;
    v40 = v38;
    v41 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v41 != 2)
      {
        memset(v77, 0, 14);
        goto LABEL_68;
      }

      v49 = *(v37 + 16);
      v50 = __DataStorage._bytes.getter();
      if (!v50)
      {
LABEL_102:
        __DataStorage._length.getter();
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v51 = v50;
      v52 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v52))
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v53 = (v49 - v52 + v51);
      __DataStorage._length.getter();
      if (!v53)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (!v41)
      {
        v77[0] = v37;
        LOWORD(v77[1]) = v38;
        BYTE2(v77[1]) = BYTE2(v38);
        BYTE3(v77[1]) = BYTE3(v38);
        BYTE4(v77[1]) = BYTE4(v38);
        BYTE5(v77[1]) = BYTE5(v38);
LABEL_68:
        v68 = v77;
LABEL_69:
        v69 = sub_10010ADC4(v68, 1);
        sub_10007676C(v39, v40);
        *(a3 + 24) = &type metadata for UInt32;
        *(a3 + 32) = sub_10009EF14();
        if (*(v69 + 2))
        {
          v70 = v69[8];

          *a3 = v70;
          return result;
        }

        goto LABEL_85;
      }

      if (v37 > v37 >> 32)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
        goto LABEL_107;
      }

      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v67))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
      }

      v53 = (v39 - v67 + v66);
      result = __DataStorage._length.getter();
      if (!v53)
      {
        goto LABEL_110;
      }
    }

    v68 = v53;
    goto LABEL_69;
  }

  if (v26 == 2)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_1000D5D10(v9, v10, 2);
    v32 = sub_1001128D0(v9, 2);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v77[0] = v32;
        LOWORD(v77[1]) = v33;
        BYTE2(v77[1]) = BYTE2(v33);
        BYTE3(v77[1]) = BYTE3(v33);
        BYTE4(v77[1]) = BYTE4(v33);
        BYTE5(v77[1]) = BYTE5(v33);
LABEL_59:
        v62 = v77;
LABEL_60:
        v63 = sub_10010A954(v62, 1);
        sub_10007676C(v34, v35);
        *(a3 + 24) = &type metadata for UInt16;
        *(a3 + 32) = sub_10009EF68();
        if (*(v63 + 2))
        {
          v64 = v63[16];

          *a3 = v64;
          return result;
        }

        goto LABEL_84;
      }

      if (v32 > v32 >> 32)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v59 = __DataStorage._bytes.getter();
      if (!v59)
      {
        goto LABEL_106;
      }

      v60 = v59;
      v61 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v61))
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v48 = (v34 - v61 + v60);
      result = __DataStorage._length.getter();
      if (!v48)
      {
        goto LABEL_109;
      }

LABEL_57:
      v62 = v48;
      goto LABEL_60;
    }

    if (v36 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_59;
    }

    v44 = *(v32 + 16);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = v45;
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v48 = (v44 - v47 + v46);
      __DataStorage._length.getter();
      if (v48)
      {
        goto LABEL_57;
      }

      goto LABEL_101;
    }

LABEL_100:
    __DataStorage._length.getter();
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v26 != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v43 = 1;
    goto LABEL_35;
  }

  if (v9)
  {
    sub_1000D5D10(v9, v10, 1);
    v27 = sub_1001128D0(v9, 1);
    v29 = v27;
    v30 = v28;
    v31 = v28 >> 62;
    if ((v28 >> 62) <= 1)
    {
      if (!v31)
      {
        v77[0] = v27;
        LOWORD(v77[1]) = v28;
        BYTE2(v77[1]) = BYTE2(v28);
        BYTE3(v77[1]) = BYTE3(v28);
        BYTE4(v77[1]) = BYTE4(v28);
        BYTE5(v77[1]) = BYTE5(v28);
LABEL_77:
        v74 = v77;
LABEL_78:
        v75 = sub_10010AC70(v74, 1);
        sub_10007676C(v29, v30);
        *(a3 + 24) = &type metadata for UInt8;
        *(a3 + 32) = sub_10009EFBC();
        if (*(v75 + 2))
        {
          v76 = v75[32];

          *a3 = v76;
          return result;
        }

        goto LABEL_86;
      }

      if (v27 > v27 >> 32)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v71 = __DataStorage._bytes.getter();
      if (v71)
      {
        v72 = v71;
        v73 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v73))
        {
          goto LABEL_95;
        }

        v58 = (v29 - v73 + v72);
        result = __DataStorage._length.getter();
        if (v58)
        {
LABEL_75:
          v74 = v58;
          goto LABEL_78;
        }

        goto LABEL_111;
      }

      goto LABEL_108;
    }

    if (v31 != 2)
    {
      memset(v77, 0, 14);
      goto LABEL_77;
    }

    v54 = *(v27 + 16);
    v55 = __DataStorage._bytes.getter();
    if (v55)
    {
      v56 = v55;
      v57 = __DataStorage._offset.getter();
      if (__OFSUB__(v54, v57))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v58 = (v54 - v57 + v56);
      __DataStorage._length.getter();
      if (v58)
      {
        goto LABEL_75;
      }

      goto LABEL_105;
    }

LABEL_104:
    __DataStorage._length.getter();
LABEL_105:
    __break(1u);
LABEL_106:
    __DataStorage._length.getter();
    __break(1u);
LABEL_107:
    __DataStorage._length.getter();
    __break(1u);
LABEL_108:
    result = __DataStorage._length.getter();
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    return result;
  }

LABEL_34:
  sub_10000CA2C();
  swift_allocError();
  v43 = 57;
LABEL_35:
  *v42 = v43;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t sub_10009EF14()
{
  result = qword_1001772F0;
  if (!qword_1001772F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772F0);
  }

  return result;
}

unint64_t sub_10009EF68()
{
  result = qword_1001772F8;
  if (!qword_1001772F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772F8);
  }

  return result;
}

unint64_t sub_10009EFBC()
{
  result = qword_100177300;
  if (!qword_100177300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177300);
  }

  return result;
}

unint64_t sub_10009F014()
{
  result = qword_100177308;
  if (!qword_100177308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for tADCControlRequestParameterBlockLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for tADCControlRequestParameterBlockLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10009F1B8(uint64_t a1, int a2)
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

uint64_t sub_10009F200(uint64_t result, int a2, int a3)
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

unint64_t sub_10009F264()
{
  result = qword_100177310;
  if (!qword_100177310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177310);
  }

  return result;
}

uint64_t sub_10009F2B8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_36;
  }

  result = sub_1000D5D10(a1, a2, 2);
  if (v5)
  {
    return result;
  }

  v12 = v11;
  v97 = v10;
  v13 = sub_1001128D0(a1, 2);
  v15 = v13;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      *(&v99 + 6) = 0;
      *&v99 = 0;
      goto LABEL_17;
    }

    v18 = *(v13 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_107:
      __DataStorage._length.getter();
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_96;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_108;
    }

LABEL_15:
    v26 = v22;
    goto LABEL_18;
  }

  if (v17)
  {
    if (v13 > v13 >> 32)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v23 = __DataStorage._bytes.getter();
    if (!v23)
    {
LABEL_109:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_110;
    }

    v24 = v23;
    v25 = __DataStorage._offset.getter();
    if (__OFSUB__(v15, v25))
    {
LABEL_97:
      __break(1u);
    }

    v22 = (v15 - v25 + v24);
    __DataStorage._length.getter();
    if (!v22)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    goto LABEL_15;
  }

  *&v99 = v13;
  WORD4(v99) = v14;
  BYTE10(v99) = BYTE2(v14);
  BYTE11(v99) = BYTE3(v14);
  BYTE12(v99) = BYTE4(v14);
  BYTE13(v99) = BYTE5(v14);
LABEL_17:
  v26 = &v99;
LABEL_18:
  v27 = sub_10010A954(v26, 1);
  sub_10007676C(v15, v16);
  if (!*(v27 + 2))
  {
    __break(1u);
    goto LABEL_95;
  }

  v28 = v27[16];

  if (v28 != a3)
  {
    goto LABEL_27;
  }

  switch(a4)
  {
    case 2:
      if (!v97)
      {
        goto LABEL_36;
      }

      sub_1000D5D10(v97, v12, 12 * a3);
      v41 = sub_1001128D0(v97, 12 * a3);
      v43 = v41;
      v44 = v42;
      v45 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v45 != 2)
        {
          *(&v99 + 6) = 0;
          *&v99 = 0;
          goto LABEL_73;
        }

        v51 = *(v41 + 16);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
LABEL_113:
          __DataStorage._length.getter();
LABEL_114:
          __break(1u);
LABEL_115:
          __DataStorage._length.getter();
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v54))
        {
          goto LABEL_102;
        }

        v55 = (v51 - v54 + v53);
        __DataStorage._length.getter();
        if (!v55)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (!v45)
        {
          *&v99 = v41;
          WORD4(v99) = v42;
          BYTE10(v99) = BYTE2(v42);
          BYTE11(v99) = BYTE3(v42);
          BYTE12(v99) = BYTE4(v42);
          BYTE13(v99) = BYTE5(v42);
LABEL_73:
          v76 = &v99;
LABEL_74:
          v77 = sub_10010B344(v76, a3);
          sub_10007676C(v43, v44);
          v78 = v77[2];
          if (v78)
          {
            sub_100047400(0, v78, 0);
            v79 = v77 + 5;
            do
            {
              v80 = *(v79 - 1);
              v81 = *v79;
              v83 = _swiftEmptyArrayStorage[2];
              v82 = _swiftEmptyArrayStorage[3];
              if (v83 >= v82 >> 1)
              {
                v96 = *(v79 - 1);
                sub_100047400((v82 > 1), v83 + 1, 1);
                v80 = v96;
              }

              v100 = &type metadata for AudioClassRange32bit;
              v101 = &off_100163F78;
              *&v99 = v80;
              DWORD2(v99) = v81;
              _swiftEmptyArrayStorage[2] = v83 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v83 + 4]);
              v79 += 3;
              --v78;
            }

            while (v78);
          }

          goto LABEL_92;
        }

        if (v41 > v41 >> 32)
        {
          goto LABEL_99;
        }

        v73 = __DataStorage._bytes.getter();
        if (!v73)
        {
LABEL_118:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_119;
        }

        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v75))
        {
          goto LABEL_105;
        }

        v55 = (v43 - v75 + v74);
        result = __DataStorage._length.getter();
        if (!v55)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          return result;
        }
      }

      v76 = v55;
      goto LABEL_74;
    case 1:
      if (v97)
      {
        sub_1000D5D10(v97, v12, 6 * a3);
        v36 = sub_1001128D0(v97, 6 * a3);
        v38 = v36;
        v39 = v37;
        v40 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v40 != 2)
          {
            *(&v99 + 6) = 0;
            *&v99 = 0;
            goto LABEL_60;
          }

          v46 = *(v36 + 16);
          v47 = __DataStorage._bytes.getter();
          if (!v47)
          {
LABEL_111:
            __DataStorage._length.getter();
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v48 = v47;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v46, v49))
          {
            goto LABEL_101;
          }

          v50 = (v46 - v49 + v48);
          __DataStorage._length.getter();
          if (!v50)
          {
            goto LABEL_112;
          }

LABEL_58:
          v64 = v50;
          goto LABEL_61;
        }

        if (!v40)
        {
          *&v99 = v36;
          WORD4(v99) = v37;
          BYTE10(v99) = BYTE2(v37);
          BYTE11(v99) = BYTE3(v37);
          BYTE12(v99) = BYTE4(v37);
          BYTE13(v99) = BYTE5(v37);
LABEL_60:
          v64 = &v99;
LABEL_61:
          v65 = sub_10010B440(v64, a3);
          sub_10007676C(v38, v39);
          v66 = v65[2];
          if (v66)
          {
            sub_100047400(0, v66, 0);
            v67 = v65 + 18;
            do
            {
              v68 = *(v67 - 2);
              v69 = *(v67 - 1);
              v70 = *v67;
              v72 = _swiftEmptyArrayStorage[2];
              v71 = _swiftEmptyArrayStorage[3];
              if (v72 >= v71 >> 1)
              {
                sub_100047400((v71 > 1), v72 + 1, 1);
              }

              v67 += 3;
              v100 = &type metadata for AudioClassRange16bit;
              v101 = &off_100163F40;
              LOWORD(v99) = v68;
              WORD1(v99) = v69;
              WORD2(v99) = v70;
              _swiftEmptyArrayStorage[2] = v72 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v72 + 4]);
              --v66;
            }

            while (v66);
          }

          goto LABEL_92;
        }

        if (v36 <= v36 >> 32)
        {
          v61 = __DataStorage._bytes.getter();
          if (!v61)
          {
LABEL_117:
            __DataStorage._length.getter();
            __break(1u);
            goto LABEL_118;
          }

          v62 = v61;
          v63 = __DataStorage._offset.getter();
          if (__OFSUB__(v38, v63))
          {
            goto LABEL_104;
          }

          v50 = (v38 - v63 + v62);
          result = __DataStorage._length.getter();
          if (!v50)
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          goto LABEL_58;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

LABEL_36:
      sub_10000CA2C();
      swift_allocError();
      v35 = 57;
      goto LABEL_37;
    case 0:
      if (v97)
      {
        sub_1000D5D10(v97, v12, 3 * a3);
        v29 = sub_1001128D0(v97, 3 * a3);
        v31 = v29;
        v32 = v30;
        v33 = v30 >> 62;
        if ((v30 >> 62) > 1)
        {
          if (v33 != 2)
          {
            *(&v99 + 6) = 0;
            *&v99 = 0;
            goto LABEL_86;
          }

          v56 = *(v29 + 16);
          v57 = __DataStorage._bytes.getter();
          if (!v57)
          {
            goto LABEL_115;
          }

          v58 = v57;
          v59 = __DataStorage._offset.getter();
          if (!__OFSUB__(v56, v59))
          {
            v60 = (v56 - v59 + v58);
            __DataStorage._length.getter();
            if (v60)
            {
LABEL_84:
              v87 = v60;
              goto LABEL_87;
            }

            goto LABEL_116;
          }

          goto LABEL_103;
        }

        if (!v33)
        {
          *&v99 = v29;
          WORD4(v99) = v30;
          BYTE10(v99) = BYTE2(v30);
          BYTE11(v99) = BYTE3(v30);
          BYTE12(v99) = BYTE4(v30);
          BYTE13(v99) = BYTE5(v30);
LABEL_86:
          v87 = &v99;
LABEL_87:
          v88 = sub_10010B53C(v87, a3);
          sub_10007676C(v31, v32);
          v89 = v88[2];
          if (v89)
          {
            sub_100047400(0, v89, 0);
            v90 = v88 + 34;
            do
            {
              v91 = *(v90 - 2);
              v92 = *(v90 - 1);
              v93 = *v90;
              v95 = _swiftEmptyArrayStorage[2];
              v94 = _swiftEmptyArrayStorage[3];
              if (v95 >= v94 >> 1)
              {
                sub_100047400((v94 > 1), v95 + 1, 1);
              }

              v90 += 3;
              v100 = &type metadata for AudioClassRange8bit;
              v101 = &off_100163F08;
              LOBYTE(v99) = v91;
              BYTE1(v99) = v92;
              BYTE2(v99) = v93;
              _swiftEmptyArrayStorage[2] = v95 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v95 + 4]);
              --v89;
            }

            while (v89);
          }

LABEL_92:

          *a5 = _swiftEmptyArrayStorage;
          return result;
        }

        if (v29 <= v29 >> 32)
        {
          v84 = __DataStorage._bytes.getter();
          if (!v84)
          {
LABEL_119:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_120;
          }

          v85 = v84;
          v86 = __DataStorage._offset.getter();
          if (!__OFSUB__(v31, v86))
          {
            v60 = (v31 - v86 + v85);
            result = __DataStorage._length.getter();
            if (v60)
            {
              goto LABEL_84;
            }

            goto LABEL_122;
          }

          goto LABEL_106;
        }

        goto LABEL_100;
      }

      goto LABEL_36;
  }

LABEL_27:
  sub_10000CA2C();
  swift_allocError();
  v35 = 32;
LABEL_37:
  *v34 = v35;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

char *sub_10009FC64(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_10007676C(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10007676C(v6, v5);
    *v3 = xmmword_100123980;
    sub_10007676C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1000A00F8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_10007676C(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100123980;
    sub_10007676C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000A00F8(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10009FFFC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100112818(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000A0598(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000A0614(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1000A0090(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000A00F8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000A01AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v8 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v8 + v9;
      if (v8 + v9 == NSData.endIndex.getter())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_15;
      }

      v11 = NSData.subscript.getter();
      v12 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v10 < v12 || v10 >= result)
      {
        break;
      }

      *(a2 + v9) = v11;
      if (a3 - 1 == v9)
      {
        v8 += v9 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A0294(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 < 7 && ((0x4Fu >> a1) & 1) != 0)
  {
    if ([objc_allocWithZone(NSMutableData) initWithLength:qword_100123D48[a1]])
    {
      return a1;
    }

    sub_10000CA2C();
    swift_allocError();
    v14 = 31;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v8._object = 0x800000010012BF00;
    v8._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v8);
    v17 = a1;
    _print_unlocked<A, B>(_:_:)();
    v9 = v15;
    v10 = v16;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A1BC(v3, qword_1001794F0);
    sub_10000A2A4(v11, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v12, qword_100179508);
    sub_100039F58(2, v6, v9, v10);

    sub_10000C9D0(v6);
    sub_10000CA2C();
    swift_allocError();
    v14 = 29;
  }

  *v13 = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000A04F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1001127F8(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000A0598(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000A0614(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000A0698(unsigned __int8 a1, uint64_t *a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v27 = swift_slowAlloc();
    *v27 = 1;
    v28 = a2[3];
    v29 = a2[4];
    sub_10001EAB8(a2, v28);
    (*(v29 + 16))(&v47, v28, v29);
    sub_100001AB4(&qword_100177318, &qword_100123B20);
    if (swift_dynamicCast())
    {
      v30 = v50;
      v31 = a2[3];
      v32 = a2[4];
      sub_10001EAB8(a2, v31);
      (*(v32 + 32))(&v47, v31, v32);
      if (swift_dynamicCast())
      {
        v49 = v50;
        v33 = a2[3];
        v34 = a2[4];
        sub_10001EAB8(a2, v33);
        (*(v34 + 48))(&v47, v33, v34);
        if (swift_dynamicCast())
        {
          v36 = v49;
          v35 = v50;
          *(v27 + 2) = v30;
          *(v27 + 6) = v36;
          *(v27 + 10) = v35;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v27 length:14];
          goto LABEL_16;
        }
      }
    }
  }

  else if (a1 == 1)
  {
    v18 = swift_slowAlloc();
    *v18 = 1;
    v19 = a2[3];
    v20 = a2[4];
    sub_10001EAB8(a2, v19);
    (*(v20 + 16))(&v47, v19, v20);
    sub_100001AB4(&qword_100177318, &qword_100123B20);
    if (swift_dynamicCast())
    {
      v21 = v50;
      v22 = a2[3];
      v23 = a2[4];
      sub_10001EAB8(a2, v22);
      (*(v23 + 32))(&v47, v22, v23);
      if (swift_dynamicCast())
      {
        v49 = v50;
        v24 = a2[3];
        v25 = a2[4];
        sub_10001EAB8(a2, v24);
        (*(v25 + 48))(&v47, v24, v25);
        if (swift_dynamicCast())
        {
          v26 = v50;
          v18[1] = v21;
          v18[2] = v49;
          v18[3] = v26;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v18 length:8];
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    if (a1)
    {
      v39 = v6;
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v40._object = 0x800000010012BF00;
      v40._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v40);
      LOBYTE(v50) = a1;
      _print_unlocked<A, B>(_:_:)();
      v41 = v47;
      v42 = v48;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v43 = sub_10000A1BC(v39, qword_1001794F0);
      sub_10000A2A4(v43, v8);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v44, qword_100179508);
      sub_100039F58(2, v8, v41, v42);

      sub_10000C9D0(v8);
      v38 = 29;
      goto LABEL_23;
    }

    v9 = swift_slowAlloc();
    *v9 = 1;
    v10 = a2[3];
    v11 = a2[4];
    sub_10001EAB8(a2, v10);
    (*(v11 + 8))(&v47, v10, v11);
    sub_100001AB4(&qword_100177320, &qword_100123B28);
    if (swift_dynamicCast())
    {
      v12 = v50;
      v13 = a2[3];
      v14 = a2[4];
      sub_10001EAB8(a2, v13);
      (*(v14 + 24))(&v47, v13, v14);
      if (swift_dynamicCast())
      {
        v49 = v50;
        v15 = a2[3];
        v16 = a2[4];
        sub_10001EAB8(a2, v15);
        (*(v16 + 40))(&v47, v15, v16);
        if (swift_dynamicCast())
        {
          v17 = v50;
          *(v9 + 2) = v12;
          *(v9 + 3) = v49;
          *(v9 + 4) = v17;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v9 length:5];
LABEL_16:
          sub_10000CE78(a2);
          return a1 | 0x100u;
        }
      }
    }
  }

  v38 = 1;
LABEL_23:
  sub_10000CA2C();
  swift_allocError();
  *v45 = v38;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0xE000000000000000;
  swift_willThrow();
  return sub_10000CE78(a2);
}

uint64_t sub_1000A0D14(unsigned __int8 a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    goto LABEL_14;
  }

  if (a1 == 1)
  {
LABEL_9:
    if (a2 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = 6 * a2;
    if ((a2 * 6) >> 64 != (6 * a2) >> 63)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = (v13 + 2);
    if (!__OFADD__(v13, 2))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    if ((a2 & 0x8000000000000000) == 0)
    {
      if ((a2 * 12) >> 64 == (12 * a2) >> 63)
      {
        v11 = ((12 * a2) | 2);
LABEL_17:
        if ([objc_allocWithZone(NSMutableData) initWithLength:v11])
        {
          return a1 | 0x100u;
        }

        sub_10000CA2C();
        swift_allocError();
        v15 = 31;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    v3 = result;
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v16._object = 0x800000010012BF00;
    v16._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v16);
    v21 = a1;
    _print_unlocked<A, B>(_:_:)();
    a2 = v19;
    v4 = v20;
    if (qword_100173CB8 == -1)
    {
LABEL_21:
      v17 = sub_10000A1BC(v3, qword_1001794F0);
      sub_10000A2A4(v17, v11);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v18, qword_100179508);
      sub_100039F58(2, v11, a2, v4);

      sub_10000C9D0(v11);
      sub_10000CA2C();
      swift_allocError();
      v15 = 29;
LABEL_24:
      *v14 = v15;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0xE000000000000000;
      return swift_willThrow();
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = 3 * a2;
  if ((a2 * 3) >> 64 == (3 * a2) >> 63)
  {
    v11 = (v12 + 2);
    if (!__OFADD__(v12, 2))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000A0FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 != 8)
  {
    a2 = v9;
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v13._object = 0x800000010012BF00;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    v20 = v5;
    _print_unlocked<A, B>(_:_:)();
    v3 = v18;
    v5 = v19;
    if (qword_100173CB8 == -1)
    {
LABEL_6:
      v14 = sub_10000A1BC(a2, qword_1001794F0);
      sub_10000A2A4(v14, v11);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v15, qword_100179508);
      sub_100039F58(2, v11, v3, v5);

      sub_10000C9D0(v11);
      sub_10000CA2C();
      swift_allocError();
      v17 = 29;
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v11 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ([objc_allocWithZone(NSMutableData) initWithLength:a2 + 1])
  {
    return 8;
  }

  sub_10000CA2C();
  swift_allocError();
  v17 = 31;
LABEL_10:
  *v16 = v17;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t sub_1000A1244()
{
  result = qword_100177328;
  if (!qword_100177328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100177328);
  }

  return result;
}

uint64_t sub_1000A1290(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100177338, &qword_100123B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000A12F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_1000A0090(sub_1000A13B4, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_1000A1360(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000A13B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = **(v3 + 16);
  result = sub_1000A01AC(v10, a1, a2);
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2] = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioClassRange16bit(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_1000A1470()
{
  result = qword_100177340;
  if (!qword_100177340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177340);
  }

  return result;
}

unint64_t sub_1000A14C8()
{
  result = qword_100177348;
  if (!qword_100177348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177348);
  }

  return result;
}

unint64_t sub_1000A1520()
{
  result = qword_100177350;
  if (!qword_100177350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177350);
  }

  return result;
}

unint64_t sub_1000A1574()
{
  result = qword_100177358;
  if (!qword_100177358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177358);
  }

  return result;
}

unint64_t sub_1000A15C8()
{
  result = qword_100177360;
  if (!qword_100177360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177360);
  }

  return result;
}

unint64_t sub_1000A161C()
{
  result = qword_100177368;
  if (!qword_100177368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177368);
  }

  return result;
}

unint64_t sub_1000A1670()
{
  result = qword_100177370;
  if (!qword_100177370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177370);
  }

  return result;
}

unint64_t sub_1000A16C4()
{
  result = qword_100177378;
  if (!qword_100177378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177378);
  }

  return result;
}

unint64_t sub_1000A1718()
{
  result = qword_100177380;
  if (!qword_100177380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177380);
  }

  return result;
}

AUASDCore::CS46L06Interface::MemOffset_optional __swiftcall CS46L06Interface.MemOffset.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 18499)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 18756)
  {
    v2.value = AUASDCore_CS46L06Interface_MemOffset_id;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue == 21836)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000A17F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4843554C4944uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1000A1890()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4843554C4944uLL >> (16 * v1));
  return Hasher._finalize()();
}

unsigned __int16 *sub_1000A18E4@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 18756)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 21836)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 18499)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

void sub_1000A1940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v8 = [objc_allocWithZone(NSMutableData) initWithBytes:a1 length:8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x554C, v8, ObjectType, v9);
    if (v4)
    {

      swift_unknownObjectRelease();
LABEL_8:
      *a4 = v6;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    v12 = swift_getObjectType();
    sub_1000522EC(0x554C, v12, &type metadata for UInt64, v11, &v14);
    swift_unknownObjectRelease();
    if (v4)
    {
LABEL_7:

      goto LABEL_8;
    }

    if ((v15 & 1) == 0 && v14 != 0x4B4C4E554D454D48)
    {
      sub_10000CA2C();
      v6 = swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_7;
    }
  }
}

uint64_t sub_1000A1ABC()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  v26 = 0u;
  v25 = 13057;
  v7 = [objc_allocWithZone(NSMutableData) initWithBytes:&v25 length:64];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    type metadata accessor for C46L06HVCICommandResponse(0);
    v13 = v12;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v9 = v14;
      v15 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      sub_1000522EC(0x4843, ObjectType, v13, v15, v29);
      swift_unknownObjectRelease();
      if (v1)
      {
LABEL_7:

        return v9 & 1;
      }

      if ((v30 & 1) != 0 || WORD2(v29[0]) != 1)
      {
        goto LABEL_9;
      }

      if (BYTE1(v29[0]) == 51)
      {
        if (WORD3(v29[0]) == 3)
        {
          if (BYTE8(v29[0]) == 1)
          {
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v20 = sub_10000A1BC(v3, qword_1001794F0);
            sub_10000A2A4(v20, v6);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v21, qword_100179508);
            sub_100039AA0(2, v6, 0xD000000000000014, 0x800000010012EE60);
            v9 = 1;
LABEL_14:

            sub_10000C9D0(v6);
            return v9 & 1;
          }

LABEL_9:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v17 = sub_10000A1BC(v3, qword_1001794F0);
          sub_10000A2A4(v17, v6);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v18, qword_100179508);
          sub_100039AA0(2, v6, 0xD000000000000015, 0x800000010012EE40);
          v9 = 0;
          goto LABEL_14;
        }

        sub_10000CA2C();
        swift_allocError();
        v23 = 61;
      }

      else
      {
        sub_10000CA2C();
        swift_allocError();
        v23 = 1;
      }

      *v22 = v23;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_7;
    }

    v24[15] = 1;
    memset(v29, 0, sizeof(v29));
    v30 = 1;
    goto LABEL_9;
  }

  v9 = Strong;
  v10 = *(v2 + 24);
  v11 = swift_getObjectType();
  sub_100052AFC(0x4843, v7, v11, v10);
  if (!v1)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  return v9 & 1;
}

void sub_1000A21EC()
{
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  v11 = 0u;
  v10 = 2305;
  v2 = [objc_allocWithZone(NSMutableData) initWithBytes:&v10 length:64];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x4843, v2, ObjectType, v3);
    if (v1)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for C46L06HVCICommandResponse(0);
  v6 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    sub_1000522EC(0x4843, v8, v6, v7, v14);
    swift_unknownObjectRelease();
    if (!v1 && (v15 & 1) == 0 && WORD2(v14[0]) == 1 && (BYTE1(v14[0]) != 9 || WORD3(v14[0]) != 4))
    {
      sub_10000CA2C();
      swift_allocError();
      *v9 = 1;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 1;
  }
}

void sub_1000A23E4()
{
  v13 = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v12 = 3073;
  WORD2(v13) = 8;
  BYTE7(v13) = 1;
  BYTE9(v13) = 1;
  BYTE11(v13) = 1;
  v2 = [objc_allocWithZone(NSMutableData) initWithBytes:&v12 length:64];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x4843, v2, ObjectType, v3);
    if (v1)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for C46L06HVCICommandResponse(0);
  v6 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    sub_1000522EC(0x4843, v8, v6, v7, v16);
    swift_unknownObjectRelease();
    if (!v1 && (v17 & 1) == 0 && WORD2(v16[0]) == 1)
    {
      if (BYTE1(v16[0]) == 12 && WORD3(v16[0]) == 4)
      {
        v10[0] = *(v16 + 8);
        v10[1] = *(&v16[1] + 8);
        v10[2] = *(&v16[2] + 8);
        v11 = *(&v16[3] + 1);
        sub_1000A2638(v10);
      }

      else
      {
        sub_10000CA2C();
        swift_allocError();
        *v9 = 1;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0xE000000000000000;
        swift_willThrow();
      }
    }
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v17 = 1;
  }
}

uint64_t CS46L06Interface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1000A2934()
{
  result = qword_100177388;
  if (!qword_100177388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177388);
  }

  return result;
}

uint64_t sub_1000A29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  type metadata accessor for CS46L06Interface();
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 24) = a4;
  swift_unknownObjectWeakAssign();
  if (!swift_unknownObjectWeakLoadStrong() || (v9 = *(v8 + 24), ObjectType = swift_getObjectType(), sub_1000522EC(0x4944, ObjectType, &type metadata for UInt64, v9, &v12), swift_unknownObjectRelease(), (v13 & 1) != 0) || (sub_1000522EC(0x554C, a3, &type metadata for UInt64, a4, &v12), (v13 & 1) != 0))
  {

    return 0;
  }

  else
  {
    *(v8 + 32) = v12 == 0x4B434F4C4D454D48;
  }

  return v8;
}

AUASDCore::tADCControlRequestParameterBlockLayout __swiftcall USBDescriptorControl.pbLayout()()
{
  v1 = v0;
  v2 = (v0 >> 18) & 0x3C | (v0 >> 6);
  v3 = HIWORD(v0);
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
      v3 = HIWORD(v1) & 0xF;
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t USBDescriptorControl.label.getter(int a1)
{
  v17 = type metadata accessor for Mirror();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = &type metadata for USBDescriptorControl;
  BYTE2(v18) = BYTE2(a1);
  LOWORD(v18) = a1;
  Mirror.init(reflecting:)();
  v6 = Mirror.children.getter();
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v11 == result)
  {
    v13 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v15 = v18;
      v14 = v19;
      sub_10000CE78(v20);
      if (v14)
      {
        (*(v2 + 8))(v5, v17);
        return v15;
      }
    }

    (*(v2 + 8))(v5, v17);

    return 0x6E776F6E6B6E75;
  }

  __break(1u);
  return result;
}

void sub_1000A2FA8(_BYTE *a1@<X0>, __int16 a2@<W1>, _OWORD *a3@<X8>)
{
  LOBYTE(v4) = a2;
  v277 = a3;
  v6 = HIBYTE(a2);
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v276 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6 - 25;
  v12 = v372;
  switch(v11)
  {
    case 0:
      v275 = v9;
      v13 = v4 | 0x1900;
      v14 = sub_1000A60F8(a1, v4 | 0x1900u);
      if (v15 >> 60 == 15)
      {
        goto LABEL_323;
      }

      v16 = v14;
      v4 = v15;
      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v17 != 2)
        {
          *&v279[6] = 0;
          *v279 = 0;
          sub_1000D5D10(v279, v279, 12);
          if (!v3)
          {
            v171 = sub_1001128D0(v279, 12);
            v274 = v172;
            v173 = sub_1000A61BC(v171, v172, 1, sub_10010C528);
            sub_10007676C(v171, v274);
            if (*(v173 + 16))
            {
              *&v282 = *(v173 + 32);
              DWORD2(v282) = *(v173 + 40);
              goto LABEL_211;
            }

            goto LABEL_311;
          }

          goto LABEL_239;
        }

        v14 = *(v14 + 16);
        v142 = *(v16 + 24);
LABEL_206:
        sub_1000A74F4(v14, v142, &v282);
        if (!v3)
        {
          goto LABEL_212;
        }

        goto LABEL_239;
      }

      if (!v17)
      {
        *v279 = v14;
        *&v279[8] = v15;
        v279[10] = BYTE2(v15);
        v279[11] = BYTE3(v15);
        v279[12] = BYTE4(v15);
        v279[13] = BYTE5(v15);
        sub_1000D5D10(v279, &v279[BYTE6(v15)], 12);
        if (!v3)
        {
          v18 = sub_1001128D0(v279, 12);
          v20 = v19;
          v274 = sub_1000A61BC(v18, v19, 1, sub_10010C528);
          sub_10007676C(v18, v20);
          if (*(v274 + 16))
          {
            *&v282 = *(v274 + 32);
            DWORD2(v282) = *(v274 + 40);
LABEL_211:

LABEL_212:
            sub_100076B24(v16, v4);
            sub_1000E51AC(v282, DWORD2(v282), a1, v13, v287);
            v154 = sub_1000A9B38();
            v155 = swift_allocObject();
            v174 = v287[5];
            *(v155 + 80) = v287[4];
            *(v155 + 96) = v174;
            *(v155 + 112) = v288;
            v175 = v287[1];
            *(v155 + 16) = v287[0];
            *(v155 + 32) = v175;
            v176 = v287[3];
            *(v155 + 48) = v287[2];
            *(v155 + 64) = v176;
            v166 = &type metadata for InputTerminal;
            goto LABEL_273;
          }

          goto LABEL_310;
        }

LABEL_239:
        sub_100076B24(v16, v4);
        return;
      }

      v14 = v14;
      v142 = v16 >> 32;
      if (v16 >> 32 >= v16)
      {
        goto LABEL_206;
      }

      goto LABEL_299;
    case 1:
      v275 = v9;
      v77 = v4 | 0x1A00;
      v78 = sub_1000A60F8(a1, v77);
      if (v79 >> 60 == 15)
      {
        goto LABEL_327;
      }

      v16 = v78;
      v4 = v79;
      v80 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v80 != 2)
        {
          *&v279[6] = 0;
          *v279 = 0;
          sub_1000D5D10(v279, v279, 9);
          if (v3)
          {
            goto LABEL_239;
          }

          v177 = sub_1001128D0(v279, 9);
          v179 = v178;
          v84 = sub_1000A61BC(v177, v178, 1, sub_10010C624);
          sub_10007676C(v177, v179);
          if (!*(v84 + 16))
          {
LABEL_312:
            __break(1u);
            goto LABEL_313;
          }

LABEL_218:
          *&v282 = *(v84 + 32);
          BYTE8(v282) = *(v84 + 40);

LABEL_219:
          sub_100076B24(v16, v4);
          sub_1000E5310(v282, BYTE8(v282), a1, v77, v289);
          v154 = sub_1000A9A50();
          v155 = swift_allocObject();
          v180 = v289[3];
          *(v155 + 48) = v289[2];
          *(v155 + 64) = v180;
          v181 = v289[5];
          *(v155 + 80) = v289[4];
          *(v155 + 96) = v181;
          v182 = v289[0];
          v183 = v289[1];
LABEL_272:
          *(v155 + 16) = v182;
          *(v155 + 32) = v183;
          v166 = &type metadata for OutputTerminal;
          goto LABEL_273;
        }

        v78 = *(v78 + 16);
        v143 = *(v16 + 24);
LABEL_214:
        sub_1000A7588(v78, v143, &v282);
        if (v3)
        {
          goto LABEL_239;
        }

        goto LABEL_219;
      }

      if (!v80)
      {
        *v279 = v78;
        *&v279[8] = v79;
        v279[10] = BYTE2(v79);
        v279[11] = BYTE3(v79);
        v279[12] = BYTE4(v79);
        v279[13] = BYTE5(v79);
        sub_1000D5D10(v279, &v279[BYTE6(v79)], 9);
        if (v3)
        {
          goto LABEL_239;
        }

        v81 = sub_1001128D0(v279, 9);
        v83 = v82;
        v84 = sub_1000A61BC(v81, v82, 1, sub_10010C624);
        v9 = sub_10007676C(v81, v83);
        if (!*(v84 + 16))
        {
          __break(1u);
LABEL_71:
          v21 = v9;
          sub_1000EF600(a1, v4 | 0x1F00, v302);
          if (v3)
          {
            return;
          }

          sub_1000E6064(v303);
          sub_1000AA19C(v302);
          v207 = sub_10007D34C();
          v208 = swift_allocObject();
          v224 = v303[3];
          *(v208 + 48) = v303[2];
          *(v208 + 64) = v224;
          v225 = v303[5];
          *(v208 + 80) = v303[4];
          *(v208 + 96) = v225;
          v217 = v303[0];
          v218 = v303[1];
LABEL_264:
          *(v208 + 16) = v217;
          *(v208 + 32) = v218;
          v50 = &type metadata for ExtensionUnit;
          goto LABEL_277;
        }

        goto LABEL_218;
      }

      v78 = v78;
      v143 = v16 >> 32;
      if (v16 >> 32 >= v16)
      {
        goto LABEL_214;
      }

      goto LABEL_300;
    case 2:
      v21 = v9;
      sub_1000EE9C4(a1, v4 | 0x1B00, v290);
      if (v3)
      {
        return;
      }

      v62 = *(v291 + 16);
      v63 = (v291 + 32);
      while (v62)
      {
        v64 = *v63++;
        --v62;
        if (v64 == v290[3])
        {
          sub_1000AA2EC(v290);
          goto LABEL_99;
        }
      }

      sub_1000E5400(v292);
      sub_1000AA2EC(v290);
      v207 = sub_100023230();
      v106 = swift_allocObject();
      v267 = v292[3];
      *(v106 + 48) = v292[2];
      *(v106 + 64) = v267;
      *(v106 + 80) = v292[4];
      *(v106 + 96) = v293;
      v268 = v292[0];
      v269 = v292[1];
      goto LABEL_290;
    case 3:
      v21 = v9;
      sub_1000EED70(a1, v4 | 0x1C00, v294);
      if (v3)
      {
        return;
      }

      sub_1000E555C(v295);
      sub_1000AA298(v294);
      v207 = sub_100026850();
      v208 = swift_allocObject();
      v228 = v295[3];
      *(v208 + 48) = v295[2];
      *(v208 + 64) = v228;
      *(v208 + 80) = v296;
      v211 = v295[0];
      v210 = v295[1];
      goto LABEL_265;
    case 4:
      v21 = v9;
      sub_1000EF0B0(a1, v4 | 0x1D00, v297);
      if (v3)
      {
        return;
      }

      sub_1000E5664(v298);
      sub_1000AA244(v297);
      v207 = sub_1000A99A4();
      v208 = swift_allocObject();
      v229 = v298[3];
      *(v208 + 48) = v298[2];
      *(v208 + 64) = v229;
      *(v208 + 80) = v299;
      v230 = v298[1];
      v231 = v298[0];
      goto LABEL_268;
    case 5:
      v21 = v9;
      sub_1000EF264(a1, v4 | 0x1E00, v300);
      if (v3)
      {
        return;
      }

      sub_1000E5854(v301);
      sub_1000AA1F0(v300);
      v207 = sub_10007D3F0();
      v208 = swift_allocObject();
      v221 = v301[3];
      *(v208 + 48) = v301[2];
      *(v208 + 64) = v221;
      *(v208 + 80) = v301[4];
      v214 = v301[0];
      v213 = v301[1];
      goto LABEL_263;
    case 6:
      goto LABEL_71;
    case 8:
      v275 = v9;
      v85 = sub_1000A60F8(a1, v4 | 0x2100u);
      if (v86 >> 60 == 15)
      {
        goto LABEL_328;
      }

      v53 = v85;
      v54 = v86;
      v87 = v86 >> 62;
      if ((v86 >> 62) > 1)
      {
        if (v87 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          sub_1000D5D10(&v282, &v282, 17);
          if (!v3)
          {
            v184 = sub_1001128D0(&v282, 17);
            v186 = v185;
            v274 = sub_1000A61BC(v184, v185, 1, sub_10010AA24);
            sub_10007676C(v184, v186);
            v9 = v274;
            if (!*(v274 + 16))
            {
LABEL_313:
              __break(1u);
              goto LABEL_314;
            }

LABEL_225:
            *v279 = *(v9 + 32);
            v279[16] = *(v9 + 48);

LABEL_226:
            sub_100076B24(v53, v54);
            v355 = *v279;
            v356 = v279[16];
            v357 = a1;
            v358 = v4;
            v359 = 33;
            sub_10008B4C8(v304);
            v21 = v275;
            v207 = sub_1000A9B38();
            v208 = swift_allocObject();
            v187 = v304[5];
            *(v208 + 80) = v304[4];
            *(v208 + 96) = v187;
            *(v208 + 112) = v305;
            v188 = v304[1];
            *(v208 + 16) = v304[0];
            *(v208 + 32) = v188;
            v245 = v304[3];
            v189 = v301 + 9;
LABEL_234:
            v248 = *(v189 + 255);
            goto LABEL_267;
          }

LABEL_260:
          sub_100076B24(v53, v54);
          return;
        }

        v85 = *(v85 + 16);
        v144 = *(v53 + 24);
LABEL_221:
        sub_1000A761C(v85, v144, v279);
        if (!v3)
        {
          goto LABEL_226;
        }

        goto LABEL_260;
      }

      if (!v87)
      {
        *&v282 = v85;
        WORD4(v282) = v86;
        BYTE10(v282) = BYTE2(v86);
        BYTE11(v282) = BYTE3(v86);
        BYTE12(v282) = BYTE4(v86);
        BYTE13(v282) = BYTE5(v86);
        sub_1000D5D10(&v282, &v282 + BYTE6(v86), 17);
        if (!v3)
        {
          v88 = sub_1001128D0(&v282, 17);
          v90 = v89;
          v274 = sub_1000A61BC(v88, v89, 1, sub_10010AA24);
          sub_10007676C(v88, v90);
          v9 = v274;
          if (!*(v274 + 16))
          {
            __break(1u);
LABEL_79:
            v21 = v9;
            v91 = sub_100092134(a1, v4 | 0x2A00u);
            if (v3)
            {
              return;
            }

            sub_100090628(v91 & 0xFFFFFFFFFFFFFFLL, v92, v93, v94, v319);

            v207 = sub_1000377B8();
            v226 = swift_allocObject();
            v227 = v319[1];
            *(v226 + 16) = v319[0];
            *(v226 + 32) = v227;
            *(v226 + 48) = v319[2];
            *(v226 + 64) = v320;
            *&v285[0] = v226;
            *(v285 + 8) = *v279;
            v50 = &type metadata for ClockSelector;
            goto LABEL_278;
          }

          goto LABEL_225;
        }

        goto LABEL_260;
      }

      v85 = v85;
      v144 = v53 >> 32;
      if (v53 >> 32 >= v53)
      {
        goto LABEL_221;
      }

      goto LABEL_301;
    case 9:
      v275 = v9;
      v107 = v4 | 0x2200;
      v108 = sub_1000A60F8(a1, v4 | 0x2200u);
      if (v109 >> 60 == 15)
      {
        goto LABEL_331;
      }

      v16 = v108;
      v4 = v109;
      v110 = v109 >> 62;
      if ((v109 >> 62) > 1)
      {
        if (v110 != 2)
        {
          *&v279[6] = 0;
          *v279 = 0;
          sub_1000D5D10(v279, v279, 12);
          if (v3)
          {
            goto LABEL_239;
          }

          v250 = sub_1001128D0(v279, 12);
          v252 = v251;
          v274 = sub_1000A61BC(v250, v251, 1, sub_10010AB1C);
          sub_10007676C(v250, v252);
          v9 = v274;
          if (!*(v274 + 16))
          {
LABEL_315:
            __break(1u);
            goto LABEL_316;
          }

LABEL_270:
          *&v282 = *(v9 + 32);
          DWORD2(v282) = *(v9 + 40);

LABEL_271:
          sub_100076B24(v16, v4);
          sub_10008BD40(v282, DWORD2(v282), a1, v107, v306);
          v154 = sub_1000A9A50();
          v155 = swift_allocObject();
          v253 = v306[3];
          *(v155 + 48) = v306[2];
          *(v155 + 64) = v253;
          v254 = v306[5];
          *(v155 + 80) = v306[4];
          *(v155 + 96) = v254;
          v182 = v306[0];
          v183 = v306[1];
          goto LABEL_272;
        }

        v108 = *(v108 + 16);
        v146 = *(v16 + 24);
LABEL_236:
        sub_1000A76B0(v108, v146, &v282);
        if (v3)
        {
          goto LABEL_239;
        }

        goto LABEL_271;
      }

      if (!v110)
      {
        *v279 = v108;
        *&v279[8] = v109;
        v279[10] = BYTE2(v109);
        v279[11] = BYTE3(v109);
        v279[12] = BYTE4(v109);
        v279[13] = BYTE5(v109);
        sub_1000D5D10(v279, &v279[BYTE6(v109)], 12);
        if (v3)
        {
          goto LABEL_239;
        }

        v111 = sub_1001128D0(v279, 12);
        v113 = v112;
        v274 = sub_1000A61BC(v111, v112, 1, sub_10010AB1C);
        sub_10007676C(v111, v113);
        v9 = v274;
        if (!*(v274 + 16))
        {
          __break(1u);
LABEL_106:
          v21 = v9;
          sub_1000E2994(a1, v4 | 0x3000, v324);
          if (v3)
          {
            return;
          }

          sub_1000D81B0(v325);
          sub_1000A9FFC(v324);
          v207 = sub_100023230();
          v208 = swift_allocObject();
          v232 = v325[3];
          *(v208 + 48) = v325[2];
          *(v208 + 64) = v232;
          *(v208 + 80) = v325[4];
          *(v208 + 96) = v326;
          v233 = v325[1];
          *(v208 + 16) = v325[0];
          *(v208 + 32) = v233;
          v50 = &type metadata for MixerUnit;
          goto LABEL_277;
        }

        goto LABEL_270;
      }

      v108 = v108;
      v146 = v16 >> 32;
      if (v16 >> 32 >= v16)
      {
        goto LABEL_236;
      }

      goto LABEL_303;
    case 10:
      v21 = v9;
      sub_100091464(a1, v4 | 0x2300, v307);
      if (v3)
      {
        return;
      }

      v103 = *(v308 + 16);
      v104 = (v308 + 32);
      while (v103)
      {
        v105 = *v104++;
        --v103;
        if (v105 == v307[3])
        {
          sub_1000AA148(v307);
LABEL_99:
          v106 = 0;
          v50 = 0;
          v207 = 0;
          goto LABEL_291;
        }
      }

      sub_10008CDF0(v309);
      sub_1000AA148(v307);
      v207 = sub_100023230();
      v106 = swift_allocObject();
      v270 = v309[3];
      *(v106 + 48) = v309[2];
      *(v106 + 64) = v270;
      *(v106 + 80) = v309[4];
      *(v106 + 96) = v310;
      v268 = v309[0];
      v269 = v309[1];
LABEL_290:
      *(v106 + 16) = v268;
      *(v106 + 32) = v269;
      v50 = &type metadata for MixerUnit;
LABEL_291:
      v285[0] = v106;
      *&v285[1] = 0;
      goto LABEL_278;
    case 11:
      goto LABEL_30;
    case 12:
      v72 = v9;
      v73 = sub_1000A60F8(a1, v4 | 0x2500u);
      if (v74 >> 60 == 15)
      {
        goto LABEL_326;
      }

      v53 = v73;
      v54 = v74;
      v75 = v74 >> 62;
      if ((v74 >> 62) > 1)
      {
        if (v75 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          v76 = &v282;
          goto LABEL_202;
        }

        v73 = *(v73 + 16);
        v141 = *(v53 + 24);
LABEL_200:
        sub_1000A7744(v73, v141, v279);
LABEL_203:
        if (v3)
        {
          goto LABEL_260;
        }

        sub_100076B24(v53, v54);
        v360 = *v279;
        v361 = v279[4];
        v362 = a1;
        v363 = v4;
        v364 = 37;
        v365 = *&v279[8];
        v366 = v279[16];
        sub_10008DE14(v313);
        v21 = v72;
        sub_1000AA0F4(&v360);
        v207 = sub_1000A99A4();
        v208 = swift_allocObject();
        v230 = v313[1];
        v249 = v313[3];
        *(v208 + 48) = v313[2];
        *(v208 + 64) = v249;
        *(v208 + 80) = v314;
        v231 = v313[0];
        goto LABEL_268;
      }

      if (!v75)
      {
        *&v282 = v73;
        WORD4(v282) = v74;
        BYTE10(v282) = BYTE2(v74);
        BYTE11(v282) = BYTE3(v74);
        BYTE12(v282) = BYTE4(v74);
        BYTE13(v282) = BYTE5(v74);
        v76 = (&v282 + BYTE6(v74));
LABEL_202:
        sub_10008D824(&v282, v76, v279);
        goto LABEL_203;
      }

      v73 = v73;
      v141 = v53 >> 32;
      if (v53 >> 32 >= v53)
      {
        goto LABEL_200;
      }

      goto LABEL_298;
    case 15:
      v21 = v9;
      sub_100091D7C(a1, v4 | 0x2800, v315);
      if (v3)
      {
        return;
      }

      sub_10008E994(v317);
      sub_1000AA0A0(v315);
      v207 = sub_10007D34C();
      v208 = swift_allocObject();
      v219 = v317[3];
      *(v208 + 48) = v317[2];
      *(v208 + 64) = v219;
      v220 = v317[5];
      *(v208 + 80) = v317[4];
      *(v208 + 96) = v220;
      v217 = v317[0];
      v218 = v317[1];
      goto LABEL_264;
    case 16:
      v275 = v9;
      v22 = v4 | 0x2900;
      v23 = sub_1000A60F8(a1, v4 | 0x2900u);
      if (v24 >> 60 == 15)
      {
        __break(1u);
        goto LABEL_319;
      }

      v16 = v23;
      v4 = v24;
      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v25 != 2)
        {
          *&v279[6] = 0;
          *v279 = 0;
          sub_1000D5D10(v279, v279, 8);
          if (v3)
          {
            goto LABEL_239;
          }

          v150 = sub_1001128D0(v279, 8);
          v152 = v151;
          v274 = sub_1000A61BC(v150, v151, 1, sub_10010B008);
          sub_10007676C(v150, v152);
          v9 = v274;
          if (!*(v274 + 16))
          {
            goto LABEL_307;
          }

LABEL_164:
          v153 = *(v9 + 32);

          sub_100076B24(v16, v4);
          *&v282 = v153;
LABEL_165:
          sub_10008F77C(v282, a1, v22, v318);
          v154 = sub_10002C514();
          v155 = swift_allocObject();
          v156 = v318[1];
          *(v155 + 16) = v318[0];
          *(v155 + 32) = v156;
          v157 = v318[2];
          v158 = v318[3];
LABEL_180:
          *(v155 + 48) = v157;
          *(v155 + 64) = v158;
          v166 = &type metadata for ClockSource;
          goto LABEL_273;
        }

        v23 = *(v23 + 16);
        v135 = *(v16 + 24);
      }

      else
      {
        if (!v25)
        {
          *v279 = v23;
          *&v279[8] = v24;
          v279[10] = BYTE2(v24);
          v279[11] = BYTE3(v24);
          v279[12] = BYTE4(v24);
          v279[13] = BYTE5(v24);
          sub_1000D5D10(v279, &v279[BYTE6(v24)], 8);
          if (v3)
          {
            goto LABEL_239;
          }

          v26 = sub_1001128D0(v279, 8);
          v28 = v27;
          v274 = sub_1000A61BC(v26, v27, 1, sub_10010B008);
          sub_10007676C(v26, v28);
          v9 = v274;
          if (!*(v274 + 16))
          {
            __break(1u);
LABEL_18:
            v275 = v9;
            v29 = v4 | 0x3800;
            v30 = sub_1000A60F8(a1, v29);
            if (v31 >> 60 != 15)
            {
              v16 = v30;
              v4 = v31;
              v32 = v31 >> 62;
              if ((v31 >> 62) > 1)
              {
                if (v32 != 2)
                {
                  *&v279[6] = 0;
                  *v279 = 0;
                  sub_1000D5D10(v279, v279, 11);
                  if (v3)
                  {
                    goto LABEL_239;
                  }

                  v159 = sub_1001128D0(v279, 11);
                  v161 = v160;
                  v274 = sub_1000A61BC(v159, v160, 1, sub_10010C304);
                  sub_10007676C(v159, v161);
                  v9 = v274;
                  if (!*(v274 + 16))
                  {
                    goto LABEL_308;
                  }

LABEL_171:
                  v162 = *(v9 + 36);
                  v163 = *(v9 + 37);
                  v272 = *(v9 + 41);
                  LODWORD(v273) = v162;
                  v164 = *(v9 + 32);

                  sub_100076B24(v16, v4);
                  LODWORD(v282) = v164;
                  BYTE4(v282) = v273;
                  *(&v282 + 5) = v163;
                  *(&v282 + 9) = v272;
LABEL_172:
                  *v279 = v282;
                  v279[4] = BYTE4(v282);
                  *&v279[5] = *(&v282 + 5);
                  *&v279[9] = *(&v282 + 9);
                  sub_1000D9A70(*v279, *&v279[8], a1, v29, v340);
                  v154 = sub_1000A9C98();
                  v155 = swift_allocObject();
                  v165 = v340[1];
                  *(v155 + 16) = v340[0];
                  *(v155 + 32) = v165;
                  *(v155 + 48) = v340[2];
                  *(v155 + 64) = v341;
                  v166 = &type metadata for ClockMultiplier;
LABEL_273:
                  *&v285[0] = v155;
                  *(&v285[1] + 1) = v166;
                  v286 = v154;
                  v21 = v275;
                  goto LABEL_279;
                }

                v30 = *(v30 + 16);
                v136 = *(v16 + 24);
LABEL_167:
                sub_1000A7B50(v30, v136, &v282);
                if (v3)
                {
                  goto LABEL_239;
                }

                sub_100076B24(v16, v4);
                goto LABEL_172;
              }

              if (!v32)
              {
                *v279 = v30;
                *&v279[8] = v31;
                v279[10] = BYTE2(v31);
                v279[11] = BYTE3(v31);
                v279[12] = BYTE4(v31);
                v279[13] = BYTE5(v31);
                sub_1000D5D10(v279, &v279[BYTE6(v31)], 11);
                if (v3)
                {
                  goto LABEL_239;
                }

                v33 = sub_1001128D0(v279, 11);
                v35 = v34;
                v274 = sub_1000A61BC(v33, v34, 1, sub_10010C304);
                sub_10007676C(v33, v35);
                v9 = v274;
                if (!*(v274 + 16))
                {
                  __break(1u);
LABEL_24:
                  v275 = v9;
                  v36 = v4 | 0x3600;
                  v37 = sub_1000A60F8(a1, v4 | 0x3600u);
                  if (v38 >> 60 != 15)
                  {
                    v16 = v37;
                    v4 = v38;
                    v39 = v38 >> 62;
                    if ((v38 >> 62) > 1)
                    {
                      if (v39 == 2)
                      {
                        v37 = *(v37 + 16);
                        v137 = *(v16 + 24);
                        goto LABEL_174;
                      }

                      *&v279[6] = 0;
                      *v279 = 0;
                      sub_1000D5D10(v279, v279, 12);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      v167 = sub_1001128D0(v279, 12);
                      v169 = v168;
                      v274 = sub_1000A61BC(v167, v168, 1, sub_10010C0B0);
                      sub_10007676C(v167, v169);
                      v9 = v274;
                      if (*(v274 + 16))
                      {
LABEL_178:
                        *&v282 = *(v9 + 32);
                        DWORD2(v282) = *(v9 + 40);

LABEL_179:
                        sub_100076B24(v16, v4);
                        *v279 = v282;
                        v279[4] = BYTE4(v282);
                        *&v279[5] = *(&v282 + 5);
                        v279[9] = BYTE9(v282);
                        *&v279[10] = WORD5(v282);
                        sub_1000D8F78(*v279, *&v279[8], a1, v36, v336);
                        v154 = sub_10002C514();
                        v155 = swift_allocObject();
                        v170 = v336[1];
                        *(v155 + 16) = v336[0];
                        *(v155 + 32) = v170;
                        v157 = v336[2];
                        v158 = v336[3];
                        goto LABEL_180;
                      }

LABEL_309:
                      __break(1u);
LABEL_310:
                      __break(1u);
LABEL_311:
                      __break(1u);
                      goto LABEL_312;
                    }

                    if (!v39)
                    {
                      *v279 = v37;
                      *&v279[8] = v38;
                      v279[10] = BYTE2(v38);
                      v279[11] = BYTE3(v38);
                      v279[12] = BYTE4(v38);
                      v279[13] = BYTE5(v38);
                      sub_1000D5D10(v279, &v279[BYTE6(v38)], 12);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      v40 = sub_1001128D0(v279, 12);
                      v42 = v41;
                      v274 = sub_1000A61BC(v40, v41, 1, sub_10010C0B0);
                      sub_10007676C(v40, v42);
                      v9 = v274;
                      if (!*(v274 + 16))
                      {
                        __break(1u);
LABEL_30:
                        v21 = v9;
                        v43 = sub_100091820(a1, v4 | 0x2400u);
                        if (v3)
                        {
                          return;
                        }

                        sub_10008D4BC(v43 & 0xFFFFFFFFFFFFFFLL, v44, v45, v46, v311);

                        v207 = sub_100026850();
                        v47 = swift_allocObject();
                        v48 = v311[3];
                        *(v47 + 48) = v311[2];
                        *(v47 + 64) = v48;
                        *(v47 + 80) = v312;
                        v49 = v311[1];
                        *(v47 + 16) = v311[0];
                        *(v47 + 32) = v49;
                        *&v285[0] = v47;
                        *(v285 + 8) = *v279;
                        v50 = &type metadata for SelectorUnit;
                        goto LABEL_278;
                      }

                      goto LABEL_178;
                    }

                    v37 = v37;
                    v137 = v16 >> 32;
                    if (v16 >> 32 >= v16)
                    {
LABEL_174:
                      sub_1000A7ABC(v37, v137, &v282);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      goto LABEL_179;
                    }

                    goto LABEL_294;
                  }

                  goto LABEL_320;
                }

                goto LABEL_171;
              }

              v30 = v30;
              v136 = v16 >> 32;
              if (v16 >> 32 >= v16)
              {
                goto LABEL_167;
              }

LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
              goto LABEL_295;
            }

LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          goto LABEL_164;
        }

        v23 = v23;
        v135 = v16 >> 32;
        if (v16 >> 32 < v16)
        {
          __break(1u);
          goto LABEL_293;
        }
      }

      sub_1000A77D8(v23, v135, &v282);
      if (v3)
      {
        goto LABEL_239;
      }

      sub_100076B24(v16, v4);
      goto LABEL_165;
    case 17:
      goto LABEL_79;
    case 21:
      v275 = v9;
      v95 = sub_1000A60F8(a1, v4 | 0x2E00u);
      if (v96 >> 60 == 15)
      {
        goto LABEL_329;
      }

      v53 = v95;
      v54 = v96;
      v97 = v96 >> 62;
      if ((v96 >> 62) > 1)
      {
        if (v97 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          sub_1000D5D10(&v282, &v282, 20);
          if (v3)
          {
            goto LABEL_260;
          }

          v190 = sub_1001128D0(&v282, 20);
          v192 = v191;
          v274 = sub_1000A61BC(v190, v191, 1, sub_10010BC54);
          sub_10007676C(v190, v192);
          v9 = v274;
          if (!*(v274 + 16))
          {
LABEL_314:
            __break(1u);
            goto LABEL_315;
          }

LABEL_232:
          *v279 = *(v9 + 32);
          *&v279[16] = *(v9 + 48);

          goto LABEL_233;
        }

        v95 = *(v95 + 16);
        v145 = *(v53 + 24);
LABEL_228:
        sub_1000A786C(v95, v145, v279);
        if (v3)
        {
          goto LABEL_260;
        }

LABEL_233:
        sub_100076B24(v53, v54);
        v367 = *v279;
        v368 = *&v279[16];
        v369 = a1;
        v370 = v4;
        v371 = 46;
        sub_1000D7934(v321);
        v21 = v275;
        v207 = sub_1000A9B38();
        v208 = swift_allocObject();
        v193 = v321[5];
        *(v208 + 80) = v321[4];
        *(v208 + 96) = v193;
        *(v208 + 112) = v322;
        v194 = v321[1];
        *(v208 + 16) = v321[0];
        *(v208 + 32) = v194;
        v245 = v321[3];
        v189 = v316;
        goto LABEL_234;
      }

      if (v97)
      {
        v95 = v95;
        v145 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
          goto LABEL_304;
        }

        goto LABEL_228;
      }

      *&v282 = v95;
      WORD4(v282) = v96;
      BYTE10(v282) = BYTE2(v96);
      BYTE11(v282) = BYTE3(v96);
      BYTE12(v282) = BYTE4(v96);
      BYTE13(v282) = BYTE5(v96);
      sub_1000D5D10(&v282, &v282 + BYTE6(v96), 20);
      if (v3)
      {
        goto LABEL_260;
      }

      v12 = sub_1001128D0(&v282, 20);
      v99 = v98;
      v274 = sub_1000A61BC(v12, v98, 1, sub_10010BC54);
      sub_10007676C(v12, v99);
      v9 = v274;
      if (*(v274 + 16))
      {
        goto LABEL_232;
      }

      __break(1u);
LABEL_87:
      v100 = v9;
      v101 = sub_1000A60F8(a1, v4 | 0x5100u);
      if (v102 >> 60 == 15)
      {
        goto LABEL_330;
      }

      v53 = v101;
      v54 = v102;
      sub_1000A72B4(v101, v102, v279);
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v53, v54);
      *(v12 + 16) = *v279;
      v401 = *&v279[16];
      v402 = a1;
      v403 = v4;
      v404 = 81;
      v405 = v280;
      sub_1000FF350(v352);
      sub_1000A99FC(v400);
      v238 = sub_1000A9A50();
      v239 = swift_allocObject();
      v240 = v352[3];
      v239[3] = v352[2];
      v239[4] = v240;
      v241 = v352[5];
      v239[5] = v352[4];
      v239[6] = v241;
      v242 = v352[1];
      v239[1] = v352[0];
      v239[2] = v242;
      *&v285[0] = v239;
      *(&v285[1] + 1) = &type metadata for OutputTerminal;
      v286 = v238;
      v21 = v100;
LABEL_279:
      sub_1000A9878(v285, &v282);
      if (!v284)
      {
        sub_1000A98E8(&v282);
        goto LABEL_283;
      }

      sub_10001EFE4(&v282, v279);
      v260 = v280;
      sub_10001EAB8(v279, v280);
      if ((*(*(&v260 + 1) + 16))(v260, *(&v260 + 1)))
      {
        sub_10000CE78(v279);
LABEL_283:
        v261 = v285[1];
        v262 = v277;
        *v277 = v285[0];
        v262[1] = v261;
        *(v262 + 4) = v286;
        return;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v263 = sub_10000A1BC(v21, qword_1001794F0);
      sub_10000A2A4(v263, v276);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v264 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v264, qword_100179508);
      v265 = v276;
      sub_100039F58(1, v276, 0x2064696C61766E49, 0xEE00797469746E65);
      sub_10000C9D0(v265);
      sub_1000A98E8(v285);
      v266 = v277;
      *v277 = 0u;
      v266[1] = 0u;
      *(v266 + 4) = 0;
      sub_10000CE78(v279);
      return;
    case 22:
      v275 = v9;
      v114 = sub_1000A60F8(a1, v4 | 0x2F00u);
      if (v115 >> 60 == 15)
      {
        goto LABEL_332;
      }

      v53 = v114;
      v54 = v115;
      v116 = v115 >> 62;
      if ((v115 >> 62) > 1)
      {
        if (v116 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          sub_1000D5D10(&v282, &v282, 19);
          if (v3)
          {
            goto LABEL_260;
          }

          v195 = sub_1001128D0(&v282, 19);
          v274 = v196;
          v273 = sub_1000A61BC(v195, v196, 1, sub_10010BD50);
          sub_10007676C(v195, v274);
          v9 = v273;
          if (!*(v273 + 16))
          {
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
          }

LABEL_245:
          *v279 = *(v9 + 32);
          *&v279[15] = *(v9 + 47);

          goto LABEL_246;
        }

        v114 = *(v114 + 16);
        v147 = *(v53 + 24);
      }

      else
      {
        if (!v116)
        {
          *&v282 = v114;
          WORD4(v282) = v115;
          BYTE10(v282) = BYTE2(v115);
          BYTE11(v282) = BYTE3(v115);
          BYTE12(v282) = BYTE4(v115);
          BYTE13(v282) = BYTE5(v115);
          sub_1000D5D10(&v282, &v282 + BYTE6(v115), 19);
          if (v3)
          {
            goto LABEL_260;
          }

          v117 = sub_1001128D0(&v282, 19);
          v274 = v118;
          v273 = sub_1000A61BC(v117, v118, 1, sub_10010BD50);
          sub_10007676C(v117, v274);
          v9 = v273;
          if (!*(v273 + 16))
          {
            __break(1u);
LABEL_114:
            v275 = v9;
            v119 = sub_1000A60F8(a1, v4 | 0x3300u);
            if (v120 >> 60 == 15)
            {
LABEL_333:
              __break(1u);
LABEL_334:
              __break(1u);
              JUMPOUT(0x1000A6008);
            }

            v53 = v119;
            v54 = v120;
            v121 = v120 >> 62;
            if ((v120 >> 62) > 1)
            {
              if (v121 != 2)
              {
                *&v279[6] = 0;
                *v279 = 0;
                v122 = v279;
                goto LABEL_250;
              }

              v119 = *(v119 + 16);
              v148 = *(v53 + 24);
            }

            else
            {
              if (!v121)
              {
                *v279 = v119;
                *&v279[8] = v120;
                v279[10] = BYTE2(v120);
                v279[11] = BYTE3(v120);
                v279[12] = BYTE4(v120);
                v279[13] = BYTE5(v120);
                v122 = &v279[BYTE6(v120)];
LABEL_250:
                sub_1000DEF88(v279, v122, &v282);
LABEL_251:
                if (!v3)
                {
                  sub_100076B24(v53, v54);
                  v200 = BYTE6(v282);
                  v201.i32[0] = v282;
                  v202 = vmovl_u8(v201);
                  *v279 = v282;
                  *&v279[4] = WORD2(v282);
                  v279[6] = BYTE6(v282);
                  *&v279[8] = a1;
                  v279[16] = v4;
                  v279[17] = 51;
                  *&v280 = *(&v282 + 1);
                  WORD4(v280) = v283;
                  if (v283)
                  {
                    v203 = v283 | 0x10000;
                  }

                  else
                  {
                    v203 = -65536;
                  }

                  v204 = v202.u8[6];
                  sub_1000A9EC0(v279);
                  v205 = *&v279[8];
                  v206 = *&v279[16];
                  v278 = 0;
                  v154 = sub_10007D774();
                  v155 = swift_allocObject();
                  *(v155 + 16) = v200;
                  *(v155 + 24) = v278;
                  *(v155 + 32) = v204;
                  *(v155 + 42) = BYTE2(v203);
                  *(v155 + 40) = v203;
                  *(v155 + 48) = v205;
                  *(v155 + 56) = v206;
                  *(v155 + 64) = _swiftEmptyArrayStorage;
                  *(v155 + 72) = 0;
                  v166 = &type metadata for EffectUnit;
                  goto LABEL_273;
                }

                goto LABEL_260;
              }

              v119 = v119;
              v148 = v53 >> 32;
              if (v53 >> 32 < v53)
              {
LABEL_305:
                __break(1u);
                goto LABEL_306;
              }
            }

            sub_1000A7A28(v119, v148, &v282);
            goto LABEL_251;
          }

          goto LABEL_245;
        }

        v114 = v114;
        v147 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }
      }

      sub_1000A7900(v114, v147, v279);
      if (v3)
      {
        goto LABEL_260;
      }

LABEL_246:
      sub_100076B24(v53, v54);
      *v372 = *v279;
      *&v372[15] = *&v279[15];
      v373 = a1;
      v374 = v4;
      v375 = 47;
      sub_1000D7D80(v323);
      v21 = v275;
      v207 = sub_1000A9A50();
      v208 = swift_allocObject();
      v197 = v323[3];
      *(v208 + 48) = v323[2];
      *(v208 + 64) = v197;
      v198 = v323[5];
      *(v208 + 80) = v323[4];
      *(v208 + 96) = v198;
      v199 = v323[1];
      *(v208 + 16) = v323[0];
      *(v208 + 32) = v199;
      v50 = &type metadata for OutputTerminal;
LABEL_277:
      *&v285[0] = v208;
LABEL_278:
      *(&v285[1] + 1) = v50;
      v286 = v207;
      goto LABEL_279;
    case 23:
      goto LABEL_106;
    case 24:
      v21 = v9;
      sub_1000E2D34(a1, v4 | 0x3100, v327);
      if (v3)
      {
        return;
      }

      sub_1000D8610(v328);
      sub_1000A9FA8(v327);
      v207 = sub_100026850();
      v208 = swift_allocObject();
      v209 = v328[3];
      *(v208 + 48) = v328[2];
      *(v208 + 64) = v209;
      *(v208 + 80) = v329;
      v210 = v328[1];
      v211 = v328[0];
LABEL_265:
      *(v208 + 16) = v211;
      *(v208 + 32) = v210;
      v50 = &type metadata for SelectorUnit;
      goto LABEL_277;
    case 25:
      v57 = v9;
      v58 = sub_1000A60F8(a1, v4 | 0x3200u);
      if (v59 >> 60 == 15)
      {
        goto LABEL_322;
      }

      v53 = v58;
      v54 = v59;
      v60 = v59 >> 62;
      if ((v59 >> 62) > 1)
      {
        if (v60 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          v61 = &v282;
          goto LABEL_190;
        }

        v58 = *(v58 + 16);
        v139 = *(v53 + 24);
      }

      else
      {
        if (!v60)
        {
          *&v282 = v58;
          WORD4(v282) = v59;
          BYTE10(v282) = BYTE2(v59);
          BYTE11(v282) = BYTE3(v59);
          BYTE12(v282) = BYTE4(v59);
          BYTE13(v282) = BYTE5(v59);
          v61 = (&v282 + BYTE6(v59));
LABEL_190:
          sub_1000DE238(&v282, v61, v279);
          goto LABEL_191;
        }

        v58 = v58;
        v139 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
          goto LABEL_302;
        }
      }

      sub_1000A7994(v58, v139, v279);
LABEL_191:
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v53, v54);
      v376 = *v279;
      v377 = v279[4];
      v378 = a1;
      v379 = v4;
      v380 = 50;
      v381 = *&v279[8];
      v382 = *&v279[16];
      sub_1000D8848(v330);
      v21 = v57;
      sub_1000A9F54(&v376);
      v207 = sub_1000A99A4();
      v208 = swift_allocObject();
      v230 = v330[1];
      v244 = v330[3];
      *(v208 + 48) = v330[2];
      *(v208 + 64) = v244;
      *(v208 + 80) = v331;
      v231 = v330[0];
LABEL_268:
      *(v208 + 16) = v231;
      *(v208 + 32) = v230;
      v50 = &type metadata for FeatureUnit;
      goto LABEL_277;
    case 26:
      goto LABEL_114;
    case 27:
      v21 = v9;
      sub_1000E2DA8(a1, v4 | 0x3400, v332);
      if (v3)
      {
        return;
      }

      sub_1000D8A2C(v333);
      sub_1000A9E1C(v332);
      v207 = sub_10007D3F0();
      v208 = swift_allocObject();
      v212 = v333[3];
      *(v208 + 48) = v333[2];
      *(v208 + 64) = v212;
      *(v208 + 80) = v333[4];
      v213 = v333[1];
      v214 = v333[0];
LABEL_263:
      *(v208 + 16) = v214;
      *(v208 + 32) = v213;
      v50 = &type metadata for ProcessingUnit;
      goto LABEL_277;
    case 28:
      v21 = v9;
      sub_1000E3138(a1, v4 | 0x3500, v334);
      if (v3)
      {
        return;
      }

      sub_1000D8B4C(v335);
      sub_1000A9D78(v334);
      v207 = sub_10007D34C();
      v208 = swift_allocObject();
      v215 = v335[3];
      *(v208 + 48) = v335[2];
      *(v208 + 64) = v215;
      v216 = v335[5];
      *(v208 + 80) = v335[4];
      *(v208 + 96) = v216;
      v217 = v335[0];
      v218 = v335[1];
      goto LABEL_264;
    case 29:
      goto LABEL_24;
    case 30:
      v21 = v9;
      sub_1000E34D8(a1, v4 | 0x3700, v337);
      if (v3)
      {
        return;
      }

      sub_1000D956C(v338);
      sub_1000A9D24(v337);
      v207 = sub_1000377B8();
      v208 = swift_allocObject();
      v222 = v338[1];
      *(v208 + 16) = v338[0];
      *(v208 + 32) = v222;
      *(v208 + 48) = v338[2];
      v223 = v339;
      goto LABEL_266;
    case 31:
      goto LABEL_18;
    case 34:
      goto LABEL_124;
    case 53:
      v275 = v9;
      v123 = sub_1000A60F8(a1, v4 | 0x4E00u);
      if (v124 >> 60 == 15)
      {
        goto LABEL_334;
      }

      v53 = v123;
      v54 = v124;
      v125 = v124 >> 62;
      if ((v124 >> 62) > 1)
      {
        if (v125 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          sub_1000D5D10(&v282, &v282, 22);
          if (v3)
          {
            goto LABEL_260;
          }

          v255 = sub_1001128D0(&v282, 22);
          v257 = v256;
          v274 = sub_1000A61BC(v255, v256, 1, sub_10010D1E4);
          sub_10007676C(v255, v257);
          v9 = v274;
          if (!*(v274 + 16))
          {
            goto LABEL_317;
          }

LABEL_275:
          *v279 = *(v9 + 32);
          *&v279[14] = *(v9 + 46);

          goto LABEL_276;
        }

        v123 = *(v123 + 16);
        v149 = *(v53 + 24);
      }

      else
      {
        if (!v125)
        {
          *&v282 = v123;
          WORD4(v282) = v124;
          BYTE10(v282) = BYTE2(v124);
          BYTE11(v282) = BYTE3(v124);
          BYTE12(v282) = BYTE4(v124);
          BYTE13(v282) = BYTE5(v124);
          sub_1000D5D10(&v282, &v282 + BYTE6(v124), 22);
          if (v3)
          {
            goto LABEL_260;
          }

          v126 = sub_1001128D0(&v282, 22);
          v128 = v127;
          v274 = sub_1000A61BC(v126, v127, 1, sub_10010D1E4);
          sub_10007676C(v126, v128);
          v9 = v274;
          if (!*(v274 + 16))
          {
            __break(1u);
LABEL_124:
            v129 = v9;
            sub_1000E3908(a1, v4 | 0x3B00, v342);
            if (v3)
            {
              return;
            }

            if (v346)
            {
              v130 = v346 | 0x10000;
            }

            else
            {
              v130 = -65536;
            }

            v131 = v342[3];
            v132 = v345;
            v133 = v343;
            v134 = v344;
            v207 = sub_10007D494();
            v208 = swift_allocObject();
            *(v208 + 16) = v131;
            *(v208 + 26) = BYTE2(v130);
            *(v208 + 24) = v130;
            *(v208 + 32) = v133;
            v21 = v129;
            *(v208 + 40) = v134;
            *(v208 + 48) = 0;
            *(v208 + 56) = v132;
            v50 = &type metadata for PowerDomain;
            goto LABEL_277;
          }

          goto LABEL_275;
        }

        v123 = v123;
        v149 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
          goto LABEL_309;
        }
      }

      sub_1000A7BE4(v123, v149, v279);
      if (v3)
      {
        goto LABEL_260;
      }

LABEL_276:
      sub_100076B24(v53, v54);
      *v383 = *v279;
      *&v383[14] = *&v279[14];
      v384 = a1;
      v385 = v4;
      v386 = 78;
      sub_1000FF098(v347);
      v21 = v275;
      v207 = sub_10002C514();
      v208 = swift_allocObject();
      v258 = v347[1];
      *(v208 + 16) = v347[0];
      *(v208 + 32) = v258;
      v259 = v347[3];
      *(v208 + 48) = v347[2];
      *(v208 + 64) = v259;
      v50 = &type metadata for ClockSource;
      goto LABEL_277;
    case 54:
      v275 = v9;
      v51 = sub_1000A60F8(a1, v4 | 0x4F00u);
      if (v52 >> 60 == 15)
      {
        goto LABEL_321;
      }

      v53 = v51;
      v54 = v52;
      v55 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v55 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          v56 = &v282;
          goto LABEL_184;
        }

        v51 = *(v51 + 16);
        v138 = *(v53 + 24);
      }

      else
      {
        if (!v55)
        {
          *&v282 = v51;
          WORD4(v282) = v52;
          BYTE10(v282) = BYTE2(v52);
          BYTE11(v282) = BYTE3(v52);
          BYTE12(v282) = BYTE4(v52);
          BYTE13(v282) = BYTE5(v52);
          v56 = (&v282 + BYTE6(v52));
LABEL_184:
          sub_1001060E8(&v282, v56, v279);
LABEL_185:
          if (!v3)
          {
            sub_100076B24(v53, v54);
            v387 = *v279;
            v388 = *&v279[16];
            v389 = a1;
            v390 = v4;
            v391 = 79;
            v392 = v280;
            sub_1000FF138(v348);
            v21 = v275;
            sub_1000A9BEC(&v387);
            v207 = sub_1000377B8();
            v208 = swift_allocObject();
            v243 = v348[1];
            *(v208 + 16) = v348[0];
            *(v208 + 32) = v243;
            *(v208 + 48) = v348[2];
            v223 = v349;
LABEL_266:
            *(v208 + 64) = v223;
            v50 = &type metadata for ClockSelector;
            goto LABEL_277;
          }

          goto LABEL_260;
        }

        v51 = v51;
        v138 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
LABEL_295:
          __break(1u);
          goto LABEL_296;
        }
      }

      sub_1000A7C78(v51, v138, v279);
      goto LABEL_185;
    case 55:
      v275 = v9;
      v65 = sub_1000A60F8(a1, v4 | 0x5000u);
      if (v66 >> 60 == 15)
      {
        goto LABEL_324;
      }

      v53 = v65;
      v54 = v66;
      v67 = v66 >> 62;
      if ((v66 >> 62) > 1)
      {
        if (v67 != 2)
        {
          *(&v282 + 6) = 0;
          *&v282 = 0;
          v68 = &v282;
          goto LABEL_196;
        }

        v65 = *(v65 + 16);
        v140 = *(v53 + 24);
      }

      else
      {
        if (!v67)
        {
          *&v282 = v65;
          WORD4(v282) = v66;
          BYTE10(v282) = BYTE2(v66);
          BYTE11(v282) = BYTE3(v66);
          BYTE12(v282) = BYTE4(v66);
          BYTE13(v282) = BYTE5(v66);
          v68 = (&v282 + BYTE6(v66));
LABEL_196:
          sub_100103C58(&v282, v68, v279);
LABEL_197:
          if (!v3)
          {
            sub_100076B24(v53, v54);
            *v393 = *v279;
            *&v393[14] = *&v279[14];
            v394 = DWORD2(v280);
            v395 = a1;
            v396 = v4;
            v397 = 80;
            v398 = v280;
            v399 = v281;
            sub_1000FF244(v350);
            v21 = v275;
            sub_1000A9AE4(v393);
            v207 = sub_1000A9B38();
            v208 = swift_allocObject();
            v245 = v350[3];
            v246 = v350[5];
            *(v208 + 80) = v350[4];
            *(v208 + 96) = v246;
            *(v208 + 112) = v351;
            v247 = v350[1];
            *(v208 + 16) = v350[0];
            *(v208 + 32) = v247;
            v248 = v350[2];
LABEL_267:
            *(v208 + 48) = v248;
            *(v208 + 64) = v245;
            v50 = &type metadata for InputTerminal;
            goto LABEL_277;
          }

          goto LABEL_260;
        }

        v65 = v65;
        v140 = v53 >> 32;
        if (v53 >> 32 < v53)
        {
          goto LABEL_297;
        }
      }

      sub_1000A7D0C(v65, v140, v279);
      goto LABEL_197;
    case 56:
      goto LABEL_87;
    case 59:
      v69 = v9;
      v70 = sub_1000A60F8(a1, v4 | 0x5400u);
      if (v71 >> 60 == 15)
      {
        goto LABEL_325;
      }

      v53 = v70;
      v54 = v71;
      sub_1000A73D4(v70, v71, v279);
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v53, v54);
      v406 = *v279;
      v407 = *&v279[8];
      v408 = *&v279[12];
      v409 = a1;
      v410 = v4;
      v411 = 84;
      v412 = *&v279[16];
      sub_1000FF45C(v353);
      sub_1000A9950(&v406);
      v234 = sub_1000A99A4();
      v235 = swift_allocObject();
      v236 = v353[3];
      *(v235 + 48) = v353[2];
      *(v235 + 64) = v236;
      *(v235 + 80) = v354;
      v237 = v353[1];
      *(v235 + 16) = v353[0];
      *(v235 + 32) = v237;
      *&v285[0] = v235;
      *(&v285[1] + 1) = &type metadata for FeatureUnit;
      v286 = v234;
      v21 = v69;
      goto LABEL_279;
    default:
      v21 = v9;
      v286 = 0;
      memset(v285, 0, sizeof(v285));
      goto LABEL_279;
  }
}