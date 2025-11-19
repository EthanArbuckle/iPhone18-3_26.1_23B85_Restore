void HKStatisticsQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKStatisticsQueryDescriptor.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor() + 24);

  return sub_191BFCA60(v3, a1);
}

uint64_t type metadata accessor for HKStatisticsQueryDescriptor()
{
  result = qword_1EADCAB60;
  if (!qword_1EADCAB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKStatisticsQueryDescriptor.dateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor() + 24);

  return sub_191BFCB38(a1, v3);
}

uint64_t HKStatisticsQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor() + 28);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 HKStatisticsQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for HKStatisticsQueryDescriptor() + 28));
  v4 = v3->n128_u64[1];

  result = v6;
  *v3 = v6;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t HKStatisticsQueryDescriptor.init(predicate:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  v8 = *(Descriptor + 24);
  v9 = sub_191CC5CF8();
  result = (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v11 = &a3[*(Descriptor + 28)];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = -1;
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 2) = a2;
  return result;
}

uint64_t HKStatisticsQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C089FC, 0, 0);
}

uint64_t sub_191C089FC()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD16C;
  v3 = swift_continuation_init();
  sub_191C08AA8(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191C08AA8(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = aBlock - v9;
  v11 = *a2;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = a2[1];
  v14 = a2[2];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  v16 = objc_allocWithZone(HKStatisticsQuery);
  aBlock[4] = sub_191C09190;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = [v16 initWithQuantityType:v12 quantitySamplePredicate:v13 options:v14 completionHandler:v17];
  _Block_release(v17);

  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  v21 = (a2 + *(Descriptor + 28));
  v22 = v21[2];
  if (v21[1])
  {
    v23 = *v21;
    v24 = v21[1];

    v25 = sub_191CC6778();
  }

  else
  {
    v25 = 0;
  }

  [v19 setDebugIdentifier_];

  [v19 setQualityOfService_];

  sub_191BFCA60(a2 + *(Descriptor + 24), v10);
  v26 = sub_191CC5CF8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v10, 1, v26) != 1)
  {
    v28 = sub_191CC5C88();
    (*(v27 + 8))(v10, v26);
  }

  [v19 _setDateInterval_];

  [v18 executeQuery_];
}

void sub_191C08D9C(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    v8 = a2;

    swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      type metadata accessor for Code(0);
      v9 = a3;
      sub_191C091B0(&qword_1EADCA688, type metadata accessor for Code);
      if (sub_191CC5EA8())
      {
        **(*(a5 + 64) + 40) = 0;
        swift_continuation_throwingResume();

        return;
      }

      sub_191BF92E0();
      swift_allocError();
      *v11 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C091B0(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      sub_191BF92E0();
      swift_allocError();
      *v10 = v12;
    }

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C08F94(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C08FB8, 0, 0);
}

uint64_t sub_191C08FB8()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD72C;
  v3 = swift_continuation_init();
  sub_191C08AA8(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191C0908C()
{
  sub_191BFEF28(319, &qword_1EADCA920, sub_191BFEF8C, type metadata accessor for HKSamplePredicate);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKStatisticsOptions(319);
    if (v1 <= 0x3F)
    {
      sub_191BFEF28(319, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C091B0(unint64_t *a1, void (*a2)(uint64_t))
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

id HKActivitySummaryQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HKActivitySummaryQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKActivitySummaryQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 16);

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKActivitySummaryQueryDescriptor.init(predicate:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t HKActivitySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  v3 = v1[1];
  *(v2 + 144) = *v1;
  *(v2 + 160) = v3;
  return MEMORY[0x1EEE6DFA0](sub_191C09320, 0, 0);
}

uint64_t sub_191C09320()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[20];
  v8 = v1[17];
  v7 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191BFFBF4;
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = objc_allocWithZone(HKActivitySummaryQuery);
  v1[14] = sub_191C0966C;
  v1[15] = v10;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C09FF0;
  v1[13] = &block_descriptor_7;
  v12 = _Block_copy(v4);
  v13 = v8;
  v14 = [v11 initWithPredicate:v7 resultsHandler:v12];
  _Block_release(v12);
  v15 = v1[15];

  if (v6)
  {
    v16 = v1[19];

    v17 = sub_191CC6778();
  }

  else
  {
    v17 = 0;
  }

  v18 = v1[21];
  v19 = v1[17];
  [v14 setDebugIdentifier_];

  [v14 setQualityOfService_];

  [v19 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C0951C(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0A384(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      v9 = v12;
    }

    sub_191BF92E0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C09674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_191BFBFE4;

  return HKActivitySummaryQueryDescriptor.result(for:)(a2);
}

uint64_t HKActivitySummaryQueryDescriptor.Results.Iterator.next()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  *v2 = v0;
  v2[1] = sub_191BF9198;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_191C097CC(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x1E69E87B0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191BF9418;

  return MEMORY[0x1EEE6DB98](v1 + 16, v4);
}

uint64_t HKActivitySummaryQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191C0A86C(0, &qword_1EADCAB78, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

uint64_t sub_191C098E8()
{
  sub_191C0A86C(0, &qword_1EADCAB78, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191C0A6C4(v0);
}

uint64_t HKActivitySummaryQueryDescriptor.results(for:)(uint64_t a1)
{
  sub_191C0A86C(0, &qword_1EADCAB80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v15 - v8;
  v10 = swift_allocObject();
  v11 = v1[1];
  v15[0] = *v1;
  v15[1] = v11;
  *(v10 + 16) = v15[0];
  *(v10 + 32) = v11;
  v16 = sub_191C0A130;
  v17 = v10;
  v18 = a1;
  sub_191C0A0B0(0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  v12 = *&v15[0];

  v13 = v12;
  sub_191CC6AF8();
}

id sub_191C09AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v27 = a1;
  v28 = a2;
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = v24 - v11;
  v26 = *(v8 + 16);
  v26(v24 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v25 = *(v8 + 32);
  v25(v14 + v13, v12, v7);
  v15 = objc_allocWithZone(HKActivitySummaryQuery);
  v35 = sub_191C0A720;
  v36 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_191C09FF0;
  v34 = &block_descriptor_38;
  v16 = _Block_copy(&aBlock);
  v17 = [v15 initWithPredicate:v28 resultsHandler:v16];
  _Block_release(v16);

  v26(v12, v27, v7);
  v18 = v29;
  v19 = swift_allocObject();
  v25(v19 + v13, v12, v7);
  v35 = sub_191C0A8F0;
  v36 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_191C09FF0;
  v34 = &block_descriptor_45;
  v20 = _Block_copy(&aBlock);

  [v17 setUpdateHandler_];
  _Block_release(v20);
  v21 = v17;
  if (v18)
  {

    v22 = sub_191CC6778();
  }

  else
  {
    v22 = 0;
  }

  [v21 setDebugIdentifier_];

  [v21 setQualityOfService_];

  return v21;
}

uint64_t sub_191C09E00(uint64_t a1, void *a2, void *a3)
{
  sub_191C0A86C(0, &qword_1EADCABC0, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v15 - v10;
  if (a2)
  {
    v16 = a2;
    sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);

    sub_191CC6A88();
    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v13 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v15 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0A384(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      v13 = v16;
    }

    v16 = v13;
    v14 = a3;
    sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191C09FF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_191C0A0E4();
    v5 = sub_191CC68E8();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191C0A0E4()
{
  result = qword_1EADCA800;
  if (!qword_1EADCA800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA800);
  }

  return result;
}

uint64_t sub_191C0A13C(uint64_t a1)
{
  sub_191C0A86C(0, &qword_1EADCAB80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v15 - v8;
  v10 = swift_allocObject();
  v11 = v1[1];
  v15[0] = *v1;
  v15[1] = v11;
  *(v10 + 16) = v15[0];
  *(v10 + 32) = v11;
  v16 = sub_191C0A8EC;
  v17 = v10;
  v18 = a1;
  sub_191C0A0B0(0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  v12 = *&v15[0];

  v13 = v12;
  sub_191CC6AF8();
}

uint64_t sub_191C0A384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_191C0A3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_191C0A448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_191C0A4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C0A538()
{
  sub_191C0A4C0(319, &qword_1EADCAB98, sub_191C0A0B0, type metadata accessor for HKQueryAsyncStream);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C0A5FC()
{
  sub_191C0A86C(319, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_191C0A6C4(uint64_t a1)
{
  v2 = type metadata accessor for HKActivitySummaryQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_34Tm()
{
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_191C0A7C8(uint64_t a1, void *a2, void *a3)
{
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
  v7 = *(*(v6 - 8) + 80);

  return sub_191C09E00(a1, a2, a3);
}

void sub_191C0A86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_191C0A0B0(255);
    v7 = v6;
    v8 = sub_191BF92E0();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t HKElectrocardiogramQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKElectrocardiogramQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 16);

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKElectrocardiogramQueryDescriptor.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_191C0AA00()
{
  v1 = *(v0 + 96);
  v2 = *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20);
  *(v0 + 128) = v2;
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {
    if ([v3 nextObject])
    {
      sub_191CC6E18();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *(v0 + 48) = v11;
    *(v0 + 64) = v12;
    if (*(v0 + 72))
    {
      sub_191C0B190((v0 + 48), (v0 + 16));
      sub_191BFAE6C(0, &qword_1EADCABD0, off_1E7374EC8);
      swift_dynamicCast();
      v4 = *(v0 + 88);
      v5 = *(v0 + 8);

      return v5(v4);
    }
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  sub_191C0C134(v0 + 48, sub_191C0B13C);
  v7 = *(MEMORY[0x1E69E87B0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  *v8 = v0;
  v8[1] = sub_191C0ABDC;
  v10 = *(v0 + 96);

  return MEMORY[0x1EEE6DB98](v0 + 80, v9);
}

uint64_t sub_191C0ABDC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_191C05168;
  }

  else
  {
    v3 = sub_191C0ACF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t HKElectrocardiogramQueryDescriptor.Results.Iterator.awaitMeasurementEnumerator()()
{
  *(v1 + 24) = v0;
  v2 = *(MEMORY[0x1E69E87B0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191C0AE64;

  return MEMORY[0x1EEE6DB98](v1 + 16, v4);
}

uint64_t sub_191C0AE64()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_191BF954C;
  }

  else
  {
    v3 = sub_191C0AF78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C0AF78()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = [*(v0 + 16) voltageMeasurementEnumerator];

    v4 = *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20);
    *(v2 + v4) = v3;
  }

  v5 = *(v0 + 8);

  return v5();
}

HKElectrocardiogramVoltageMeasurement_optional __swiftcall HKElectrocardiogramQueryDescriptor.Results.Iterator.nextMeasurement()()
{
  v1 = *(v0 + *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20));
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_8:
    sub_191C0C134(&v7, sub_191C0B13C);
    v5 = 0;
    goto LABEL_9;
  }

  if ([v1 nextObject])
  {
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = v9;
  v8 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  sub_191C0B190(&v7, &v9);
  sub_191BFAE6C(0, &qword_1EADCABD0, off_1E7374EC8);
  swift_dynamicCast();
  v5 = v6;
LABEL_9:
  result.value._timeSinceSampleStart = v4;
  result.value._leadIVoltage = v2;
  result.value.super.isa = v5;
  result.is_nil = v3;
  return result;
}

void sub_191C0B13C()
{
  if (!qword_1EADCC5D0)
  {
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC5D0);
    }
  }
}

_OWORD *sub_191C0B190(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_191C0B1A0(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v3[5] = a2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C0B1C4, 0, 0);
}

uint64_t sub_191C0B2D0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_191C0B498;
  }

  else
  {
    v3 = sub_191C0B3E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t HKElectrocardiogramQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_191C0B50C(0, &qword_1EADCABD8, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  result = type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

void sub_191C0B50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BFAE6C(255, &qword_1EADCA7E8, off_1E7374E88);
    v7 = sub_191BF92E0();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_191C0B594@<X0>(uint64_t a1@<X8>)
{
  sub_191C0B50C(0, &qword_1EADCABD8, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C0C134(v1, type metadata accessor for HKElectrocardiogramQueryDescriptor.Results);
  result = type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t HKElectrocardiogramQueryDescriptor.results(for:)(void *a1)
{
  sub_191C0B50C(0, &qword_1EADCABE0, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v18[-v8];
  v10 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v13;
  v14[5] = v12;
  v14[6] = a1;
  v19 = sub_191C0BA1C;
  v20 = v14;
  v21 = a1;
  sub_191BFAE6C(0, &qword_1EADCA7E8, off_1E7374E88);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);

  v15 = a1;
  v16 = v10;
  sub_191CC6AF8();
}

id sub_191C0B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27[1] = a3;
  sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = v27 - v16;
  (*(v13 + 16))(v27 - v16, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  *(v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v20 = objc_allocWithZone(HKElectrocardiogramQuery);
  aBlock[4] = sub_191C0C194;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_8;
  v21 = _Block_copy(aBlock);
  v22 = a6;
  v23 = [v20 initWithElectrocardiogram:a2 sampleHandler:v21];
  _Block_release(v21);

  v24 = v23;
  if (a4)
  {

    v25 = sub_191CC6778();
  }

  else
  {
    v25 = 0;
  }

  [v24 setDebugIdentifier_];

  [v24 setQualityOfService_];

  return v24;
}

void sub_191C0BA20(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_191C0B50C(0, &qword_1EADCAC30, MEMORY[0x1E69E8780]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  v15 = &v20 - v14;
  if (a2)
  {
    v16 = a2;
    [a5 stopQuery_];
    v21 = v16;
    sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
    v17 = v16;
    sub_191CC6A88();
    (*(v11 + 8))(v15, v10);
    v21 = 0;
    sub_191CC6A98();
  }

  else
  {
    v18 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v20 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0BE90(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      v18 = v21;
    }

    v21 = v18;
    v19 = a3;
    sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
    sub_191CC6A98();
  }
}

uint64_t sub_191C0BC50(void *a1)
{
  sub_191C0B50C(0, &qword_1EADCABE0, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v18[-v8];
  v10 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v13;
  v14[5] = v12;
  v14[6] = a1;
  v19 = sub_191C0C280;
  v20 = v14;
  v21 = a1;
  sub_191BFAE6C(0, &qword_1EADCA7E8, off_1E7374E88);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);

  v15 = a1;
  v16 = v10;
  sub_191CC6AF8();
}

uint64_t sub_191C0BE90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191C0BF30()
{
  sub_191C0C0BC(319, &qword_1EADCABF8, &qword_1EADCA7E8, off_1E7374E88, type metadata accessor for HKQueryAsyncStream);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C0BFF0()
{
  sub_191C0B50C(319, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    sub_191C0C0BC(319, &qword_1EADCAC20, &qword_1EADCAC28, 0x1E695DF28, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C0C0BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_191BFAE6C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191C0C134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_191C0C194(uint64_t a1, void *a2, void *a3)
{
  sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_191C0BA20(a1, a2, a3, v3 + v9, v10);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKDerivedType.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v1);
  return sub_191CC7508();
}

uint64_t sub_191C0C344()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v1);
  return sub_191CC7508();
}

uint64_t sub_191C0C3B8()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v1);
  return sub_191CC7508();
}

unint64_t sub_191C0C400()
{
  result = qword_1EADCAC38;
  if (!qword_1EADCAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC38);
  }

  return result;
}

unint64_t sub_191C0C458()
{
  result = qword_1EADCAC40;
  if (!qword_1EADCAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC40);
  }

  return result;
}

unint64_t sub_191C0C4AC(uint64_t a1)
{
  result = sub_191C0C4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_191C0C4D4()
{
  result = qword_1EADCAC48;
  if (!qword_1EADCAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC48);
  }

  return result;
}

unint64_t sub_191C0C52C()
{
  result = qword_1EADCAC50;
  if (!qword_1EADCAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKDerivedType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HKDerivedType(uint64_t result, int a2, int a3)
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

uint64_t sub_191C0C5E4()
{
  if (*v0)
  {
    result = 0x746567726174;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_191C0C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C0C6F8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_191C0C724(uint64_t a1, uint64_t a2)
{
  v4 = sub_191C139C8();
  v5 = sub_191C13A20();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t sub_191C0C77C(void *a1)
{
  v3 = v1;
  sub_191C13C84(0, &qword_1EADCAD78, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v16[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C13A20();
  sub_191CC7548();
  v13 = *v3;
  v16[15] = 0;
  sub_191CC7338();
  if (!v2)
  {
    v14 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
    v16[14] = 1;
    sub_191CC61A8();
    sub_191C0DD28(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
    sub_191CC7348();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_191C0C944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_191CC61A8();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C13C84(0, &qword_1EADCAD68, MEMORY[0x1E69E6F48]);
  v28 = v8;
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C13A20();
  sub_191CC7528();
  if (!v2)
  {
    v19 = v17;
    v23 = v13;
    v20 = v26;
    v21 = v27;
    v30 = 0;
    *v19 = sub_191CC7258();
    v29 = 1;
    sub_191C0DD28(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    sub_191CC7268();
    (*(v20 + 8))(v12, v28);
    (*(v24 + 32))(v19 + *(v23 + 20), v7, v21);
    sub_191C132EC(v19, v25);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C0CC3C(uint64_t a1)
{
  v2 = sub_191C13A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C0CC78(uint64_t a1)
{
  v2 = sub_191C13A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C0CCB4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return sub_191CC6178();
}

uint64_t sub_191C0CCDC(uint64_t a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v1);
  v3 = *(a1 + 20);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0CD88(uint64_t a1, uint64_t a2)
{
  MEMORY[0x193B02C70](*v2);
  v4 = *(a2 + 20);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  return sub_191CC66A8();
}

uint64_t sub_191C0CE1C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v2);
  v4 = *(a2 + 20);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct);
  v7 = sub_191C0DD28(&qword_1EADCAD58, type metadata accessor for UserDomainConceptLinkStruct);

  return MEMORY[0x1EEDF52D8](a1, a2, a3, v6, v7);
}

uint64_t sub_191C0D0D0(uint64_t a1)
{
  v2 = sub_191C0DD28(&qword_1EADCAD88, type metadata accessor for UserDomainConceptLinkStruct);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t UserDomainConceptLinkStructWrapper.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(v1 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v8);
  v9 = *(v4 + 28);
  v10 = sub_191CC61A8();
  return (*(*(v10 - 8) + 32))(a1, &v8[v9], v10);
}

uint64_t sub_191C0D3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id UserDomainConceptLinkStructWrapper.__allocating_init(target:type:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value];
  v7 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = a2;
  v12.receiver = v5;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id UserDomainConceptLinkStructWrapper.init(target:type:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value];
  v7 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t UserDomainConceptLinkStructWrapper.description.getter()
{
  v1 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 40;
  v19 = 0xE100000000000000;
  v13 = OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value;
  v17[1] = *(v0 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v14 = sub_191CC7398();
  MEMORY[0x193B01F90](v14);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191C0D3DC(v0 + v13, v6);
  (*(v8 + 32))(v12, &v6[*(v2 + 28)], v7);
  sub_191C0DD28(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
  v15 = sub_191CC7398();
  MEMORY[0x193B01F90](v15);

  (*(v8 + 8))(v12, v7);
  MEMORY[0x193B01F90](41, 0xE100000000000000);
  return v18;
}

uint64_t UserDomainConceptLinkStructWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_191C0DAF0(a1, v7);
  if (!v8)
  {
    sub_191C13D70(v7, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value) != *&v6[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value])
  {

    goto LABEL_7;
  }

  v3 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  v4 = sub_191CC6178();

  return v4 & 1;
}

uint64_t sub_191C0DAF0(uint64_t a1, uint64_t a2)
{
  sub_191C13BA4(0, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UserDomainConceptLinkStructWrapper.hash.getter()
{
  v1 = (v0 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v1);
  v2 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0DD28(unint64_t *a1, void (*a2)(uint64_t))
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

id LinkSetWrapper.init(_:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v31 - v13;
  sub_191C0E22C(0);
  v16 = v15;
  v35 = *(v15 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v34 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v16;
    v37 = v5;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_16:

    v22 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v39 = v22;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct);
    sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct);
    sub_191C13350();
    v30 = v34;
    sub_191CC64E8();
    (*(v35 + 32))(v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v30, v36);
    v38.receiver = v2;
    v38.super_class = ObjectType;
    return objc_msgSendSuper2(&v38, sel_init);
  }

  v20 = sub_191CC6EE8();
  v36 = v16;
  v37 = v5;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_3:
  v39 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v32 = ObjectType;
    v33 = v1;
    v22 = v39;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        v24 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v24 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v14);
        swift_unknownObjectRelease();
        v39 = v22;
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_191C07F64(v25 > 1, v26 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v26 + 1;
        sub_191C132EC(v14, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26);
      }
    }

    else
    {
      v27 = 32;
      do
      {
        sub_191C0D3DC(*(a1 + v27) + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v11);
        v39 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_191C07F64(v28 > 1, v29 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v29 + 1;
        sub_191C132EC(v11, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29);
        v27 += 8;
        --v20;
      }

      while (v20);
    }

    ObjectType = v32;
    v2 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

objc_class *LinkSetWrapper.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_191C0E22C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v4);
  sub_191C0492C(a1, a2);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  sub_191CC6568();
  if (v3)
  {
    sub_191C049D8(a1, a2);
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v9 + 32))(v14 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v13, v8);
    v18.receiver = v14;
    v18.super_class = v4;
    v4 = objc_msgSendSuper2(&v18, sel_init);
    sub_191C049D8(a1, a2);
  }

  return v4;
}

id LinkSetWrapper.init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0492C(a1, a2);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  sub_191CC6568();
  if (v3)
  {
    sub_191C049D8(a1, a2);
    v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v10 + 32))(v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v14, v9);
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v18, sel_init);
    sub_191C049D8(a1, a2);
  }

  return v4;
}

uint64_t LinkSetWrapper.serializedData()()
{
  v0 = sub_191CC6548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADCA120 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v5, *MEMORY[0x1E6995288], v0);
  sub_191C0E22C(0);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  v6 = sub_191CC6558();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t LinkSetWrapper.elements.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  return sub_191CC6428();
}

uint64_t sub_191C0ED88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(a1, v8);
  v9 = type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_191C0D3DC(v8, v10 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = sub_191C133F8(v8);
  *a2 = v11;
  return result;
}

id LinkSetWrapper.appendingElement(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x1EEE9AC00](v3, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19 - v12;
  v14 = v5[2];
  v14(&v19 - v12, v1 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v4);
  sub_191CC6458();
  v14(v10, v13, v4);
  v15 = objc_allocWithZone(ObjectType);
  v14(&v15[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v4);
  v19.receiver = v15;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  v17 = v5[1];
  v17(v10, v4);
  v17(v13, v4);
  return v16;
}

size_t LinkSetWrapper.appendingElements(_:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v41 - v12;
  sub_191C0E22C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = v16[8];
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v41 - v23;
  v44 = v16[2];
  v45 = v16 + 2;
  v44(&v41 - v23, v1 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v15);
  v46 = v24;
  v47 = v21;
  if (a1 >> 62)
  {
    v25 = sub_191CC6EE8();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_16:
    v49 = v26;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C13350();
    v35 = v46;
    sub_191CC6448();

    v36 = v47;
    v37 = v44;
    v44(v47, v35, v15);
    v38 = objc_allocWithZone(ObjectType);
    v37(&v38[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v36, v15);
    v48.receiver = v38;
    v48.super_class = ObjectType;
    v39 = objc_msgSendSuper2(&v48, sel_init);
    v40 = v16[1];
    v40(v36, v15);
    v40(v35, v15);
    return v39;
  }

  v49 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v41 = v16;
    v42 = v15;
    v43 = ObjectType;
    v26 = v49;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v25; ++i)
      {
        v29 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v29 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v13);
        swift_unknownObjectRelease();
        v49 = v26;
        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_191C07F64(v30 > 1, v31 + 1, 1);
          v26 = v49;
        }

        *(v26 + 16) = v31 + 1;
        sub_191C132EC(v13, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31);
      }
    }

    else
    {
      v32 = (a1 + 32);
      do
      {
        sub_191C0D3DC(*v32 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v10);
        v49 = v26;
        v34 = *(v26 + 16);
        v33 = *(v26 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_191C07F64(v33 > 1, v34 + 1, 1);
          v26 = v49;
        }

        *(v26 + 16) = v34 + 1;
        sub_191C132EC(v10, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34);
        ++v32;
        --v25;
      }

      while (v25);
    }

    v15 = v42;
    ObjectType = v43;
    v16 = v41;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id LinkSetWrapper.insertingElement(_:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21[1] = a2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v21 - v14;
  v16 = v7[2];
  v16(v21 - v14, v3 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  sub_191CC6468();
  v16(v12, v15, v6);
  v17 = objc_allocWithZone(ObjectType);
  v16(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v12, v6);
  v22.receiver = v17;
  v22.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  v19 = v7[1];
  v19(v12, v6);
  v19(v15, v6);
  return v18;
}

id LinkSetWrapper.movingElement(from:to:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0E22C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  if (a1 == a2)
  {
    v21 = v28;

    return v21;
  }

  else
  {
    v23 = v12[2];
    v23(&v27 - v19, &v28[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11);
    sub_191CC64F8();
    sub_191CC6478();
    sub_191CC6468();
    v23(v17, v20, v11);
    v24 = objc_allocWithZone(ObjectType);
    v23(&v24[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v17, v11);
    v29.receiver = v24;
    v29.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v29, sel_init);
    v26 = v12[1];
    v26(v17, v11);
    sub_191C133F8(v9);
    v26(v20, v11);
    return v25;
  }
}

id LinkSetWrapper.removingAtIndex(_:)()
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x1EEE9AC00](v2, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v13 = v4[2];
  v13(&v18 - v11, v0 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v3);
  sub_191CC6478();
  v13(v9, v12, v3);
  v14 = objc_allocWithZone(ObjectType);
  v13(&v14[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v3);
  v18.receiver = v14;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v4[1];
  v16(v9, v3);
  v16(v12, v3);
  return v15;
}

id LinkSetWrapper.removingLinksWithUUID(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v16 = v7[2];
  v16(&v21[-v14], v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  v22 = a1;
  sub_191CC64C8();
  v16(v12, v15, v6);
  v17 = objc_allocWithZone(ObjectType);
  v16(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v12, v6);
  v23.receiver = v17;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  v19 = v7[1];
  v19(v12, v6);
  v19(v15, v6);
  return v18;
}

id LinkSetWrapper.removingAll()()
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x1EEE9AC00](v2, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v13 = v4[2];
  v13(&v18 - v11, v0 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v3);
  sub_191CC64D8();
  v13(v9, v12, v3);
  v14 = objc_allocWithZone(ObjectType);
  v13(&v14[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v3);
  v18.receiver = v14;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v4[1];
  v16(v9, v3);
  v16(v12, v3);
  return v15;
}

id LinkSetWrapper.replacingElementAt(_:withElement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27[1] = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0E22C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v27 - v20;
  v22 = v13[2];
  v22(v27 - v20, v3 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v12);
  sub_191C0D3DC(a2 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v10);
  sub_191CC6508();
  v22(v18, v21, v12);
  v23 = objc_allocWithZone(ObjectType);
  v22(&v23[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v18, v12);
  v28.receiver = v23;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, sel_init);
  v25 = v13[1];
  v25(v18, v12);
  v25(v21, v12);
  return v24;
}

id LinkSetWrapper.retargetingLinksWithUUID(_:newUUID:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v69 = v60 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v60 - v13);
  sub_191C13470(0, &qword_1EADCACB0, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v68 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v60 - v21;
  sub_191C134D4(0, &qword_1EADCACB8, MEMORY[0x1E6995118]);
  v24 = v23;
  v62 = *(v23 - 8);
  v25 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v60 - v27;
  sub_191C0E22C(0);
  v30 = v29;
  v31 = *(*(v29 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v61 = v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v60 - v36;
  v63 = v38;
  v39 = *(v38 + 16);
  v60[1] = v38 + 16;
  v60[0] = v39;
  v39(v60 - v36, v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v30);
  sub_191CC6408();
  v71 = v28;
  v72 = v24;
  v40 = v65;
  sub_191CC64A8();
  v41 = *(v73 + 48);
  v73 += 48;
  v70 = v41;
  if (v41(v22, 1, v3) != 1)
  {
    v74 = v3;
    v67 = v22;
    do
    {
      sub_191C132EC(v22, v14);
      v51 = *(v3 + 20);
      if (sub_191CC6178())
      {
        v52 = v3;
        v53 = *v14;
        v54 = *(v52 + 20);
        v55 = sub_191CC61A8();
        v49 = v69;
        (*(*(v55 - 8) + 16))(&v69[v54], v40, v55);
        *v49 = v53;
        if ((sub_191CC64B8() & 1) == 0)
        {
          sub_191C0DD28(&qword_1EADCACC0, sub_191C0E22C);
          sub_191CC6BC8();
          if (v77)
          {
            sub_191CC6BB8();
            sub_191CC6BE8();
            while (v78 != v75)
            {
              v56 = sub_191CC6C58();
              sub_191C0D3DC(v57, v8);
              v56(&v75, 0);
              if (*v8 == v53)
              {
                v58 = *(v74 + 20);
                v59 = sub_191CC6178();
                sub_191C133F8(v8);
                if (v59)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                sub_191C133F8(v8);
              }

              sub_191CC6BF8();
              sub_191CC6BE8();
            }

            v40 = v65;
            v49 = v69;
          }

          else
          {
            v49 = v69;
            if ((v76 & 1) == 0)
            {
LABEL_18:
              v49 = v69;
              sub_191CC6468();
              v40 = v65;
            }
          }
        }

        v50 = v68;
        sub_191CC6488();
        sub_191C13D70(v50, &qword_1EADCACB0, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E6720], sub_191C13470);
        sub_191C133F8(v49);
        v3 = v74;
        v22 = v67;
      }

      sub_191C133F8(v14);
      sub_191CC64A8();
    }

    while (v70(v22, 1, v3) != 1);
  }

  (*(v62 + 8))(v71, v72);
  v42 = v61;
  v43 = v60[0];
  (v60[0])(v61, v37, v30);
  v44 = ObjectType;
  v45 = objc_allocWithZone(ObjectType);
  v43(&v45[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v42, v30);
  v79.receiver = v45;
  v79.super_class = v44;
  v46 = objc_msgSendSuper2(&v79, sel_init);
  v47 = *(v63 + 8);
  v47(v42, v30);
  v47(v37, v30);
  return v46;
}

id LinkSetWrapper.swappingElementsAt(_:andAt:)(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v20 - v13;
  v15 = v6[2];
  v15(v20 - v13, v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  sub_191CC6498();
  v15(v11, v14, v5);
  v16 = objc_allocWithZone(ObjectType);
  v15(&v16[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11, v5);
  v21.receiver = v16;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = v6[1];
  v18(v11, v5);
  v18(v14, v5);
  return v17;
}

id LinkSetWrapper.mergingLinkSet(_:)()
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x1EEE9AC00](v1, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  sub_191CC6578();
  v12 = v3[2];
  v12(v8, v11, v2);
  v13 = objc_allocWithZone(ObjectType);
  v12(&v13[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v8, v2);
  v17.receiver = v13;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = v3[1];
  v15(v8, v2);
  v15(v11, v2);
  return v14;
}

size_t LinkSetWrapper.mergingLegacyElementsArray(_:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v42 - v11;
  sub_191C0E22C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v22 = v15[2];
  v47 = v15 + 2;
  v48 = &v42 - v23;
  v46 = v22;
  v22();
  v49 = v20;
  if (a1 >> 62)
  {
    v24 = sub_191CC6EE8();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
LABEL_16:
    v51 = v25;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C13350();
    v34 = v48;
    v35 = sub_191CC6448();
    MEMORY[0x1EEE9AC00](v35, v36);
    *(&v42 - 2) = v25;
    sub_191CC64C8();

    v37 = v49;
    v38 = v46;
    (v46)(v49, v34, v14);
    v39 = objc_allocWithZone(ObjectType);
    (v38)(&v39[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v37, v14);
    v50.receiver = v39;
    v50.super_class = ObjectType;
    v40 = objc_msgSendSuper2(&v50, sel_init);
    v41 = v15[1];
    v41(v37, v14);
    v41(v34, v14);
    return v40;
  }

  v51 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v43 = v15;
    v44 = v14;
    v45 = ObjectType;
    v25 = v51;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v24; ++i)
      {
        v28 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v28 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v12);
        swift_unknownObjectRelease();
        v51 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_191C07F64(v29 > 1, v30 + 1, 1);
          v25 = v51;
        }

        *(v25 + 16) = v30 + 1;
        sub_191C132EC(v12, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30);
      }
    }

    else
    {
      v31 = (a1 + 32);
      do
      {
        sub_191C0D3DC(*v31 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v9);
        v51 = v25;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_191C07F64(v32 > 1, v33 + 1, 1);
          v25 = v51;
        }

        *(v25 + 16) = v33 + 1;
        sub_191C132EC(v9, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33);
        ++v31;
        --v24;
      }

      while (v24);
    }

    v14 = v44;
    ObjectType = v45;
    v15 = v43;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_191C11EE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_191C0D3DC(v11, v9);
      if (*v9 == *a1)
      {
        v13 = *(v4 + 20);
        v14 = sub_191CC6178();
        sub_191C133F8(v9);
        if (v14)
        {
          return 1;
        }
      }

      else
      {
        sub_191C133F8(v9);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

id sub_191C1202C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v6 = sub_191CC68E8();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

uint64_t LinkSetWrapper.description.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  sub_191CC6428();
  v0 = MEMORY[0x193B02090]();

  return v0;
}

uint64_t LinkSetWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_191C0DAF0(a1, v5);
  if (!v6)
  {
    sub_191C13D70(v5, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for UserDomainConceptLinkStruct(0);
  sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct);
  sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct);
  v2 = sub_191CC6418();

  return v2 & 1;
}

uint64_t sub_191C1239C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_191C13D70(v10, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
  return v8 & 1;
}

uint64_t LinkSetWrapper.hash.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  sub_191CC6428();
  sub_191C0DD28(&qword_1EADCACC8, type metadata accessor for UserDomainConceptLinkStructWrapper);
  v0 = sub_191CC6998();

  return v0;
}

id LinkSetWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_191C126B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_191C12754()
{
  result = sub_191C12774();
  qword_1EADCAC58 = result;
  return result;
}

uint64_t sub_191C12774()
{
  sub_191C13470(0, &qword_1EADCAD90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v74 = &v66 - v3;
  v4 = sub_191CC6008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v66 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v66 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v66 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v66 - v28;
  v30 = [objc_opt_self() defaultManager];
  v31 = [v30 URLsForDirectory:13 inDomains:1];

  v32 = sub_191CC68E8();
  if (!*(v32 + 16))
  {
    goto LABEL_7;
  }

  v73 = v26;
  v33 = *(v5 + 16);
  v34 = v32 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v71 = v10;
  v72 = v33;
  v33(v29, v34, v4);

  v35 = [objc_opt_self() mainBundle];
  v36 = [v35 bundleIdentifier];

  if (!v36)
  {
    (*(v5 + 8))(v29, v4);
    goto LABEL_9;
  }

  sub_191CC67B8();

  if (qword_1EADCA128 != -1)
  {
    swift_once();
  }

  if (byte_1EADE7040)
  {
    (*(v5 + 8))(v29, v4);
LABEL_7:

LABEL_9:
    if (qword_1EADCA130 != -1)
    {
      swift_once();
    }

    v37 = sub_191CC6348();
    __swift_project_value_buffer(v37, qword_1EADE7048);
    v38 = sub_191CC6328();
    v39 = sub_191CC6CB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_19197B000, v38, v39, "Create transient CRContext", v40, 2u);
      MEMORY[0x193B047C0](v40, -1, -1);
    }

    sub_191CC6628();
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v41 = MEMORY[0x193B01DA0](0, &v75);
    sub_191C13D70(&v75, &unk_1EADCAD98, sub_191C13DD0, MEMORY[0x1E69E6720], sub_191C13470);
    return v41;
  }

  v69 = v29;
  sub_191CC5FE8();

  v43 = [objc_opt_self() processInfo];
  v44 = [v43 processName];

  v45 = sub_191CC67B8();
  v47 = v46;

  *&v75 = v45;
  *(&v75 + 1) = v47;
  MEMORY[0x193B01F90](0x6E657265686F632ELL, 0xEA00000000006563);
  v48 = v73;
  sub_191CC5FE8();

  v70 = *(v5 + 8);
  v70(v22, v4);
  if (qword_1EADCA130 != -1)
  {
    swift_once();
  }

  v49 = sub_191CC6348();
  v50 = __swift_project_value_buffer(v49, qword_1EADE7048);
  v51 = v72;
  v72(v18, v48, v4);
  v68 = v50;
  v52 = sub_191CC6328();
  v53 = sub_191CC6CB8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v66 = v54;
    v67 = swift_slowAlloc();
    *&v75 = v67;
    *v54 = 136315138;
    sub_191C0DD28(&qword_1EADCADA8, MEMORY[0x1E6968FB0]);
    v55 = sub_191CC7398();
    v57 = v56;
    v58 = v18;
    v59 = v70;
    v70(v58, v4);
    v60 = sub_191C3B288(v55, v57, &v75);
    v51 = v72;

    v61 = v66;
    *(v66 + 1) = v60;
    v62 = v61;
    _os_log_impl(&dword_19197B000, v52, v53, "Create CRContext at %s", v61, 0xCu);
    v63 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x193B047C0](v63, -1, -1);
    MEMORY[0x193B047C0](v62, -1, -1);
  }

  else
  {

    v64 = v18;
    v59 = v70;
    v70(v64, v4);
  }

  sub_191CC6628();
  v65 = v73;
  v51(v14, v73, v4);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  (*(v5 + 56))(v74, 1, 1, v4);
  v41 = sub_191CC6618();
  v59(v65, v4);
  v59(v69, v4);
  return v41;
}

id static CRContext.sharedCoherenceContext.getter()
{
  if (qword_1EADCA120 != -1)
  {
    swift_once();
  }

  v1 = qword_1EADCAC58;

  return v1;
}

void sub_191C13210()
{
  v0 = sub_191CC6778();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1EADE7040 = v2;
}

uint64_t sub_191C13274()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7048);
  __swift_project_value_buffer(v0, qword_1EADE7048);
  return sub_191CC6338();
}

uint64_t sub_191C132EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_191C13350()
{
  result = qword_1EADCAC98;
  if (!qword_1EADCAC98)
  {
    sub_191C13470(255, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC98);
  }

  return result;
}

uint64_t sub_191C133F8(uint64_t a1)
{
  v2 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191C13470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C134D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UserDomainConceptLinkStruct(255);
    v7 = sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct);
    v8 = sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191C13668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C13778()
{
  result = sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_191C13918()
{
  result = qword_1EADCAD18;
  if (!qword_1EADCAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD18);
  }

  return result;
}

unint64_t sub_191C13970()
{
  result = qword_1EADCAD20;
  if (!qword_1EADCAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD20);
  }

  return result;
}

unint64_t sub_191C139C8()
{
  result = qword_1EADCAD28;
  if (!qword_1EADCAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD28);
  }

  return result;
}

unint64_t sub_191C13A20()
{
  result = qword_1EADCAD30;
  if (!qword_1EADCAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD30);
  }

  return result;
}

unint64_t sub_191C13A78()
{
  result = qword_1EADCAD38;
  if (!qword_1EADCAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD38);
  }

  return result;
}

unint64_t sub_191C13AD0()
{
  result = qword_1EADCAD40;
  if (!qword_1EADCAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD40);
  }

  return result;
}

unint64_t sub_191C13B28()
{
  result = qword_1EADCAD48;
  if (!qword_1EADCAD48)
  {
    sub_191C13BA4(255, &qword_1EADCAD50, &type metadata for UserDomainConceptLinkStruct.CodingKeys, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD48);
  }

  return result;
}

void sub_191C13BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_191C13C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C13A20();
    v7 = a3(a1, &type metadata for UserDomainConceptLinkStruct.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_191C13CE8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  return sub_191CC6178() & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_191C13D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_191C13DD0()
{
  result = qword_1EADCADA0;
  if (!qword_1EADCADA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCADA0);
  }

  return result;
}

unint64_t sub_191C13E34()
{
  result = qword_1EADCC5C0;
  if (!qword_1EADCC5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC5C0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

unint64_t sub_191C13EF8()
{
  result = qword_1EADCADB8;
  if (!qword_1EADCADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADB8);
  }

  return result;
}

uint64_t HKHealthStore.dateOfBirthComponents.getter(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C13F90, 0, 0);
}

uint64_t sub_191C13F90()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[17];
  v6 = v1[16];
  v1[2] = v2;
  v1[7] = v6;
  v1[3] = sub_191BFBE34;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C141E0;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C141E8;
  v1[13] = &block_descriptor_9;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v5 _dateOfBirthWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C140D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_191C14BDC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v15 - v10;
  if (a2)
  {
    sub_191BF92E0();
    swift_allocError();
    *v12 = a2;
    v13 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_191C14C90(a1, &v15 - v10);
    sub_191C14CF4(v11, *(*(a3 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_191C141E8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_191C14BDC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_191CC5D58();
    v13 = sub_191CC5DC8();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_191CC5DC8();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_191C14C34(v10);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C1435C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C144A4;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_7;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 _bloodTypeWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C144E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191BFFBF4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14630;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_14;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 _biologicalSexWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C14674()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C147BC;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_21;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 _fitzpatrickSkinTypeWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C14800()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14948;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_28;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 _wheelchairUseWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C1498C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14BB8;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_35;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 _activityMoveModeObjectWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

void sub_191C14AD4(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    v9 = a1;
    **(*(a3 + 64) + 40) = [v9 *a4];
    swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_191BF92E0();
    swift_allocError();
    *v7 = a2;
    v8 = a2;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }
}

void sub_191C14BDC()
{
  if (!qword_1EADCADC0)
  {
    sub_191CC5DC8();
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCADC0);
    }
  }
}

uint64_t sub_191C14C34(uint64_t a1)
{
  sub_191C14BDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C14C90(uint64_t a1, uint64_t a2)
{
  sub_191C14BDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C14CF4(uint64_t a1, uint64_t a2)
{
  sub_191C14BDC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_191C14D94@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE9TrimesterO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id HKMCPregnancyDatesFactory.init(pregnancySample:state:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPregnancySample:a1 state:a2];

  return v3;
}

id HKMCPregnancyDatesFactory.init(pregnancySample:state:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___HKMCPregnancyDatesFactory_pregnancySample) = a1;
  *(v2 + OBJC_IVAR___HKMCPregnancyDatesFactory_state) = a2;
  v4.super_class = HKMCPregnancyDatesFactory;
  return objc_msgSendSuper2(&v4, sel_init);
}

id HKMCPregnancyDatesFactory.generateModel(educationalStepsCompletedDate:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_191C1C2CC(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v111 = &v104 - v8;
  v124 = sub_191CC5CF8();
  v9 = *(v124 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v123 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_191CC6148();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v104 - v21;
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], v4);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v119 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v104 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v118 = &v104 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v117 = &v104 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v116 = &v104 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v110 = &v104 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = &v104 - v46;
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  v120 = &v104 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v122 = &v104 - v53;
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v104 - v55;
  v57 = [v2 pregnancySample];
  if (!v57)
  {
    return [objc_allocWithZone(HKMCPregnancyModel) initWithState:0 pregnancyStartDate:0 pregnancyEndDate:0 estimatedDueDate:0 pregnancyDuration:0 physiologicalWashoutEndDate:0 behavioralWashoutEndDate:0 trimesters:0 sample:0 educationalStepsCompletedDate:0];
  }

  started = v2;
  v108 = a1;
  v115 = v9;
  v58 = v57;
  v59 = [v58 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  LOBYTE(v59) = sub_191CC60E8();
  v113 = v14;
  v61 = *(v14 + 8);
  v60 = v14 + 8;
  v61(v19, v13);
  v121 = v61;
  v61(v22, v13);
  v112 = v31;
  if (v59)
  {
    v62 = 1;
  }

  else
  {
    v64 = [v58 endDate];
    sub_191CC60F8();

    v62 = 0;
  }

  v65 = *(v113 + 56);
  v66 = 1;
  v114 = v56;
  v65(v56, v62, 1, v13);
  v67 = [v58 startDate];
  sub_191CC60F8();

  v68 = [v58 endDate];
  sub_191CC60F8();

  static HKMCPregnancyDatesFactory.calculateDuration(pregnancyStart:pregnancyEnd:)(v22, v19);
  v69 = v19;
  v70 = v121;
  v121(v69, v13);
  v106 = v60;
  v70(v22, v13);
  static HKMCPregnancyDatesFactory.calculateBehavioralWashout(for:)(v58, v122);
  v71 = [swift_getObjCClassFromMetadata() calculatePhysiologicalWashoutFromPregnancySample_];
  if (v71)
  {
    v72 = v71;
    sub_191CC60F8();

    v66 = 0;
  }

  v73 = v124;
  v65(v47, v66, 1, v13);
  v74 = v47;
  v75 = v120;
  sub_191C18F38(v74, v120);
  ObjectType = [started state];
  v76 = [v58 startDate];
  v77 = v110;
  sub_191CC60F8();

  v65(v77, 0, 1, v13);
  sub_191C18FCC(v114, v116);
  v78 = v117;
  static HKMCPregnancyDatesFactory.calculateEstimatedDueDate(sample:)(v58, v117);
  v65(v78, 0, 1, v13);
  v79 = v115;
  v80 = v111;
  (*(v115 + 16))(v111, v123, v73);
  (*(v79 + 56))(v80, 0, 1, v73);
  sub_191C18FCC(v75, v118);
  sub_191C18FCC(v122, v112);
  v81 = [v58 startDate];
  v105 = v58;

  sub_191CC60F8();
  started = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE19calculateTrimesters14pregnancyStartSay10Foundation4DateVGAH_tFZ_0();
  v82 = v121;
  v121(v22, v13);
  sub_191C18FCC(v108, v119);
  v83 = *(v113 + 48);
  if (v83(v77, 1, v13) == 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = sub_191CC60A8();
    v82(v77, v13);
  }

  v84 = v116;
  v85 = v83(v116, 1, v13);
  v86 = v124;
  if (v85 == 1)
  {
    v110 = 0;
  }

  else
  {
    v110 = sub_191CC60A8();
    v82(v84, v13);
  }

  v87 = v117;
  if (v83(v117, 1, v13) == 1)
  {
    v117 = 0;
  }

  else
  {
    v117 = sub_191CC60A8();
    v82(v87, v13);
  }

  if ((*(v79 + 48))(v80, 1, v86) == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_191CC5C88();
    (*(v79 + 8))(v80, v86);
  }

  v89 = v112;
  v90 = v118;
  if (v83(v118, 1, v13) == 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = sub_191CC60A8();
    v121(v90, v13);
  }

  if (v83(v89, 1, v13) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_191CC60A8();
    v121(v89, v13);
  }

  v93 = v119;
  v94 = sub_191CC68D8();

  if (v83(v93, 1, v13) == 1)
  {
    v95 = 0;
  }

  else
  {
    v96 = v93;
    v95 = sub_191CC60A8();
    v121(v96, v13);
  }

  v97 = objc_allocWithZone(HKMCPregnancyModel);
  v98 = v105;
  v99 = v110;
  v100 = v113;
  v101 = v117;
  v102 = [v97 initWithState:ObjectType pregnancyStartDate:v113 pregnancyEndDate:v110 estimatedDueDate:v117 pregnancyDuration:v88 physiologicalWashoutEndDate:v91 behavioralWashoutEndDate:v92 trimesters:v94 sample:v105 educationalStepsCompletedDate:v95];

  v103 = MEMORY[0x1E6969530];
  sub_191C19E70(v120, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  sub_191C19E70(v122, &unk_1ED5EFFF0, v103);
  (*(v115 + 8))(v123, v124);
  sub_191C19E70(v114, &unk_1ED5EFFF0, v103);
  return v102;
}

uint64_t static HKMCPregnancyDatesFactory.calculateDuration(pregnancyStart:pregnancyEnd:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  sub_191CC6078();
  v14 = sub_191CC60E8();
  v15 = *(v5 + 8);
  v15(v13, v4);
  if (v14)
  {
    sub_191CC6108();
    sub_191CC6088();
    v15(v13, v4);
    (*(v5 + 16))(v13, a1, v4);
    return sub_191CC5CD8();
  }

  else
  {
    v17 = *(v5 + 16);
    v17(v13, a1, v4);
    v17(v10, a2, v4);
    return sub_191CC5CC8();
  }
}

uint64_t static HKMCPregnancyDatesFactory.calculateBehavioralWashout(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - v12;
  v14 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  sub_191C1C284(&qword_1EADCADD8, MEMORY[0x1E6969530]);
  LOBYTE(v14) = sub_191CC6768();
  v15 = *(v5 + 8);
  v15(v10, v4);
  v15(v13, v4);
  if (v14)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v17 = [a1 endDate];
  sub_191CC60F8();

  v18 = [a1 startDate];
  sub_191CC60F8();

  sub_191CC6088();
  v15(v10, v4);
  v15(v13, v4);
  v19 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6098();
  v15(v13, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t static HKMCPregnancyDatesFactory.calculateEstimatedDueDate(sample:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_191CC6148();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_191CC61C8();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v44, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_191CC62A8();
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v47, v14);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - v18;
  v20 = sub_191CC6308();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v42 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v42 - v32;
  v46 = a1;
  v34 = [a1 _timeZone];
  if (v34)
  {
    v35 = v34;
    sub_191CC62E8();

    (*(v21 + 32))(v33, v30, v20);
    v36 = v44;
    (*(v7 + 104))(v11, *MEMORY[0x1E6969868], v44);
    sub_191CC61D8();
    (*(v7 + 8))(v11, v36);
    (*(v21 + 16))(v26, v33, v20);
    sub_191CC6278();
    v37 = [v46 startDate];
    v38 = v48;
    sub_191CC60F8();

    v39 = v45;
    v40 = v47;
    (*(v12 + 16))(v45, v19, v47);
    DayIndex.init(date:calendar:)(v38, v39, &v49);
    if (!__OFADD__(v49, 280))
    {
      v49 += 280;
      DayIndex.startDate(in:)(v19, v43);
      (*(v12 + 8))(v19, v40);
      return (*(v21 + 8))(v33, v20);
    }

    __break(1u);
  }

  result = sub_191CC7118();
  __break(1u);
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v47 = a2;
  v48 = a1;
  v6 = sub_191CC6148();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v44 - v13;
  v15 = sub_191CC6308();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v44 - v21;
  v23 = sub_191CC62A8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C187C8(a3, a4, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_191C19E70(v22, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
    return sub_191CC7658();
  }

  (*(v24 + 32))(v28, v22, v23);
  sub_191CC62F8();
  sub_191CC6278();
  sub_191CC61F8();
  sub_191CC61F8();
  v30 = objc_opt_self();
  v31 = sub_191CC60A8();
  v32 = sub_191CC60A8();
  LODWORD(v30) = [v30 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v31 pregnancyEndDate:v32];

  if (v30)
  {
    result = sub_191CC6088();
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        v34 = sub_191CC7638();
        v35 = *(v45 + 8);
        v36 = v11;
        v37 = v46;
        v35(v36, v46);
        v35(v14, v37);
        (*(v24 + 8))(v28, v23);
        return v34;
      }

LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_13;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](91, 0xE100000000000000);
  v38 = sub_191CC76A8();
  MEMORY[0x193B01F90](v38);

  MEMORY[0x193B01F90](0xD000000000000047, 0x8000000191D2BB10);
  v39 = v49;
  v40 = v50;
  sub_191C19EE0();
  swift_allocError();
  *v41 = v39;
  v41[1] = v40;
  swift_willThrow();
  v42 = v46;
  v43 = *(v45 + 8);
  v43(v11, v46);
  v43(v14, v42);
  return (*(v24 + 8))(v28, v23);
}

uint64_t static HKMCPregnancyDatesFactory.weeksAndDaysFormat(width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  v19[1] = a1;
  v2 = sub_191CC75A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC7568();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  v14 = *(sub_191CC75D8() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_191CC7558();
  sub_191CC7598();
  sub_191CC5BE8();

  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

id sub_191C16B88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC60F8();
  v13 = a4;
  sub_191C19F34(v12, v13, a5);

  (*(v8 + 8))(v12, v7);
  v14 = sub_191CC6778();

  return v14;
}

uint64_t static HKMCPregnancyDatesFactory.replaceSpacesWithNonBreakingSpaces(dateString:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC5C68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_191CC5C58();
  sub_191C1B784();
  v10 = sub_191CC6E08();
  (*(v5 + 8))(v9, v4);
  v13[0] = v10;
  sub_191C1B7D8();
  sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8);
  v11 = sub_191CC66D8();

  return v11;
}

id sub_191C16E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t, uint64_t))
{
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - v15;
  sub_191CC60F8();
  sub_191CC60F8();
  v17 = sub_191CC67B8();
  a6(v16, v13, v17, v18);

  v19 = *(v8 + 8);
  v19(v13, v7);
  v19(v16, v7);
  v20 = sub_191CC6778();

  return v20;
}

uint64_t static HKMCPregnancyDatesFactory.gestationalAgeInComponents(on:pregnancyStart:startTimeZoneName:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a2;
  v66 = a1;
  v8 = sub_191CC6148();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v69 = &v62 - v14;
  v15 = MEMORY[0x1E69E6720];
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v62 - v19;
  v21 = sub_191CC62A8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v62 - v29;
  sub_191C1C2CC(0, &qword_1EADCADC0, MEMORY[0x1E6968278], v15);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v35 = &v62 - v34;
  sub_191C187C8(a3, a4, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_191C19E70(v20, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
    v36 = sub_191CC5DC8();
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_8:
    sub_191C19E70(v35, &qword_1EADCADC0, MEMORY[0x1E6968278]);
    sub_191CC5DC8();
    return (*(*(v36 - 8) + 56))(a5, 1, 1, v36);
  }

  v63 = v27;
  (*(v22 + 32))(v30, v20, v21);
  sub_191CC61F8();
  sub_191CC61F8();
  v37 = objc_opt_self();
  v38 = sub_191CC60A8();
  v39 = sub_191CC60A8();
  LOBYTE(v37) = [v37 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v38 pregnancyEndDate:v39];

  v64 = a5;
  if (v37)
  {
    sub_191CC6258();
    sub_191C1C2CC(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v40 = sub_191CC6288();
    v41 = *(v40 - 8);
    v65 = v8;
    v42 = v41;
    v43 = *(v41 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_191DD1F40;
    v46 = v45 + v44;
    v47 = *MEMORY[0x1E6969A20];
    v66 = v35;
    v48 = v67;
    v49 = *(v42 + 104);
    v49(v46, v47, v40);
    v49(v46 + v43, *MEMORY[0x1E6969A48], v40);
    sub_191C19060(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v51 = v68;
    v50 = v69;
    v52 = v63;
    sub_191CC6208();

    v53 = *(v22 + 8);
    v53(v52, v21);
    v54 = *(v48 + 8);
    v55 = v65;
    v54(v51, v65);
    v54(v50, v55);
    v35 = v66;
    v53(v30, v21);
    v56 = 0;
  }

  else
  {
    v57 = *(v67 + 8);
    v57(v68, v8);
    v57(v69, v8);
    (*(v22 + 8))(v30, v21);
    v56 = 1;
  }

  v36 = sub_191CC5DC8();
  v58 = *(v36 - 8);
  v59 = *(v58 + 56);
  v59(v35, v56, 1, v36);
  if ((*(v58 + 48))(v35, 1, v36) == 1)
  {
    a5 = v64;
    goto LABEL_8;
  }

  v61 = v64;
  (*(v58 + 32))(v64, v35, v36);
  return (v59)(v61, 0, 1, v36);
}

uint64_t static HKMCPregnancyDatesFactory.calculateGestationalAgeComponentsForDisplay(fromPregnancyStart:startTimeZoneName:end:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_191CC6148();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v52 = &v48 - v11;
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v48 - v15;
  v17 = sub_191CC62A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v48 - v25;
  sub_191C187C8(a1, a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_191C19E70(v16, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
LABEL_6:
    v44 = 1;
    goto LABEL_7;
  }

  (*(v18 + 32))(v26, v16, v17);
  sub_191CC61F8();
  sub_191CC61F8();
  v27 = objc_opt_self();
  v28 = sub_191CC60A8();
  v29 = sub_191CC60A8();
  LODWORD(v27) = [v27 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v28 pregnancyEndDate:v29];

  if (!v27)
  {
    v45 = *(v50 + 8);
    v45(v51, v5);
    v45(v52, v5);
    (*(v18 + 8))(v26, v17);
    goto LABEL_6;
  }

  v49 = v23;
  sub_191CC6258();
  sub_191C1C2CC(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v30 = sub_191CC6288();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_191DD1F40;
  v35 = v34 + v33;
  v36 = *MEMORY[0x1E6969A20];
  v48 = v5;
  v37 = *(v31 + 104);
  v37(v35, v36, v30);
  v37(v35 + v32, *MEMORY[0x1E6969A48], v30);
  sub_191C19060(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v51;
  v38 = v52;
  v40 = v49;
  sub_191CC6208();

  v41 = *(v18 + 8);
  v41(v40, v17);
  v42 = *(v50 + 8);
  v43 = v48;
  v42(v39, v48);
  v42(v38, v43);
  v41(v26, v17);
  v44 = 0;
LABEL_7:
  v46 = sub_191CC5DC8();
  return (*(*(v46 - 8) + 56))(v53, v44, 1, v46);
}

id static HKMCPregnancyDatesFactory.isPregnancyDurationPhysiologicallyPossible(forPregnancyStart:)()
{
  v0 = sub_191CC6148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_191CC60A8();
  sub_191CC6138();
  v8 = sub_191CC60A8();
  (*(v1 + 8))(v5, v0);
  v9 = [ObjCClassFromMetadata isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v7 pregnancyEndDate:v8];

  return v9;
}

uint64_t static HKMCPregnancyDatesFactory.calculatePhysiologicalWashout(fromPregnancySample:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - v12;
  v14 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  sub_191C1C284(&qword_1EADCADD8, MEMORY[0x1E6969530]);
  LOBYTE(v14) = sub_191CC6768();
  v15 = *(v5 + 8);
  v15(v10, v4);
  v15(v13, v4);
  if (v14)
  {
    goto LABEL_3;
  }

  v16 = [a1 endDate];
  sub_191CC60F8();

  v17 = [a1 startDate];
  sub_191CC60F8();

  sub_191CC6088();
  v19 = v18;
  v15(v10, v4);
  v15(v13, v4);
  if (v19 < 12096000.0)
  {
LABEL_3:
    v20 = 1;
  }

  else
  {
    v21 = [a1 endDate];
    sub_191CC60F8();

    sub_191CC6098();
    v15(v13, v4);
    v20 = 0;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

HKMCPregnancyDatesFactory __swiftcall HKMCPregnancyDatesFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.state = v3;
  result.pregnancySample = v2;
  result.super.isa = v1;
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.calculateStartDateFromGestationalAge(weeks:days:on:)(uint64_t result, uint64_t a2)
{
  if ((result * 7) >> 64 == (7 * result) >> 63)
  {
    if (!__OFADD__(7 * result, a2))
    {
      return sub_191CC6098();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.calculateStartDateFromEmbryoTransfer(date:embryonicAgeInDays:)(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
  }

  else if (!__OFSUB__(-a2, 14))
  {
    return sub_191CC6098();
  }

  __break(1u);
  return result;
}

uint64_t sub_191C187C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_191CC61C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v36 - v14;
  v16 = sub_191CC6308();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v36 - v24;
  v37 = a1;
  v26 = a2;
  sub_191CC62C8();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v27 = v38;
    sub_191C19E70(v15, &qword_1EADCAED0, MEMORY[0x1E6969BC0]);
    if (HKShowSensitiveLogItems())
    {
      if (qword_1EADCA138 != -1)
      {
        swift_once();
      }

      v28 = sub_191CC6348();
      __swift_project_value_buffer(v28, qword_1EADE7060);

      v29 = sub_191CC6328();
      v30 = sub_191CC6C98();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_191C3B288(0x7261646E656C6143, 0xE800000000000000, &v39);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_191C3B288(v37, v26, &v39);
        _os_log_impl(&dword_19197B000, v29, v30, "[%s] Error: Not a valid timezone - %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193B047C0](v32, -1, -1);
        MEMORY[0x193B047C0](v31, -1, -1);
      }
    }

    v33 = 1;
  }

  else
  {
    (*(v17 + 32))(v25, v15, v16);
    (*(v6 + 104))(v10, *MEMORY[0x1E6969868], v5);
    v27 = v38;
    sub_191CC61D8();
    (*(v6 + 8))(v10, v5);
    (*(v17 + 16))(v22, v25, v16);
    sub_191CC6278();
    (*(v17 + 8))(v25, v16);
    v33 = 0;
  }

  v34 = sub_191CC62A8();
  return (*(*(v34 - 8) + 56))(v27, v33, 1, v34);
}

uint64_t static HKMCPregnancyDatesFactory.calculateEmbryoTransferDate(fromPregnancyStart:embryonicAgeInDays:)(uint64_t a1, uint64_t a2)
{
  if (!__OFADD__(a2, 14))
  {
    return sub_191CC6098();
  }

  __break(1u);
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.currentTrimester(on:pregnancySample:)(uint64_t a1, void *a2)
{
  v3 = sub_191CC6308();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC6148();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 startDate];
  sub_191CC60F8();

  v16 = [a2 _timeZoneName];
  if (v16)
  {
    v17 = v16;
    sub_191CC67B8();
  }

  else
  {
    sub_191CC62F8();
    sub_191CC62D8();
    (*(v4 + 8))(v8, v3);
  }

  v18 = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE16currentTrimester2on14pregnancyStart17startTimeZoneNameAbCE0G0O10Foundation4DateV_ALSStFZ_0();

  (*(v10 + 8))(v14, v9);
  return v18;
}

uint64_t sub_191C18E90()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7060);
  __swift_project_value_buffer(v0, qword_1EADE7060);
  return sub_191CC6338();
}

unint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE9TrimesterO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_191C18F38(uint64_t a1, uint64_t a2)
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C18FCC(uint64_t a1, uint64_t a2)
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C19060(uint64_t a1)
{
  v2 = sub_191CC6288();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_191C1BEC8();
    v12 = sub_191CC6F98();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_191C1C284(&qword_1EADCAE38, MEMORY[0x1E6969AD0]);
      v20 = sub_191CC6698();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_191C1C284(&qword_1EADCAE40, MEMORY[0x1E6969AD0]);
          v27 = sub_191CC6768();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE19calculateTrimesters14pregnancyStartSay10Foundation4DateVGAH_tFZ_0()
{
  v27 = sub_191CC62A8();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v26 - v17;
  sub_191CC6258();
  sub_191CC61F8();
  (*(v0 + 8))(v4, v27);
  sub_191CC6098();
  sub_191CC6098();
  sub_191C1C2CC(0, qword_1EADCAEE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
  v19 = *(v6 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_191DD1F50;
  v22 = v21 + v20;
  v23 = *(v7 + 16);
  v23(v22, v18, v5);
  v23(v22 + v19, v15, v5);
  (*(v7 + 32))(v22 + 2 * v19, v26, v5);
  v24 = *(v7 + 8);
  v24(v15, v5);
  v24(v18, v5);
  return v21;
}

uint64_t sub_191C19654(uint64_t a1)
{
  v2 = sub_191CC75D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_191C1C1F0();
    v12 = sub_191CC6F98();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_191C1C284(&qword_1EADCAEC0, MEMORY[0x1E696A1C0]);
      v20 = sub_191CC6698();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_191C1C284(&qword_1EADCAEC8, MEMORY[0x1E696A1C0]);
          v27 = sub_191CC6768();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE20gestationalAgeString2on14pregnancyStart17startTimeZoneNameSS10Foundation4DateV_AJSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_191CC75A8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_191CC7568();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_191CC7608();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_191CC7618();
  v37 = *(v23 - 8);
  v24 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKMCPregnancyDatesFactory();
  static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(a1, a2, a3, a4);
  v34[1] = v28;
  sub_191CC75F8();
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  v29 = *(sub_191CC75D8() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_191CC7558();
  sub_191CC7598();
  sub_191CC5BE8();

  (*(v40 + 8))(v12, v41);
  (*(v38 + 8))(v17, v39);
  (*(v35 + 8))(v22, v36);
  sub_191C1C284(&qword_1EADCAED8, MEMORY[0x1E696A218]);
  sub_191CC7628();
  (*(v37 + 8))(v27, v23);
  return v42;
}

uint64_t sub_191C19E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C1C2CC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_191C19EE0()
{
  result = qword_1EADCADE8;
  if (!qword_1EADCADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADE8);
  }

  return result;
}

uint64_t sub_191C19F34(uint64_t a1, void *a2, SEL *a3)
{
  v27 = a3;
  v4 = sub_191CC6308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC6148();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_191CC60A8();
  v17 = [a2 startDate];
  sub_191CC60F8();

  v18 = sub_191CC60A8();
  (*(v11 + 8))(v15, v10);
  v19 = [a2 _timeZoneName];
  if (v19)
  {
    v20 = v19;
    sub_191CC67B8();
  }

  else
  {
    sub_191CC62F8();
    sub_191CC62D8();
    (*(v5 + 8))(v9, v4);
  }

  v21 = objc_opt_self();
  v22 = sub_191CC6778();

  v23 = [v21 *v27];

  v24 = sub_191CC67B8();
  return v24;
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE27gestationalAgeCompactString2on14pregnancyStart17startTimeZoneNameSS10Foundation4DateV_AJSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v173 = a3;
  v174 = a4;
  v169 = a2;
  v145 = sub_191CC5C68();
  v161 = *(v145 - 8);
  v5 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v145, v6);
  v144 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_191CC5DF8();
  v8 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157, v9);
  v156 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_191CC5EC8();
  v162 = *(v155 - 8);
  v11 = v162[8];
  MEMORY[0x1EEE9AC00](v155, v12);
  v154 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1BF5C();
  v153 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v152 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCAE58, MEMORY[0x1E69684A8], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v170 = &v131 - v21;
  v159 = sub_191CC5DE8();
  v160 = *(v159 - 8);
  v22 = *(v160 + 64);
  v24 = MEMORY[0x1EEE9AC00](v159, v23);
  v26 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v131 - v28;
  v158 = sub_191CC5E38();
  v168 = *(v158 - 8);
  v30 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v158, v31);
  v176 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_191CC5E18();
  v141 = *(v33 - 8);
  v34 = *(v141 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v131 - v40;
  v171 = sub_191CC5E48();
  v165 = *(v171 - 8);
  v42 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v171, v43);
  v164 = (&v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_191C1BFF0();
  v166 = v45;
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v47);
  v172 = &v131 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_191CC7578();
  v150 = *(v163 - 1);
  v49 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v163, v50);
  v149 = (&v131 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = sub_191CC75A8();
  v147 = *(v148 - 1);
  v52 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148, v53);
  v143 = (&v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_191CC7568();
  v142 = *(v146 - 1);
  v55 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v146, v56);
  v139 = &v131 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_191CC7608();
  v138 = *(v140 - 8);
  v58 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140, v59);
  v61 = &v131 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_191CC7618();
  v136 = *(v137 - 8);
  v62 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137, v63);
  v135 = &v131 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_191CC5E78();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65, v68);
  v175 = &v131 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for HKMCPregnancyDatesFactory();
  static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(a1, v169, v173, v174);
  v132 = v70;
  v133 = v66;
  v134 = v65;
  v169 = v41;
  v173 = v38;
  v174 = v33;
  v167 = v29;
  v151 = v26;
  sub_191CC75E8();
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  v72 = *(sub_191CC75D8() - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v75 = swift_allocObject();
  v131 = xmmword_191DD1F40;
  *(v75 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v75);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v76 = v139;
  sub_191CC7558();
  v77 = v143;
  sub_191CC7598();
  v78 = v135;
  sub_191CC5BE8();

  (*(v147 + 8))(v77, v148);
  (*(v142 + 8))(v76, v146);
  (*(v138 + 8))(v61, v140);
  v79 = v149;
  sub_191CC7588();
  (*(v136 + 8))(v78, v137);
  sub_191C1C284(&qword_1EADCAE70, MEMORY[0x1E696A1A8]);
  v80 = v175;
  v81 = v163;
  sub_191CC7628();
  (*(v150 + 8))(v79, v81);
  v182 = 0;
  v183 = 0xE000000000000000;
  v180 = 0;
  v181 = 0xE000000000000000;
  v82 = v164;
  sub_191CC5E58();
  v83 = v165;
  v84 = v171;
  v85 = v172;
  (*(v165 + 16))(v172, v82, v171);
  v86 = *(v166 + 36);
  v87 = sub_191C1C284(&qword_1EADCAE68, MEMORY[0x1E69687C8]);
  sub_191CC6BB8();
  (*(v83 + 8))(v82, v84);
  v168 += 8;
  v165 = v141 + 16;
  v164 = (v141 + 32);
  v163 = (v160 + 48);
  v149 = (v160 + 32);
  v148 = (v162 + 1);
  LODWORD(v147) = *MEMORY[0x1E6968490];
  v146 = (v160 + 104);
  v162 = (v160 + 8);
  LODWORD(v142) = *MEMORY[0x1E6968480];
  v143 = (v161 + 8);
  v161 = v141 + 8;
  v88 = v159;
  v89 = v158;
  v166 = v86;
  v150 = v87;
  while (1)
  {
    sub_191CC6BE8();
    sub_191C1C284(&qword_1EADCAE78, MEMORY[0x1E69687B0]);
    v90 = sub_191CC6768();
    (*v168)(v176, v89);
    v91 = v169;
    if (v90)
    {
      break;
    }

    v92 = sub_191CC6C58();
    v93 = v91;
    v94 = v91;
    v95 = v174;
    (*v165)(v93);
    v92(&v178, 0);
    sub_191CC6BF8();
    v96 = v173;
    (*v164)(v173, v94, v95);
    sub_191C1C084();
    v97 = v170;
    sub_191CC5E28();
    if ((*v163)(v97, 1, v88) == 1)
    {
      (*v161)(v96, v95);
      sub_191C19E70(v97, &qword_1EADCAE58, MEMORY[0x1E69684A8]);
      v80 = v175;
      v85 = v172;
    }

    else
    {
      (*v149)(v167, v97, v88);
      v98 = v152;
      sub_191CC5E08();
      sub_191C1C284(&qword_1EADCAE88, sub_191C1BF5C);
      v99 = v154;
      sub_191CC5E88();
      sub_191C1C0D8(v98, sub_191C1BF5C);
      sub_191CC5EB8();
      (*v148)(v99, v155);
      sub_191C1C284(&qword_1EADCAE90, MEMORY[0x1E6968678]);
      v100 = sub_191CC6828();
      v102 = v101;
      v103 = *v146;
      v104 = v151;
      (*v146)(v151, v147, v88);
      sub_191C1C284(&qword_1EADCAE98, MEMORY[0x1E69684A8]);
      sub_191CC6878();
      sub_191CC6878();
      v160 = *v162;
      (v160)(v104, v88);
      if (v178 == v177)
      {
        v178 = v100;
        v179 = v102;
        v105 = v144;
        sub_191CC5C58();
        sub_191C1B784();
        v106 = sub_191CC6E08();
        (*v143)(v105, v145);

        v178 = v106;
        sub_191C1B7D8();
        sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8);
        v107 = sub_191CC66D8();
        v109 = v108;

        MEMORY[0x193B01F90](v107, v109);
        v89 = v158;
        v80 = v175;
        v111 = v173;
        v110 = v174;
        v85 = v172;
        v112 = v160;
      }

      else
      {
        v103(v104, v142, v88);
        sub_191CC6878();
        sub_191CC6878();
        v113 = v160;
        (v160)(v104, v88);
        v112 = v113;
        if (v178 == v177)
        {
          v178 = v100;
          v179 = v102;
          v114 = v144;
          sub_191CC5C58();
          sub_191C1B784();
          v115 = sub_191CC6E08();
          (*v143)(v114, v145);

          v178 = v115;
          sub_191C1B7D8();
          sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8);
          v116 = sub_191CC66D8();
          v118 = v117;

          MEMORY[0x193B01F90](v116, v118);
        }

        v89 = v158;
        v80 = v175;
        v111 = v173;
        v110 = v174;
        v85 = v172;
      }

      v88 = v159;
      v112(v167, v159);
      (*v161)(v111, v110);
    }
  }

  sub_191C1C0D8(v85, sub_191C1BFF0);
  v120 = v182;
  v119 = v183;
  v121 = HIBYTE(v183) & 0xF;
  if ((v183 & 0x2000000000000000) == 0)
  {
    v121 = v182 & 0xFFFFFFFFFFFFLL;
  }

  if (v121)
  {
    v123 = v180;
    v122 = v181;
    v124 = HIBYTE(v181) & 0xF;
    if ((v181 & 0x2000000000000000) == 0)
    {
      v124 = v180 & 0xFFFFFFFFFFFFLL;
    }

    v125 = v133;
    if (v124)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v127 = [objc_opt_self() bundleForClass_];
      sub_191CC5E98();

      sub_191C1C2CC(0, &qword_1EADCAEA0, sub_191C1C138, MEMORY[0x1E69E6F90]);
      v128 = swift_allocObject();
      *(v128 + 16) = v131;
      v129 = MEMORY[0x1E69E6158];
      *(v128 + 56) = MEMORY[0x1E69E6158];
      v130 = sub_191C1C19C();
      *(v128 + 32) = v120;
      *(v128 + 40) = v119;
      *(v128 + 96) = v129;
      *(v128 + 104) = v130;
      *(v128 + 64) = v130;
      *(v128 + 72) = v123;
      *(v128 + 80) = v122;
      v120 = sub_191CC6788();

      (*(v125 + 8))(v80, v134);
    }

    else
    {
      (*(v133 + 8))(v80, v134);
    }
  }

  else
  {
    (*(v133 + 8))(v80, v134);

    return v180;
  }

  return v120;
}

unint64_t sub_191C1B784()
{
  result = qword_1EADCADF8;
  if (!qword_1EADCADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADF8);
  }

  return result;
}

void sub_191C1B7D8()
{
  if (!qword_1EADCAE00)
  {
    v0 = sub_191CC6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAE00);
    }
  }
}

BOOL _sSo25HKMCPregnancyDatesFactoryC9HealthKitE42isPregnancyDurationPhysiologicallyPossible03forG5Start12pregnancyEndSb10Foundation4DateV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_191CC6148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  sub_191C1C284(&qword_1EADCAE28, MEMORY[0x1E6969530]);
  if ((sub_191CC6718() & 1) == 0)
  {
    return 0;
  }

  sub_191CC6078();
  v13 = sub_191CC60E8();
  v14 = *(v4 + 8);
  v14(v9, v3);
  if (v13)
  {
    sub_191CC6138();
  }

  else
  {
    (*(v4 + 16))(v12, a2, v3);
  }

  sub_191CC6098();
  sub_191CC6088();
  v17 = v16;
  sub_191CC6088();
  v19 = v18;
  v14(v9, v3);
  v14(v12, v3);
  return v19 <= v17;
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE16currentTrimester2on14pregnancyStart17startTimeZoneNameAbCE0G0O10Foundation4DateV_ALSStFZ_0()
{
  v0 = sub_191CC5DC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - v8;
  v10 = objc_opt_self();
  v11 = sub_191CC60A8();
  v12 = sub_191CC60A8();
  v13 = sub_191CC6778();
  v14 = [v10 gestationalAgeInComponentsOnDate:v11 pregnancyStartDate:v12 startTimeZoneName:v13];

  if (!v14)
  {
    return 0;
  }

  sub_191CC5D58();

  (*(v1 + 32))(v9, v6, v0);
  v15 = sub_191CC5D38();
  if ((v16 & 1) != 0 || v15 <= 13)
  {
    (*(v1 + 8))(v9, v0);
    return 1;
  }

  else
  {
    v17 = sub_191CC5D38();
    v19 = v18;
    (*(v1 + 8))(v9, v0);
    if (v19 & 1 | (v17 < 28))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_191C1BC34()
{
  result = qword_1EADCAE18;
  if (!qword_1EADCAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE18);
  }

  return result;
}

uint64_t _s9TrimesterOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9TrimesterOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for HKMCPregnancyDatesFactory()
{
  result = qword_1EADCAE20;
  if (!qword_1EADCAE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCAE20);
  }

  return result;
}

uint64_t sub_191C1BE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_191C1BE7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_191C1BEC8()
{
  if (!qword_1EADCAE30)
  {
    sub_191CC6288();
    sub_191C1C284(&qword_1EADCAE38, MEMORY[0x1E6969AD0]);
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAE30);
    }
  }
}

void sub_191C1BF5C()
{
  if (!qword_1EADCAE48)
  {
    sub_191CC5E68();
    sub_191C1C284(&qword_1EADCAE50, MEMORY[0x1E69687E8]);
    v0 = sub_191CC6C68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAE48);
    }
  }
}

void sub_191C1BFF0()
{
  if (!qword_1EADCAE60)
  {
    sub_191CC5E48();
    sub_191C1C284(&qword_1EADCAE68, MEMORY[0x1E69687C8]);
    v0 = sub_191CC7108();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAE60);
    }
  }
}

unint64_t sub_191C1C084()
{
  result = qword_1EADCAE80;
  if (!qword_1EADCAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE80);
  }

  return result;
}

uint64_t sub_191C1C0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_191C1C138()
{
  result = qword_1EADCAEA8;
  if (!qword_1EADCAEA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCAEA8);
  }

  return result;
}

unint64_t sub_191C1C19C()
{
  result = qword_1EADCAEB0;
  if (!qword_1EADCAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAEB0);
  }

  return result;
}

void sub_191C1C1F0()
{
  if (!qword_1EADCAEB8)
  {
    sub_191CC75D8();
    sub_191C1C284(&qword_1EADCAEC0, MEMORY[0x1E696A1C0]);
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAEB8);
    }
  }
}

uint64_t sub_191C1C284(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191C1C2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t dispatch thunk of HKAsyncQuery.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_191BFD978;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_191C1C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1, a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  (*(v13 + 16))(v17, a2, a4);
  return a7(v22, v17, a3, a4, a5, a6);
}

uint64_t sub_191C1C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, a2);
  (*(v12 + 16))(v16, a1, a3);
  return a6(v20, v16, a2, a3, a4, a5);
}

uint64_t ModelPair.first.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ModelPair.second.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ModelPair.init(first:second:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_191C1C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C1C97C(char a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](a1 & 1);
  return sub_191CC7508();
}

uint64_t sub_191C1C9C4(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

BOOL sub_191C1C9F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_19198EBFC(*a1, *a2);
}

uint64_t sub_191C1CA08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_191C1C97C(*v1);
}

uint64_t sub_191C1CA18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_19198EC0C(a1, *v2);
}

uint64_t sub_191C1CA28(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_19198EC0C(v7, *v2);
  return sub_191CC7508();
}

uint64_t sub_191C1CA70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_191C1C9C4(*v1);
}

uint64_t sub_191C1CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_191C1C8B8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_191C1CAB0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_191C0329C();
  *a2 = result;
  return result;
}

uint64_t sub_191C1CADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C1CB30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ModelPair<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a4;
  v8 = *(a2 + 16);
  v25 = *(a2 + 24);
  type metadata accessor for ModelPair.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_191CC7378();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - v12;
  v14 = *v6;
  v24 = v6[1];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_0(v17, v16);

  sub_191CC7548();
  v33 = v14;
  v32 = 0;
  sub_191CC6978();
  v31 = v27;
  swift_getWitnessTable();
  v20 = v29;
  sub_191CC7348();
  if (v20)
  {

    return (*(v28 + 8))(v13, v19);
  }

  else
  {
    v22 = v28;

    v33 = v24;
    v32 = 1;
    sub_191CC6978();
    v30 = v26;
    swift_getWitnessTable();
    sub_191CC7348();
    return (*(v22 + 8))(v13, v19);
  }
}

uint64_t ModelPair<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v21 = a3;
  v22 = a2;
  v19 = a4;
  type metadata accessor for ModelPair.CodingKeys();
  swift_getWitnessTable();
  v23 = sub_191CC72A8();
  v20 = *(v23 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23, v7);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = a1;
  v13 = v20;
  v12 = v21;
  sub_191CC6978();
  v26 = 0;
  v25 = v22;
  swift_getWitnessTable();
  v14 = v23;
  sub_191CC7268();
  v15 = v27;
  sub_191CC6978();
  v26 = 1;
  v24 = v12;
  swift_getWitnessTable();
  sub_191CC7268();
  (*(v13 + 8))(v9, v14);
  v16 = v27;
  v17 = v19;
  *v19 = v15;
  v17[1] = v16;

  __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_191C1D0C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a3 - 24);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  return ModelPair<>.init(from:)(a1, v4, v5, a4);
}

uint64_t sub_191C1D10C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C1D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_191C1D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_191C1D2C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  Descriptor = type metadata accessor for HKAnchoredObjectQueryDescriptor();

  return HKAnchoredObjectQueryDescriptor.predicates.setter(v7, Descriptor);
}

uint64_t HKAnchoredObjectQueryDescriptor.predicates.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  *v2 = a1;

  return sub_191C1D364(a2);
}

uint64_t sub_191C1D364(uint64_t a1)
{
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 24);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v3 = v1[1];

  v4 = v3;
  sub_191BFB17C(a1);
}

uint64_t *(*HKAnchoredObjectQueryDescriptor.predicates.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_191C1D428;
}

uint64_t *sub_191C1D428(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result[1];
    return sub_191C1D364(*result);
  }

  return result;
}

void *HKAnchoredObjectQueryDescriptor.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKAnchoredObjectQueryDescriptor.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t HKAnchoredObjectQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HKAnchoredObjectQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

__n128 HKAnchoredObjectQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1[2].n128_u64[1];

  result = v5;
  v1[2] = v5;
  v1[3].n128_u64[0] = v2;
  return result;
}

uint64_t HKAnchoredObjectQueryDescriptor.init(predicates:anchor:limit:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = -1;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  Descriptor = type metadata accessor for HKAnchoredObjectQueryDescriptor();

  v7 = a2;
  sub_191BFB17C(Descriptor);
}

uint64_t HKAnchoredObjectQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  v5 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = *(v3 + 48);
  *(v4 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C1D698, 0, 0);
}

uint64_t sub_191C1D698()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = *(v1 + 16);
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  *v4 = v0;
  v4[1] = sub_191C1D7A0;
  v6 = v0[9];

  return (sub_191BFBCE8)(v6, 0, 0, sub_191C1DB4C, v3, v5);
}

uint64_t sub_191C1D7A0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C1D8DC, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_191C1D8DC()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void sub_191C1D940(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  if (*(a2 + 24))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 16);
  }

  sub_191BFAE6C(0, &qword_1EADCA8C8, off_1E73753D8);
  sub_191C03C1C(*a2, a4);
  v10 = *(a2 + 8);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a3;
  v11[4] = a1;
  v12 = objc_allocWithZone(HKAnchoredObjectQuery);
  v13 = a3;
  v14 = sub_191CC68D8();

  v23 = sub_191C1F0D0;
  v24 = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v21 = sub_191C1EAD0;
  v22 = &block_descriptor_44;
  v15 = _Block_copy(&aBlock);
  v16 = [v12 initWithQueryDescriptors:v14 anchor:v10 limit:v9 resultsHandler:v15];

  _Block_release(v15);

  aBlock = *(a2 + 32);
  v21 = *(a2 + 48);
  v17 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v19);
    v17 = sub_191CC6778();
  }

  v18 = v21;
  [v16 setDebugIdentifier_];

  [v16 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v13 executeQuery_];
}

uint64_t sub_191C1DB70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, id a6, uint64_t a7)
{
  [a6 stopQuery_];
  if (a2 && a4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v12 = a3;
    }

    v22[0] = a2;
    v22[1] = v12;
    v22[2] = a4;
    v13 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
    sub_191BF92E0();
    v14 = *(*(a7 + 64) + 40);
    v15 = *(*(v13 - 8) + 32);

    v16 = a4;

    v15(v14, v22, v13);
    return swift_continuation_throwingResume();
  }

  else
  {
    if (a5)
    {
      v18 = a5;
    }

    else
    {
      type metadata accessor for HKError(0);
      v22[3] = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v18 = v22[0];
    }

    v22[0] = v18;
    v19 = a5;
    v20 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
    v21 = sub_191BF92E0();
    return sub_191C1D1B4(v22, a7, v20, v21);
  }
}

uint64_t sub_191C1DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_191BFF960;

  return HKAnchoredObjectQueryDescriptor.result(for:)(a1, a2, a3);
}

uint64_t HKAnchoredObjectQueryDescriptor.Results.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E87B0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v8 = sub_191CC6AD8();
  *v6 = v2;
  v6[1] = sub_191BFD978;

  return MEMORY[0x1EEE6DB98](a1, v8);
}

uint64_t sub_191C1DE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v4 = sub_191CC6AD8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_191C1DF2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191BFF960;

  return HKAnchoredObjectQueryDescriptor.Results.Iterator.next()(a1, a2);
}

uint64_t sub_191C1DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_191C1E0A8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_191C1E0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v4 = sub_191CC6AD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = type metadata accessor for HKQueryAsyncStream();
  HKQueryAsyncStream.makeAsyncIterator()(v9);
  return sub_191C1DE94(v8, a2);
}

uint64_t sub_191C1E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  v4 = type metadata accessor for HKQueryAsyncStream();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_191C1E2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t HKAnchoredObjectQueryDescriptor.results(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  v9 = type metadata accessor for HKQueryAsyncStream();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v20[-v12 - 8];
  v14 = *(v3 + 16);
  v21[0] = *v3;
  v21[1] = v14;
  v21[2] = *(v3 + 32);
  v22 = *(v3 + 48);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v16 = *(v3 + 16);
  *(v15 + 24) = *v3;
  *(v15 + 40) = v16;
  *(v15 + 56) = *(v3 + 32);
  *(v15 + 72) = *(v3 + 48);
  v17 = a1;
  (*(*(a2 - 8) + 16))(v20, v21, a2);
  HKQueryAsyncStream.init(healthStore:queryBuilder:)(v17, sub_191C1E898, v15, v8);
  return sub_191C1E27C(v13, a3);
}

id sub_191C1E4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v29 = sub_191CC6AA8();
  v6 = *(v29 - 8);
  v35 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v28 - v8;
  v30 = sub_191BFAE6C(0, &qword_1EADCA8C8, off_1E73753D8);
  v10 = *a2;
  v34 = a3;
  sub_191C03C1C(v10, a3);
  v38 = a2;
  v11 = *(a2 + 16);
  if (*(a2 + 24))
  {
    v11 = 0;
  }

  v31 = *(a2 + 8);
  v32 = v11;
  v36 = *(v6 + 16);
  v12 = v29;
  v36(v9, a1, v29);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v33 = *(v6 + 32);
  v15 = v12;
  v33(v14 + v13, v9, v12);
  v16 = objc_allocWithZone(HKAnchoredObjectQuery);
  v17 = sub_191CC68D8();

  v43 = sub_191C1EF2C;
  v44 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v41 = sub_191C1EAD0;
  v42 = &block_descriptor_10;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 initWithQueryDescriptors:v17 anchor:v31 limit:v32 resultsHandler:v18];

  _Block_release(v18);

  v36(v9, v37, v15);
  v20 = swift_allocObject();
  v21 = v33;
  *(v20 + 16) = v34;
  v21(v20 + v13, v9, v15);
  v43 = sub_191C1F0E4;
  v44 = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v41 = sub_191C1EAD0;
  v42 = &block_descriptor_38_0;
  v22 = _Block_copy(&aBlock);

  [v19 setUpdateHandler_];
  _Block_release(v22);
  aBlock = *(v38 + 32);
  v41 = *(v38 + 48);
  v23 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v24 = v19;
    sub_191BFC340(&aBlock, v39);
    v23 = sub_191CC6778();
  }

  else
  {
    v25 = v19;
  }

  v26 = v41;
  [v19 setDebugIdentifier_];

  [v19 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v19;
}

uint64_t sub_191C1E8DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v9 = sub_191CC6A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v20 - v13;
  if (a2 && a4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v15 = a3;
    }

    v20[0] = a2;
    v20[1] = v15;
    v20[2] = a4;
    sub_191CC6AA8();

    v16 = a4;

    sub_191CC6A88();
    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    v18 = a5;
    if (!a5)
    {
      type metadata accessor for HKError(0);
      v20[3] = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v18 = v20[0];
    }

    v20[0] = v18;
    v19 = a5;
    sub_191CC6AA8();
    return sub_191CC6A98();
  }
}

uint64_t sub_191C1EAD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCA8D0, off_1E7375440);
    v9 = sub_191CC68E8();
  }

  if (a4)
  {
    sub_191BFAE6C(0, &qword_1EADCB1E8, off_1E7374DF0);
    a4 = sub_191CC68E8();
  }

  v13 = a2;
  v14 = a5;
  v15 = a6;
  v12(v13, v9, a4, a5, a6);
}

uint64_t sub_191C1EBEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_191C1EC44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_191C1EC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C1ECD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C1ED14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_191C1ED5C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_191C1ED9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  result = type metadata accessor for HKQueryAsyncStream();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C1EE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  result = sub_191CC6AD8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v2 = sub_191CC6AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_191C1EFF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result();
  sub_191BF92E0();
  v12 = *(*(sub_191CC6AA8() - 8) + 80);

  return sub_191C1E8DC(a1, a2, a3, a4, a5);
}

uint64_t HKAttachment.AsyncBytes.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong size];

  sub_191C1F98C(v2, v9);
  v6 = swift_allocObject();
  sub_191C1F9C4(v9, v6 + 16);
  type metadata accessor for _AsyncBytesBuffer.Storage();
  result = swift_allocObject();
  *(result + 48) = 0;
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    *(result + 16) = &unk_191DD2568;
    *(result + 24) = v6;
    result = swift_slowAlloc();
    *(v8 + 32) = result;
    *(v8 + 40) = result + v5;
    *a1 = v8;
    a1[1] = result;
    a1[2] = result;
    a1[3] = 0;
  }

  return result;
}

uint64_t sub_191C1F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  sub_191C1FF28();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_191C1F2C0, 0, 0);
}

uint64_t sub_191C1F2C0()
{
  v1 = v0;
  v15 = *MEMORY[0x1E69E9840];
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[32];
  v7 = v1[31];
  v14 = v1[30];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1[35] = Strong;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v1[36] = v9;
  v13 = *(v7 + 16);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_191C1F4CC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C1FAAC;
  v1[13] = &block_descriptor_11;
  [Strong getDataChunkForAttachment:v9 chunkSize:v13 offset:v14 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C1F4CC()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_191C1F8D8;
  }

  else
  {
    v3 = sub_191C1F608;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C1F608()
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      *(v0 + 192) = v0 + 304;
      v5 = *(v0 + 224);
      v4 = *(v0 + 232);
      *(v0 + 304) = v2;
      *(v0 + 312) = v1;
      v6 = BYTE6(v1);
      *(v0 + 314) = BYTE2(v1);
      *(v0 + 315) = BYTE3(v1);
      *(v0 + 316) = BYTE4(v1);
      *(v0 + 317) = BYTE5(v1);
      *(v0 + 200) = v0 + 304 + BYTE6(v1);
      sub_191C1FFA8();
LABEL_30:
      sub_191CC5C78();
      sub_191C049D8(v2, v1);
      goto LABEL_32;
    }

    if (v2 >> 32 >= v2)
    {
      v17 = sub_191CC5D08();
      if (!v17)
      {
LABEL_21:
        v20 = *(v0 + 224);
        v19 = *(v0 + 232);
        v21 = sub_191CC5D18();
        if (v21 >= (v2 >> 32) - v2)
        {
          v22 = (v2 >> 32) - v2;
        }

        else
        {
          v22 = v21;
        }

        v23 = v22 + v17;
        if (!v17)
        {
          v23 = 0;
        }

        *(v0 + 176) = v17;
        *(v0 + 184) = v23;
        if (v17)
        {
          v6 = v22;
        }

        else
        {
          v6 = 0;
        }

LABEL_29:
        sub_191C1FFA8();
        goto LABEL_30;
      }

      v18 = sub_191CC5D28();
      if (!__OFSUB__(v2, v18))
      {
        v17 += v2 - v18;
        goto LABEL_21;
      }

LABEL_38:
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v3 == 2)
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = sub_191CC5D08();
    if (v9)
    {
      v10 = sub_191CC5D28();
      if (__OFSUB__(v7, v10))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v9 += v7 - v10;
    }

    v11 = v8 - v7;
    if (!__OFSUB__(v8, v7))
    {
      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v14 = sub_191CC5D18();
      if (v14 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 + v9;
      if (!v9)
      {
        v16 = 0;
      }

      *(v0 + 160) = v9;
      *(v0 + 168) = v16;
      if (v9)
      {
        v6 = v15;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 208) = v0 + 318;
  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  *(v0 + 318) = 0;
  *(v0 + 324) = 0;
  *(v0 + 216) = v0 + 318;
  sub_191C1FFA8();
  sub_191CC5C78();
  sub_191C049D8(v2, v1);
  v6 = 0;
LABEL_32:
  v26 = *(v0 + 288);
  v27 = *(v0 + 272);

  v28 = *(v0 + 8);
  v29 = *MEMORY[0x1E69E9840];

  return v28(v6);
}

uint64_t sub_191C1F8D8()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[37];
  v7 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_191C1F9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_191C1FFFC;

  return sub_191C1F1D0(a1, a2, a3, v3 + 16);
}

void sub_191C1FAAC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_191C1FF28();
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    v6 = a2;
    sub_191CC6048();

    sub_191C1FF28();
    sub_191CC69E8();
  }
}

uint64_t sub_191C1FB58@<X0>(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong size];

  sub_191C1F98C(v1, v14);
  v5 = swift_allocObject();
  sub_191C1F9C4(v14, v5 + 16);
  v6 = _s9HealthKit17_AsyncBytesBufferV8capacity12readFunctionACSi_SiSw_SitYaKctcfC_0(v4, &unk_191DD25F0, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_191C1FEF8(v1);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  return result;
}

unint64_t sub_191C1FC24()
{
  result = qword_1EADCB1F0;
  if (!qword_1EADCB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB1F0);
  }

  return result;
}

uint64_t sub_191C1FC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_191C1FCBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_191C1FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_191C1FDFC;

  return sub_191C1F1D0(a1, a2, a3, v3 + 16);
}

uint64_t sub_191C1FDFC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_191C1FF28()
{
  if (!qword_1EADCB1F8)
  {
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB1F8);
    }
  }
}

unint64_t sub_191C1FFA8()
{
  result = qword_1EADCB200;
  if (!qword_1EADCB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB200);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.Configuration.init(pruningUsingRestrictionPredicatesEnabled:newStoreAnchorRelevanceInterval:frozenAnchorRelevanceInterval:deletedSampleAvailableDays:isRecentRecordRollingEnabled:localSyncIdentity:transactionObjectLimit:operationObjectLimit:databaseAssertionTimeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  *a7 = result;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = a10;
  return result;
}

unint64_t sub_191C201D0(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000001DLL;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD00000000000001FLL;
    if (!a1)
    {
      v6 = 0xD000000000000028;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000014;
    if (a1 != 7)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C202DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C30B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C20304(uint64_t a1)
{
  v2 = sub_191C20630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C20340(uint64_t a1)
{
  v2 = sub_191C20630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Configuration.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB208, sub_191C20630, &_s14descr1F05F1AE1C7PruningO4ShowV13ConfigurationV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v24 = *(v1 + 3);
  v23 = v1[32];
  v12 = *(v1 + 5);
  v22[1] = *(v1 + 6);
  v22[2] = v12;
  v13 = *(v1 + 7);
  v14 = *(v1 + 8);
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_0(v17, v16);
  sub_191C20630();
  sub_191CC7548();
  v34 = 0;
  v20 = v25;
  sub_191CC7318();
  if (!v20)
  {
    v33 = 1;
    sub_191CC7328();
    v32 = 2;
    sub_191CC7328();
    v31 = 3;
    sub_191CC7338();
    v30 = 4;
    sub_191CC7318();
    v29 = 5;
    sub_191CC7338();
    v28 = 6;
    sub_191CC7338();
    v27 = 7;
    sub_191CC7338();
    v26 = 8;
    sub_191CC7328();
  }

  return (*(v4 + 8))(v8, v19);
}

unint64_t sub_191C20630()
{
  result = qword_1EADCB210;
  if (!qword_1EADCB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB210);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB218, sub_191C20630, &_s14descr1F05F1AE1C7PruningO4ShowV13ConfigurationV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v26 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_191C20630();
  sub_191CC7528();
  if (!v2)
  {
    v14 = v7;
    v40 = 0;
    v15 = sub_191CC7238();
    v39 = 1;
    sub_191CC7248();
    v17 = v16;
    v38 = 2;
    sub_191CC7248();
    v19 = v18;
    v37 = 3;
    v20 = sub_191CC7258();
    v36 = 4;
    v30 = sub_191CC7238();
    v35 = 5;
    v29 = sub_191CC7258();
    v34 = 6;
    v28 = sub_191CC7258();
    v33 = 7;
    v27 = sub_191CC7258();
    v32 = 8;
    sub_191CC7248();
    v23 = v22;
    v24 = v30 & 1;
    (*(v14 + 8))(v11, v6);
    *a2 = v15 & 1;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v24;
    v25 = v28;
    *(a2 + 40) = v29;
    *(a2 + 48) = v25;
    *(a2 + 56) = v27;
    *(a2 + 64) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.instanceDiscriminator.getter()
{
  v1 = (v0 + *(type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.instanceDiscriminator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.init(identifier:hardwareIdentifier:databaseIdentifier:instanceDiscriminator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
  v12 = v11[5];
  v13 = sub_191CC61A8();
  v14 = *(*(v13 - 8) + 32);
  v14(&a6[v12], a2, v13);
  result = (v14)(&a6[v11[6]], a3, v13);
  v16 = &a6[v11[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

unint64_t sub_191C20CC0()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C20D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C30E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C20D70(uint64_t a1)
{
  v2 = sub_191C2103C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C20DAC(uint64_t a1)
{
  v2 = sub_191C2103C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB220, sub_191C2103C, &_s14descr1F05F1AE1C7PruningO4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2103C();
  sub_191CC7548();
  v13 = *v3;
  v25 = 0;
  sub_191CC7338();
  if (!v2)
  {
    v14 = type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
    v15 = v14[5];
    v24 = 1;
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
    sub_191CC7348();
    v16 = v14[6];
    v23 = 2;
    sub_191CC7348();
    v17 = (v3 + v14[7]);
    v18 = *v17;
    v19 = v17[1];
    v22 = 3;
    sub_191CC7308();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_191C2103C()
{
  result = qword_1EADCB228;
  if (!qword_1EADCB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB228);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = sub_191CC61A8();
  v40 = *(v42 - 8);
  v3 = *(v40 + 64);
  v5 = MEMORY[0x1EEE9AC00](v42, v4);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - v8;
  sub_191C2E288(0, &qword_1EADCB230, sub_191C2103C, &_s14descr1F05F1AE1C7PruningO4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v43 = v10;
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2103C();
  v44 = v14;
  v21 = v45;
  sub_191CC7528();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v45 = v15;
  v23 = v41;
  v22 = v42;
  v37 = v19;
  v49 = 0;
  v24 = v43;
  v25 = sub_191CC7258();
  v26 = v37;
  *v37 = v25;
  v48 = 1;
  sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
  sub_191CC7268();
  v27 = v26 + v45[5];
  v36 = *(v40 + 32);
  v36(v27, v9, v22);
  v47 = 2;
  v28 = v39;
  sub_191CC7268();
  v36(v37 + v45[6], v28, v22);
  v46 = 3;
  v29 = sub_191CC7228();
  v31 = v30;
  (*(v23 + 8))(v44, v24);
  v33 = v37;
  v32 = v38;
  v34 = (v37 + v45[7]);
  *v34 = v29;
  v34[1] = v31;
  sub_191C2E0F4(v33, v32, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_191C3241C(v33, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
}

uint64_t sub_191C2153C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.schemaIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.init(entityIdentifier:schemaIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static HKDatabase.Pruning.Show.SyncEntityIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (sub_191CC73E8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_191C21714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000191D2C160 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2C180 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_191CC73E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_191C217FC(uint64_t a1)
{
  v2 = sub_191C2BB6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C21838(uint64_t a1)
{
  v2 = sub_191C2BB6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB238, sub_191C2BB6C, &_s14descr1F05F1AE1C7PruningO4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v15[1] = v1[2];
  v15[2] = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2BB6C();
  sub_191CC7548();
  v17 = 0;
  v13 = v15[3];
  sub_191CC7338();
  if (!v13)
  {
    v16 = 1;
    sub_191CC72C8();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x193B02C70](*v0);
  if (!v2)
  {
    return sub_191CC74E8();
  }

  sub_191CC74E8();

  return sub_191CC67E8();
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  sub_191C2E288(0, &qword_1EADCB248, sub_191C2BB6C, &_s14descr1F05F1AE1C7PruningO4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2BB6C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v19;
  v21 = 0;
  v13 = sub_191CC7258();
  v20 = 1;
  v14 = sub_191CC71E8();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C21D2C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C21DAC()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x193B02C70](*v0);
  if (!v2)
  {
    return sub_191CC74E8();
  }

  sub_191CC74E8();

  return sub_191CC67E8();
}

uint64_t sub_191C21E24()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C21EA0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (sub_191CC73E8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.maximumAnchor.setter(uint64_t a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 24);

  return sub_191C18FCC(v3, a1);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.startDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 24);

  return sub_191C2BBE0(a1, v3);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.excludedSyncIdentities.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 32));
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.excludedSyncIdentities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:maximumAnchor:startDate:endDate:excludedSyncIdentities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v11 = v10[6];
  v12 = sub_191CC6148();
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = v10[7];
  v13(a6 + v14, 1, 1, v12);
  v15 = v10[8];
  v16 = sub_191CC61A8();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v10[5]) = a2;
  sub_191C2BBE0(a3, a6 + v11);
  result = sub_191C2BBE0(a4, a6 + v14);
  *(a6 + v15) = a5;
  return result;
}

uint64_t sub_191C22320(uint64_t a1)
{
  v2 = sub_191C2C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2235C(uint64_t a1)
{
  v2 = sub_191C2C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C22398()
{
  v1 = *v0;
  v2 = 0x65726F7473;
  v3 = 0x65746E4965746164;
  v4 = 0x726F68636E61;
  if (v1 != 3)
  {
    v4 = 0x686374616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656449636E7973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C22438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C30FC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C22460(uint64_t a1)
{
  v2 = sub_191C2CA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2249C(uint64_t a1)
{
  v2 = sub_191C2CA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C224D8(uint64_t a1)
{
  v2 = sub_191C2C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22514(uint64_t a1)
{
  v2 = sub_191C2C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C22550(uint64_t a1)
{
  v2 = sub_191C2C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2258C(uint64_t a1)
{
  v2 = sub_191C2C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C225C8(uint64_t a1)
{
  v2 = sub_191C2C9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22604(uint64_t a1)
{
  v2 = sub_191C2C9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s9HealthKit10AnyCodableV13DecodingErrorO9hashValueSivg_0()
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](0);
  return sub_191CC7508();
}

uint64_t sub_191C22684()
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](0);
  return sub_191CC7508();
}

uint64_t sub_191C226C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C22744(uint64_t a1)
{
  v2 = sub_191C2C998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22780(uint64_t a1)
{
  v2 = sub_191C2C998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_191C2E288(0, &qword_1EADCB250, sub_191C2C89C, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15MatchCodingKeysON, MEMORY[0x1E69E6F58]);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v78 = &v68 - v6;
  sub_191C2E288(0, &qword_1EADCB260, sub_191C2C8F0, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO16AnchorCodingKeysON, v2);
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v75 = &v68 - v10;
  sub_191C2E288(0, &qword_1EADCB270, sub_191C2C944, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22DateIntervalCodingKeysON, v2);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v68 - v14;
  sub_191C2E288(0, &qword_1EADCB280, sub_191C2C998, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22SyncIdentityCodingKeysON, v2);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v84 = &v68 - v18;
  sub_191C2E288(0, &qword_1EADCB290, sub_191C2C9EC, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15StoreCodingKeysON, v2);
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v81 = &v68 - v22;
  v88 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v23 = *(*(v88 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v88, v24);
  v71 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v70 = &v68 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v69 = &v68 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v68 - v38;
  v40 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB2A0, sub_191C2CA60, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO10CodingKeysON, v2);
  v90 = *(v45 - 8);
  v91 = v45;
  v46 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v68 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CA60();
  v89 = v49;
  sub_191CC7548();
  sub_191C2E0F4(v87, v44, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v58 = v36;
    v59 = v81;
    v60 = v82;
    v61 = v83;
    v62 = v84;
    v64 = v85;
    v63 = v86;
    if (EnumCaseMultiPayload)
    {
      v65 = v58;
      sub_191C2CB70(v44, v58, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v93 = 1;
      sub_191C2C998();
      v54 = v91;
      v55 = v89;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      sub_191CC7348();
      (*(v64 + 8))(v62, v63);
      v39 = v65;
    }

    else
    {
      sub_191C2CB70(v44, v39, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v92 = 0;
      sub_191C2C9EC();
      v54 = v91;
      v55 = v89;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      sub_191CC7348();
      (*(v60 + 8))(v59, v61);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v52 = v69;
      sub_191C2CB70(v44, v69, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v94 = 2;
      sub_191C2C944();
      v53 = v72;
      v54 = v91;
      v55 = v89;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v56 = v74;
      sub_191CC7348();
      v57 = v73;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v52 = v70;
      sub_191C2CB70(v44, v70, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v95 = 3;
      sub_191C2C8F0();
      v53 = v75;
      v54 = v91;
      v55 = v89;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v56 = v77;
      sub_191CC7348();
      v57 = v76;
    }

    else
    {
      v52 = v71;
      sub_191C2CB70(v44, v71, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v96 = 4;
      sub_191C2C89C();
      v53 = v78;
      v54 = v91;
      v55 = v89;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v56 = v80;
      sub_191CC7348();
      v57 = v79;
    }

    (*(v57 + 8))(v53, v56);
    v39 = v52;
  }

  v66 = v90;
  sub_191C3241C(v39, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  return (*(v66 + 8))(v55, v54);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C2E288(0, &qword_1EADCB2B8, sub_191C2C89C, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15MatchCodingKeysON, MEMORY[0x1E69E6F48]);
  v104 = v4;
  v107 = *(v4 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v108 = &v92 - v7;
  sub_191C2E288(0, &qword_1EADCB2C0, sub_191C2C8F0, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO16AnchorCodingKeysON, v3);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v109 = &v92 - v11;
  sub_191C2E288(0, &qword_1EADCB2C8, sub_191C2C944, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22DateIntervalCodingKeysON, v3);
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v113 = &v92 - v15;
  sub_191C2E288(0, &qword_1EADCB2D0, sub_191C2C998, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22SyncIdentityCodingKeysON, v3);
  v17 = *(v16 - 8);
  v100 = v16;
  v101 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v112 = &v92 - v20;
  sub_191C2E288(0, &qword_1EADCB2D8, sub_191C2C9EC, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15StoreCodingKeysON, v3);
  v98 = *(v21 - 8);
  v99 = v21;
  v22 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v111 = &v92 - v24;
  sub_191C2E288(0, &qword_1EADCB2E0, sub_191C2CA60, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO10CodingKeysON, v3);
  v116 = v25;
  v114 = *(v25 - 8);
  v26 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v92 - v28;
  v110 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  v30 = *(*(v110 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v110, v31);
  v97 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v92 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v92 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v92 - v44;
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v49 = &v92 - v48;
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = &v92 - v51;
  v53 = a1[3];
  v54 = a1[4];
  v118 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v53);
  sub_191C2CA60();
  v55 = v117;
  sub_191CC7528();
  if (v55)
  {
    return __swift_destroy_boxed_opaque_existential_0(v118);
  }

  v92 = v45;
  v93 = v41;
  v94 = v49;
  v95 = v37;
  v117 = 0;
  v56 = v111;
  v57 = v112;
  v58 = v113;
  v96 = v52;
  v59 = v115;
  v60 = v116;
  v61 = sub_191CC7298();
  if (*(v61 + 16) != 1 || (v62 = *(v61 + 32), v62 == 5))
  {
    v68 = sub_191CC7028();
    swift_allocError();
    v69 = v29;
    v70 = v60;
    v72 = v71;
    sub_191C2CAB4();
    v74 = *(v73 + 48);
    *v72 = v110;
    sub_191CC71D8();
    sub_191CC7008();
    (*(*(v68 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    (*(v114 + 8))(v69, v70);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v118);
  }

  if (*(v61 + 32) > 1u)
  {
    if (v62 == 2)
    {
      v121 = 2;
      sub_191C2C944();
      v79 = v117;
      sub_191CC71C8();
      if (!v79)
      {
        type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
        sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
        v64 = v93;
        v80 = v103;
        sub_191CC7268();
        v81 = v114;
        v117 = 0;
        (*(v102 + 8))(v58, v80);
        (*(v81 + 8))(v29, v60);
        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

    else
    {
      v63 = v117;
      if (v62 == 3)
      {
        v122 = 3;
        sub_191C2C8F0();
        sub_191CC71C8();
        if (!v63)
        {
          type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
          sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
          v64 = v95;
          v65 = v106;
          v66 = v109;
          sub_191CC7268();
          v67 = v114;
          v117 = 0;
          (*(v105 + 8))(v66, v65);
          (*(v67 + 8))(v29, v60);
          swift_unknownObjectRelease();
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v91 = v64;
          v84 = v59;
          v78 = v96;
          goto LABEL_25;
        }
      }

      else
      {
        v123 = 4;
        sub_191C2C89C();
        sub_191CC71C8();
        if (!v63)
        {
          type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
          sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
          v64 = v97;
          v82 = v104;
          v83 = v108;
          sub_191CC7268();
          v117 = 0;
          (*(v107 + 8))(v83, v82);
          (*(v114 + 8))(v29, v60);
          swift_unknownObjectRelease();
          goto LABEL_24;
        }
      }
    }

    (*(v114 + 8))(v29, v60);
    goto LABEL_10;
  }

  if (*(v61 + 32))
  {
    v84 = v59;
    v120 = 1;
    sub_191C2C998();
    v85 = v57;
    v76 = v116;
    v86 = v117;
    sub_191CC71C8();
    v78 = v96;
    if (v86)
    {
      goto LABEL_14;
    }

    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    v89 = v92;
    v90 = v100;
    sub_191CC7268();
    v117 = 0;
    (*(v101 + 8))(v85, v90);
    (*(v114 + 8))(v29, v116);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v91 = v89;
  }

  else
  {
    v119 = 0;
    sub_191C2C9EC();
    v76 = v116;
    v77 = v117;
    sub_191CC71C8();
    v78 = v96;
    if (v77)
    {
LABEL_14:
      (*(v114 + 8))(v29, v76);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v118);
    }

    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    v87 = v94;
    v88 = v99;
    sub_191CC7268();
    v117 = 0;
    (*(v98 + 8))(v56, v88);
    (*(v114 + 8))(v29, v116);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v91 = v87;
    v84 = v115;
  }

LABEL_25:
  sub_191C2CB70(v91, v78, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  sub_191C2CB70(v78, v84, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  return __swift_destroy_boxed_opaque_existential_0(v118);
}

uint64_t sub_191C23F60()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 17;
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

uint64_t sub_191C23F94()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_191C23FC8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_191C24034()
{
  v1 = *v0;
  v2 = 0x644965726F7473;
  v3 = 0x7461447472617473;
  v4 = 0x65746144646E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x416D756D6978616DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C240E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C31174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C2410C(uint64_t a1)
{
  v2 = sub_191C2CBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C24148(uint64_t a1)
{
  v2 = sub_191C2CBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB300, sub_191C2CBD8, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CBD8();
  sub_191CC7548();
  v23 = 0;
  sub_191CC61A8();
  sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
  sub_191CC7348();
  if (!v2)
  {
    v13 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    v14 = *(v3 + v13[5]);
    v22 = 1;
    sub_191CC7338();
    v15 = v13[6];
    v21 = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC72F8();
    v16 = v13[7];
    v20 = 3;
    sub_191CC72F8();
    v18[1] = *(v3 + v13[8]);
    v19 = 4;
    sub_191C2CC2C();
    sub_191C2CD10(&qword_1EADCB320);
    sub_191CC72F8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v42 = &v37 - v9;
  v43 = sub_191CC61A8();
  v40 = *(v43 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43, v11);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB328, sub_191C2CBD8, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v46 = v13;
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 24);
  v25 = sub_191CC6148();
  v26 = *(*(v25 - 8) + 56);
  v49 = v24;
  v26(&v23[v24], 1, 1, v25);
  v48 = *(v18 + 28);
  v26(&v23[v48], 1, 1, v25);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CBD8();
  v45 = v17;
  v28 = v47;
  sub_191CC7528();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v33 = v48;
    sub_191C2CC84(&v23[v49]);
    return sub_191C2CC84(&v23[v33]);
  }

  else
  {
    v29 = v41;
    v30 = v42;
    v47 = v18;
    v31 = a1;
    v55 = 0;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    v32 = v43;
    sub_191CC7268();
    (*(v40 + 32))(v23, v44, v32);
    v54 = 1;
    *&v23[*(v47 + 20)] = sub_191CC7258();
    v53 = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530]);
    sub_191CC7218();
    sub_191C2BBE0(v30, &v23[v49]);
    v52 = 3;
    v34 = v39;
    sub_191CC7218();
    sub_191C2BBE0(v34, &v23[v48]);
    sub_191C2CC2C();
    v51 = 4;
    sub_191C2CD10(&qword_1EADCB338);
    sub_191CC7218();
    v35 = *(v47 + 32);
    (*(v29 + 8))(v45, v46);
    *&v23[v35] = v50;
    sub_191C2E0F4(v23, v38, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return sub_191C3241C(v23, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  }
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV7storeId10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_191CC61A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV7storeId10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_191CC61A8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HKDatabase.Pruning.Show.Store.type.setter(uint64_t a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_191C24C90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_191C24D48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 24);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t sub_191C24E48(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 28);

  return sub_191C2BBE0(a1, v4);
}

uint64_t HKDatabase.Pruning.Show.Store.frozenAnchorMap.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 32));
}

uint64_t HKDatabase.Pruning.Show.Store.frozenAnchorMap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.syncIdentity.getter()
{
  v1 = (v0 + *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.syncIdentity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.isSupportedShardType.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.activeEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.activeEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.pendingEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.pendingEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.tombstoneEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.tombstoneEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.init(identifier:type:creationDate:latestFrozenAnchorDate:frozenAnchorMap:syncIdentity:isSupportedShardType:activeEpoch:pendingEpoch:tombstoneEpoch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v16 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v17 = v16[7];
  v18 = sub_191CC6148();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = v16[10];
  v21 = a9 + v16[9];
  v22 = a9 + v16[11];
  v23 = a9 + v16[12];
  v24 = a9 + v16[13];
  v25 = sub_191CC61A8();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  *(a9 + v16[5]) = a2;
  (*(v19 + 32))(a9 + v16[6], a3, v18);
  result = sub_191C2BBE0(a4, a9 + v17);
  *(a9 + v16[8]) = a5;
  *v21 = a6;
  *(v21 + 8) = a7 & 1;
  *(a9 + v20) = a8;
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  *v23 = a12;
  *(v23 + 8) = a13 & 1;
  *v24 = a14;
  *(v24 + 8) = a15 & 1;
  return result;
}

unint64_t sub_191C2550C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7045657669746361;
    v6 = 0x45676E69646E6570;
    if (a1 != 8)
    {
      v6 = 0x6E6F7473626D6F74;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E656449636E7973;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6E6F697461657263;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0x6E416E657A6F7266;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C25690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C3133C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C256C4(uint64_t a1)
{
  v2 = sub_191C2CD90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C25700(uint64_t a1)
{
  v2 = sub_191C2CD90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Store.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB340, sub_191C2CD90, &_s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v31[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CD90();
  sub_191CC7548();
  LOBYTE(v32) = 0;
  sub_191CC61A8();
  sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
  sub_191CC7348();
  if (!v2)
  {
    v13 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
    v14 = *(v3 + v13[5]);
    LOBYTE(v32) = 1;
    sub_191CC7338();
    v15 = v13[6];
    LOBYTE(v32) = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC7348();
    v16 = v13[7];
    LOBYTE(v32) = 3;
    sub_191CC72F8();
    v32 = *(v3 + v13[8]);
    v31[15] = 4;
    sub_191C2CDE4();
    sub_191C2CF00();
    sub_191CC7348();
    v17 = (v3 + v13[9]);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v32) = 5;
    sub_191CC72E8();
    v20 = *(v3 + v13[10]);
    LOBYTE(v32) = 6;
    sub_191CC72D8();
    v21 = (v3 + v13[11]);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v32) = 7;
    sub_191CC72E8();
    v24 = (v3 + v13[12]);
    v25 = *v24;
    v26 = *(v24 + 8);
    LOBYTE(v32) = 8;
    sub_191CC72E8();
    v27 = (v3 + v13[13]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v32) = 9;
    sub_191CC72E8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKDatabase.Pruning.Show.Store.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v54 = &v49 - v6;
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_191CC61A8();
  v56 = *(v62 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v62, v13);
  v58 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB380, sub_191C2CD90, &_s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v61 = v15;
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v49 - v18;
  v20 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 28);
  v55 = v8;
  (*(v8 + 56))(&v25[v26], 1, 1, v7);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CD90();
  v60 = v19;
  v28 = v63;
  sub_191CC7528();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C2CC84(&v25[v26]);
  }

  else
  {
    v29 = v57;
    v51 = v20;
    v52 = v26;
    v50 = v7;
    v63 = a1;
    LOBYTE(v65) = 0;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    v30 = v58;
    v31 = v62;
    sub_191CC7268();
    (*(v56 + 32))(v25, v30, v31);
    LOBYTE(v65) = 1;
    *&v25[v51[5]] = sub_191CC7258();
    LOBYTE(v65) = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530]);
    v32 = v50;
    sub_191CC7268();
    (*(v55 + 32))(&v25[v51[6]], v29, v32);
    LOBYTE(v65) = 3;
    v33 = v54;
    sub_191CC7218();
    sub_191C2BBE0(v33, &v25[v52]);
    sub_191C2CDE4();
    v64 = 4;
    sub_191C2CFF4();
    sub_191CC7268();
    v34 = v51;
    *&v25[v51[8]] = v65;
    LOBYTE(v65) = 5;
    v35 = sub_191CC7208();
    v36 = &v25[v34[9]];
    *v36 = v35;
    v36[8] = v37 & 1;
    LOBYTE(v65) = 6;
    v25[v34[10]] = sub_191CC71F8();
    LOBYTE(v65) = 7;
    v38 = sub_191CC7208();
    v39 = &v25[v51[11]];
    *v39 = v38;
    v39[8] = v40 & 1;
    LOBYTE(v65) = 8;
    v41 = sub_191CC7208();
    v42 = &v25[v51[12]];
    *v42 = v41;
    v42[8] = v43 & 1;
    LOBYTE(v65) = 9;
    v44 = sub_191CC7208();
    v46 = v45;
    v47 = &v25[v51[13]];
    (*(v59 + 8))(v60, v61);
    *v47 = v44;
    v47[8] = v46 & 1;
    sub_191C2E0F4(v25, v53, type metadata accessor for HKDatabase.Pruning.Show.Store);
    __swift_destroy_boxed_opaque_existential_0(v63);
    return sub_191C3241C(v25, type metadata accessor for HKDatabase.Pruning.Show.Store);
  }
}

uint64_t HKDatabase.Pruning.Show.Entity.className.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKDatabase.Pruning.Show.Entity.className.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.identifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_191C2D148(v2, v3, v4);
}

__n128 HKDatabase.Pruning.Show.Entity.identifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_191C2D15C(v1[2], v1[3], v1[4]);
  result = v4;
  *(v1 + 1) = v4;
  v1[4] = v2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.maximumPruningAnchor.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.maximumPruningAnchor.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.pruningRestrictionPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

__n128 HKDatabase.Pruning.Show.Entity.init(className:identifier:supportsPruning:supportsPruningRestrictionPredicates:maximumPruningAnchor:pruningRestrictionPredicates:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v17 = *a3;
  v15 = a3[1].n128_u64[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  sub_191C2D15C(0, 0, 1);
  result = v17;
  a9[1] = v17;
  a9[2].n128_u64[0] = v15;
  a9[2].n128_u8[8] = a4;
  a9[2].n128_u8[9] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = a7 & 1;
  a9[4].n128_u64[0] = a8;
  return result;
}

unint64_t sub_191C26688()
{
  v1 = *v0;
  v2 = 0x6D614E7373616C63;
  v3 = 0xD000000000000024;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x7374726F70707573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C26764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C316A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C2678C(uint64_t a1)
{
  v2 = sub_191C2D170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C267C8(uint64_t a1)
{
  v2 = sub_191C2D170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Entity.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB3A0, sub_191C2D170, &_s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v22 = v1[3];
  v23 = v12;
  v21 = v1[4];
  v28 = *(v1 + 40);
  v20 = *(v1 + 41);
  v19 = v1[6];
  v18 = *(v1 + 56);
  v17 = v1[8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D170();
  sub_191CC7548();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_191CC7308();
  if (!v14)
  {
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v29 = 1;
    sub_191C2D148(v23, v22, v21);
    sub_191C2CFA0();
    sub_191CC72F8();
    sub_191C2D15C(v25, v26, v27);
    LOBYTE(v25) = 2;
    sub_191CC7318();
    LOBYTE(v25) = 3;
    sub_191CC7318();
    LOBYTE(v25) = 4;
    sub_191CC72E8();
    v25 = v17;
    v29 = 5;
    sub_191C2D1C4();
    sub_191C2D270();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.Show.Entity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_191C2E288(0, &qword_1EADCB3C0, sub_191C2D170, &_s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D170();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C2D15C(0, 0, 1);
  }

  else
  {
    v12 = v6;
    v13 = v55;
    LOBYTE(v38) = 0;
    v14 = v5;
    v15 = sub_191CC7228();
    v17 = v16;
    v31 = v15;
    LOBYTE(v33) = 1;
    sub_191C2D094();
    sub_191CC7218();
    v32 = v38;
    v18 = v39;
    sub_191C2D15C(0, 0, 1);
    LOBYTE(v38) = 2;
    v30 = sub_191CC7238();
    LOBYTE(v38) = 3;
    v29 = sub_191CC7238();
    LOBYTE(v38) = 4;
    v28 = sub_191CC7208();
    v52 = v19 & 1;
    sub_191C2D1C4();
    v49 = 5;
    sub_191C2D350();
    sub_191CC7268();
    v30 &= 1u;
    v20 = v30;
    v29 &= 1u;
    (*(v12 + 8))(v10, v14);
    v21 = v50;
    *&v33 = v31;
    v22 = v32;
    *(&v33 + 1) = v17;
    v34 = v32;
    *&v35 = v18;
    BYTE8(v35) = v20;
    v23 = v29;
    BYTE9(v35) = v29;
    HIWORD(v35) = v54;
    *(&v35 + 10) = v53;
    *&v36 = v28;
    v24 = v52;
    BYTE8(v36) = v52;
    *(&v36 + 9) = *v51;
    HIDWORD(v36) = *&v51[3];
    v37 = v50;
    *(v13 + 64) = v50;
    v25 = v34;
    *v13 = v33;
    *(v13 + 16) = v25;
    v26 = v36;
    *(v13 + 32) = v35;
    *(v13 + 48) = v26;
    sub_191C2D430(&v33, &v38);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v38 = v31;
    *(&v38 + 1) = v17;
    v39 = __PAIR128__(*(&v32 + 1), v22);
    v40 = v18;
    v41 = v30;
    v42 = v23;
    v43 = v53;
    v44 = v54;
    v45 = v28;
    v46 = v24;
    *v47 = *v51;
    *&v47[3] = *&v51[3];
    v48 = v21;
    return sub_191C2D468(&v38);
  }
}

uint64_t HKDatabase.Pruning.Show.version.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.Show.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 HKDatabase.Pruning.Show.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 HKDatabase.Pruning.Show.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t HKDatabase.Pruning.Show.activeStoresForMinAnchor.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.activeStoresForRestrictionPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.syncIdentities.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.stores.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.entities.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

__n128 HKDatabase.Pruning.Show.init(configuration:activeStoresForMinAnchor:activeStoresForRestrictionPredicates:syncIdentities:stores:entities:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 2;
  *(a7 + 8) = 0;
  v7 = *(a1 + 48);
  *(a7 + 48) = *(a1 + 32);
  *(a7 + 64) = v7;
  v8 = *(a1 + 64);
  result = *(a1 + 16);
  *(a7 + 16) = *a1;
  *(a7 + 32) = result;
  *(a7 + 80) = v8;
  *(a7 + 88) = a2;
  *(a7 + 96) = a3;
  *(a7 + 104) = a4;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_191C27240()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7365726F7473;
  if (v1 != 5)
  {
    v3 = 0x7365697469746E65;
  }

  v4 = 0xD000000000000024;
  if (v1 != 3)
  {
    v4 = 0x6E656449636E7973;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72756769666E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C2733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C318BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C27370(uint64_t a1)
{
  v2 = sub_191C2D498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C273AC(uint64_t a1)
{
  v2 = sub_191C2D498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB3D0, sub_191C2D498, &_s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v24 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 3);
  v38 = *(v1 + 4);
  v13 = v1[10];
  v28 = v1[11];
  v39 = v13;
  v14 = *(v1 + 1);
  v36 = *(v1 + 2);
  v37 = v12;
  v35 = v14;
  v15 = v1[13];
  v27 = v1[12];
  v26 = v15;
  v16 = v1[15];
  v25 = v1[14];
  v24 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D498();
  sub_191CC7548();
  LOBYTE(v30) = 0;
  v18 = v40;
  sub_191CC72E8();
  if (!v18)
  {
    v19 = v28;
    v20 = v27;
    v21 = v26;
    v22 = v25;
    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    v29 = 1;
    sub_191C2D4EC();
    sub_191CC7348();
    *&v30 = v19;
    v29 = 2;
    sub_191C2D540();
    sub_191C2D920(&qword_1EADCB3F0, &qword_1EADCAD80);
    sub_191CC7348();
    *&v30 = v20;
    v29 = 3;
    sub_191CC7348();
    *&v30 = v21;
    v29 = 4;
    sub_191C2D5D4(0, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2D638();
    sub_191CC7348();
    *&v30 = v22;
    v29 = 5;
    sub_191C2D5D4(0, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2D710();
    sub_191CC7348();
    *&v30 = v24;
    v29 = 6;
    sub_191C2EAD4(0, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
    sub_191C2D7E8(&qword_1EADCB430, sub_191C2D878);
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.Show.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  sub_191C2E288(0, &qword_1EADCB440, sub_191C2D498, &_s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_191C2D498();
  v12 = v9;
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  v13 = v5;
  v15 = v34;
  v14 = v35;
  LOBYTE(v39) = 0;
  v16 = v12;
  v33 = sub_191CC7208();
  v59 = v17 & 1;
  v52 = 1;
  sub_191C2D8CC();
  sub_191CC7268();
  *&v58[23] = v54;
  *&v58[39] = v55;
  *&v58[55] = v56;
  *&v58[71] = v57;
  *&v58[7] = v53;
  sub_191C2D540();
  LOBYTE(v36[0]) = 2;
  sub_191C2D920(&qword_1EADCB450, &qword_1EADCAD70);
  sub_191CC7268();
  v18 = v39;
  LOBYTE(v36[0]) = 3;
  sub_191CC7268();
  v19 = v39;
  sub_191C2D5D4(0, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
  LOBYTE(v36[0]) = 4;
  sub_191C2D9B0();
  sub_191CC7268();
  v32 = v19;
  v20 = v18;
  v31 = v39;
  sub_191C2D5D4(0, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
  LOBYTE(v36[0]) = 5;
  sub_191C2DA88();
  sub_191CC7268();
  v30 = v39;
  sub_191C2EAD4(0, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
  v50 = 6;
  sub_191C2D7E8(&qword_1EADCB478, sub_191C2DB60);
  sub_191CC7268();
  (*(v13 + 8))(v16, v14);
  *(&v36[4] + 8) = *&v58[63];
  *(&v36[3] + 9) = *&v58[48];
  *(v36 + 9) = *v58;
  v22 = v32;
  v21 = v33;
  v35 = v51;
  *&v36[0] = v33;
  LOBYTE(v18) = v59;
  BYTE8(v36[0]) = v59;
  *(&v36[2] + 9) = *&v58[32];
  *(&v36[1] + 9) = *&v58[16];
  *(&v36[5] + 1) = v20;
  *&v37 = v32;
  v23 = v30;
  v24 = v31;
  *(&v37 + 1) = v31;
  *&v38 = v30;
  *(&v38 + 1) = v51;
  v25 = v36[5];
  v15[4] = v36[4];
  v15[5] = v25;
  v26 = v38;
  v15[6] = v37;
  v15[7] = v26;
  v27 = v36[1];
  *v15 = v36[0];
  v15[1] = v27;
  v28 = v36[3];
  v15[2] = v36[2];
  v15[3] = v28;
  sub_191C2DBB4(v36, &v39);
  __swift_destroy_boxed_opaque_existential_0(v60);
  v42 = *&v58[16];
  v43 = *&v58[32];
  *v44 = *&v58[48];
  *&v44[15] = *&v58[63];
  v39 = v21;
  v40 = v18;
  v41 = *v58;
  v45 = v20;
  v46 = v22;
  v47 = v24;
  v48 = v23;
  v49 = v35;
  return sub_191C2DBEC(&v39);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.version.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}