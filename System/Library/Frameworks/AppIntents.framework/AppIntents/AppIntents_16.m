uint64_t sub_18F25EEFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10AppIntents33AsyncIntentValueSequenceContainer_id;
  v5 = sub_18F520E6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_18F25EF78(uint64_t a1)
{
  result = sub_18F0F4828(&qword_1EACD3650, type metadata accessor for AsyncIntentValueSequenceContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F25EFF8()
{
  result = sub_18F520E6C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_18F25F0A4()
{
  sub_18F52279C();

  sub_18F520E6C();
  sub_18F0F4828(&qword_1EACCED40, MEMORY[0x1E69695A8]);
  v0 = sub_18F522C9C();
  MEMORY[0x193ADB000](v0);

  MEMORY[0x193ADB000](47, 0xE100000000000000);
  v1 = sub_18F522C9C();
  MEMORY[0x193ADB000](v1);

  MEMORY[0x193ADB000](62, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_18F25F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = a4[1];
  swift_defaultActor_initialize();
  v16 = (v7 + OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider);
  *v16 = 0;
  v16[1] = 0;
  v17 = swift_allocBox();
  (*(*(a5 - 8) + 32))(v18, a1, a5);
  *(v7 + 112) = a2;
  v19 = OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_sequenceId;
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v20 + 32))(v7 + v19, a3);
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = v14;
  v21[6] = v15;
  v21[7] = v17;
  v22 = (v7 + OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider);
  v23 = *(v7 + OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider);
  *v22 = &unk_18F54C3E8;
  v22[1] = v21;

  sub_18F0F689C(v23);

  return v7;
}

uint64_t sub_18F25F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a2;
  v6[8] = a4;
  v6[6] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[11] = AssociatedTypeWitness;
  v8 = sub_18F52254C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = *(AssociatedTypeWitness - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_18F25F480, 0, 0);
}

uint64_t sub_18F25F480(uint64_t a1)
{
  v3 = v1[7];
  v1[5] = MEMORY[0x1E69E7CC0];
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    v1[18] = 1;
    v1[19] = v4;
    OUTLINED_FUNCTION_8_26();
    v5 = swift_task_alloc();
    v1[20] = v5;
    *v5 = v1;
    a1 = OUTLINED_FUNCTION_1_47(v5);
  }

  return MEMORY[0x1EEE6D8C8](a1);
}

uint64_t sub_18F25F51C()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 168) = v0;

  if (v0)
  {
    v6 = sub_18F25F9F0;
  }

  else
  {
    swift_endAccess();
    v6 = sub_18F25F62C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F25F62C()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[14];
  v2 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
    v3 = v0[19];
    OUTLINED_FUNCTION_9_27();

    OUTLINED_FUNCTION_20_0();

    return v4(v3);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v1, v2);
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_18F25F75C;

    return sub_18F210C28();
  }
}

uint64_t sub_18F25F75C()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  if (v0)
  {

    v5 = sub_18F25FA68;
  }

  else
  {
    v5 = sub_18F25F870;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F25F870()
{
  MEMORY[0x193ADB260](*(v0 + 184));
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  sub_18F521D6C();

  v7 = (*(v4 + 8))(v3, v5);
  v8 = *(v0 + 40);
  if (v2 == v6)
  {
    OUTLINED_FUNCTION_9_27();

    OUTLINED_FUNCTION_20_0();

    return v9(v8);
  }

  else
  {
    v11 = *(v0 + 144);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 144) = v13;
      *(v0 + 152) = v8;
      OUTLINED_FUNCTION_8_26();
      v14 = swift_task_alloc();
      *(v0 + 160) = v14;
      *v14 = v0;
      v7 = OUTLINED_FUNCTION_1_47();
    }

    return MEMORY[0x1EEE6D8C8](v7);
  }
}

uint64_t sub_18F25F9F0()
{
  OUTLINED_FUNCTION_69();
  swift_endAccess();

  OUTLINED_FUNCTION_9_27();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F25FA68()
{
  OUTLINED_FUNCTION_69();
  (*(v0[15] + 8))(v0[16], v0[11]);
  OUTLINED_FUNCTION_9_27();

  v1 = v0[1];

  return v1();
}

uint64_t sub_18F25FB04()
{
  v19 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider;
  v0[3] = OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider;
  v3 = (v1 + v2);
  v4 = *v3;
  v0[4] = *v3;
  v0[5] = v3[1];
  if (v4)
  {

    v17 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_18F25FD84;

    return v17();
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v7 = sub_18F52165C();
    __swift_project_value_buffer(v7, qword_1ED7077A8);

    v8 = sub_18F52163C();
    v9 = sub_18F5221FC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = sub_18F25F0A4();
      v14 = sub_18F11897C(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_18F0E9000, v8, v9, "nextResults called beyond end of sequence for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x193ADD350](v11, -1, -1);
      MEMORY[0x193ADD350](v10, -1, -1);
    }

    OUTLINED_FUNCTION_20_0();
    v16 = MEMORY[0x1E69E7CC0];

    return v15(v16);
  }
}

uint64_t sub_18F25FD84()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  *(v8 + 56) = v7;
  *(v8 + 64) = v0;

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_18F25FF48;
  }

  else
  {
    v10 = sub_18F25FEB0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_18F25FEB0()
{
  v1 = v0[4];
  v2 = sub_18F111F70(v0[7]);
  sub_18F0F689C(v1);
  if (!v2)
  {
    v3 = (v0[2] + v0[3]);
    v4 = *v3;
    *v3 = 0;
    v3[1] = 0;
    sub_18F0F689C(v4);
  }

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_18F25FF48()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F25FFA8()
{
  v1 = OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_sequenceId;
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v2 + 8))(v0 + v1);
  sub_18F0F689C(*(v0 + OBJC_IVAR____TtCC10AppIntents33AsyncIntentValueSequenceContainer8Iterator_resultProvider));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_18F26001C()
{
  sub_18F25FFA8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18F260070()
{
  result = sub_18F520E6C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F260188()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_18F260248;

  return sub_18F25F324(v5, v7, v6, v2, v3, v4);
}

uint64_t sub_18F260248()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5(v2);
}

uint64_t sub_18F260338(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v18 = *a1;
  v17 = a1[1];

  v19 = sub_18F25E8BC(v18, v17, a2, a3, a4);
  type metadata accessor for ConnectionContext();
  if (sub_18F407370())
  {
    v20 = sub_18F0F4828(&qword_1EACD36A0, type metadata accessor for AsyncIntentValueSequenceContainer);
    sub_18F4074E8(v19, v5, v20);

    (*(v12 + 8))(v16, v10);
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v21 = sub_18F52165C();
    __swift_project_value_buffer(v21, qword_1ED7077A8);
    v22 = sub_18F52163C();
    v23 = sub_18F52221C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_18F0E9000, v22, v23, "No ConnectionContext available with encoding AsyncIntentValueSequence to LNValue", v24, 2u);
      MEMORY[0x193ADD350](v24, -1, -1);
    }
  }

  return v19;
}

id sub_18F260548(uint64_t a1, uint64_t a2)
{
  v5 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_18F0F21A8(0, &qword_1EACD3698);
  (*(v7 + 16))(v11, v2 + OBJC_IVAR____TtC10AppIntents33AsyncIntentValueSequenceContainer_id, v5);
  v16[3] = v12;
  v16[0] = sub_18F260684(v11);
  v13 = [objc_allocWithZone(MEMORY[0x1E69AC6F8]) initWithMemberValueType:a1 capabilities:{a2, v16[0]}];
  v14 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v16, v13);
}

id sub_18F260684(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F520E2C();
  v4 = [v2 initWithIdentifier_];

  v5 = sub_18F520E6C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_18F260720(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_18F520E2C();
  v7 = [v3 initWithSequenceIdentifier:v6 iteratorIdentifier:a2];

  v8 = sub_18F520E6C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_18F2607B8(uint64_t *a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_18F520E6C() - 8);
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_18F25EB04(a1, a2, v9, v10, v11, v5, v6, v7);
}

uint64_t IntentItemCollection.sections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_18F2608E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntentItemCollection.init(promptLabel:usesIndexedCollation:sectionsBuilder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_18F11F0A0(a1, &v14 - v9);
  v12 = a3(v11);
  IntentItemCollection.init(promptLabel:usesIndexedCollation:sections:)(v10, a2, v12, a4);
  return sub_18F1121C4(a1);
}

uint64_t IntentItemCollection.init(promptLabel:usesIndexedCollation:sections:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for IntentItemCollection();
  v9 = *(v8 + 36);
  v10 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  *a4 = a3;
  result = sub_18F2608E8(a1, a4 + v9);
  *(a4 + *(v8 + 40)) = a2;
  return result;
}

uint64_t IntentItemCollection.init<>(promptLabel:usesIndexedCollation:items:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v28 = a2;
  v26 = a1;
  v27 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  sub_18F11F0A0(a1, &v25 - v13);
  type metadata accessor for IntentItemSection();
  sub_18F522CAC();
  swift_allocObject();
  v15 = sub_18F521CDC();
  v17 = v16;
  v33 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v18 = sub_18F521DBC();
  v19 = type metadata accessor for IntentItem();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_18F10C138(sub_18F261230, v29, v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

  IntentItemSection.init(items:)(v22, v17);
  v23 = sub_18F129FD4(v15);
  IntentItemCollection.init(promptLabel:usesIndexedCollation:sections:)(v14, v28, v23, v27);
  return sub_18F1121C4(v26);
}

uint64_t sub_18F260D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return IntentItem.init(_:)(v8, a2, a3, a4);
}

uint64_t IntentItemCollection.items.getter()
{
  type metadata accessor for IntentItemSection();
  sub_18F521DBC();
  swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v0 = sub_18F521BEC();

  return v0;
}

uint64_t sub_18F260F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IntentItemSection();
  type metadata accessor for IntentItem();
  sub_18F521DBC();
  swift_getAssociatedTypeWitness();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_getWitnessTable();
  v2 = sub_18F521B3C();

  *a1 = v2;
  return result;
}

uint64_t sub_18F261028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v6 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t static IntentItemCollection.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for IntentItemSection();
  v6 = sub_18F521D2C();
  return IntentItemCollection.init(promptLabel:usesIndexedCollation:sections:)(v4, 0, v6, a1);
}

uint64_t _EntityQueryReference.identifiers.getter()
{
  OUTLINED_FUNCTION_69();
  v1[25] = v0;
  OUTLINED_FUNCTION_40_0();
  v1[26] = *(v2 + 88);
  OUTLINED_FUNCTION_40_0();
  v1[27] = *(v3 + 80);
  v1[28] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_6();
  v1[29] = v4;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2613BC()
{
  *(v0 + 264) = *(*(v0 + 200) + 40);
  sub_18F0F21A8(0, &qword_1EACD36B0);
  *(v0 + 272) = swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  OUTLINED_FUNCTION_146();
  sub_18F52254C();
  OUTLINED_FUNCTION_33_14();
  if (*(v0 + 176))
  {
    goto LABEL_2;
  }

  v4 = *(v0 + 200);
  (*(*(v0 + 208) + 56))();
  v5 = *(v4 + 16);
  *(v0 + 280) = v5;
  *(v0 + 288) = *(v4 + 24);
  if (!*(v4 + 32))
  {
    v11 = OUTLINED_FUNCTION_56();
    sub_18F1FBA30(v11, v12, 0);
    OUTLINED_FUNCTION_28_26();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v13 = swift_task_alloc();
    *(v13 + 16) = v1;
    *(v13 + 24) = v5;
    OUTLINED_FUNCTION_3_33();

    v14 = OUTLINED_FUNCTION_8_6();
    v15(v14);
LABEL_2:

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X2, X16 }
  }

  if (*(v4 + 32) == 1)
  {
    (*(*(v0 + 232) + 16))(*(v0 + 248), *(v0 + 256), *(v0 + 224));
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36D0);
    OUTLINED_FUNCTION_24_23();
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 136), v0 + 96);
      v6 = *(v0 + 120);
      v7 = *(v0 + 128);
      *(v0 + 296) = v6;
      *(v0 + 304) = v7;
      __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v6);
      OUTLINED_FUNCTION_18_25(v7);
      v8 = swift_task_alloc();
      *(v0 + 312) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_12_3(v8);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_18_3();

      __asm { BRAA            X4, X16 }
    }

    v25 = OUTLINED_FUNCTION_56();
    sub_18F1FBA5C(v25, v26, 1u);
    OUTLINED_FUNCTION_39_12();
    sub_18F0EF148(v0 + 136, &qword_1EACD36D8);
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    OUTLINED_FUNCTION_15_22();
    goto LABEL_18;
  }

  (*(*(v0 + 232) + 16))(*(v0 + 240), *(v0 + 256), *(v0 + 224));
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36B8);
  OUTLINED_FUNCTION_24_23();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F0EF148(v0 + 56, &qword_1EACD36C0);
    v30 = swift_task_alloc();
    *(v0 + 400) = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_16_24();
LABEL_18:
    *(v28 + 8) = v29;
    OUTLINED_FUNCTION_18_3();

    return _EntityQueryReference.entities.getter();
  }

  sub_18F0FD0B4((v0 + 56), v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  *(v0 + 360) = v17;
  *(v0 + 368) = v18;
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v17);
  v19 = swift_task_alloc();
  *(v0 + 376) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_12_3(v19);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_18_3();

  return sub_18F263748(v20, v21, v22);
}

uint64_t sub_18F261860(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 320) = v1;

  v7 = *(v4 + 288);
  v8 = *(v4 + 280);
  if (!v1)
  {
    *(v5 + 328) = a1;
  }

  sub_18F1FBA5C(v8, v7, 1u);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F2619B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_43_12();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36C8);
  OUTLINED_FUNCTION_24_23();
  sub_18F52298C();

  v14 = sub_18F522B1C();

  if (v14)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 96);
    OUTLINED_FUNCTION_28_26();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    OUTLINED_FUNCTION_3_33();

    v16 = OUTLINED_FUNCTION_8_6();
    v17(v16);

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_176();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 96);
    v27 = swift_task_alloc();
    *(v12 + 336) = v27;
    *v27 = v12;
    OUTLINED_FUNCTION_15_22();
    *(v28 + 8) = v29;
    OUTLINED_FUNCTION_176();

    return _EntityQueryReference.entities.getter();
  }
}

uint64_t sub_18F261B84()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 344) = v0;

  if (!v0)
  {
    *(v4 + 352) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F261C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  v13 = v12[44];
  v14 = v12[34];
  v16 = v12[26];
  v15 = v12[27];
  v12[24] = v13;
  v17 = swift_task_alloc();
  *v17 = v15;
  v17[1] = v16;
  KeyPath = swift_getKeyPath();

  v19 = swift_task_alloc();
  *(v19 + 16) = v16;
  *(v19 + 24) = KeyPath;
  v20 = sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_18F10C138(sub_18F265878, v19, v20, v14, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);

  OUTLINED_FUNCTION_46_10();
  v24 = swift_task_alloc();
  *(v24 + 16) = v16;
  *(v24 + 24) = v23;
  OUTLINED_FUNCTION_3_33();

  (*(KeyPath + 8))(v13, v20);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_176();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_18F261E04()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 384) = v0;

  if (!v0)
  {
    *(v4 + 392) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F261F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_43_12();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36C8);
  OUTLINED_FUNCTION_24_23();
  sub_18F52298C();

  v14 = sub_18F522B1C();

  if (v14)
  {
    sub_18F1FBA5C(*(v12 + 280), *(v12 + 288), 2u);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    OUTLINED_FUNCTION_28_26();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    OUTLINED_FUNCTION_3_33();

    v16 = OUTLINED_FUNCTION_8_6();
    v17(v16);

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_176();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    v27 = swift_task_alloc();
    *(v12 + 400) = v27;
    *v27 = v12;
    OUTLINED_FUNCTION_16_24();
    *(v28 + 8) = v29;
    OUTLINED_FUNCTION_176();

    return _EntityQueryReference.entities.getter();
  }
}

uint64_t sub_18F2620E0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2621E4()
{
  v1 = v0[52];
  v2 = v0[35];
  v16 = v0[36];
  v3 = v0[34];
  v4 = v0[26];
  v5 = v0[27];
  v0[23] = v1;
  v6 = swift_task_alloc();
  *v6 = v5;
  v6[1] = v4;
  KeyPath = swift_getKeyPath();

  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  *(v8 + 24) = KeyPath;
  v9 = sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_18F10C138(sub_18F263C80, v8, v9, v3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  sub_18F1FBA5C(v2, v16, 2u);

  OUTLINED_FUNCTION_46_10();
  v13 = swift_task_alloc();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  OUTLINED_FUNCTION_3_33();

  (*(v9 + 8))(v1, v4);

  OUTLINED_FUNCTION_20_0();

  return v14(v12);
}

uint64_t sub_18F262394()
{
  OUTLINED_FUNCTION_21();
  (*(v0[29] + 8))(v0[32], v0[28]);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  OUTLINED_FUNCTION_47_10();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F262424()
{
  OUTLINED_FUNCTION_21();
  (*(v0[29] + 8))(v0[32], v0[28]);
  OUTLINED_FUNCTION_47_10();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2624AC()
{
  OUTLINED_FUNCTION_21();
  sub_18F1FBA5C(*(v0 + 280), *(v0 + 288), 2u);
  v1 = OUTLINED_FUNCTION_22();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_47_10();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F26254C()
{
  OUTLINED_FUNCTION_21();
  sub_18F1FBA5C(*(v0 + 280), *(v0 + 288), 2u);
  v1 = OUTLINED_FUNCTION_22();
  v2(v1);
  OUTLINED_FUNCTION_47_10();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t _EntityQueryReference.entities.getter()
{
  OUTLINED_FUNCTION_69();
  v1[24] = v0;
  OUTLINED_FUNCTION_40_0();
  v1[25] = *(v2 + 88);
  OUTLINED_FUNCTION_40_0();
  v1[26] = *(v3 + 80);
  v1[27] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_6();
  v1[28] = v4;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F262784()
{
  OUTLINED_FUNCTION_24_4();
  *(v0 + 256) = *(*(v0 + 192) + 40);
  sub_18F0F21A8(0, &qword_1EACD36B0);
  *(v0 + 264) = sub_18F521DBC();
  sub_18F52254C();
  OUTLINED_FUNCTION_33_14();
  if (*(v0 + 176))
  {
    OUTLINED_FUNCTION_37_13();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 192);
  (*(*(v0 + 200) + 56))();
  v4 = *(v3 + 16);
  *(v0 + 272) = v4;
  v5 = *(v3 + 24);
  *(v0 + 280) = v5;
  if (!*(v3 + 32))
  {
    swift_getAssociatedConformanceWitness();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v9 = swift_task_alloc();
    *(v0 + 288) = v9;
    *v9 = v0;
    v9[1] = sub_18F262DB0;
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X3, X16 }
  }

  if (*(v3 + 32) == 1)
  {
    (*(*(v0 + 224) + 16))(*(v0 + 240), *(v0 + 248), *(v0 + 216));
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36F0);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 136), v0 + 96);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
      *(v0 + 312) = swift_getAssociatedTypeWitness();
      *(v0 + 320) = swift_task_alloc();
      OUTLINED_FUNCTION_14_6();
      v6 = swift_task_alloc();
      *(v0 + 328) = v6;
      *v6 = v0;
      v6[1] = sub_18F262FB8;
      OUTLINED_FUNCTION_54_3();

      __asm { BRAA            X5, X16 }
    }

    sub_18F1FBA5C(v4, v5, 1u);
    OUTLINED_FUNCTION_39_12();
    sub_18F0EF148(v0 + 136, &qword_1EACD36F8);
    v21 = *(v0 + 248);
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_92();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v23 + 8))(v21, v22);
LABEL_20:
    OUTLINED_FUNCTION_37_13();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 224) + 16))(*(v0 + 232), *(v0 + 248), *(v0 + 216));
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F0EF148(v0 + 56, &qword_1EACD36E8);
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 248);
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_92();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_18F1FBA5C(v25, v24, 2u);
    (*(v28 + 8))(v26, v27);
    goto LABEL_20;
  }

  sub_18F0FD0B4((v0 + 56), v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  *(v0 + 344) = v13;
  *(v0 + 352) = v14;
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v13);
  v15 = swift_task_alloc();
  *(v0 + 360) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_12_3(v15);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_54_3();

  return sub_18F263D08(v16, v17, v18);
}

uint64_t sub_18F262DB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 296) = v1;

  v7 = *(v4 + 280);
  v8 = *(v4 + 272);
  if (!v1)
  {
    *(v5 + 304) = a1;
  }

  sub_18F1FBA5C(v8, v7, 0);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F262F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_27_22();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_6_37(v12);

  v13 = OUTLINED_FUNCTION_8_6();
  v14(v13);

  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_176();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_18F262FB8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  sub_18F1FBA5C(*(v2 + 272), *(v2 + 280), 1u);
  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2630F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  if (swift_dynamicCast())
  {

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 96);
    OUTLINED_FUNCTION_27_22();
    v13 = swift_task_alloc();
    OUTLINED_FUNCTION_6_37(v13);

    v14 = OUTLINED_FUNCTION_8_6();
    v15(v14);

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_176();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 96);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_92();
    swift_allocError();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_92();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_22();
    v26(v25);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_176();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_18F263284()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F263388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  OUTLINED_FUNCTION_24_23();
  sub_18F52298C();

  v13 = sub_18F522B1C();

  if (v13)
  {
    sub_18F1FBA5C(*(v12 + 272), *(v12 + 280), 2u);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    OUTLINED_FUNCTION_27_22();
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_6_37(v14);

    v15 = OUTLINED_FUNCTION_8_6();
    v16(v15);

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_176();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_92();
    swift_allocError();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_92();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v26 = OUTLINED_FUNCTION_56();
    sub_18F1FBA5C(v26, v27, 2u);
    v28 = OUTLINED_FUNCTION_8_6();
    v29(v28);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_176();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_18F263584()
{
  OUTLINED_FUNCTION_21();
  (*(v0[28] + 8))(v0[31], v0[27]);
  OUTLINED_FUNCTION_37_13();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F26360C()
{
  OUTLINED_FUNCTION_21();
  (*(v0[28] + 8))(v0[31], v0[27]);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  OUTLINED_FUNCTION_37_13();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2636A8()
{
  OUTLINED_FUNCTION_21();
  sub_18F1FBA5C(*(v0 + 272), *(v0 + 280), 2u);
  v1 = OUTLINED_FUNCTION_22();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_37_13();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F263748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F263760()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[4];
  v2 = sub_18F2EBAC8();
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = *(v1 + 8);
  *v3 = v0;
  v3[1] = sub_18F263810;
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_18F2EBBBC(v5, v2, v6, v7, v4);
}

uint64_t sub_18F263810()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F26391C()
{
  OUTLINED_FUNCTION_21();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = sub_18F383EC8();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_14_6();
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_18F263A64;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[3];

  return v8(v4, v1, v6, v5);
}

uint64_t sub_18F263A64()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F263B68()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_18F263BC8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F263C24()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F263CAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F263D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F263D20()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 48) = sub_18F264A34();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_18F263DD0;

  return sub_18F2EC13C();
}

uint64_t sub_18F263DD0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_18F263F04()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F263F60(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static _EntityQueryReference.defaultResolverSpecification.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_29_21();
  v3 = type metadata accessor for _EntityQueryReference.EntityQueryCaptureResolver();
  WitnessTable = swift_getWitnessTable();
  j___s10AppIntents28ResolverSpecificationBuilderO15buildExpressionyqd__qd__6OutputQyd__RszAA0C0Rd__lFZ(v5, WitnessTable, v1, v3, WitnessTable);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_29_21();
    v7 = type metadata accessor for _EntityQueryReference.EntityStringQueryCaptureResolver();
    v8 = swift_getWitnessTable();
    j___s10AppIntents28ResolverSpecificationBuilderO15buildExpressionyqd__qd__6OutputQyd__RszAA0C0Rd__lFZ(v9, v8, v1, v7, v8);
    OUTLINED_FUNCTION_0_53();
    v10 = swift_getWitnessTable();
    v11 = sub_18F392D18(v10, v1, v7, v10, v8);
    sub_18F392DA0(v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
    swift_getWitnessTable();
    sub_18F392DA0(0);
  }

  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_29_21();
    v12 = type metadata accessor for _EntityQueryReference.EntityPropertyQueryCaptureResolver();
    v13 = swift_getWitnessTable();
    j___s10AppIntents28ResolverSpecificationBuilderO15buildExpressionyqd__qd__6OutputQyd__RszAA0C0Rd__lFZ(v14, v13, v1, v12, v13);
    OUTLINED_FUNCTION_0_53();
    v15 = swift_getWitnessTable();
    v16 = sub_18F392D18(v15, v1, v12, v15, v13);
    sub_18F392DA0(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
    swift_getWitnessTable();
    sub_18F392DA0(0);
  }

  OUTLINED_FUNCTION_0_53();
  v17 = swift_getWitnessTable();
  v18 = sub_18F392D18(v17, v1, v3, v17, WitnessTable);
  sub_18F392DF8();
  v19 = v18;

  sub_18F392DF8();

  *a1 = v19;
  return result;
}

uint64_t sub_18F26428C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  sub_18F2642E4(a1, a2, a3);
  return v6;
}

uint64_t sub_18F2642E4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = v7;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_18F264340()
{
  sub_18F0F21A8(0, &qword_1EACD36B0);
  swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  OUTLINED_FUNCTION_146();
  sub_18F52254C();
  OUTLINED_FUNCTION_32_20();
  return v1;
}

uint64_t sub_18F264408()
{
  sub_18F0F21A8(0, &qword_1EACD36B0);
  sub_18F521DBC();
  OUTLINED_FUNCTION_146();
  sub_18F52254C();
  OUTLINED_FUNCTION_32_20();
  return v1;
}

uint64_t sub_18F26449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F2644B4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  OUTLINED_FUNCTION_24_23();
  type metadata accessor for _EntityQueryReference();
  v0[2] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
  swift_getAssociatedTypeWitness();
  sub_18F1F0344();
  v5 = sub_18F521B3C();

  sub_18F26428C(v5, 0, 0);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_18F2645E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v1, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F26469C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v7 = v4;
  v7[1] = sub_18F265840;

  return sub_18F26449C(v6, v8, v9, v10);
}

uint64_t sub_18F26473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F264754()
{
  OUTLINED_FUNCTION_21();
  type metadata accessor for _EntityQueryReference();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v0 = OUTLINED_FUNCTION_56();
  sub_18F26428C(v0, v1, 1);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_18F2647DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F1C2958;

  return sub_18F26473C(v6, v7, v9, v10, v11);
}

uint64_t sub_18F264888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F2648A0()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 16);
  type metadata accessor for _EntityQueryReference();
  v2 = v1;
  sub_18F26428C(v1, 0, 2);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_18F264920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v7 = v4;
  v7[1] = sub_18F265840;

  return sub_18F264888(v6, v8, v9, v10);
}

uint64_t _EntityQueryReference.deinit()
{
  sub_18F1FBA5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t _EntityQueryReference.__deallocating_deinit()
{
  _EntityQueryReference.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_18F264A34()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntityQuerySort();
  OUTLINED_FUNCTION_146();

  return sub_18F521D2C();
}

id static _EntityQueryReference.valueType.getter()
{
  v1 = static AppEntity.valueType.getter(*(v0 + 80), *(v0 + 88));
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id _EntityQueryReference._asValue.getter()
{
  v1 = *v0;
  v2 = sub_18F264408();
  if (v2)
  {
    v49[0] = v2;
    MEMORY[0x1EEE9AC00](v2);
    v3 = *(v1 + 80);
    v4 = *(v1 + 88);
    KeyPath = swift_getKeyPath();
    v47 = v4;
    v48 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = sub_18F521DBC();
    v7 = sub_18F0F21A8(0, &unk_1ED6FE390);
    OUTLINED_FUNCTION_4_30();
    WitnessTable = swift_getWitnessTable();
    v10 = sub_18F10C138(sub_18F263C80, v46, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    v11 = static AppEntity.valueType.getter(v3, v4);
    v12 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v13 = v10;
    v14 = v11;
    return sub_18F265138(v13, v14);
  }

  v15 = sub_18F264340();
  if (v15)
  {
    v49[0] = v15;
    MEMORY[0x1EEE9AC00](v15);
    v16 = *(v1 + 88);
    v47 = *(v1 + 80);
    v48 = v16;
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_146();
    v17 = sub_18F521DBC();
    v18 = sub_18F0F21A8(0, &unk_1ED6FE390);
    OUTLINED_FUNCTION_4_30();
    v19 = swift_getWitnessTable();
    sub_18F10C138(sub_18F265828, v46, v17, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

LABEL_5:
    [objc_allocWithZone(MEMORY[0x1E69AC7E8]) init];
    v21 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v13 = OUTLINED_FUNCTION_22();
    return sub_18F265138(v13, v14);
  }

  v26 = *(v0 + 2);
  v25 = *(v0 + 3);
  if (!v0[32])
  {
    v49[0] = *(v0 + 2);
    MEMORY[0x1EEE9AC00](0);
    v30 = *(v1 + 88);
    v47 = *(v1 + 80);
    v48 = v30;
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_146();
    v31 = sub_18F521DBC();
    v32 = sub_18F0F21A8(0, &unk_1ED6FE390);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_4_30();
    v33 = swift_getWitnessTable();
    sub_18F10C138(sub_18F2651B8, v46, v31, v32, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    v35 = OUTLINED_FUNCTION_26_21();
    sub_18F1FBA5C(v35, v36, 0);
    goto LABEL_5;
  }

  if (v0[32] != 1)
  {
    v50 = sub_18F0F21A8(0, qword_1EACD3700);
    v49[0] = v26;
    v37 = objc_allocWithZone(MEMORY[0x1E69AC998]);
    v38 = OUTLINED_FUNCTION_26_21();
    sub_18F1FBA30(v38, v39, 2u);
    v40 = v26;
    v41 = [v0 init];
    v42 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v43 = v41;
    v23 = v42;
    sub_18F166E58(v49, v43);
    v44 = OUTLINED_FUNCTION_26_21();
    sub_18F1FBA5C(v44, v45, 2u);
    return v23;
  }

  v50 = MEMORY[0x1E69E6158];
  v49[0] = v26;
  v49[1] = v25;
  v27 = objc_opt_self();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v28 = [v27 stringValueType];
  v29 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v49, v28);
}

id sub_18F264FB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = AppEntity.asValue.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_18F264FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v14 - v9;
  (*(v11 + 16))(v14 - v9, a1);
  EntityIdentifier.init<A>(for:identifier:)(a2, v10, a3, v14);
  v12 = sub_18F27DB1C(v14[0], v14[1], v14[2], v14[3]);

  *a4 = v12;
  return result;
}

id sub_18F265138(uint64_t a1, void *a2)
{
  sub_18F0F21A8(0, &unk_1ED6FE390);
  OUTLINED_FUNCTION_92();
  v4 = sub_18F521C8C();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

uint64_t sub_18F2651FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F265254(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F2652AC()
{
  result = qword_1EACCDED8;
  if (!qword_1EACCDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDED8);
  }

  return result;
}

uint64_t sub_18F265300(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of _EntityIdentifierStringQuery.entityIdentifiers(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_25(a4);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  OUTLINED_FUNCTION_12_3(v10);

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18F2654F0()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5(v2);
}

uint64_t dispatch thunk of _EntityIDPropertyQueryReference.entityIdentifiers(matching:mode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_25(a4);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_18F265844;

  return (v12)(a1, a2 & 1, a3, a4);
}

uint64_t sub_18F26578C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F265894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18F52254C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-1] - v7;
  sub_18F0FD724(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v8, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v8, v5);
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v10 = sub_18F52165C();
    __swift_project_value_buffer(v10, qword_1ED7077A8);
    sub_18F0FD724(a1, v26);
    v11 = sub_18F52163C();
    v12 = sub_18F52221C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_18F11897C(0xD00000000000001ALL, 0x800000018F527D90, &v25);
      *(v13 + 12) = 2080;
      sub_18F0FD724(v26, v24);
      v15 = sub_18F52194C();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v18 = sub_18F11897C(v15, v17, &v25);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v24[0] = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v19 = sub_18F52194C();
      v21 = sub_18F11897C(v19, v20, &v25);

      *(v13 + 24) = v21;
      _os_log_impl(&dword_18F0E9000, v11, v12, "%s failed, %s not of type %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v14, -1, -1);
      MEMORY[0x193ADD350](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    sub_18F133EDC();
    swift_allocError();
    *v22 = 10;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 7;
    return swift_willThrow();
  }
}

uint64_t sub_18F265C8C()
{
  OUTLINED_FUNCTION_69();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F265D44, 0, 0);
}

uint64_t sub_18F265D44()
{
  v13 = v0[27];
  v2 = v0[25];
  v1 = v0[26];
  (*(v0[29] + 16))(v0[30], v0[28], v1);
  v3 = *(v13 + 8);
  v0[31] = v3;
  v4 = *(v3 + 72);
  v0[32] = v4;
  v0[33] = (v3 + 72) & 0xFFFFFFFFFFFFLL | 0x9A56000000000000;
  v4(v1, v3);
  sub_18F0FD724(v2, (v0 + 7));
  (*(v3 + 80))(v0 + 7, v1, v3);
  v5 = [objc_allocWithZone(MEMORY[0x1E69AC8F8]) init];
  v0[34] = v5;
  [v5 setForcesNeedsValue_];
  v6 = *(v13 + 40);
  v7 = v5;
  v12 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_18F265F28;
  v9 = v0[26];
  v10 = v0[27];

  return (v12)(0, v5, v9, v10);
}

uint64_t sub_18F265F28()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v2 + 288) = v0;

  if (v0)
  {
    v4 = sub_18F266260;
  }

  else
  {

    v4 = sub_18F266038;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18F266038()
{
  (*(v0 + 256))(*(v0 + 208), *(v0 + 248));
  if (*(v0 + 160))
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 208);
    v3 = *(v0 + 192);
    sub_18F0FD0B4((v0 + 136), v0 + 96);
    sub_18F265894(v0 + 96, v3);
    v4 = *(v0 + 272);
    if (!v1)
    {
      v18 = *(v0 + 232);
      v17 = *(v0 + 240);
      v20 = *(v0 + 208);
      v19 = *(v0 + 216);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

      sub_18F2664B4(v17, v0 + 16, v20, v19);
      sub_18F10095C(v0 + 16);
      (*(v18 + 8))(v17, v20);

      OUTLINED_FUNCTION_71();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  }

  else
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    sub_18F10095C(v0 + 136);
    result = (*(v5 + 16))(v6, v5);
    if (!v8)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v9 = v8;
    v10 = *(v0 + 272);
    *(v0 + 176) = (*(*(v0 + 248) + 96))(*(v0 + 208));
    *(v0 + 184) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
    v4 = sub_18F52194C();
    v13 = v12;
    sub_18F133EDC();
    v14 = swift_allocError();
    *v15 = v2;
    *(v15 + 8) = v9;
    *(v15 + 16) = v4;
    *(v15 + 24) = v13;
    *(v15 + 32) = 0;
    *(v15 + 40) = 5;
    v1 = v14;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_2_49();
  sub_18F10095C(v0 + 16);
  v4[1](v2, v1);

  OUTLINED_FUNCTION_71();
LABEL_8:

  return v16();
}

uint64_t sub_18F266260()
{
  v4 = *(v2 + 272);

  OUTLINED_FUNCTION_2_49();
  sub_18F10095C(v2 + 16);
  (*(v3 + 8))(v0, v1);

  OUTLINED_FUNCTION_71();

  return v5();
}

id sub_18F2662F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_18F0F21A8(0, qword_1ED6FE8F8);
  sub_18F102F54(a1, v13);
  (*(v7 + 16))(v9, v3, a2);
  return sub_18F23B470(v9, v13, v10, a2, *(a3 + 8));
}

uint64_t sub_18F266408(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 72))(v4);
  if (!v5)
  {
    sub_18F10095C(v4);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  sub_18F11E26C();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if (!*(&v7 + 1))
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = 1;
LABEL_6:
  sub_18F10095C(&v6);
  return v2;
}

void *sub_18F266544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v67 - v5;
  v6 = sub_18F520F1C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v73 = sub_18F520ADC();
  v11 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3990);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3998) - 8);
  v18 = *v17;
  v77 = *(*v17 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v79 = v20;
  *(v20 + 16) = xmmword_18F541F50;
  v76 = v20 + v19;
  v21 = v20 + v19 + v17[14];
  *(v20 + v19) = 0;
  sub_18F52181C();
  v75 = type metadata accessor for NavigateSequentiallyDirection.__();
  *v14 = v75;
  v71 = *MEMORY[0x1E6968E00];
  v22 = *(v11 + 104);
  v72 = v11 + 104;
  v74 = v22;
  v22(v14);
  v70 = v10;
  sub_18F520EDC();
  OUTLINED_FUNCTION_2_4();
  v23 = sub_18F520B3C();
  v24 = v78;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  v28 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v32 = type metadata accessor for DisplayRepresentation();
  v33 = v32[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v23);
  v37 = v32[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v28);
  v41 = v32[7];
  v69 = xmmword_18F540410;
  *(v21 + v41) = xmmword_18F540410;
  *(v21 + v32[8]) = 0;
  *(v21 + v32[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v23);
  sub_18F0FF628(v24, v21 + v33, &qword_1EACCF7A8);
  v45 = v68;
  sub_18F0FF628(v68, v21 + v37, &qword_1EACD0270);
  v46 = v76 + v77 + v17[14];
  *(v76 + v77) = 1;
  sub_18F52181C();
  v47 = v74;
  *v14 = v75;
  v47(v14, v71, v73);
  sub_18F520EDC();
  OUTLINED_FUNCTION_2_4();
  v48 = v24;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v23);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v28);
  v55 = v32[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v23);
  v59 = v32[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v28);
  *(v46 + v32[7]) = v69;
  *(v46 + v32[8]) = 0;
  *(v46 + v32[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v23);
  sub_18F0FF628(v48, v46 + v55, &qword_1EACCF7A8);
  sub_18F0FF628(v45, v46 + v59, &qword_1EACD0270);
  sub_18F267224();
  result = sub_18F5216CC();
  off_1ED6FE098 = result;
  return result;
}

_UNKNOWN **sub_18F266A74()
{
  if (qword_1ED6FE090 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  return &off_1ED6FE098;
}

uint64_t static NavigateSequentiallyDirection.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE090 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static NavigateSequentiallyDirection.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE090 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  off_1ED6FE098 = a1;
}

uint64_t (*static NavigateSequentiallyDirection.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE090 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F266C04@<X0>(void *a1@<X8>)
{
  sub_18F266A74();
  swift_beginAccess();
  *a1 = off_1ED6FE098;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F266C58(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F266A74();
  swift_beginAccess();
  off_1ED6FE098 = v1;
}

AppIntents::NavigateSequentiallyDirection_optional __swiftcall NavigateSequentiallyDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t NavigateSequentiallyDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x73756F6976657270;
  }

  else
  {
    return 1954047342;
  }
}

unint64_t sub_18F266D68()
{
  result = qword_1ED6FEA98;
  if (!qword_1ED6FEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA98);
  }

  return result;
}

uint64_t sub_18F266DE0@<X0>(uint64_t *a1@<X8>)
{
  result = NavigateSequentiallyDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F266E48()
{
  result = qword_1ED6FEA78;
  if (!qword_1ED6FEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA78);
  }

  return result;
}

unint64_t sub_18F266E9C()
{
  result = qword_1ED6FEA60;
  if (!qword_1ED6FEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA60);
  }

  return result;
}

unint64_t sub_18F266EF0()
{
  result = qword_1ED6FEA90;
  if (!qword_1ED6FEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA90);
  }

  return result;
}

unint64_t sub_18F266F44(uint64_t a1)
{
  result = sub_18F266F6C();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F266F6C()
{
  result = qword_1ED6FEA70;
  if (!qword_1ED6FEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA70);
  }

  return result;
}

unint64_t sub_18F266FC0(uint64_t a1)
{
  result = sub_18F266FE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F266FE8()
{
  result = qword_1ED6FEA68;
  if (!qword_1ED6FEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA68);
  }

  return result;
}

unint64_t sub_18F267090()
{
  result = qword_1ED6FEA80;
  if (!qword_1ED6FEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA80);
  }

  return result;
}

uint64_t sub_18F267128(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F26717C()
{
  result = qword_1ED6FEAA8;
  if (!qword_1ED6FEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAA8);
  }

  return result;
}

unint64_t sub_18F2671D0()
{
  result = qword_1ED6FEA88;
  if (!qword_1ED6FEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEA88);
  }

  return result;
}

unint64_t sub_18F267224()
{
  result = qword_1ED6FEAA0;
  if (!qword_1ED6FEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAA0);
  }

  return result;
}

unint64_t sub_18F26727C()
{
  result = qword_1ED6FE048;
  if (!qword_1ED6FE048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NavigateSequentiallyDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_18F267438()
{
  OUTLINED_FUNCTION_0_35();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return &unk_18F54CEC8;
}

uint64_t sub_18F2674F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v6[5] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_18F267640;

  return sub_18F354850(v12, a1, a2, a5, a6);
}

uint64_t sub_18F267640()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F26773C()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (*(AssociatedConformanceWitness + 40))(v3, AssociatedConformanceWitness);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_18F267804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v15;
  v8[3] = a1;
  v8[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8[7] = swift_task_alloc();
  v13 = (a5 + *a5);
  v10 = swift_task_alloc();
  v8[8] = v10;
  *v10 = v8;
  v10[1] = sub_18F26794C;
  v11 = OUTLINED_FUNCTION_8_20();

  return v13(v11);
}

uint64_t sub_18F26794C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_18F267A8C()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v0[2] = v0[9];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    goto LABEL_5;
  }

  if (!v1)
  {
    __swift_storeEnumTagSinglePayload(v0[3], 1, 1, v0[5]);
LABEL_5:

    OUTLINED_FUNCTION_71();

    return v2();
  }

  v4 = v0[7];
  v5 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[10] = v6;
  type metadata accessor for IntentParameterContext();
  *v6 = v0;
  v6[1] = sub_18F267C24;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F267C24()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_18F1F03A8(v5);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F267D60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  v10 = a2[1];
  v12 = *v4;
  v11 = *(v4 + 8);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  v15 = *(a4 + 16);
  *v14 = v5;
  v14[1] = sub_18F0FC874;

  return sub_18F267804(a1, v9, v10, a3, v12, v11, v13, v15);
}

void *sub_18F267E58()
{
  OUTLINED_FUNCTION_0_35();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return &unk_18F54CEB8;
}

uint64_t sub_18F267F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v6[5] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_18F268060;

  return sub_18F354850(v12, a1, a2, a5, a6);
}

uint64_t sub_18F268060()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F26815C()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 24) = v1;
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_18F222D50;
  v4 = OUTLINED_FUNCTION_8_20();

  return v6(v4);
}

uint64_t sub_18F268254(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1E9574;

  return sub_18F26815C();
}

uint64_t sub_18F268314(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F268384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

uint64_t sub_18F2683CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F268420()
{
  OUTLINED_FUNCTION_9_28();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_18F223598;
  v5 = OUTLINED_FUNCTION_8_20();

  return sub_18F267F10(v5, v6, v7, v1, v2, v3);
}

uint64_t sub_18F268500()
{
  OUTLINED_FUNCTION_9_28();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_18F1B98B8;
  v5 = OUTLINED_FUNCTION_8_20();

  return sub_18F2674F0(v5, v6, v7, v1, v2, v3);
}

uint64_t AppContext.perform(_:options:reportingProgress:delegate:auditToken:)()
{
  OUTLINED_FUNCTION_69();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[2] = v7;
  v0[3] = v8;
  v9 = sub_18F520E6C();
  v0[10] = v9;
  v0[11] = *(v9 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = type metadata accessor for IntentContext();
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

AppIntents::IntentSystemContext::Source_optional sub_18F2686F0()
{
  v51 = v0;
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v46 = [v3 environment];
      v45 = [v4 systemContext];
      v44 = [v4 interactionMode];
      v42 = [v4 source];
      v43 = [v4 kind];
      v41 = [v4 priority];
      v7 = [v4 executionUUID];
      sub_18F520E4C();

      v39 = [v4 allowsPrepareBeforePerform];
      v40 = v2;
      sub_18F33AEF4(&v49);
      v8 = v49;
      swift_unknownObjectWeakInit();
      v9 = v6[10];
      *(v5 + v9) = 10;
      v10 = v6[11];
      *(v5 + v10) = 2;
      v11 = v6[12];
      *(v5 + v11) = 2;
      v12 = v6[16];
      type metadata accessor for IntentContext.Storage();
      swift_allocObject();
      *(v5 + v12) = sub_18F32B920();
      swift_unknownObjectWeakAssign();
      v5[1] = v46;
      v5[2] = v45;
      v5[3] = v44;
      *(v5 + v6[15]) = v8;
      result.value = IntentSystemContext.Source.init(rawValue:)(v42 - 1).value;
      *(v5 + v9) = v50;
      if (__OFSUB__(v43, 1))
      {
        __break(1u);
      }

      else
      {
        if (v43 == 2)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v43 == 1)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        *(v5 + v10) = v15;
        if (!__OFSUB__(v41, 1))
        {
          v17 = *(v0 + 104);
          v16 = *(v0 + 112);
          v18 = *(v0 + 88);
          v19 = *(v0 + 96);
          v20 = *(v0 + 80);
          v21 = *(v0 + 32);
          if (v41 == 2)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v41 == 1)
          {
            v22 = 0;
          }

          v47 = *(v0 + 64);
          v48 = *(v0 + 48);
          *(v5 + v11) = v22;
          *(v16 + v17[14]) = [objc_opt_self() progressWithTotalUnitCount_];
          *(v16 + 32) = v48;
          *(v16 + 48) = v47;
          (*(v18 + 32))(v16 + v17[9], v19, v20);
          *(v16 + v17[13]) = v39;
          v23 = (v16 + v17[17]);
          *v23 = &unk_18F5653C0;
          v23[1] = 0;
          v24 = (v16 + v17[18]);
          *v24 = &unk_18F5653A0;
          v24[1] = 0;
          v25 = (v16 + v17[19]);
          *v25 = &unk_18F565378;
          v25[1] = 0;
          v26 = (v16 + v17[20]);
          *v26 = &unk_18F565340;
          v26[1] = 0;
          v27 = (v16 + v17[21]);
          *v27 = &unk_18F565358;
          v27[1] = 0;
          v28 = (v16 + v17[22]);
          *v28 = &unk_18F565330;
          v28[1] = 0;
          v29 = (v16 + v17[23]);
          *v29 = &unk_18F565318;
          v29[1] = 0;
          v30 = (v16 + v17[24]);
          *v30 = &unk_18F5652F0;
          v30[1] = 0;
          v31 = swift_task_alloc();
          *(v0 + 120) = v31;
          v31[2] = v4;
          v31[3] = v40;
          v31[4] = v21;
          v32 = swift_task_alloc();
          *(v0 + 128) = v32;
          *v32 = v0;
          v32[1] = sub_18F268CBC;

          return sub_18F269358(&unk_18F54CF00, v31);
        }
      }

      __break(1u);
      return result;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v33 = sub_18F52165C();
  __swift_project_value_buffer(v33, qword_1ED707778);
  v34 = sub_18F52163C();
  v35 = sub_18F52221C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_18F0E9000, v34, v35, "Unable to perform malformed or null action", v36, 2u);
    MEMORY[0x193ADD350](v36, -1, -1);
  }

  sub_18F133EDC();
  swift_allocError();
  *v37 = 3;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 7;
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v38();
}

uint64_t sub_18F268CBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 136) = v1;

  v7 = *(v4 + 112);
  if (!v1)
  {
    *(v5 + 144) = a1;
  }

  sub_18F269EFC(v7, type metadata accessor for IntentContext);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F268E44()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F268ED4()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F268F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for PerformActionExecutorTask(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F268FE4, 0, 0);
}

uint64_t sub_18F268FE4()
{
  v1 = [*(v0 + 24) executionUUID];
  sub_18F520E4C();

  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = sub_18F52165C();
  v8 = __swift_project_value_buffer(v7, qword_1ED7077A8);
  (*(*(v7 - 8) + 16))(v2, v8, v7);
  v9 = v2 + v3[5];
  *v9 = "PerformAction";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  *(v2 + v3[7]) = v5;
  *(v2 + v3[8]) = v6;
  *(v2 + v3[9]) = v4;
  v10 = v5;
  v11 = v6;
  v12 = v4;
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_18F2691A0;
  v14 = *(v0 + 56);

  return (sub_18F1A5860)(v14);
}

uint64_t sub_18F2691A0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v5[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_1_48();
    sub_18F269EFC(v8, v9);
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = v5[7];
    v14 = v5[2];
    OUTLINED_FUNCTION_1_48();
    sub_18F269EFC(v13, v15);
    *v14 = v3;

    OUTLINED_FUNCTION_71();

    return v16();
  }
}

uint64_t sub_18F2692FC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F269358(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_18F520E6C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F269460, 0, 0);
}

uint64_t sub_18F269460()
{
  if (qword_1EACCF490 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  os_unfair_lock_lock(&dword_1EAD0ABF0);
  v6 = type metadata accessor for IntentContext();
  (*(v2 + 16))(v1, v5 + *(v6 + 36), v3);
  sub_18F269E30(v5, v4);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  sub_18F4213F0();
  os_unfair_lock_unlock(&dword_1EAD0ABF0);
  if (qword_1ED6FEEB8 != -1)
  {
    swift_once();
  }

  v7 = v0[6];
  sub_18F269E30(v0[5], v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);
  v8 = swift_task_alloc();
  v0[11] = v8;
  sub_18F16BCB4();
  *v8 = v0;
  v8[1] = sub_18F269640;

  return MEMORY[0x1EEE6DE98](v0 + 2);
}

uint64_t sub_18F269640()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_18F269E94(v3);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F26975C()
{
  OUTLINED_FUNCTION_21();
  sub_18F32AF24(v0[5]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18F2697EC()
{
  OUTLINED_FUNCTION_21();
  sub_18F32AF24(*(v0 + 40));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F269948(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v12;
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[7] = _Block_copy(v11);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = v12;
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_18F269A74;

  return AppContext.perform(_:options:reportingProgress:delegate:auditToken:)();
}

uint64_t sub_18F269A74(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v10 = *(v5 + 56);
  if (v3)
  {
    v11 = sub_18F520A7C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    v10[2](*(v5 + 56), a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_18F269C8C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_18F0FC874;

  return sub_18F268F4C(v3, v4, v5, v6);
}

void sub_18F269D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  JUMPOUT(0x18F269948);
}

uint64_t sub_18F269E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F269E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F269EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18F269F5C()
{
  sub_18F5219CC();
}

uint64_t sub_18F269FC0()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A074()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A100()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A1C0()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A22C()
{
  OUTLINED_FUNCTION_10_27();
  sub_18F5219CC();
}

uint64_t sub_18F26A2E4()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A368()
{
  OUTLINED_FUNCTION_10_27();
  sub_18F5219CC();
}

uint64_t sub_18F26A47C()
{
  OUTLINED_FUNCTION_10_27();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_7_28();
      break;
    default:
      break;
  }

  sub_18F5219CC();
}

uint64_t sub_18F26A520()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A5CC()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A694()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A6F4()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A778(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    if (a3)
    {
      goto LABEL_9;
    }

    v3 = OUTLINED_FUNCTION_4_40(a1, 0x72656C6C616D73);
    v4 = 0xE700000000000000;
  }

  else
  {
    if (a3)
    {
      goto LABEL_9;
    }

    v3 = OUTLINED_FUNCTION_4_40(a1, 0x72656772616CLL);
    v4 = 0xE600000000000000;
  }

  MEMORY[0x193ADB000](v3, v4);
  MEMORY[0x193ADB000](45, 0xE100000000000000);
  sub_18F52201C();
LABEL_9:
  sub_18F5219CC();
}

uint64_t sub_18F26A840()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A8C0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_7_28();
  }

  sub_18F5219CC();
}

uint64_t sub_18F26A930()
{
  sub_18F5219CC();
}

uint64_t sub_18F26A974()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AB00()
{
  ZoomBehavior.rawValue.getter();
  sub_18F5219CC();
}

uint64_t sub_18F26AB64()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AC1C()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AC6C()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AD08()
{
  OUTLINED_FUNCTION_10_27();
  sub_18F5219CC();
}

uint64_t sub_18F26ADBC()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AE9C()
{
  sub_18F5219CC();
}

uint64_t sub_18F26AF2C()
{
  sub_18F5219CC();
}

uint64_t sub_18F26B00C()
{
  sub_18F5219CC();
}

uint64_t AppIntent._requestChoice(between:dialog:snippetView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v8 = type metadata accessor for _IntentChoiceOption();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v9 = type metadata accessor for IntentChoiceOption();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F26B1A0()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 264);
    v21 = *(v0 + 256);
    v22 = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    sub_18F3AAE8C(0, v2, 0);
    v3 = v22;
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = *(v0 + 288);
      v10 = *(v0 + 248);
      sub_18F26BE3C(v7, v10);
      sub_18F520B3C();
      OUTLINED_FUNCTION_0_55();
      (*(v11 + 16))(v9, v10);
      if (*(v10 + *(v6 + 20)) >= 3u)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v10 + *(v6 + 20));
      }

      v13 = *(v0 + 288);
      sub_18F26BF78(*(v0 + 248), type metadata accessor for _IntentChoiceOption);
      *(v13 + *(v21 + 20)) = v12;
      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_18F3AAE8C(v14 > 1, v15 + 1, 1);
      }

      v16 = *(v0 + 288);
      *(v22 + 16) = v15 + 1;
      sub_18F26BFD8(v16, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for IntentChoiceOption);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  *(v0 + 296) = v3;
  sub_18F26BEA0(*(v0 + 184), v0 + 64);
  if (*(v0 + 88))
  {
    v17 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v17;
    *(v0 + 41) = *(v0 + 89);
    sub_18F26C030(v0 + 16, v0 + 112);
    v18 = swift_task_alloc();
    *(v0 + 304) = v18;
    *v18 = v0;
    v18[1] = sub_18F26B480;

    return AppIntent.requestChoice(between:dialog:snippetView:)();
  }

  else
  {
    sub_18F26BF10(v0 + 64);
    v20 = swift_task_alloc();
    *(v0 + 320) = v20;
    *v20 = v0;
    v20[1] = sub_18F26B6A0;

    return AppIntent.requestChoice(between:dialog:)();
  }
}

uint64_t sub_18F26B480()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 312) = v0;

  sub_18F26BF10(v2 + 112);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F26B5B4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 216);
  sub_18F18F3F8(v0 + 16);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_50(*(v0 + 240), *(v1 + 20));
  OUTLINED_FUNCTION_13_26();

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F26B6A0()
{
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F26B7C4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 216);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_50(*(v0 + 232), *(v1 + 20));
  OUTLINED_FUNCTION_13_26();

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F26B8A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_12_32();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F26B938()
{
  OUTLINED_FUNCTION_31();
  sub_18F18F3F8(v0 + 16);
  OUTLINED_FUNCTION_12_32();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t _IntentChoiceOption.title.getter()
{
  sub_18F520B3C();
  v0 = OUTLINED_FUNCTION_56();

  return v1(v0);
}

uint64_t _IntentChoiceOption.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for _IntentChoiceOption();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t _IntentChoiceOption.init(title:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for _IntentChoiceOption();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static _IntentChoiceOption.cancel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_4();
  v3 = sub_18F520ADC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  v8 = sub_18F52189C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_4();
  sub_18F52181C();
  *v7 = type metadata accessor for _IntentChoiceOption.__();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968E00], v3);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  sub_18F520B4C();
  result = type metadata accessor for _IntentChoiceOption();
  *(a1 + *(result + 20)) = 1;
  return result;
}

unint64_t sub_18F26BCA0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_18F26BCB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18F26BCA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F26BCDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F220998(*v1);
  *a1 = result;
  return result;
}

uint64_t _IntentChoiceOption.Style.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

BOOL static _IntentChoiceOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x193ADA0E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for _IntentChoiceOption();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t type metadata accessor for _IntentChoiceOption()
{
  result = qword_1EACD39A8;
  if (!qword_1EACD39A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F26BE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _IntentChoiceOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F26BEA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F26BF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F26BF78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18F26BFD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_55();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

unint64_t sub_18F26C0B4()
{
  result = qword_1EACD39A0;
  if (!qword_1EACD39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD39A0);
  }

  return result;
}

uint64_t sub_18F26C130()
{
  result = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_18F26C1B4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F26C294()
{
  result = qword_1EACD39B8[0];
  if (!qword_1EACD39B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD39B8);
  }

  return result;
}

uint64_t sub_18F26C2FC(uint64_t a1)
{
  swift_beginAccess();
  sub_18F26C744(a1, v1 + 16);
  return swift_endAccess();
}

double _DraftContext.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

double _DraftContext.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t _DraftContext.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + 16;
  v4 = *(*v1 + 80);
  v5 = sub_18F52254C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  swift_beginAccess();
  sub_18F26C568(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3398);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    return (*(*(v4 - 8) + 32))(a1, v8, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18F26C568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F26C5D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return _DraftContext.wrappedValue.setter(v2);
}

uint64_t _DraftContext.wrappedValue.setter(uint64_t a1)
{
  v3 = v1 + 16;
  v4 = *(*v1 + 80);
  v7[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, a1, v4);
  swift_beginAccess();
  sub_18F26C744(v7, v3);
  return swift_endAccess();
}

uint64_t sub_18F26C744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3398);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*_DraftContext.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*v1 + 80);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  _DraftContext.wrappedValue.getter(v7);
  return sub_18F26C894;
}

void sub_18F26C894(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    _DraftContext.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    _DraftContext.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_18F26C968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _DraftContext.__deallocating_deinit()
{
  sub_18F26C968(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_18F26CA94(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

uint64_t sub_18F26CAC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  return MEMORY[0x193ADC4F0](a2);
}

uint64_t sub_18F26CB08(uint64_t a1, char a2)
{
  sub_18F522EFC();
  if (a2)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  MEMORY[0x193ADC4F0](a1);
  return sub_18F522F4C();
}

uint64_t sub_18F26CB84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18F522EFC();
  sub_18F26CAC8(v4, v1, v2);
  return sub_18F522F4C();
}

uint64_t sub_18F26CC10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F15EEBC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18F26CC40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F1846DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18F26CC70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F15EF2C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18F26CCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F15EEA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F26CCD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F15EE98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F26CD08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F15EEF8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18F26CD38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F15EF14();
  *a1 = result;
  return result;
}

uint64_t static _IntentSideEffect.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (*(a2 + 8))
      {
        return v3 != 0;
      }
    }

    else if (*(a2 + 8))
    {
      return v3 == 0;
    }
  }

  else
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    if (v5 != 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _IntentSideEffect.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  return MEMORY[0x193ADC4F0](v1);
}

uint64_t _IntentSideEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18F522EFC();
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F26CE78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18F522EFC();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

AppIntents::_IntentSideEffect::Kind_optional __swiftcall _IntentSideEffect.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18F26CF28@<X0>(uint64_t *a1@<X8>)
{
  result = _IntentSideEffect.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_IntentSideEffect.init(kind:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = -1;
  if (v2 == 1)
  {
    v3 = 1;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (*result)
  {
    v2 = v3;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_18F26CFD0()
{
  result = qword_1EACD3A40;
  if (!qword_1EACD3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A40);
  }

  return result;
}

unint64_t sub_18F26D028()
{
  result = qword_1EACD3A48;
  if (!qword_1EACD3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _IntentSideEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _IntentSideEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for _IntentSideEffect.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F26D1AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_18F26D1DC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F26D1F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_18F26D228()
{
  result = qword_1EACD3A50;
  if (!qword_1EACD3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A50);
  }

  return result;
}

unint64_t sub_18F26D288()
{
  result = qword_1EACD3A58;
  if (!qword_1EACD3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A58);
  }

  return result;
}

unint64_t sub_18F26D2E0()
{
  result = qword_1EACD3A60;
  if (!qword_1EACD3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A60);
  }

  return result;
}

unint64_t sub_18F26D338()
{
  result = qword_1EACD3A68;
  if (!qword_1EACD3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A68);
  }

  return result;
}

unint64_t sub_18F26D390()
{
  result = qword_1EACD3A70;
  if (!qword_1EACD3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A70);
  }

  return result;
}

uint64_t AppContext.performQuery(_:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[110] = a6;
  v6[109] = a5;
  v6[108] = a4;
  v6[107] = a3;
  v6[106] = a2;
  v6[105] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F26D410()
{
  v79 = v1;
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v3 = sub_18F52165C();
  __swift_project_value_buffer(v3, qword_1ED707778);
  v4 = sub_18F52163C();
  v5 = sub_18F52220C();
  if (OUTLINED_FUNCTION_27(v5))
  {
    v6 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_117_1(v6);
    _os_log_impl(&dword_18F0E9000, v4, v0, "Actually performing query", v2, 2u);
    OUTLINED_FUNCTION_32();
  }

  v7 = *(v1 + 880);

  if (v7)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 integerValue];
    }

    else
    {
      v9 = -1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = -1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_24_24(v17, v18);
    swift_willThrow();
    goto LABEL_55;
  }

  v11 = v10;
  sub_18F26E918(v1 + 200);
  if (!*(v1 + 224))
  {
    sub_18F0EF148(v1 + 200, &qword_1EACD3A78);
    v19 = sub_18F52163C();
    v20 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v20))
    {
      v21 = OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_13_24(v21);
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v22, v23, "Could not retrieve query instance");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_24_24(v24, v25);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_55:
    OUTLINED_FUNCTION_30_16();
    OUTLINED_FUNCTION_94_3();

    __asm { BRAA            X1, X16 }
  }

  sub_18F0FD0B4((v1 + 200), v1 + 160);
  switch([v11 requestType])
  {
    case 0uLL:
      v12 = sub_18F1705DC(v11);
      *(v1 + 936) = v12;
      if (v12)
      {
        v13 = v12;
        LOBYTE(v78[0]) = 0;
        v14 = *(v1 + 864);
        *(v1 + 112) = *(v1 + 848);
        *(v1 + 128) = v14;
        *(v1 + 144) = 0;
        *(v1 + 152) = v9;
        v15 = swift_task_alloc();
        *(v1 + 944) = v15;
        *(v15 + 16) = v1 + 160;
        *(v15 + 24) = v13;
        OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
        v16 = swift_task_alloc();
        *(v1 + 952) = v16;
        *v16 = v1;
        v16[1] = sub_18F26E1CC;
        goto LABEL_30;
      }

      v43 = sub_18F52163C();
      v45 = sub_18F52221C();
      if (OUTLINED_FUNCTION_74_2(v45))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 1uLL:
      v33 = sub_18F279E60(v11, &selRef_stringToMatch);
      *(v1 + 968) = v34;
      if (!v34)
      {
        v43 = sub_18F52163C();
        v46 = sub_18F52221C();
        if (OUTLINED_FUNCTION_74_2(v46))
        {
LABEL_42:
          v47 = OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_117_1(v47);
          OUTLINED_FUNCTION_112_0();
          _os_log_impl(v48, v49, v50, v51, v9, 2u);
          OUTLINED_FUNCTION_32();
        }

LABEL_43:

LABEL_44:
        sub_18F17043C();
        OUTLINED_FUNCTION_34_14();
        v52 = swift_allocError();
        OUTLINED_FUNCTION_24_24(v52, v53);
LABEL_53:
        swift_willThrow();
LABEL_54:
        sub_18F2D94A8(v52);
        OUTLINED_FUNCTION_11_16();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 160);
        goto LABEL_55;
      }

      v35 = v33;
      v36 = v34;
      sub_18F0FD724(v1 + 160, v1 + 400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36F0);
      if (swift_dynamicCast())
      {
        v75 = *(v1 + 864);
        v77 = *(v1 + 848);
        sub_18F0FD0B4((v1 + 440), v1 + 360);
        LOBYTE(v78[0]) = 0;
        *(v1 + 64) = v77;
        *(v1 + 80) = v75;
        *(v1 + 96) = 0;
        *(v1 + 104) = v9;
        v37 = swift_task_alloc();
        *(v1 + 976) = v37;
        v37[2] = v1 + 360;
        v37[3] = v35;
        v37[4] = v36;
        OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
        v38 = swift_task_alloc();
        *(v1 + 984) = v38;
        *v38 = v1;
        v38[1] = sub_18F26E344;
LABEL_30:
        OUTLINED_FUNCTION_94_3();

        __asm { BR              X2 }
      }

      *(v1 + 472) = 0;
      *(v1 + 440) = 0u;
      *(v1 + 456) = 0u;
      sub_18F0EF148(v1 + 440, &qword_1EACD36F8);
      v63 = sub_18F52163C();
      v64 = sub_18F52221C();
      if (OUTLINED_FUNCTION_74_2(v64))
      {
        v65 = OUTLINED_FUNCTION_126();
        v66 = swift_slowAlloc();
        v78[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_18F11897C(0xD000000000000030, 0x800000018F527FC0, v78);
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v67, v68, v69, v70, v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      sub_18F17043C();
      OUTLINED_FUNCTION_34_14();
      v52 = swift_allocError();
      *v71 = 0xD000000000000030;
      *(v71 + 8) = 0x800000018F527FC0;
      goto LABEL_52;
    case 2uLL:
      v26 = [v11 propertyQuery];
      *(v1 + 1000) = v26;
      if (v26)
      {
        v27 = v26;
        sub_18F0FD724(v1 + 160, v1 + 280);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36E0);
        if (swift_dynamicCast())
        {
          v74 = *(v1 + 864);
          v76 = *(v1 + 848);
          sub_18F0FD0B4((v1 + 320), v1 + 240);
          LOBYTE(v78[0]) = 0;
          OUTLINED_FUNCTION_90_4(v76, v74);
          v28 = swift_task_alloc();
          *(v1 + 1008) = v28;
          v28[2] = v1 + 240;
          v28[3] = v11;
          v28[4] = v27;
          OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
          v29 = swift_task_alloc();
          *(v1 + 1016) = v29;
          *v29 = v1;
          v29[1] = sub_18F26E4C4;
          goto LABEL_30;
        }

        *(v1 + 352) = 0;
        *(v1 + 320) = 0u;
        *(v1 + 336) = 0u;
        sub_18F0EF148(v1 + 320, &qword_1EACD36E8);
        v54 = sub_18F52163C();
        v55 = sub_18F52221C();
        if (OUTLINED_FUNCTION_74_2(v55))
        {
          v56 = OUTLINED_FUNCTION_126();
          v57 = swift_slowAlloc();
          v78[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_18F11897C(0xD000000000000032, 0x800000018F527F80, v78);
          OUTLINED_FUNCTION_112_0();
          _os_log_impl(v58, v59, v60, v61, v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_32();
        }

        sub_18F17043C();
        OUTLINED_FUNCTION_34_14();
        v52 = swift_allocError();
        *v62 = 0xD000000000000032;
        v62[1] = 0x800000018F527F80;
        OUTLINED_FUNCTION_101_4(v52, v62);

        goto LABEL_54;
      }

      v43 = sub_18F52163C();
      v44 = sub_18F52221C();
      if (OUTLINED_FUNCTION_74_2(v44))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 3uLL:
      sub_18F0FD724(v1 + 160, v1 + 520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0238);
      if (OUTLINED_FUNCTION_128_1())
      {
        sub_18F0FD0B4((v1 + 560), v1 + 480);
        OUTLINED_FUNCTION_49((v1 + 480));
        *(v1 + 888) = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
        v30 = swift_task_alloc();
        *(v1 + 896) = v30;
        *v30 = v1;
        OUTLINED_FUNCTION_28_27(v30);
        OUTLINED_FUNCTION_94_3();

        return sub_18F26F3D8();
      }

      else
      {
        *(v1 + 592) = 0;
        *(v1 + 560) = 0u;
        *(v1 + 576) = 0u;
        sub_18F0EF148(v1 + 560, &qword_1EACD0240);
        sub_18F0FD724(v1 + 160, v1 + 640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0248);
        if (!OUTLINED_FUNCTION_128_1())
        {
          *(v1 + 712) = 0;
          *(v1 + 680) = 0u;
          *(v1 + 696) = 0u;
          sub_18F0EF148(v1 + 680, &qword_1EACD0250);
          sub_18F17043C();
          OUTLINED_FUNCTION_34_14();
          v52 = swift_allocError();
          *v71 = 0xD000000000000030;
          *(v71 + 8) = 0x800000018F525CB0;
LABEL_52:
          *(v71 + 16) = 0;
          goto LABEL_53;
        }

        sub_18F0FD0B4((v1 + 680), v1 + 600);
        OUTLINED_FUNCTION_49((v1 + 600));
        *(v1 + 912) = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
        v41 = swift_task_alloc();
        *(v1 + 920) = v41;
        *v41 = v1;
        OUTLINED_FUNCTION_28_27(v41);
        OUTLINED_FUNCTION_94_3();

        return sub_18F26EDDC();
      }

    default:
      goto LABEL_44;
  }
}

uint64_t sub_18F26DEE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v3 + 720) = v1;
  *(v3 + 728) = v5;
  *(v3 + 736) = v0;
  OUTLINED_FUNCTION_99_2();
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v3 + 904) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26DFEC()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 480);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F26E058()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v3 + 744) = v1;
  *(v3 + 752) = v5;
  *(v3 + 760) = v0;
  OUTLINED_FUNCTION_99_2();
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v3 + 928) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26E160()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 600);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F26E1CC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v3[96] = v1;
  v3[97] = v5;
  v3[98] = v0;
  OUTLINED_FUNCTION_99_2();
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v3[120] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26E2E0()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F26E344()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v3[99] = v1;
  v3[100] = v5;
  v3[101] = v0;
  OUTLINED_FUNCTION_99_2();
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v3[124] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26E458()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 360);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F26E4C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v3[102] = v1;
  v3[103] = v5;
  v3[104] = v0;
  OUTLINED_FUNCTION_99_2();
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v3[128] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26E5CC()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 1000);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  v2 = OUTLINED_FUNCTION_12_7();

  return v3(v2);
}

uint64_t sub_18F26E640()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 600);
  v1 = *(v0 + 928);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_132_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F26E6CC()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 480);
  v1 = *(v0 + 904);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_132_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F26E758()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 960);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_132_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F26E7E8()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 360);
  v1 = *(v0 + 992);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_132_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F26E880()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);
  v1 = *(v0 + 1024);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_132_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_18F26E918(uint64_t a1@<X8>)
{
  v3 = sub_18F279E60(v1, &selRef_queryMangledTypeName);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    v15 = sub_18F34F5DC(v5, v6);
    v17 = v16;

    v18 = *(v17 + 40);
    *(a1 + 24) = v15;
    *(a1 + 32) = v17;
    __swift_allocate_boxed_opaque_existential_1(a1);
    v18(v15, v17);
  }

  else
  {
    v7 = sub_18F170578(v1);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      if (qword_1ED6FF6D8 != -1)
      {
        swift_once();
      }

      v23 = sub_18F2794A0(v9, v10, 0, 0);
      v25 = v24;

      v26 = *(v25 + 56);
      *(a1 + 24) = swift_getAssociatedTypeWitness();
      *(a1 + 32) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(a1);
      v26(v23, v25);
    }

    else
    {
      v11 = sub_18F279E60(v1, &selRef_queryIdentifier);
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        if (qword_1ED6FF6D8 != -1)
        {
          swift_once();
        }

        v27 = sub_18F34F5DC(v13, v14);
        v29 = v28;

        v30 = *(v29 + 40);
        *(a1 + 24) = v27;
        *(a1 + 32) = v29;
        __swift_allocate_boxed_opaque_existential_1(a1);
        v30(v27, v29);
      }

      else
      {
        v19 = sub_18F279E60(v1, &selRef_entityIdentifier);
        if (v20)
        {
          v21 = v19;
          v22 = v20;
          if (qword_1ED6FF6D8 != -1)
          {
            swift_once();
          }

          v39 = sub_18F2794A0(v21, v22, 0, 0);
          v41 = v40;

          v42 = *(v41 + 56);
          *(a1 + 24) = swift_getAssociatedTypeWitness();
          *(a1 + 32) = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_1(a1);
          v43 = v39;
          v44 = v41;
        }

        else
        {
          sub_18F170578(v1);
          if (!v31 || (v32 = sub_18F5218AC(), , v33 = NSClassFromString(v32), v32, !v33) || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v35 = dynamic_cast_existential_1_conditional(ObjCClassMetadata)) == 0))
          {
            *(a1 + 32) = 0;
            *a1 = 0u;
            *(a1 + 16) = 0u;
            return;
          }

          v37 = v35;
          v38 = v36;
          v42 = *(v36 + 56);
          *(a1 + 24) = swift_getAssociatedTypeWitness();
          *(a1 + 32) = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_1(a1);
          v43 = v37;
          v44 = v38;
        }

        v42(v43, v44);
      }
    }
  }
}

uint64_t sub_18F26EDDC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_115_0(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *(v1 + 56) = *(*(v0 + 8) + 8);
  *v5 = v1;
  OUTLINED_FUNCTION_12_3(v5);

  return sub_18F139E28();
}

uint64_t sub_18F26EE84()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_18F26EF9C()
{
  OUTLINED_FUNCTION_21();
  v16 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_18F18C388(AssociatedTypeWitness, AssociatedTypeWitness);
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_8_8();
  v2 = sub_18F521CDC();
  OUTLINED_FUNCTION_77_2(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_86_4(v10);

  return v13(v12);
}

uint64_t sub_18F26F100()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_18F0F21A8(0, &qword_1ED6FE1D8);
    v11 = OUTLINED_FUNCTION_45();
    v3[12] = sub_18F129FD4(v11);
    v12 = swift_task_alloc();
    v3[13] = v12;
    swift_getAssociatedConformanceWitness();
    *v12 = v5;
    OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_36();

    return sub_18F278B2C();
  }
}

uint64_t sub_18F26F2B0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F26F3D8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_115_0(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *(v1 + 56) = *(*(v0 + 8) + 8);
  *v5 = v1;
  OUTLINED_FUNCTION_12_3(v5);

  return sub_18F139E28();
}

uint64_t sub_18F26F480()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_18F26F598()
{
  OUTLINED_FUNCTION_21();
  v16 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_18F18C388(AssociatedTypeWitness, AssociatedTypeWitness);
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_8_8();
  v2 = sub_18F521CDC();
  OUTLINED_FUNCTION_77_2(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_86_4(v10);

  return v13(v12);
}

uint64_t sub_18F26F6FC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_18F0F21A8(0, &qword_1ED6FE1D8);
    v11 = OUTLINED_FUNCTION_45();
    v3[12] = sub_18F129FD4(v11);
    v12 = swift_task_alloc();
    v3[13] = v12;
    swift_getAssociatedConformanceWitness();
    *v12 = v5;
    OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_36();

    return sub_18F278B2C();
  }
}

uint64_t sub_18F26F8AC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F26F9D4()
{
  OUTLINED_FUNCTION_69();
  sub_18F522DCC();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F26FA30()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F26FA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F26FAB0, 0, 0);
}

uint64_t sub_18F26FAB0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  OUTLINED_FUNCTION_49(v1);
  v4 = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_18F26FB84;
  v6 = v0[4];

  return sub_18F26FCF4(v6, v4, v3, v2);
}

uint64_t sub_18F26FB84()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {

    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F26FC98()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F26FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F26FD1C, 0, 0);
}

uint64_t sub_18F26FD1C()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0258);
  OUTLINED_FUNCTION_24_23();
  v0[8] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_119_0();
  v0[9] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_18F1B8B98(&qword_1EACD0260, &qword_1EACD0258);
  v0[10] = sub_18F521B3C();

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_18F26FEC4;
  OUTLINED_FUNCTION_29_1();

  return sub_18F1922E0();
}

uint64_t sub_18F26FEC4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  v5[12] = v0;

  if (!v0)
  {

    v5[13] = v3;
    v5[14] = sub_18F0F21A8(0, &qword_1ED6FE1D8);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F26FFF0()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  swift_checkMetadataState();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  *(v0 + 120) = Array<A>.items.getter();

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_18F270130;
  OUTLINED_FUNCTION_36();

  return sub_18F278B2C();
}

uint64_t sub_18F270130()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F270258()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2702B4()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F270310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F27033C()
{
  OUTLINED_FUNCTION_69();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 136) = v3;
  *v3 = v4;
  v3[1] = sub_18F270428;
  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270428()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F270540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F27056C()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  type metadata accessor for DynamicOptionsResult(0);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270640(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  v4 = *(v2 + 16);
  *(v3 + 96) = *v2;
  *(v3 + 112) = v4;
  *(v3 + 65) = *(v2 + 32);
  *(v3 + 128) = *(v2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_18F270678, 0, 0);
}

uint64_t sub_18F270678()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  sub_18F0F21A8(0, &qword_1ED6FE1D8);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270758()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_18F270870(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F270898()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AA0);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270974()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_18F270AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F270AD8()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BB0);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F270BDC()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  sub_18F0F21A8(0, &unk_1ED6FE390);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

uint64_t sub_18F270CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F270CE0, 0, 0);
}

uint64_t sub_18F270CE0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[3];
  v2 = v1[4];
  OUTLINED_FUNCTION_49(v1);
  v0[6] = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_18F270DB0;
  OUTLINED_FUNCTION_109_0();

  return sub_18F270F20(v4, v5, v6, v7, v2);
}

uint64_t sub_18F270DB0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {

    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F270EC4()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F270F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a4;
  v10 = *(a5 + 8);
  v5[4] = v10;
  v5[5] = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v5[8] = v12;
  v13 = swift_task_alloc();
  v5[9] = v13;
  *v13 = v5;
  v13[1] = sub_18F27106C;

  return sub_18F354850(v12, a1, a2, a4, a5);
}

uint64_t sub_18F27106C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    *(v3 + 88) = sub_18F0F21A8(0, &qword_1ED6FE1D8);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F271180()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_125_1();
  v1 = OUTLINED_FUNCTION_32_21();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_16_25(v3);
  v5(v4);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_114_1(v6);
  OUTLINED_FUNCTION_24_23();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_56_4();
  *v0 = v7;
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_36();

  return sub_18F278B2C();
}

uint64_t sub_18F271270()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_129_0();

    v10 = OUTLINED_FUNCTION_14_1();

    return v11(v10);
  }
}

uint64_t sub_18F27139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F2713C0, 0, 0);
}

uint64_t sub_18F2713C0()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_49(*(v0 + 24));
  *(v0 + 48) = sub_18F27A6B0(v1);
  v2 = [v1 maximumResultCount];
  v3 = v2;
  if (v2)
  {
    [v2 integerValue];
  }

  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_18F2714F4;
  OUTLINED_FUNCTION_36();

  return sub_18F271674(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18F2714F4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {

    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F271610()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F271674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 208) = a4;
  *(v7 + 112) = a3;
  *(v7 + 120) = a5;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F2716A0, 0, 0);
}

uint64_t sub_18F2716A0()
{
  v1 = v0[16];
  v2 = v0[17];
  if (v0[12])
  {
    v3 = v0[12];
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v0[10] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AB8);
  v0[18] = swift_getAssociatedTypeWitness();
  v0[19] = swift_getAssociatedConformanceWitness();
  Sort = type metadata accessor for EntityQuerySort();
  v7 = sub_18F1B8B98(&qword_1EACD3AC0, &qword_1EACD3AB8);
  v0[20] = sub_18F10C138(sub_18F27A690, v4, v5, Sort, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_18F2718A4;

  return sub_18F2ECA08();
}

uint64_t sub_18F2718A4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v7 + 176) = v6;

  OUTLINED_FUNCTION_141();

  if (v0)
  {
    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F2719EC()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 208))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    *(v0 + 88) = *(v0 + 176);
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52212C();
    *(v0 + 48) = *(v0 + 16);
    *(v0 + 64) = *(v0 + 32);
    sub_18F52264C();
    swift_getWitnessTable();
    v1 = sub_18F521DEC();
  }

  *(v0 + 184) = v1;
  sub_18F0F21A8(0, &qword_1ED6FE1D8);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_18F271B58;

  return sub_18F278B2C();
}

uint64_t sub_18F271B58()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F271C80()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F271D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a1;
  v8[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = a8;
  v17 = swift_task_alloc();
  v8[6] = v17;
  *v17 = v8;
  v17[1] = sub_18F271EA0;

  return AppContext.performQuery(_:auditToken:connectionIdentifier:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18F271EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v14 = *(v13 + 32);
  v15 = *v12;
  OUTLINED_FUNCTION_39();
  *v16 = v15;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_110();
  v18 = *(v17 + 40);
  if (v10)
  {
    sub_18F520A7C();
    OUTLINED_FUNCTION_130_0();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_118_1();
    v19();

    _Block_release(v18);
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_97_2();
    v20();
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_36();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t AppContext.performSuggestedResults(entityType:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F27204C()
{
  OUTLINED_FUNCTION_24_4();
  v1 = v0[5].n128_u64[1];
  if (v1 && (v0[5].n128_u64[0] = v1, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v2 = v0[4].n128_u64[0];
    v3 = v0[4].n128_u64[1];
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v14 = sub_18F2794A0(v2, v3, 0, 0);
    v16 = v15;
    v17 = v0[8].n128_u64[0];

    if (v17)
    {
      v17 = v0[8].n128_u64[0];
      swift_unknownObjectRetain();
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        [v18 integerValue];
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_90_4(v0[6], v0[7]);
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_80_3(v19);
    *(v20 + 16) = v14;
    *(v20 + 24) = v16;
    OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
    v23 = v21;
    v22 = swift_task_alloc();
    v0[9].n128_u64[0] = v22;
    *v22 = v0;
    v22[1] = sub_18F272318;

    return v23(&unk_18F54D660, v17);
  }

  else
  {
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v4 = sub_18F52165C();
    __swift_project_value_buffer(v4, qword_1ED707778);
    v5 = sub_18F52163C();
    v6 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v6))
    {
      v7 = OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_13_24(v7);
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v8, v9, "entityType must be a String");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_24_24(v10, v11);
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v12();
  }
}

uint64_t sub_18F272318()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F272440()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 152);

  sub_18F2D94A8(v1);
  OUTLINED_FUNCTION_124_1();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F2724BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F2724E0, 0, 0);
}

uint64_t sub_18F2724E0()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_83_4(v1);
  v0[6] = v2;
  v3 = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_78_3(v3);
  v5(v4);
  v0[8] = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v6 = swift_task_alloc();
  v0[9] = v6;
  OUTLINED_FUNCTION_122_1();
  *v6 = v0;
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_36();

  return sub_18F272868(v7, v8, v9);
}

uint64_t sub_18F272604()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 64);
  if (v0)
  {

    v8 = OUTLINED_FUNCTION_61_5();
    v9(v8);
  }

  else
  {
    *(v5 + 88) = v3;
    v10 = OUTLINED_FUNCTION_61_5();
    v11(v10);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F2727A4()
{
  OUTLINED_FUNCTION_69();
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F27280C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F272868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v3[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v3;
  v5[1] = sub_18F272998;

  return sub_18F13FB00();
}

uint64_t sub_18F272998()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    *(v3 + 88) = sub_18F0F21A8(0, &qword_1ED6FE1D8);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F272AAC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_125_1();
  v1 = OUTLINED_FUNCTION_32_21();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_16_25(v3);
  v5(v4);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_114_1(v6);
  OUTLINED_FUNCTION_24_23();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_56_4();
  *v0 = v7;
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_36();

  return sub_18F278B2C();
}

uint64_t sub_18F272B9C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_129_0();

    v10 = OUTLINED_FUNCTION_14_1();

    return v11(v10);
  }
}

uint64_t sub_18F272CC8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F272D24()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F272E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a1;
  v8[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = a8;
  v17 = swift_task_alloc();
  v8[6] = v17;
  *v17 = v8;
  v17[1] = sub_18F271EA0;

  return AppContext.performSuggestedResults(entityType:auditToken:connectionIdentifier:)(a1, a2, a3, a4, a5, a6);
}

uint64_t AppContext.performSuggestedEntities(entityMangledTypeName:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F272F6C()
{
  OUTLINED_FUNCTION_29();
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1 = OUTLINED_FUNCTION_56();
  v3 = sub_18F2794A0(v1, v2, 0, 0);
  v5 = v4;
  v6 = v0[7].n128_u64[0];

  if (v6)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 integerValue];
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_90_4(v0[5], v0[6]);
  v8 = swift_task_alloc();
  v0[7].n128_u64[1] = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v5;
  OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8].n128_u64[0] = v10;
  *v10 = v0;
  v10[1] = sub_18F2731E0;

  return v12(&unk_18F54D678, v8);
}

uint64_t sub_18F2731E0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_15_23();

    return v11(v10);
  }
}

uint64_t sub_18F273308()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 136);

  sub_18F2D94A8(v1);
  OUTLINED_FUNCTION_124_1();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F273384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F2733A8, 0, 0);
}

uint64_t sub_18F2733A8()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_83_4(v1);
  v0[6] = v2;
  v3 = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_78_3(v3);
  v5(v4);
  v0[8] = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v6 = swift_task_alloc();
  v0[9] = v6;
  OUTLINED_FUNCTION_122_1();
  *v6 = v0;
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_36();

  return sub_18F272868(v7, v8, v9);
}

uint64_t sub_18F2734CC()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 64);
  if (v0)
  {

    v8 = OUTLINED_FUNCTION_61_5();
    v9(v8);
  }

  else
  {
    *(v5 + 88) = v3;
    v10 = OUTLINED_FUNCTION_61_5();
    v11(v10);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F27368C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  v15 = sub_18F5218DC();
  v17 = v16;
  v8[5] = v16;
  swift_unknownObjectRetain();
  v18 = a8;
  v19 = swift_task_alloc();
  v8[6] = v19;
  *v19 = v8;
  v19[1] = sub_18F27A73C;

  return AppContext.performSuggestedEntities(entityMangledTypeName:auditToken:connectionIdentifier:)(v15, v17, a2, a3, a4, a5, a6);
}

uint64_t AppContext.performAllEntities(entityMangledTypeName:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F2737C4()
{
  OUTLINED_FUNCTION_29();
  v1 = sub_18F5227BC();
  if (v1 && (v2 = dynamic_cast_existential_1_conditional(v1)) != 0)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v3 + 56);
    *(v0 + 88) = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_56();
    *(v0 + 96) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    v6(v4, v5);
    sub_18F0FD724(v0 + 64, v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A88);
    if (OUTLINED_FUNCTION_128_1())
    {
      v7 = *(v0 + 272);
      sub_18F0FD0B4((v0 + 184), v0 + 104);
      if (v7)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v8 integerValue];
        }

        else
        {
          v9 = -1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v9 = -1;
      }

      v22 = *(v0 + 256);
      *(v0 + 16) = *(v0 + 240);
      *(v0 + 32) = v22;
      *(v0 + 48) = 0;
      *(v0 + 56) = v9;
      v23 = swift_task_alloc();
      *(v0 + 280) = v23;
      *(v23 + 16) = v0 + 104;
      OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
      v26 = v24;
      v25 = swift_task_alloc();
      *(v0 + 288) = v25;
      *v25 = v0;
      v25[1] = sub_18F273B18;

      return v26(&unk_18F54D6A0, v23);
    }

    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    sub_18F0EF148(v0 + 184, &qword_1EACD3A90);
    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_24_24(v18, v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  }

  else
  {
    if (qword_1ED6FDA70 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v10 = sub_18F52165C();
    __swift_project_value_buffer(v10, qword_1ED7076B0);
    v11 = sub_18F52163C();
    v12 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v12))
    {
      v13 = OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_13_24(v13);
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v14, v15, "Unable to retrieve an app entity by its mangled name");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_24_24(v16, v17);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_71();

  return v20();
}

uint64_t sub_18F273B18()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 296) = v0;

  if (!v0)
  {
    *(v4 + 304) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F273C24()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F273C88()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 296);

  sub_18F2D94A8(v1);
  OUTLINED_FUNCTION_124_1();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F273D14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F273D34, 0, 0);
}

uint64_t sub_18F273D34()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_49(*(v0 + 24));
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69ACFD0]) init];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_27(v1);

  return sub_18F273F5C(v2, v3, v4);
}

uint64_t sub_18F273DEC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (!v0)
  {

    *(v4 + 56) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F273F00()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F273F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v6 = *(a3 + 8);
  v3[4] = v6;
  v3[5] = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v8 = swift_task_alloc();
  v3[8] = v8;
  v9 = swift_task_alloc();
  v3[9] = v9;
  *v9 = v3;
  v9[1] = sub_18F27106C;

  return sub_18F3FA918(v8, a2, a3);
}

uint64_t sub_18F2740B0(void *a1, int a2, void *a3, __int128 *a4, uint64_t a5, void *aBlock)
{
  v14 = a4[1];
  v15 = *a4;
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_62_4();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v15;
  *(v10 + 40) = v14;
  *(v10 + 56) = a5;
  *(v10 + 64) = v9;
  *(v10 + 72) = a1;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  OUTLINED_FUNCTION_56();

  return sub_18F10B344();
}

uint64_t sub_18F274154(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  v15 = sub_18F5218DC();
  v17 = v16;
  v8[5] = v16;
  swift_unknownObjectRetain();
  v18 = a8;
  v19 = swift_task_alloc();
  v8[6] = v19;
  *v19 = v8;
  v19[1] = sub_18F27426C;

  return AppContext.performAllEntities(entityMangledTypeName:auditToken:connectionIdentifier:)(v15, v17, a2, a3, a4, a5, a6);
}

uint64_t sub_18F27426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v14 = *(v13 + 24);
  v15 = *v12;
  OUTLINED_FUNCTION_39();
  *v16 = v15;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_110();
  v18 = *(v17 + 32);
  if (v10)
  {
    sub_18F520A7C();
    OUTLINED_FUNCTION_130_0();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_118_1();
    v19();

    _Block_release(v18);
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_97_2();
    v20();
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_36();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t AppContext.performConfigurableQuery(_:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F274418()
{
  v46 = v0;
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = *(v0 + 144);
  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1ED707778);
  v3 = v1;
  v4 = sub_18F52163C();
  v5 = sub_18F52223C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = OUTLINED_FUNCTION_126();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v10, v11, v12, v13, v7, 0xCu);
    sub_18F0EF148(v8, &qword_1EACD0578);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v14 = *(v0 + 184);

  if (v14)
  {
    v15 = [*(v0 + 184) integerValue];
  }

  else
  {
    v15 = -1;
  }

  sub_18F274A94(v0 + 64);
  sub_18F275634(v0 + 104);
  v42 = v15;
  v16 = [*(v0 + 144) options];
  v17 = [v16 exportConfiguration];
  *(v0 + 192) = v17;

  v18 = *(v0 + 168);
  v43 = *(v0 + 176);
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  if (v17)
  {
    [v17 auditToken];
    v21 = v45[0];
    v22 = v45[1];
    v24 = v45[2];
    v23 = v45[3];
    *(v0 + 264) = v45[0];
    *(v0 + 272) = v22;
    *(v0 + 280) = v24;
    *(v0 + 288) = v23;
    IsValid = LNAuditTokenIsValid();
    if (IsValid)
    {
      v20 = v21;
    }

    v41 = v20;
    if (IsValid)
    {
      v19 = v22;
      v18 = v24;
    }

    v26 = v43;
    if (IsValid)
    {
      v26 = v23;
    }

    v43 = v26;
  }

  else
  {
    v41 = *(v0 + 152);
  }

  v27 = sub_18F52163C();
  v28 = sub_18F52223C();
  v29 = v42;
  if (os_log_type_enabled(v27, v28))
  {
    buf = OUTLINED_FUNCTION_126();
    v40 = swift_slowAlloc();
    v45[0] = v40;
    *buf = 136315138;
    v30 = v41;
    *(v0 + 232) = v41;
    *(v0 + 240) = v19;
    *(v0 + 248) = v18;
    *(v0 + 256) = v43;
    type metadata accessor for audit_token_t(0);
    v31 = sub_18F52194C();
    v33 = sub_18F11897C(v31, v32, v45);

    *(buf + 4) = v33;
    _os_log_impl(&dword_18F0E9000, v27, v28, "auditToken for query: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    OUTLINED_FUNCTION_32();
    v29 = v42;
    OUTLINED_FUNCTION_32();
  }

  else
  {

    v30 = v41;
  }

  v34 = *(v0 + 144);
  LOBYTE(v45[0]) = 0;
  *(v0 + 16) = v30;
  *(v0 + 24) = v19;
  *(v0 + 32) = v18;
  *(v0 + 40) = v43;
  *(v0 + 48) = 0;
  *(v0 + 56) = v29;
  v35 = swift_task_alloc();
  *(v0 + 200) = v35;
  v35[2] = v34;
  v35[3] = v0 + 64;
  v35[4] = v0 + 104;
  OUTLINED_FUNCTION_6_1(&unk_18F54D5F8);
  v44 = v36;
  v37 = swift_task_alloc();
  *(v0 + 208) = v37;
  *v37 = v0;
  v37[1] = sub_18F274848;

  return v44(&unk_18F54D6B8, v35);
}

uint64_t sub_18F274848()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 216) = v0;

  if (!v0)
  {
    *(v4 + 224) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F274954()
{
  OUTLINED_FUNCTION_69();

  sub_18F0EF148(v0 + 104, &qword_1EACD27F0);
  sub_18F0EF148(v0 + 64, &qword_1EACD3A78);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t sub_18F2749E4()
{
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);

  sub_18F2D94A8(v1);
  OUTLINED_FUNCTION_124_1();

  sub_18F0EF148(v0 + 104, &qword_1EACD27F0);
  sub_18F0EF148(v0 + 64, &qword_1EACD3A78);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_132_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_18F274A94(uint64_t a1@<X8>)
{
  v3 = sub_18F5223CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F5223EC();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x1E69ACAF8])
  {
    (*(v4 + 96))(v6, v3);
    v8 = *v6;
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    sub_18F1BB35C();
    if (v1)
    {

      v100 = 0;
      v101 = 0xE000000000000000;
      sub_18F52279C();

      v100 = 0xD000000000000011;
      v101 = 0x800000018F528340;
      v11 = [v8 identifier];
      v12 = sub_18F5218DC();
      v14 = v13;

      MEMORY[0x193ADB000](v12, v14);

      v15 = v100;
      v16 = v101;
      sub_18F17043C();
      swift_allocError();
      *v17 = v15;
      *(v17 + 8) = v16;
      *(v17 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      v32 = v9;
      v33 = v10;

      if (qword_1ED6FEF38 != -1)
      {
        swift_once();
      }

      v34 = sub_18F52165C();
      __swift_project_value_buffer(v34, qword_1ED707778);
      v35 = v8;
      v36 = sub_18F52163C();
      v37 = sub_18F52223C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v100 = v104;
        *v38 = 136315138;
        v39 = [v35 identifier];
        v95 = v35;
        v40 = v39;
        v41 = sub_18F5218DC();
        LODWORD(v94) = v37;
        v42 = v41;
        v43 = a1;
        v45 = v44;

        v46 = sub_18F11897C(v42, v45, &v100);
        a1 = v43;

        *(v38 + 4) = v46;
        _os_log_impl(&dword_18F0E9000, v36, v94, "Handling defaultQuery request for %s", v38, 0xCu);
        v47 = v104;
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        MEMORY[0x193ADD350](v47, -1, -1);
        v48 = v38;
        v49 = v95;
        MEMORY[0x193ADD350](v48, -1, -1);
      }

      else
      {

        v49 = v35;
      }

      v80 = *(v33 + 56);
      *(a1 + 24) = swift_getAssociatedTypeWitness();
      *(a1 + 32) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(a1);
      v80(v32, v33);
    }

    return;
  }

  if (v7 != *MEMORY[0x1E69ACB08])
  {
    if (v7 != *MEMORY[0x1E69ACAF0])
    {
      sub_18F17043C();
      swift_allocError();
      *v50 = 0xD000000000000018;
      *(v50 + 8) = 0x800000018F528320;
      *(v50 + 16) = 1;
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
      return;
    }

    (*(v4 + 96))(v6, v3);
    v19 = *v6;
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    sub_18F34F474(v19);
    if (v1)
    {

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    v81 = v30;
    v82 = v31;

    v83 = *(v82 + 40);
    *(a1 + 24) = v81;
    *(a1 + 32) = v82;
    __swift_allocate_boxed_opaque_existential_1(a1);
    v83(v81, v82);
    goto LABEL_30;
  }

  (*(v4 + 96))(v6, v3);
  v19 = *v6;
  v18 = *(v6 + 1);
  v20 = *(v6 + 2);
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  sub_18F12DB84(v19);
  if (v1)
  {

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_18F52279C();

    v100 = 0xD000000000000011;
    v101 = 0x800000018F528340;
    v23 = [v19 identifier];
    v24 = sub_18F5218DC();
    v26 = v25;

    MEMORY[0x193ADB000](v24, v26);

    v27 = v100;
    v28 = v101;
    sub_18F17043C();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 1;
    swift_willThrow();
LABEL_30:

    return;
  }

  v51 = v21;
  v52 = v22;
  v94 = a1;
  v95 = v19;

  v104 = v18;
  v53 = *(v52 + 120);
  v102 = v51;
  v103 = v52;
  v54 = __swift_allocate_boxed_opaque_existential_1(&v100);
  v53(v51, v52);
  __swift_project_boxed_opaque_existential_1Tm(&v100, v102);
  type metadata accessor for PreparedIntent();
  v55 = sub_18F10E0AC();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v92 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57, v54, v51);
  v59 = v104;
  v60 = sub_18F1194F4(v57, v55, v51, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
  v61 = *(v60 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent + 24);
  v62 = *(v60 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent + 32);
  __swift_project_boxed_opaque_existential_1Tm((v60 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent), v61);
  sub_18F1A0A8C(v59, v20, v61, v62, &v98);
  if (!v99)
  {
    sub_18F0EF148(&v98, &qword_1EACD0F20);
LABEL_33:
    v84 = v95;
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_18F52279C();

    v100 = 0xD000000000000011;
    v101 = 0x800000018F528340;
    v85 = [v84 identifier];
    v86 = sub_18F5218DC();
    v88 = v87;

    MEMORY[0x193ADB000](v86, v88);

    MEMORY[0x193ADB000](58, 0xE100000000000000);
    MEMORY[0x193ADB000](v104, v20);

    v89 = v100;
    v90 = v101;
    sub_18F17043C();
    swift_allocError();
    *v91 = v89;
    *(v91 + 8) = v90;
    *(v91 + 16) = 1;
    swift_willThrow();

    return;
  }

  sub_18F0FD0B4(&v98, &v100);
  v63 = v102;
  v64 = v103;
  __swift_project_boxed_opaque_existential_1Tm(&v100, v102);
  sub_18F27841C(v63, v64, &v96);
  if (!v97)
  {
    sub_18F0EF148(&v96, &qword_1EACD3A78);
    __swift_destroy_boxed_opaque_existential_1Tm(&v100);
    goto LABEL_33;
  }

  sub_18F0FD0B4(&v96, &v98);
  v65 = v95;
  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v66 = sub_18F52165C();
  __swift_project_value_buffer(v66, qword_1ED707778);
  v67 = v65;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v68 = sub_18F52163C();
  v69 = sub_18F52223C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v96 = v93;
    *v70 = 136315394;
    v71 = [v67 identifier];
    v95 = v67;
    v72 = v71;
    v73 = v59;
    v74 = sub_18F5218DC();
    v92[1] = v60;
    v76 = v75;

    v77 = sub_18F11897C(v74, v76, &v96);

    *(v70 + 4) = v77;
    *(v70 + 12) = 2080;
    v78 = sub_18F11897C(v73, v20, &v96);

    *(v70 + 14) = v78;
    _os_log_impl(&dword_18F0E9000, v68, v69, "Handling IntentParameter query request for %s:%s", v70, 0x16u);
    v79 = v93;
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v79, -1, -1);
    MEMORY[0x193ADD350](v70, -1, -1);
  }

  else
  {
  }

  sub_18F0FD0B4(&v98, v94);
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
}

void sub_18F275634(uint64_t a1@<X8>)
{
  v3 = sub_18F5223CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18F5223EC();
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E69ACAF0])
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_7;
  }

  (*(v4 + 96))(v6, v3);
  v7 = *v6;
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  sub_18F34F51C(v7);
  if (v1)
  {

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = v8;
  v11 = v9;

  v12 = *(v11 + 64);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  __swift_allocate_boxed_opaque_existential_1(a1);
  v12(v10, v11);
}

uint64_t sub_18F275820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[125] = a4;
  v4[124] = a3;
  v4[123] = a2;
  v4[122] = a1;
  v5 = sub_18F5223DC();
  v4[126] = v5;
  v4[127] = *(v5 - 8);
  v4[128] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2758EC, 0, 0);
}

uint64_t sub_18F2758EC()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 984);
  sub_18F52240C();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E69ACAD0])
  {
    OUTLINED_FUNCTION_37_14();
    v1 = *(v0 + 992);
    v6 = OUTLINED_FUNCTION_100_3();
    v7(v6);
    *(v0 + 1160) = *v4;
    sub_18F27A610(v1, v0 + 496, &qword_1EACD3A78);
    if (*(v0 + 520))
    {
      v8 = *(v0 + 984);
      sub_18F0FD0B4((v0 + 496), v0 + 456);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 456), *(v0 + 480));
      *(v0 + 1168) = [v8 options];
      v9 = swift_task_alloc();
      *(v0 + 1176) = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_18_26(v9);
      OUTLINED_FUNCTION_176();

      return sub_18F26FCF4(v10, v11, v12, v13);
    }

    v44 = v0 + 496;
    goto LABEL_21;
  }

  if (v5 == *MEMORY[0x1E69ACB10])
  {
    v16 = (v0 + 376);
    OUTLINED_FUNCTION_37_14();
    v17 = *(v0 + 992);
    v18 = OUTLINED_FUNCTION_100_3();
    v19(v18);
    v1 = *v4;
    *(v0 + 1200) = v4[1];
    sub_18F27A610(v17, v0 + 416, &qword_1EACD3A78);
    if (*(v0 + 440))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36F0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 400))
        {
          v20 = *(v0 + 984);
          sub_18F0FD0B4((v0 + 376), v0 + 336);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 336), *(v0 + 360));
          *(v0 + 1208) = [v20 options];
          v21 = swift_task_alloc();
          *(v0 + 1216) = v21;
          *v21 = v0;
          OUTLINED_FUNCTION_12_3(v21);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_176();

          return sub_18F270F20(v22, v23, v24, v25, v26);
        }
      }

      else
      {
        *(v0 + 408) = 0;
        *v16 = 0u;
        *(v0 + 392) = 0u;
      }
    }

    else
    {

      sub_18F0EF148(v0 + 416, &qword_1EACD3A78);
      *v16 = 0u;
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0;
    }

    sub_18F0EF148(v0 + 376, &qword_1EACD36F8);
LABEL_33:
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    OUTLINED_FUNCTION_29_22();
    v47 = v53 | 6;
    goto LABEL_34;
  }

  if (v5 == *MEMORY[0x1E69ACAB8])
  {
    OUTLINED_FUNCTION_37_14();
    v28 = *(v0 + 992);
    v29 = OUTLINED_FUNCTION_100_3();
    v30(v29);
    v31 = *v4;
    *(v0 + 1240) = *v4;
    v32 = v4[1];
    *(v0 + 1248) = v4[3];
    sub_18F27A610(v28, v0 + 296, &qword_1EACD3A78);
    if (*(v0 + 320))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36E0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 280))
        {
          v33 = *(v0 + 984);
          sub_18F0FD0B4((v0 + 256), v0 + 216);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 216), *(v0 + 240));
          v34 = v31;
          *(v0 + 1256) = [v33 options];
          v35 = swift_task_alloc();
          *(v0 + 1264) = v35;
          *v35 = v0;
          OUTLINED_FUNCTION_12_3(v35);
          OUTLINED_FUNCTION_176();

          return sub_18F271674(v36, v37, v38, v39, v40, v41, v42);
        }
      }

      else
      {
        *(v0 + 288) = 0;
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
      }
    }

    else
    {

      sub_18F0EF148(v0 + 296, &qword_1EACD3A78);
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0;
    }

    sub_18F0EF148(v0 + 256, &qword_1EACD36E8);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    OUTLINED_FUNCTION_29_22();
    *v64 = v63 | 8;
    v64[1] = v32;
    OUTLINED_FUNCTION_101_4(v65, v64);

LABEL_35:

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  if (v5 == *MEMORY[0x1E69ACAE0])
  {
    OUTLINED_FUNCTION_37_14();
    v1 = *(v0 + 992);
    v48 = OUTLINED_FUNCTION_100_3();
    v49(v48);
    *(v0 + 1288) = *v4;
    sub_18F27A610(v1, v0 + 176, &qword_1EACD3A78);
    if (*(v0 + 200))
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AB0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 160))
        {
          v50 = *(v0 + 984);
          sub_18F0FD0B4((v0 + 136), v0 + 96);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
          *(v0 + 1296) = [v50 options];
          v51 = swift_task_alloc();
          *(v0 + 1304) = v51;
          *v51 = v0;
          OUTLINED_FUNCTION_18_26(v51);
          OUTLINED_FUNCTION_176();

          return sub_18F277A3C();
        }
      }

      else
      {
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
      }
    }

    else
    {

      sub_18F0EF148(v0 + 176, &qword_1EACD3A78);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    sub_18F0EF148(v0 + 136, &qword_1EACD3AA8);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    OUTLINED_FUNCTION_29_22();
    v47 = v69 + 15;
    goto LABEL_34;
  }

  if (v5 == *MEMORY[0x1E69ACAD8])
  {
    OUTLINED_FUNCTION_37_14();
    v56 = *(v0 + 1000);
    v57 = OUTLINED_FUNCTION_100_3();
    v58(v57);
    v59 = *v4;
    *(v0 + 1328) = *v4;
    sub_18F27A610(v56, v0 + 56, &qword_1EACD27F0);
    if (!*(v0 + 80))
    {
      sub_18F0EF148(v0 + 56, &qword_1EACD27F0);
      sub_18F17043C();
      OUTLINED_FUNCTION_34_14();
      swift_allocError();
      OUTLINED_FUNCTION_29_22();
      *v77 = v76 + 5;
      v77[1] = 0x800000018F528130;
      OUTLINED_FUNCTION_101_4(v78, v77);

      goto LABEL_35;
    }

    v60 = *(v0 + 984);
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    *(v0 + 1336) = [v60 options];
    v61 = swift_task_alloc();
    *(v0 + 1344) = v61;
    *v61 = v0;
    OUTLINED_FUNCTION_12_3(v61);
    OUTLINED_FUNCTION_176();

    return sub_18F277B6C();
  }

  else
  {
    if (v5 == *MEMORY[0x1E69ACB18])
    {
      v1 = (v0 + 776);
      sub_18F27A610(*(v0 + 992), v0 + 816, &qword_1EACD3A78);
      if (*(v0 + 840))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0238);
        if (OUTLINED_FUNCTION_128_1())
        {
          if (*(v0 + 800))
          {
            v66 = *(v0 + 984);
            sub_18F0FD0B4((v0 + 776), v0 + 736);
            __swift_project_boxed_opaque_existential_1Tm((v0 + 736), *(v0 + 760));
            *(v0 + 1032) = [v66 options];
            v67 = swift_task_alloc();
            *(v0 + 1040) = v67;
            *v67 = v0;
            OUTLINED_FUNCTION_18_26(v67);
            OUTLINED_FUNCTION_176();

            return sub_18F26F3D8();
          }
        }

        else
        {
          *(v0 + 808) = 0;
          *v1 = 0u;
          *(v0 + 792) = 0u;
        }
      }

      else
      {
        sub_18F0EF148(v0 + 816, &qword_1EACD3A78);
        *v1 = 0u;
        *(v0 + 792) = 0u;
        *(v0 + 808) = 0;
      }

      v85 = *(v0 + 992);
      sub_18F0EF148(v0 + 776, &qword_1EACD0240);
      sub_18F27A610(v85, v0 + 936, &qword_1EACD3A78);
      if (*(v0 + 960))
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0248);
        if (swift_dynamicCast())
        {
          if (*(v0 + 920))
          {
            v86 = *(v0 + 984);
            sub_18F0FD0B4((v0 + 896), v0 + 856);
            __swift_project_boxed_opaque_existential_1Tm((v0 + 856), *(v0 + 880));
            *(v0 + 1064) = [v86 options];
            v87 = swift_task_alloc();
            *(v0 + 1072) = v87;
            *v87 = v0;
            OUTLINED_FUNCTION_12_3(v87);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_176();

            return sub_18F26EDDC();
          }
        }

        else
        {
          *(v0 + 928) = 0;
          OUTLINED_FUNCTION_42_6();
        }
      }

      else
      {
        sub_18F0EF148(v0 + 936, &qword_1EACD3A78);
        OUTLINED_FUNCTION_42_6();
        *(v0 + 928) = 0;
      }

      sub_18F0EF148(v0 + 896, &qword_1EACD0250);
      goto LABEL_33;
    }

    if (v5 == *MEMORY[0x1E69ACAC0])
    {
      sub_18F27A610(*(v0 + 992), v0 + 696, &qword_1EACD3A78);
      if (*(v0 + 720))
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3A88);
        if (swift_dynamicCast())
        {
          if (*(v0 + 680))
          {
            v70 = *(v0 + 984);
            sub_18F0FD0B4((v0 + 656), v0 + 616);
            __swift_project_boxed_opaque_existential_1Tm((v0 + 616), *(v0 + 640));
            *(v0 + 1096) = [v70 options];
            v71 = swift_task_alloc();
            *(v0 + 1104) = v71;
            *v71 = v0;
            OUTLINED_FUNCTION_12_3(v71);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_176();

            return sub_18F273F5C(v72, v73, v74);
          }
        }

        else
        {
          *(v0 + 688) = 0;
          OUTLINED_FUNCTION_42_6();
        }
      }

      else
      {
        sub_18F0EF148(v0 + 696, &qword_1EACD3A78);
        OUTLINED_FUNCTION_42_6();
        *(v0 + 688) = 0;
      }

      sub_18F0EF148(v0 + 656, &qword_1EACD3A90);
      OUTLINED_FUNCTION_102_3();
      OUTLINED_FUNCTION_34_14();
      v45 = swift_allocError();
      v47 = 0xD00000000000002BLL;
      goto LABEL_34;
    }

    if (v5 != *MEMORY[0x1E69ACAE8])
    {
      v89 = *(v0 + 1024);
      v90 = *(v0 + 1016);
      v91 = *(v0 + 1008);
      sub_18F17043C();
      OUTLINED_FUNCTION_34_14();
      swift_allocError();
      OUTLINED_FUNCTION_29_22();
      *v93 = v92 - 11;
      v93[1] = 0x800000018F528110;
      OUTLINED_FUNCTION_101_4(v94, v93);
      (*(v90 + 8))(v89, v91);
      goto LABEL_35;
    }

    sub_18F27A610(*(v0 + 992), v0 + 576, &qword_1EACD3A78);
    if (!*(v0 + 600))
    {
      v44 = v0 + 576;
LABEL_21:
      sub_18F0EF148(v44, &qword_1EACD3A78);
      OUTLINED_FUNCTION_102_3();
      OUTLINED_FUNCTION_34_14();
      swift_allocError();
      OUTLINED_FUNCTION_29_22();
LABEL_34:
      *v46 = v47;
      v46[1] = v1;
      OUTLINED_FUNCTION_101_4(v45, v46);
      goto LABEL_35;
    }

    v79 = *(v0 + 984);
    sub_18F0FD0B4((v0 + 576), v0 + 536);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), *(v0 + 560));
    *(v0 + 1128) = [v79 options];
    v80 = swift_task_alloc();
    *(v0 + 1136) = v80;
    *v80 = v0;
    OUTLINED_FUNCTION_18_26(v80);
    OUTLINED_FUNCTION_176();

    return sub_18F272868(v81, v82, v83);
  }
}

uint64_t sub_18F276858()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 1048) = v0;

  if (!v0)
  {

    *(v4 + 1056) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F276964()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1056));
  OUTLINED_FUNCTION_107_1(v0 + 736);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2769C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 1080) = v0;

  if (!v0)
  {

    *(v4 + 1088) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F276AD4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1088));
  OUTLINED_FUNCTION_107_1(v0 + 856);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F276B38()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 1112) = v0;

  if (!v0)
  {

    *(v4 + 1120) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F276C44()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1120));
  OUTLINED_FUNCTION_107_1(v0 + 616);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F276CA8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 1144) = v0;

  if (!v0)
  {

    *(v4 + 1152) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F276DB4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1152));
  OUTLINED_FUNCTION_107_1(v0 + 536);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F276E18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_39();
  *v4 = v1;
  *v4 = *v2;
  *(v1 + 1184) = v0;

  OUTLINED_FUNCTION_141();
  v6 = *(v5 + 1168);
  if (v0)
  {
  }

  else
  {

    *(v1 + 1192) = v3;
  }

  OUTLINED_FUNCTION_52_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F276F64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1192));
  OUTLINED_FUNCTION_107_1(v0 + 456);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F276FC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_39();
  *v4 = v1;
  *v4 = *v2;
  *(v1 + 1224) = v0;

  OUTLINED_FUNCTION_141();
  v6 = *(v5 + 1208);
  if (v0)
  {
  }

  else
  {

    *(v1 + 1232) = v3;
  }

  OUTLINED_FUNCTION_52_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F277114()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1232));
  OUTLINED_FUNCTION_107_1(v0 + 336);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277178()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 1272) = v0;

  v7 = *(v4 + 1256);
  v8 = *(v4 + 1240);
  if (v0)
  {
  }

  else
  {

    *(v5 + 1280) = v3;
  }

  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F2772E4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 1280);
  v2 = *(v0 + 976);

  *v2 = v1;
  OUTLINED_FUNCTION_107_1(v0 + 216);
  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F277354()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_39();
  *v4 = v1;
  *v4 = *v2;
  *(v1 + 1312) = v0;

  OUTLINED_FUNCTION_141();
  v6 = *(v5 + 1296);
  if (v0)
  {
  }

  else
  {

    *(v1 + 1320) = v3;
  }

  OUTLINED_FUNCTION_52_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2774A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_76_4(*(v0 + 1320));
  OUTLINED_FUNCTION_107_1(v0 + 96);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277504()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 1352) = v0;

  if (!v0)
  {

    *(v4 + 1360) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F277610()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 1360);
  v2 = *(v0 + 976);

  *v2 = v1;
  OUTLINED_FUNCTION_107_1(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F277680()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 856);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2776EC()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 736);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277758()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2777C4()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277830()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277894()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2778F8()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F277964()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2779C8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 1336);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F277A3C()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v0[2] = v7;
  v0[3] = v3;
  v8 = *(v1 + 8);
  v0[4] = v8;
  v0[5] = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[6] = AssociatedTypeWitness;
  v0[7] = *(AssociatedTypeWitness - 8);
  v10 = OUTLINED_FUNCTION_34_0();
  v0[8] = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v11;
  *v11 = v12;
  v11[1] = sub_18F27106C;

  return sub_18F39FAA4(v10, v6, v4, v2);
}

uint64_t sub_18F277B6C()
{
  OUTLINED_FUNCTION_69();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  sub_18F520E6C();
  v1[25] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F277BF0()
{
  OUTLINED_FUNCTION_29();
  LNValue.asUnboxedPropertyType.getter();
  if (*(v0 + 80))
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
    *(v0 + 160) = v1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v2, v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 208) = v4;
    *v4 = v5;
    v4[1] = sub_18F277E20;
    v6 = *(v0 + 184);
    v7 = *(v0 + 176);

    return sub_18F1AD1B0(v0 + 96, v0 + 136, v7, v6);
  }

  else
  {
    v9 = *(v0 + 168);
    sub_18F0EF148(v0 + 56, &qword_1EACD0620);
    sub_18F52279C();

    v10 = [v9 description];
    v11 = sub_18F5218DC();
    v13 = v12;

    MEMORY[0x193ADB000](v11, v13);

    MEMORY[0x193ADB000](0xD000000000000015, 0x800000018F5282B0);
    sub_18F17043C();
    OUTLINED_FUNCTION_34_14();
    v14 = swift_allocError();
    *v15 = 0xD000000000000012;
    v15[1] = 0x800000018F528290;
    OUTLINED_FUNCTION_101_4(v14, v15);

    OUTLINED_FUNCTION_71();

    return v16();
  }
}

uint64_t sub_18F277E20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 136);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F277F20()
{
  OUTLINED_FUNCTION_21();
  if (*(v1 + 120))
  {
    __swift_project_boxed_opaque_existential_1Tm((v1 + 96), *(v1 + 120));
    v2 = OUTLINED_FUNCTION_45();
    sub_18F142A38(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 96);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    v3 = objc_allocWithZone(MEMORY[0x1E69ACF98]);
    v4 = OUTLINED_FUNCTION_56();
    sub_18F279D38(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);

    v6 = OUTLINED_FUNCTION_12_7();

    return v7(v6);
  }

  else
  {
    sub_18F0EF148(v1 + 96, &qword_1EACD0620);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_34_14();
    v9 = swift_allocError();
    *v10 = 0xD000000000000047;
    v10[1] = v0;
    OUTLINED_FUNCTION_101_4(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);

    OUTLINED_FUNCTION_71();

    return v11();
  }
}

uint64_t sub_18F278074()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F278198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *aBlock, void *a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a1;
  v8[5] = _Block_copy(aBlock);
  v16 = a1;
  v17 = a6;
  v18 = a8;
  v19 = swift_task_alloc();
  v8[6] = v19;
  *v19 = v8;
  v19[1] = sub_18F278298;

  return AppContext.performConfigurableQuery(_:auditToken:connectionIdentifier:)(v16, a2, a3, a4, a5, a6);
}

uint64_t sub_18F278298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  v17 = *v12;
  OUTLINED_FUNCTION_39();
  *v18 = v17;

  OUTLINED_FUNCTION_110();
  v20 = *(v19 + 40);
  if (v10)
  {
    sub_18F520A7C();
    OUTLINED_FUNCTION_130_0();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_118_1();
    v21();

    _Block_release(v20);
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_97_2();
    v22();
    _Block_release(v20);
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_36();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_18F27841C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v31, v8);
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AD0);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_18F0FD0B4(&v32, v35);
        v12 = v36;
        v13 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v14 = *(v13 + 24);
        *(a3 + 24) = swift_getAssociatedTypeWitness();
        *(a3 + 32) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(a3);
        v14(v12, v13);
        return __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v31, &qword_1EACD0D98);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_18F0EF148(&v32, &qword_1EACD3AC8);
  if (qword_1ED6FE320 != -1)
  {
    swift_once();
  }

  v16 = sub_18F52165C();
  __swift_project_value_buffer(v16, qword_1ED707748);
  (*(v7 + 16))(v10, v3, a1);
  v17 = sub_18F52163C();
  v18 = sub_18F52221C();
  if (os_log_type_enabled(v17, v18))
  {
    v30 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315138;
    result = (*(*(a2 + 8) + 16))(a1, *(a2 + 8));
    if (!v21)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    v23 = v21;
    (*(v7 + 8))(v10, a1);
    v24 = sub_18F11897C(v22, v23, v35);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_18F0E9000, v17, v18, "Parameter %s does not provide a query, falling back to defaultQuery", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x193ADD350](v20, -1, -1);
    MEMORY[0x193ADD350](v19, -1, -1);

    a3 = v30;
  }

  else
  {

    (*(v7 + 8))(v10, a1);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
  if (result)
  {
    v27 = result;
    v28 = v26;
    v29 = *(v26 + 56);
    *(a3 + 24) = swift_getAssociatedTypeWitness();
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return v29(v27, v28);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F2788F0(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      v14 = sub_18F5218DC();
      v15 = MEMORY[0x1E69E6158];
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      *(inited + 72) = v15;
      strcpy((inited + 48), "Unknown error");
      *(inited + 62) = -4864;
      return sub_18F5216CC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_18F53F800;
    v6 = sub_18F5218DC();
    v7 = MEMORY[0x1E69E6158];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 72) = v7;
    v9 = 0x800000018F5280F0;
    v10 = 0xD00000000000001ELL;
    if (a2)
    {
      v10 = a1;
      v9 = a2;
    }

    *(v5 + 48) = v10;
    *(v5 + 56) = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_18F53F800;
    *(v11 + 32) = sub_18F5218DC();
    *(v11 + 40) = v12;
    *(v11 + 72) = MEMORY[0x1E69E6158];
    *(v11 + 48) = a1;
    *(v11 + 56) = a2;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F5216CC();
}

uint64_t sub_18F278A9C(uint64_t a1)
{
  v2 = sub_18F27A25C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F278AD8(uint64_t a1)
{
  v2 = sub_18F27A25C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18F278B2C()
{
  OUTLINED_FUNCTION_69();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[11] = v5;
  sub_18F520E6C();
  v1[16] = OUTLINED_FUNCTION_34_0();
  v6 = sub_18F52165C();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F278C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  if ([*(v12 + 96) convertArrayResultToAsyncSequence] && (*(v12 + 72) = *(v12 + 88), sub_18F521DBC(), OUTLINED_FUNCTION_4_30(), swift_getWitnessTable(), (sub_18F52213C() & 1) == 0))
  {
    *(v12 + 80) = *(v12 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2390);
    sub_18F52194C();
    result = *MEMORY[0x1E69AC200];
    if (!*MEMORY[0x1E69AC200])
    {
      __break(1u);
      return result;
    }

    sub_18F521A2C();
    sub_18F52164C();
    v27 = sub_18F52163C();
    v28 = sub_18F5221FC();
    if (OUTLINED_FUNCTION_27(v28))
    {
      v29 = OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_13_24(v29);
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v30, v31, "Using AsyncSequence conversion path");
      OUTLINED_FUNCTION_26_0();
    }

    v33 = *(v12 + 144);
    v32 = *(v12 + 152);
    v34 = *(v12 + 136);
    v35 = *(v12 + 112);
    v36 = *(v12 + 104);
    v37 = *(v12 + 88);

    (*(v33 + 8))(v32, v34);
    sub_18F33C3A4(v37, v36, *(*(v35 + 8) + 24), (v12 + 16));
    __swift_project_boxed_opaque_existential_1Tm((v12 + 16), *(v12 + 40));
    v38 = OUTLINED_FUNCTION_45();
    sub_18F142A38(v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v25 = OUTLINED_FUNCTION_56();
  }

  else
  {
    v13 = [*(v12 + 96) exportConfiguration];
    *(v12 + 160) = v13;
    if (v13)
    {
      v14 = *(v12 + 112);
      *(v12 + 56) = *(v12 + 88);
      v15 = swift_task_alloc();
      *(v12 + 168) = v15;
      sub_18F521DBC();
      *(v12 + 64) = v14;
      swift_getWitnessTable();
      *v15 = v12;
      v15[1] = sub_18F278F10;
      OUTLINED_FUNCTION_29_1();

      return sub_18F2102C4(v16, v17, v18);
    }

    v22 = *(v12 + 104);
    v21 = *(v12 + 112);
    v23 = *(v12 + 88);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    sub_18F3847EC(v23, v22, v21);
    v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v25 = OUTLINED_FUNCTION_45();
  }

  sub_18F279D38(v25, v26);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_29_1();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_18F278F10()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F279014()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 160);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = OUTLINED_FUNCTION_56();
  sub_18F279D38(v3, v4);

  v5 = OUTLINED_FUNCTION_12_7();

  return v6(v5);
}

uint64_t sub_18F2790B8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F279128@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 typeIdentifier];
  v5 = sub_18F5218DC();
  v7 = v6;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (v5 == static AppValue._identifier.getter(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8)) && v7 == v10)
  {
  }

  else
  {
    v12 = sub_18F522D5C();

    if ((v12 & 1) == 0)
    {
      v13 = swift_getAssociatedTypeWitness();
      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
    }
  }

  v15 = swift_getAssociatedTypeWitness();
  v16 = [v3 instanceIdentifier];
  v17 = sub_18F5218DC();
  v19 = v18;

  v20 = swift_getAssociatedConformanceWitness();
  (*(v20 + 16))(v17, v19, v15, v20);
}

uint64_t sub_18F279328@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 sortParameterIndex];
  [v8 integerValue];

  (*(a3 + 32))(&v12, a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntityQuerySortingOptions();
  EntityQuerySortingOptions.subscript.getter();

  v9 = sub_18F25A17C([v7 order]);
  sub_18F259EB4(v11, v9 & 1, a4);
}

uint64_t sub_18F279AAC()
{
  OUTLINED_FUNCTION_54_7();
  sub_18F164FAC(v7);
  OUTLINED_FUNCTION_111_1();
  v8 = &unk_1EACCF000;
  if (!v2)
  {
    v12 = sub_18F279E60(v0, &selRef_fullyQualifiedIdentifier);
    if (v13)
    {
      v1 = v12;
      OUTLINED_FUNCTION_11_25();
      if (sub_18F521A9C())
      {
        v23 = v1;
        os_unfair_lock_lock((v4 + 128));
        sub_18F34F8C4();
        v14 = qword_1EACCF588;

        if (v14 != -1)
        {
          OUTLINED_FUNCTION_60_4();
        }

        swift_getAtKeyPath();

        v1 = v24;
        v22 = sub_18F19E618(v23, &unk_1EACCF000, v24);
        v16 = v15;
        v18 = v17;

        os_unfair_lock_unlock((v4 + 128));
        if ((~(v16 & v22 & v18) & 0xF000000000000007) == 0)
        {
          sub_18F16A9C8();
          OUTLINED_FUNCTION_34_14();
          swift_allocError();
          *v19 = xmmword_18F54D5B0;
          *(v19 + 16) = v23;
          *(v19 + 24) = &unk_1EACCF000;
          swift_willThrow();
          v8 = &unk_1EACCF000;
          goto LABEL_2;
        }
      }
    }

    v20 = OUTLINED_FUNCTION_57_4();
    sub_18F1BB3A4(v20);
    OUTLINED_FUNCTION_71_0();

    return v1;
  }

LABEL_2:
  os_unfair_lock_lock((v4 + 128));
  sub_18F34F8C4();
  v1 = *(v4 + 136);
  v9 = v8[177];

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  swift_getAtKeyPath();

  sub_18F19E618(v6, v5, v24);
  OUTLINED_FUNCTION_71_0();
  v11 = v10;

  os_unfair_lock_unlock((v4 + 128));
  if ((~(v5 & v1 & v11) & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_127();
    if (!v3)
    {
LABEL_14:
    }
  }

  else
  {
    swift_willThrow();
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  return v1;
}

id sub_18F279D38(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_18F520E2C();
  v7 = [v3 initWithIdentifier:v6 value:a2];

  v8 = sub_18F520E6C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_18F279DD0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_109_0();

  return sub_18F27139C(v3, v4, v5, v6);
}

uint64_t sub_18F279E60(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_18F5218DC();
  }

  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F279EBC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_109_0();

  return sub_18F270CBC(v3, v4, v5, v6);
}

uint64_t sub_18F279F4C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_28(v3);

  return sub_18F26FA8C(v5, v6, v1);
}

uint64_t sub_18F279FE0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_28(v3);

  return sub_18F2724BC(v5, v6, v1);
}

uint64_t sub_18F27A074()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_28(v3);

  return sub_18F273384(v5, v6, v1);
}