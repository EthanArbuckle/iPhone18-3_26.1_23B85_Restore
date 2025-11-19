uint64_t sub_221A92F9C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A93020(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 57) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A930A8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 58) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A93130(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 59) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A931B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    v3 = *(a1 + 64);
    return sub_221BCCBD8();
  }

  return result;
}

uint64_t sub_221A9323C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 88))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 88);

    sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A932D8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 104))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 104);

    sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A93374(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 112) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A933FC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v3 = *(a1 + 116);
    return sub_221BCCBE8();
  }

  return result;
}

uint64_t sub_221A93480(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 121) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A93508(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = *(a1 + 128);
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A9358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB740, &qword_221BE09F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221A93780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA410, &unk_221BE0A80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v57[0] = v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v57 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v14 != *(a2 + 16))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  swift_beginAccess();
  v19 = *(a2 + 40);
  if (v18)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v17 != *(a2 + 32))
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  swift_beginAccess();
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v20 != *(a2 + 48))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 57);
  swift_beginAccess();
  v24 = *(a2 + 57);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 58);
  swift_beginAccess();
  v26 = *(a2 + 58);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 59);
  swift_beginAccess();
  v28 = *(a2 + 59);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  swift_beginAccess();
  v31 = *(a2 + 72);
  if (v30)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v29 != *(a2 + 64))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 80);
  v33 = *(a1 + 88);
  swift_beginAccess();
  v34 = *(a2 + 88);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    v35 = v32 == *(a2 + 80) && v33 == v34;
    if (!v35 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 96);
  v37 = *(a1 + 104);
  swift_beginAccess();
  v38 = *(a2 + 104);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v39 = v36 == *(a2 + 96) && v37 == v38;
    if (!v39 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 112);
  swift_beginAccess();
  v41 = *(a2 + 112);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 116);
  v43 = *(a1 + 120);
  swift_beginAccess();
  v44 = *(a2 + 120);
  if (v43)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v42 != *(a2 + 116))
    {
      v44 = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 121);
  swift_beginAccess();
  v46 = *(a2 + 121);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 128);
  v48 = *(a1 + 136);
  swift_beginAccess();
  v49 = *(a2 + 136);
  if (v48)
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (v47 != *(a2 + 128))
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v50 = *(v6 + 48);
  v51 = v57[0];
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v51, 1, v4) != 1)
  {
    v52 = v57[0];
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v52 + v50, 1, v4) == 1)
    {
      sub_2219A1CC8(v13, &unk_27CFBB740, &qword_221BE09F8);
      sub_221ADFE28();
      goto LABEL_85;
    }

    v54 = v57[0];
    sub_221ADFDB4();
    sub_221A814A4();
    v56 = v55;
    sub_221ADFE28();
    sub_2219A1CC8(v13, &unk_27CFBB740, &qword_221BE09F8);
    sub_221ADFE28();
    sub_2219A1CC8(v54, &unk_27CFBB740, &qword_221BE09F8);
    return (v56 & 1) != 0;
  }

  sub_2219A1CC8(v13, &unk_27CFBB740, &qword_221BE09F8);
  if (__swift_getEnumTagSinglePayload(v57[0] + v50, 1, v4) != 1)
  {
LABEL_85:
    sub_2219A1CC8(v57[0], &qword_27CFBA410, &unk_221BE0A80);
    return 0;
  }

  sub_2219A1CC8(v57[0], &unk_27CFBB740, &qword_221BE09F8);
  return 1;
}

uint64_t sub_221A94070(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA418, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A94110(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A941D8()
{
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);

  return sub_221BCCB48();
}

uint64_t sub_221A94298()
{
  if (qword_27CFB6E68 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDC60;
  v2 = *algn_27CFDDC68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x436D65747379532ELL, 0xEE00747865746E6FLL);

  qword_27CFDDCB0 = v1;
  *algn_27CFDDCB8 = v2;
  return result;
}

uint64_t sub_221A94360()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AAEA90();
    }
  }

  return result;
}

uint64_t sub_221A943C0()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A94410()
{
  v0 = OUTLINED_FUNCTION_88_5();
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v0);
  OUTLINED_FUNCTION_214_0(v1);
  if (v4)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_61_3(v3);
      v7 = v7 && v5 == v6;
      if (v7 || (sub_221BCE1B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v2)
  {
LABEL_8:
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v8, v9);
    return OUTLINED_FUNCTION_135_3() & 1;
  }

  return 0;
}

uint64_t sub_221A94500(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA420, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A945A0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A94668()
{
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);

  return sub_221BCCB48();
}

uint64_t sub_221A946E8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BEF9F0);
  qword_27CFDDCD8 = 0xD000000000000021;
  unk_27CFDDCE0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9475C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDCE8);
  __swift_project_value_buffer(v0, qword_27CFDDCE8);
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
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedIndex";
  *(v12 + 1) = 13;
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

void sub_221A9499C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A94A5C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A94B10(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_251_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A96B64();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A95008(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A94A5C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A94B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v12, &unk_27CFBB880, &unk_221BE4FA0);
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
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
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
  sub_2219A1CC8(v29, &unk_27CFBB880, &unk_221BE4FA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A95008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
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
    sub_2219A1CC8(v12, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB880, &unk_221BE4FA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221A95500()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_99_3();
  v5 = OUTLINED_FUNCTION_28_6();
  sub_221A95644(v5, v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v9);
    if (!v10)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_251_1();
          OUTLINED_FUNCTION_28_6();
          sub_221A971D0();
          goto LABEL_4;
        }

        v17 = OUTLINED_FUNCTION_28_6();
        sub_221A95A34(v17, v18, v19, v20);
      }

      else
      {
        v13 = OUTLINED_FUNCTION_28_6();
        sub_221A95824(v13, v14, v15, v16);
      }

      OUTLINED_FUNCTION_78_0();
      sub_221ADFE28();
    }

LABEL_4:
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
    OUTLINED_FUNCTION_219_2(v11);
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A95644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0) + 24);
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

uint64_t sub_221A95824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
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

uint64_t sub_221A95A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221A95C48()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_107_5(v14, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA430, &qword_221BE0A98);
  OUTLINED_FUNCTION_2_1(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v52);
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_13();
  v24 = OUTLINED_FUNCTION_131_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(v34);
  OUTLINED_FUNCTION_105_4(v35);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v39 || (OUTLINED_FUNCTION_179_1(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v40, v41);
      v42 = OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v42 & 1) == 0)
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
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v36)
        {
          sub_2219A1CC8(v1, &unk_27CFBB880, &unk_221BE4FA0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v45)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A8819C();
          v47 = v46;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &unk_27CFBB880, &unk_221BE4FA0);
          if ((v47 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          v44 = OUTLINED_FUNCTION_216_1();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_78_0();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA430;
      v38 = &qword_221BE0A98;
      v43 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v43 = v3;
LABEL_23:
  sub_2219A1CC8(v43, v37, v38);
LABEL_24:
  v44 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A960B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA428, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A96154(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9621C()
{
  sub_221ADB35C(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A9629C()
{
  result = MEMORY[0x223DA31F0](0x526563696F68432ELL, 0xEF65736E6F707365);
  qword_27CFDDD00 = 0xD000000000000021;
  *algn_27CFDDD08 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A96314()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD10);
  __swift_project_value_buffer(v0, qword_27CFDDD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
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
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedIndex";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221A9651C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_249_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A96B64();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A9666C(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A965B8();
        break;
    }
  }
}

uint64_t sub_221A965B8()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A9666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v12, &qword_27CFBA448, &qword_221BE0AA8);
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
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
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
  sub_2219A1CC8(v29, &qword_27CFBA448, &qword_221BE0AA8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221A96B64()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_69_1();
  v5 = OUTLINED_FUNCTION_296_0(v0, v1, v2, v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_344();
  sub_221BCCA28();
  OUTLINED_FUNCTION_53_5();
}

void sub_221A96CA8()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_99_3();
  v5 = OUTLINED_FUNCTION_28_6();
  sub_221A96DDC(v5, v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v9);
    if (!v10)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_249_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A971D0();
      }

      else
      {
        v13 = OUTLINED_FUNCTION_28_6();
        sub_221A96FBC(v13, v14, v15, v16);
        OUTLINED_FUNCTION_77_5();
        sub_221ADFE28();
      }
    }

    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
    OUTLINED_FUNCTION_219_2(v11);
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A96DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0) + 24);
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

uint64_t sub_221A96FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA448, &qword_221BE0AA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A971D0()
{
  OUTLINED_FUNCTION_55_4();
  v10 = OUTLINED_FUNCTION_274_0(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_129_4();
  sub_221A1C558();
  v14 = v1(0);
  v15 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    OUTLINED_FUNCTION_344();
    sub_2219A1CC8(v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v0;
      OUTLINED_FUNCTION_339();
      sub_221BCCBB8();
      OUTLINED_FUNCTION_53_5();
      return;
    }

    sub_221ADFE28();
  }

  __break(1u);
}

void sub_221A97294()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_107_5(v14, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA450, &qword_221BE0AB0);
  OUTLINED_FUNCTION_2_1(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v52);
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_13();
  v24 = OUTLINED_FUNCTION_131_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(v34);
  OUTLINED_FUNCTION_105_4(v35);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v39 || (OUTLINED_FUNCTION_179_1(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v40, v41);
      v42 = OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v42 & 1) == 0)
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
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v36)
        {
          sub_2219A1CC8(v1, &qword_27CFBA448, &qword_221BE0AA8);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v45)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88564();
          v47 = v46;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA448, &qword_221BE0AA8);
          if ((v47 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          v44 = OUTLINED_FUNCTION_216_1();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_77_5();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA450;
      v38 = &qword_221BE0AB0;
      v43 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v43 = v3;
LABEL_23:
  sub_2219A1CC8(v43, v37, v38);
LABEL_24:
  v44 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A97700(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA440, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A977A0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A97868()
{
  sub_221ADB35C(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A978E8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000013, 0x8000000221BEFA30);
  qword_27CFDDD28 = 0xD000000000000021;
  unk_27CFDDD30 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9795C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD38);
  __swift_project_value_buffer(v0, qword_27CFDDD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
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
  *v10 = "error";
  *(v10 + 1) = 5;
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

uint64_t sub_221A97B60()
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
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A98188(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A97C90(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A97BDC();
        break;
    }
  }

  return result;
}

uint64_t sub_221A97BDC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A97C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v12, &qword_27CFBA468, &qword_221BE0AC0);
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
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
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
  sub_2219A1CC8(v29, &qword_27CFBA468, &qword_221BE0AC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A98188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
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
    sub_2219A1CC8(v12, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &unk_27CFBB660, &qword_221BE4610);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA468, &qword_221BE0AC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221A98680()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_99_3();
  v5 = OUTLINED_FUNCTION_28_6();
  sub_221A98780(v5, v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v9);
    if (!v10)
    {
      OUTLINED_FUNCTION_120();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = OUTLINED_FUNCTION_28_6();
        sub_221A98B74(v11, v12, v13, v14);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_28_6();
        sub_221A98960(v15, v16, v17, v18);
      }

      OUTLINED_FUNCTION_76_2();
      sub_221ADFE28();
    }

    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
    OUTLINED_FUNCTION_219_2(v19);
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A98780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
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

uint64_t sub_221A98960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

uint64_t sub_221A98B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221A98D88()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_107_5(v14, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA470, &qword_221BE0AC8);
  OUTLINED_FUNCTION_2_1(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v52);
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_13();
  v24 = OUTLINED_FUNCTION_131_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(v34);
  OUTLINED_FUNCTION_105_4(v35);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v39 || (OUTLINED_FUNCTION_179_1(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v40, v41);
      v42 = OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v42 & 1) == 0)
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
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v36)
        {
          sub_2219A1CC8(v1, &qword_27CFBA468, &qword_221BE0AC0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v45)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88860();
          v47 = v46;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA468, &qword_221BE0AC0);
          if ((v47 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          v44 = OUTLINED_FUNCTION_216_1();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_76_2();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA470;
      v38 = &qword_221BE0AC8;
      v43 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v43 = v3;
LABEL_23:
  sub_2219A1CC8(v43, v37, v38);
LABEL_24:
  v44 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A991F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA460, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A99294(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9935C()
{
  sub_221ADB35C(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A993DC()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BEFA50);
  qword_27CFDDD50 = 0xD000000000000021;
  *algn_27CFDDD58 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A99450()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD60);
  __swift_project_value_buffer(v0, qword_27CFDDD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
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
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confirmed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221A99658()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_245_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A9B0E0();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A997A8(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A996F4();
        break;
    }
  }
}

uint64_t sub_221A996F4()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A997A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v12, &qword_27CFBA488, &qword_221BE0AD8);
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
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
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
  sub_2219A1CC8(v29, &qword_27CFBA488, &qword_221BE0AD8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221A99CA0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_99_3();
  v5 = OUTLINED_FUNCTION_28_6();
  sub_221A99DD4(v5, v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v9);
    if (!v10)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_245_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A9B758();
      }

      else
      {
        v13 = OUTLINED_FUNCTION_28_6();
        sub_221A99FB4(v13, v14, v15, v16);
        OUTLINED_FUNCTION_45_8();
        sub_221ADFE28();
      }
    }

    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
    OUTLINED_FUNCTION_219_2(v11);
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A99DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0) + 24);
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

uint64_t sub_221A99FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA488, &qword_221BE0AD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A9A1C8()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_107_5(v14, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA490, &qword_221BE0AE0);
  OUTLINED_FUNCTION_2_1(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v52);
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_13();
  v24 = OUTLINED_FUNCTION_131_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v34);
  OUTLINED_FUNCTION_105_4(v35);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v39 || (OUTLINED_FUNCTION_179_1(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v40, v41);
      v42 = OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v42 & 1) == 0)
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
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v36)
        {
          sub_2219A1CC8(v1, &qword_27CFBA488, &qword_221BE0AD8);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v45)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88BA8();
          v47 = v46;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA488, &qword_221BE0AD8);
          if ((v47 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          v44 = OUTLINED_FUNCTION_216_1();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_45_8();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA490;
      v38 = &qword_221BE0AE0;
      v43 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v43 = v3;
LABEL_23:
  sub_2219A1CC8(v43, v37, v38);
LABEL_24:
  v44 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A9A634(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA480, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9A6D4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9A79C()
{
  sub_221ADB35C(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A9A81C()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFA70);
  qword_27CFDDD78 = 0xD000000000000021;
  unk_27CFDDD80 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9A890()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD88);
  __swift_project_value_buffer(v0, qword_27CFDDD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
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
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "success";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221A9AA98()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_244_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A9B0E0();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A9ABE8(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A9AB34();
        break;
    }
  }
}

uint64_t sub_221A9AB34()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0) + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A9ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v12, &unk_27CFBB890, &qword_221BE0AF0);
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
      sub_2219A1CC8(v22, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
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
  sub_2219A1CC8(v29, &unk_27CFBB890, &qword_221BE0AF0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221A9B0E0()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_69_1();
  v5 = OUTLINED_FUNCTION_296_0(v0, v1, v2, v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_344();
  sub_221BCC9B8();
  OUTLINED_FUNCTION_53_5();
}

void sub_221A9B230()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_99_3();
  v5 = OUTLINED_FUNCTION_28_6();
  sub_221A9B364(v5, v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v9);
    if (!v10)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_244_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A9B758();
      }

      else
      {
        v13 = OUTLINED_FUNCTION_28_6();
        sub_221A9B544(v13, v14, v15, v16);
        OUTLINED_FUNCTION_54_6();
        sub_221ADFE28();
      }
    }

    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
    OUTLINED_FUNCTION_219_2(v11);
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A9B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0) + 24);
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

uint64_t sub_221A9B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB890, &qword_221BE0AF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A9B758()
{
  OUTLINED_FUNCTION_55_4();
  v10 = OUTLINED_FUNCTION_274_0(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_129_4();
  sub_221A1C558();
  v14 = v1(0);
  v15 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    OUTLINED_FUNCTION_344();
    sub_2219A1CC8(v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v0;
      OUTLINED_FUNCTION_339();
      sub_221BCCB88();
      OUTLINED_FUNCTION_53_5();
      return;
    }

    sub_221ADFE28();
  }

  __break(1u);
}

void sub_221A9B81C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v9, v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_107_5(v14, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4A8, &qword_221BE0AF8);
  OUTLINED_FUNCTION_2_1(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_41_4(v18, v52);
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(v19);
  v21 = OUTLINED_FUNCTION_43_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_13();
  v24 = OUTLINED_FUNCTION_131_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_96_5();
  v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(v34);
  OUTLINED_FUNCTION_105_4(v35);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v36)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v39 || (OUTLINED_FUNCTION_179_1(), !v36))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v40, v41);
      v42 = OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v42 & 1) == 0)
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
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v36)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v36)
        {
          sub_2219A1CC8(v1, &unk_27CFBB890, &qword_221BE0AF0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v45)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88E1C();
          v47 = v46;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &unk_27CFBB890, &qword_221BE0AF0);
          if ((v47 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v48, v49);
          v44 = OUTLINED_FUNCTION_216_1();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_54_6();
        sub_221ADFE28();
      }

      v37 = &qword_27CFBA4A8;
      v38 = &qword_221BE0AF8;
      v43 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v37 = &qword_27CFB9990;
  v38 = &qword_221BDAE28;
LABEL_22:
  v43 = v3;
LABEL_23:
  sub_2219A1CC8(v43, v37, v38);
LABEL_24:
  v44 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A9BC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9BD28(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9BDF0()
{
  sub_221ADB35C(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A9BE70()
{
  result = MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BEFA90);
  qword_27CFDDDA0 = 0xD000000000000021;
  *algn_27CFDDDA8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9BEFC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse(0) + 20);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

uint64_t sub_221A9BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse(0) + 20);
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

uint64_t sub_221A9C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4B8, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9C2F0(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA2D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9C3B8()
{
  sub_221ADB35C(&qword_27CFBA2D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse);

  return sub_221BCCB48();
}

uint64_t sub_221A9C464()
{
  result = MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEFAB0);
  qword_27CFDDDC8 = 0xD000000000000021;
  unk_27CFDDDD0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9C4D8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDDD8);
  __swift_project_value_buffer(v0, qword_27CFDDDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "byIdentifiers";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "byString";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "byProperties";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "allEntities";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedEntities";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "uniqueEntity";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "byIntentValue";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "options";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "requestMetadata";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A9C854()
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
      case 1:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A9C944(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_40_7();
        sub_221A9CE3C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221A9D334(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_40_7();
        sub_221A9D82C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A9DD24(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_40_7();
        sub_221A9E21C(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_40_7();
        sub_221A9E714(v27, v28, v29, v30);
        break;
      case 10:
        OUTLINED_FUNCTION_5_17();
        sub_221A9EC0C();
        break;
      case 12:
        OUTLINED_FUNCTION_5_17();
        sub_221A9ECC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A9C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4D0, &qword_221BE0B18);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
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
      sub_2219A1CC8(v22, &qword_27CFBA4D0, &qword_221BE0B18);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4D0, &qword_221BE0B18);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4D0, &qword_221BE0B18);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4D0, &qword_221BE0B18);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4D0, &qword_221BE0B18);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4D8, &qword_221BE0B20);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBA4D8, &qword_221BE0B20);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4D8, &qword_221BE0B20);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4D8, &qword_221BE0B20);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4D8, &qword_221BE0B20);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4D8, &qword_221BE0B20);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4E0, &qword_221BE0B28);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v22, &qword_27CFBA4E0, &qword_221BE0B28);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4E0, &qword_221BE0B28);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4E0, &qword_221BE0B28);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4E0, &qword_221BE0B28);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4E0, &qword_221BE0B28);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4E8, &qword_221BE0B30);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2219A1CC8(v22, &qword_27CFBA4E8, &qword_221BE0B30);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4E8, &qword_221BE0B30);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4E8, &qword_221BE0B30);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4E8, &qword_221BE0B30);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4E8, &qword_221BE0B30);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4F0, &qword_221BE0B38);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2219A1CC8(v22, &qword_27CFBA4F0, &qword_221BE0B38);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4F0, &qword_221BE0B38);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4F0, &qword_221BE0B38);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4F0, &qword_221BE0B38);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4F0, &qword_221BE0B38);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4F8, &qword_221BE0B40);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2219A1CC8(v22, &qword_27CFBA4F8, &qword_221BE0B40);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA4F8, &qword_221BE0B40);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA4F8, &qword_221BE0B40);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA4F8, &qword_221BE0B40);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA4F8, &qword_221BE0B40);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA500, &qword_221BE0B48);
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
    sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2219A1CC8(v22, &qword_27CFBA500, &qword_221BE0B48);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA500, &qword_221BE0B48);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA500, &qword_221BE0B48);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA500, &qword_221BE0B48);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA500, &qword_221BE0B48);
  v27 = v29;
  sub_2219A1CC8(v29, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221A9EC0C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);
  return sub_221BCCAD8();
}

uint64_t sub_221A9ECC0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0) + 28);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

void sub_221A9ED74()
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
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_31_8(v7);
  if (v8)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_120();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = OUTLINED_FUNCTION_15_11();
      sub_221A9F0D4(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = OUTLINED_FUNCTION_15_11();
      sub_221A9F2E8(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = OUTLINED_FUNCTION_15_11();
      sub_221A9F4FC(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = OUTLINED_FUNCTION_15_11();
      sub_221A9F710(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = OUTLINED_FUNCTION_15_11();
      sub_221A9F924(v29, v30, v31, v32);
      break;
    case 6u:
      v33 = OUTLINED_FUNCTION_15_11();
      sub_221A9FB38(v33, v34, v35, v36);
      break;
    default:
      v9 = OUTLINED_FUNCTION_15_11();
      sub_221A9EEC4(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_128_2();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_11:
    v37 = OUTLINED_FUNCTION_15_11();
    sub_221A9FD4C(v37, v38, v39, v40);
    if (!v0)
    {
      v41 = OUTLINED_FUNCTION_15_11();
      sub_221A9FF2C(v41, v42, v43, v44);
      Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
      OUTLINED_FUNCTION_94_4(Request);
    }
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221A9EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB8A0, &qword_221BE0B10);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A9FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0) + 28);
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

void sub_221AA010C()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_40_3();
  v62 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  v3 = OUTLINED_FUNCTION_2_1(v62);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v61);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_89_5(v13, v59);
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  v15 = OUTLINED_FUNCTION_67_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_107_5(v22, v60);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA508, &qword_221BE0B50);
  OUTLINED_FUNCTION_2_1(v64);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_116_5();
  v26 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  v27 = OUTLINED_FUNCTION_2_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  OUTLINED_FUNCTION_8_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_157();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA510, &qword_221BE0B58);
  OUTLINED_FUNCTION_8_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_97_3();
  v39 = *(v38 + 56);
  OUTLINED_FUNCTION_54_5();
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v0, 1, v26);
  if (v40)
  {
    OUTLINED_FUNCTION_49_4(v0 + v39, 1, v26);
    if (v40)
    {
      sub_2219A1CC8(v0, &qword_27CFBA4C8, &qword_221BE0B08);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_27CFBA510;
    v42 = &qword_221BE0B58;
    v43 = v0;
LABEL_30:
    sub_2219A1CC8(v43, v41, v42);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_27();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v0 + v39, 1, v26);
  if (v40)
  {
    OUTLINED_FUNCTION_128_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_39_4();
  sub_221A892F0();
  v45 = v44;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA4C8, &qword_221BE0B08);
  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v47 = *(Request + 24);
  v48 = *(v64 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_66_3(v1);
  if (v40)
  {
    OUTLINED_FUNCTION_39_8(v1 + v48);
    if (v40)
    {
      sub_2219A1CC8(v1, &unk_27CFBB8A0, &qword_221BE0B10);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v1 + v48);
  if (v49)
  {
    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_19:
    v41 = &qword_27CFBA508;
    v42 = &qword_221BE0B50;
    v43 = v1;
    goto LABEL_30;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  v50 = sub_221AAEC84();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &unk_27CFBB8A0, &qword_221BE0B10);
  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v51 = *(Request + 28);
  v52 = *(v61 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v53 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v53, v54);
  if (v40)
  {
    OUTLINED_FUNCTION_39_8(v63 + v52);
    if (v40)
    {
      sub_2219A1CC8(v63, &unk_27CFBB600, &qword_221BE44B0);
LABEL_34:
      OUTLINED_FUNCTION_398();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v57, v58);
      v56 = OUTLINED_FUNCTION_313();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v63 + v52);
  if (v55)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_29:
    v41 = &qword_27CFBA3F0;
    v42 = &qword_221BE0A60;
    v43 = v63;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_24();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_300();
  sub_2219A1CC8(v63, &unk_27CFBB600, &qword_221BE44B0);
  if (v62)
  {
    goto LABEL_34;
  }

LABEL_31:
  v56 = 0;
LABEL_32:
  OUTLINED_FUNCTION_100_3(v56);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA07A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA0840(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA0908()
{
  sub_221ADB35C(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);

  return sub_221BCCB48();
}

uint64_t sub_221AA0988()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x69746E456C6C412ELL, 0xEC00000073656974);

  qword_27CFDDDF0 = v1;
  *algn_27CFDDDF8 = v2;
  return result;
}

uint64_t sub_221AA0A34()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDE00);
  __swift_project_value_buffer(v0, qword_27CFDDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA0C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA570, &qword_221BE0BD8);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA570, &qword_221BE0BD8);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AA0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA570, &qword_221BE0BD8);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &qword_27CFBA570, &qword_221BE0BD8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AA132C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA570, &qword_221BE0BD8);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA570, &qword_221BE0BD8);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

void sub_221AA14E0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_42_8();
  if (!v6 || (OUTLINED_FUNCTION_103_5(), !v1))
  {
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
    OUTLINED_FUNCTION_302(v7);
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    OUTLINED_FUNCTION_140_2(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_3_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v12 = OUTLINED_FUNCTION_3_21();
          sub_221AA1768(v12, v13, v14, v15);
          OUTLINED_FUNCTION_27_9();
          sub_221ADFE28();
          if (v1)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_27_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AA1988();
      }

      else
      {
        OUTLINED_FUNCTION_27_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AA160C();
      }

      if (v1)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    v10 = *(v0 + 24);
    OUTLINED_FUNCTION_30_7();
  }

LABEL_13:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA160C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA570, &qword_221BE0BD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA570, &qword_221BE0BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA1988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA570, &qword_221BE0BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AA1AE8()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(v2);
  v4 = OUTLINED_FUNCTION_60_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA578, &qword_221BE0BE0);
  OUTLINED_FUNCTION_57_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_63_6();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  OUTLINED_FUNCTION_328(v18);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v17)
    {
      sub_2219A1CC8(v0, &qword_27CFBA570, &qword_221BE0BD8);
LABEL_17:
      OUTLINED_FUNCTION_315();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v23, v24);
      v20 = OUTLINED_FUNCTION_36_8();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_27_9();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA578, &qword_221BE0BE0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A89A18();
  v22 = v21;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA570, &qword_221BE0BD8);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v20);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA1DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5C8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA1E9C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA1F64()
{
  sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);

  return sub_221BCCB48();
}

uint64_t sub_221AA1FE4()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x746E65644979422ELL, 0xEE00737265696669);

  qword_27CFDDE18 = v1;
  unk_27CFDDE20 = v2;
  return result;
}

void sub_221AA20AC()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221AA215C();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_5_17();
        sub_221AA2700();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221AA21FC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA215C()
{
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  return sub_221BCCAC8();
}

uint64_t sub_221AA21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0) + 24);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB8D0, &unk_221BE4FC0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &unk_27CFBB8D0, &unk_221BE4FC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

void sub_221AA2700()
{
  OUTLINED_FUNCTION_55_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_102_3();
  sub_221BCCA88();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AA2890()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_42_8();
  if (!v6 || (OUTLINED_FUNCTION_103_5(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0), sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v0))
    {
      v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
      v8 = *(v7 + 24);
      OUTLINED_FUNCTION_371();
      v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
      OUTLINED_FUNCTION_140_2(v9);
      if (!v10)
      {
        OUTLINED_FUNCTION_3_4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v13 = OUTLINED_FUNCTION_3_21();
            sub_221AA2B84(v13, v14, v15, v16);
            OUTLINED_FUNCTION_26_8();
            sub_221ADFE28();
            if (v0)
            {
              goto LABEL_15;
            }

            goto LABEL_7;
          }

          OUTLINED_FUNCTION_26_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA2DA4();
        }

        else
        {
          OUTLINED_FUNCTION_26_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA2A28();
        }

        if (v0)
        {
          goto LABEL_15;
        }
      }

LABEL_7:
      v11 = *(v7 + 28);
      OUTLINED_FUNCTION_30_7();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA2A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0) + 24);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB8D0, &unk_221BE4FC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0) + 24);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB8D0, &unk_221BE4FC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA2DA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0) + 24);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB8D0, &unk_221BE4FC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AA2F04()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_88_5();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(v4);
  v6 = OUTLINED_FUNCTION_60_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_97_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA520, &qword_221BE0B70);
  OUTLINED_FUNCTION_57_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_63_6();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = *(v1 + 16);
  v21 = *(v0 + 16);
  sub_221A17320();
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  OUTLINED_FUNCTION_329(v23);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_53_7(v2 + v3);
    if (v19)
    {
      sub_2219A1CC8(v2, &unk_27CFBB8D0, &unk_221BE4FC0);
LABEL_19:
      v28 = *(v31 + 28);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v29, v30);
      v25 = OUTLINED_FUNCTION_36_8();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2 + v3);
  if (v24)
  {
    OUTLINED_FUNCTION_26_8();
    sub_221ADFE28();
LABEL_15:
    sub_2219A1CC8(v2, &qword_27CFBA520, &qword_221BE0B70);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A89CD0();
  v27 = v26;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v2, &unk_27CFBB8D0, &unk_221BE4FC0);
  if (v27)
  {
    goto LABEL_19;
  }

LABEL_16:
  v25 = 0;
LABEL_17:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA31BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA325C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA3324()
{
  sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);

  return sub_221BCCB48();
}

uint64_t sub_221AA33A4()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E65746E4979422ELL, 0xEE0065756C615674);

  qword_27CFDDE40 = v1;
  *algn_27CFDDE48 = v2;
  return result;
}

uint64_t sub_221AA346C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221BCCC78();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_70();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_221BD8680;
  v12 = v11 + v10;
  v13 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v13 = "bundleIdentifier";
  *(v13 + 8) = 16;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_221BCCC48();
  OUTLINED_FUNCTION_2_1(v15);
  v17 = *(v16 + 104);
  v17(v13, v14, v15);
  v18 = OUTLINED_FUNCTION_384(v12 + v9);
  *v19 = 2;
  *v18 = a3;
  v18[1] = a4;
  v20 = OUTLINED_FUNCTION_332(v18);
  (v17)(v20);
  v21 = OUTLINED_FUNCTION_384(v12 + 2 * v9);
  *v22 = 3;
  *v21 = "entityType";
  v21[1] = 10;
  v23 = OUTLINED_FUNCTION_332(v21);
  (v17)(v23);
  v24 = OUTLINED_FUNCTION_384(v12 + 3 * v9);
  *v25 = 4;
  *v24 = "parameter";
  v24[1] = 9;
  v26 = OUTLINED_FUNCTION_332(v24);
  (v17)(v26);
  v27 = OUTLINED_FUNCTION_384(v12 + 4 * v9);
  *v28 = 5;
  *v27 = "queryType";
  *(v27 + 8) = 9;
  *(v27 + 16) = 2;
  (v17)();
  return sub_221BCCC58();
}

uint64_t sub_221AA36B0()
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
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221AA3760();
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_5_17();
        sub_221AA3814(v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221AA39C8(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AA3ECC(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA3760()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 28);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221AA3814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA5B0, &qword_221BE0C20);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA5B0, &qword_221BE0C20);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AA39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA5B0, &qword_221BE0C20);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &qword_27CFBA5B0, &qword_221BE0C20);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AA3ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA5B0, &qword_221BE0C20);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA5B0, &qword_221BE0C20);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

void sub_221AA4080()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_42_8();
  if (!v6 || (OUTLINED_FUNCTION_103_5(), !v1))
  {
    v7 = OUTLINED_FUNCTION_3_21();
    sub_221AA41BC(v7, v8, v9, v10);
    if (!v1)
    {
      v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
      OUTLINED_FUNCTION_302(v11);
      OUTLINED_FUNCTION_371();
      v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
      OUTLINED_FUNCTION_140_2(v12);
      if (!v13)
      {
        OUTLINED_FUNCTION_3_4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v16 = OUTLINED_FUNCTION_3_21();
            sub_221AA44F8(v16, v17, v18, v19);
            OUTLINED_FUNCTION_25_9();
            sub_221ADFE28();
          }

          else
          {
            OUTLINED_FUNCTION_25_9();
            sub_221ADFE28();
            OUTLINED_FUNCTION_3_21();
            sub_221AA4718();
          }
        }

        else
        {
          OUTLINED_FUNCTION_25_9();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA439C();
        }
      }

      v14 = *(v0 + 24);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA41BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 28);
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

uint64_t sub_221AA439C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA5B0, &qword_221BE0C20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA44F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA5B0, &qword_221BE0C20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA4718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA5B0, &qword_221BE0C20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AA4878()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_52_6();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(v5);
  v7 = OUTLINED_FUNCTION_58_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B8, &qword_221BE0C28);
  OUTLINED_FUNCTION_2_1(v58);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99_3();
  v17 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v18 = OUTLINED_FUNCTION_43_8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v23 = (v22 - v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_157();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_57_6(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_102_3();
  v32 = *v0;
  v33 = v0[1];
  OUTLINED_FUNCTION_102_2();
  v36 = v36 && v34 == v35;
  if (!v36 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  v57 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v37 = v57[7];
  v38 = *(v3 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v4);
  if (!v36)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v4 + v38);
    if (!v43)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v1, v1[1], *v23, v23[1]))
      {
        v48 = OUTLINED_FUNCTION_396();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v49, v50);
        sub_221BCD338();
        OUTLINED_FUNCTION_20_9();
        sub_221ADFE28();
        sub_221ADFE28();
        sub_2219A1CC8(v4, &unk_27CFBB660, &qword_221BE4610);
        if ((v48 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_79_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_298();
      sub_221ADFE28();
      v44 = &unk_27CFBB660;
      v45 = &qword_221BE4610;
LABEL_20:
      v46 = v4;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_19:
    v44 = &qword_27CFB85E0;
    v45 = &unk_221BD3E40;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_20_8(v4 + v38);
  if (!v36)
  {
    goto LABEL_19;
  }

  sub_2219A1CC8(v4, &unk_27CFBB660, &qword_221BE4610);
LABEL_11:
  v39 = v57[5];
  v40 = *(v58 + 48);
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_393();
  v41 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v41, v42, v59);
  if (v36)
  {
    OUTLINED_FUNCTION_20_8(v2 + v40);
    if (v36)
    {
      sub_2219A1CC8(v2, &qword_27CFBA5B0, &qword_221BE0C20);
      goto LABEL_33;
    }
  }

  else
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v2 + v40);
    if (!v51)
    {
      OUTLINED_FUNCTION_381();
      sub_221ADFDB4();
      sub_221A89F88();
      v53 = v52;
      sub_221ADFE28();
      sub_221ADFE28();
      sub_2219A1CC8(v2, &qword_27CFBA5B0, &qword_221BE0C20);
      if ((v53 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_33:
      v54 = v57[6];
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v55, v56);
      v47 = OUTLINED_FUNCTION_118_3();
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_25_9();
    sub_221ADFE28();
  }

  v44 = &qword_27CFBA5B8;
  v45 = &qword_221BE0C28;
  v46 = v2;
LABEL_21:
  sub_2219A1CC8(v46, v44, v45);
LABEL_22:
  v47 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v47);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA4D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5D8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA4E28(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA4EF0()
{
  sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);

  return sub_221BCCB48();
}

uint64_t sub_221AA4F70()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x65706F725079422ELL, 0xED00007365697472);

  qword_27CFDDE68 = v1;
  unk_27CFDDE70 = v2;
  return result;
}

uint64_t sub_221AA5020()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDE78);
  __swift_project_value_buffer(v0, qword_27CFDDE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD2690;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "propertyQuery";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "maximumResultCount";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "sortingOptions";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA5320()
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
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_5_17();
        sub_221AA53F0(v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221AA55A4(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AA5AA8(v7, v8);
        break;
      case 10:
        OUTLINED_FUNCTION_5_17();
        sub_221AA5C5C();
        break;
      case 11:
        OUTLINED_FUNCTION_5_17();
        sub_221AA5D10();
        break;
      case 12:
        OUTLINED_FUNCTION_5_17();
        sub_221AA5D74();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA53F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA548, &qword_221BE0BA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA548, &qword_221BE0BA0);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AA55A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &qword_27CFBA548, &qword_221BE0BA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AA5AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA548, &qword_221BE0BA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA548, &qword_221BE0BA0);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AA5C5C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
  return sub_221BCCAD8();
}

uint64_t sub_221AA5D74()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 24);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
  return sub_221BCCAC8();
}

void sub_221AA5E28()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_42_8();
  if (v6)
  {
    OUTLINED_FUNCTION_103_5();
    if (v0)
    {
      goto LABEL_15;
    }
  }

  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v8 = v7[5];
  sub_221A1C558();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = OUTLINED_FUNCTION_3_21();
        sub_221AA615C(v19, v20, v21, v22);
        OUTLINED_FUNCTION_24_9();
        sub_221ADFE28();
        if (v0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AA637C();
    }

    else
    {
      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AA6000();
    }

    if (v0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v12 = OUTLINED_FUNCTION_3_21();
  sub_221AA64DC(v12, v13, v14, v15);
  if (!v0)
  {
    v16 = OUTLINED_FUNCTION_3_21();
    sub_221AA66BC(v16);
    if (*(*(v1 + v7[6]) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
      sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    v17 = v7[7];
    OUTLINED_FUNCTION_30_7();
  }

LABEL_15:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA6000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA637C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA64DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3D0, &qword_221BE0A18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA3D0, &qword_221BE0A18);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AA66BC(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_221BCCBB8();
  }

  return result;
}

void sub_221AA6734()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_88_5();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(v5);
  v7 = OUTLINED_FUNCTION_58_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3D0, &qword_221BE0A18);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_104_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA540, &qword_221BE0B98);
  OUTLINED_FUNCTION_57_6(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_29_8();
  v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(v18);
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  OUTLINED_FUNCTION_8_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA550, &qword_221BE0BA8);
  OUTLINED_FUNCTION_2_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_102_3();
  v31 = *v1;
  v32 = v1[1];
  OUTLINED_FUNCTION_102_2();
  v35 = v35 && v33 == v34;
  if (!v35 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_26;
  }

  v68 = v3;
  v36 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v37 = *(v36 + 20);
  v38 = v1;
  v39 = *(v27 + 48);
  v69 = v36;
  v70 = v38;
  OUTLINED_FUNCTION_277_0();
  sub_221A1C558();
  v40 = v0;
  OUTLINED_FUNCTION_277_0();
  sub_221A1C558();
  v41 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v41, v42, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_49_4(v4 + v39, 1, v19);
    if (v35)
    {
      sub_2219A1CC8(v4, &qword_27CFBA548, &qword_221BE0BA0);
      goto LABEL_16;
    }

LABEL_14:
    v44 = &qword_27CFBA550;
    v45 = &qword_221BE0BA8;
    v46 = v4;
LABEL_25:
    sub_2219A1CC8(v46, v44, v45);
    goto LABEL_26;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v4 + v39, 1, v19);
  if (v43)
  {
    OUTLINED_FUNCTION_24_9();
    sub_221ADFE28();
    goto LABEL_14;
  }

  sub_221ADFDB4();
  sub_221A8A32C();
  v48 = v47;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v4, &qword_27CFBA548, &qword_221BE0BA0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v49 = v69[8];
  v50 = *(v68 + 48);
  OUTLINED_FUNCTION_269_0();
  sub_221A1C558();
  v51 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v51, v52, v71);
  if (!v35)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_22_9(v2 + v50);
    if (!v53)
    {
      OUTLINED_FUNCTION_260_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_298();
      sub_221AA7FC4();
      v56 = v55;
      sub_221ADFE28();
      OUTLINED_FUNCTION_70_0();
      sub_221ADFE28();
      sub_2219A1CC8(v2, &qword_27CFBA3D0, &qword_221BE0A18);
      if ((v56 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_22_9(v2 + v50);
  if (!v35)
  {
LABEL_24:
    v44 = &qword_27CFBA540;
    v45 = &qword_221BE0B98;
    v46 = v2;
    goto LABEL_25;
  }

  sub_2219A1CC8(v2, &qword_27CFBA3D0, &qword_221BE0A18);
LABEL_29:
  v57 = v69[9];
  v58 = *(v70 + v57 + 8);
  v59 = *(v40 + v57 + 8);
  if (v58)
  {
    if (!v59)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v60)
    {
      goto LABEL_26;
    }
  }

  v61 = v69[6];
  v62 = *(v70 + v61);
  v63 = *(v40 + v61);
  sub_221A16800();
  if (v64)
  {
    v65 = v69[7];
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v66, v67);
    v54 = sub_221BCD338();
    goto LABEL_27;
  }

LABEL_26:
  v54 = 0;
LABEL_27:
  OUTLINED_FUNCTION_100_3(v54);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA6C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA6D14(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA6DDC()
{
  sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);

  return sub_221BCCB48();
}

uint64_t sub_221AA6E5C()
{
  if (qword_27CFB6F40 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE68;
  v2 = qword_27CFDDE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x747265706F72502ELL, 0xEE00797265755179);

  qword_27CFDDE90 = v1;
  *algn_27CFDDE98 = v2;
  return result;
}

uint64_t sub_221AA6F0C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEA0);
  __swift_project_value_buffer(v0, qword_27CFDDEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compound";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5F0, &qword_221BE0C40);
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
    sub_2219A1CC8(v12, &unk_27CFBB8E0, &unk_221BE4FD0);
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
      sub_2219A1CC8(v22, &qword_27CFBA5F0, &qword_221BE0C40);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA5F0, &qword_221BE0C40);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA5F0, &qword_221BE0C40);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA5F0, &qword_221BE0C40);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA5F0, &qword_221BE0C40);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB8E0, &unk_221BE4FD0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_221AA75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5F8, &qword_221BE0C48);
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
    sub_2219A1CC8(v12, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &qword_27CFBA5F8, &qword_221BE0C48);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
  v23 = v33;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &qword_27CFBA5F8, &qword_221BE0C48);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &qword_27CFBA5F8, &qword_221BE0C48);
    v24 = v20;
    return sub_2219A1CC8(v24, &qword_27CFBA5F8, &qword_221BE0C48);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v31;
  sub_2219A1CC8(v22, &qword_27CFBA5F8, &qword_221BE0C48);
  v27 = v29;
  sub_2219A1CC8(v29, &unk_27CFBB8E0, &unk_221BE4FD0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_221AA7AC4()
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
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  OUTLINED_FUNCTION_31_8(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_15_11();
    sub_221AA7DB0(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_11();
    sub_221AA7B9C(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_52_7();
  sub_221ADFE28();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
    OUTLINED_FUNCTION_94_4(v17);
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AA7FC4()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA560, &qword_221BE0BC0);
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
      sub_2219A1CC8(v0, &unk_27CFBB8E0, &unk_221BE4FD0);
LABEL_12:
      v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
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
    OUTLINED_FUNCTION_52_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA560, &qword_221BE0BC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8A680();
  v20 = v19;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB8E0, &unk_221BE4FD0);
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

uint64_t sub_221AA8280(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5E8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA8320(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA83E8()
{
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);

  return sub_221BCCB48();
}

uint64_t sub_221AA8468()
{
  if (qword_27CFB6F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE90;
  v2 = *algn_27CFDDE98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E756F706D6F432ELL, 0xE900000000000064);

  qword_27CFDDEB8 = v1;
  unk_27CFDDEC0 = v2;
  return result;
}

uint64_t sub_221AA8510()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEC8);
  __swift_project_value_buffer(v0, qword_27CFDDEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operation";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisons";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA86D8()
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
      sub_221AA873C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCAB8();
    }
  }

  return result;
}

uint64_t sub_221AA873C()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
  return sub_221BCCAC8();
}

void sub_221AA87DC()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), sub_221BCCC08(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0), sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v1))
    {
      v3 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0) + 24);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AA88A8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  sub_221A16A34();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  OUTLINED_FUNCTION_397(v7);
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v8, v9);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221AA8990(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA600, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA8A30(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA8AF8()
{
  sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);

  return sub_221BCCB48();
}

uint64_t sub_221AA8B78()
{
  if (qword_27CFB6F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE90;
  v2 = *algn_27CFDDE98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x697261706D6F432ELL, 0xEB000000006E6F73);

  qword_27CFDDEE0 = v1;
  *algn_27CFDDEE8 = v2;
  return result;
}

uint64_t sub_221AA8C24()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEF0);
  __swift_project_value_buffer(v0, qword_27CFDDEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operation";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
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

uint64_t sub_221AA8E2C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 28);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221AA8EE0()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_25_8();
    if (!v6 || (result = OUTLINED_FUNCTION_124_4(), !v1))
    {
      v7 = OUTLINED_FUNCTION_3_21();
      result = sub_221AA8F70(v7, v8, v9, v10);
      if (!v1)
      {
        v11 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 24);
        return OUTLINED_FUNCTION_30_7();
      }
    }
  }

  return result;
}

uint64_t sub_221AA8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 28);
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

void sub_221AA9150()
{
  OUTLINED_FUNCTION_21();
  v7 = OUTLINED_FUNCTION_52_6();
  v8 = type metadata accessor for AppIntentsProtobuf_Value(v7);
  v9 = OUTLINED_FUNCTION_43_8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_157();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_57_6(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_225_0();
  v20 = *v2;
  OUTLINED_FUNCTION_349();
  if (!v21)
  {
    goto LABEL_19;
  }

  v21 = v2[1] == *(v0 + 8) && v2[2] == *(v0 + 16);
  if (!v21 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 28);
  v23 = *(v6 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_20_8(v3);
  if (v21)
  {
    OUTLINED_FUNCTION_20_8(v3 + v23);
    if (v21)
    {
      sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v3 + v23);
  if (v27)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_17:
    v28 = &qword_27CFB85E0;
    v29 = &unk_221BD3E40;
LABEL_18:
    sub_2219A1CC8(v3, v28, v29);
LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_14();
  sub_221ADFDB4();
  if ((MEMORY[0x223DA21A0](*v5, v5[1], *v4, v4[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v28 = &unk_27CFBB660;
    v29 = &qword_221BE4610;
    goto LABEL_18;
  }

  v30 = *(v1 + 20);
  v31 = sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v32, v33);
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_20_9();
  sub_221ADFE28();
  OUTLINED_FUNCTION_343();
  sub_221ADFE28();
  sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
  if ((v31 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v24, v25);
  v26 = OUTLINED_FUNCTION_118_3();
LABEL_20:
  OUTLINED_FUNCTION_100_3(v26);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA9484(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA608, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA9524(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA95EC()
{
  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);

  return sub_221BCCB48();
}

uint64_t sub_221AA966C()
{
  if (qword_27CFB6F40 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE68;
  v2 = qword_27CFDDE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x676E6974726F532ELL, 0xEF736E6F6974704FLL);

  qword_27CFDDF08 = v1;
  unk_27CFDDF10 = v2;
  return result;
}

uint64_t sub_221AA971C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF18);
  __swift_project_value_buffer(v0, qword_27CFDDF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "order";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "propertyName";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA9924()
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
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AA9AC0(v3, v4);
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221AA9A08();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AA99A0();
        break;
    }
  }

  return result;
}

uint64_t sub_221AA9AC0(uint64_t a1, uint64_t a2)
{
  result = sub_221BCCA88();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 32) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_221BCC9A8();
      v5 = *(a2 + 32);
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = 1;
    return sub_221AE00C4(v6, v7, v5);
  }

  return result;
}

uint64_t sub_221AA9B90()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (v7 = *v0, v8 = *(v2 + 8), sub_221AE0070(), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
  {
    if (*(v2 + 32) == 255 || ((v4 = OUTLINED_FUNCTION_3_21(), (v5 & 1) == 0) ? (result = sub_221AA9C44(v4)) : (result = sub_221AA9C84(v4)), !v1))
    {
      v6 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AA9C44(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 16);
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221AA9C84(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v2 = *(result + 24);
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221AA9CD0()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v1 + 32);
  v7 = *(v0 + 32);
  if (v6 == 255)
  {
    if (v7 == 255)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v7 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 16);
  v9 = *(v0 + 16);
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v10 = v8 == v9 && *(v1 + 24) == *(v0 + 24);
    if (!v10 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v7 & 1) != 0 || v8 != v9)
  {
    return 0;
  }

LABEL_25:
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  OUTLINED_FUNCTION_397(v12);
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v13, v14);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221AA9E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA610, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA9EE0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA9FA8()
{
  sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);

  return sub_221BCCB48();
}

uint64_t sub_221AAA028()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF30);
  __swift_project_value_buffer(v0, qword_27CFDDF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SORT_ORDER_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SORT_ORDER_ASCENDING";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SORT_ORDER_DESCENDING";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAA250()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E6972745379422ELL, 0xE900000000000067);

  qword_27CFDDF48 = v1;
  unk_27CFDDF50 = v2;
  return result;
}

uint64_t sub_221AAA2F8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF58);
  __swift_project_value_buffer(v0, qword_27CFDDF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "matchingString";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAA578()
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
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_5_17();
        sub_221AAA628(v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221AAA7DC(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AAACE0(v7, v8);
        break;
      case 10:
        OUTLINED_FUNCTION_5_17();
        sub_221AAAE94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AAA628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &unk_27CFBB8F0, &qword_221BE0B80);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &unk_27CFBB8F0, &qword_221BE0B80);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AAA7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &unk_27CFBB8F0, &qword_221BE0B80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AAACE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &unk_27CFBB8F0, &qword_221BE0B80);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &unk_27CFBB8F0, &qword_221BE0B80);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

void sub_221AAAEF8()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_42_8();
  if (v6)
  {
    OUTLINED_FUNCTION_103_5();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v8 = v7[5];
  sub_221A1C558();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v18 = OUTLINED_FUNCTION_3_21();
        sub_221AAB1C4(v18, v19, v20, v21);
        OUTLINED_FUNCTION_23_11();
        sub_221ADFE28();
        if (v0)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AAB3E4();
    }

    else
    {
      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AAB068();
    }

    if (v0)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  v12 = (v1 + v7[6]);
  v13 = *v12;
  v14 = v12[1];
  OUTLINED_FUNCTION_25_8();
  if (!v15 || (OUTLINED_FUNCTION_124_4(), !v0))
  {
    v16 = v7[7];
    OUTLINED_FUNCTION_30_7();
  }

LABEL_14:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AAB068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAB3E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AAB544()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_88_5();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(v4);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_157();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA530, &qword_221BE0B88);
  OUTLINED_FUNCTION_57_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_63_6();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v36 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v20 = v36[5];
  v21 = *(v3 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  v22 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v22, v23, v5);
  if (!v19)
  {
    OUTLINED_FUNCTION_131_3();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v2 + v21, 1, v5);
    if (!v24)
    {
      OUTLINED_FUNCTION_265_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_63_3();
      sub_221A8AB64();
      v27 = v26;
      sub_221ADFE28();
      OUTLINED_FUNCTION_343();
      sub_221ADFE28();
      sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_23_11();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v2, &qword_27CFBA530, &qword_221BE0B88);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_49_4(v2 + v21, 1, v5);
  if (!v19)
  {
    goto LABEL_14;
  }

  sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
LABEL_17:
  v28 = v36[6];
  v29 = *(v1 + v28);
  v30 = *(v1 + v28 + 8);
  v31 = (v0 + v28);
  v32 = v29 == *v31 && v30 == v31[1];
  if (v32 || (sub_221BCE1B8() & 1) != 0)
  {
    v33 = v36[7];
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v34, v35);
    v25 = OUTLINED_FUNCTION_36_8();
    goto LABEL_23;
  }

LABEL_15:
  v25 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AAB844(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA620, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAB8E4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAB9AC()
{
  sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);

  return sub_221BCCB48();
}

uint64_t sub_221AABA2C()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BEFC60);

  qword_27CFDDF70 = v1;
  *algn_27CFDDF78 = v2;
  return result;
}

uint64_t sub_221AABAD4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF80);
  __swift_project_value_buffer(v0, qword_27CFDDF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AABD14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA588, &qword_221BE0BF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA588, &qword_221BE0BF0);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AABEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &qword_27CFBA588, &qword_221BE0BF0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AAC3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &qword_27CFBA588, &qword_221BE0BF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &qword_27CFBA588, &qword_221BE0BF0);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

void sub_221AAC580()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_42_8();
  if (!v6 || (OUTLINED_FUNCTION_103_5(), !v1))
  {
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
    OUTLINED_FUNCTION_302(v7);
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    OUTLINED_FUNCTION_140_2(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_3_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v12 = OUTLINED_FUNCTION_3_21();
          sub_221AAC808(v12, v13, v14, v15);
          OUTLINED_FUNCTION_22_10();
          sub_221ADFE28();
          if (v1)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_22_10();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AACA28();
      }

      else
      {
        OUTLINED_FUNCTION_22_10();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AAC6AC();
      }

      if (v1)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    v10 = *(v0 + 24);
    OUTLINED_FUNCTION_30_7();
  }

LABEL_13:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AAC6AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AACA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AACB88()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(v2);
  v4 = OUTLINED_FUNCTION_60_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA590, &qword_221BE0BF8);
  OUTLINED_FUNCTION_57_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_63_6();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  OUTLINED_FUNCTION_328(v18);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v17)
    {
      sub_2219A1CC8(v0, &qword_27CFBA588, &qword_221BE0BF0);
LABEL_17:
      OUTLINED_FUNCTION_315();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v23, v24);
      v20 = OUTLINED_FUNCTION_36_8();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_22_10();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA590, &qword_221BE0BF8);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A8AE1C();
  v22 = v21;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA588, &qword_221BE0BF0);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v20);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AACE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA628, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AACF3C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAD004()
{
  sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);

  return sub_221BCCB48();
}

uint64_t sub_221AAD084()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x45657571696E552ELL, 0xED0000797469746ELL);

  qword_27CFDDF98 = v1;
  unk_27CFDDFA0 = v2;
  return result;
}

uint64_t sub_221AAD134()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFA8);
  __swift_project_value_buffer(v0, qword_27CFDDFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221AAD374()
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
      case 1:
        OUTLINED_FUNCTION_343();
        sub_221BCCA98();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_142_2();
        v2(v9);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_39_4();
        v1(v7);
        break;
      case 4:
        v8 = OUTLINED_FUNCTION_142_2();
        v4(v8);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AAD43C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &unk_27CFBB900, &unk_221BE5080);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &unk_27CFBB900, &unk_221BE5080);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_221AAD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20);
  v30 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
  v23 = v34;
  sub_221BCCAD8();
  if (v23)
  {
    v24 = v22;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
    v24 = v20;
    return sub_2219A1CC8(v24, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v26 = v32;
  sub_2219A1CC8(v22, &unk_27CFBB8C0, &unk_221BE4FB0);
  v28 = v29;
  v27 = v30;
  sub_2219A1CC8(v30 + v29, &unk_27CFBB900, &unk_221BE5080);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_221AADAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_221BCCA88();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20));
    sub_221A1C558();
    v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_2219A1CC8(v7, &unk_27CFBB900, &unk_221BE5080);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v10, &unk_27CFBB900, &unk_221BE5080);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

void sub_221AADCA8()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_42_8();
  if (!v6 || (OUTLINED_FUNCTION_103_5(), !v1))
  {
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
    OUTLINED_FUNCTION_302(v7);
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    OUTLINED_FUNCTION_140_2(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_3_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v12 = OUTLINED_FUNCTION_3_21();
          sub_221AADF30(v12, v13, v14, v15);
          OUTLINED_FUNCTION_21_9();
          sub_221ADFE28();
          if (v1)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_21_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AAE150();
      }

      else
      {
        OUTLINED_FUNCTION_21_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AADDD4();
      }

      if (v1)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    v10 = *(v0 + 24);
    OUTLINED_FUNCTION_30_7();
  }

LABEL_13:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AADDD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AADF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20);
  sub_221A1C558();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v7, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAE150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20);
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_2219A1CC8(v3, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v7 = v3[1];
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AAE2B0()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(v2);
  v4 = OUTLINED_FUNCTION_60_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5A0, &qword_221BE0C10);
  OUTLINED_FUNCTION_57_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_63_6();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  OUTLINED_FUNCTION_328(v18);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v17)
    {
      sub_2219A1CC8(v0, &unk_27CFBB900, &unk_221BE5080);
LABEL_17:
      OUTLINED_FUNCTION_315();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v23, v24);
      v20 = OUTLINED_FUNCTION_36_8();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_21_9();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA5A0, &qword_221BE0C10);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A8B0D4();
  v22 = v21;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB900, &unk_221BE5080);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v20);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AAE5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA630, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAE664(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAE72C()
{
  sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);

  return sub_221BCCB48();
}

uint64_t sub_221AAE7AC()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x736E6F6974704F2ELL, 0xE800000000000000);

  qword_27CFDDFC0 = v1;
  *algn_27CFDDFC8 = v2;
  return result;
}

uint64_t sub_221AAE850()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFD0);
  __swift_project_value_buffer(v0, qword_27CFDDFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "exportedContentTypeIdentifier";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "convertArrayResultToAsyncSequence";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAEA18()
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
      sub_221AAEAE0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AAEA90();
    }
  }

  return result;
}

uint64_t sub_221AAEA90()
{
  OUTLINED_FUNCTION_113_5();
  v1 = *(v0(0) + 20);
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  return sub_221BCCA88();
}

uint64_t sub_221AAEB44()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_34_8();
    sub_221AAEC0C(v2);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AAEBA0()
{
  OUTLINED_FUNCTION_113_5();
  result = v1(0);
  v3 = (v0 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221AAEC0C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221AAEC84()
{
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(v2);
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
  v11 = *(v1 + v10);
  v12 = *(v0 + v10);
  if (v11 != 2)
  {
    if (v12 != 2 && ((v11 ^ v12) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v12 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v14, v15);
  return OUTLINED_FUNCTION_135_3() & 1;
}

uint64_t sub_221AAEDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA638, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAEE4C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAEF14()
{
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);

  return sub_221BCCB48();
}

uint64_t sub_221AAEF94()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BEFC80);

  qword_27CFDDFE8 = v1;
  unk_27CFDDFF0 = v2;
  return result;
}

uint64_t sub_221AAF03C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFF8);
  __swift_project_value_buffer(v0, qword_27CFDDFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actionIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterName";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}