uint64_t sub_18F293168()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

uint64_t sub_18F29342C()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

void sub_18F2936E8()
{
  OUTLINED_FUNCTION_18();
  v0 = sub_18F52190C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_27_23();
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  sub_18F5206AC();
  OUTLINED_FUNCTION_88_4();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  OUTLINED_FUNCTION_2_56();
  sub_18F295EE4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  OUTLINED_FUNCTION_0_60();
  sub_18F1E9F48(v5, v6);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F52068C();
  sub_18F5218FC();
  OUTLINED_FUNCTION_67_0();
  sub_18F5218EC();
  if (v7)
  {
    OUTLINED_FUNCTION_44_9();
    v8 = OUTLINED_FUNCTION_67_0();
    sub_18F123A1C(v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_67_0();
    sub_18F123A1C(v10, v11);

    OUTLINED_FUNCTION_80_4();
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16();
}

uint64_t _SpeakableString.init(ssml:)@<X0>(uint64_t a1@<X8>)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  v4 = type metadata accessor for _SpeakableString(0);
  sub_18F293A04(a1 + *(v4 + 20));
  v5 = OUTLINED_FUNCTION_45();

  return v6(v5);
}

uint64_t sub_18F293A04@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_18F520ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_18F52189C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4508);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4510);
  sub_18F52126C();
  sub_18F520ABC();
  sub_18F520EDC();
  v10[5] = sub_18F52192C();
  v10[6] = v8;
  v10[3] = 0;
  v10[4] = 0xE000000000000000;
  sub_18F295FD0();
  sub_18F296024();
  sub_18F1E9F48(&qword_1EACD4528, &qword_1EACD4508);
  sub_18F52217C();

  sub_18F52181C();
  sub_18F520B1C();
  sub_18F520EDC();
  sub_18F520B4C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t _SpeakableString.init(spoken:printed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v12 = v7;
  (*(v8 + 16))(a3, a1, v6);
  v9 = type metadata accessor for _SpeakableString(0);
  sub_18F293A04(a3 + *(v9 + 20));
  v11 = *(v12 + 8);
  v11(a2, v6);

  return (v11)(a1, v6);
}

uint64_t IntentDialog.init(full:systemImageName:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = sub_18F294FDC();
  v9 = sub_18F117248();
  type metadata accessor for _SpeakableString(0);
  v10 = sub_18F117248();
  sub_18F293EAC(v9, v10);
  OUTLINED_FUNCTION_22_22();
  sub_18F11CE88(a1, v11);
  *a4 = v8;
  a4[1] = 0;
  a4[2] = a2;
  a4[3] = a3;
  type metadata accessor for IntentDialog.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_18F293EAC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSpoken:a1 printed:a2];

  return v4;
}

uint64_t IntentDialog.init(full:supporting:systemImageName:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_18F294FDC();
  v11 = sub_18F117248();
  type metadata accessor for _SpeakableString(0);
  v12 = sub_18F117248();
  v13 = sub_18F293EAC(v11, v12);
  v14 = sub_18F117248();
  v15 = sub_18F117248();
  v16 = v10;
  sub_18F293EAC(v14, v15);
  OUTLINED_FUNCTION_22_22();
  v18 = v17;
  sub_18F11CE88(v5, v17);
  sub_18F11CE88(v7, v18);
  *v9 = v13;
  v9[1] = v16;
  v9[2] = v3;
  v9[3] = v1;
  type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_16();

  return swift_storeEnumTagMultiPayload();
}

uint64_t IntentDialog.init(withAsyncIdentifier:templateDirectoryURL:parameters:)()
{
  OUTLINED_FUNCTION_69();
  v0[22] = v1;
  v0[23] = v2;
  v0[20] = v3;
  v0[21] = v4;
  v0[19] = v5;
  v6 = sub_18F520B3C();
  v0[24] = v6;
  OUTLINED_FUNCTION_51(v6);
  v0[25] = v7;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v8 = type metadata accessor for _SpeakableString(0);
  v0[30] = v8;
  OUTLINED_FUNCTION_10(v8);
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v9 = sub_18F520F1C();
  v0[33] = v9;
  OUTLINED_FUNCTION_51(v9);
  v0[34] = v10;
  v0[35] = OUTLINED_FUNCTION_34_0();
  v11 = sub_18F520C8C();
  v0[36] = v11;
  OUTLINED_FUNCTION_51(v11);
  v0[37] = v12;
  v0[38] = OUTLINED_FUNCTION_34_0();
  v13 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_10(v13);
  v0[39] = OUTLINED_FUNCTION_34_0();
  v14 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_18F2941C8()
{
  v1 = v0;
  v21 = v0 + 2;
  v22 = v0 + 18;
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[22];
  v19 = v0[23];
  v20 = v0[33];
  v11 = v0 + 20;
  v9 = v0[20];
  v10 = v11[1];
  (*(v4 + 16))(v3, v8, v5);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F48);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  *v2 = v9;
  *(v2 + 1) = v10;
  (*(v4 + 32))(&v2[v13], v3, v5);
  *&v2[v14] = v19;
  v1[40] = type metadata accessor for IntentDialog.Storage(0);
  swift_storeEnumTagMultiPayload();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F520EDC();
  sub_18F520E8C();
  (*(v7 + 8))(v6, v20);
  OUTLINED_FUNCTION_71_3();
  sub_18F2E9CD0();
  v16 = v15;
  v1[41] = v15;

  v1[2] = v1;
  v1[7] = v22;
  v1[3] = sub_18F2943F4;
  v17 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F50);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_18F294BB8;
  v1[13] = &block_descriptor_5;
  v1[14] = v17;
  [v16 getResultWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_18F2943F4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_18F294958;
  }

  else
  {

    v2 = sub_18F294508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F294508()
{
  v1 = v0[18];
  v2 = [v1 speak];
  v3 = sub_18F521CAC();

  if (*(v3 + 16))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  OUTLINED_FUNCTION_66();
  sub_18F520ACC();
  v4 = [v1 print];
  v5 = sub_18F521CAC();

  v41 = v1;
  if (*(v5 + 16))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[25];

  sub_18F520ACC();
  v38 = *(v11 + 16);
  v38(v6, v7, v10);
  v40 = v8;
  sub_18F293A04(v6 + *(v8 + 20));
  v12 = *(v11 + 8);
  v12(v9, v10);
  v39 = v12;
  v12(v7, v10);
  v13 = [v41 captionSpeak];
  v14 = sub_18F521CAC();

  if (*(v14 + 16))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  sub_18F520ACC();
  v15 = [v41 captionPrint];
  v16 = sub_18F521CAC();

  if (*(v16 + 16))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  v37 = v0[39];
  v17 = v0[37];
  v35 = v0[41];
  v36 = v0[36];
  v18 = v0[31];
  v19 = v0[26];
  v20 = v0[27];
  v21 = v0[24];
  v33 = v0[32];
  v34 = v0[22];
  v22 = v0[19];

  sub_18F520ACC();
  v38(v18, v20, v21);
  sub_18F293A04(v18 + *(v40 + 20));
  v39(v19, v21);
  v23 = OUTLINED_FUNCTION_165();
  (v39)(v23);
  sub_18F294FDC();
  v24 = sub_18F117248();
  v25 = sub_18F117248();
  v26 = sub_18F293EAC(v24, v25);
  v27 = sub_18F117248();
  v28 = sub_18F117248();
  v29 = sub_18F293EAC(v27, v28);

  swift_unknownObjectRelease();
  (*(v17 + 8))(v34, v36);
  sub_18F11CE88(v18, type metadata accessor for _SpeakableString);
  sub_18F11CE88(v33, type metadata accessor for _SpeakableString);
  OUTLINED_FUNCTION_6_39();
  sub_18F11CE88(v37, v30);
  *v22 = v26;
  v22[1] = v29;
  v22[2] = 0;
  v22[3] = 0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_70_3();

  OUTLINED_FUNCTION_71();

  return v31();
}

uint64_t sub_18F294958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_2();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_24_4();
  a18 = v20;
  swift_willThrow();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v24 = v20[42];
  v25 = sub_18F52165C();
  __swift_project_value_buffer(v25, qword_1ED7077A8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v26 = v24;
  v27 = sub_18F52163C();
  v28 = sub_18F52221C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v20[42];
    v31 = v20[20];
    v30 = v20[21];
    v32 = swift_slowAlloc();
    swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_51_1();
    a9 = v33;
    *v32 = 136315394;
    v34 = sub_18F11897C(v31, v30, &a9);

    *(v32 + 4) = v34;
    *(v32 + 12) = 2112;
    v35 = v29;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v36;
    *v21 = v36;
    _os_log_impl(&dword_18F0E9000, v27, v28, "Unable to create dialog representation for  %s: %@", v32, 0x16u);
    sub_18F0EF1A8(v21, &qword_1EACD0578);
    OUTLINED_FUNCTION_65();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  v38 = v20[41];
  v37 = v20[42];
  v39 = v20[39];
  v40 = v20[36];
  v41 = v20[37];
  v42 = v20[22];
  IntentDialog.init(stringLiteral:)();

  (*(v41 + 8))(v42, v40);
  OUTLINED_FUNCTION_6_39();
  sub_18F11CE88(v39, v43);
  OUTLINED_FUNCTION_70_3();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_176();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t *sub_18F294BB8(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_18F10FDAC(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_18F11F4C8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18F294C4C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F522FCC();
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  if (v4)
  {
    while (1)
    {
      v16 = v4;
      v7 = v5[3];
      v6 = v5[4];
      __swift_project_boxed_opaque_existential_1Tm(v5, v7);
      OUTLINED_FUNCTION_47_3();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = &v15;
      OUTLINED_FUNCTION_11_0();
      v17 = v9;
      OUTLINED_FUNCTION_12();
      MEMORY[0x1EEE9AC00](v10);
      v12 = &v15 - v11;
      (*(v6 + 24))(v7, v6);
      __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      swift_getAssociatedConformanceWitness();
      sub_18F522CCC();
      v13 = (v17 + 8);
      if (v2)
      {
        break;
      }

      (*v13)(v12, AssociatedTypeWitness);
      v5 += 5;
      v4 = v16 - 1;
      if (v16 == 1)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }
    }

    (*v13)(v12, AssociatedTypeWitness);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_18F294EB8()
{
  OUTLINED_FUNCTION_18_7();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_18F0FC870;

  return sub_18F28BA5C(v2, v0, v6, v7, v9, v8, v4, v5);
}

unint64_t sub_18F294FDC()
{
  result = qword_1ED6FDEE0;
  if (!qword_1ED6FDEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FDEE0);
  }

  return result;
}

unint64_t sub_18F295024()
{
  result = qword_1EACD3F60;
  if (!qword_1EACD3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3F60);
  }

  return result;
}

uint64_t sub_18F295078()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F2950CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_18F295108(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
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

      return OUTLINED_FUNCTION_67_3(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_67_3(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F295158()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *_s25GeneratedContainerOptionsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F295298()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F2952D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_18F295314(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

      return OUTLINED_FUNCTION_67_3(result, a2);
    }

    *(result + 25) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_67_3(result, a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of _NLGRepresentation.init<A>(instance:representation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  v26 = v13 + 72;
  v27 = *(v13 + 72) + **(v13 + 72);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 16) = v14;
  *v14 = v15;
  v14[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_176();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, a11, a12);
}

void sub_18F29559C()
{
  type metadata accessor for IntentDialog(319);
  if (v0 <= 0x3F)
  {
    sub_18F12ACC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_18F295638(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_18F2956EC()
{
  sub_18F52288C();
  sub_18F52254C();
  if (v0 <= 0x3F)
  {
    sub_18F12ACC8();
    if (v1 <= 0x3F)
    {
      sub_18F119B88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18F2957F0()
{
  sub_18F52288C();
  sub_18F52254C();
  if (v0 <= 0x3F)
  {
    sub_18F12ACC8();
    if (v1 <= 0x3F)
    {
      sub_18F119B88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_75Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_11_26(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v8 = a1 + *(a3 + 48);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void __swift_store_extra_inhabitant_index_76Tm()
{
  OUTLINED_FUNCTION_73_2();
  if (v2)
  {
    *v1 = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
    OUTLINED_FUNCTION_72_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

unint64_t sub_18F295A4C()
{
  result = qword_1EACD4458;
  if (!qword_1EACD4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4458);
  }

  return result;
}

unint64_t sub_18F295AF4()
{
  result = qword_1EACD4460;
  if (!qword_1EACD4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4460);
  }

  return result;
}

unint64_t sub_18F295B9C()
{
  result = qword_1EACD4480;
  if (!qword_1EACD4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4480);
  }

  return result;
}

unint64_t sub_18F295BF0()
{
  result = qword_1EACD4498;
  if (!qword_1EACD4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4498);
  }

  return result;
}

unint64_t sub_18F295C44()
{
  result = qword_1EACD44A0;
  if (!qword_1EACD44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44A0);
  }

  return result;
}

unint64_t sub_18F295C98()
{
  result = qword_1EACD44A8;
  if (!qword_1EACD44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44A8);
  }

  return result;
}

unint64_t sub_18F295D40()
{
  result = qword_1EACD44B0;
  if (!qword_1EACD44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44B0);
  }

  return result;
}

uint64_t sub_18F295EE4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_29_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F295F7C()
{
  result = qword_1EACD4500;
  if (!qword_1EACD4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4500);
  }

  return result;
}

unint64_t sub_18F295FD0()
{
  result = qword_1EACD4518;
  if (!qword_1EACD4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4518);
  }

  return result;
}

unint64_t sub_18F296024()
{
  result = qword_1EACD4520;
  if (!qword_1EACD4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4520);
  }

  return result;
}

uint64_t sub_18F296078(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 88) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_18F0FC874;

  return sub_18F28C42C(a1, v7, v8, (v1 + 6), v1 + v6, v4, v5);
}

uint64_t sub_18F296174()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F0FC874;

  return sub_18F3175B8();
}

uint64_t sub_18F296228(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_8()
{

  return swift_dynamicCast();
}

uint64_t _URLRepresentableIntent.urlRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2963A4()
{
  OUTLINED_FUNCTION_21();
  (*(*(v0 + 96) + 32))(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  type metadata accessor for IntentURLRepresentation();
  *v3 = v0;
  v3[1] = sub_18F296498;

  return sub_18F3433D4();
}

uint64_t sub_18F296498()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  sub_18F298D8C(v1[6], v1[7], v1[8], *(v2 + 72));
  v5 = v4[1];

  return v5();
}

uint64_t sub_18F2965CC()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 1056) = v1;
  *(v0 + 936) = v2;
  *(v0 + 928) = v3;
  *(v0 + 920) = v4;
  *(v0 + 912) = v5;
  *(v0 + 904) = v6;
  *(v0 + 896) = v5;
  sub_18F29A670(v4, v3, v2, v1);
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F296650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  switch(*(v16 + 1056))
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 952) = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_29_23(v37);
      goto LABEL_15;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 960) = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_29_23(v33);
      goto LABEL_15;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 968) = v35;
      *v35 = v36;
      OUTLINED_FUNCTION_29_23(v35);
      goto LABEL_15;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 976) = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_29_23(v31);
LABEL_15:
      OUTLINED_FUNCTION_28_2();

      sub_18F299A00(v39, v40);
      return;
    default:
      v17 = *(v16 + 936);
      v18 = 0;
      *(v16 + 944) = sub_18F111F70(*(v16 + 920));
      v19 = *(v16 + 928);
      v20 = MEMORY[0x1E69E6158];
      break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_13();
    if (v22)
    {
      break;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x193ADBE10](v18);
    }

    else
    {
      OUTLINED_FUNCTION_51_6();
      if (v18 >= v24)
      {
        goto LABEL_25;
      }

      v25 = *(v23 + 8 * v18 + 32);
    }

    *(v16 + 1008) = v25;
    *(v16 + 1016) = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_62_6();
    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_24_26();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_39();
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_55_7(v50);
      sub_18F205CF0();
      OUTLINED_FUNCTION_25_19();
      *v20 = v51;
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_28_2();

      sub_18F345248(v52, v53, v54, v55);
      return;
    }

    *(v16 + 744) = v19;
    *(v16 + 752) = v17;
    OUTLINED_FUNCTION_3_36();
    *(v16 + 872) = v18;
    v26 = sub_18F522C9C();
    MEMORY[0x193ADB000](v26);

    OUTLINED_FUNCTION_33_15();
    v27 = *(v16 + 720);
    *(v16 + 680) = *(v16 + 712);
    *(v16 + 688) = v27;
    OUTLINED_FUNCTION_7_32();
    swift_getAtPartialKeyPath();
    OUTLINED_FUNCTION_52_7();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 576);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_6_40();
    a9 = v20;
    a10 = v28;
    OUTLINED_FUNCTION_8_5();
    v19 = sub_18F5225CC();
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 608);
    ++v18;
    v17 = v30;
  }

  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F296A1C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F296B20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F296C24()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F296D28()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F296E2C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  OUTLINED_FUNCTION_44_10(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 1032) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F296F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_30_18();
  v20 = MEMORY[0x1E69E6158];
  if (v19)
  {
    OUTLINED_FUNCTION_22_23();
    v21 = sub_18F522C9C();
    MEMORY[0x193ADB000](v21);

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_37_15();
    OUTLINED_FUNCTION_28_29();
    v22 = (v16 + 103);
    v51 = v20;
    v52 = v23;
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_71_0();
  }

  else
  {
    OUTLINED_FUNCTION_26_23();
    v24 = sub_18F522C9C();
    MEMORY[0x193ADB000](v24);

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_27_24();
    OUTLINED_FUNCTION_28_29();
    v22 = (v16 + 95);
    v51 = v20;
    v52 = v25;
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_71_0();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 67));
  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 76));
  for (i = v16[127]; ; ++i)
  {
    OUTLINED_FUNCTION_34_16();
    if (v28)
    {
      break;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x193ADBE10](i);
    }

    else
    {
      OUTLINED_FUNCTION_51_6();
      if (i >= v30)
      {
        goto LABEL_20;
      }

      v31 = *(v29 + 8 * i + 32);
    }

    v16[126] = v31;
    v16[127] = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_62_6();
    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_24_26();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_39();
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_55_7(v44);
      sub_18F205CF0();
      OUTLINED_FUNCTION_25_19();
      *v17 = v45;
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_28_2();

      sub_18F345248(v46, v47, v48, v49);
      return;
    }

    v16[93] = v22;
    v16[94] = v18;
    OUTLINED_FUNCTION_3_36();
    v16[109] = i;
    v32 = sub_18F522C9C();
    MEMORY[0x193ADB000](v32);

    OUTLINED_FUNCTION_33_15();
    v17 = v16[90];
    v16[85] = v16[89];
    v16[86] = v17;
    OUTLINED_FUNCTION_7_32();
    swift_getAtPartialKeyPath();
    OUTLINED_FUNCTION_52_7();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 72));
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_6_40();
    v51 = v20;
    v52 = v33;
    OUTLINED_FUNCTION_8_5();
    v22 = OUTLINED_FUNCTION_38_11();
    v35 = v34;

    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 76));
    v18 = v35;
  }

  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, v51, v52, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F29724C()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838);
    if (OUTLINED_FUNCTION_48_8())
    {
      if (*(v0 + 440))
      {
        sub_18F0FD0B4((v0 + 416), v0 + 376);
        OUTLINED_FUNCTION_49((v0 + 376));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1040) = v1;
        *v1 = v2;
        v3 = OUTLINED_FUNCTION_4_43(v1);

        return URLRepresentableEntity.urlRepresentation.getter(v3, v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_13();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 456, &qword_1EACD0620);
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0;
  }

  sub_18F0EF148(v0 + 416, &qword_1EACD2840);
  v6 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v6);

  return v7();
}

uint64_t sub_18F2973B8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_35_13();
  sub_18F0EF148(v0 + 416, &qword_1EACD2840);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F297430()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F297514()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29756C()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 360))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4598);
    if (swift_dynamicCast())
    {
      if (*(v0 + 320))
      {
        v1 = *(v0 + 904);
        sub_18F0FD0B4((v0 + 296), v0 + 256);
        v2 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 256), *(v0 + 280));
        URLRepresentableEnum.urlRepresentation.getter(v2, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
        goto LABEL_8;
      }
    }

    else
    {
      *(v0 + 328) = 0;
      *(v0 + 296) = 0u;
      *(v0 + 312) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 336, &qword_1EACD0620);
    OUTLINED_FUNCTION_36_16();
  }

  v3 = *(v0 + 904);
  sub_18F0EF148(v0 + 296, &qword_1EACD4590);
  v4 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F2976C8()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  sub_18F0EF148(v0 + 296, &qword_1EACD4590);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F297748()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4588);
    if (OUTLINED_FUNCTION_49_9())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        OUTLINED_FUNCTION_49((v0 + 136));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1048) = v1;
        *v1 = v2;
        v3 = OUTLINED_FUNCTION_4_43(v1);

        return _URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD4580);
  v7 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v7);

  return v8();
}

uint64_t sub_18F2978B4()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_18F0EF148(v0 + 176, &qword_1EACD4580);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F297938()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F297A1C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F297A74()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4578);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        v1 = *(v0 + 904);
        sub_18F0FD0B4((v0 + 56), v0 + 16);
        v2 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
        _URLRepresentableEnum.urlRepresentation.getter(v2, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
        goto LABEL_8;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 96, &qword_1EACD0620);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  v3 = *(v0 + 904);
  sub_18F0EF148(v0 + 56, &qword_1EACD4570);
  v4 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F297BDC()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_18F0EF148(v0 + 56, &qword_1EACD4570);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F297C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 1056) = a6;
  *(v6 + 936) = a5;
  *(v6 + 928) = a4;
  *(v6 + 920) = a3;
  *(v6 + 912) = a2;
  *(v6 + 904) = a1;
  *(v6 + 896) = a2;
  sub_18F29A670(a3, a4, a5, a6);

  return MEMORY[0x1EEE6DFA0](sub_18F297CF0, 0, 0);
}

void sub_18F297CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  switch(*(v16 + 1056))
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 952) = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_29_23(v37);
      goto LABEL_15;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 960) = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_29_23(v33);
      goto LABEL_15;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 968) = v35;
      *v35 = v36;
      OUTLINED_FUNCTION_29_23(v35);
      goto LABEL_15;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 976) = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_29_23(v31);
LABEL_15:
      OUTLINED_FUNCTION_28_2();

      sub_18F299E14(v39, v40);
      return;
    default:
      v17 = *(v16 + 936);
      v18 = 0;
      *(v16 + 944) = sub_18F111F70(*(v16 + 920));
      v19 = *(v16 + 928);
      v20 = MEMORY[0x1E69E6158];
      break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_13();
    if (v22)
    {
      break;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x193ADBE10](v18);
    }

    else
    {
      OUTLINED_FUNCTION_51_6();
      if (v18 >= v24)
      {
        goto LABEL_25;
      }

      v25 = *(v23 + 8 * v18 + 32);
    }

    *(v16 + 1008) = v25;
    *(v16 + 1016) = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_62_6();
    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_24_26();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_39();
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_55_7(v50);
      sub_18F29A61C();
      OUTLINED_FUNCTION_25_19();
      *v20 = v51;
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_28_2();

      sub_18F345248(v52, v53, v54, v55);
      return;
    }

    *(v16 + 744) = v19;
    *(v16 + 752) = v17;
    OUTLINED_FUNCTION_3_36();
    *(v16 + 872) = v18;
    v26 = sub_18F522C9C();
    MEMORY[0x193ADB000](v26);

    OUTLINED_FUNCTION_33_15();
    v27 = *(v16 + 720);
    *(v16 + 680) = *(v16 + 712);
    *(v16 + 688) = v27;
    OUTLINED_FUNCTION_7_32();
    swift_getAtPartialKeyPath();
    OUTLINED_FUNCTION_52_7();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 576);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_6_40();
    a9 = v20;
    a10 = v28;
    OUTLINED_FUNCTION_8_5();
    v19 = sub_18F5225CC();
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 608);
    ++v18;
    v17 = v30;
  }

  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F2980BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2981C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2982C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2983C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2984CC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  OUTLINED_FUNCTION_44_10(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 1032) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F2985AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_30_18();
  v20 = MEMORY[0x1E69E6158];
  if (v19)
  {
    OUTLINED_FUNCTION_22_23();
    v21 = sub_18F522C9C();
    MEMORY[0x193ADB000](v21);

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_37_15();
    OUTLINED_FUNCTION_28_29();
    v22 = (v16 + 103);
    v51 = v20;
    v52 = v23;
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_71_0();
  }

  else
  {
    OUTLINED_FUNCTION_26_23();
    v24 = sub_18F522C9C();
    MEMORY[0x193ADB000](v24);

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_27_24();
    OUTLINED_FUNCTION_28_29();
    v22 = (v16 + 95);
    v51 = v20;
    v52 = v25;
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_71_0();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 67));
  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 76));
  for (i = v16[127]; ; ++i)
  {
    OUTLINED_FUNCTION_34_16();
    if (v28)
    {
      break;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x193ADBE10](i);
    }

    else
    {
      OUTLINED_FUNCTION_51_6();
      if (i >= v30)
      {
        goto LABEL_20;
      }

      v31 = *(v29 + 8 * i + 32);
    }

    v16[126] = v31;
    v16[127] = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_62_6();
    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_24_26();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_39();
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_55_7(v44);
      sub_18F29A61C();
      OUTLINED_FUNCTION_25_19();
      *v17 = v45;
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_28_2();

      sub_18F345248(v46, v47, v48, v49);
      return;
    }

    v16[93] = v22;
    v16[94] = v18;
    OUTLINED_FUNCTION_3_36();
    v16[109] = i;
    v32 = sub_18F522C9C();
    MEMORY[0x193ADB000](v32);

    OUTLINED_FUNCTION_33_15();
    v17 = v16[90];
    v16[85] = v16[89];
    v16[86] = v17;
    OUTLINED_FUNCTION_7_32();
    swift_getAtPartialKeyPath();
    OUTLINED_FUNCTION_52_7();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 72));
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_6_40();
    v51 = v20;
    v52 = v33;
    OUTLINED_FUNCTION_8_5();
    v22 = OUTLINED_FUNCTION_38_11();
    v35 = v34;

    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 76));
    v18 = v35;
  }

  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, v51, v52, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F2988EC()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838);
    if (OUTLINED_FUNCTION_48_8())
    {
      if (*(v0 + 440))
      {
        sub_18F0FD0B4((v0 + 416), v0 + 376);
        OUTLINED_FUNCTION_49((v0 + 376));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1040) = v1;
        *v1 = v2;
        v3 = OUTLINED_FUNCTION_4_43(v1);

        return URLRepresentableEntity.urlRepresentation.getter(v3, v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_13();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 456, &qword_1EACD0620);
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0;
  }

  sub_18F0EF148(v0 + 416, &qword_1EACD2840);
  v6 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v6);

  return v7();
}

uint64_t sub_18F298A58()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F298B3C()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4588);
    if (OUTLINED_FUNCTION_49_9())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        OUTLINED_FUNCTION_49((v0 + 136));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1048) = v1;
        *v1 = v2;
        v3 = OUTLINED_FUNCTION_4_43(v1);

        return _URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD4580);
  v7 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v7);

  return v8();
}

uint64_t sub_18F298CA8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F298D8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_18F298DD0(uint64_t a1)
{
  v1[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1[15] = swift_task_alloc();
  v2 = sub_18F520C8C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F298EC8, 0, 0);
}

uint64_t sub_18F298EC8()
{
  v9 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193ADAF90](2);
  sub_18F206490(1);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 37;
  v0[5] = 0xE100000000000000;
  v0[6] = 9509;
  v0[7] = 0xE200000000000000;
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v1 = OUTLINED_FUNCTION_38_11();
  MEMORY[0x193ADB000](v1);

  KeyPath = swift_getKeyPath();
  sub_18F204308(KeyPath);

  v0[8] = 0;
  v0[10] = 37;
  v0[9] = 0xE000000000000000;
  v0[11] = 0xE100000000000000;
  v0[12] = 9509;
  v0[13] = 0xE200000000000000;
  OUTLINED_FUNCTION_8_5();
  v3 = OUTLINED_FUNCTION_38_11();
  MEMORY[0x193ADB000](v3);

  v0[19] = v9;
  v0[20] = 0xE000000000000000;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v4;
  *v4 = v5;
  v4[1] = sub_18F2990BC;
  v7 = v0[14];
  v6 = v0[15];

  return sub_18F297C60(v6, v7, v9, 0, 0xE000000000000000, 0);
}

uint64_t sub_18F2990BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2991D8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  v2 = v0[16];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v1, &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = OUTLINED_FUNCTION_42_9();
    v6(v5);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    v7 = OUTLINED_FUNCTION_66_4();
    v9 = OUTLINED_FUNCTION_31_24(v7, v8);
    v10(v9);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v2);
  }

  OUTLINED_FUNCTION_71();

  return v11();
}

uint64_t _URLRepresentableIntent.perform()()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1 = OUTLINED_FUNCTION_34_0();
  v2 = OUTLINED_FUNCTION_47_11(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return _URLRepresentableIntent.urlRepresentation.getter(v6, v7, v8);
}

uint64_t sub_18F299424()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void static _URLRepresentableIntent<>.urlRepresentation.getter()
{
  OUTLINED_FUNCTION_58_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_57_6();

  sub_18F344B78(v2, v0, v1);
}

{
  OUTLINED_FUNCTION_58_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_57_6();

  sub_18F344B88(v2, v0, v1);
}

uint64_t _URLRepresentableIntent<>.perform()()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1 = OUTLINED_FUNCTION_34_0();
  v2 = OUTLINED_FUNCTION_47_11(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return _URLRepresentableIntent.urlRepresentation.getter(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1 = OUTLINED_FUNCTION_34_0();
  v2 = OUTLINED_FUNCTION_47_11(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return _URLRepresentableIntent.urlRepresentation.getter(v6, v7, v8);
}

uint64_t sub_18F2997C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2998A4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v1, &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = OUTLINED_FUNCTION_42_9();
    v6(v5);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    v7 = OUTLINED_FUNCTION_66_4();
    v9 = OUTLINED_FUNCTION_31_24(v7, v8);
    v10(v9);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v2);
  }

  OUTLINED_FUNCTION_71();

  return v11();
}

uint64_t sub_18F299A00(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F299A20, 0, 0);
}

uint64_t sub_18F299A20()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_65_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v2 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_50_3(v2, v3);
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_54_8();
    v4();
    OUTLINED_FUNCTION_22();
    v5 = sub_18F10E0AC();
    v1[25] = OUTLINED_FUNCTION_46_11(v5);

    v6 = swift_task_alloc();
    v1[26] = v6;
    *v6 = v1;
    v6[1] = sub_18F299BCC;

    return sub_18F1316DC();
  }

  else
  {
    v8 = v1[23];
    OUTLINED_FUNCTION_36_16();
    sub_18F0EF148(v0, &qword_1EACD45B0);
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0;
    OUTLINED_FUNCTION_71();

    return v9();
  }
}

uint64_t sub_18F299BCC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 224) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_59_2(v10);

    return sub_18F1321C4(v11);
  }
}

uint64_t sub_18F299D18()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F299E14(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F299E34, 0, 0);
}

uint64_t sub_18F299E34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_65_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v2 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_50_3(v2, v3);
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_54_8();
    v4();
    OUTLINED_FUNCTION_22();
    v5 = sub_18F10E0AC();
    v1[25] = OUTLINED_FUNCTION_46_11(v5);

    v6 = swift_task_alloc();
    v1[26] = v6;
    *v6 = v1;
    v6[1] = sub_18F299FE0;

    return sub_18F1316DC();
  }

  else
  {
    v8 = v1[23];
    OUTLINED_FUNCTION_36_16();
    sub_18F0EF148(v0, &qword_1EACD45B0);
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0;
    OUTLINED_FUNCTION_71();

    return v9();
  }
}

uint64_t sub_18F299FE0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 224) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_59_2(v10);

    return sub_18F1321C4(v11);
  }
}

uint64_t sub_18F29A12C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F29A228()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29A28C()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0[25] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  sub_18F1A0A8C(0x746567726174, 0xE600000000000000, v3, v2, (v0 + 17));
  v4 = v0[20];
  if (v4)
  {
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 17, v0[20]);
    (*(*(v5 + 8) + 72))(v4);
    if (v0[15])
    {
      __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v0[15]);
      sub_18F11E26C();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
    v6 = &qword_1EACD0620;
    v7 = (v0 + 12);
  }

  else
  {

    v6 = &qword_1EACD0F20;
    v7 = (v0 + 17);
  }

  sub_18F0EF148(v7, v6);
  v8 = v0[23];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F29A420()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29A484()
{
  OUTLINED_FUNCTION_69();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F29A528;

  return sub_18F298DD0(v2);
}

uint64_t sub_18F29A528()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  return result;
}

unint64_t sub_18F29A61C()
{
  result = qword_1EACD45A0;
  if (!qword_1EACD45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD45A0);
  }

  return result;
}

uint64_t sub_18F29A670(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_9()
{

  return swift_dynamicCast();
}

uint64_t sub_18F29A708()
{
  type metadata accessor for ResolverCache();
  v0 = swift_allocObject();
  result = sub_18F29DB28();
  qword_1ED707678 = v0;
  return result;
}

uint64_t sub_18F29A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F29A770, v4, 0);
}

uint64_t sub_18F29A770()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[7];
  v0[12] = sub_18F29D254(v3, v2, v1);
  v0[5] = v2;
  v0[6] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_18F29A880;

  return sub_18F29AA84();
}

uint64_t sub_18F29A880(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_85();
  v7 = v6;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_39();
  *v10 = v9;
  v7[14] = v2;

  if (v2)
  {
    v11 = v7[11];
    v12 = sub_18F29AA20;
  }

  else
  {
    v13 = v7[11];
    v7[15] = a2;
    v7[16] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + 2));
    v12 = sub_18F29A9BC;
    v11 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_18F29A9BC()
{
  OUTLINED_FUNCTION_69();

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_18F29AA20()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29AA84()
{
  OUTLINED_FUNCTION_69();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = *v2;
  v1[22] = *(*v2 + 88);
  v1[23] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[24] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v1[25] = v7;
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F29AB80, v0, 0);
}

uint64_t sub_18F29AB80()
{
  v1 = *(v0 + 152);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_66();
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  if (((*(*(*(*(v2 + 8) + 8) + 8) + 24))(v3) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_18F102F54(*(v0 + 144), v0 + 96);
  if (!*(v0 + 120))
  {
    sub_18F0EF148(v0 + 96, &qword_1EACD0620);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  sub_18F29E6F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 152), v8);
    (*(v9 + 24))(v8, v9);
    if (*(v0 + 40))
    {
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      v10 = OUTLINED_FUNCTION_25_20();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    }

    else
    {
      sub_18F0EF148(v0 + 16, &qword_1EACD0D00);
      v10 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 192);
    v14 = *(v0 + 152);
    (*(*(v0 + 176) + 56))(*(v0 + 184), *(v0 + 176));
    swift_getAssociatedConformanceWitness();
    v15 = sub_18F392E38(v13);
    (*(v12 + 8))(v11, v13);
    sub_18F25D8DC(v15);
    v16 = v10;
    v17 = *(v1 + 24);
    v18 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1Tm(v14, v17);
    (*(v18 + 16))(v17, v18);
    if (*(v0 + 80))
    {
      OUTLINED_FUNCTION_29_24();
      v19 = OUTLINED_FUNCTION_25_20();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    }

    else
    {
      sub_18F0EF148(v0 + 56, &qword_1EACD0D00);
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    v22 = *(v0 + 152);
    sub_18F25D8DC(v19);
    v23 = v16;
    v24 = *(v1 + 24);
    v25 = __swift_project_boxed_opaque_existential_1Tm(v22, v24);
    OUTLINED_FUNCTION_11_0();
    v27 = v26;
    v28 = swift_task_alloc();
    (*(v27 + 16))(v28, v25, v24);
    v29 = sub_18F29B060(v28, v24);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v7 = sub_18F29B140(v21, v29, v31, v33, v35, v23, v20);
    v6 = v36;

    goto LABEL_13;
  }

  v39 = *(v0 + 176);

  v6 = swift_allocObject();
  v6[1] = vextq_s8(v39, v39, 8uLL);
  v7 = &unk_18F54F828;
LABEL_13:

  v37 = *(v0 + 8);

  return v37(v7, v6);
}

uint64_t sub_18F29AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18F29B000, 0, 0);
}

uint64_t sub_18F29B000()
{
  OUTLINED_FUNCTION_69();
  __swift_storeEnumTagSinglePayload(*(v0 + 16), 1, 1, *(v0 + 24));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F29B060(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  OUTLINED_FUNCTION_12_9();
  (*(v7 + 8))(a1, a2);
  return AssociatedTypeWitness;
}

void *sub_18F29B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v81 = a4;
  v80 = a2;
  v89 = a7;
  v12 = *a7;
  sub_18F52165C();
  OUTLINED_FUNCTION_11_0();
  v83 = v14;
  v84 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v82 = v15;
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F102F54(a1, &v93);
  v88 = a5;
  if (v94)
  {
    sub_18F0FD0B4(&v93, &v95);
    __swift_project_boxed_opaque_existential_1Tm(&v95, v96);
    OUTLINED_FUNCTION_24_27();
    DynamicType = swift_getDynamicType();
    v85 = v97;
    v86 = DynamicType;
    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
  }

  else
  {
    sub_18F0EF148(&v93, &qword_1EACD0620);
    v17 = *(v12 + 80);
    v85 = *(v12 + 88);
    v86 = v17;
  }

  v18 = *(a6 + 16);
  v19 = a6 + 32;
  v20 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    do
    {
      sub_18F0FD724(v19, &v95);
      v21 = sub_18F29B904(&v95);
      if (v7)
      {
        goto LABEL_39;
      }

      if (v21)
      {
        sub_18F0FD0B4(&v95, &v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18F3AACCC();
          v20 = v98;
        }

        v23 = *(v20 + 16);
        if (v23 >= *(v20 + 24) >> 1)
        {
          OUTLINED_FUNCTION_24_27();
          sub_18F3AACCC();
          v20 = v98;
        }

        *(v20 + 16) = v23 + 1;
        sub_18F0FD0B4(&v93, v20 + 40 * v23 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v95);
      }

      v19 += 40;
    }

    while (--v18);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v24 = sub_18F52163C();
  v25 = sub_18F52223C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v95 = v79;
    *v26 = 136446466;
    v27 = v86;
    v28 = sub_18F52307C();
    v30 = sub_18F11897C(v28, v29, &v95);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v32 = sub_18F29E1DC(v80, v31, v81, v88);
    v34 = sub_18F11897C(v32, v33, &v95);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_18F0E9000, v24, v25, "Building resolver: %{public}s → %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  else
  {

    v27 = v86;
  }

  v35 = v85;
  v36 = qword_1ED707658;
  v37 = v89;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v38 = sub_18F19E2D0(v27, v35, *(v37 + v36));
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v40 = v38;
    v41 = sub_18F52163C();
    sub_18F52220C();
    v42 = OUTLINED_FUNCTION_11_27();
    v44 = os_log_type_enabled(v42, v43);
    v88 = v40;
    if (v44)
    {
      OUTLINED_FUNCTION_14_30();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_30();
      v85 = swift_slowAlloc();
      *&v93 = v85;
      *v45 = 136315138;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD28);
      v47 = MEMORY[0x193ADB2B0](v40, v46);
      v49 = sub_18F11897C(v47, v48, &v93);

      *(v45 + 4) = v49;
      v40 = v88;
      OUTLINED_FUNCTION_23_21();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      v55 = OUTLINED_FUNCTION_0_62();
      MEMORY[0x193ADD350](v55);
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    v56 = *(v40 + 16);
    if (v56)
    {
      *&v93 = MEMORY[0x1E69E7CC0];
      sub_18F3AACAC();
      v57 = 0;
      v39 = v93;
      while (v57 < *(v40 + 16))
      {
        v92 = *(v40 + 8 * v57 + 32);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        sub_18F29B98C(&v92, v89, &v91, &v98);
        if (v8)
        {
        }

        v8 = 0;

        v58 = v98;
        *&v93 = v39;
        v59 = *(v39 + 16);
        if (v59 >= *(v39 + 24) >> 1)
        {
          OUTLINED_FUNCTION_24_27();
          sub_18F3AACAC();
          v39 = v93;
        }

        ++v57;
        *(v39 + 16) = v59 + 1;
        *(v39 + 8 * v59 + 32) = v58;
        v40 = v88;
        if (v56 == v57)
        {

          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_39:

      __swift_destroy_boxed_opaque_existential_1Tm(&v95);

      __break(1u);
      return result;
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_30:
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  if (*(v20 + 16))
  {

    v61 = v39;
LABEL_34:
    v64 = v83;
    v63 = v84;
    (*(v83 + 16))(v87, v90 + OBJC_IVAR____TtC10AppIntents13ResolverCache_logger, v84);
    v65 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 2) = *(v12 + 80);
    *(v67 + 3) = *(v12 + 88);
    *(v67 + 4) = v61;
    (*(v64 + 32))(&v67[v65], v87, v63);
    *&v67[v66] = v20;
    return &unk_18F54F810;
  }

  v61 = v39;
  v62 = *(v39 + 16);

  if (v62)
  {
    goto LABEL_34;
  }

  v68 = sub_18F52163C();
  v69 = sub_18F52223C();
  v70 = OUTLINED_FUNCTION_11_27();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_14_30();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_30();
    v73 = swift_slowAlloc();
    *&v93 = v73;
    *v72 = 136446210;
    v74 = sub_18F52307C();
    v76 = sub_18F11897C(v74, v75, &v93);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_18F0E9000, v68, v69, "Did not find any resolver paths for %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    v77 = OUTLINED_FUNCTION_0_62();
    MEMORY[0x193ADD350](v77);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  return 0;
}

BOOL sub_18F29B904(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v1 = sub_18F410C04();
  return v1 == swift_getAssociatedTypeWitness();
}

uint64_t sub_18F29B98C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = qword_1ED707660;
  swift_beginAccess();
  v10 = *(a2 + v9);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F29D09C(v8, v10);
  v12 = v11;

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v12;
  }

  return result;
}

uint64_t sub_18F29BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F29BA70, 0, 0);
}

uint64_t sub_18F29BA70()
{
  v33 = v0;
  sub_18F102F54(v0[34], (v0 + 2));
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v1 = sub_18F52163C();
  v2 = sub_18F52223C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[36];
    OUTLINED_FUNCTION_14_30();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_30();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136446210;
    v6 = sub_18F29C418(v3);
    v8 = sub_18F11897C(v6, v7, &v32);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v9, v10, "Attempting resolver chain %{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v11 = OUTLINED_FUNCTION_0_62();
    MEMORY[0x193ADD350](v11);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  v12 = v0[36];
  v13 = *(v12 + 16);
  v0[38] = v13;
  v0[39] = 0;
  if (!v13)
  {
    v19 = sub_18F52163C();
    sub_18F5221FC();
    v20 = OUTLINED_FUNCTION_11_27();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_14_30();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_30();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      sub_18F102F54((v0 + 2), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
      v24 = sub_18F52194C();
      v26 = sub_18F11897C(v24, v25, &v32);

      *(v22 + 4) = v26;
      OUTLINED_FUNCTION_16_28(&dword_18F0E9000, v27, v28, "Resolver chain Result %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    v29 = v0[33];
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    sub_18F102F54((v0 + 2), v29);
    sub_18F0EF148((v0 + 2), &qword_1EACD0620);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_42_1();

    __asm { BRAA            X1, X16 }
  }

  sub_18F0FD724(v12 + 32, (v0 + 7));
  OUTLINED_FUNCTION_29_24();
  v14 = swift_task_alloc();
  v0[40] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_3_37(v14);
  OUTLINED_FUNCTION_42_1();

  return sub_18F29E964(v15, v16);
}

uint64_t sub_18F29BD1C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F29BE18()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[42] = v2;
  v0[43] = v1;
  OUTLINED_FUNCTION_29_24();
  v0[44] = swift_getAssociatedTypeWitness();
  v3 = sub_18F52254C();
  v0[45] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[46] = v4;
  v5 = swift_task_alloc();
  v0[47] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[48] = v6;
  *v6 = v7;
  v6[1] = sub_18F29BF54;
  v8 = v0[35];

  return sub_18F410C78(v5, (v0 + 2), v8, v2, v1);
}

uint64_t sub_18F29BF54()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F29C050()
{
  v25 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    goto LABEL_4;
  }

  *(v0 + 160) = v2;
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  OUTLINED_FUNCTION_12_9();
  (*(v3 + 32))();

  sub_18F0FD0B4((v0 + 136), v0 + 96);
  sub_18F0EF148(v0 + 16, &qword_1EACD0620);
  sub_18F0FD0B4((v0 + 96), v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v4 = *(v0 + 304);
  v5 = *(v0 + 312) + 1;
  *(v0 + 312) = v5;
  if (v5 == v4)
  {
LABEL_4:
    v6 = sub_18F52163C();
    sub_18F5221FC();
    v7 = OUTLINED_FUNCTION_11_27();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_14_30();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_30();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      sub_18F102F54(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
      v11 = sub_18F52194C();
      v13 = sub_18F11897C(v11, v12, &v24);

      *(v9 + 4) = v13;
      OUTLINED_FUNCTION_16_28(&dword_18F0E9000, v14, v15, "Resolver chain Result %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    v16 = *(v0 + 264);
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    sub_18F102F54(v0 + 16, v16);
    sub_18F0EF148(v0 + 16, &qword_1EACD0620);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_42_1();

    __asm { BRAA            X1, X16 }
  }

  sub_18F0FD724(*(v0 + 288) + 40 * v5 + 32, v0 + 56);
  OUTLINED_FUNCTION_29_24();
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_42_1();

  return sub_18F29E964(v20, v21);
}

uint64_t sub_18F29C328()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_18F0EF148(v0 + 16, &qword_1EACD0620);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29C39C()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_18F0EF148(v0 + 16, &qword_1EACD0620);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F29C418(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  sub_18F3AA158();
  v3 = v14;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_18F0FD724(v4, v13);
      sub_18F0FD724(v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
      v5 = sub_18F52194C();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v14 = v3;
      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_18F3AA158();
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v13[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  sub_18F1905C8();
  v10 = sub_18F5217AC();

  return v10;
}

uint64_t sub_18F29C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v9 = sub_18F52254C();
  v7[34] = v9;
  v7[35] = *(v9 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = *(a7 - 8);
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F29C6A8, 0, 0);
}

uint64_t sub_18F29C6A8()
{
  v1 = v0[30];
  v2 = *(v1 + 16);
  v0[39] = v2;
  if (v2)
  {
    v0[40] = 0;
    v3 = *(v1 + 32);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v4 = sub_18F52163C();
    sub_18F52220C();
    v5 = OUTLINED_FUNCTION_11_27();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[39];
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = 1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v7;

      OUTLINED_FUNCTION_23_21();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      v14 = OUTLINED_FUNCTION_0_62();
      MEMORY[0x193ADD350](v14);
    }

    else
    {
    }

    v17 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F25D8DC(v17);
    v0[41] = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_2_57(v18);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[44] = v15;
    *v15 = v16;
    v15[1] = sub_18F29CE24;
  }

  OUTLINED_FUNCTION_42_1();

  return sub_18F29BA48(v20, v21, v22, v23, v24);
}

uint64_t sub_18F29C858()
{
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 344) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F29C984()
{
  v61 = v0;
  sub_18F102F54((v0 + 2), (v0 + 7));
  v1 = sub_18F52163C();
  sub_18F52220C();
  v2 = OUTLINED_FUNCTION_11_27();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_14_30();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_30();
    v5 = swift_slowAlloc();
    v60 = v5;
    *v4 = 136315138;
    sub_18F102F54((v0 + 7), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
    v6 = sub_18F52194C();
    v8 = v7;
    sub_18F0EF148((v0 + 7), &qword_1EACD0620);
    v9 = sub_18F11897C(v6, v8, &v60);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_16_28(&dword_18F0E9000, v10, v11, "Resolver path result %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  else
  {

    sub_18F0EF148((v0 + 7), &qword_1EACD0620);
  }

  sub_18F102F54((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v12 = swift_dynamicCast();
  v13 = v0[33];
  if (v12)
  {
    v15 = v0[37];
    v14 = v0[38];
    v16 = v0[36];
    v17 = v0[27];
    sub_18F0EF148((v0 + 2), &qword_1EACD0620);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v13);
    v18 = *(v15 + 32);
    v19 = OUTLINED_FUNCTION_66();
    v18(v19);
    (v18)(v17, v14, v13);
    v20 = v17;
    v21 = 0;
    v22 = v13;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);

    OUTLINED_FUNCTION_6();

    return v38();
  }

  __swift_storeEnumTagSinglePayload(v0[36], 1, 1, v0[33]);
  v23 = OUTLINED_FUNCTION_66();
  v24(v23);
  v25 = sub_18F52163C();
  sub_18F52220C();
  v26 = OUTLINED_FUNCTION_11_27();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_14_30();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_30();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136446210;
    v30 = sub_18F52307C();
    v32 = sub_18F11897C(v30, v31, &v60);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v33, v34, "Result is not %{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v35 = OUTLINED_FUNCTION_0_62();
    MEMORY[0x193ADD350](v35);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  sub_18F0EF148((v0 + 2), &qword_1EACD0620);
  v36 = v0[39];
  v37 = v0[40];
  v0[40] = v37 + 1;
  if (v37 + 1 == v36)
  {
    v22 = v0[33];
    v20 = v0[27];
    v21 = 1;
    goto LABEL_10;
  }

  v40 = *(v0[30] + 8 * (v37 + 1) + 32);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v41 = sub_18F52163C();
  sub_18F52220C();
  v42 = OUTLINED_FUNCTION_11_27();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[39];
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v37 + 2;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v44;

    OUTLINED_FUNCTION_23_21();
    _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
    v51 = OUTLINED_FUNCTION_0_62();
    MEMORY[0x193ADD350](v51);
  }

  else
  {
  }

  v60 = v40;
  v52 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F25D8DC(v52);
  v0[41] = v60;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[42] = v53;
  *v53 = v54;
  v55 = OUTLINED_FUNCTION_2_57();

  return sub_18F29BA48(v55, v56, v57, v58, v59);
}

uint64_t sub_18F29CE24()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F29CF20()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v3 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v3 ^ 1u, 1, v1);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F29CFCC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F29D034()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

void sub_18F29D09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_18F3AACCC();
    v5 = v17;
    v6 = (a1 + 32);
    v7 = *(a2 + 16);
    while (1)
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 >= v7)
      {
        break;
      }

      sub_18F1A7FEC(a2 + 32 + 40 * v8, v15);
      sub_18F0FD0B4(v15, v16);
      v17 = v5;
      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_18F3AACCC();
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      sub_18F0FD0B4(v16, v5 + 40 * v10 + 32);
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = sub_18F52163C();
    v12 = sub_18F52221C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18F0E9000, v11, v12, "Unexpected condition, empty Path", v13, 2u);
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    sub_18F29E564();
    swift_allocError();
    *v14 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    swift_willThrow();
  }
}

uint64_t sub_18F29D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45[-v16];
  v18 = *(v8 + 16);
  v18(&v45[-v16], a1, a2);
  v18(v15, a1, a2);
  v51 = a1;
  v18(v12, a1, a2);
  v19 = sub_18F52163C();
  v20 = sub_18F52223C();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_10_30();
    v21 = swift_slowAlloc();
    v50 = v4;
    v22 = v21;
    v48 = swift_slowAlloc();
    v53 = v48;
    *v22 = 136446722;
    v47 = v19;
    v23 = *(v52 + 8);
    v49 = *(v23 + 8);
    v24 = *(v49 + 16);
    v46 = v20;
    v25 = v24(a2);
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0x3E7272653CLL;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = *(v8 + 8);
    v29(v17, a2);
    v30 = sub_18F11897C(v27, v28, &v53);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2082;
    v31 = sub_18F11AB34(a2, v23);
    v33 = v32;
    v29(v15, a2);
    v34 = sub_18F11897C(v31, v33, &v53);

    *(v22 + 14) = v34;
    *(v22 + 22) = 2080;
    v35 = (*(v23 + 80))(a2, v23);
    v37 = v36;
    v29(v12, a2);
    v38 = sub_18F11897C(v35, v37, &v53);

    *(v22 + 24) = v38;
    v39 = v47;
    _os_log_impl(&dword_18F0E9000, v47, v46, "Building resolver for parameter %{public}s<%{public}s> = %s", v22, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  else
  {

    v40 = *(v8 + 8);
    v40(v12, a2);
    v40(v15, a2);
    v40(v17, a2);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v51;
  v43 = v52;
  *&v45[-32] = a2;
  *&v45[-24] = v43;
  *&v45[-16] = v42;
  OUTLINED_FUNCTION_66();
  swift_getAssociatedConformanceWitness();
  return sub_18F29D924(AssociatedTypeWitness, sub_18F29E558, &v45[-48], AssociatedTypeWitness);
}

uint64_t sub_18F29D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v22[-1] - v11;
  (*(a4 + 16))(v22, a3, a4);
  v13 = v23;
  if (v23)
  {
    v21 = a4;
    v14 = a3;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v16 = v15;
    a3 = v14;
    a4 = v21;
    sub_18F392F14(a1, v13, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    sub_18F0EF148(v22, &qword_1EACD0D00);
  }

  (*(v7 + 56))(v8, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18F392F14(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  (*(a4 + 24))(v22, a3, a4);
  v18 = v23;
  if (!v23)
  {
    return sub_18F0EF148(v22, &qword_1EACD0D00);
  }

  v19 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  sub_18F392F14(a1, v18, v19);
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_18F29D924(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolverSpecificationVisitor();
  v6 = sub_18F3B6FD4(a4, MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CC0]);
  v7 = sub_18F52163C();
  sub_18F52220C();
  v8 = OUTLINED_FUNCTION_11_27();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_14_30();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_30();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    v12 = sub_18F52307C();
    v14 = sub_18F11897C(v12, v13, &v22);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_23_21();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    v20 = OUTLINED_FUNCTION_0_62();
    MEMORY[0x193ADD350](v20);
  }

  a2(v6);
  return v6;
}

uint64_t sub_18F29DA80()
{
  v1 = OBJC_IVAR____TtC10AppIntents13ResolverCache_logger;
  v2 = sub_18F52165C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10AppIntents13ResolverCache_executionLogger, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18F29DB28()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC10AppIntents13ResolverCache_logger;
  if (qword_1EACCF3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1EAD0ABC8);
  OUTLINED_FUNCTION_12_9();
  v4 = *(v3 + 16);
  v4(v0 + v1);
  v5 = OBJC_IVAR____TtC10AppIntents13ResolverCache_executionLogger;
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1ED7077A8);
  (v4)(v0 + v5, v6, v2);
  return v0;
}

uint64_t type metadata accessor for ResolverCache()
{
  result = qword_1EACCF448;
  if (!qword_1EACCF448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F29DC90()
{
  result = sub_18F52165C();
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

uint64_t sub_18F29DD4C()
{
  sub_18F0FD724(v0, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  MEMORY[0x193ADC4F0](DynamicType);
  v2 = OUTLINED_FUNCTION_66();
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  return sub_18F52178C();
}

BOOL sub_18F29DDE0(void *a1, void *a2)
{
  sub_18F0FD724(a1, v11);
  v4 = OUTLINED_FUNCTION_13_8(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_18F0FD724(a2, v11);
  __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
  OUTLINED_FUNCTION_24_27();
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v4 != DynamicType)
  {
    return 0;
  }

  sub_18F522EFC();
  sub_18F0FD724(a1, v10);
  v7 = OUTLINED_FUNCTION_13_8(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  MEMORY[0x193ADC4F0](v7);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_28_30();
  v8 = sub_18F522F4C();
  sub_18F522EFC();
  sub_18F0FD724(a2, v10);
  v9 = OUTLINED_FUNCTION_13_8(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  MEMORY[0x193ADC4F0](v9);
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  OUTLINED_FUNCTION_28_30();
  return v8 == sub_18F522F4C();
}

uint64_t sub_18F29DF38()
{
  sub_18F522EFC();
  sub_18F0FD724(v0, v5);
  v1 = OUTLINED_FUNCTION_13_8(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  MEMORY[0x193ADC4F0](v1);
  v2 = OUTLINED_FUNCTION_66();
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  OUTLINED_FUNCTION_27_25();
  return sub_18F522F4C();
}

uint64_t sub_18F29DFBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
  sub_18F52299C();
  MEMORY[0x193ADB000](58, 0xE100000000000000);
  sub_18F29DF38();
  v0 = sub_18F522C9C();
  MEMORY[0x193ADB000](v0);

  return 0;
}

uint64_t sub_18F29E078()
{
  sub_18F522EFC();
  sub_18F0FD724(v0, v5);
  v1 = OUTLINED_FUNCTION_13_8(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  MEMORY[0x193ADC4F0](v1);
  v2 = OUTLINED_FUNCTION_66();
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  OUTLINED_FUNCTION_27_25();
  return sub_18F522F4C();
}

unint64_t sub_18F29E100()
{
  result = qword_1ED6FC120[0];
  if (!qword_1ED6FC120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FC120);
  }

  return result;
}

unint64_t sub_18F29E188()
{
  result = qword_1ED6FC118;
  if (!qword_1ED6FC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC118);
  }

  return result;
}

uint64_t sub_18F29E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return sub_18F52307C();
  }

  v7 = sub_18F52307C();
  MEMORY[0x193ADB000](58, 0xE100000000000000);
  MEMORY[0x193ADB000](a3, a4);
  return v7;
}

uint64_t sub_18F29E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_18F5219CC();
  }

  return MEMORY[0x193ADC4F0](a2);
}

BOOL sub_18F29E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    if (a8)
    {
      v10 = a3 == a7 && a4 == a8;
      if (v10 || (sub_18F522D5C() & 1) != 0)
      {
        return a1 == a5;
      }
    }
  }

  else if (!a8)
  {
    return a1 == a5;
  }

  return 0;
}

uint64_t sub_18F29E2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F522EFC();
  if (a4)
  {
    sub_18F5219CC();
  }

  MEMORY[0x193ADC4F0](a1);
  return sub_18F522F4C();
}

uint64_t sub_18F29E37C()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  sub_18F522EFC();
  sub_18F29E250(v6, v1, v4, v3, v2);
  return sub_18F522F4C();
}

unint64_t sub_18F29E3F8()
{
  if (!*v0)
  {
    return 0xD000000000000021;
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  sub_18F52279C();

  v4 = sub_18F52307C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](544175136, 0xE400000000000000);
  v6 = sub_18F29E1DC(v3, v5, v2, v1);
  MEMORY[0x193ADB000](v6);

  return 0xD000000000000017;
}

uint64_t sub_18F29E4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_12_9();
  v4 = *(v3 + 16);

  return v4();
}

unint64_t sub_18F29E564()
{
  result = qword_1EACD45B8;
  if (!qword_1EACD45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD45B8);
  }

  return result;
}

uint64_t sub_18F29E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = sub_18F52165C();
  OUTLINED_FUNCTION_51(v9);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = *(v3 + 32);
  v14 = *(v3 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v4 + 16) = v15;
  *v15 = v16;
  v15[1] = sub_18F0FC874;

  return sub_18F29C584(a1, a2, a3, v13, v3 + v11, v14, v8);
}

unint64_t sub_18F29E6F4()
{
  result = qword_1EACCF090[0];
  if (!qword_1EACCF090[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EACCF090);
  }

  return result;
}

uint64_t sub_18F29E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_18F0FC870;

  return sub_18F29AFE0(a1, a2, a3, v8);
}

uint64_t get_enum_tag_for_layout_string_10AppIntents13ResolverCacheC7FailureO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F29E810(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18F29E860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18F29E8BC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_18F29E910()
{
  result = qword_1EACD45C0;
  if (!qword_1EACD45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD45C0);
  }

  return result;
}

uint64_t sub_18F29E964(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F29E97C()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_18F2A15D0(v0[2]);
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_18F29EA1C;

  return sub_18F13A9F0(v1);
}

uint64_t sub_18F29EA1C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_18F2A3270;
  }

  else
  {
    v7 = sub_18F2A3274;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void IntentParameterDependency.wrappedValue.getter()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_80();
  v41 = v1;
  v3 = *(v2 + 80);
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v38 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - v6;
  OUTLINED_FUNCTION_11_0();
  v39 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_18F520E6C();
  OUTLINED_FUNCTION_11_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  v23 = qword_1EACCEBE0;
  swift_beginAccess();
  sub_18F0F9FD4(v0 + v23, v15, &qword_1EACD4700);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_18F0FA038(v15, &qword_1EACD4700);
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
    sub_18F2A4230(v44);
    v24 = v45;
    if (v45)
    {
      v25 = _s10AppIntents24IntentDonationIdentifierV2eeoiySbAC_ACtFZ_0();
      (*(v18 + 8))(v22, v16);
      if (v25)
      {
        sub_18F0FD6C4(v24 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, &v43);
        sub_18F132364(v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
        v26 = v42;
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_14();
          __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
          v31 = *(v39 + 32);
          v31(v12, v26, v3);
          type metadata accessor for IntentProjection();
          v32 = v37;
          v31(v37, v12, v3);
          sub_18F29EF58(v32);
        }

        else
        {
          OUTLINED_FUNCTION_14();
          __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
          (*(v38 + 8))(v26, v40);
        }
      }

      else
      {
        sub_18F132364(v44);
      }
    }

    else
    {
      (*(v18 + 8))(v22, v16);
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F29EF94(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_18F29EFD4(a1);
  return v2;
}

uint64_t sub_18F29EFD4(uint64_t a1)
{
  v3 = qword_1EACCEBE0;
  v4 = sub_18F520E6C();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_18F29F028(uint64_t a1)
{
  v1 = sub_18F29F1A8(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18F0FD6C4(v3, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      if ((*(v6 + 24))(v5, v6))
      {
        v8 = v18;
        v7 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        v9 = (*(*(v7 + 8) + 16))(v8);
        v11 = v10;
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        if (v11)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F141818();
            v4 = v14;
          }

          v12 = *(v4 + 16);
          if (v12 >= *(v4 + 24) >> 1)
          {
            sub_18F141818();
            v4 = v15;
          }

          *(v4 + 16) = v12 + 1;
          v13 = v4 + 16 * v12;
          *(v13 + 32) = v9;
          *(v13 + 40) = v11;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_18F29F1A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_18F52254C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-1] - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v18[-1] - v11;
  sub_18F0FD6C4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
    v13 = (*(v10 + 32))(v12, v9, v4);
    v18[0] = v1[2];
    MEMORY[0x1EEE9AC00](v13);
    v14 = *(v3 + 88);
    *(&v17 - 4) = v4;
    *(&v17 - 3) = v14;
    *(&v17 - 2) = v12;
    sub_18F52288C();
    sub_18F521DBC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
    swift_getWitnessTable();
    v15 = sub_18F521B3C();

    (*(v10 + 8))(v12, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
    (*(v6 + 8))(v9, v5);
    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_18F29F4A4(uint64_t a1)
{
  v1 = sub_18F29F1A8(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18F0FD6C4(v3, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      if ((*(v6 + 24))(v5, v6))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      else
      {
        v8 = v18;
        v7 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        v9 = (*(*(v7 + 8) + 16))(v8);
        v11 = v10;
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        if (v11)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F141818();
            v4 = v14;
          }

          v12 = *(v4 + 16);
          if (v12 >= *(v4 + 24) >> 1)
          {
            sub_18F141818();
            v4 = v15;
          }

          *(v4 + 16) = v12 + 1;
          v13 = v4 + 16 * v12;
          *(v13 + 32) = v9;
          *(v13 + 40) = v11;
        }
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_18F29F624(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-v5 - 8];
  sub_18F0FD6C4(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  v7 = swift_dynamicCast();
  if (v7)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v7;
}

uint64_t sub_18F29F724(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = *v1;
  v2[46] = *v1;
  v4 = *(v3 + 80);
  v2[47] = v4;
  v5 = sub_18F52254C();
  v2[48] = v5;
  v2[49] = *(v5 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F29F8B4, 0, 0);
}

void sub_18F29F8B4()
{
  v4 = v0[53];
  v6 = v0[44];
  v5 = v0[45];
  v7 = sub_18F520E6C();
  v0[54] = v7;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = qword_1EACCEBE0;
  v0[55] = qword_1EACCEBE0;
  swift_beginAccess();
  sub_18F2A310C(v4, v5 + v8);
  swift_endAccess();
  sub_18F0FD6C4(v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, (v0 + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  if (!swift_dynamicCast())
  {
    v25 = v0[49];
    v24 = v0[50];
    v26 = v0[48];
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v0[47]);
    (*(v25 + 8))(v24, v26);
LABEL_9:

    OUTLINED_FUNCTION_6();
    goto LABEL_10;
  }

  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v14 = v0[45];
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v10 + 32))(v9, v11, v12);
  v0[43] = *(v14 + 16);
  v15 = swift_task_alloc();
  v15[2] = v12;
  v15[3] = *(v13 + 88);
  v15[4] = v9;
  sub_18F52288C();
  sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  OUTLINED_FUNCTION_9_31();
  v16 = sub_18F521B3C();
  v0[56] = v16;

  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_18F130860();
    v18 = v58;
    v19 = v16 + 32;
    do
    {
      sub_18F0FD6C4(v19, (v0 + 22));
      v20 = v0[25];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 22, v20);
      OUTLINED_FUNCTION_37_0();
      v16 = v21(v20);
      v14 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
      v2 = *(v58 + 16);
      v1 = v2 + 1;
      if (v2 >= *(v58 + 24) >> 1)
      {
        sub_18F130860();
      }

      *(v58 + 16) = v1;
      v23 = v58 + 16 * v2;
      *(v23 + 32) = v16;
      *(v23 + 40) = v14;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  v29 = v0[44];
  sub_18F1A5A80(v18);
  v0[57] = v30;
  v31 = *(v29 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v0[58] = v31;
  v32 = *(v31 + 16);
  v0[59] = v32;
  if (v32)
  {
    v33 = 0;
    v16 = -1;
    while (1)
    {
      v0[60] = v33;
      if (v33 >= *(v31 + 16))
      {
        break;
      }

      v14 = v0[57];
      sub_18F139A94(v31 + 48 * v33 + 32, (v0 + 11));
      v34 = v0[14];
      OUTLINED_FUNCTION_32_23();
      OUTLINED_FUNCTION_37_0();
      v35(v34);
      v37 = v36;
      if (*(v14 + 16))
      {
        OUTLINED_FUNCTION_28_31();
        sub_18F522F1C();
        if (v37)
        {
          sub_18F5219CC();
        }

        v14 = v0[57];
        sub_18F522F4C();
        OUTLINED_FUNCTION_11_28();
        if (v39)
        {
          v14 = ~v38;
          v1 = *(v0[57] + 48);
          do
          {
            v40 = (v1 + 16 * (v0 + 2));
            v41 = v40[1];
            if (v41)
            {
              if (v37)
              {
                v42 = *v40 == v18 && v41 == v37;
                if (v42 || (sub_18F522D5C() & 1) != 0)
                {

LABEL_39:
                  OUTLINED_FUNCTION_32_23();
                  OUTLINED_FUNCTION_26_25();
                  OUTLINED_FUNCTION_14_6();
                  v46 = swift_task_alloc();
                  v0[61] = v46;
                  *v46 = v0;
                  OUTLINED_FUNCTION_3_38(v46);
                  OUTLINED_FUNCTION_28_2();

                  __asm { BRAA            X4, X16 }
                }
              }
            }

            else if (!v37)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_12_34();
          }

          while ((v43 & 1) != 0);
        }
      }

      v29 = v0[59];
      v17 = v0[60] + 1;
      sub_18F13E500((v0 + 11));
      if (v17 == v29)
      {
        goto LABEL_33;
      }

      v33 = v0[60] + 1;
      v31 = v0[58];
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_33:
  OUTLINED_FUNCTION_25_21();
  while (1)
  {
    if (v1 == v14)
    {
      OUTLINED_FUNCTION_18_28();

      (*(qword_1EACD0618 + 16))(&unk_18F541850, v3 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_id, &qword_1EACD0620);
      OUTLINED_FUNCTION_19_25();
      sub_18F2A310C(&unk_18F541850, v2 + v1);
      swift_endAccess();
      (*(v14 + 8))(v29, v16);
      goto LABEL_9;
    }

    if (v14 >= *(v0[56] + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    sub_18F0FD6C4(v17, (v0 + 27));
    v16 = v0[30];
    v29 = v0[31];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 27, v16);
    v44 = OUTLINED_FUNCTION_15_24();
    v45(v44);
    if (!v0[35])
    {
      break;
    }

    OUTLINED_FUNCTION_31_25();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 27));
    v17 += 40;
  }

  sub_18F0FA038((v0 + 32), &qword_1EACD0620);
  v49 = v0[30];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 27, v49);
  OUTLINED_FUNCTION_37_0();
  v51 = v50(v49);
  if (v52)
  {
    v53 = v51;
    v54 = v52;

    sub_18F2A317C();
    swift_allocError();
    *v55 = v53;
    v55[1] = v54;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 27));
    v56 = OUTLINED_FUNCTION_20_20();
    v57(v56);

    OUTLINED_FUNCTION_71();
LABEL_10:
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_18F29FF94()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {

    v7 = sub_18F2A04E0;
  }

  else
  {
    v7 = sub_18F2A00A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_18F2A00A4()
{
  v6 = -1;
  while (1)
  {
    v7 = v1[59];
    v8 = v1[60] + 1;
    sub_18F13E500((v1 + 11));
    if (v8 == v7)
    {
      OUTLINED_FUNCTION_25_21();
      while (1)
      {
        if (v3 == v2)
        {
          OUTLINED_FUNCTION_18_28();

          (*(qword_1EACD0618 + 16))(&unk_18F541850, v5 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_id, &qword_1EACD0620);
          OUTLINED_FUNCTION_19_25();
          sub_18F2A310C(&unk_18F541850, v4 + v3);
          swift_endAccess();
          (*(v2 + 8))(v7, v6);

          OUTLINED_FUNCTION_6();
LABEL_32:

          v26();
          return;
        }

        if (v2 >= *(v1[56] + 16))
        {
          goto LABEL_36;
        }

        sub_18F0FD6C4(v8, (v1 + 27));
        v6 = v1[30];
        v7 = v1[31];
        __swift_project_boxed_opaque_existential_1Tm(v1 + 27, v6);
        v24 = OUTLINED_FUNCTION_15_24();
        v25(v24);
        if (!v1[35])
        {
          break;
        }

        OUTLINED_FUNCTION_31_25();
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 27));
        v8 += 40;
      }

      sub_18F0FA038((v1 + 32), &qword_1EACD0620);
      v27 = v1[30];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 27, v27);
      OUTLINED_FUNCTION_37_0();
      v29 = v28(v27);
      if (v30)
      {
        v31 = v29;
        v32 = v30;

        sub_18F2A317C();
        swift_allocError();
        *v33 = v31;
        v33[1] = v32;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 27));
        v34 = OUTLINED_FUNCTION_20_20();
        v35(v34);

        OUTLINED_FUNCTION_71();
        goto LABEL_32;
      }

LABEL_37:
      __break(1u);
      return;
    }

    v9 = v1[60] + 1;
    v1[60] = v9;
    v10 = v1[58];
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v2 = v1[57];
    sub_18F139A94(v10 + 48 * v9 + 32, (v1 + 11));
    v11 = v1[14];
    OUTLINED_FUNCTION_32_23();
    OUTLINED_FUNCTION_37_0();
    v12(v11);
    v14 = v13;
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_28_31();
      sub_18F522F1C();
      if (v14)
      {
        sub_18F5219CC();
      }

      v2 = v1[57];
      sub_18F522F4C();
      OUTLINED_FUNCTION_11_28();
      if (v16)
      {
        break;
      }
    }

LABEL_19:
  }

  v2 = ~v15;
  v3 = *(v1[57] + 48);
  while (1)
  {
    v17 = (v3 + 16 * (v1 + 2));
    v18 = v17[1];
    if (v18)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_18:
    OUTLINED_FUNCTION_12_34();
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v19 = *v17 == v0 && v18 == v14;
  if (!v19 && (sub_18F522D5C() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  OUTLINED_FUNCTION_32_23();
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_14_6();
  v36 = (v21 + *v21);
  v22 = swift_task_alloc();
  v1[61] = v22;
  *v22 = v1;
  v23 = OUTLINED_FUNCTION_3_38();

  v36(v23);
}

uint64_t sub_18F2A04E0()
{
  sub_18F13E500((v0 + 11));
  (*(v0[51] + 8))(v0[52], v0[47]);

  OUTLINED_FUNCTION_71();

  return v1();
}

void sub_18F2A0580()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_80();
  v4 = v3;
  v6 = *(v5 + 80);
  v7 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v9 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  OUTLINED_FUNCTION_11_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_18F0FD6C4(v2 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_14();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = (*(v14 + 32))(v17, v12, v6);
    v29 = *(v0 + 16);
    MEMORY[0x1EEE9AC00](v22);
    v23 = *(v4 + 88);
    *(&v28 - 4) = v6;
    *(&v28 - 3) = v23;
    *(&v28 - 2) = v17;
    sub_18F52288C();
    sub_18F521DBC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
    OUTLINED_FUNCTION_9_31();
    sub_18F521B3C();

    (*(v14 + 8))(v17, v6);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    (*(v9 + 8))(v12, v7);
  }

  OUTLINED_FUNCTION_16();
}

double sub_18F2A0838@<D0>(uint64_t a1@<X8>)
{
  swift_getAtPartialKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t IntentParameterDependency.deinit()
{

  sub_18F0FA038(v0 + qword_1EACCEBE0, &qword_1EACD4700);
  return v0;
}

uint64_t IntentParameterDependency.__deallocating_deinit()
{
  IntentParameterDependency.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F2A09C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC874;

  return sub_18F29F724(a1);
}

uint64_t static IntentParameterDependency.== infix(_:_:)()
{
  sub_18F52288C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_66();
  v0 = sub_18F521DDC();

  return v0 & 1;
}

uint64_t IntentParameterDependency.hash(into:)()
{
  sub_18F52288C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_66();
  sub_18F521DCC();
}

uint64_t IntentParameterDependency.hashValue.getter()
{
  sub_18F522EFC();
  IntentParameterDependency.hash(into:)();
  return sub_18F522F4C();
}

uint64_t sub_18F2A0C00()
{
  sub_18F522EFC();
  IntentParameterDependency.hash(into:)();
  return sub_18F522F4C();
}

uint64_t IntentParameterDependency.debugDescription.getter()
{
  v1 = *v0;
  v9 = v0[2];
  v8[1] = *(v1 + 80);
  sub_18F52288C();
  v2 = sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_18F10C138(sub_18F2A2F38, v8, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);

  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  sub_18F1905C8();
  v6 = sub_18F5217AC();

  return v6;
}

void IntentProjection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = *(*v20 + 80);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v23);
  v31 = &a9 - v30;
  v33 = *(v32 + *MEMORY[0x1E69E77B0] + 8);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v36 = &a9 - v35;
  (*(v28 + 16))(v31, v20 + *(v37 + 96), v27);
  swift_getAtKeyPath();
  (*(v28 + 8))(v31, v27);
  sub_18F2A0F9C(v24, v33, v26);
  (*(v34 + 8))(v36, v33);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2A0F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18F52254C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  MEMORY[0x1EEE9AC00](v11);
  (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v13, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v13, v9);
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    sub_18F52279C();
    MEMORY[0x193ADB000](0xD000000000000014, 0x800000018F528650);
    v18[1] = a1;
    sub_18F52263C();

    v17 = sub_18F52196C();
    MEMORY[0x193ADB000](v17);

    MEMORY[0x193ADB000](0xD000000000000065, 0x800000018F528670);
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t IntentProjection.deinit()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t IntentProjection.__deallocating_deinit()
{
  IntentProjection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F2A13A4()
{
  result = sub_18F5218DC();
  qword_1EAD0AC28 = result;
  unk_1EAD0AC30 = v1;
  return result;
}

uint64_t sub_18F2A13D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F541F50;
  *(inited + 32) = sub_18F5218DC();
  *(inited + 40) = v5;
  sub_18F52279C();

  MEMORY[0x193ADB000](a1, a2);
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000023;
  *(inited + 56) = 0x800000018F5286E0;
  *(inited + 80) = sub_18F5218DC();
  *(inited + 88) = v7;
  *(inited + 120) = v6;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F5216CC();
}

uint64_t sub_18F2A14E8(uint64_t a1)
{
  v2 = sub_18F2A3204();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F2A1524(uint64_t a1)
{
  v2 = sub_18F2A3204();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18F2A1560()
{
  if (qword_1EACCF4E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD0AC28;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v0;
}

uint64_t sub_18F2A15D0(uint64_t a1)
{
  v3 = sub_18F522F8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  sub_18F522F6C();
  v8 = sub_18F117570();
  (*(v4 + 8))(v6, v3);
  v9 = *(v8 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16[1] = v8;
  v10 = v8 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F0F9FD4(v10, &v21, &qword_1EACCFD88);
    v17[0] = v21;
    v17[1] = v22;
    v17[2] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
LABEL_11:
      sub_18F0FA038(&v18, &qword_1EACD45D0);
      goto LABEL_12;
    }

    if (!*(&v19 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v18, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673F0();
      v11 = v13;
    }

    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_18F1673F0();
      v11 = v14;
    }

    *(v11 + 16) = v12 + 1;
    sub_18F0FD0B4(v17, v11 + 40 * v12 + 32);
LABEL_12:
    v10 += 48;
    --v9;
  }

  while (v9);

  return v11;
}

uint64_t sub_18F2A1888()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 312) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 224);
  if (v0)
  {

    v7 = sub_18F2A1B50;
  }

  else
  {
    v7 = sub_18F2A19A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_18F2A19A4()
{
  v1 = v0[36];
  v2 = v0[37] + 1;
  v0[37] = v2;
  if (v2 == v1)
  {
    sub_18F0FA038((v0 + 2), &qword_1EACD45C8);

    OUTLINED_FUNCTION_6();

    v3();
  }

  else
  {
    v4 = v0[35];
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v5 = v0[34];
      sub_18F0FD6C4(v4 + 40 * v2 + 32, (v0 + 28));
      v6 = v0[31];
      v7 = v0[32];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 28, v6);
      OUTLINED_FUNCTION_14_6();
      v10 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[38] = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_6_41();

      v10(v5, v6, v7);
    }
  }
}

uint64_t sub_18F2A1B50()
{
  OUTLINED_FUNCTION_69();
  sub_18F0FA038(v0 + 16, &qword_1EACD45C8);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2A1BBC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

void sub_18F2A1C18(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = *(v2 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v10 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  for (i = v6 + 32; ; i += 48)
  {
    if (v7 == v5)
    {
      sub_18F1A5CF0(v10);
      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    sub_18F139A94(i, v9);
    sub_18F2A1D00(&v10, v9, a1, a2, v2);
    ++v5;
    sub_18F13E500(v9);
  }

  __break(1u);

  sub_18F13E500(v9);

  __break(1u);
}

void sub_18F2A1D00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v9 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  if (!v11)
  {
    goto LABEL_7;
  }

  if (v10 == a3 && v11 == a4)
  {

    return;
  }

  v13 = sub_18F522D5C();

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v14);
    (*(v15 + 16))(&v43, v14, v15);
    if (!v44)
    {
      sub_18F0FA038(&v43, &qword_1EACD0D98);
      return;
    }

    sub_18F0FD0B4(&v43, v46);
    __swift_project_boxed_opaque_existential_1Tm(v46, v46[3]);
    sub_18F13A55C();
    v37 = *(v16 + 16);
    if (!v37)
    {

      goto LABEL_31;
    }

    v36 = a2;
    v17 = 0;
    v38 = v16;
    v39 = v16 + 32;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      sub_18F0FD6C4(v39 + 40 * v17, &v43);
      v18 = v44;
      v19 = v45;
      __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
      v20 = (*(v19 + 56))(v47, v18, v19);
      v21 = v20;
      v22 = *(v20 + 16);
      if (v22)
      {
        break;
      }

LABEL_23:
      ++v17;

      __swift_destroy_boxed_opaque_existential_1Tm(&v43);
      v16 = v38;
      if (v17 == v37)
      {

        goto LABEL_31;
      }
    }

    v23 = 0;
    v24 = v20 + 32;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_18F0FD6C4(v24, v40);
      v25 = v41;
      v26 = v42;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      v27 = (*(*(v26 + 8) + 16))(v25);
      if (v28)
      {
        if (v27 == a3 && v28 == a4)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v40);
LABEL_29:

          __swift_destroy_boxed_opaque_existential_1Tm(&v43);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18F53F800;
          v32 = v36[3];
          v33 = v36[4];
          __swift_project_boxed_opaque_existential_1Tm(v36, v32);
          v34 = (*(*(v33 + 8) + 16))(v32);
          if (!v35)
          {
            goto LABEL_35;
          }

          *(inited + 32) = v34;
          *(inited + 40) = v35;
          sub_18F25DB50(inited);
LABEL_31:
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          return;
        }

        v30 = sub_18F522D5C();

        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        if (v30)
        {
          goto LABEL_29;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
      }

      ++v23;
      v24 += 40;
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }
  }
}

BOOL sub_18F2A2068(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  v8 = *((*(v6 + 32))(a3 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v5, v6) + 16);

  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  v11 = *((*(v10 + 32))(a3 + v7, v9, v10) + 16);

  return v11 < v8;
}

uint64_t sub_18F2A2134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
  }

  v7 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  v28 = *a4;
  v8 = v28 + 40 * a3;
  v9 = a1 - a3;
  while (2)
  {
    v20 = v8;
    v21 = a3;
    v19 = v9;
    do
    {
      sub_18F0FD6C4(v8, &v25);
      sub_18F0FD6C4(v8 - 40, v22);
      v10 = v26;
      v11 = v27;
      __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
      v12 = *((*(v11 + 32))(a5 + v7, v10, v11) + 16);

      v13 = v23;
      v14 = v24;
      __swift_project_boxed_opaque_existential_1Tm(v22, v23);
      v15 = *((*(v14 + 32))(a5 + v7, v13, v14) + 16);

      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      if (v15 >= v12)
      {
        break;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      sub_18F0FD0B4(v8, &v25);
      v16 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v16;
      *(v8 + 32) = *(v8 - 8);
      sub_18F0FD0B4(&v25, v8 - 40);
      v8 -= 40;
    }

    while (!__CFADD__(v9++, 1));
    a3 = v21 + 1;
    v8 = v20 + 40;
    v9 = v19 - 1;
    if (v21 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_18F2A22DC(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  v141 = a5;
  if (v7 < 1)
  {
    swift_retain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    swift_retain_n();
    v124 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_100;
    }

    goto LABEL_136;
  }

  v133 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  swift_retain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v126 = v9;
    if (v8 + 1 < v7)
    {
      v12 = *a3;
      sub_18F0FD6C4(&(*a3)[40 * v11], &v138);
      sub_18F0FD6C4(&v12[40 * v10], v135);
      LODWORD(v132) = sub_18F2A2068(&v138, v135, v141);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        __swift_destroy_boxed_opaque_existential_1Tm(&v138);

LABEL_96:
      }

      v124 = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      __swift_destroy_boxed_opaque_existential_1Tm(&v138);
      v122 = 40 * v10;
      v13 = v10;
      v14 = &v12[40 * v10 + 80];
      v118 = v13;
      v15 = v13 + 2;
      while (1)
      {
        v16 = v15;
        v17 = v11 + 1;
        if (v17 >= v7)
        {
          break;
        }

        sub_18F0FD6C4(v14, &v138);
        sub_18F0FD6C4(v14 - 40, v135);
        v19 = v139;
        v18 = v140;
        __swift_project_boxed_opaque_existential_1Tm(&v138, v139);
        v20 = v141;
        v129 = v17;
        v21 = *((*(v18 + 32))(v141 + v133, v19, v18) + 16);

        v22 = v136;
        v23 = v137;
        __swift_project_boxed_opaque_existential_1Tm(v135, v136);
        v24 = v20 + v133;
        v9 = v126;
        v25 = *((*(v23 + 32))(v24, v22, v23) + 16);

        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        __swift_destroy_boxed_opaque_existential_1Tm(&v138);
        v26 = v25 >= v21;
        v11 = v129;
        v27 = v26;
        v28 = v132 ^ v27;
        v14 += 40;
        v15 = v16 + 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v11 = v7;
LABEL_13:
      if (v132)
      {
        v10 = v118;
        if (v11 < v118)
        {
          goto LABEL_135;
        }

        if (v118 < v11)
        {
          if (v7 >= v16)
          {
            v29 = v16;
          }

          else
          {
            v29 = v7;
          }

          v30 = 40 * v29 - 40;
          v31 = v11;
          v32 = v11;
          v33 = v118;
          v34 = v122;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v36 = &v35[v34];
              v37 = &v35[v30];
              v38 = v34;
              sub_18F0FD0B4(&v35[v34], &v138);
              v39 = *(v37 + 32);
              v40 = *(v37 + 16);
              *v36 = *v37;
              *(v36 + 1) = v40;
              *(v36 + 4) = v39;
              sub_18F0FD0B4(&v138, v37);
              v34 = v38;
            }

            ++v33;
            v30 -= 40;
            v34 += 40;
          }

          while (v33 < v32);
          v11 = v31;
        }

        v6 = 0;
      }

      else
      {
        v6 = 0;
        v10 = v118;
      }
    }

    v41 = a3[1];
    if (v11 < v41)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_132;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v11 < v10)
    {
      goto LABEL_131;
    }

    v131 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F167414();
      v9 = v102;
    }

    v54 = *(v9 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v9 + 3) >> 1)
    {
      sub_18F167414();
      v9 = v103;
    }

    *(v9 + 2) = v55;
    v56 = v9 + 32;
    v57 = &v9[16 * v54 + 32];
    *v57 = v10;
    *(v57 + 1) = v131;
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      v124 = v9 + 32;
      v127 = v9;
      while (1)
      {
        v58 = v55 - 1;
        v59 = &v56[16 * v55 - 16];
        v60 = &v9[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v61 = *(v9 + 4);
          v62 = *(v9 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_64:
          if (v64)
          {
            goto LABEL_118;
          }

          v76 = *v60;
          v75 = *(v60 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_121;
          }

          v80 = *(v59 + 1);
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_126;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v55 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v55 < 2)
        {
          goto LABEL_120;
        }

        v83 = *v60;
        v82 = *(v60 + 1);
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_79:
        if (v79)
        {
          goto LABEL_123;
        }

        v85 = *v59;
        v84 = *(v59 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_125;
        }

        if (v86 < v78)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v90 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v91 = v6;
        v92 = &v56[16 * v58 - 16];
        v93 = *v92;
        v94 = v58;
        v95 = &v56[16 * v58];
        v96 = *(v95 + 1);
        v97 = &v90[40 * *v92];
        v98 = &v90[40 * *v95];
        v99 = &v90[40 * v96];
        v100 = v141;

        sub_18F2A2BD0(v97, v98, v99, v132, v100);
        v6 = v91;
        if (v91)
        {

          goto LABEL_96;
        }

        if (v96 < v93)
        {
          goto LABEL_113;
        }

        v9 = v127;
        v101 = *(v127 + 2);
        if (v94 > v101)
        {
          goto LABEL_114;
        }

        *v92 = v93;
        *(v92 + 1) = v96;
        if (v94 >= v101)
        {
          goto LABEL_115;
        }

        v55 = v101 - 1;
        sub_18F3BA72C(v95 + 16, v101 - 1 - v94, v95);
        *(v127 + 2) = v101 - 1;
        v56 = v124;
        if (v101 <= 2)
        {
          goto LABEL_93;
        }
      }

      v65 = &v56[16 * v55];
      v66 = *(v65 - 8);
      v67 = *(v65 - 7);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_116;
      }

      v70 = *(v65 - 6);
      v69 = *(v65 - 5);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_117;
      }

      v72 = *(v60 + 1);
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_119;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_122;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = *(v59 + 1);
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v89)
        {
          v58 = v55 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

LABEL_93:
    v7 = a3[1];
    v8 = v131;
    if (v131 >= v7)
    {
      goto LABEL_98;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_133;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v10)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    v9 = sub_18F3BA714();
LABEL_100:
    v105 = v9 + 16;
    v104 = *(v9 + 2);
    for (i = v9; ; v9 = i)
    {
      if (v104 < 2)
      {
      }

      v106 = *a3;
      if (!*a3)
      {
        goto LABEL_139;
      }

      v107 = &v9[16 * v104];
      v108 = *v107;
      v109 = v105;
      v110 = &v105[16 * v104];
      v111 = *(v110 + 1);
      v112 = &v106[40 * *v107];
      v113 = &v106[40 * *v110];
      v134 = &v106[40 * v111];
      v114 = v141;

      sub_18F2A2BD0(v112, v113, v134, v132, v114);
      if (v124)
      {
        break;
      }

      if (v111 < v108)
      {
        goto LABEL_127;
      }

      if (v104 - 2 >= *v109)
      {
        goto LABEL_128;
      }

      v105 = v109;
      *v107 = v108;
      *(v107 + 1) = v111;
      v115 = *v109 - v104;
      if (*v109 < v104)
      {
        goto LABEL_129;
      }

      v104 = *v109 - 1;
      sub_18F3BA72C(v110 + 16, v115, v110);
      *v109 = v104;
    }
  }

  if (v11 == v42)
  {
    goto LABEL_43;
  }

  v124 = v6;
  v132 = *a3;
  v43 = &(*a3)[40 * v11];
  v44 = v10 - v11;
  v120 = v42;
LABEL_36:
  v130 = v11;
  v121 = v44;
  v123 = v43;
  v45 = v43;
  while (1)
  {
    sub_18F0FD6C4(v45, &v138);
    sub_18F0FD6C4(v45 - 40, v135);
    v46 = v139;
    v47 = v140;
    __swift_project_boxed_opaque_existential_1Tm(&v138, v139);
    v48 = v141;
    v49 = *((*(v47 + 32))(v141 + v133, v46, v47) + 16);

    v50 = v136;
    v51 = v137;
    __swift_project_boxed_opaque_existential_1Tm(v135, v136);
    v52 = *((*(v51 + 32))(v48 + v133, v50, v51) + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    __swift_destroy_boxed_opaque_existential_1Tm(&v138);
    if (v52 >= v49)
    {
LABEL_41:
      v11 = v130 + 1;
      v43 = v123 + 40;
      v44 = v121 - 1;
      if (v130 + 1 == v120)
      {
        v11 = v120;
        v6 = v124;
        v9 = v126;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v132)
    {
      break;
    }

    sub_18F0FD0B4(v45, &v138);
    v53 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v53;
    *(v45 + 32) = *(v45 - 8);
    sub_18F0FD0B4(&v138, v45 - 40);
    v45 -= 40;
    v26 = __CFADD__(v44++, 1);
    if (v26)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:

  __break(1u);
LABEL_139:

  __break(1u);
LABEL_140:

  __break(1u);
LABEL_141:

  __break(1u);
LABEL_142:

  __break(1u);
  return result;
}

uint64_t sub_18F2A2BD0(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    sub_18F16AE7C(a1);
    v51 = &a4[40 * v9];
    v42 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
    for (i = v6; ; v6 = i)
    {
      if (a4 >= v51 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      sub_18F0FD6C4(v7, v48);
      sub_18F0FD6C4(a4, v45);
      v12 = v49;
      v13 = v50;
      __swift_project_boxed_opaque_existential_1Tm(v48, v49);
      v14 = *((*(v13 + 32))(a5 + v42, v12, v13) + 16);

      v15 = v46;
      v16 = v47;
      __swift_project_boxed_opaque_existential_1Tm(v45, v46);
      v17 = *((*(v16 + 32))(a5 + v42, v15, v16) + 16);

      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      if (v17 >= v14)
      {
        break;
      }

      v18 = v7;
      v19 = v8 == v7;
      v7 += 40;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 40;
    }

    v18 = a4;
    v19 = v8 == a4;
    a4 += 40;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *v18;
    v21 = *(v18 + 1);
    *(v8 + 4) = *(v18 + 4);
    *v8 = v20;
    *(v8 + 1) = v21;
    goto LABEL_13;
  }

  sub_18F16AE7C(a2);
  v22 = &a4[40 * v10];
  v40 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  v41 = v8;
  v39 = a4;
LABEL_15:
  v23 = (v7 - 40);
  v6 -= 40;
  for (j = (v22 - 40); ; j -= 40)
  {
    v51 = (j + 40);
    if (j + 40 <= a4 || v7 <= v8)
    {
      break;
    }

    sub_18F0FD6C4(j, v48);
    sub_18F0FD6C4(v23, v45);
    v26 = v49;
    v27 = v50;
    __swift_project_boxed_opaque_existential_1Tm(v48, v49);
    v43 = *((*(v27 + 32))(a5 + v40, v26, v27) + 16);

    v28 = v46;
    v29 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    v30 = *((*(v29 + 32))(a5 + v40, v28, v29) + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    if (v30 < v43)
    {
      v22 = (j + 40);
      v19 = v6 + 40 == v7;
      v7 -= 40;
      a4 = v39;
      v8 = v41;
      if (!v19)
      {
        v33 = *v23;
        v34 = *(v23 + 16);
        *(v6 + 32) = *(v23 + 32);
        *v6 = v33;
        *(v6 + 16) = v34;
        v7 = v23;
      }

      goto LABEL_15;
    }

    if (v51 != (v6 + 40))
    {
      v31 = *j;
      v32 = *(j + 16);
      *(v6 + 32) = *(j + 32);
      *v6 = v31;
      *(v6 + 16) = v32;
    }

    v6 -= 40;
    a4 = v39;
    v8 = v41;
  }

LABEL_28:
  v35 = (v51 - a4) / 40;
  if (v7 != a4 || v7 >= &a4[40 * v35])
  {
    memmove(v7, a4, 40 * v35);
  }

  return 1;
}

uint64_t sub_18F2A2F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F52262C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_18F2A2F90()
{
  sub_18F23D364();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_18F2A3060()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F2A310C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F2A317C()
{
  result = qword_1EACD45D8;
  if (!qword_1EACD45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD45D8);
  }

  return result;
}

unint64_t sub_18F2A3204()
{
  result = qword_1EACD45E0[0];
  if (!qword_1EACD45E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD45E0);
  }

  return result;
}

uint64_t IntentItemSection.init(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  result = type metadata accessor for IntentItemSection();
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t IntentItemSection.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

void sub_18F2A33C8()
{
  OUTLINED_FUNCTION_18();
  v44[1] = v0;
  v44[2] = v1;
  v45 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v15 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  sub_18F0EF1A8(v6, &qword_1EACD32D0);
  v19 = sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  v21 = v20;
  (*(v20 + 16))(v6, v4, v19);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
  v25 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = v15[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  v33 = v15[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v25);
  *(v6 + v15[7]) = xmmword_18F540410;
  *(v6 + v15[8]) = 0;
  v37 = v15[9];
  (*(v21 + 8))(v4, v19);
  *(v6 + v37) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v19);
  sub_18F0FF690(v14, v6 + v29, &qword_1EACCF7A8);
  sub_18F0FF690(v10, v6 + v33, &qword_1EACD0270);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v15);
  *(v6 + *(type metadata accessor for IntentItemSection() + 36)) = v45;
  OUTLINED_FUNCTION_16();
}

void IntentItemSection.init(_:items:)()
{
  OUTLINED_FUNCTION_18();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v50 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  sub_18F0EF1A8(v7, &qword_1EACD32D0);
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  v22 = v21;
  (*(v21 + 16))(v7, v5, v20);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  v26 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = v16[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v20);
  v34 = v16[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v26);
  *(v7 + v16[7]) = xmmword_18F540410;
  *(v7 + v16[8]) = 0;
  *(v7 + v16[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v20);
  sub_18F0FF690(v15, v7 + v30, &qword_1EACCF7A8);
  sub_18F0FF690(v11, v7 + v34, &qword_1EACD0270);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
  v53[5] = v51;
  v53[2] = v3;
  v53[3] = v52;
  v44 = sub_18F521DBC();
  v45 = type metadata accessor for IntentItem();
  WitnessTable = swift_getWitnessTable();
  v48 = sub_18F10C138(sub_18F2A39F4, v53, v44, v45, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v47);
  (*(v22 + 8))(v50, v20);

  *(v7 + *(type metadata accessor for IntentItemSection() + 36)) = v48;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2A3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return IntentItem.init(_:)(v8, a2, a3, a4);
}

void IntentItemSection.init(_:itemsBuilder:)()
{
  OUTLINED_FUNCTION_18();
  v54 = v0;
  v55 = v1;
  v51[1] = v3;
  v52 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v51[0] = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v12 = OUTLINED_FUNCTION_10(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v51 - v16;
  v18 = sub_18F520B3C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v53 = v5;
  sub_18F1169CC(v5, v17, &qword_1EACCF7A8);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v26 = sub_18F0EF1A8(v17, &qword_1EACCF7A8);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_18F0EF1A8(v7, &qword_1EACD32D0);
    (*(v19 + 16))(v7, v21, v18);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
    v30 = type metadata accessor for DisplayRepresentation.Image(0);
    v31 = v51[0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
    v35 = v22[5];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v18);
    v39 = v22[6];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v30);
    *(v7 + v22[7]) = xmmword_18F540410;
    *(v7 + v22[8]) = 0;
    v43 = v22[9];
    (*(v19 + 8))(v21, v18);
    *(v7 + v43) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v18);
    sub_18F0FF690(v15, v7 + v35, &qword_1EACCF7A8);
    sub_18F0FF690(v31, v7 + v39, &qword_1EACD0270);
    OUTLINED_FUNCTION_58_0();
    v26 = __swift_storeEnumTagSinglePayload(v47, v48, v49, v22);
  }

  v50 = v52(v26);
  sub_18F0EF1A8(v53, &qword_1EACCF7A8);
  *(v7 + *(type metadata accessor for IntentItemSection() + 36)) = v50;
  OUTLINED_FUNCTION_16();
}

void IntentItemSection.init(_:subtitle:image:itemsBuilder:)()
{
  OUTLINED_FUNCTION_18();
  v50 = v0;
  v51 = v1;
  v48 = v3;
  v49 = v2;
  v5 = v4;
  v45 = v4;
  v46 = v6;
  v7 = v6;
  v9 = v8;
  v47 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  sub_18F0EF1A8(v11, &qword_1EACD32D0);
  v24 = sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  v26 = v25;
  (*(v25 + 16))(v11, v9, v24);
  sub_18F1169CC(v7, v19, &qword_1EACCF7A8);
  sub_18F1169CC(v5, v15, &qword_1EACD0270);
  v27 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  v31 = v20[6];
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v11 + v20[7]) = xmmword_18F540410;
  *(v11 + v20[8]) = 0;
  *(v11 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v24);
  sub_18F0FF690(v19, v11 + v27, &qword_1EACCF7A8);
  sub_18F0FF690(v15, v11 + v31, &qword_1EACD0270);
  OUTLINED_FUNCTION_58_0();
  v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v20);
  v43 = v49(v42);
  sub_18F0EF1A8(v45, &qword_1EACD0270);
  sub_18F0EF1A8(v46, &qword_1EACCF7A8);
  (*(v26 + 8))(v47, v24);
  *(v11 + *(type metadata accessor for IntentItemSection() + 36)) = v43;
  OUTLINED_FUNCTION_16();
}

uint64_t static IntentItemSection.Builder.buildBlock()()
{
  type metadata accessor for IntentItemSection();

  return sub_18F521D2C();
}

uint64_t static IntentItemSection.Builder.buildBlock(_:)(uint64_t a1)
{
  type metadata accessor for IntentItemSection();
  sub_18F522CAC();
  swift_allocObject();
  v2 = sub_18F521CDC();
  IntentItemSection.init(items:)(a1, v3);
  v4 = sub_18F129FD4(v2);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

_BYTE *sub_18F2A4178(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F2A4230@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FE7C0 != -1)
  {
    swift_once();
  }

  result = sub_18F52305C();
  if (v7 == 1)
  {
    sub_18F2A430C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
  }

  return result;
}

unint64_t sub_18F2A430C()
{
  result = qword_1ED6FE028;
  if (!qword_1ED6FE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicOptionsContext.DynamicOptionsError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F2A4410()
{
  result = qword_1EACD4670;
  if (!qword_1EACD4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4670);
  }

  return result;
}

void *sub_18F2A4484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v142 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_16_29(v6, v142[0]);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v152 = sub_18F520ADC();
  v12 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_4();
  v15 = (v14 - v13);
  v16 = sub_18F52189C();
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4698);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD46A0);
  v22 = *(v21 - 8);
  v148 = *(v22 + 72);
  v149 = v21 - 8;
  v23 = v21 - 8;
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v142[1] = v25;
  *(v25 + 16) = xmmword_18F54FDC0;
  v144 = v25 + v24;
  v26 = v25 + v24 + *(v23 + 56);
  *(v25 + v24) = 0;
  v146 = v20;
  sub_18F52181C();
  v153 = type metadata accessor for MovementDirection.__();
  *v15 = v153;
  v150 = *MEMORY[0x1E6968E00];
  v27 = *(v12 + 104);
  v154 = v12 + 104;
  v147 = v27;
  v27(v15);
  v151 = v11;
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  v28 = sub_18F520B3C();
  v29 = v142[0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  v33 = type metadata accessor for DisplayRepresentation.Image(0);
  v34 = v3;
  OUTLINED_FUNCTION_11();
  v145 = v33;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  v38 = type metadata accessor for DisplayRepresentation();
  v39 = OUTLINED_FUNCTION_1_56();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
  v42 = v38[7];
  v155 = xmmword_18F540410;
  *(v26 + v42) = xmmword_18F540410;
  *(v26 + v38[8]) = 0;
  *(v26 + v38[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v38[10]);
  sub_18F0FF628(v29, v43, &qword_1EACCF7A8);
  sub_18F0FF628(v3, &v3[v26], &qword_1EACD0270);
  v44 = v148;
  v45 = v144;
  v46 = v144 + v148 + *(v149 + 56);
  *(v144 + v148) = 1;
  v47 = v146;
  sub_18F52181C();
  v48 = OUTLINED_FUNCTION_15_25();
  v143 = v15;
  (v147)(v48, v150);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_21(v49, v50, v51);
  OUTLINED_FUNCTION_11();
  v52 = v145;
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v145);
  v56 = OUTLINED_FUNCTION_1_56();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v52);
  OUTLINED_FUNCTION_2_58();
  *(v46 + v59) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v38[10]);
  v60 = v29;
  sub_18F0FF628(v29, v61, &qword_1EACCF7A8);
  v62 = v46 + v47;
  v63 = v34;
  sub_18F0FF628(v34, v62, &qword_1EACD0270);
  v64 = (v45 + 2 * v44);
  v65 = v149;
  v66 = &v64[*(v149 + 56)];
  *v64 = 2;
  sub_18F52181C();
  v67 = v143;
  v68 = v152;
  *v143 = v153;
  v69 = v147;
  v147(v67, v150, v68);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  sub_18F520B4C();
  v70 = v60;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v28);
  OUTLINED_FUNCTION_11();
  v74 = v145;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v145);
  v78 = OUTLINED_FUNCTION_1_56();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v74);
  OUTLINED_FUNCTION_2_58();
  *&v66[v81] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v38[10]);
  sub_18F0FF628(v60, v82, &qword_1EACCF7A8);
  v83 = v63;
  sub_18F0FF628(v63, &v66[v63], &qword_1EACD0270);
  v84 = v144;
  v85 = (v144 + 3 * v148);
  v86 = &v85[*(v65 + 56)];
  *v85 = 3;
  v87 = v146;
  sub_18F52181C();
  v88 = v143;
  v89 = v152;
  *v143 = v153;
  v90 = v150;
  v69(v88, v150, v89);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  sub_18F520B4C();
  v91 = v70;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v28);
  OUTLINED_FUNCTION_11();
  v95 = v145;
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v145);
  v99 = OUTLINED_FUNCTION_1_56();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v95);
  OUTLINED_FUNCTION_2_58();
  *&v86[v102] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v38[10]);
  sub_18F0FF628(v70, v103, &qword_1EACCF7A8);
  sub_18F0FF628(v83, &v86[v87], &qword_1EACD0270);
  v104 = (v84 + 4 * v148);
  v105 = &v104[*(v149 + 56)];
  *v104 = 4;
  sub_18F52181C();
  v106 = OUTLINED_FUNCTION_15_25();
  (v147)(v106, v90);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_21(v107, v108, v109);
  OUTLINED_FUNCTION_11();
  v110 = v145;
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v145);
  v114 = OUTLINED_FUNCTION_1_56();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v110);
  OUTLINED_FUNCTION_2_58();
  *&v105[v117] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v38[10]);
  sub_18F0FF628(v91, v118, &qword_1EACCF7A8);
  sub_18F0FF628(v83, &v105[v87], &qword_1EACD0270);
  v119 = (v144 + 5 * v148);
  v120 = &v119[*(v149 + 56)];
  *v119 = 5;
  sub_18F52181C();
  v121 = OUTLINED_FUNCTION_15_25();
  (v147)(v121, v150);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  v122 = v91;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v28);
  v126 = v83;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v110);
  v130 = v38[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v28);
  v134 = v38[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v110);
  *&v120[v38[7]] = v155;
  *&v120[v38[8]] = 0;
  *&v120[v38[9]] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v28);
  sub_18F0FF628(v122, &v120[v130], &qword_1EACCF7A8);
  sub_18F0FF628(v126, &v120[v134], &qword_1EACD0270);
  sub_18F2A5E14();
  result = sub_18F5216CC();
  off_1ED6FE0D0 = result;
  return result;
}

_UNKNOWN **sub_18F2A4DA4()
{
  if (qword_1ED6FE0C8 != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }

  return &off_1ED6FE0D0;
}

uint64_t (*static MovementDirection.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE0C8 != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }

  OUTLINED_FUNCTION_19_26();
  return j__swift_endAccess;
}

AppIntents::MovementDirection_optional __swiftcall MovementDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MovementDirection.rawValue.getter()
{
  result = 28789;
  switch(*v0)
  {
    case 1:
      result = 1853321060;
      break;
    case 2:
      result = 1952867692;
      break;
    case 3:
      result = 0x7468676972;
      break;
    case 4:
      result = 0x64726177726F66;
      break;
    case 5:
      result = 0x647261776B636162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F2A4FB0@<X0>(uint64_t *a1@<X8>)
{
  result = MovementDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_18F2A5004()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  v112 = v107 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_16_29(v5, v107[0]);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v119 = sub_18F520ADC();
  v11 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4688);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4690);
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v110 = v20 - 8;
  v111 = v22;
  v23 = v20 - 8;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v107[1] = v25;
  *(v25 + 16) = xmmword_18F543810;
  v114 = v19;
  v115 = v25 + v24;
  v26 = v25 + v24 + *(v23 + 56);
  *(v25 + v24) = 0;
  sub_18F52181C();
  v27 = type metadata accessor for MovementMagnitude.__();
  *v14 = v27;
  v113 = v27;
  v117 = *MEMORY[0x1E6968E00];
  v28 = *(v11 + 104);
  v118 = v11 + 104;
  v120 = v28;
  v28(v14);
  v109 = v10;
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  v29 = sub_18F520B3C();
  v30 = v107[0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  v34 = type metadata accessor for DisplayRepresentation.Image(0);
  v35 = v112;
  OUTLINED_FUNCTION_11();
  v108 = v34;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v34);
  v39 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_5_40();
  v40 = v39[6];
  v41 = OUTLINED_FUNCTION_3_39();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v34);
  v44 = v39[7];
  v116 = xmmword_18F540410;
  OUTLINED_FUNCTION_6_32(v44, xmmword_18F540410);
  *(v26 + v45) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v39[10]);
  v46 = v30;
  sub_18F0FF628(v30, v47, &qword_1EACCF7A8);
  sub_18F0FF628(v35, v26 + v40, &qword_1EACD0270);
  v49 = v110;
  v48 = v111;
  v50 = v115 + v111 + *(v110 + 56);
  *(v115 + v111) = 1;
  sub_18F52181C();
  *v14 = v27;
  v51 = OUTLINED_FUNCTION_13_29();
  v52(v51);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v29);
  OUTLINED_FUNCTION_11();
  v56 = v108;
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v108);
  OUTLINED_FUNCTION_5_40();
  v60 = v39[6];
  v61 = OUTLINED_FUNCTION_3_39();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v56);
  OUTLINED_FUNCTION_6_32(v39[7], v116);
  *(v50 + v64) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v39[10]);
  sub_18F0FF628(v46, v65, &qword_1EACCF7A8);
  v66 = v112;
  sub_18F0FF628(v112, v50 + v60, &qword_1EACD0270);
  v67 = (v115 + 2 * v48);
  v68 = &v67[*(v49 + 56)];
  *v67 = 2;
  sub_18F52181C();
  *v14 = v113;
  v69 = OUTLINED_FUNCTION_13_29();
  v70(v69);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_21(v71, v72, v73);
  OUTLINED_FUNCTION_11();
  v74 = v108;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v108);
  OUTLINED_FUNCTION_5_40();
  v78 = v39[6];
  v79 = OUTLINED_FUNCTION_3_39();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
  OUTLINED_FUNCTION_6_32(v39[7], v116);
  *&v68[v82] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_63(v39[10]);
  sub_18F0FF628(v46, v83, &qword_1EACCF7A8);
  sub_18F0FF628(v66, &v68[v78], &qword_1EACD0270);
  v84 = (v115 + 3 * v111);
  v85 = &v84[*(v110 + 56)];
  *v84 = 3;
  sub_18F52181C();
  *v14 = v113;
  v86 = OUTLINED_FUNCTION_13_29();
  v87(v86);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_4();
  v88 = v46;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_21(v89, v90, v91);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v74);
  v95 = v39[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v29);
  v99 = v39[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v74);
  *&v85[v39[7]] = v116;
  *&v85[v39[8]] = 0;
  *&v85[v39[9]] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v29);
  sub_18F0FF628(v88, &v85[v95], &qword_1EACCF7A8);
  sub_18F0FF628(v66, &v85[v99], &qword_1EACD0270);
  sub_18F2A6380();
  result = sub_18F5216CC();
  off_1ED6FE0B8 = result;
  return result;
}

_UNKNOWN **sub_18F2A56F8()
{
  if (qword_1ED6FE0B0 != -1)
  {
    OUTLINED_FUNCTION_10_31();
  }

  return &off_1ED6FE0B8;
}

uint64_t sub_18F2A575C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_29();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F2A57D8(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_29();
  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static MovementMagnitude.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE0B0 != -1)
  {
    OUTLINED_FUNCTION_10_31();
  }

  OUTLINED_FUNCTION_19_26();
  return j_j__swift_endAccess;
}

uint64_t sub_18F2A58A4@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_18_29();
  swift_beginAccess();
  *a3 = *a2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F2A58F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void *a6)
{
  v8 = *a1;
  v9 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  a5(v9);
  OUTLINED_FUNCTION_18_29();
  swift_beginAccess();
  *a6 = v8;
}

AppIntents::MovementMagnitude_optional __swiftcall MovementMagnitude.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MovementMagnitude.rawValue.getter()
{
  result = 0x6C6C616D73;
  switch(*v0)
  {
    case 1:
      result = 0x746C7561666564;
      break;
    case 2:
      result = 0x656772616CLL;
      break;
    case 3:
      result = 0x6D756D6978616DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18F2A5A38()
{
  result = qword_1ED6FEB38;
  if (!qword_1ED6FEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB38);
  }

  return result;
}

unint64_t sub_18F2A5ACC()
{
  result = qword_1ED6FEB18;
  if (!qword_1ED6FEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB18);
  }

  return result;
}

unint64_t sub_18F2A5B20()
{
  result = qword_1ED6FEB00;
  if (!qword_1ED6FEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB00);
  }

  return result;
}

unint64_t sub_18F2A5B74()
{
  result = qword_1ED6FEB30;
  if (!qword_1ED6FEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB30);
  }

  return result;
}

unint64_t sub_18F2A5BC8(uint64_t a1)
{
  result = sub_18F2A5BF0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F2A5BF0()
{
  result = qword_1ED6FEB10;
  if (!qword_1ED6FEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB10);
  }

  return result;
}

unint64_t sub_18F2A5C44(uint64_t a1)
{
  result = sub_18F2A5C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F2A5C6C()
{
  result = qword_1ED6FEB08;
  if (!qword_1ED6FEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB08);
  }

  return result;
}

unint64_t sub_18F2A5CD8()
{
  result = qword_1ED6FEB20;
  if (!qword_1ED6FEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB20);
  }

  return result;
}

unint64_t sub_18F2A5D6C()
{
  result = qword_1ED6FEB48;
  if (!qword_1ED6FEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB48);
  }

  return result;
}

unint64_t sub_18F2A5DC0()
{
  result = qword_1ED6FEB28;
  if (!qword_1ED6FEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB28);
  }

  return result;
}

unint64_t sub_18F2A5E14()
{
  result = qword_1ED6FEB40;
  if (!qword_1ED6FEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB40);
  }

  return result;
}

unint64_t sub_18F2A5EA8()
{
  result = qword_1ED6FEAE8;
  if (!qword_1ED6FEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAE8);
  }

  return result;
}

uint64_t sub_18F2A5F20@<X0>(uint64_t *a1@<X8>)
{
  result = MovementMagnitude.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F2A5F88()
{
  result = qword_1ED6FEAC8;
  if (!qword_1ED6FEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAC8);
  }

  return result;
}

unint64_t sub_18F2A5FDC()
{
  result = qword_1ED6FEAB0;
  if (!qword_1ED6FEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAB0);
  }

  return result;
}

unint64_t sub_18F2A6030()
{
  result = qword_1ED6FEAE0;
  if (!qword_1ED6FEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAE0);
  }

  return result;
}

unint64_t sub_18F2A6084(uint64_t a1)
{
  result = sub_18F2A60AC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F2A60AC()
{
  result = qword_1ED6FEAC0;
  if (!qword_1ED6FEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAC0);
  }

  return result;
}

unint64_t sub_18F2A6100(uint64_t a1)
{
  result = sub_18F2A6128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F2A6128()
{
  result = qword_1ED6FEAB8;
  if (!qword_1ED6FEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAB8);
  }

  return result;
}

unint64_t sub_18F2A61EC()
{
  result = qword_1ED6FEAD0;
  if (!qword_1ED6FEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAD0);
  }

  return result;
}

uint64_t sub_18F2A6284(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F2A62D8()
{
  result = qword_1ED6FEAF8;
  if (!qword_1ED6FEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAF8);
  }

  return result;
}

unint64_t sub_18F2A632C()
{
  result = qword_1ED6FEAD8;
  if (!qword_1ED6FEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAD8);
  }

  return result;
}

unint64_t sub_18F2A6380()
{
  result = qword_1ED6FEAF0;
  if (!qword_1ED6FEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEAF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovementDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovementMagnitude(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t AppContext.fetchSuggestedFocusActions(actionMetadata:suggestionContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F2A6700, 0, 0);
}

uint64_t sub_18F2A6700()
{
  v41 = v0;
  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Attempting to fetch suggested start workout intents", v4, 2u);
    OUTLINED_FUNCTION_32();
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v12 = sub_18F52163C();
    v13 = sub_18F52221C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_18F0E9000, v12, v13, "Wrong input types to fetchSuggestedFocusActions", v14, 2u);
      OUTLINED_FUNCTION_32();
    }

    sub_18F2A752C();
    OUTLINED_FUNCTION_28();
    *v15 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v6 = v5;
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = sub_18F33AF50();
    if (v7)
    {
      v8 = dynamic_cast_existential_1_conditional(v7);
      v0[9] = v8;
      if (v8)
      {
        v39 = (*(v9 + 32) + **(v9 + 32));
        v10 = swift_task_alloc();
        v0[10] = v10;
        *v10 = v0;
        v10[1] = sub_18F2A6CF4;

        return v39();
      }

      sub_18F2A752C();
      OUTLINED_FUNCTION_28();
      *v27 = 1;
    }

    else
    {
      swift_unknownObjectRetain();
      v17 = sub_18F52163C();
      v18 = sub_18F52221C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v40[0] = v20;
        *v19 = 136315138;
        v21 = [v6 identifier];
        v22 = sub_18F5218DC();
        v24 = v23;

        v25 = sub_18F11897C(v22, v24, v40);

        *(v19 + 4) = v25;
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();

        sub_18F2A752C();
        OUTLINED_FUNCTION_28();
        *v26 = 0;
        swift_willThrow();
LABEL_21:
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      sub_18F2A752C();
      OUTLINED_FUNCTION_28();
      *v28 = 0;
    }

    swift_willThrow();
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  sub_18F2A752C();
  OUTLINED_FUNCTION_28();
  *v16 = 2;
  swift_willThrow();
LABEL_22:
  swift_unknownObjectRetain();
  v29 = sub_18F52163C();
  v30 = sub_18F52221C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;
    v33 = [v6 identifier];
    v34 = sub_18F5218DC();
    v36 = v35;

    v37 = sub_18F11897C(v34, v36, v40);

    *(v31 + 4) = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_25:
  v38 = v0[1];

  return v38();
}

uint64_t sub_18F2A6CF4()
{
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  return MEMORY[0x1EEE6DFA0](sub_18F2A6DF0, 0, 0);
}

uint64_t sub_18F2A6DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FB0);
  v1 = sub_18F52298C();

  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v3 = (v1 + 32);
    result = sub_18F220C38();
    v16 = result;
    v17 = v0;
    v5 = 0;
    while (v5 < *(v1 + 16))
    {
      ++v5;
      v6 = v3[3];
      v7 = v3[4];
      v8 = __swift_project_boxed_opaque_existential_1Tm(v3, v6);
      v0[5] = v6;
      v9 = *(v7 + 8);
      v0[6] = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      v11 = v1;
      v12 = *(*(v6 - 8) + 16);
      v12(boxed_opaque_existential_1, v8, v6);
      v13 = swift_task_alloc();
      v12(v13, boxed_opaque_existential_1, v6);
      v1 = v11;
      v0 = v17;
      sub_18F33B63C(v13, v16, v6, v9);

      __swift_destroy_boxed_opaque_existential_1Tm((v17 + 2));
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      result = sub_18F5228AC();
      v3 += 5;
      if (v2 == v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v15 = v0[1];

    return v15(v14);
  }

  return result;
}

uint64_t sub_18F2A70C8(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_18F2A719C;

  return AppContext.fetchSuggestedFocusActions(actionMetadata:suggestionContext:)(a1, a2);
}

uint64_t sub_18F2A719C()
{
  v2 = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v2)
  {
    v9 = sub_18F520A7C();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    v10 = sub_18F521C8C();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v3 + 40);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_18F2A738C(char a1)
{
  v2 = 0xD000000000000014;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "Invalid Suggestion Context.";
    }

    else
    {
      v3 = "v@?@NSArray@NSError>32";
    }

    if (a1 == 1)
    {
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v3 = "s not available.";
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = sub_18F5218DC();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3 | 0x8000000000000000;
  return sub_18F5216CC();
}

uint64_t sub_18F2A7484(uint64_t a1)
{
  v2 = sub_18F2A76B8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F2A74C0(uint64_t a1)
{
  v2 = sub_18F2A76B8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F2A752C()
{
  result = qword_1EACD46A8;
  if (!qword_1EACD46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestedFocusActionsFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F2A7664()
{
  result = qword_1EACD46B0;
  if (!qword_1EACD46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46B0);
  }

  return result;
}

unint64_t sub_18F2A76B8()
{
  result = qword_1EACD46B8;
  if (!qword_1EACD46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46B8);
  }

  return result;
}

uint64_t sub_18F2A770C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F2A77CC;

  return sub_18F2A70C8(v2, v3, v5, v4);
}

uint64_t sub_18F2A77CC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_18F2A78E8()
{
  result = qword_1EACD46C0;
  if (!qword_1EACD46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46C0);
  }

  return result;
}

unint64_t sub_18F2A7940()
{
  result = qword_1EACD46C8;
  if (!qword_1EACD46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46C8);
  }

  return result;
}

unint64_t sub_18F2A79A0()
{
  result = qword_1EACD46D0;
  if (!qword_1EACD46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46D0);
  }

  return result;
}

unint64_t sub_18F2A79F8()
{
  result = qword_1EACD46D8;
  if (!qword_1EACD46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46D8);
  }

  return result;
}

AppIntents::ConfirmationConditions sub_18F2A7A50@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ConfirmationConditions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F2A7A90@<X0>(uint64_t *a1@<X8>)
{
  result = ConfirmationConditions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static AppShortcutsBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_18F2A7C54(a1, &v3);
  if (v4)
  {
    sub_18F118710(&v3, v5);
    sub_18F118710(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD46E8);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_18F2A7CC4(&v3);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t static AppShortcutsBuilder.buildLimitedAvailability(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for LimitedAvailabilityAppShortcuts;
  *a2 = a1;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t LimitedAvailabilityAppShortcuts.appShortcuts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_18F2A7C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD46E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2A7CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD46E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutsBuilder(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void static URLRepresentableIntent<>.urlRepresentation.getter()
{
  OUTLINED_FUNCTION_58_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_57_6();

  sub_18F344B98(v2, v0, v1);
}

{
  OUTLINED_FUNCTION_58_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_57_6();

  sub_18F344E48(v2, v0, v1);
}

uint64_t URLRepresentableIntent<>.perform()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v0[2] = OUTLINED_FUNCTION_34_0();
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_23_2(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_34_0();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_25_2(v3);

  return URLRepresentableIntent.urlRepresentation.getter();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v0[2] = OUTLINED_FUNCTION_34_0();
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_23_2(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_34_0();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_25_2(v3);

  return URLRepresentableIntent.urlRepresentation.getter();
}

uint64_t sub_18F2A7F74()
{

  return MEMORY[0x1EEE6DFA0](sub_18F2A8458, 0, 0);
}

uint64_t sub_18F2A81E4()
{

  return MEMORY[0x1EEE6DFA0](sub_18F2A82E0, 0, 0);
}

uint64_t sub_18F2A82E0()
{
  v1 = v0[2];
  v2 = v0[3];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F1F2774(v1);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[4];
    v3 = v0[5];
    (*(v4 + 32))(v3, v1, v2);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    swift_allocError();
    (*(v4 + 16))(v5, v3, v2);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v2);
  }

  v6 = v0[1];

  return v6();
}

unint64_t sub_18F2A84B0(char a1)
{
  if (a1)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void sub_18F2A84F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F2A9764(v3, a2, a3, a1);
}

uint64_t sub_18F2A8544(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v8 = sub_18F52165C();
  __swift_project_value_buffer(v8, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = sub_18F52163C();
  v10 = sub_18F52223C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_18F11897C(a2, a3, aBlock);
    *(v11 + 12) = 2048;
    *(v11 + 14) = sub_18F111F70(a4);

    _os_log_impl(&dword_18F0E9000, v9, v10, "XPC: Sending events for %s: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x193ADD350](v12, -1, -1);
    MEMORY[0x193ADD350](v11, -1, -1);
  }

  else
  {
  }

  sub_18F0F21A8(0, &qword_1EACCE8F8);
  v13 = sub_18F521C8C();
  v14 = sub_18F5218AC();
  aBlock[4] = sub_18F2A9D70;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F2A881C;
  aBlock[3] = &block_descriptor_21;
  v15 = _Block_copy(aBlock);

  [v20 sendAppNotificationEvents:v13 bundleIdentifier:v14 reply:v15];
  _Block_release(v15);

  swift_beginAccess();
  v16 = *(v7 + 16);
  if (v16)
  {
    swift_willThrow();
    v17 = v16;
  }
}

void sub_18F2A881C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_18F2A8888@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v60 = a1;
  v61 = a4;
  v54 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - v10;
  v12 = sub_18F520E6C();
  v58 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v14 = swift_allocBox();
  v55 = v15;
  v59 = v12;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v12);
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v56 = v11;
  v16 = sub_18F52165C();
  v17 = __swift_project_value_buffer(v16, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v53[1] = v17;
  v18 = sub_18F52163C();
  v19 = sub_18F5221FC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v53[0] = v14;
    v21 = v20;
    v22 = a5;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_18F11897C(a2, a3, aBlock);
    *(v21 + 12) = 2080;
    v24 = a3;
    *(v21 + 14) = sub_18F11897C(v61, v22, aBlock);
    _os_log_impl(&dword_18F0E9000, v18, v19, "XPC: Registering for observation status changes: %s/%s", v21, 0x16u);
    swift_arrayDestroy();
    v25 = v23;
    a5 = v22;
    MEMORY[0x193ADD350](v25, -1, -1);
    v26 = v21;
    v14 = v53[0];
    MEMORY[0x193ADD350](v26, -1, -1);
  }

  else
  {

    v24 = a3;
  }

  v27 = sub_18F5218AC();
  v28 = sub_18F5218AC();
  v29 = swift_allocObject();
  v30 = v62;
  *(v29 + 16) = v62;
  *(v29 + 24) = v14;
  aBlock[4] = sub_18F2A9D8C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F2A8F18;
  aBlock[3] = &block_descriptor_33;
  v31 = a5;
  v32 = _Block_copy(aBlock);

  [v60 registerOnObservationStatusChangedForBundleIdentifier:v27 entityType:v28 reply:v32];
  _Block_release(v32);

  swift_beginAccess();
  v33 = *(v30 + 16);
  if (v33)
  {
    v63 = *(v30 + 16);
LABEL_10:
    swift_willThrow();
    v41 = v33;
    goto LABEL_11;
  }

  v34 = a2;
  v35 = v24;
  v36 = v55;
  swift_beginAccess();
  v37 = v36;
  v38 = v56;
  sub_18F2A9D94(v37, v56);
  v39 = v59;
  if (__swift_getEnumTagSinglePayload(v38, 1, v59) == 1)
  {
    sub_18F2A9E04(v38);
    sub_18F2A9D1C();
    v63 = swift_allocError();
    v33 = 0;
    *v40 = 1;
    goto LABEL_10;
  }

  v43 = v58 + 32;
  v44 = v38;
  v45 = *(v58 + 32);
  v45(v57, v44, v39);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v46 = v31;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v47 = sub_18F52163C();
  v48 = sub_18F5221FC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v58 = v43;
    v50 = v49;
    v51 = swift_slowAlloc();
    v65 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_18F11897C(v34, v35, &v65);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_18F11897C(v61, v46, &v65);
    _os_log_impl(&dword_18F0E9000, v47, v48, "XPC: Finished registering for observation status changes: %s/%s", v50, 0x16u);
    swift_arrayDestroy();
    v52 = v51;
    v39 = v59;
    MEMORY[0x193ADD350](v52, -1, -1);
    MEMORY[0x193ADD350](v50, -1, -1);
  }

  v45(v54, v57, v39);
LABEL_11:
}

void sub_18F2A8E84(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = a2;
    v6 = a2;
  }

  else
  {
    v8 = swift_projectBox();
    swift_beginAccess();
    sub_18F2A9E6C(a1, v8);
  }
}

uint64_t sub_18F2A8F18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_18F520E4C();
    v10 = sub_18F520E6C();
    v11 = 0;
  }

  else
  {
    v10 = sub_18F520E6C();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_18F2A9E04(v8);
}

uint64_t sub_18F2A905C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v9 = sub_18F52165C();
  __swift_project_value_buffer(v9, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v10 = sub_18F52163C();
  v11 = sub_18F5221FC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_18F11897C(a2, a3, aBlock);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_18F11897C(a4, a5, aBlock);
    _os_log_impl(&dword_18F0E9000, v10, v11, "XPC: Unregistering for observation status changes: %s/%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v13, -1, -1);
    MEMORY[0x193ADD350](v12, -1, -1);
  }

  else
  {
  }

  v14 = sub_18F5218AC();
  v15 = sub_18F5218AC();
  v16 = sub_18F520E2C();
  aBlock[4] = sub_18F2AA034;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F2A881C;
  aBlock[3] = &block_descriptor_12_0;
  v17 = _Block_copy(aBlock);

  [v23 unregisterOnObservationStatusChangedForBundleIdentifier:v14 entityType:v15 registrationUUID:v16 reply:v17];
  _Block_release(v17);

  swift_beginAccess();
  v18 = *(v8 + 16);
  if (v18)
  {
    swift_willThrow();
    v19 = v18;
  }
}

void sub_18F2A9368(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = a1;
    v5 = a1;
  }
}

void sub_18F2A93D0(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a1;
  v27 = a5;
  v7 = sub_18F520E6C();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v10 = sub_18F5218DC();
  v12 = sub_18F10051C(v10, v11, 0);
  v13 = LNDaemonApplicationXPCInterface();
  [v12 setRemoteObjectInterface_];

  [v12 resume];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  aBlock[4] = sub_18F2AA030;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_65();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);

  v18 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v19 = *v15;
  if (v19)
  {
    swift_willThrow();
    v20 = v19;
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1Tm(v33);

    return;
  }

  v26 = v7;
  v22 = v29;
  v21 = v30;
  v23 = v31;
  sub_18F0FECD4(v33, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18F2A9D1C();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_18F2A8888(v34, v22, a2, v21, a4, v9);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v33);

    swift_unknownObjectRelease();
  }

  else
  {
    [v12 invalidate];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    (*(v28 + 32))(v27, v9, v26);
  }
}

void sub_18F2A9764(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v8 = sub_18F5218DC();
  v10 = sub_18F10051C(v8, v9, 0);
  v11 = LNDaemonApplicationXPCInterface();
  [v10 setRemoteObjectInterface_];

  [v10 resume];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  aBlock[4] = sub_18F2AA030;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F38D7A4;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v16 = *v13;
  if (v16)
  {
    swift_willThrow();
    v17 = v16;
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return;
  }

  sub_18F0FECD4(v20, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18F2A9D1C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_18F2A8544(v21, a2, a3, a4);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    swift_unknownObjectRelease();
  }

  else
  {
    [v10 invalidate];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }
}

void sub_18F2A9A58(void (*a1)())
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v3 = sub_18F5218DC();
  v5 = sub_18F10051C(v3, v4, 0);
  v6 = LNDaemonApplicationXPCInterface();
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  aBlock[4] = sub_18F21F2D8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F38D7A4;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);

  v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *v8;
  if (v11)
  {
    swift_willThrow();
    v12 = v11;
  }

  else
  {
    sub_18F0FECD4(v15, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
    if (swift_dynamicCast())
    {
      a1();
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v15);

        swift_unknownObjectRelease();

        return;
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_18F2A9D1C();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
}