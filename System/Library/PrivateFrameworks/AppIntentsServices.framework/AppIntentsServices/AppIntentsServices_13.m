uint64_t sub_221AAF204()
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_42_8();
  if (!v2 || (result = OUTLINED_FUNCTION_103_5(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_25_8();
    if (!v6 || (result = OUTLINED_FUNCTION_124_4(), !v0))
    {
      v7 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AAF27C()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *v2;
  v4 = v1[1];
  OUTLINED_FUNCTION_102_2();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_397(v9);
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v10, v11);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221AAF36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA640, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAF40C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAF4D4()
{
  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);

  return sub_221BCCB48();
}

uint64_t sub_221AAF554()
{
  result = MEMORY[0x223DA31F0](0xD000000000000022, 0x8000000221BEFCA0);
  qword_27CFDE010 = 0xD000000000000021;
  *algn_27CFDE018 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AAF5C0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE020);
  __swift_project_value_buffer(v0, qword_27CFDE020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "propertyIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifier";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundleIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAF800()
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

    switch(result)
    {
      case 102:
        OUTLINED_FUNCTION_5_17();
        sub_221AAF944();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221AAF890();
        break;
      case 3:
      case 1:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221AAF890()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0) + 28);
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  return sub_221BCCAD8();
}

uint64_t sub_221AAF944()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0) + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AAF9F8()
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_42_8();
  if (!v2 || (result = OUTLINED_FUNCTION_103_5(), !v0))
  {
    v4 = OUTLINED_FUNCTION_3_21();
    result = sub_221AAFA94(v4, v5, v6, v7);
    if (!v0)
    {
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);
      OUTLINED_FUNCTION_25_8();
      if (v10)
      {
        OUTLINED_FUNCTION_124_4();
      }

      v11 = OUTLINED_FUNCTION_3_21();
      sub_221AAFC74(v11, v12, v13, v14);
      v15 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AAFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB9A0, &qword_221BE0C50);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AAFC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AAFE54()
{
  OUTLINED_FUNCTION_21();
  v7 = OUTLINED_FUNCTION_52_6();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v7);
  v9 = OUTLINED_FUNCTION_58_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_116_5();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v63);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_99_3();
  v19 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v20 = OUTLINED_FUNCTION_43_8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_156();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA650, &qword_221BE0C58);
  OUTLINED_FUNCTION_60_6(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_102_3();
  v34 = *v2;
  v35 = v2[1];
  OUTLINED_FUNCTION_102_2();
  v38 = v38 && v36 == v37;
  if (!v38 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v39 = DeferredPropertyValueRequest[7];
  v40 = *(v3 + 48);
  OUTLINED_FUNCTION_378();
  sub_221A1C558();
  OUTLINED_FUNCTION_378();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v6);
  if (v38)
  {
    OUTLINED_FUNCTION_20_8(v6 + v40);
    if (v38)
    {
      sub_2219A1CC8(v6, &unk_27CFBB9A0, &qword_221BE0C50);
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v6 + v40);
  if (v41)
  {
    sub_221ADFE28();
LABEL_14:
    v42 = &qword_27CFBA650;
    v43 = &qword_221BE0C58;
LABEL_15:
    v44 = v6;
LABEL_16:
    sub_2219A1CC8(v44, v42, v43);
    goto LABEL_17;
  }

  sub_221ADFDB4();
  v46 = *v5 == *v25 && v5[1] == v25[1];
  if (!v46 && (sub_221BCE1B8() & 1) == 0 || (v5[2] == v25[2] ? (v47 = v5[3] == v25[3]) : (v47 = 0), !v47 && (sub_221BCE1B8() & 1) == 0))
  {
    sub_221ADFE28();
    sub_221ADFE28();
    v42 = &unk_27CFBB9A0;
    v43 = &qword_221BE0C50;
    goto LABEL_15;
  }

  v48 = *(v1 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v49, v50);
  v51 = sub_221BCD338();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v6, &unk_27CFBB9A0, &qword_221BE0C50);
  if ((v51 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_30:
  v52 = v2[2] == *(v0 + 16) && v2[3] == *(v0 + 24);
  if (!v52 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = DeferredPropertyValueRequest[8];
  v54 = *(v63 + 48);
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_393();
  v55 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v55, v56, v64);
  if (v38)
  {
    OUTLINED_FUNCTION_20_8(v4 + v54);
    if (v38)
    {
      sub_2219A1CC8(v4, &unk_27CFBB600, &qword_221BE44B0);
LABEL_46:
      v59 = DeferredPropertyValueRequest[6];
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v60, v61);
      v45 = OUTLINED_FUNCTION_118_3();
      goto LABEL_18;
    }

    goto LABEL_43;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v4 + v54);
  if (v57)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_43:
    v42 = &qword_27CFBA3F0;
    v43 = &qword_221BE0A60;
    v44 = v4;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_381();
  sub_221ADFDB4();
  v58 = sub_221AB95D0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v4, &unk_27CFBB600, &qword_221BE44B0);
  if (v58)
  {
    goto LABEL_46;
  }

LABEL_17:
  v45 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v45);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB03E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA648, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB0488(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB0550()
{
  sub_221ADB35C(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB05D0()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFD10);
  qword_27CFDE038 = 0xD000000000000021;
  unk_27CFDE040 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB0644()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE048);
  __swift_project_value_buffer(v0, qword_27CFDE048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "pageSize";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "exportedContentTypeIdentifier";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 103;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB088C()
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

    switch(result)
    {
      case 103:
        OUTLINED_FUNCTION_5_17();
        sub_221AB0A4C();
        break;
      case 100:
        OUTLINED_FUNCTION_5_17();
        sub_221AB09E8();
        break;
      case 101:
        OUTLINED_FUNCTION_5_17();
        sub_221AB4384();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AB0934();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB0934()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AB0A4C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0) + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB0B00()
{
  OUTLINED_FUNCTION_109_2();
  v1 = OUTLINED_FUNCTION_34_8();
  result = sub_221AB0B78(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_34_8();
    sub_221AB0D58(v6);
    OUTLINED_FUNCTION_34_8();
    sub_221AB47D0();
    v7 = OUTLINED_FUNCTION_34_8();
    sub_221AB0DD0(v7, v8, v9, v10);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0) + 20);
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

uint64_t sub_221AB0D58(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221AB0DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB0FB0()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = v6;
  v68 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v8 = OUTLINED_FUNCTION_2_1(v68);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_12(v11, v65);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_89_5(v16, v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v67);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_104_2();
  v69 = v20;
  v21 = OUTLINED_FUNCTION_133_3();
  v22 = type metadata accessor for AppIntentsProtobuf_UUID(v21);
  v23 = OUTLINED_FUNCTION_43_8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_225_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(v34);
  v35 = AsyncIteratorRequest[5];
  v36 = *(v2 + 56);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v3);
  if (v40)
  {
    OUTLINED_FUNCTION_20_8(v3 + v36);
    if (v40)
    {
      goto LABEL_5;
    }

LABEL_11:
    v41 = &qword_27CFB9990;
    v42 = &qword_221BDAE28;
LABEL_20:
    v50 = v3;
LABEL_21:
    sub_2219A1CC8(v50, v41, v42);
    goto LABEL_22;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v3 + v36);
  if (v40)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  v43 = *v1;
  OUTLINED_FUNCTION_349();
  if (!v44 || (v45 = v1[1], OUTLINED_FUNCTION_385(), !v40))
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_19;
  }

  v46 = *(v0 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v47, v48);
  v49 = sub_221BCD338();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v49 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v41 = &qword_27CFB9988;
    v42 = &qword_221BDAE20;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
  v37 = AsyncIteratorRequest[6];
  v38 = *(v7 + v37 + 8);
  v39 = *(v5 + v37 + 8);
  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_3();
    if (v52)
    {
      goto LABEL_22;
    }

LABEL_25:
    v53 = AsyncIteratorRequest[7];
    v54 = *(v5 + v53 + 8);
    if (*(v7 + v53 + 8))
    {
      if (!v54)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_61_3((v7 + v53));
      v57 = v40 && v55 == v56;
      if (!v57 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v54)
    {
      goto LABEL_22;
    }

    v58 = AsyncIteratorRequest[8];
    v59 = *(v67 + 48);
    OUTLINED_FUNCTION_233_0();
    OUTLINED_FUNCTION_239_1();
    v60 = OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_81_5(v60, v61);
    if (v40)
    {
      OUTLINED_FUNCTION_39_8(v69 + v59);
      if (v40)
      {
        sub_2219A1CC8(v69, &unk_27CFBB600, &qword_221BE44B0);
        goto LABEL_44;
      }
    }

    else
    {
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v69 + v59);
      if (!v62)
      {
        OUTLINED_FUNCTION_7_14();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_324();
        sub_221AB95D0();
        OUTLINED_FUNCTION_12_8();
        sub_221ADFE28();
        OUTLINED_FUNCTION_323();
        sub_221ADFE28();
        sub_2219A1CC8(v69, &unk_27CFBB600, &qword_221BE44B0);
        if ((v68 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_44:
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v63, v64);
        OUTLINED_FUNCTION_136_0();
        v51 = sub_221BCD338();
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_8_14();
      sub_221ADFE28();
    }

    v41 = &qword_27CFBA3F0;
    v42 = &qword_221BE0A60;
    v50 = v69;
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v51);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB14DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA658, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB157C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB1644()
{
  sub_221ADB35C(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB16C4()
{
  result = MEMORY[0x223DA31F0](0xD000000000000025, 0x8000000221BEFD40);
  qword_27CFDE060 = 0xD000000000000021;
  *algn_27CFDE068 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB1730()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE070);
  __swift_project_value_buffer(v0, qword_27CFDE070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
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
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB1938()
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

    switch(result)
    {
      case 102:
        OUTLINED_FUNCTION_5_17();
        sub_221AB1A68();
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AB19B4();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB19B4()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AB1A68()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0) + 28);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0) + 24);
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

uint64_t sub_221AB1CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB1EDC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v7 = OUTLINED_FUNCTION_67_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_12(v10, v52);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_89_5(v15, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v55);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_41_4(v19, v54);
  v21 = type metadata accessor for AppIntentsProtobuf_UUID(v20);
  v22 = OUTLINED_FUNCTION_43_8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_13();
  v25 = OUTLINED_FUNCTION_131_3();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_8_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_74_5();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_96_5();
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(v35);
  v36 = *(NextAsyncIteratorResultsRequest + 24);
  v37 = *(v0 + 56);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v1);
  if (v40)
  {
    OUTLINED_FUNCTION_20_8(v1 + v37);
    if (v40)
    {
      goto LABEL_5;
    }

LABEL_14:
    v41 = &qword_27CFB9990;
    v42 = &qword_221BDAE28;
LABEL_23:
    v47 = v1;
LABEL_24:
    sub_2219A1CC8(v47, v41, v42);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_353();
  OUTLINED_FUNCTION_20_8(v1 + v37);
  if (v40)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_180_1();
  if (!v43 || (OUTLINED_FUNCTION_179_1(), !v40))
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v44, v45);
  v46 = OUTLINED_FUNCTION_192_2();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v46 & 1) == 0)
  {
LABEL_22:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v41 = &qword_27CFB9988;
    v42 = &qword_221BDAE20;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
  if (*v5 == *v3)
  {
    v38 = *(NextAsyncIteratorResultsRequest + 28);
    v39 = *(v55 + 48);
    OUTLINED_FUNCTION_233_0();
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_66_3(v57);
    if (v40)
    {
      OUTLINED_FUNCTION_39_8(v57 + v39);
      if (v40)
      {
        sub_2219A1CC8(v57, &unk_27CFBB600, &qword_221BE44B0);
        goto LABEL_32;
      }
    }

    else
    {
      OUTLINED_FUNCTION_346();
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v57 + v39);
      if (!v49)
      {
        OUTLINED_FUNCTION_7_14();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_24();
        sub_221AB95D0();
        OUTLINED_FUNCTION_12_8();
        sub_221ADFE28();
        OUTLINED_FUNCTION_300();
        sub_2219A1CC8(v57, &unk_27CFBB600, &qword_221BE44B0);
        if ((&unk_27CFBB600 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_32:
        OUTLINED_FUNCTION_398();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v50, v51);
        v48 = OUTLINED_FUNCTION_313();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_8_14();
      sub_221ADFE28();
    }

    v41 = &qword_27CFBA3F0;
    v42 = &qword_221BE0A60;
    v47 = v57;
    goto LABEL_24;
  }

LABEL_25:
  v48 = 0;
LABEL_26:
  OUTLINED_FUNCTION_100_3(v48);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB23D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA660, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB2474(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB253C()
{
  sub_221ADB35C(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB25BC()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEFD70);
  qword_27CFDE088 = 0xD000000000000021;
  unk_27CFDE090 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB2630()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE098);
  __swift_project_value_buffer(v0, qword_27CFDE098);
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
  *(v5 + v2) = 101;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB27FC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AB28B0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 20);
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

uint64_t sub_221AB2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB2D24()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218_2();
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v3);
  v5 = OUTLINED_FUNCTION_67_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_12(v8, v50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_89_5(v13, v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v54);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v18 = OUTLINED_FUNCTION_41_4(v17, v52);
  v19 = type metadata accessor for AppIntentsProtobuf_UUID(v18);
  v20 = OUTLINED_FUNCTION_43_8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = OUTLINED_FUNCTION_131_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_8_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_102_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_116_5();
  v33 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  OUTLINED_FUNCTION_308(v33);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v1);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v1 + v0);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v0);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      sub_221ADFDB4();
      v39 = *v2;
      OUTLINED_FUNCTION_349();
      if (!v40 || (v41 = v2[1], OUTLINED_FUNCTION_385(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v42, v43);
      v44 = OUTLINED_FUNCTION_392();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v44 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v37 = &qword_27CFB9988;
        v38 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      v34 = *(v53 + 24);
      v35 = *(v54 + 48);
      OUTLINED_FUNCTION_268_0();
      OUTLINED_FUNCTION_266_0();
      OUTLINED_FUNCTION_66_3(v55);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v55 + v35);
        if (v36)
        {
          sub_2219A1CC8(v55, &unk_27CFBB600, &qword_221BE44B0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_346();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v55 + v35);
        if (!v47)
        {
          OUTLINED_FUNCTION_7_14();
          OUTLINED_FUNCTION_325();
          OUTLINED_FUNCTION_24();
          sub_221AB95D0();
          OUTLINED_FUNCTION_12_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_300();
          sub_2219A1CC8(v55, &unk_27CFBB600, &qword_221BE44B0);
          if ((&unk_27CFBB600 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          sub_221BCC8D8();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          OUTLINED_FUNCTION_285_0();
          v46 = sub_221BCD338();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_8_14();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA3F0;
      v38 = &qword_221BE0A60;
      v45 = v55;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v45 = v1;
LABEL_23:
  sub_2219A1CC8(v45, v37, v38);
LABEL_24:
  v46 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v46);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB322C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA668, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB32CC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB3394()
{
  sub_221ADB35C(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB3414()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFD90);
  qword_27CFDE0B0 = 0xD000000000000021;
  *algn_27CFDE0B8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB3488()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE0C0);
  __swift_project_value_buffer(v0, qword_27CFDE0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fileURL";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "length";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB36C8()
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

    switch(result)
    {
      case 101:
        OUTLINED_FUNCTION_5_17();
        sub_221AB3758();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCAB8();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB3758()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0) + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB380C()
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_42_8();
  if (!v2 || (result = OUTLINED_FUNCTION_103_5(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v0))
      {
        v4 = OUTLINED_FUNCTION_3_21();
        result = sub_221AB38B0(v4, v5, v6, v7);
        if (!v0)
        {
          v8 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0) + 28);
          return OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  return result;
}

uint64_t sub_221AB38B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB3A90()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_88_5();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v5);
  v7 = OUTLINED_FUNCTION_60_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_13();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_57_6(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_63_6();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_221BCE1B8() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    goto LABEL_17;
  }

  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v21 = *(FileChunkRequest + 32);
  v22 = *(v4 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_53_7(v2 + v22);
    if (v20)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
LABEL_20:
      v25 = *(FileChunkRequest + 28);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v26, v27);
      v24 = OUTLINED_FUNCTION_36_8();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2 + v22);
  if (v23)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_16:
    sub_2219A1CC8(v2, &qword_27CFBA3F0, &qword_221BE0A60);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_238_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v24);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB3D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA670, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB3DE0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB3EA8()
{
  sub_221ADB35C(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB3F28()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BEFDC0);
  qword_27CFDE0D8 = 0xD000000000000021;
  unk_27CFDE0E0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB3F9C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE0E8);
  __swift_project_value_buffer(v0, qword_27CFDE0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterIdentifier";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "searchTerm";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "environment";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "requestMetadata";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB4220()
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

    switch(result)
    {
      case 103:
        OUTLINED_FUNCTION_5_17();
        sub_221AB4488();
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 3:
        OUTLINED_FUNCTION_264();
        OUTLINED_FUNCTION_5_17();
        sub_221AB4384();
        break;
      case 100:
        OUTLINED_FUNCTION_5_17();
        sub_221AB43D4();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AB42D0();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB42D0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221ADB35C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  return sub_221BCCAD8();
}

uint64_t sub_221AB4384()
{
  OUTLINED_FUNCTION_113_5();
  v1 = *(v0(0) + 28);
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  return sub_221BCCA88();
}

uint64_t sub_221AB43D4()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 32);
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);
  return sub_221BCCAD8();
}

uint64_t sub_221AB4488()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 36);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB453C()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221AB45F0(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = *v1;
    v8 = v1[1];
    OUTLINED_FUNCTION_25_8();
    if (v9)
    {
      OUTLINED_FUNCTION_124_4();
    }

    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_3_21();
    sub_221AB47D0();
    v10 = OUTLINED_FUNCTION_3_21();
    sub_221AB4844(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_3_21();
    sub_221AB4A24(v14, v15, v16, v17);
    v18 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 20);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221AB45F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB47D0()
{
  v1 = OUTLINED_FUNCTION_373();
  result = v2(v1);
  v4 = (v0 + *(result + 28));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_338();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221AB4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB650, &qword_221BE0A38);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 36);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB4C04()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v80 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v6 = OUTLINED_FUNCTION_2_1(v80);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_8();
  v77 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_104_2();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v79);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_101_4(v17);
  v84 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v18 = OUTLINED_FUNCTION_2_1(v84);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  v78 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_89_5(v26, v77);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA400, &qword_221BE0A70);
  OUTLINED_FUNCTION_2_1(v83);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_104_2();
  v85 = v30;
  v31 = OUTLINED_FUNCTION_133_3();
  v32 = type metadata accessor for AppIntentsProtobuf_Action(v31);
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_32_8();
  v36 = OUTLINED_FUNCTION_131_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_8_1(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74_5();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9970, &qword_221BDAE10);
  OUTLINED_FUNCTION_273_0(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_156();
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v46 = OptionsForActionRequest[6];
  v47 = *(v1 + 56);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_22_9(v0);
  if (v48)
  {
    OUTLINED_FUNCTION_22_9(v0 + v47);
    if (v48)
    {
      sub_2219A1CC8(v0, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_14;
    }

LABEL_9:
    v49 = &qword_27CFB9970;
    v50 = &qword_221BDAE10;
    v51 = v0;
LABEL_10:
    sub_2219A1CC8(v51, v49, v50);
    goto LABEL_11;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v0 + v47);
  if (v48)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_255();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_177_2();
  sub_221A71C78();
  v54 = v53;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB690, &qword_221BDADD0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v55 = *v5 == *v3 && v5[1] == v3[1];
  if (!v55 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v56 = OptionsForActionRequest[7];
  v57 = *(v3 + v56 + 8);
  if (*(v5 + v56 + 8))
  {
    if (!v57)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_61_3((v5 + v56));
    v60 = v48 && v58 == v59;
    if (!v60 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v57)
  {
    goto LABEL_11;
  }

  v61 = OptionsForActionRequest[8];
  v62 = *(v83 + 48);
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  v63 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v63, v64);
  if (v48)
  {
    OUTLINED_FUNCTION_39_8(v85 + v62);
    if (v48)
    {
      sub_2219A1CC8(v85, &unk_27CFBB650, &qword_221BE0A38);
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v85 + v62);
  if (v65)
  {
    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_36:
    v49 = &qword_27CFBA400;
    v50 = &qword_221BE0A70;
LABEL_37:
    v51 = v85;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_261_0();
  sub_221ADFDB4();
  v66 = *v82 == *v78 && v82[1] == v78[1];
  if (!v66 && (sub_221BCE1B8() & 1) == 0)
  {
    OUTLINED_FUNCTION_262_0();
    sub_221ADFE28();
    sub_221ADFE28();
    v49 = &unk_27CFBB650;
    v50 = &qword_221BE0A38;
    goto LABEL_37;
  }

  v67 = *(v84 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v68, v69);
  sub_221BCD338();
  OUTLINED_FUNCTION_242_1();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v85, &unk_27CFBB650, &qword_221BE0A38);
  if ((v67 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  v70 = OptionsForActionRequest[9];
  v71 = *(v79 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v72 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v72, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_39_8(v81 + v71);
    if (v48)
    {
      sub_2219A1CC8(v81, &unk_27CFBB600, &qword_221BE44B0);
LABEL_54:
      OUTLINED_FUNCTION_398();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v75, v76);
      v52 = OUTLINED_FUNCTION_313();
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v81 + v71);
  if (v74)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_52:
    v49 = &qword_27CFBA3F0;
    v50 = &qword_221BE0A60;
    v51 = v81;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v81, &unk_27CFBB600, &qword_221BE44B0);
  if (v80)
  {
    goto LABEL_54;
  }

LABEL_11:
  v52 = 0;
LABEL_12:
  OUTLINED_FUNCTION_100_3(v52);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB5350(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA678, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB53F0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB54B8()
{
  sub_221ADB35C(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB5538()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFE10);
  qword_27CFDE100 = 0xD000000000000021;
  *algn_27CFDE108 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB55AC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE110);
  __swift_project_value_buffer(v0, qword_27CFDE110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB5778()
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

    if (result == 101)
    {
      OUTLINED_FUNCTION_277_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_277_0();
      v2();
    }
  }

  return result;
}

uint64_t sub_221AB57FC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return sub_221BCCAD8();
}

uint64_t sub_221AB58B0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB5D24()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_345();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  v4 = OUTLINED_FUNCTION_67_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_12(v7, v43);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_89_5(v12, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v47);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_41_4(v16, v45);
  v18 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v17);
  v19 = OUTLINED_FUNCTION_43_8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v22 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74_5();
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA690, &qword_221BE0C60) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_116_5();
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v29 = *(started + 20);
  v30 = v26[14];
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_20_8(v1 + v30);
    if (v31)
    {
      sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27CFBA690;
    v33 = &qword_221BE0C60;
    v34 = v1;
LABEL_20:
    sub_2219A1CC8(v34, v32, v33);
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v30);
  if (v31)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  v35 = OUTLINED_FUNCTION_282_0();
  sub_221A7F87C(v35, v36);
  OUTLINED_FUNCTION_248_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v37 = *(started + 24);
  v38 = *(v47 + 48);
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_66_3(v48);
  if (v31)
  {
    OUTLINED_FUNCTION_39_8(v48 + v38);
    if (v31)
    {
      sub_2219A1CC8(v48, &unk_27CFBB600, &qword_221BE44B0);
LABEL_24:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v41, v42);
      v40 = sub_221BCD338();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_381();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v48 + v38);
  if (v39)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_19:
    v32 = &qword_27CFBA3F0;
    v33 = &qword_221BE0A60;
    v34 = v48;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v48, &unk_27CFBB600, &qword_221BE44B0);
  if (&unk_27CFBB600)
  {
    goto LABEL_24;
  }

LABEL_21:
  v40 = 0;
LABEL_22:
  OUTLINED_FUNCTION_100_3(v40);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB6230(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA680, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB62D0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB6398()
{
  sub_221ADB35C(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB6418()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEFE40);
  qword_27CFDE128 = 0xD000000000000021;
  unk_27CFDE130 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB648C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE138);
  __swift_project_value_buffer(v0, qword_27CFDE138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "observerUUID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB6694()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return sub_221BCCAD8();
}

uint64_t sub_221AB6748()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AB67FC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 28);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB6A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 24);
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

uint64_t sub_221AB6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB6F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA698, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB6FEC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB70B4()
{
  sub_221ADB35C(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB7160()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BEFE70);
  qword_27CFDE150 = 0xD000000000000021;
  *algn_27CFDE158 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB71D4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE160);
  __swift_project_value_buffer(v0, qword_27CFDE160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "observerUUID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221AB73DC()
{
  OUTLINED_FUNCTION_151_2();
  v4 = v3;
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_390();
  while (1)
  {
    OUTLINED_FUNCTION_221();
    v5 = sub_221BCC998();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 101:
        v9 = OUTLINED_FUNCTION_142_2();
        v4(v9);
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_142_2();
        v1(v8);
        break;
      case 1:
        v7 = OUTLINED_FUNCTION_142_2();
        v2(v7);
        break;
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AB7474()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return sub_221BCCAD8();
}

uint64_t sub_221AB7528()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221AB75DC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 28);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB7690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_109_2();
  v9 = OUTLINED_FUNCTION_34_8();
  result = v10(v9);
  if (!v6)
  {
    v12 = OUTLINED_FUNCTION_34_8();
    a5(v12);
    v13 = OUTLINED_FUNCTION_34_8();
    a6(v13);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 24);
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

uint64_t sub_221AB7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB7CA4()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v70 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v5 = OUTLINED_FUNCTION_2_1(v70);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104_2();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v69);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_101_4(v16);
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v18 = OUTLINED_FUNCTION_67_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  v68 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_89_5(v26, v66);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_2_1(v72);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  v31 = OUTLINED_FUNCTION_41_4(v30, v67);
  v32 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v31);
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_13();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_156();
  v40 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA690, &qword_221BE0C60) - 8);
  v41 = *(*v40 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_99_3();
  v73 = v4(0);
  v43 = v73[5];
  v44 = v40[14];
  sub_221A1C558();
  sub_221A1C558();
  v45 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v45, v46, v32);
  if (v47)
  {
    OUTLINED_FUNCTION_49_4(v1 + v44, 1, v32);
    if (v47)
    {
      sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
      goto LABEL_11;
    }

LABEL_9:
    v48 = &qword_27CFBA690;
    v49 = &qword_221BE0C60;
LABEL_31:
    v61 = v1;
LABEL_32:
    sub_2219A1CC8(v61, v48, v49);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_120();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v1 + v44, 1, v32);
  if (v47)
  {
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  sub_221A7F87C(v2, v0);
  OUTLINED_FUNCTION_248_0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  v50 = v73[6];
  v51 = *(v72 + 48);
  v1 = v74;
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_66_3(v74);
  if (v47)
  {
    OUTLINED_FUNCTION_39_8(v74 + v51);
    if (v47)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_346();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v74 + v51);
  if (v56)
  {
    sub_221ADFE28();
LABEL_23:
    v48 = &qword_27CFB9990;
    v49 = &qword_221BDAE28;
    goto LABEL_31;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_334();
  if (!v57 || *(v50 + 8) != *(v68 + 8))
  {
    sub_221ADFE28();
    goto LABEL_30;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v58, v59);
  OUTLINED_FUNCTION_271_0();
  v60 = OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v60 & 1) == 0)
  {
LABEL_30:
    sub_221ADFE28();
    v48 = &qword_27CFB9988;
    v49 = &qword_221BDAE20;
    goto LABEL_31;
  }

  sub_221ADFE28();
LABEL_15:
  sub_2219A1CC8(v74, &qword_27CFB9988, &qword_221BDAE20);
  v52 = v73[7];
  v53 = *(v69 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v54 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v54, v55);
  if (v47)
  {
    OUTLINED_FUNCTION_39_8(v71 + v53);
    if (v47)
    {
      sub_2219A1CC8(v71, &unk_27CFBB600, &qword_221BE44B0);
LABEL_40:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v64, v65);
      OUTLINED_FUNCTION_27();
      v62 = sub_221BCD338();
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v71 + v53);
  if (v63)
  {
    sub_221ADFE28();
LABEL_38:
    v48 = &qword_27CFBA3F0;
    v49 = &qword_221BE0A60;
    v61 = v71;
    goto LABEL_32;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v71, &unk_27CFBB600, &qword_221BE44B0);
  if (v70)
  {
    goto LABEL_40;
  }

LABEL_33:
  v62 = 0;
LABEL_34:
  OUTLINED_FUNCTION_100_3(v62);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB8484(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB8524(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB85EC()
{
  sub_221ADB35C(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB8698()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFE90);
  qword_27CFDE178 = 0xD000000000000021;
  unk_27CFDE180 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB870C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE188);
  __swift_project_value_buffer(v0, qword_27CFDE188);
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
  *(v5 + v2) = 100;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB88D8()
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

    if (result == 100)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AB893C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221AB893C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221AB89F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB8BD0()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_88_5();
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v3);
  v5 = OUTLINED_FUNCTION_60_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_57_6(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_63_6();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  OUTLINED_FUNCTION_329(AppDescriptionRequest);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_53_7(v0 + v2);
    if (v18)
    {
      sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
LABEL_17:
      v22 = *(v25 + 20);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v23, v24);
      v21 = OUTLINED_FUNCTION_36_8();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v2);
  if (v20)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA3F0, &qword_221BE0A60);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_238_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
  if (v1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v21);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB8EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6A8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB8F5C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9024()
{
  sub_221ADB35C(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AB90A4()
{
  result = MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BEFEB0);
  qword_27CFDE1A0 = 0xD000000000000021;
  *algn_27CFDE1A8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB9118()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE1B0);
  __swift_project_value_buffer(v0, qword_27CFDE1B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "clientLabel";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payloadPrivacy";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "diagnosticsEnabled";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB9320()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_17();
        sub_221AB9414();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221AB93B0();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AAEA90();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB9478()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_34_8();
    sub_221AB94E0(v2);
    v3 = OUTLINED_FUNCTION_34_8();
    sub_221AB9558(v3);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB94E0(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_221BCCBE8();
  }

  return result;
}

uint64_t sub_221AB9558(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221AB95D0()
{
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  OUTLINED_FUNCTION_214_0(v3);
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v11 = (v1 + v10);
  v12 = *(v1 + v10 + 4);
  v13 = (v0 + v10);
  v14 = *(v0 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = *(v3 + 28);
  v16 = *(v1 + v15);
  v17 = *(v0 + v15);
  if (v16 == 2)
  {
    if (v17 == 2)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

LABEL_22:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v19, v20);
  return OUTLINED_FUNCTION_135_3() & 1;
}

uint64_t sub_221AB972C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB97CC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9894()
{
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);

  return sub_221BCCB48();
}

uint64_t sub_221AB9920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_221BCCC78();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_70();
  __swift_project_value_buffer(v4, v5);
  return sub_221BCCC68();
}

uint64_t sub_221AB9964()
{
  do
  {
    OUTLINED_FUNCTION_55_3();
    result = sub_221BCC998();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_221AB99BC()
{
  OUTLINED_FUNCTION_88_5();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v0, v1);
  return OUTLINED_FUNCTION_135_3() & 1;
}

uint64_t sub_221AB9A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6B8, type metadata accessor for AppIntentsProtobuf_HostMessages);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB9AD4(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA028, type metadata accessor for AppIntentsProtobuf_HostMessages);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9B9C()
{
  sub_221ADB35C(&qword_27CFBA028, type metadata accessor for AppIntentsProtobuf_HostMessages);

  return sub_221BCCB48();
}

uint64_t sub_221AB9C18()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFF10);
  qword_27CFDE1E0 = 0xD00000000000001FLL;
  *algn_27CFDE1E8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AB9C90()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE1F0);
  __swift_project_value_buffer(v0, qword_27CFDE1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
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
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "disambiguationRequest";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "needsValueRequest";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "confirmationRequest";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "actionConfirmationRequest";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "continueInAppRequest";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "choiceRequest";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB9FD4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221ABA0B4(v3, v4, v5, v6);
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_40_7();
        sub_221ABA5AC(v23, v24, v25, v26);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221ABAAA4(v11, v12, v13, v14);
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_40_7();
        sub_221ABAF9C(v15, v16, v17, v18);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221ABB494(v7, v8, v9, v10);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_40_7();
        sub_221ABB98C(v27, v28, v29, v30);
        break;
      case 8:
        v31 = OUTLINED_FUNCTION_40_7();
        sub_221ABBE84(v31, v32, v33, v34);
        break;
      case 9:
        v19 = OUTLINED_FUNCTION_40_7();
        sub_221ABC37C(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221ABA0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6C8, &qword_221BE0C68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v22, &qword_27CFBA6C8, &qword_221BE0C68);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6C8, &qword_221BE0C68);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6C8, &qword_221BE0C68);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6C8, &qword_221BE0C68);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6C8, &qword_221BE0C68);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
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
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
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
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABAAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6D0, &qword_221BE0C70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6D0, &qword_221BE0C70);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6D0, &qword_221BE0C70);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6D0, &qword_221BE0C70);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6D0, &qword_221BE0C70);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6D0, &qword_221BE0C70);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABAF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6D8, &qword_221BE0C78);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6D8, &qword_221BE0C78);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6D8, &qword_221BE0C78);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6D8, &qword_221BE0C78);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6D8, &qword_221BE0C78);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6D8, &qword_221BE0C78);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6E0, &qword_221BE0C80);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6E0, &qword_221BE0C80);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6E0, &qword_221BE0C80);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6E0, &qword_221BE0C80);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6E0, &qword_221BE0C80);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6E0, &qword_221BE0C80);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABB98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6E8, &qword_221BE0C88);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6E8, &qword_221BE0C88);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6E8, &qword_221BE0C88);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6E8, &qword_221BE0C88);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6E8, &qword_221BE0C88);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6E8, &qword_221BE0C88);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABBE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6F0, &qword_221BE0C90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6F0, &qword_221BE0C90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6F0, &qword_221BE0C90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6F0, &qword_221BE0C90);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6F0, &qword_221BE0C90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6F0, &qword_221BE0C90);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ABC37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6F8, &qword_221BE0C98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2219A1CC8(v22, &qword_27CFBA6F8, &qword_221BE0C98);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA6F8, &qword_221BE0C98);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA6F8, &qword_221BE0C98);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA6F8, &qword_221BE0C98);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA6F8, &qword_221BE0C98);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221ABC874()
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
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(v7);
  if (v8)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_120();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = OUTLINED_FUNCTION_15_11();
      sub_221ABCBC0(v29, v30, v31, v32);
      break;
    case 2u:
      v17 = OUTLINED_FUNCTION_15_11();
      sub_221ABCDD4(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = OUTLINED_FUNCTION_15_11();
      sub_221ABCFE8(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = OUTLINED_FUNCTION_15_11();
      sub_221ABD1FC(v13, v14, v15, v16);
      break;
    case 5u:
      v33 = OUTLINED_FUNCTION_15_11();
      sub_221ABD410(v33, v34, v35, v36);
      break;
    case 6u:
      v37 = OUTLINED_FUNCTION_15_11();
      sub_221ABD624(v37, v38, v39, v40);
      break;
    case 7u:
      v25 = OUTLINED_FUNCTION_15_11();
      sub_221ABD838(v25, v26, v27, v28);
      break;
    default:
      v9 = OUTLINED_FUNCTION_15_11();
      sub_221ABC9B0(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_50_5();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_12:
    v41 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
    OUTLINED_FUNCTION_94_4(v41);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ABC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABCBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
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

uint64_t sub_221ABCDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221ABDA4C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(v2);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA700, &qword_221BE0CA0);
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
      sub_2219A1CC8(v0, &unk_27CFBB780, &unk_221BDB150);
LABEL_12:
      v21 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
      OUTLINED_FUNCTION_259_0(v21);
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
    OUTLINED_FUNCTION_50_5();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA700, &qword_221BE0CA0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8BD70();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB780, &unk_221BDB150);
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

uint64_t sub_221ABDCE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6C0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ABDD80(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ABDE48()
{
  sub_221ADB35C(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);

  return sub_221BCCB48();
}

uint64_t sub_221ABDEC8()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE208 = v1;
  unk_27CFDE210 = v2;
  return result;
}

uint64_t sub_221ABDF6C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE218);
  __swift_project_value_buffer(v0, qword_27CFDE218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "output";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "effectiveBundleIdentifier";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ABE134()
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
      sub_221BCCA98();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221ABE198();
    }
  }

  return result;
}

uint64_t sub_221ABE198()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  return sub_221BCCAD8();
}

uint64_t sub_221ABE24C()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221ABE2C4(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = *v1;
    v8 = v1[1];
    OUTLINED_FUNCTION_25_8();
    if (v9)
    {
      OUTLINED_FUNCTION_124_4();
    }

    v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0) + 20);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221ABE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9D00, &unk_221BDB1B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ABE4A4()
{
  OUTLINED_FUNCTION_21();
  v5 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
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
  OUTLINED_FUNCTION_99_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA710, &unk_221BE0CB0);
  OUTLINED_FUNCTION_125_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_29_8();
  v39 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v19);
  v20 = *(v39 + 24);
  v21 = *(v4 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (!v22)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v21);
    if (!v22)
    {
      OUTLINED_FUNCTION_256_0();
      sub_221ADFDB4();
      v26 = *(v0 + 20);
      if (*(v3 + v26) == *(v2 + v26) || (v27 = *(v3 + v26), , , sub_221A75FF0(), v29 = v28, , , (v29 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v30, v31);
        OUTLINED_FUNCTION_144_3();
        v32 = sub_221BCD338();
        sub_221ADFE28();
        OUTLINED_FUNCTION_120();
        sub_221ADFE28();
        sub_2219A1CC8(v1, &qword_27CFB9D00, &unk_221BDB1B0);
        if ((v32 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_257_0();
      sub_221ADFE28();
      sub_221ADFE28();
      v23 = &qword_27CFB9D00;
      v24 = &unk_221BDB1B0;
LABEL_10:
      sub_2219A1CC8(v1, v23, v24);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_9:
    v23 = &qword_27CFBA710;
    v24 = &unk_221BE0CB0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_20_8(v1 + v21);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_2219A1CC8(v1, &qword_27CFB9D00, &unk_221BDB1B0);
LABEL_15:
  OUTLINED_FUNCTION_136_3();
  if (v22)
  {
    v35 = v33 == v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35 || (sub_221BCE1B8() & 1) != 0)
  {
    v36 = *(v39 + 20);
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v37, v38);
    OUTLINED_FUNCTION_271_0();
    v25 = OUTLINED_FUNCTION_361();
    goto LABEL_21;
  }

LABEL_11:
  v25 = 0;
LABEL_21:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ABE858(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA730, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ABE8F8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ABE9C0()
{
  sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);

  return sub_221BCCB48();
}

uint64_t sub_221ABEA40()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFFE0);

  qword_27CFDE230 = v1;
  *algn_27CFDE238 = v2;
  return result;
}

uint64_t sub_221ABEAE8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE240);
  __swift_project_value_buffer(v0, qword_27CFDE240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterMetadata";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dialog";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "providedValues";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ABED60(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_174_2(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_221ABEDB0()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v4 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v6 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_221ABEE50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v13 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v15 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  *(v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  swift_beginAccess();
  v18 = *(a1 + v17);

  swift_beginAccess();
  v19 = *(v1 + v16);
  *(v1 + v16) = v18;

  return v1;
}

uint64_t sub_221ABF1A4()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  v1 = *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues);

  return v0;
}

void sub_221ABF2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_221ABF30C()
{
  OUTLINED_FUNCTION_151_2();
  v1 = v0;
  OUTLINED_FUNCTION_114_3();
  v2 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v6);
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_55_7();
    *(v1 + v2) = sub_221ABEE50(v7);
  }

  OUTLINED_FUNCTION_15_11();
  sub_221AC86EC();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221ABF3D8()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF4B4()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF590()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF66C()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
  sub_221BCCAC8();
  return swift_endAccess();
}

uint64_t sub_221ABF748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221ABF878(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221ABFA6C(a1, a2, a3, a4);
    sub_221ABFC60(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
      sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);

      sub_221BCCC18();
    }
  }

  return result;
}

uint64_t sub_221ABF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
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

uint64_t sub_221ABFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ABFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ABFE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_88_5();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v13, v14);
  return OUTLINED_FUNCTION_135_3() & 1;
}

uint64_t sub_221ABFF18(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v77 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  v5 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v78 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v72 - v11;
  v83 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v12 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v75 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v79 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v82 = &v72 - v20;
  v21 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v80 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = (&v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v35 = &v72 - v34;
  swift_beginAccess();
  v36 = a1;
  sub_221A1C558();
  v37 = v86;
  swift_beginAccess();
  v38 = *(v25 + 56);
  sub_221A1C558();
  v39 = v37;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v28, 1, v21) == 1)
  {

    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
    {
      sub_2219A1CC8(v28, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
  {

    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v46 = &qword_27CFB9990;
    v47 = &qword_221BDAE28;
    v48 = v28;
LABEL_26:
    sub_2219A1CC8(v48, v46, v47);
    goto LABEL_27;
  }

  v49 = v80;
  sub_221ADFDB4();
  if (*v33 != *v49 || v33[1] != v49[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v48 = v28;
    v46 = &qword_27CFB9988;
    v47 = &qword_221BDAE20;
    goto LABEL_26;
  }

  v50 = *(v21 + 24);
  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);

  v51 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v28, &qword_27CFB9988, &qword_221BDAE20);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v40 = v82;
  sub_221A1C558();
  swift_beginAccess();
  v41 = *(v81 + 48);
  v42 = v84;
  sub_221A1C558();
  sub_221A1C558();
  v43 = v83;
  if (__swift_getEnumTagSinglePayload(v42, 1, v83) != 1)
  {
    v52 = v79;
    sub_221A1C558();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42 + v41, 1, v43);
    v45 = v85;
    if (EnumTagSinglePayload != 1)
    {
      v54 = v75;
      sub_221ADFDB4();
      v55 = sub_221A7F29C(v52, v54);
      sub_221ADFE28();
      sub_2219A1CC8(v40, &unk_27CFBB7D0, &unk_221BE4E60);
      sub_221ADFE28();
      sub_2219A1CC8(v42, &unk_27CFBB7D0, &unk_221BE4E60);
      if ((v55 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_2219A1CC8(v40, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
LABEL_17:
    v46 = &qword_27CFBA718;
    v47 = &qword_221BE0CC0;
LABEL_25:
    v48 = v42;
    goto LABEL_26;
  }

  sub_2219A1CC8(v40, &unk_27CFBB7D0, &unk_221BE4E60);
  v44 = __swift_getEnumTagSinglePayload(v42 + v41, 1, v43);
  v45 = v85;
  if (v44 != 1)
  {
    goto LABEL_17;
  }

  sub_2219A1CC8(v42, &unk_27CFBB7D0, &unk_221BE4E60);
LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v56 = *(v76 + 48);
  v42 = v78;
  sub_221A1C558();
  sub_221A1C558();
  v57 = v77;
  if (__swift_getEnumTagSinglePayload(v42, 1, v77) == 1)
  {
    sub_2219A1CC8(v45, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v42 + v56, 1, v57) == 1)
    {
      sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
LABEL_30:
      v61 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
      swift_beginAccess();
      v62 = *(v36 + v61);
      v63 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
      swift_beginAccess();
      v64 = *(v39 + v63);

      sub_221A1A0E0(v62, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v58 = v71;

      return v58 & 1;
    }

    goto LABEL_24;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v42 + v56, 1, v57) == 1)
  {
    sub_2219A1CC8(v45, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_24:
    v46 = &qword_27CFB9978;
    v47 = &qword_221BDAE18;
    goto LABEL_25;
  }

  sub_221ADFDB4();
  v60 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v45, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
  if (v60)
  {
    goto LABEL_30;
  }

LABEL_27:

  v58 = 0;
  return v58 & 1;
}

uint64_t sub_221AC0BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA738, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC0C54(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC0D1C()
{
  sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AC0DDC()
{
  if (qword_27CFB70C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE230;
  v2 = *algn_27CFDE238;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x656469766F72502ELL, 0xEE0065756C615664);

  qword_27CFDE258 = v1;
  unk_27CFDE260 = v2;
  return result;
}

uint64_t sub_221AC0E8C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE268);
  __swift_project_value_buffer(v0, qword_27CFDE268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "displayRepresentation";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originalIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC1094()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_17();
        sub_221AC11C4();
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AC1110();
        break;
    }
  }

  return result;
}

uint64_t sub_221AC1110()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 24);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  return sub_221BCCAD8();
}

uint64_t sub_221AC11C4()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 28);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

void sub_221AC1278()
{
  OUTLINED_FUNCTION_356();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  v6();
  if (!v0)
  {
    if (*v1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    v7 = OUTLINED_FUNCTION_3_21();
    v5(v7);
    v8 = *(v3(0) + 20);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AC131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9C78, &qword_221BDB0F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC14FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 28);
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

void sub_221AC16DC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_Value(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v51);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_89_5(v14, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v54);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v53);
  v20 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v19);
  v21 = OUTLINED_FUNCTION_2_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_0();
  v24 = OUTLINED_FUNCTION_27();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA720, &unk_221BE0CC8) - 8);
  v31 = *(*v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_96_5();
  v55 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v33);
  v34 = *(v55 + 24);
  v35 = v30[14];
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_22_9(v1);
  if (v36)
  {
    OUTLINED_FUNCTION_22_9(v1 + v35);
    if (v36)
    {
      sub_2219A1CC8(v1, &qword_27CFB9C78, &qword_221BDB0F8);
      goto LABEL_12;
    }

LABEL_9:
    v37 = &qword_27CFBA720;
    v38 = &unk_221BE0CC8;
    v39 = v1;
LABEL_10:
    sub_2219A1CC8(v39, v37, v38);
LABEL_26:
    v46 = 0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_353();
  OUTLINED_FUNCTION_22_9(v1 + v35);
  if (v36)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_18_7();
  sub_221A7AACC();
  v41 = v40;
  sub_221ADFE28();
  OUTLINED_FUNCTION_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &qword_27CFB9C78, &qword_221BDB0F8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (*v0 != *v3)
  {
    goto LABEL_26;
  }

  v42 = *(v55 + 28);
  v43 = *(v54 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_66_3(v56);
  if (v36)
  {
    OUTLINED_FUNCTION_39_8(v43 + v56);
    if (v36)
    {
      sub_2219A1CC8(v56, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_381();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v43 + v56);
  if (v47)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_22:
    v37 = &qword_27CFB85E0;
    v38 = &unk_221BD3E40;
LABEL_23:
    v39 = v56;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_325();
  if ((MEMORY[0x223DA21A0](*v42, v42[1], *v43, v43[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    sub_221ADFE28();
    v37 = &unk_27CFBB660;
    v38 = &qword_221BE4610;
    goto LABEL_23;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v48, v49);
  OUTLINED_FUNCTION_379();
  v50 = OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_247_0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v56, &unk_27CFBB660, &qword_221BE4610);
  if ((v50 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v44, v45);
  v46 = sub_221BCD338();
LABEL_27:
  OUTLINED_FUNCTION_100_3(v46);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AC1C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA740, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC1CF4(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC1DBC()
{
  sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);

  return sub_221BCCB48();
}

uint64_t sub_221AC1E3C()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x526563696F68432ELL, 0xEE00747365757165);

  qword_27CFDE280 = v1;
  *algn_27CFDE288 = v2;
  return result;
}

uint64_t sub_221AC1EEC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE290);
  __swift_project_value_buffer(v0, qword_27CFDE290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "viewSnippet";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "providedOptions";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC2164()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet;
  v6 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_221AC2204(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v18 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v10 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet;
  v12 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  *(v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  swift_beginAccess();
  v15 = *(a1 + v14);

  swift_beginAccess();
  v16 = *(v1 + v13);
  *(v1 + v13) = v15;

  return v1;
}

uint64_t sub_221AC2558()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet, &qword_27CFB9920, &unk_221BDADC0);
  v1 = *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions);

  return v0;
}

void sub_221AC265C()
{
  OUTLINED_FUNCTION_217_2();
  OUTLINED_FUNCTION_126_3();
  sub_221ABF2A8(319, v0, v1, MEMORY[0x277D83D88]);
  if (v3 <= 0x3F)
  {
    v16 = *(v2 - 8) + 64;
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v4, v5, v6, v7);
    if (v9 <= 0x3F)
    {
      v17 = *(v8 - 8) + 64;
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v10, v11, v12, v13);
      if (v15 <= 0x3F)
      {
        v18 = *(v14 - 8) + 64;
        OUTLINED_FUNCTION_220_2();
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_221AC27A0()
{
  OUTLINED_FUNCTION_151_2();
  v1 = v0;
  OUTLINED_FUNCTION_114_3();
  v2 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v6);
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_55_7();
    *(v1 + v2) = sub_221AC2204(v7);
  }

  OUTLINED_FUNCTION_15_11();
  sub_221AC86EC();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AC286C()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2948()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2A24()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221ADB35C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2B00()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
  sub_221BCCAC8();
  return swift_endAccess();
}

uint64_t sub_221AC2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC2D0C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221AC2F00(a1, a2, a3, a4);
    sub_221AC30F4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
      sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);

      sub_221BCCC18();
    }
  }

  return result;
}

uint64_t sub_221AC2D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
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

uint64_t sub_221AC2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC32E8(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v71 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v67 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9960, &qword_221BDAE00);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v68 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v79 = &v66 - v11;
  v77 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v12 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v73 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v66 - v20;
  v21 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v74 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v35 = &v66 - v34;
  swift_beginAccess();
  v36 = a1;
  sub_221A1C558();
  v37 = v80;
  swift_beginAccess();
  v38 = *(v25 + 56);
  sub_221A1C558();
  v39 = v37;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v28, 1, v21) == 1)
  {

    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
    {
      sub_2219A1CC8(v28, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
  {

    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v46 = &qword_27CFB9990;
    v47 = &qword_221BDAE28;
    v48 = v28;
LABEL_26:
    sub_2219A1CC8(v48, v46, v47);
    goto LABEL_27;
  }

  v49 = v74;
  sub_221ADFDB4();
  if (*v33 != *v49 || v33[1] != v49[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v48 = v28;
    v46 = &qword_27CFB9988;
    v47 = &qword_221BDAE20;
    goto LABEL_26;
  }

  v50 = *(v21 + 24);
  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);

  v51 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v35, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v28, &qword_27CFB9988, &qword_221BDAE20);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v40 = v76;
  sub_221A1C558();
  swift_beginAccess();
  v41 = *(v75 + 48);
  v42 = v78;
  sub_221A1C558();
  sub_221A1C558();
  v43 = v77;
  if (__swift_getEnumTagSinglePayload(v42, 1, v77) != 1)
  {
    sub_221A1C558();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42 + v41, 1, v43);
    v45 = v79;
    if (EnumTagSinglePayload != 1)
    {
      sub_221ADFDB4();
      v53 = sub_221A7941C();
      sub_221ADFE28();
      sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
      sub_221ADFE28();
      sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
      if ((v53 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_17:
    v46 = &qword_27CFB9978;
    v47 = &qword_221BDAE18;
LABEL_25:
    v48 = v42;
    goto LABEL_26;
  }

  sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
  v44 = __swift_getEnumTagSinglePayload(v42 + v41, 1, v43);
  v45 = v79;
  if (v44 != 1)
  {
    goto LABEL_17;
  }

  sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v54 = *(v70 + 48);
  v42 = v72;
  sub_221A1C558();
  sub_221A1C558();
  v55 = v71;
  if (__swift_getEnumTagSinglePayload(v42, 1, v71) == 1)
  {
    sub_2219A1CC8(v45, &qword_27CFB9920, &unk_221BDADC0);
    if (__swift_getEnumTagSinglePayload(v42 + v54, 1, v55) == 1)
    {
      sub_2219A1CC8(v42, &qword_27CFB9920, &unk_221BDADC0);
LABEL_30:
      v61 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
      swift_beginAccess();
      v62 = *(v36 + v61);
      v63 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
      swift_beginAccess();
      v64 = *(v39 + v63);

      sub_221A1A2AC();
      v57 = v65;

      return v57 & 1;
    }

    goto LABEL_24;
  }

  v56 = v68;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v42 + v54, 1, v55) == 1)
  {
    sub_2219A1CC8(v45, &qword_27CFB9920, &unk_221BDADC0);
    sub_221ADFE28();
LABEL_24:
    v46 = &qword_27CFB9960;
    v47 = &qword_221BDAE00;
    goto LABEL_25;
  }

  v59 = v67;
  sub_221ADFDB4();
  v60 = sub_221A832C8(v56, v59);
  sub_221ADFE28();
  sub_2219A1CC8(v45, &qword_27CFB9920, &unk_221BDADC0);
  sub_221ADFE28();
  sub_2219A1CC8(v42, &qword_27CFB9920, &unk_221BDADC0);
  if (v60)
  {
    goto LABEL_30;
  }

LABEL_27:

  v57 = 0;
  return v57 & 1;
}

uint64_t sub_221AC3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA748, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC4024(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC40EC()
{
  sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AC41AC()
{
  if (qword_27CFB70E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE280;
  v2 = *algn_27CFDE288;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x656469766F72502ELL, 0xEF6E6F6974704F64);

  qword_27CFDE2A8 = v1;
  unk_27CFDE2B0 = v2;
  return result;
}

uint64_t sub_221AC425C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2B8);
  __swift_project_value_buffer(v0, qword_27CFDE2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "style";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC4460()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_277_0();
        v0();
        break;
      case 2:
        sub_221BCCA98();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_234_1();
        v2(v5);
        break;
    }
  }

  return result;
}

uint64_t sub_221AC4568()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBB8(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_25_8();
    if (!v6 || (result = OUTLINED_FUNCTION_124_4(), !v1))
    {
      if (!*(v2 + 24) || (v8 = *(v2 + 24), v9 = *(v2 + 32), sub_221AE00DC(), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
      {
        v7 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0) + 28);
        return OUTLINED_FUNCTION_30_7();
      }
    }
  }

  return result;
}

uint64_t sub_221AC462C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 24);
  v7 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

LABEL_13:
      v8 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0) + 28);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v9, v10);
      return OUTLINED_FUNCTION_36_8() & 1;
    }

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_221AC4744(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_123_1();

  return v6(v5);
}

uint64_t sub_221AC47AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_221AC4870(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA750, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC4910(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC49D8()
{
  sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);

  return sub_221BCCB48();
}

uint64_t sub_221AC4A58()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2D0);
  __swift_project_value_buffer(v0, qword_27CFDE2D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CANCEL";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DESTRUCTIVE";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC4C80()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BF00A0);

  qword_27CFDE2E8 = v1;
  unk_27CFDE2F0 = v2;
  return result;
}

uint64_t sub_221AC4D28()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2F8);
  __swift_project_value_buffer(v0, qword_27CFDE2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BDAFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterName";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dialog";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterMetadata";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "effectiveBundleIdentifier";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC501C()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v5 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v9 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_221AC50F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v33[4] = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33[3] = v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v33[2] = v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v15 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v18 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v20 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v33[1] = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v22 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = (v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = v16[1];
  *v16 = v26;
  v16[1] = v25;

  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];

  swift_beginAccess();
  v31 = v23[1];
  *v23 = v30;
  v23[1] = v29;

  return v1;
}

uint64_t sub_221AC55CC()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  v1 = *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName + 8);

  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type, &qword_27CFB95E0, &qword_221BE0A10);
  v2 = *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier + 8);

  return v0;
}

void sub_221AC56CC()
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_221ABF2A8(319, &qword_27CFB9B80, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_221ABF2A8(319, &qword_27CFB9618, type metadata accessor for AppIntentsProtobuf_ValueType, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_221AC58D4()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v16 = v3;
  v5 = v4;
  v6 = v0;
  v7 = OUTLINED_FUNCTION_373();
  v9 = *(v8(v7) + 20);
  v10 = *(v0 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v5(0);
    OUTLINED_FUNCTION_174_2(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_55_7();
    *(v6 + v9) = v16(v14);
  }

  v15 = OUTLINED_FUNCTION_92();
  v2(v15);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AC5978()
{
  while (1)
  {
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_221AC5AA8();
        break;
      case 2:
      case 6:
        sub_221AC5E18();
        break;
      case 3:
        sub_221AC5B84();
        break;
      case 4:
        sub_221AC5C60();
        break;
      case 5:
        sub_221AC5D3C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AC5AA8()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5B84()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5C60()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5D3C()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  sub_221ADB35C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5E18()
{
  OUTLINED_FUNCTION_113_5();
  v1 = *v0;
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  sub_221BCCA98();
  return swift_endAccess();
}

uint64_t sub_221AC5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC6010(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_221BCCBF8();
    }

    sub_221AC6204(a1, a2, a3, a4);
    sub_221AC63F8(a1, a2, a3, a4);
    sub_221AC65EC(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_221BCCBF8();
    }
  }

  return result;
}

uint64_t sub_221AC6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
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

uint64_t sub_221AC6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC65EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB95E0, &qword_221BE0A10);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC67E0(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v94 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v3 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9940, &unk_221BDADE0);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v95 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v91 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v90 - v11;
  v99 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v12 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v92 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v96 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v107 = &v90 - v20;
  v105 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v21 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v97 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  v23 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v90 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v102 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v104 = &v90 - v29;
  v30 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v108 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v109 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v90 - v42;
  swift_beginAccess();
  sub_221A1C558();
  v44 = v110;
  swift_beginAccess();
  v45 = *(v34 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v37, 1, v30) == 1)
  {

    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    v46 = v44;
    if (__swift_getEnumTagSinglePayload(&v37[v45], 1, v30) == 1)
    {
      sub_2219A1CC8(v37, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

LABEL_14:
    v58 = &qword_27CFB9990;
    v59 = &qword_221BDAE28;
LABEL_15:
    v60 = v37;
    goto LABEL_21;
  }

  v46 = v44;
  v57 = v109;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v37[v45], 1, v30) == 1)
  {

    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    goto LABEL_14;
  }

  v61 = v108;
  sub_221ADFDB4();
  if (*v57 != *v61 || v57[1] != v61[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v60 = v37;
    v58 = &qword_27CFB9988;
    v59 = &qword_221BDAE20;
    goto LABEL_21;
  }

  v62 = *(v30 + 24);
  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);

  v63 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v37, &qword_27CFB9988, &qword_221BDAE20);
  if ((v63 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v47 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = (v46 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v51 = v48 == *v50 && v49 == v50[1];
  if (!v51 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v52 = v104;
  sub_221A1C558();
  swift_beginAccess();
  v53 = *(v103 + 48);
  v37 = v106;
  sub_221A1C558();
  sub_221A1C558();
  v54 = v105;
  if (__swift_getEnumTagSinglePayload(v37, 1, v105) == 1)
  {
    sub_2219A1CC8(v52, &unk_27CFBB790, &qword_221BDADD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v37[v53], 1, v54);
    v56 = v107;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219A1CC8(v37, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_221A1C558();
  v65 = __swift_getEnumTagSinglePayload(&v37[v53], 1, v54);
  v56 = v107;
  if (v65 == 1)
  {
    sub_2219A1CC8(v52, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_26:
    v58 = &qword_27CFB9978;
    v59 = &qword_221BDAE18;
    goto LABEL_15;
  }

  sub_221ADFDB4();
  v66 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v52, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v37, &unk_27CFBB790, &qword_221BDADD8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_28:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v67 = *(v98 + 48);
  v68 = v100;
  sub_221A1C558();
  v69 = v68;
  sub_221A1C558();
  v70 = v99;
  if (__swift_getEnumTagSinglePayload(v68, 1, v99) == 1)
  {
    sub_2219A1CC8(v56, &unk_27CFBB7D0, &unk_221BE4E60);
    v71 = __swift_getEnumTagSinglePayload(v68 + v67, 1, v70);
    v72 = v101;
    if (v71 == 1)
    {
      sub_2219A1CC8(v69, &unk_27CFBB7D0, &unk_221BE4E60);
      goto LABEL_35;
    }

LABEL_33:
    v58 = &qword_27CFBA718;
    v59 = &qword_221BE0CC0;
    v60 = v69;
    goto LABEL_21;
  }

  v73 = v96;
  sub_221A1C558();
  v74 = __swift_getEnumTagSinglePayload(v68 + v67, 1, v70);
  v72 = v101;
  if (v74 == 1)
  {
    sub_2219A1CC8(v56, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
    goto LABEL_33;
  }

  v75 = v92;
  sub_221ADFDB4();
  LODWORD(v110) = sub_221A7F29C(v73, v75);
  sub_221ADFE28();
  sub_2219A1CC8(v56, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_221ADFE28();
  sub_2219A1CC8(v69, &unk_27CFBB7D0, &unk_221BE4E60);
  if ((v110 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v76 = *(v93 + 48);
  v77 = v72;
  v78 = v95;
  sub_221A1C558();
  sub_221A1C558();
  v79 = v94;
  if (__swift_getEnumTagSinglePayload(v78, 1, v94) != 1)
  {
    v86 = v91;
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v78 + v76, 1, v79) == 1)
    {
      sub_2219A1CC8(v101, &qword_27CFB95E0, &qword_221BE0A10);
      sub_221ADFE28();
      goto LABEL_46;
    }

    v87 = v90;
    sub_221ADFDB4();
    if (MEMORY[0x223DA21A0](*v86, v86[1], *v87, v87[1]))
    {
      v88 = *(v79 + 20);
      sub_221BCC8D8();
      sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);
      v89 = sub_221BCD338();
      sub_221ADFE28();
      sub_2219A1CC8(v101, &qword_27CFB95E0, &qword_221BE0A10);
      sub_221ADFE28();
      sub_2219A1CC8(v78, &qword_27CFB95E0, &qword_221BE0A10);
      if (v89)
      {
        goto LABEL_38;
      }

LABEL_22:

      return 0;
    }

    sub_221ADFE28();
    sub_2219A1CC8(v101, &qword_27CFB95E0, &qword_221BE0A10);
    sub_221ADFE28();
    v60 = v78;
    v58 = &qword_27CFB95E0;
    v59 = &qword_221BE0A10;
LABEL_21:
    sub_2219A1CC8(v60, v58, v59);
    goto LABEL_22;
  }

  sub_2219A1CC8(v77, &qword_27CFB95E0, &qword_221BE0A10);
  if (__swift_getEnumTagSinglePayload(v78 + v76, 1, v79) != 1)
  {
LABEL_46:
    v58 = &qword_27CFB9940;
    v59 = &unk_221BDADE0;
    v60 = v78;
    goto LABEL_21;
  }

  sub_2219A1CC8(v78, &qword_27CFB95E0, &qword_221BE0A10);
LABEL_38:
  v80 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = (v46 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  if (v81 == *v83 && v82 == v83[1])
  {

    return 1;
  }

  v85 = sub_221BCE1B8();

  result = 0;
  if (v85)
  {
    return 1;
  }

  return result;
}

uint64_t sub_221AC78F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA760, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC7998(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC7A60()
{
  sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AC7B20()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BF00C0);

  qword_27CFDE310 = v1;
  *algn_27CFDE318 = v2;
  return result;
}

uint64_t sub_221AC7BC8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE320);
  __swift_project_value_buffer(v0, qword_27CFDE320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterMetadata";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC7E40()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v6 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_221AC7EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v20[2] = v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20[1] = v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v14 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v16 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  v18 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();

  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  return v0;
}

uint64_t sub_221AC82D0()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value, &unk_27CFBB7E0, &unk_221BE0A00);
  return v0;
}

uint64_t sub_221AC8380(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_221AC8400()
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_221ABF2A8(319, &qword_27CFB9B80, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_221ABF2A8(319, &qword_27CFB9C28, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_221AC8620()
{
  OUTLINED_FUNCTION_151_2();
  v1 = v0;
  OUTLINED_FUNCTION_114_3();
  v2 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    *(v1 + v2) = sub_221AC7EF0();
  }

  OUTLINED_FUNCTION_15_11();
  sub_221AC86EC();
  OUTLINED_FUNCTION_152_2();
}

void sub_221AC86EC()
{
  OUTLINED_FUNCTION_356();
  v5 = v4;
  OUTLINED_FUNCTION_278_0();
  while (1)
  {
    OUTLINED_FUNCTION_221();
    v6 = sub_221BCC998();
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_129_4();
        v3(v8);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_129_4();
        v2(v11);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_129_4();
        v1(v9);
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_129_4();
        v5(v10);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AC87B4()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8890()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC896C()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8A48()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_221ADB35C(&unk_27CFBB850, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC8BA4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221AC8D98(a1, a2, a3, a4);
    sub_221AC8F8C(a1, a2, a3, a4);
    return sub_221AC9180(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_221AC8BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
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

uint64_t sub_221AC8D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC8F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB7E0, &unk_221BE0A00);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB850, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221AC9374(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v90 = a1;
  v74 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v71[0] = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA728, &unk_221BE0CD8);
  v4 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v75 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71[1] = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = v71 - v10;
  v79 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v11 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v72 = (v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  v13 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v80 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v76 = (v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v86 = v71 - v19;
  v84 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v20 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v77 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  v22 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v85 = v71 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v81 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v88 = v71 - v28;
  v29 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v82 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v36 = v71 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = (v71 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v43 = v71 - v42;
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v44 = *(v33 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v36, 1, v29) == 1)
  {

    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v36[v44], 1, v29) == 1)
    {
      sub_2219A1CC8(v36, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v36[v44], 1, v29) == 1)
  {

    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v52 = &qword_27CFB9990;
    v53 = &qword_221BDAE28;
    v54 = v36;
LABEL_26:
    sub_2219A1CC8(v54, v52, v53);
    goto LABEL_27;
  }

  v55 = v82;
  sub_221ADFDB4();
  if (*v41 != *v55 || v41[1] != v55[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v54 = v36;
    v52 = &qword_27CFB9988;
    v53 = &qword_221BDAE20;
    goto LABEL_26;
  }

  v56 = *(v29 + 24);
  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);

  v57 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v43, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v36, &qword_27CFB9988, &qword_221BDAE20);
  if ((v57 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v45 = v88;
  sub_221A1C558();
  swift_beginAccess();
  v46 = *(v83 + 48);
  v47 = v85;
  sub_221A1C558();
  sub_221A1C558();
  v48 = v84;
  if (__swift_getEnumTagSinglePayload(v47, 1, v84) == 1)
  {
    sub_2219A1CC8(v45, &unk_27CFBB790, &qword_221BDADD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
    v50 = v87;
    v51 = v86;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219A1CC8(v47, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_19;
    }

LABEL_17:
    v52 = &qword_27CFB9978;
    v53 = &qword_221BDAE18;
LABEL_25:
    v54 = v47;
    goto LABEL_26;
  }

  sub_221A1C558();
  v58 = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
  v50 = v87;
  v51 = v86;
  if (v58 == 1)
  {
    sub_2219A1CC8(v88, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
    goto LABEL_17;
  }

  sub_221ADFDB4();
  v59 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v88, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v47, &unk_27CFBB790, &qword_221BDADD8);
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v60 = *(v78 + 48);
  v47 = v80;
  sub_221A1C558();
  sub_221A1C558();
  v61 = v79;
  if (__swift_getEnumTagSinglePayload(v47, 1, v79) != 1)
  {
    v62 = v76;
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v47 + v60, 1, v61) == 1)
    {
      sub_2219A1CC8(v51, &unk_27CFBB7D0, &unk_221BE4E60);
      sub_221ADFE28();
      goto LABEL_24;
    }

    v64 = v72;
    sub_221ADFDB4();
    v65 = sub_221A7F29C(v62, v64);
    sub_221ADFE28();
    sub_2219A1CC8(v51, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
    sub_2219A1CC8(v47, &unk_27CFBB7D0, &unk_221BE4E60);
    if (v65)
    {
      goto LABEL_31;
    }

LABEL_27:

    return 0;
  }

  sub_2219A1CC8(v51, &unk_27CFBB7D0, &unk_221BE4E60);
  if (__swift_getEnumTagSinglePayload(v47 + v60, 1, v61) != 1)
  {
LABEL_24:
    v52 = &qword_27CFBA718;
    v53 = &qword_221BE0CC0;
    goto LABEL_25;
  }

  sub_2219A1CC8(v47, &unk_27CFBB7D0, &unk_221BE4E60);
LABEL_31:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v66 = *(v73 + 48);
  v67 = v75;
  sub_221A1C558();
  sub_221A1C558();
  v68 = v74;
  if (__swift_getEnumTagSinglePayload(v67, 1, v74) == 1)
  {

    sub_2219A1CC8(v50, &unk_27CFBB7E0, &unk_221BE0A00);
    if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v68) == 1)
    {
      sub_2219A1CC8(v67, &unk_27CFBB7E0, &unk_221BE0A00);
      return 1;
    }

    goto LABEL_36;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v68) == 1)
  {

    sub_2219A1CC8(v50, &unk_27CFBB7E0, &unk_221BE0A00);
    sub_221ADFE28();
LABEL_36:
    sub_2219A1CC8(v67, &qword_27CFBA728, &unk_221BE0CD8);
    return 0;
  }

  sub_221ADFDB4();
  sub_221ACA8E8();
  v70 = v69;

  sub_221ADFE28();
  sub_2219A1CC8(v50, &unk_27CFBB7E0, &unk_221BE0A00);
  sub_221ADFE28();
  sub_2219A1CC8(v67, &unk_27CFBB7E0, &unk_221BE0A00);
  return (v70 & 1) != 0;
}

uint64_t sub_221ACA374(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA768, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACA414(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACA4DC()
{
  sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);

  return sub_221BCCB48();
}

uint64_t sub_221ACA59C()
{
  if (qword_27CFB7130 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE310;
  v2 = *algn_27CFDE318;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x65756C61562ELL, 0xE600000000000000);

  qword_27CFDE338 = v1;
  unk_27CFDE340 = v2;
  return result;
}

uint64_t sub_221ACA654()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0) + 20);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  return sub_221BCCAD8();
}

uint64_t sub_221ACA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0) + 20);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9C78, &qword_221BDB0F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ACA8E8()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v2);
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
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA720, &unk_221BE0CC8);
  OUTLINED_FUNCTION_273_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_29_8();
  v18 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(v17) + 20);
  v19 = *(v1 + 56);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_53_7(v0);
  if (v20)
  {
    OUTLINED_FUNCTION_35_8();
    if (v20)
    {
      sub_2219A1CC8(v0, &qword_27CFB9C78, &qword_221BDB0F8);
LABEL_12:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v24, v25);
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
    sub_2219A1CC8(v0, &qword_27CFBA720, &unk_221BE0CC8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A7AACC();
  v23 = v22;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFB9C78, &qword_221BDB0F8);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v21);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACABC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA770, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACAC60(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB850, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACAD28()
{
  sub_221ADB35C(&unk_27CFBB850, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);

  return sub_221BCCB48();
}

uint64_t sub_221ACADA8()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BF00E0);

  qword_27CFDE360 = v1;
  *algn_27CFDE368 = v2;
  return result;
}

uint64_t sub_221ACAE50()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE370);
  __swift_project_value_buffer(v0, qword_27CFDE370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACB018()
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
      sub_221ACB130();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221ACB07C();
    }
  }

  return result;
}

uint64_t sub_221ACB07C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0) + 20);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221ACB130()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  return sub_221BCCAD8();
}

uint64_t sub_221ACB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0) + 20);
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

uint64_t sub_221ACB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9D00, &unk_221BDB1B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ACB5A4()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218_2();
  v61 = type metadata accessor for AppIntentsProtobuf_ActionOutput(v3);
  v4 = OUTLINED_FUNCTION_2_1(v61);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_8();
  v57 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_101_4(v12);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA710, &unk_221BE0CB0);
  OUTLINED_FUNCTION_2_1(v60);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_104_2();
  v62 = v16;
  v17 = OUTLINED_FUNCTION_133_3();
  v18 = type metadata accessor for AppIntentsProtobuf_UUID(v17);
  v19 = OUTLINED_FUNCTION_43_8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v22 = OUTLINED_FUNCTION_27();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_8_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_102_3();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_116_5();
  v59 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v32 = *(v59 + 20);
  v33 = *(v0 + 56);
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_20_8(v1);
  if (v38)
  {
    OUTLINED_FUNCTION_20_8(v1 + v33);
    if (v38)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v33);
    if (!v38)
    {
      OUTLINED_FUNCTION_3_22();
      sub_221ADFDB4();
      v41 = *v2;
      OUTLINED_FUNCTION_349();
      if (!v42 || (v43 = v2[1], OUTLINED_FUNCTION_385(), !v38))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v44, v45);
      v46 = OUTLINED_FUNCTION_392();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v46 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v39 = &qword_27CFB9988;
        v40 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      v34 = *(v59 + 24);
      v35 = *(v60 + 48);
      OUTLINED_FUNCTION_233_0();
      OUTLINED_FUNCTION_239_1();
      v36 = OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_81_5(v36, v37);
      if (v38)
      {
        OUTLINED_FUNCTION_39_8(v62 + v35);
        if (v38)
        {
          sub_2219A1CC8(v62, &qword_27CFB9D00, &unk_221BDB1B0);
          goto LABEL_34;
        }
      }

      else
      {
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v62 + v35);
        if (!v49)
        {
          OUTLINED_FUNCTION_256_0();
          sub_221ADFDB4();
          v50 = *(v61 + 20);
          if (*(v58 + v50) == *(v57 + v50) || (v51 = *(v58 + v50), , , OUTLINED_FUNCTION_0_0(), sub_221A75FF0(), OUTLINED_FUNCTION_370(), , (v35 & 1) != 0))
          {
            sub_221BCC8D8();
            OUTLINED_FUNCTION_0_41();
            sub_221ADB35C(v52, v53);
            v54 = OUTLINED_FUNCTION_369();
            sub_221ADFE28();
            sub_221ADFE28();
            sub_2219A1CC8(v62, &qword_27CFB9D00, &unk_221BDB1B0);
            if ((v54 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_34:
            sub_221BCC8D8();
            OUTLINED_FUNCTION_0_41();
            sub_221ADB35C(v55, v56);
            OUTLINED_FUNCTION_70_0();
            v48 = sub_221BCD338();
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_257_0();
          sub_221ADFE28();
          sub_221ADFE28();
          v39 = &qword_27CFB9D00;
          v40 = &unk_221BDB1B0;
LABEL_30:
          v47 = v62;
          goto LABEL_23;
        }

        sub_221ADFE28();
      }

      v39 = &qword_27CFBA710;
      v40 = &unk_221BE0CB0;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v39 = &qword_27CFB9990;
  v40 = &qword_221BDAE28;
LABEL_22:
  v47 = v1;
LABEL_23:
  sub_2219A1CC8(v47, v39, v40);
LABEL_24:
  v48 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v48);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACBB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA778, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACBC34(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACBCFC()
{
  sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);

  return sub_221BCCB48();
}

uint64_t sub_221ACBD7C()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF0110);

  qword_27CFDE388 = v1;
  unk_27CFDE390 = v2;
  return result;
}

uint64_t sub_221ACBE24()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE398);
  __swift_project_value_buffer(v0, qword_27CFDE398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isThrowing";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "requestConfirmation";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACC0D8()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing) = 0;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type) = 0;
  return v0;
}

void sub_221ACC164()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_156();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing) = 0;
  v20 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation) = 0;
  v25 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type) = 0;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_378();
  sub_221A855A4();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v21) = *(v2 + v21);
  OUTLINED_FUNCTION_294_0();
  *(v0 + v19) = v21;
  v22 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v22) = *(v2 + v22);
  OUTLINED_FUNCTION_294_0();
  *(v0 + v20) = v22;
  v23 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  OUTLINED_FUNCTION_106_3();
  v24 = *(v2 + v23);

  OUTLINED_FUNCTION_294_0();
  *(v0 + v25) = v24;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACC3CC()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221ACC488()
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_221ACC718()
{
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221ACC8A0()
{
  result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_Error(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(319);
                if (v8 <= 0x3F)
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
  }

  return result;
}

unint64_t sub_221ACCC28()
{
  result = qword_27CFB9D60;
  if (!qword_27CFB9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D60);
  }

  return result;
}

unint64_t sub_221ACCCB0()
{
  result = qword_27CFB9D78;
  if (!qword_27CFB9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D78);
  }

  return result;
}

unint64_t sub_221ACCD08()
{
  result = qword_27CFB9D80;
  if (!qword_27CFB9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D80);
  }

  return result;
}

uint64_t sub_221ACCD5C()
{
  while (1)
  {
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_221ACCE70();
        break;
      case 2:
        sub_221ACCF4C();
        break;
      case 3:
      case 4:
        sub_221ACD028();
        break;
      case 5:
        sub_221ACD094();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221ACCE70()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ACCF4C()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ACD028()
{
  OUTLINED_FUNCTION_113_5();
  v1 = *v0;
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  sub_221BCC9C8();
  return swift_endAccess();
}

uint64_t sub_221ACD094()
{
  swift_beginAccess();
  sub_221BCCAB8();
  return swift_endAccess();
}

uint64_t sub_221ACD120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_109_2();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_58_6();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221ACD18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221ACD2D0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221ACD4C4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
    swift_beginAccess();
    if (*(a1 + v10) == 1)
    {
      sub_221BCCB88();
    }

    v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    if (*(a1 + v11) == 1)
    {
      sub_221BCCB88();
    }

    v12 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
    swift_beginAccess();
    result = *(a1 + v12);
    if (result)
    {
      return sub_221BCCC08();
    }
  }

  return result;
}

uint64_t sub_221ACD2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
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

uint64_t sub_221ACD4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221ACD6B8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v54 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v50[1] = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  v5 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v50[2] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = v50 - v11;
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v51 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = (v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = v50 - v25;
  swift_beginAccess();
  v27 = v56;
  sub_221A1C558();
  swift_beginAccess();
  v28 = *(v16 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v19, 1, v12) == 1)
  {

    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    v29 = a1;
    if (__swift_getEnumTagSinglePayload(&v19[v28], 1, v12) == 1)
    {
      sub_2219A1CC8(v19, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v19[v28], 1, v12) == 1)
  {

    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v34 = &qword_27CFB9990;
    v35 = &qword_221BDAE28;
    v36 = v19;
LABEL_18:
    sub_2219A1CC8(v36, v34, v35);
    goto LABEL_19;
  }

  v37 = v51;
  sub_221ADFDB4();
  if (*v24 != *v37 || v24[1] != v37[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v36 = v19;
    v34 = &qword_27CFB9988;
    v35 = &qword_221BDAE20;
    goto LABEL_18;
  }

  v38 = *(v12 + 24);
  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8]);

  v39 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  v29 = a1;
  sub_2219A1CC8(v19, &qword_27CFB9988, &qword_221BDAE20);
  if ((v39 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  swift_beginAccess();
  v30 = v53;
  sub_221A1C558();
  swift_beginAccess();
  v31 = *(v52 + 48);
  v32 = v55;
  sub_221A1C558();
  sub_221A1C558();
  v33 = v54;
  if (__swift_getEnumTagSinglePayload(v32, 1, v54) != 1)
  {
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v32 + v31, 1, v33) != 1)
    {
      sub_221ADFDB4();
      v41 = sub_221A7941C();
      sub_221ADFE28();
      sub_2219A1CC8(v30, &unk_27CFBB790, &qword_221BDADD8);
      sub_221ADFE28();
      sub_2219A1CC8(v32, &unk_27CFBB790, &qword_221BDADD8);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    sub_2219A1CC8(v30, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
    goto LABEL_17;
  }

  sub_2219A1CC8(v30, &unk_27CFBB790, &qword_221BDADD8);
  if (__swift_getEnumTagSinglePayload(v32 + v31, 1, v33) != 1)
  {
LABEL_17:
    v34 = &qword_27CFB9978;
    v35 = &qword_221BDAE18;
    v36 = v32;
    goto LABEL_18;
  }

  sub_2219A1CC8(v32, &unk_27CFBB790, &qword_221BDADD8);
LABEL_22:
  v42 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  LODWORD(v42) = *(v29 + v42);
  v43 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  if (v42 == *(v27 + v43))
  {
    v44 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    LODWORD(v44) = *(v29 + v44);
    v45 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    if (v44 == *(v27 + v45))
    {
      v46 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
      swift_beginAccess();
      v47 = *(v29 + v46);

      v48 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
      swift_beginAccess();
      v49 = *(v27 + v48);

      return v47 == v49;
    }
  }

LABEL_19:

  return 0;
}

uint64_t sub_221ACE0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA780, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACE150(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACE218()
{
  sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);

  return sub_221BCCB48();
}

uint64_t sub_221ACE2D8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF0160);
  qword_27CFDE3B0 = 0xD00000000000001FLL;
  *algn_27CFDE3B8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221ACE350()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE3C0);
  __swift_project_value_buffer(v0, qword_27CFDE3C0);
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

uint64_t sub_221ACE518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA798, &qword_221BE0CF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA790, &qword_221BE0CE8);
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
      sub_2219A1CC8(v22, &qword_27CFBA798, &qword_221BE0CF0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA798, &qword_221BE0CF0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA798, &qword_221BE0CF0);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA798, &qword_221BE0CF0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA798, &qword_221BE0CF0);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA790, &qword_221BE0CE8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221ACEA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
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
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA790, &qword_221BE0CE8);
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
  sub_2219A1CC8(v29, &qword_27CFBA790, &qword_221BE0CE8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221ACEF08()
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
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221ACF1F4(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221ACEFE0(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_49_7();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
    OUTLINED_FUNCTION_94_4(Response);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ACEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA790, &qword_221BE0CE8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ACF1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA790, &qword_221BE0CE8);
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

void sub_221ACF408()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(v1);
  v3 = OUTLINED_FUNCTION_60_6(v2);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7A0, &qword_221BE0CF8);
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
      sub_2219A1CC8(v0, &qword_27CFBA790, &qword_221BE0CE8);
LABEL_12:
      Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
      OUTLINED_FUNCTION_259_0(Response);
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
    OUTLINED_FUNCTION_49_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA7A0, &qword_221BE0CF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8DF44();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA790, &qword_221BE0CE8);
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

uint64_t sub_221ACF6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA788, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACF764(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACF82C()
{
  sub_221ADB35C(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);

  return sub_221BCCB48();
}

uint64_t sub_221ACF8AC()
{
  if (qword_27CFB7180 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE3B0;
  v2 = *algn_27CFDE3B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE3D8 = v1;
  unk_27CFDE3E0 = v2;
  return result;
}

uint64_t sub_221ACF950()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE3E8);
  __swift_project_value_buffer(v0, qword_27CFDE3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "firstElementPage";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACFB18()
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

    if (result == 100)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221ACFC30();
    }

    else if (result == 2)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221ACFB7C();
    }
  }

  return result;
}

uint64_t sub_221ACFB7C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0) + 20);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221ACFC30()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0) + 24);
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  sub_221ADB35C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
  return sub_221BCCAD8();
}

uint64_t sub_221ACFCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_109_2();
  v7 = OUTLINED_FUNCTION_34_8();
  result = v8(v7);
  if (!v5)
  {
    v10 = OUTLINED_FUNCTION_34_8();
    a5(v10);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221ACFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0) + 20);
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

uint64_t sub_221ACFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB980, &unk_221BE0A20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
  sub_221BCCC38();
  return sub_221ADFE28();
}