void sub_221AD00FC()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218_2();
  v5 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v54);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_89_5(v14, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7B0, &qword_221BE0D08);
  OUTLINED_FUNCTION_2_1(v58);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v56);
  v20 = type metadata accessor for AppIntentsProtobuf_Value(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_0();
  v26 = (v25 - v24);
  v27 = OUTLINED_FUNCTION_131_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_8_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74_5();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_221_2(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_116_5();
  v37 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  OUTLINED_FUNCTION_308(v37);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v3);
  if (!v40)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v40)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v0, v0[1], *v26, v26[1]))
      {
        v45 = *(v1 + 20);
        v46 = sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v47, v48);
        sub_221BCD338();
        OUTLINED_FUNCTION_20_9();
        sub_221ADFE28();
        sub_221ADFE28();
        sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }

      OUTLINED_FUNCTION_247_0();
      sub_221ADFE28();
      OUTLINED_FUNCTION_0_0();
      sub_221ADFE28();
      v41 = &unk_27CFBB660;
      v42 = &qword_221BE4610;
LABEL_15:
      v43 = v3;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_14:
    v41 = &qword_27CFB85E0;
    v42 = &unk_221BD3E40;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20_8(v3 + v2);
  if (!v40)
  {
    goto LABEL_14;
  }

  sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
LABEL_6:
  v38 = *(v57 + 24);
  v39 = *(v58 + 48);
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_66_3(v59);
  if (v40)
  {
    OUTLINED_FUNCTION_39_8(v59 + v39);
    if (v40)
    {
      sub_2219A1CC8(v59, &unk_27CFBB980, &unk_221BE0A20);
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_346();
    sub_221A1C558();
    OUTLINED_FUNCTION_39_8(v59 + v39);
    if (!v49)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_325();
      OUTLINED_FUNCTION_24();
      sub_221A77A1C();
      v51 = v50;
      sub_221ADFE28();
      OUTLINED_FUNCTION_300();
      sub_2219A1CC8(v59, &unk_27CFBB980, &unk_221BE0A20);
      if ((v51 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_28:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v52, v53);
      OUTLINED_FUNCTION_285_0();
      v44 = sub_221BCD338();
      goto LABEL_18;
    }

    sub_221ADFE28();
  }

  v41 = &qword_27CFBA7B0;
  v42 = &qword_221BE0D08;
  v43 = v59;
LABEL_16:
  sub_2219A1CC8(v43, v41, v42);
LABEL_17:
  v44 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD0630(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7B8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD06D0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD0798()
{
  sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221AD0818()
{
  result = MEMORY[0x223DA31F0](0xD000000000000023, 0x8000000221BF01A0);
  qword_27CFDE400 = 0xD00000000000001FLL;
  *algn_27CFDE408 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD0884()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE410);
  __swift_project_value_buffer(v0, qword_27CFDE410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  v6 = *(*(DeferredPropertyValue - 8) + 64);
  v7 = MEMORY[0x28223BE20](DeferredPropertyValue);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7D0, &qword_221BE0D18);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, DeferredPropertyValue);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA7D0, &qword_221BE0D18);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, DeferredPropertyValue);
    }
  }

  sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA7D0, &qword_221BE0D18);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, DeferredPropertyValue) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA7D0, &qword_221BE0D18);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA7D0, &qword_221BE0D18);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA7D0, &qword_221BE0D18);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA7C8, &qword_221BE0D10);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AD0F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  v14 = *(*(DeferredPropertyValue - 8) + 64);
  v15 = MEMORY[0x28223BE20](DeferredPropertyValue);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, DeferredPropertyValue);
  v31 = DeferredPropertyValue;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA7C8, &qword_221BE0D10);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AD143C()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(DeferredPropertyValue);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AD1728(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AD1514(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_48_7();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
    OUTLINED_FUNCTION_94_4(DeferredPropertyValueResponse);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD1514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  v9 = *(*(DeferredPropertyValue - 8) + 64);
  MEMORY[0x28223BE20](DeferredPropertyValue);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, DeferredPropertyValue) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD193C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(DeferredPropertyValue);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7D8, &qword_221BE0D20);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_5(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_35_8();
    if (v17)
    {
      sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
LABEL_12:
      DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
      OUTLINED_FUNCTION_259_0(DeferredPropertyValueResponse);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v22, v23);
      v18 = OUTLINED_FUNCTION_36_8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v17)
  {
    OUTLINED_FUNCTION_48_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA7D8, &qword_221BE0D20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8E44C();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD1BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7C0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD1C98(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD1D60()
{
  sub_221ADB35C(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);

  return sub_221BCCB48();
}

uint64_t sub_221AD1DE0()
{
  if (qword_27CFB71A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE400;
  v2 = *algn_27CFDE408;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE428 = v1;
  unk_27CFDE430 = v2;
  return result;
}

uint64_t sub_221AD1E9C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0) + 20);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221AD1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD2130()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_52_6();
  v6 = type metadata accessor for AppIntentsProtobuf_Value(v5);
  v7 = OUTLINED_FUNCTION_43_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = OUTLINED_FUNCTION_120();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_157();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_273_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_29_8();
  v21 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(v20) + 20);
  v22 = *(v4 + 56);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_20_8(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_20_8(v1 + v22);
    if (v26)
    {
      sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v22);
  if (v26)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_10:
    v27 = &qword_27CFB85E0;
    v28 = &unk_221BD3E40;
LABEL_11:
    sub_2219A1CC8(v1, v27, v28);
LABEL_12:
    v25 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_10_14();
  sub_221ADFDB4();
  if ((MEMORY[0x223DA21A0](*v3, v3[1], *v2, v2[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v27 = &unk_27CFBB660;
    v28 = &qword_221BE4610;
    goto LABEL_11;
  }

  v29 = *(v0 + 20);
  v30 = sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v31, v32);
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_20_9();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
  if ((v30 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v23, v24);
  OUTLINED_FUNCTION_118_0();
  v25 = sub_221BCD338();
LABEL_13:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD2468(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7E8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD2508(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD25D0()
{
  sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221AD2650()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001ELL, 0x8000000221BF01D0);
  qword_27CFDE450 = 0xD00000000000001FLL;
  *algn_27CFDE458 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD26C4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE460);
  __swift_project_value_buffer(v0, qword_27CFDE460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD288C()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v6 = OUTLINED_FUNCTION_188_2();
      v0(v6);
    }

    else if (result == 2)
    {
      v5 = OUTLINED_FUNCTION_188_2();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_221AD2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  v6 = *(*(OptionsForAction - 8) + 64);
  v7 = MEMORY[0x28223BE20](OptionsForAction);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7F8, &qword_221BE0D38);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, OptionsForAction);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA7F8, &qword_221BE0D38);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, OptionsForAction);
    }
  }

  sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA7F8, &qword_221BE0D38);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, OptionsForAction) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA7F8, &qword_221BE0D38);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA7F8, &qword_221BE0D38);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA7F8, &qword_221BE0D38);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB6D0, &qword_221BE0D30);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AD2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  v14 = *(*(OptionsForAction - 8) + 64);
  v15 = MEMORY[0x28223BE20](OptionsForAction);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, OptionsForAction);
  v31 = OptionsForAction;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB6D0, &qword_221BE0D30);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AD32F0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(OptionsForAction);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AD35DC(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AD33C8(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_47_5();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
    OUTLINED_FUNCTION_94_4(OptionsForActionResponse);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD33C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  v9 = *(*(OptionsForAction - 8) + 64);
  MEMORY[0x28223BE20](OptionsForAction);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD35DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, OptionsForAction) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD37F0()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(OptionsForAction);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA800, &qword_221BE0D40);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_5(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_35_8();
    if (v17)
    {
      sub_2219A1CC8(v0, &unk_27CFBB6D0, &qword_221BE0D30);
LABEL_12:
      OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
      OUTLINED_FUNCTION_259_0(OptionsForActionResponse);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v22, v23);
      v18 = OUTLINED_FUNCTION_36_8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v17)
  {
    OUTLINED_FUNCTION_47_5();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA800, &qword_221BE0D40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8E730();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB6D0, &qword_221BE0D30);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD3AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD3B4C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD3C14()
{
  sub_221ADB35C(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);

  return sub_221BCCB48();
}

uint64_t sub_221AD3C94()
{
  if (qword_27CFB71C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE450;
  v2 = *algn_27CFDE458;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE478 = v1;
  unk_27CFDE480 = v2;
  return result;
}

uint64_t sub_221AD3D50()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0) + 20);
  type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  sub_221ADB35C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);
  return sub_221BCCAD8();
}

uint64_t sub_221AD3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA810, &qword_221BE0D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA810, &qword_221BE0D50);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD3FE4()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(v2);
  v4 = OUTLINED_FUNCTION_60_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v7 = OUTLINED_FUNCTION_120();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_97_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA818, &qword_221BE0D58);
  OUTLINED_FUNCTION_273_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_29_8();
  v18 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(v17) + 20);
  v19 = *(v1 + 56);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_53_7(v0);
  if (v20)
  {
    OUTLINED_FUNCTION_35_8();
    if (v20)
    {
      sub_2219A1CC8(v0, &qword_27CFBA810, &qword_221BE0D50);
LABEL_12:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v23, v24);
      v21 = OUTLINED_FUNCTION_135_3();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v20)
  {
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA818, &qword_221BE0D58);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  v22 = sub_221A7B56C();
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA810, &qword_221BE0D50);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v21);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD42BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA820, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD435C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD4424()
{
  sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221AD44A4()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF01F0);
  qword_27CFDE4A0 = 0xD00000000000001FLL;
  *algn_27CFDE4A8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD4518()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE4B0);
  __swift_project_value_buffer(v0, qword_27CFDE4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD46E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  v6 = *(*(AsyncIterator - 8) + 64);
  v7 = MEMORY[0x28223BE20](AsyncIterator);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA830, &qword_221BE0D68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, AsyncIterator);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA830, &qword_221BE0D68);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, AsyncIterator);
    }
  }

  sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA830, &qword_221BE0D68);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, AsyncIterator) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA830, &qword_221BE0D68);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA830, &qword_221BE0D68);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA830, &qword_221BE0D68);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB9E0, &qword_221BE0D60);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AD4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  v14 = *(*(AsyncIterator - 8) + 64);
  v15 = MEMORY[0x28223BE20](AsyncIterator);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, AsyncIterator);
  v31 = AsyncIterator;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB9E0, &qword_221BE0D60);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AD50D0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(AsyncIterator);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AD53BC(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AD51A8(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_46_6();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
    OUTLINED_FUNCTION_94_4(AsyncIteratorResponse);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  v9 = *(*(AsyncIterator - 8) + 64);
  MEMORY[0x28223BE20](AsyncIterator);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD53BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, AsyncIterator) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD55D0()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(AsyncIterator);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA838, &qword_221BE0D70);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_5(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_35_8();
    if (v17)
    {
      sub_2219A1CC8(v0, &unk_27CFBB9E0, &qword_221BE0D60);
LABEL_12:
      AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
      OUTLINED_FUNCTION_259_0(AsyncIteratorResponse);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v22, v23);
      v18 = OUTLINED_FUNCTION_36_8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v17)
  {
    OUTLINED_FUNCTION_46_6();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA838, &qword_221BE0D70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8EA6C();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB9E0, &qword_221BE0D60);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD588C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA828, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD592C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD59F4()
{
  sub_221ADB35C(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);

  return sub_221BCCB48();
}

uint64_t sub_221AD5A74()
{
  if (qword_27CFB71E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE4A0;
  v2 = *algn_27CFDE4A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE4C8 = v1;
  unk_27CFDE4D0 = v2;
  return result;
}

uint64_t sub_221AD5B18()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE4D8);
  __swift_project_value_buffer(v0, qword_27CFDE4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iteratorIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD5CE0()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA38();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AD5D44();
    }
  }

  return result;
}

uint64_t sub_221AD5D44()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AD5DF8()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221AD5E70(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    v7 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0) + 20);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221AD5E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD6050()
{
  OUTLINED_FUNCTION_21();
  v5 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_43_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v9 = OUTLINED_FUNCTION_3_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_97_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_29_8();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(v19);
  v20 = *(AsyncIterator + 24);
  v21 = *(v4 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_20_8(v1 + v21);
    if (v26)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
LABEL_11:
    v27 = &qword_27CFB9990;
    v28 = &qword_221BDAE28;
LABEL_18:
    sub_2219A1CC8(v1, v27, v28);
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  if (*v2 != *v3 || v2[1] != v3[1])
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_17;
  }

  v29 = *(v0 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v30, v31);
  OUTLINED_FUNCTION_379();
  v32 = sub_221BCD338();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v32 & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v27 = &qword_27CFB9988;
    v28 = &qword_221BDAE20;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_334();
  if (!v26)
  {
    goto LABEL_19;
  }

  v22 = *(AsyncIterator + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v23, v24);
  OUTLINED_FUNCTION_271_0();
  v25 = OUTLINED_FUNCTION_361();
LABEL_20:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD635C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA848, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD63FC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD64C4()
{
  sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221AD6544()
{
  result = MEMORY[0x223DA31F0](0xD000000000000026, 0x8000000221BF0210);
  qword_27CFDE4F0 = 0xD00000000000001FLL;
  *algn_27CFDE4F8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD65B0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE500);
  __swift_project_value_buffer(v0, qword_27CFDE500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  v6 = *(*(NextAsyncIteratorResults - 8) + 64);
  v7 = MEMORY[0x28223BE20](NextAsyncIteratorResults);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA860, &qword_221BE0D88);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, NextAsyncIteratorResults);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA860, &qword_221BE0D88);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, NextAsyncIteratorResults);
    }
  }

  sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA860, &qword_221BE0D88);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, NextAsyncIteratorResults) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA860, &qword_221BE0D88);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA860, &qword_221BE0D88);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA860, &qword_221BE0D88);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA858, &qword_221BE0D80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AD6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  v14 = *(*(NextAsyncIteratorResults - 8) + 64);
  v15 = MEMORY[0x28223BE20](NextAsyncIteratorResults);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, NextAsyncIteratorResults);
  v31 = NextAsyncIteratorResults;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA858, &qword_221BE0D80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AD7168()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(NextAsyncIteratorResults);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AD7454(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AD7240(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_75_6();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
    OUTLINED_FUNCTION_94_4(NextAsyncIteratorResultsResponse);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD7240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  v9 = *(*(NextAsyncIteratorResults - 8) + 64);
  MEMORY[0x28223BE20](NextAsyncIteratorResults);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD7454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, NextAsyncIteratorResults) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD7668()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(NextAsyncIteratorResults);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA868, &qword_221BE0D90);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_5(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_35_8();
    if (v17)
    {
      sub_2219A1CC8(v0, &qword_27CFBA858, &qword_221BE0D80);
LABEL_12:
      NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
      OUTLINED_FUNCTION_259_0(NextAsyncIteratorResultsResponse);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v22, v23);
      v18 = OUTLINED_FUNCTION_36_8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v17)
  {
    OUTLINED_FUNCTION_75_6();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA868, &qword_221BE0D90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8ED90();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA858, &qword_221BE0D80);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD7924(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA850, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD79C4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD7A8C()
{
  sub_221ADB35C(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);

  return sub_221BCCB48();
}

uint64_t sub_221AD7B0C()
{
  if (qword_27CFB7200 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE4F0;
  v2 = *algn_27CFDE4F8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE518 = v1;
  unk_27CFDE520 = v2;
  return result;
}

uint64_t sub_221AD7BC8()
{
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAC8();
}

void sub_221AD7C68()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*(*v0 + 16) || (type metadata accessor for AppIntentsProtobuf_Value(0), sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v1))
  {
    v2 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0) + 20);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AD7D18()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *v0;
  v3 = *v2;
  sub_221A174D8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  OUTLINED_FUNCTION_259_0(NextAsyncIteratorResults);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v6, v7);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221AD7E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA878, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD7EA8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD7F70()
{
  sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221AD7FF0()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF0240);
  qword_27CFDE540 = 0xD00000000000001FLL;
  *algn_27CFDE548 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD807C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_70_0();
    result = sub_221BCC998();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_221AD80F0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0) + 20);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AD81A4()
{
  OUTLINED_FUNCTION_109_2();
  v1 = OUTLINED_FUNCTION_34_8();
  result = v2(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AD81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD83C8()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_218_2();
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(v6);
  v8 = OUTLINED_FUNCTION_43_8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_8();
  v35 = v11;
  v12 = OUTLINED_FUNCTION_3_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_8_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_97_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_29_8();
  v23 = *(v5(v22) + 20);
  v24 = *(v3 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (!v28)
  {
    OUTLINED_FUNCTION_1();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v24);
    if (!v28)
    {
      sub_221ADFDB4();
      if (*v2 == *v35 && v2[1] == v35[1])
      {
        v31 = *(v0 + 24);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v32, v33);
        OUTLINED_FUNCTION_379();
        v34 = sub_221BCD338();
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        if (v34)
        {
          sub_221ADFE28();
          goto LABEL_5;
        }
      }

      else
      {
        sub_221ADFE28();
      }

      sub_221ADFE28();
      v29 = &qword_27CFB9988;
      v30 = &qword_221BDAE20;
LABEL_16:
      sub_2219A1CC8(v1, v29, v30);
      v27 = 0;
      goto LABEL_17;
    }

    sub_221ADFE28();
LABEL_9:
    v29 = &qword_27CFB9990;
    v30 = &qword_221BDAE28;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_8(v1 + v24);
  if (!v28)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v25, v26);
  v27 = sub_221BCD338();
LABEL_17:
  OUTLINED_FUNCTION_100_3(v27);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD8730()
{
  OUTLINED_FUNCTION_40_3();
  v0 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_70();

  return v4(v3);
}

uint64_t sub_221AD87E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA880, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD8880(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD8948()
{
  sub_221ADB35C(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);

  return sub_221BCCB48();
}

uint64_t sub_221AD89F4()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF0260);
  qword_27CFDE568 = 0xD00000000000001FLL;
  unk_27CFDE570 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD8A68()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE578);
  __swift_project_value_buffer(v0, qword_27CFDE578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD8C30()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_188_2();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_188_2();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_221AD8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v6 = *(*(AppDescription - 8) + 64);
  v7 = MEMORY[0x28223BE20](AppDescription);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA898, &qword_221BE0DA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, AppDescription);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA898, &qword_221BE0DA8);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, AppDescription);
    }
  }

  sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA898, &qword_221BE0DA8);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, AppDescription) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA898, &qword_221BE0DA8);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA898, &qword_221BE0DA8);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA898, &qword_221BE0DA8);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA890, &qword_221BE0DA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AD919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  v14 = *(*(AppDescription - 8) + 64);
  v15 = MEMORY[0x28223BE20](AppDescription);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, AppDescription);
  v31 = AppDescription;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA890, &qword_221BE0DA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AD9694()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(AppDescription);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AD9980(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AD976C(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_53_8();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
    OUTLINED_FUNCTION_94_4(AppDescriptionResponse);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v9 = *(*(AppDescription - 8) + 64);
  MEMORY[0x28223BE20](AppDescription);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, AppDescription) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD9B94()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(AppDescription);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8A0, &qword_221BE0DB0);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_5(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_35_8();
    if (v17)
    {
      sub_2219A1CC8(v0, &qword_27CFBA890, &qword_221BE0DA0);
LABEL_12:
      AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
      OUTLINED_FUNCTION_259_0(AppDescriptionResponse);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v22, v23);
      v18 = OUTLINED_FUNCTION_36_8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v17)
  {
    OUTLINED_FUNCTION_53_8();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA8A0, &qword_221BE0DB0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8F0E4();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA890, &qword_221BE0DA0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD9E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA888, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD9EF0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD9FB8()
{
  sub_221ADB35C(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);

  return sub_221BCCB48();
}

uint64_t sub_221ADA038()
{
  if (qword_27CFB7230 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE568;
  v2 = qword_27CFDE570;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE590 = v1;
  *algn_27CFDE598 = v2;
  return result;
}

uint64_t sub_221ADA0DC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE5A0);
  __swift_project_value_buffer(v0, qword_27CFDE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "protectionState";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ADA2A4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221ADA308();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221ADA308()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0) + 24);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  return sub_221BCCAD8();
}

void sub_221ADA3BC()
{
  OUTLINED_FUNCTION_356();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_42_8();
  if (!v5 || (OUTLINED_FUNCTION_103_5(), !v0))
  {
    v6 = OUTLINED_FUNCTION_3_21();
    v4(v6);
    if (!v0)
    {
      v7 = *(v2(0) + 20);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ADA438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB620, &qword_221BE0DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  v9 = *(*(AppDescription - 8) + 64);
  MEMORY[0x28223BE20](AppDescription);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, AppDescription) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBB620, &qword_221BE0DC0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ADA618()
{
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_52_6();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(v6);
  v8 = OUTLINED_FUNCTION_43_8(AppDescription);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB620, &qword_221BE0DC0);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8B0, &qword_221BE0DC8);
  OUTLINED_FUNCTION_57_6(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_225_0();
  v19 = *v1;
  v20 = v1[1];
  OUTLINED_FUNCTION_102_2();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  OUTLINED_FUNCTION_329(v24);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_20_8(v2);
  if (v23)
  {
    OUTLINED_FUNCTION_20_8(v2 + v5);
    if (v23)
    {
      sub_2219A1CC8(v2, &qword_27CFBB620, &qword_221BE0DC0);
      goto LABEL_11;
    }

LABEL_15:
    v30 = &qword_27CFBA8B0;
    v31 = &qword_221BE0DC8;
LABEL_19:
    sub_2219A1CC8(v2, v30, v31);
LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2 + v5);
  if (v29)
  {
    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  if (*v4 != *v3 || v4[1] != v3[1])
  {
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v30 = &qword_27CFBB620;
    v31 = &qword_221BE0DC0;
    goto LABEL_19;
  }

  v32 = *(v0 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v33, v34);
  v35 = OUTLINED_FUNCTION_312();
  sub_221ADFE28();
  OUTLINED_FUNCTION_343();
  sub_221ADFE28();
  sub_2219A1CC8(v2, &qword_27CFBB620, &qword_221BE0DC0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v25 = *(v36 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v26, v27);
  v28 = OUTLINED_FUNCTION_118_3();
LABEL_21:
  OUTLINED_FUNCTION_100_3(v28);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ADA9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA8B8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ADAA64(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ADAB2C()
{
  sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221ADABAC()
{
  if (qword_27CFB7240 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE590;
  v2 = *algn_27CFDE598;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BF0290);

  qword_27CFDE5B8 = v1;
  unk_27CFDE5C0 = v2;
  return result;
}

uint64_t sub_221ADAC54()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE5C8);
  __swift_project_value_buffer(v0, qword_27CFDE5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isHidden";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLocked";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ADAE1C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_58_6();
      sub_221BCC9C8();
    }
  }

  return result;
}

uint64_t sub_221ADAE7C()
{
  OUTLINED_FUNCTION_7_13();
  if (*v0 != 1 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB88(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB88(), !v1))
    {
      v4 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221ADAF0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 1) != *(v3 + 1))
  {
    return 0;
  }

  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  OUTLINED_FUNCTION_397(AppDescription);
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v6, v7);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221ADAF98(void (*a1)(void))
{
  OUTLINED_FUNCTION_314();
  a1(0);
  v2 = OUTLINED_FUNCTION_24();
  sub_221ADB35C(v2, v3);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221ADB040(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  v8 = *a5;

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_221ADB0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA8C0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ADB164(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ADB22C()
{
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);

  return sub_221BCCB48();
}

uint64_t sub_221ADB35C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221ADFDB4()
{
  v1 = OUTLINED_FUNCTION_88_5();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_0_0();
  v7(v6);
  return v0;
}

uint64_t sub_221ADFE28()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_221ADFEBC()
{
  v1 = OUTLINED_FUNCTION_88_5();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_0_0();
  v7(v6);
  return v0;
}

unint64_t sub_221AE0070()
{
  result = qword_27CFBA618;
  if (!qword_27CFBA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBA618);
  }

  return result;
}

uint64_t sub_221AE00C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2219ACB84(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_221AE00DC()
{
  result = qword_27CFBA758;
  if (!qword_27CFBA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBA758);
  }

  return result;
}

uint64_t sub_221AE0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_290_0();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_220_2();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_153();
    }
  }

  return result;
}

uint64_t sub_221AE0340()
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_221AE0450()
{
  result = type metadata accessor for AppIntentsProtobuf_Error(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_Value(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221AE04CC()
{
  v0 = OUTLINED_FUNCTION_290_0();
  result = type metadata accessor for AppIntentsProtobuf_Error(v0);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_220_2();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE0630()
{
  sub_221ABF2A8(319, &qword_27CFBA9D0, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBA9D8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE0764()
{
  sub_221ABF2A8(319, &qword_27CFBA9F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE0898()
{
  sub_221ABF2A8(319, &qword_27CFBAA08, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAA10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v2 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAA18, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221AE3130(319, &qword_27CFB9508);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221AE0AFC()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221AE0BF0()
{
  sub_221AE3130(319, &qword_27CFBAA70);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221AE0CE8()
{
  sub_221ABF2A8(319, &qword_27CFBAA88, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_393Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_186_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_69_3(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_108_3();
  }

  v8 = OUTLINED_FUNCTION_10_9(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_394Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v1)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_296_0(v2, v3, v4, v5, v6);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_69_3(v9);
    if (*(v10 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      sub_221BCC8D8();
      OUTLINED_FUNCTION_109_1();
    }

    v12 = OUTLINED_FUNCTION_41_3(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

void sub_221AE0FB8()
{
  v0 = OUTLINED_FUNCTION_388();
  sub_221ABF2A8(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_383();
    sub_221BCC8D8();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4();
      OUTLINED_FUNCTION_153();
    }
  }
}

void sub_221AE1044()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v1 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFB9610);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_438Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v0)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_186_1();
  sub_221BCC8D8();
  v2 = OUTLINED_FUNCTION_155_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_221AE13BC()
{
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_4();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE1434()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFB9508);
      if (v2 <= 0x3F)
      {
        sub_221AE3130(319, qword_27CFB7C40);
        if (v3 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_240Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_186_1();
  v3 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_108_3();
  }

  v8 = OUTLINED_FUNCTION_10_9(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_241Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v1)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_376();
    v2 = sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_109_1();
    }

    v7 = OUTLINED_FUNCTION_41_3(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_221AE1788()
{
  OUTLINED_FUNCTION_388();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_316();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4();
      OUTLINED_FUNCTION_153();
    }
  }
}

void sub_221AE1878()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBABD0, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE1A08()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_258Tm()
{
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_5_0();
  v1 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_14();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_69_3(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_108_3();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      OUTLINED_FUNCTION_240_1();
    }
  }

  v10 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t __swift_store_extra_inhabitant_index_259Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_32_5();
  v4 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v4);
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_221();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_69_3(v9);
    if (*(v10 + 84) == a3)
    {
      OUTLINED_FUNCTION_109_1();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      OUTLINED_FUNCTION_237_0();
    }
  }

  v13 = OUTLINED_FUNCTION_41_3(v6);

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_221AE1CFC()
{
  OUTLINED_FUNCTION_217_2();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_127_5();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

void sub_221AE1E38()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94B0, type metadata accessor for AppIntentsProtobuf_Action, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221AE3130(319, qword_27CFB7C40);
      if (v2 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAC38, type metadata accessor for AppIntentsProtobuf_Environment, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_157Tm()
{
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_5_0();
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_129_3();
    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_158Tm()
{
  OUTLINED_FUNCTION_376();
  OUTLINED_FUNCTION_32_5();
  v1 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_130_2();
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_221AE21EC()
{
  OUTLINED_FUNCTION_290_0();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_316();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_153();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_683Tm()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
    OUTLINED_FUNCTION_69_3(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_69_3(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_108_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
        OUTLINED_FUNCTION_240_1();
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_684Tm()
{
  OUTLINED_FUNCTION_108_4();
  v1 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
    OUTLINED_FUNCTION_69_3(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_69_3(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_109_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
        OUTLINED_FUNCTION_237_0();
      }
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void sub_221AE24E4()
{
  OUTLINED_FUNCTION_290_0();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAC68, type metadata accessor for AppIntentsProtobuf_NotificationTopic, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_126_3();
      sub_221ABF2A8(319, v2, v3, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_127_5();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_153();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_719Tm()
{
  OUTLINED_FUNCTION_5_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_69_3(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v8 = sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_108_3();
    }

    v6 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v7);
}

uint64_t __swift_store_extra_inhabitant_index_720Tm()
{
  OUTLINED_FUNCTION_108_4();
  v6 = OUTLINED_FUNCTION_296_0(v1, v2, v3, v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_69_3(v8);
  if (*(v9 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v10 = sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3(v10);
    if (*(v11 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_109_1();
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_221AE2914()
{
  v0 = OUTLINED_FUNCTION_9_15();
  sub_221ABF2A8(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_126_3();
      sub_221ABF2A8(319, v6, v7, MEMORY[0x277D83D88]);
      if (v8 <= 0x3F)
      {
        OUTLINED_FUNCTION_116_4();
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

void sub_221AE29D8()
{
  sub_221ABF2A8(319, &qword_27CFBAD28, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAD30, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_197Tm()
{
  OUTLINED_FUNCTION_5_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_69_3(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_129_3();
    v6 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v7);
}

uint64_t __swift_store_extra_inhabitant_index_198Tm()
{
  OUTLINED_FUNCTION_108_4();
  v6 = OUTLINED_FUNCTION_296_0(v1, v2, v3, v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_69_3(v8);
  if (*(v9 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_130_2();
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_221AE2C8C()
{
  v0 = OUTLINED_FUNCTION_290_0();
  sub_221ABF2A8(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_153();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_222Tm()
{
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_5_0();
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69_3(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      OUTLINED_FUNCTION_108_3();
    }

    v4 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_223Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_32_5();
  v4 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v4);
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_221();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69_3(v8);
    if (*(v9 + 84) == a3)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      OUTLINED_FUNCTION_109_1();
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_221AE2F34()
{
  OUTLINED_FUNCTION_217_2();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_116_4();
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

uint64_t sub_221AE2FC0()
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_220_2();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE304C()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v1 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFBADE0);
      if (v2 <= 0x3F)
      {
        sub_221AE3130(319, &qword_27CFB9610);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221AE3130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_221BCDC98();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_503Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  v3 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = OUTLINED_FUNCTION_123_1();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    return OUTLINED_FUNCTION_287(v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_504Tm()
{
  OUTLINED_FUNCTION_108_4();
  v4 = sub_221BCC8D8();
  result = OUTLINED_FUNCTION_69_3(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_76_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

void sub_221AE32C8()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_221AE3384()
{
  OUTLINED_FUNCTION_290_0();
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE3408()
{
  sub_221ABF2A8(319, &qword_27CFB95F8, type metadata accessor for AppIntentsProtobuf_Property, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAE18, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAC38, type metadata accessor for AppIntentsProtobuf_Environment, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAE20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40_3();
  v6 = sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_19_9(*(v3 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_123_1();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_108_4();
  v4 = sub_221BCC8D8();
  result = OUTLINED_FUNCTION_69_3(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_76_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_221AE3798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_290_0();
  result = sub_221BCC8D8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_153();
    }
  }

  return result;
}

unint64_t sub_221AE3818()
{
  result = qword_27CFBAE38;
  if (!qword_27CFBAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE38);
  }

  return result;
}

unint64_t sub_221AE38A0()
{
  result = qword_27CFBAE50;
  if (!qword_27CFBAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE50);
  }

  return result;
}

unint64_t sub_221AE38F8()
{
  result = qword_27CFBAE58;
  if (!qword_27CFBAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return sub_221ADFE28();
}

uint64_t OUTLINED_FUNCTION_42_8()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t result)
{
  *(v1 - 88) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_6()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4(uint64_t result)
{
  *(v1 - 104) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_6()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_72_5(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_84_4()
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_94_4(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_221BCC8B8();
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_221BCCBF8();
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1)
{
  *(v3 - 128) = a1;
  v5 = *(a1 + 24);
  v6 = *(v2 + 56);
  *(v3 - 88) = v1;

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_124_4()
{

  return sub_221BCCBF8();
}

uint64_t OUTLINED_FUNCTION_132_3()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_134_3()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_135_3()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_136_3()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_154_2()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_157_1()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_160_1()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return sub_221BCE1B8();
}

uint64_t OUTLINED_FUNCTION_172_2()
{
  v1 = *(v0 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_174_2(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_178_2()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_191_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_192_2()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_204_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_210_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_214_0(uint64_t result)
{
  v3 = *(result + 20);
  v4 = *(v2 + v3 + 8);
  v5 = *(v1 + v3 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_216_1()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_222_2()
{
  v2 = *(v0 - 136);

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_223_2()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_228_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232_0()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_239_1()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_267_0()
{
  v2 = *(*(v0 - 88) + 20);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_268_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_269_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_270_0()
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_274_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 72) = a8;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_279(uint64_t a1@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_280()
{

  return sub_221ADFEBC();
}

uint64_t OUTLINED_FUNCTION_287@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_293_0()
{
  v2 = *(*(v0 - 128) + 20);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_294_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_300()
{

  return sub_221ADFE28();
}

uint64_t OUTLINED_FUNCTION_307(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t a1)
{
  *(v3 - 120) = a1;
  v5 = *(a1 + 20);
  v6 = *(v2 + 56);
  *(v3 - 88) = v1;

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_309()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_310()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_313()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_315()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_317()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_325()
{
  v2 = *(v0 - 136);

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_328(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 20);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_329(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 24);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_335()
{
  v2 = *(v0 + 24);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_336()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_337()
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_352()
{
}

uint64_t OUTLINED_FUNCTION_353()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_354()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_358()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_359()
{

  return sub_221ADFEBC();
}

uint64_t OUTLINED_FUNCTION_361()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_362()
{

  return sub_221ADFDB4();
}

void OUTLINED_FUNCTION_364(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1);

  JUMPOUT(0x223DA4060);
}

uint64_t OUTLINED_FUNCTION_368()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_369()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_370()
{
}

uint64_t OUTLINED_FUNCTION_371()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_391()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_392()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_393()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_394()
{

  return sub_221BCD318();
}

uint64_t OUTLINED_FUNCTION_395()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_396()
{
  v2 = *(v0 + 20);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_397(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_398()
{
  v2 = *(v0 + 20);

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_399()
{

  return sub_221A1C558();
}

uint64_t sub_221AE5318(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE5358(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_221AE53DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_221AE541C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE54F8()
{
  result = sub_221BCC418();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_38Tm()
{
  OUTLINED_FUNCTION_2_31();
  v3 = sub_221BCC558();
  OUTLINED_FUNCTION_69_3(v3);
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_19_9(*(v0 + *(v2 + 24) + 8));
  }

  v5 = OUTLINED_FUNCTION_3_23();

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t __swift_store_extra_inhabitant_index_39Tm()
{
  OUTLINED_FUNCTION_0_42();
  v4 = sub_221BCC558();
  result = OUTLINED_FUNCTION_69_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_1_36();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_221AE5720()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE57F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE5834(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_221AE58D8()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE5964(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE59A4(uint64_t result, int a2, int a3)
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
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0aB8ProtocolO24AsyncSequenceElementPageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221AE5A34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221AE5A74(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221AE5AF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE5B30(uint64_t result, int a2, int a3)
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE5C70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_221AE5CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_221AE5D14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_221AE5E08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221AE5E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t __swift_get_extra_inhabitant_index_105Tm()
{
  OUTLINED_FUNCTION_2_31();
  v1 = sub_221BCC558();
  OUTLINED_FUNCTION_69_3(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_3_23();

    return __swift_getEnumTagSinglePayload(v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
    if (v8 > 1)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void __swift_store_extra_inhabitant_index_106Tm()
{
  OUTLINED_FUNCTION_0_42();
  v1 = sub_221BCC558();
  OUTLINED_FUNCTION_69_3(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_1_36();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
  }
}

uint64_t sub_221AE6064()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE60CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221AE610C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_221AE6180()
{
  sub_221AE62DC();
  if (v0 <= 0x3F)
  {
    sub_2219A1D20(319, &qword_27CFBAF28, 0x277CCA9B8);
    if (v1 <= 0x3F)
    {
      sub_221AE636C(319, &qword_27CFBAF30);
      if (v2 <= 0x3F)
      {
        sub_221AE636C(319, &qword_27CFBAF38);
        if (v3 <= 0x3F)
        {
          sub_221AE636C(319, &qword_27CFBAF40);
          if (v4 <= 0x3F)
          {
            sub_221AE636C(319, &qword_27CFBAF48);
            if (v5 <= 0x3F)
            {
              sub_221AE636C(319, &qword_27CFBAF50);
              if (v6 <= 0x3F)
              {
                sub_221AE636C(319, qword_27CFBAF58);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_221AE62DC()
{
  if (!qword_27CFBAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CFBB7A0, &qword_221BD2930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CFBAF20);
    }
  }
}

void sub_221AE636C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AppIntentsProtocol.PerformAction.ExecutionIdentifiable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_221AE63C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE6400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE648C(uint64_t a1)
{
  result = sub_221BCC558();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221AE6514(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_221BCC558();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_221AE672C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_221BCC558();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_221AE6A24()
{
  result = sub_221AE6AD4();
  if (v1 <= 0x3F)
  {
    result = sub_221BCC558();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221AE6AD4()
{
  result = qword_27CFBAFF0;
  if (!qword_27CFBAFF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFBAFF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentsProtocol.PerformAction.Request.SystemContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 11;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 11;
  if (v6 < 0xA)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppIntentsProtocol.PerformAction.Request.SystemContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221AE6CAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 215))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221AE6D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 214) = 0;
    *(result + 212) = 0;
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 215) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 215) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_221AE6DB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 33))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221AE6DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_221AE6EA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE6EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE6F5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 34))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xFE | (*(a1 + 32) >> 15) | (*(a1 + 32) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221AE6FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_221AE70A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE70E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_221AE7140()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D23CB0]) init];
  v3 = 0;
  switch(v1)
  {
    case 10:
      break;
    default:
      v3 = sub_221BCD358();

      break;
  }

  [v2 setInterfaceIdiom_];

  return v2;
}

void *sub_221AE7294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(v4 + 16);
  v10 = v4[3];
  v11 = *(v4 + 32);
  v12 = *(v4 + 33);
  v13 = *(v4 + 6);
  v26 = *(v4 + 5);
  v21 = *(v4 + 1);
  v22 = *(v4 + 7);
  v23 = *(v4 + 9);
  v27 = *(v4 + 64);
  v28 = *(v4 + 80);
  v29 = *(v4 + 104);
  v30 = *(v4 + 34);
  v24 = *(v4 + 106);
  v14 = *(v4 + 214);
  v15 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  v16 = v15;
  if (v7 != 2)
  {
    [v15 setAllowLiveActivities_];
  }

  if (v8 == 2)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v16 setAllowsPrepareBeforePerform_];
    if (v9)
    {
LABEL_5:
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  [v16 setAssistantDismissalPolicy_];
  if (a2)
  {
LABEL_6:
    sub_2219B2D48(a1, a2, v16);
  }

LABEL_7:
  if ((v11 & 1) == 0)
  {
    [v16 setConnectionOperationTimeout_];
  }

  if (v12 != 2)
  {
    [v16 setConvertArrayResultToAsyncSequence_];
  }

  if (a3)
  {
    [v16 setEnvironment_];
  }

  if (v13)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    v17 = v14;
    swift_bridgeObjectRetain_n();
    v18 = sub_221BCDA48();
    v19 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v18 preferredExtractionType:1];

    v14 = v17;
    [v16 setExportedContentConfiguration_];
  }

  if ((v27 & 1) == 0)
  {
    [v16 setInteractionMode_];
  }

  if ((v28 & 1) == 0)
  {
    [v16 setKind_];
  }

  if (v29 != 2)
  {
    [v16 setRequestUnlockIfNeeded_];
  }

  if ((v14 & 1) == 0)
  {
    [v16 setSource_];
  }

  if (a4)
  {
    [v16 setSystemContext_];
  }

  [v16 setDonateToTranscript_];
  return v16;
}

void *sub_221AE7558()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_221AE7580(_BYTE *a1, char a2, void *a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    sub_2219A69A0(a4);
    v7 = sub_221BCE168();
    MEMORY[0x223DA31F0](v7);

    MEMORY[0x223DA31F0](0x3E7365756C617620, 0xE800000000000000);
    v9 = 60;
    v8 = 0xE100000000000000;
  }

  else
  {
    v10 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v9 = MEMORY[0x223DA33D0](a4, v10);
    v8 = v11;
  }

  sub_221BCDE68();
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000023);
  if (a2)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a2)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v12, v13);

  MEMORY[0x223DA31F0](0x746172657469202CLL, 0xEC000000203A726FLL);
  v14 = a3;
  v15 = [v14 description];
  v16 = sub_221BCD388();
  v18 = v17;

  MEMORY[0x223DA31F0](v16, v18);

  MEMORY[0x223DA31F0](0x7365756C6176202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DA31F0](v9, v8);

  OUTLINED_FUNCTION_171();
  return 0;
}

uint64_t sub_221AE7794()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return sub_2219A9FBC();
}

uint64_t sub_221AE77A0(char *a1)
{
  v2 = v1;
  v3 = *a1;
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();
  v14 = 0;
  v15 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000038);
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8();
  __dst[0] = swift_allocObject();
  sub_2219EB748(v1, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  v13[0] = v3;
  v4 = sub_2219B5AFC(v13);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v4, v6);

  v7 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x223DA31F0](v7);
  v8 = *(type metadata accessor for AppIntentsProtocol.PerformAction.Request(0) + 28);
  memcpy(__dst, (v2 + v8), 0xD7uLL);
  memcpy(v13, (v2 + v8), 0xD7uLL);
  sub_221A0E888(__dst, v12);
  v9 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v9);

  MEMORY[0x223DA31F0](0x6F7269766E65202CLL, 0xEF203A746E656D6ELL);
  sub_2219A1B08(v2 + 40, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB020, &qword_221BE2A10);
  v10 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v10);

  OUTLINED_FUNCTION_171();
  return v14;
}

uint64_t sub_221AE7974(char *a1)
{
  v3 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  sub_221A0150C(v1, v6);
  v8 = 0x6E776F6E6B6E752ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_221A133F4(v6);
      v8 = 0x726F7272652ELL;
      break;
    case 2u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v8 = v15 + 7;
      break;
    case 3u:
      sub_221A133F4(v6);
      v8 = 0x6843736465656E2ELL;
      break;
    case 4u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v8 = v17 + 1;
      break;
    case 5u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v8 = v18 | 2;
      break;
    case 6u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v8 = v16 + 3;
      break;
    case 7u:
      sub_221A133F4(v6);
      v8 = 0x6156736465656E2ELL;
      break;
    case 8u:
      return v8;
    default:
      v10 = v6[28];
      v9 = v6[29];
      memcpy(v27, v6, sizeof(v27));
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_221BCDE68();
      v25 = v21;
      v26 = v22;
      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BF03E0);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
      v23 = v11;
      v24 = sub_221AE81D8();
      v21 = swift_allocObject();
      sub_221AE823C(v27, v21 + 16);
      __swift_project_boxed_opaque_existential_0(&v21, v11);
      v12 = sub_2219C1E9C(v7);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(&v21);
      MEMORY[0x223DA31F0](v12, v14);

      MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BF0400);
      MEMORY[0x223DA31F0](v10, v9);

      OUTLINED_FUNCTION_171();
      v8 = v25;
      sub_221AE82AC(v27);
      break;
  }

  return v8;
}

uint64_t sub_221AE7C60(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_221BCDE68();
  v23 = 0;
  v24 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD00000000000002DLL);
  v4 = *v1;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];

  sub_221998178(v6, v7);
  v8 = sub_2219987FC(v4, v5, v6, v7);
  MEMORY[0x223DA31F0](v8);

  v9 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x223DA31F0](v9);
  v11 = v2[5];
  v10 = v2[6];
  LOBYTE(v18) = *(v2 + 32);
  v19 = v11;
  v20 = v10;

  v12 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v12);

  MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v21 = &type metadata for QuerySpecification;
  v22 = sub_2219EB6D8();
  v18 = swift_allocObject();
  sub_2219AC930((v2 + 10), v18 + 16);
  __swift_project_boxed_opaque_existential_0(&v18, &type metadata for QuerySpecification);
  v17 = v3;
  v13 = sub_221A22514(&v17);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(&v18);
  MEMORY[0x223DA31F0](v13, v15);

  OUTLINED_FUNCTION_171();
  return v23;
}

uint64_t sub_221AE7E0C(char *a1)
{
  if (*(v1 + 32))
  {
    return 0x726F7272652ELL;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *a1;
  sub_221BCDE68();

  v13 = 0x737365636375732ELL;
  v14 = 0xE900000000000028;
  v8 = sub_2219C1168(v5, v7);
  MEMORY[0x223DA31F0](v8);

  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000014);
  if (v3)
  {
    v12 = v7;
    v9 = sub_221AE7580(&v12, v6 & 1, v3, v4);
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x223DA31F0](v9, v11);

  OUTLINED_FUNCTION_171();
  return v13;
}

uint64_t sub_221AE7F30()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_2219AA034();
}

unint64_t sub_221AE7F6C(uint64_t a1)
{
  result = sub_221AE7F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE7F94()
{
  result = qword_27CFBAFF8;
  if (!qword_27CFBAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAFF8);
  }

  return result;
}

unint64_t sub_221AE7FE8(uint64_t a1)
{
  result = sub_221AE8010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE8010()
{
  result = qword_27CFBB000;
  if (!qword_27CFBB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB000);
  }

  return result;
}

uint64_t sub_221AE8064(uint64_t a1)
{
  result = sub_221AE8114(&qword_27CFBB008, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221AE80BC(uint64_t a1)
{
  result = sub_221AE8114(&qword_27CFBB010, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221AE8114(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_221AE815C(uint64_t a1)
{
  result = sub_221AE8184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE8184()
{
  result = qword_27CFBB018;
  if (!qword_27CFBB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB018);
  }

  return result;
}

unint64_t sub_221AE81D8()
{
  result = qword_27CFBB028;
  if (!qword_27CFBB028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CFBB7A0, &qword_221BD2930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB028);
  }

  return result;
}

uint64_t sub_221AE823C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221AE82AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221AE8314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE8354(uint64_t result, int a2, int a3)
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

uint64_t sub_221AE83BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE83FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE8464(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_221AE84A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentsProtocol.PerformAction.ChoiceRequest.ProvidedOption.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221AE8634()
{
  result = qword_27CFBB030;
  if (!qword_27CFBB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_221A133F4(v0);
}

unint64_t sub_221AE87CC()
{
  result = qword_27CFBB040;
  if (!qword_27CFBB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB040);
  }

  return result;
}

unint64_t sub_221AE8820()
{
  result = qword_27CFBB048;
  if (!qword_27CFBB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB048);
  }

  return result;
}

uint64_t sub_221AE8904(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_221AE8950()
{
  result = qword_27CFBB060;
  if (!qword_27CFBB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB060);
  }

  return result;
}

unint64_t sub_221AE89A8()
{
  result = qword_27CFBB068;
  if (!qword_27CFBB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB068);
  }

  return result;
}

BOOL sub_221AE89FC(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &unk_27CFBB7B0, &unk_221BE4C10);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0FCDC();
    sub_221A6FD88();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE8AF8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB8320, &unk_221BD1D60);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0BEB0();
    sub_221A8DA04();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE8BF4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB8320, &unk_221BD1D60);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0BEB0();
    sub_221A8CA20();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE8CF0(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB8320, &unk_221BD1D60);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0BEB0();
    sub_221A8CE38();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE8DEC(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB8320, &unk_221BD1D60);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0BEB0();
    sub_221A8D5B8();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE8EE8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB8320, &unk_221BD1D60);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0BEB0();
    sub_221A6F524();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

void sub_221AE8FE4()
{
  OUTLINED_FUNCTION_55_4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_12();
  v10 = sub_2219A02E8(v5, &v14, &unk_27CFBB7C0, &qword_221BE4C20);
  if (*(&v15 + 1))
  {
    v12[0] = v14;
    v12[1] = v15;
    v13 = v16;
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_81_6();
    *(v11 - 16) = v12;
    sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
    sub_221BCCB58();
    if (!v0)
    {
      v3(v1);
    }

    sub_2219B397C(v12);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9148(uint64_t a1)
{
  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2219A02E8(a1, &v8, &unk_27CFB93B0, &qword_221BD1D70);
  v5 = v9;
  if (v9)
  {
    sub_22198B358(&v8, v7);
    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_221B0D2F4();
    if (v1)
    {
      return __swift_destroy_boxed_opaque_existential_0(v7);
    }

    sub_221A6FFEC();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v5 == 0;
}

uint64_t sub_221AE925C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = a3 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 36);
    *v5 = a1;
    *(v5 + 8) = 0;
  }

  return a2 & 1;
}

BOOL sub_221AE92B4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v7, &qword_27CFB7F20, &qword_221BD2008);
  v4 = v8;
  if (v8)
  {
    sub_22198B358(&v7, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_221B0C020();
    sub_221A8DC34();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return v4 == 0;
}

BOOL sub_221AE93B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 60;
  if (a2 >> 60 != 15)
  {
    v6 = (a3 + *(type metadata accessor for AppIntentsProtobuf_Dialog(0) + 68));
    v7 = *v6;
    v8 = v6[1];
    *v6 = a1;
    v6[1] = a2;
    sub_2219EBFB4(a1, a2);
    sub_2219EC02C(v7, v8);
  }

  return v3 > 0xE;
}

uint64_t sub_221AE9434(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    return a2 & 1;
  }

  v4 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a3 + *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 28);
    *v5 = v4;
    *(v5 + 8) = 0;
    return a2 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_221AE9494(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id sub_221AE9500(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_164_1();
  v6 = sub_221BCD358();

  v7 = [v3 *a3];

  return v7;
}

void sub_221AE9570()
{
  OUTLINED_FUNCTION_55_4();
  v73 = v0;
  v2 = v1;
  v68 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_104_2();
  v69 = v8;
  v9 = OUTLINED_FUNCTION_133_3();
  v70 = type metadata accessor for AppIntentsProtobuf_UUID(v9);
  v10 = OUTLINED_FUNCTION_2_1(v70);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  v72 = v13;
  OUTLINED_FUNCTION_133_3();
  v14 = sub_221BCC558();
  v15 = OUTLINED_FUNCTION_8_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = OUTLINED_FUNCTION_149_2();
  v26 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v25);
  v27 = OUTLINED_FUNCTION_2_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v32 = v31 - v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = sub_221AE9C28();
  v35 = v34;

  if (v35)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    swift_bridgeObjectRetain_n();
    v36 = sub_221AE9500(v33, v35, &selRef_initWithContentType_);
    v37 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v36 preferredExtractionType:1];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v37 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = sub_221AE9BC4();
  v40 = v39;

  if (v40)
  {
    v41 = 10;
  }

  else
  {
    v41 = v38;
  }

  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  sub_2219A02E8(v2 + *(AsyncIteratorRequest + 32), v24, &unk_27CFBB600, &qword_221BE44B0);
  v43 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v43, v44, v26);
  if (v45)
  {
    sub_221BCC8C8();
    OUTLINED_FUNCTION_196_1(v26[5]);
    v46 = v32 + v26[6];
    *v46 = 0;
    *(v46 + 4) = 1;
    OUTLINED_FUNCTION_216_2(v26[7]);
    v47 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_49_4(v47, v48, v26);
    if (!v45)
    {
      sub_2219A1CC8(v24, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v49 = OUTLINED_FUNCTION_131_3();
    sub_221B229DC(v49, v50, v51);
  }

  v52 = v73;
  sub_221AE9D08();
  if (v52)
  {
    OUTLINED_FUNCTION_66_4();
  }

  else
  {
    v54 = v74;
    v53 = v75;
    LODWORD(v73) = v76;
    v78 = v77;
    v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v56 = [objc_allocWithZone(MEMORY[0x277D23B38]) initWithPageSize_];

    v57 = v37;
    [v56 setExportConfiguration_];
    v58 = v69;
    sub_2219A02E8(v2 + *(AsyncIteratorRequest + 20), v69, &qword_27CFB9988, &qword_221BDAE20);
    v59 = v70;
    OUTLINED_FUNCTION_73_6(v58, 1);
    if (v45)
    {
      v61 = v72;
      *v72 = 0;
      v61[1] = 0;
      v60 = v61 + *(v59 + 24);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_20_8(v58);
      if (!v45)
      {
        sub_2219A1CC8(v58, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v61 = v72;
      sub_221B229DC(v58, v72, v62);
    }

    v63 = v71;
    sub_221AE9E30(v61);
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v61, v64);
    v65 = sub_221AEA118(v63);

    OUTLINED_FUNCTION_66_4();
    v66 = v68;
    *v68 = v54;
    v66[1] = v53;
    *(v66 + 16) = v73;
    *(v66 + 17) = v78;
    v66[3] = v65;
    v66[4] = v56;
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9A50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B5F8();
}

unint64_t sub_221AE9A90()
{
  swift_getAtKeyPath();
  if (v3 == 1)
  {
    swift_getAtKeyPath();
    v0 = v2;
  }

  else
  {
    v0 = 0;
  }

  return v0 | ((v3 ^ 1u) << 32);
}

uint64_t sub_221AE9B04()
{
  swift_getAtKeyPath();
  if (v2 != 1)
  {
    return 2;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v1;
}

uint64_t sub_221AE9B5C()
{
  swift_getAtKeyPath();
  if (v2 != 1)
  {
    return 0;
  }

  swift_getAtKeyPath();
  return v1;
}

uint64_t sub_221AE9BC4()
{
  swift_getAtKeyPath();
  if (v2 != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v1;
}

uint64_t sub_221AE9C28()
{
  swift_getAtKeyPath();
  if (v1 != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v1;
}

uint64_t sub_221AE9C84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getAtKeyPath();
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_172_3();
    swift_getAtKeyPath();
  }

  a3(0);
  OUTLINED_FUNCTION_211_3();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221AE9D08()
{
  OUTLINED_FUNCTION_55_4();
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_120();
  v2 = sub_221AE9C28();
  v4 = v3;

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_120();
  v5 = sub_221AE9A90();

  v6 = (v5 & 0x1FFFFFFFFLL) == 0xFFFFFFFF;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_120();
  LOBYTE(v5) = sub_221AE9B04();

  v7 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v7, v8);
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  *(v1 + 17) = v6;
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9E30(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = sub_221BCC2B8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v16 = 0x1000000000;
  v17 = sub_221BCC288() | 0x4000000000000000;
  v5 = *a1;
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  v6 = a1[1];
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  v7 = v17;
  switch(v17 >> 62)
  {
    case 1uLL:
      if (v16 >> 32 < v16)
      {
        __break(1u);
      }

      sub_2219EBFC8(v16, v17);
      v10 = 0;
      v11 = 16;
      goto LABEL_8;
    case 2uLL:
      v8 = *(v16 + 16);
      v9 = *(v16 + 24);
      sub_2219EBFC8(v16, v17);
      v10 = v8;
      v11 = v9;
LABEL_8:
      sub_221B21F94(v10, v11);
      goto LABEL_9;
    case 3uLL:
      memset(v15, 0, 14);
      goto LABEL_5;
    default:
      v15[0] = v16;
      LODWORD(v15[1]) = v17;
      WORD2(v15[1]) = WORD2(v17);
LABEL_5:
      v12 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
      sub_221BCC528();

LABEL_9:
      sub_2219EC040(0x1000000000, v7);
      result = sub_2219EC040(0x1000000000, v7);
      v14 = *MEMORY[0x277D85DE8];
      return result;
  }
}

id sub_221AEA118(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_221BCC508();
  v4 = [v2 initWithIdentifier_];

  v5 = sub_221BCC558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_221AEA1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_221BCC558();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  if (v12)
  {
    v30[0] = *a2;
    v30[1] = v12;
    sub_221AF0384();
  }

  v13 = [*(a2 + 24) identifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v14);
  v30[-2] = v11;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  (*(v8 + 8))(v11, v31);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v16 = AsyncIteratorRequest[5];
  sub_2219A1CC8(a1 + v16, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v7, a1 + v16, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v4);
  v17 = *(a2 + 32);
  v18 = [v17 pageSize];
  v19 = [v18 longLongValue];

  v20 = a1 + AsyncIteratorRequest[6];
  *v20 = v19;
  *(v20 + 8) = 0;
  result = [v17 exportConfiguration];
  if (result)
  {
    v22 = result;
    v23 = [result contentType];
    v24 = [v23 contentType];

    v25 = sub_221BCD388();
    v27 = v26;

    v28 = (a1 + AsyncIteratorRequest[7]);
    v29 = v28[1];

    *v28 = v25;
    v28[1] = v27;
  }

  return result;
}

uint64_t sub_221AEA50C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v7 = *(*(AsyncIteratorRequest - 8) + 64);
  v8 = MEMORY[0x28223BE20](AsyncIteratorRequest);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
    sub_221AE9570();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v24;
    *v24 = v19;
    *(v17 + 16) = v14;
    *(v17 + 17) = v15;
    *(v17 + 24) = v16;
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEA770@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  v7 = *(*(AppDescriptionRequest - 8) + 64);
  v8 = MEMORY[0x28223BE20](AppDescriptionRequest);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v26, v26[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
    sub_221AEEF64(v10, v14, v15, v16, v17, v18, v19, v20, *&v24[0], *(&v24[0] + 1));
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
    v21 = v24[1];
    v22 = v27;
    *v27 = v24[0];
    v22[1] = v21;
    v22[2] = v24[2];
    *(v22 + 24) = v25;
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEA9CC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  v7 = *(*(AppDescriptionResponse - 8) + 64);
  v8 = MEMORY[0x28223BE20](AppDescriptionResponse);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    sub_221AEF428(v10, v14, v15, v16, v17, v18, v19, v20, *&v25[0], *(&v25[0] + 1));
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    v21 = v26;
    v22 = v25[1];
    v23 = v28;
    *v28 = v25[0];
    v23[1] = v22;
    *(v23 + 16) = v21;
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEAC20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    sub_221BCE1D8();
    sub_221B1F8F4();
    memcpy(a2, __src, 0x6AuLL);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEACF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v7 = *(*(NextAsyncIteratorResultsRequest - 8) + 64);
  v8 = MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
    sub_221AF12B0();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
    v14 = v21;
    v15 = v22;
    v16 = v20;
    v17 = v24;
    *v24 = v19[1];
    *(v17 + 1) = v16;
    *(v17 + 24) = v14;
    *(v17 + 25) = v15;
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEAF54(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  sub_221BCE3A8();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    OUTLINED_FUNCTION_69_0();
    v7 = sub_221BCE1D8();
    v2 = a2(v7);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_221AEB02C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    sub_221BCE1D8();
    sub_221B2003C();
    memcpy(a2, v7, 0x88uLL);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB0FC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  v7 = *(*(OptionsForActionResponse - 8) + 64);
  v8 = MEMORY[0x28223BE20](OptionsForActionResponse);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    sub_221AF40A4();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    v14 = v19;
    v15 = v18[1];
    v16 = v21;
    *v21 = v18[0];
    v16[1] = v15;
    *(v16 + 32) = v14;
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_221AEB350()
{
  OUTLINED_FUNCTION_55_4();
  v3 = OUTLINED_FUNCTION_197_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_156();
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  OUTLINED_FUNCTION_101_5();
  sub_221BCE3A8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    OUTLINED_FUNCTION_101_5();
    v10 = sub_221BCE1D8();
    v2(v10);
    v11 = OUTLINED_FUNCTION_202_2();
    sub_221B229DC(v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEB42C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v20 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
    sub_221AF5FDC();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
    v14 = v17[1];
    v15 = v20;
    *v20 = v17[0];
    v15[1] = v14;
    v15[2] = v17[2];
    *(v15 + 6) = v18;
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    sub_221BCE1D8();
    sub_221B214B8();
    memcpy(a2, v7, 0xD2uLL);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB83C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  sub_221BCE1D8();
  sub_221B21674(v9);
  __swift_destroy_boxed_opaque_existential_0(v8);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_221AEB928@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
    sub_221B0A020();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v24;
    *v24 = v19;
    *(v17 + 16) = v14;
    *(v17 + 17) = v15;
    *(v17 + 3) = v16;
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBB8C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  v4 = sub_221BCC908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v21, v21[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    sub_221BCCAF8();
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    sub_221AE9D08();
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    v14 = v19;
    v15 = v20;
    v16 = v22;
    *v22 = v18;
    *(v16 + 16) = v14;
    *(v16 + 17) = v15;
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBDE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v6 = sub_221BCE1D8();
    sub_221B2184C(v9, v6);
    v7 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v10;
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBEB4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_221AEC7C4(a1, sub_221B184B4);
}

uint64_t sub_221AEBF04(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18890();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEBFC4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18A8C();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEC084(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18C7C();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEC144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19238(a2, a3, a4, a5 & 0x1FF);
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_221AEC224(void *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_120();
  sub_221BCE3C8();
  v9 = a4(a2, a3 & 1);
  if (!v4)
  {
    OUTLINED_FUNCTION_113_6(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_221AEC2BC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19638();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEC37C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19C28();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEC43C(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v5 = sub_221BCE3C8();
  v6 = a2(v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_221AEC4C4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1B478();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_221AEC584(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v5 = sub_221BCE3C8();
  v6 = a2(v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_221AEC60C(void *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1B858(a2, a3, a4 & 0x1FF, a5);
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_221AEC6EC(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1BA5C(a2, a3, a4 & 0x1FF);
  if (!v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_221AEC7C4(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v5 = sub_221BCE3C8();
  v6 = a2(v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

double sub_221AEC864@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1BE78(a1, a2, &v8);
  if (!v3)
  {
    v6 = v9;
    v7 = v10;
    *a3 = v8;
    *(a3 + 16) = v6;
    *(a3 + 17) = v7;
    result = v11[0];
    *(a3 + 24) = *v11;
  }

  return result;
}

uint64_t sub_221AEC8B8(uint64_t a1, unint64_t a2)
{
  result = sub_221B1C0A0(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AEC8DC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1C2CC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

double sub_221AEC92C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1C4F0(a1, a2, v8);
  if (!v3)
  {
    v6 = v9;
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v6;
  }

  return result;
}

uint64_t sub_221AEC988(uint64_t a1, unint64_t a2)
{
  result = sub_221B1C8FC(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AEC9C4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1CD1C(a1, a2, &v8);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    *a3 = v8;
    result = *&v9;
    *(a3 + 8) = v9;
    *(a3 + 24) = v6;
    *(a3 + 25) = v7;
  }

  return result;
}

uint64_t sub_221AECA18(uint64_t a1, unint64_t a2)
{
  result = sub_221B1CF44(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AECA54@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1D364(a1, a2, v8);
  if (!v3)
  {
    v6 = v9;
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v6;
  }

  return result;
}

double sub_221AECAB0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1D770(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

double sub_221AECC48@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1EEB8(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

double sub_221AECC90@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1F0D4(a1, a2, &v9);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    v8 = v12;
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v6;
    *(a3 + 17) = v7;
    *(a3 + 24) = v8;
  }

  return result;
}

double sub_221AECCE4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_221B1F2FC(a1, a2, &v8);
  if (!v3)
  {
    v6 = v9;
    v7 = v10;
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v6;
    *(a3 + 17) = v7;
  }

  return result;
}

uint64_t sub_221AECD48()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_221AECD84();
}

uint64_t sub_221AECD84()
{
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v2 = *(*(AsyncIteratorRequest - 8) + 64);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  return v5;
}

uint64_t sub_221AECEBC()
{
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  v2 = *(*(AsyncIteratorResponse - 8) + 64);
  MEMORY[0x28223BE20](AsyncIteratorResponse);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEEA04();
  if (!v0)
  {
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    AsyncIteratorResponse = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  return AsyncIteratorResponse;
}

uint64_t sub_221AECFE0()
{
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  v2 = *(*(AppDescriptionRequest - 8) + 64);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  return v5;
}

uint64_t sub_221AED130()
{
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v2 = *(*(DeferredPropertyValueRequest - 8) + 64);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  return v5;
}

uint64_t sub_221AED268()
{
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  v2 = *(*(DeferredPropertyValueResponse - 8) + 64);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF0948();
  if (!v0)
  {
    sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    DeferredPropertyValueResponse = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return DeferredPropertyValueResponse;
}

uint64_t sub_221AED38C()
{
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v2 = *(*(FileChunkRequest - 8) + 64);
  MEMORY[0x28223BE20](FileChunkRequest);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  return v5;
}