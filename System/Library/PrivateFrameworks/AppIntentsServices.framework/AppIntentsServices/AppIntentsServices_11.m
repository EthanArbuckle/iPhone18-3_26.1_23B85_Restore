uint64_t sub_221A798D8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA68);
  __swift_project_value_buffer(v0, qword_27CFDDA68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DIALOG_UNKNOWN";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIALOG_LOCALIZED_STRINGS";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A79AC4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA80);
  __swift_project_value_buffer(v0, qword_27CFDDA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "imageData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "renderingMode";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayStyle";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A79CCC()
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
        OUTLINED_FUNCTION_4_18();
        sub_221A7E4D0();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221A79DBC();
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A79D58();
        break;
    }
  }

  return result;
}

uint64_t sub_221A79E20()
{
  OUTLINED_FUNCTION_58_6();
  result = sub_221A79EAC(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_58_6();
    sub_221A79F4C(v3);
    OUTLINED_FUNCTION_58_6();
    sub_221A7E69C();
    OUTLINED_FUNCTION_56_3();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A79EAC(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_2219EBFC8(*v3, *(v3 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v5, v4);
  }

  return result;
}

uint64_t sub_221A79F4C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A79FC4()
{
  OUTLINED_FUNCTION_69_1();
  v0 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_65_5(v0[5]);
  if (!v4 & v3)
  {
    OUTLINED_FUNCTION_122_3();
    if (!v4 & v3)
    {
      v1 = OUTLINED_FUNCTION_6_16();
      sub_2219EC02C(v1, v2);
      goto LABEL_11;
    }

LABEL_8:
    v5 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v5, v6);
    v7 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v7, v8);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!v4 & v3)
  {
    goto LABEL_8;
  }

  v10 = OUTLINED_FUNCTION_6_16();
  v11 = MEMORY[0x223DA21A0](v10);
  v12 = OUTLINED_FUNCTION_14();
  sub_2219EC02C(v12, v13);
  v14 = OUTLINED_FUNCTION_56_3();
  sub_2219EC02C(v14, v15);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  OUTLINED_FUNCTION_90_4(v0[6]);
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v18)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_90_4(v0[7]);
  if (v20)
  {
    if (v19)
    {
      goto LABEL_19;
    }

    return 0;
  }

  OUTLINED_FUNCTION_77_3();
  if (v21)
  {
    return 0;
  }

LABEL_19:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v22, v23);
  OUTLINED_FUNCTION_91_4();
  return sub_221BCD338() & 1;
}

uint64_t sub_221A7A118()
{
  v0 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_0_0();

  return v4(v3);
}

uint64_t sub_221A7A174()
{
  OUTLINED_FUNCTION_40_3();
  v2 = sub_221BCC8D8();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_221A7A200(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99B0, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7A2A0(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7A368()
{
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);

  return sub_221BCCB48();
}

uint64_t sub_221A7A3E8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA98);
  __swift_project_value_buffer(v0, qword_27CFDDA98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "synonyms";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7A628()
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
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 4:
        OUTLINED_FUNCTION_5_17();
        sub_221A7A720();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7A6DC()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 28));
  return sub_221BCCA88();
}

uint64_t sub_221A7A720()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 32);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  return sub_221BCCAD8();
}

uint64_t sub_221A7A7D4()
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7A888();
    if (!v0)
    {
      if (*(*(v1 + 16) + 16))
      {
        OUTLINED_FUNCTION_14_12();
        sub_221BCCBC8();
      }

      v4 = OUTLINED_FUNCTION_3_21();
      sub_221A7A8EC(v4, v5, v6, v7);
      v8 = *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7A888()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  v4 = (v0 + *(result + 28));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7AACC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  v3 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50);
  OUTLINED_FUNCTION_2_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_225_0();
  v15 = *v1;
  v16 = v1[1];
  OUTLINED_FUNCTION_102_2();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v21 = v20[7];
  OUTLINED_FUNCTION_18_10();
  if (v24)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_61_3(v23);
    v27 = v19 && v25 == v26;
    if (!v27 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v22)
  {
    goto LABEL_25;
  }

  if ((sub_221A15E30(v1[2], *(v0 + 16)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v28 = v20[8];
  v29 = *(v11 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_53_7(v2 + v29);
    if (v19)
    {
      sub_2219A1CC8(v2, &qword_27CFB85E8, &unk_221BD86E0);
LABEL_28:
      v33 = v20[6];
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      sub_221A8395C(v34, v35);
      v31 = OUTLINED_FUNCTION_36_8();
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2 + v29);
  if (v30)
  {
    OUTLINED_FUNCTION_44_4();
    sub_221A857F0();
LABEL_24:
    sub_2219A1CC8(v2, &qword_27CFB85F0, &unk_221BD3E50);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_13();
  sub_221A8554C();
  v32 = sub_221A79FC4();
  OUTLINED_FUNCTION_82_4();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v2, &qword_27CFB85E8, &unk_221BD86E0);
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_25:
  v31 = 0;
LABEL_26:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7ADC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99B8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7AE68(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7AF30()
{
  sub_221A8395C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);

  return sub_221BCCB48();
}

uint64_t sub_221A7AFB0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAB0);
  __swift_project_value_buffer(v0, qword_27CFDDAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dependentParameterIdentifiers";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptLabel";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sections";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "usesIndexedCollection";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7B1F4()
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
        sub_221BCCA48();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7B304(v3, v4, v5, v6, v7, &unk_27CFBB700, v8);
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7B3A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7B304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_221A8395C(a6, a7);
  return sub_221BCCAC8();
}

uint64_t sub_221A7B3A0()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 32));
  return sub_221BCC9B8();
}

void sub_221A7B3E4()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_14_12(), sub_221BCCBC8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    sub_221A7A888();
    if (!v1)
    {
      if (*(*(v2 + 8) + 16))
      {
        type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
        sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
        OUTLINED_FUNCTION_91_4();
        OUTLINED_FUNCTION_49_6();
        sub_221BCCC18();
      }

      OUTLINED_FUNCTION_1_34();
      sub_221A7B500();
      v3 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0) + 24);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7B500()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  if (*(v0 + *(result + 32)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A7B56C()
{
  OUTLINED_FUNCTION_69_1();
  if ((sub_221A15E30(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  v5 = v4[7];
  OUTLINED_FUNCTION_18_10();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = *(v1 + 8);
  v13 = *(v0 + 8);
  sub_221A17B70();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(v1 + v15);
  v17 = *(v0 + v15);
  if (v16 != 2)
  {
    if (v17 != 2 && ((v16 ^ v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v17 != 2)
  {
    return 0;
  }

LABEL_18:
  v19 = v4[6];
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v20, v21);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A7B6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99C0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7B754(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7B81C()
{
  sub_221A8395C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);

  return sub_221BCCB48();
}

uint64_t sub_221A7B89C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAC8);
  __swift_project_value_buffer(v0, qword_27CFDDAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indentationLevel";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtitle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "value";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7BB1C()
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
        OUTLINED_FUNCTION_5_17();
        sub_221A7BBE0();
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 4:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
      case 5:
        OUTLINED_FUNCTION_5_17();
        sub_221A7BCD8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7BBE0()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 28);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  return sub_221BCCAD8();
}

uint64_t sub_221A7BC94()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 32));
  return sub_221BCCA88();
}

uint64_t sub_221A7BCD8()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 36);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221A7BD8C()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221A7BE5C(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    v7 = v1[1];
    v8 = v1[2];
    OUTLINED_FUNCTION_25_8();
    if (v9)
    {
      OUTLINED_FUNCTION_17_11();
      sub_221BCCBF8();
    }

    v10 = OUTLINED_FUNCTION_3_21();
    sub_221A7C0A0(v10, v11, v12, v13);
    v14 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 24);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221A7BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A7C03C()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  v4 = (v0 + *(result + 32));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 36);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7C280()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v67 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v4 = OUTLINED_FUNCTION_2_1(v67);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v64 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104_2();
  v65 = v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v66);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104_2();
  v68 = v17;
  v18 = OUTLINED_FUNCTION_133_3();
  v19 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(v18);
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_97_3();
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50) - 8);
  v28 = *(*v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - v30;
  v69 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v70 = v3;
  v32 = *(v69 + 28);
  v33 = v27[14];
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_53_7(&v31[v33]);
    if (v34)
    {
      sub_2219A1CC8(v31, &qword_27CFB85E8, &unk_221BD86E0);
      goto LABEL_12;
    }

LABEL_9:
    v35 = &qword_27CFB85F0;
    v36 = &unk_221BD3E50;
    v37 = v31;
LABEL_10:
    sub_2219A1CC8(v37, v35, v36);
LABEL_40:
    v56 = 0;
    goto LABEL_41;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(&v31[v33]);
  if (v34)
  {
    OUTLINED_FUNCTION_44_4();
    sub_221A857F0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_13();
  sub_221A8554C();
  v38 = sub_221A79FC4();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v31, &qword_27CFB85E8, &unk_221BD86E0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_12:
  v39 = v70;
  if (*v70 != *v1)
  {
    goto LABEL_40;
  }

  v40 = v69;
  v41 = *(v69 + 32);
  v42 = *(v1 + v41 + 8);
  if (*(v70 + v41 + 8))
  {
    if (!v42)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_61_3((v70 + v41));
    v45 = v34 && v43 == v44;
    if (!v45 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v42)
  {
    goto LABEL_40;
  }

  v46 = v39[1] == v1[1] && v39[2] == v1[2];
  if (!v46 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_40;
  }

  v47 = *(v40 + 36);
  v48 = *(v66 + 48);
  v49 = v68;
  sub_221A1C558();
  sub_221A1C558();
  v50 = OUTLINED_FUNCTION_127_4();
  v51 = v67;
  OUTLINED_FUNCTION_49_4(v50, v52, v67);
  if (v34)
  {
    OUTLINED_FUNCTION_49_4(v49 + v48, 1, v51);
    if (v34)
    {
      sub_2219A1CC8(v49, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v57 = v65;
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v49 + v48, 1, v51);
  if (v58)
  {
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_36:
    v35 = &qword_27CFB85E0;
    v36 = &unk_221BD3E40;
LABEL_37:
    v37 = v49;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_13();
  v59 = v64;
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v57, v57[1], *v59, v59[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_83_5();
    sub_221A857F0();
    sub_221A857F0();
    v35 = &unk_27CFBB660;
    v36 = &qword_221BE4610;
    goto LABEL_37;
  }

  v60 = *(v51 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v61, v62);
  LOBYTE(v60) = sub_221BCD338();
  OUTLINED_FUNCTION_84_3();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v49, &unk_27CFBB660, &qword_221BE4610);
  if ((v60 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  v53 = *(v40 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v54, v55);
  v56 = sub_221BCD338();
LABEL_41:
  OUTLINED_FUNCTION_100_3(v56);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7C848(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99C8, type metadata accessor for AppIntentsProtobuf_DynamicOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7C8E8(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7C9B0()
{
  sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption);

  return sub_221BCCB48();
}

uint64_t sub_221A7CA30()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAE0);
  __swift_project_value_buffer(v0, qword_27CFDDAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtitle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7CC74()
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
        OUTLINED_FUNCTION_5_17();
        sub_221A7CD34();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221A7CDE8();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7CD34()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 24);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  return sub_221BCCAD8();
}

uint64_t sub_221A7CDE8()
{
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption);
  return sub_221BCCAC8();
}

void sub_221A7CE88()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  sub_221A7CF98(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
      sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7A888();
    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    v6 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 20);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t (*sub_221A7D470(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_221A7D4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99D0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7D564(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7D62C()
{
  sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);

  return sub_221BCCB48();
}

uint64_t sub_221A7D6AC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAF8);
  __swift_project_value_buffer(v0, qword_27CFDDAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "instance";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7D874()
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
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7D8D4()
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_25_8();
    if (!v6 || (OUTLINED_FUNCTION_17_11(), result = sub_221BCCBF8(), !v0))
    {
      v7 = *(type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7D950(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_32_7(a1, a2);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0) + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v11, v12);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A7DA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99D8, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7DAEC(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7DBB4()
{
  sub_221A8395C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);

  return sub_221BCCB48();
}

uint64_t sub_221A7DCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99E0, type metadata accessor for AppIntentsProtobuf_Environment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7DD60(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7DE28()
{
  sub_221A8395C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);

  return sub_221BCCB48();
}

uint64_t sub_221A7DF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99E8, type metadata accessor for AppIntentsProtobuf_Error);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7E000(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7E0C8()
{
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);

  return sub_221BCCB48();
}

uint64_t sub_221A7E174()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB40);
  __swift_project_value_buffer(v0, qword_27CFDDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "size";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uttype";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "error";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7E3F0()
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
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7E4D0();
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 10:
        OUTLINED_FUNCTION_5_17();
        sub_221A7E514();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7E4D0()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 28));
  return sub_221BCCA28();
}

uint64_t sub_221A7E514()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 36);
  type metadata accessor for AppIntentsProtobuf_Error(0);
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  return sub_221BCCAD8();
}

uint64_t sub_221A7E5C8()
{
  OUTLINED_FUNCTION_2_29();
  if (!v1 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v0)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7E69C();
      OUTLINED_FUNCTION_1_34();
      sub_221A7C03C();
      v3 = OUTLINED_FUNCTION_3_21();
      sub_221A7E704(v3, v4, v5, v6);
      v7 = *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 20);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7E69C()
{
  v1 = OUTLINED_FUNCTION_21_8();
  result = v2(v1);
  v4 = (v0 + *(result + 28));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A7E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 36);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7E8E4()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Error(v3);
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB99F8, &qword_221BDAE30);
  OUTLINED_FUNCTION_2_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_225_0();
  v19 = *v0;
  v20 = v0[1];
  OUTLINED_FUNCTION_102_2();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_39;
  }

  v24 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_34_7(v0 + v24[6]);
  if (v27)
  {
    if (!v25)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_61_3(v26);
    v30 = v23 && v28 == v29;
    if (!v30 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v25)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_90_4(v24[7]);
  if (v32)
  {
    if (!v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v33)
    {
      goto LABEL_39;
    }
  }

  OUTLINED_FUNCTION_34_7(v0 + v24[8]);
  if (!v36)
  {
    if (!v34)
    {
      goto LABEL_28;
    }

LABEL_39:
    v45 = 0;
    goto LABEL_40;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_61_3(v35);
  v39 = v23 && v37 == v38;
  if (!v39 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  v40 = v24[9];
  v41 = *(v15 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_20_8(v1 + v41);
    if (v23)
    {
      sub_2219A1CC8(v1, &qword_27CFBBA10, &qword_221BE0A90);
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v41);
  if (v46)
  {
    sub_221A857F0();
LABEL_37:
    v47 = &qword_27CFB99F8;
    v48 = &qword_221BDAE30;
LABEL_38:
    sub_2219A1CC8(v1, v47, v48);
    goto LABEL_39;
  }

  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v2, v2[1], *v10, v10[1]) & 1) == 0)
  {
    sub_221A857F0();
    sub_221A857F0();
    v47 = &qword_27CFBBA10;
    v48 = &qword_221BE0A90;
    goto LABEL_38;
  }

  v49 = *(v4 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v50, v51);
  v52 = OUTLINED_FUNCTION_148_2();
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v1, &qword_27CFBBA10, &qword_221BE0A90);
  if ((v52 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v42 = v24[5];
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v43, v44);
  v45 = OUTLINED_FUNCTION_118_3();
LABEL_40:
  OUTLINED_FUNCTION_100_3(v45);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7ECC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99F0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7ED64(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97A0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7EE2C()
{
  sub_221A8395C(&qword_27CFB97A0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);

  return sub_221BCCB48();
}

uint64_t sub_221A7EEAC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB58);
  __swift_project_value_buffer(v0, qword_27CFDDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
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
  *v12 = "parameterDescription";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7F0B4()
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
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221A7F150()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 24));
  return sub_221BCCA88();
}

uint64_t sub_221A7F194()
{
  OUTLINED_FUNCTION_2_29();
  if (!v1 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v0)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7A888();
      v3 = *(type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0) + 20);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7F238()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7F29C(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_32_7(a1, a2);
  v6 = v2 == v5 && v3 == v4;
  if (!v6 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v8 = v7[6];
  OUTLINED_FUNCTION_18_10();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v10);
    v14 = v6 && v12 == v13;
    if (!v14 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v7[7];
  OUTLINED_FUNCTION_18_10();
  if (v18)
  {
    if (v16)
    {
      OUTLINED_FUNCTION_61_3(v17);
      v21 = v6 && v19 == v20;
      if (v21 || (sub_221BCE1B8() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v16)
  {
LABEL_22:
    v22 = v7[5];
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_40();
    sub_221A8395C(v23, v24);
    return OUTLINED_FUNCTION_36_8() & 1;
  }

  return 0;
}

uint64_t sub_221A7F3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A00, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7F478(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7F540()
{
  sub_221A8395C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);

  return sub_221BCCB48();
}

uint64_t sub_221A7F5C0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB70);
  __swift_project_value_buffer(v0, qword_27CFDDB70);
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
  *v10 = "entityType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7F788()
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
      OUTLINED_FUNCTION_4_18();
      sub_221A7F150();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7F7FC()
{
  OUTLINED_FUNCTION_2_29();
  if (!v1 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v0)
    {
      v3 = *(type metadata accessor for AppIntentsProtobuf_NotificationTopic(0) + 20);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7F87C(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_32_7(a1, a2);
  v6 = v2 == v5 && v3 == v4;
  if (v6 || (sub_221BCE1B8() & 1) != 0)
  {
    v7 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
    v8 = *(v7 + 24);
    OUTLINED_FUNCTION_18_10();
    if (v11)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_61_3(v10);
        v14 = v6 && v12 == v13;
        if (v14 || (sub_221BCE1B8() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
LABEL_13:
      v15 = *(v7 + 20);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      sub_221A8395C(v16, v17);
      return OUTLINED_FUNCTION_36_8() & 1;
    }
  }

  return 0;
}

uint64_t sub_221A7F988(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A08, type metadata accessor for AppIntentsProtobuf_NotificationTopic);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7FA28(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7FAF0()
{
  sub_221A8395C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);

  return sub_221BCCB48();
}

uint64_t sub_221A7FB70()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB88);
  __swift_project_value_buffer(v0, qword_27CFDDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7FD38()
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
      sub_221A7FD9C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7FD9C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_Property(0) + 24);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  return sub_221BCCAD8();
}

uint64_t sub_221A7FE50()
{
  OUTLINED_FUNCTION_2_29();
  if (!v1 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v0))
  {
    v3 = OUTLINED_FUNCTION_3_21();
    result = sub_221A7FEBC(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = *(type metadata accessor for AppIntentsProtobuf_Property(0) + 20);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_Property(0) + 24);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A8009C()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Value(v3);
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_225_0();
  v19 = *v0;
  v20 = v0[1];
  OUTLINED_FUNCTION_102_2();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  v37 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v24 = *(v37 + 24);
  v25 = *(v15 + 48);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_20_8(v1 + v25);
    if (v23)
    {
      sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v25);
  if (v30)
  {
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_15:
    v31 = &qword_27CFB85E0;
    v32 = &unk_221BD3E40;
LABEL_16:
    sub_2219A1CC8(v1, v31, v32);
LABEL_17:
    v29 = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_13();
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v2, v2[1], *v10, v10[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_83_5();
    sub_221A857F0();
    sub_221A857F0();
    v31 = &unk_27CFBB660;
    v32 = &qword_221BE4610;
    goto LABEL_16;
  }

  v33 = *(v4 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v34, v35);
  v36 = sub_221BCD338();
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v26 = *(v37 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v27, v28);
  v29 = OUTLINED_FUNCTION_118_3();
LABEL_18:
  OUTLINED_FUNCTION_100_3(v29);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A803CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A10, type metadata accessor for AppIntentsProtobuf_Property);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A8046C(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A80534()
{
  sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);

  return sub_221BCCB48();
}

uint64_t sub_221A805B4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBA0);
  __swift_project_value_buffer(v0, qword_27CFDDBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A8077C()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_61_5(), OUTLINED_FUNCTION_58_6(), result = sub_221BCCBD8(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_61_5(), OUTLINED_FUNCTION_58_6(), result = sub_221BCCBD8(), !v1))
    {
      v4 = *(type metadata accessor for AppIntentsProtobuf_Size(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A8080C(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  v4 = *(type metadata accessor for AppIntentsProtobuf_Size(0) + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v5, v6);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A8092C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A18, type metadata accessor for AppIntentsProtobuf_Size);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A809CC(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A80A94()
{
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size);

  return sub_221BCCB48();
}

uint64_t sub_221A80B14()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBB8);
  __swift_project_value_buffer(v0, qword_27CFDDBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_221BD8690;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "size";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dynamicTypeSize";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "legibilityWeight";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "layoutDirection";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "colorScheme";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "colorSchemeContrast";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "displayScale";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "displayGamut";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "accessibilityDifferentiateWithoutColor";
  *(v23 + 1) = 38;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "accessibilityInvertColors";
  *(v25 + 1) = 25;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "accessibilityReduceMotion";
  *(v27 + 1) = 25;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "accessibilityReduceTransparency";
  *(v29 + 1) = 31;
  v29[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A80F38()
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
        OUTLINED_FUNCTION_5_17();
        sub_221A81024();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA38();
        break;
      case 7:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA68();
        break;
      case 9:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_58_6();
        sub_221BCC9C8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A81024()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0) + 64);
  type metadata accessor for AppIntentsProtobuf_Size(0);
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size);
  return sub_221BCCAD8();
}

uint64_t sub_221A810D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221A812C4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 8))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 24))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 32))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 40))
    {
      sub_221BCCBD8();
    }

    if (*(v3 + 48))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 56) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 57) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 58) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 59) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    v6 = v3 + *(type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0) + 60);
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A812C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Size(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0) + 64);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9560, &qword_221BE49F0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A814A4()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Size(0);
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  OUTLINED_FUNCTION_8_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_157();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9A28, &qword_221BDAE38);
  OUTLINED_FUNCTION_125_2(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_97_3();
  v35 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v22 = *(v35 + 64);
  v23 = *(v2 + 56);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v0);
  if (!v28)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v0 + v23);
    if (!v28)
    {
      sub_221A8554C();
      if (*v1 == *v13 && v1[1] == v13[1])
      {
        v31 = *(v7 + 24);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_40();
        sub_221A8395C(v32, v33);
        v34 = OUTLINED_FUNCTION_150_1();
        OUTLINED_FUNCTION_9_14();
        sub_221A857F0();
        if (v34)
        {
          OUTLINED_FUNCTION_9_14();
          sub_221A857F0();
          goto LABEL_5;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_14();
        sub_221A857F0();
      }

      OUTLINED_FUNCTION_9_14();
      sub_221A857F0();
      v29 = &qword_27CFB9560;
      v30 = &qword_221BE49F0;
LABEL_28:
      sub_2219A1CC8(v0, v29, v30);
LABEL_29:
      v27 = 0;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_14();
    sub_221A857F0();
LABEL_21:
    v29 = &qword_27CFB9A28;
    v30 = &qword_221BDAE38;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_20_8(v0 + v23);
  if (!v28)
  {
    goto LABEL_21;
  }

LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9560, &qword_221BE49F0);
  OUTLINED_FUNCTION_142_1();
  if (!v28 || *(v6 + 8) != *(v4 + 8) || *(v6 + 16) != *(v4 + 16) || *(v6 + 24) != *(v4 + 24) || *(v6 + 32) != *(v4 + 32) || *(v6 + 40) != *(v4 + 40) || *(v6 + 48) != *(v4 + 48) || *(v6 + 56) != *(v4 + 56) || *(v6 + 57) != *(v4 + 57) || *(v6 + 58) != *(v4 + 58) || *(v6 + 59) != *(v4 + 59))
  {
    goto LABEL_29;
  }

  v24 = *(v35 + 60);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v25, v26);
  v27 = OUTLINED_FUNCTION_149_1();
LABEL_30:
  OUTLINED_FUNCTION_100_3(v27);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A81818(uint64_t a1)
{
  v1 = *(a1 + 60);
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_123_1();

  return v6(v5);
}

uint64_t sub_221A81880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_221A8191C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A20, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A819BC(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A81A84()
{
  sub_221A8395C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);

  return sub_221BCCB48();
}

void sub_221A81B1C()
{
  OUTLINED_FUNCTION_151_2();
  v2 = v1;
  OUTLINED_FUNCTION_2_29();
  if (!v3 || (OUTLINED_FUNCTION_12_7(), sub_221BCCBF8(), !v0))
  {
    v4 = *(v2(0) + 20);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A81B80(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_32_7(a1, a2);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3(0) + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v10, v11);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A81C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A30, type metadata accessor for AppIntentsProtobuf_SystemProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A81D28(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A81DF0()
{
  sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol);

  return sub_221BCCB48();
}

uint64_t sub_221A81E9C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBE8);
  __swift_project_value_buffer(v0, qword_27CFDDBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "p1";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "p2";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A8205C()
{
  OUTLINED_FUNCTION_128_1();
  while (1)
  {
    result = sub_221BCC998();
    if (v1 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v7 = v2 + 8;
LABEL_8:
      v0(v7, v4, v3);
    }

    else if (result == 1)
    {
      v7 = v2;
      goto LABEL_8;
    }
  }
}

uint64_t sub_221A820D0()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC28(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC28(), !v1))
    {
      v4 = *(type metadata accessor for AppIntentsProtobuf_UUID(0) + 24);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A82150(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  v4 = *(type metadata accessor for AppIntentsProtobuf_UUID(0) + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v5, v6);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A8222C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_123_1();

  return v6(v5);
}

uint64_t sub_221A82294(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_221A82344(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A38, type metadata accessor for AppIntentsProtobuf_UUID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A823E4(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A824AC()
{
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);

  return sub_221BCCB48();
}

void sub_221A82544()
{
  OUTLINED_FUNCTION_151_2();
  v2 = *v0;
  v3 = v0[1];
  v5 = v4;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = v2;
      v7 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
LABEL_6:
      if (v6 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_12_7();
      sub_221BCCBA8();
      if (!v1)
      {
LABEL_8:
        v8 = *(v5(0) + 20);
        OUTLINED_FUNCTION_30_7();
      }

      OUTLINED_FUNCTION_152_2();
      return;
  }
}

uint64_t sub_221A82674(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A40, type metadata accessor for AppIntentsProtobuf_Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A82714(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A827DC()
{
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);

  return sub_221BCCB48();
}

uint64_t sub_221A828A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_221BCCC78();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_55_3();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_221BD19E0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_221BCCC48();
  OUTLINED_FUNCTION_2_1(v16);
  (*(v17 + 104))(v14, v15);
  return sub_221BCCC58();
}

uint64_t sub_221A82A00()
{
  OUTLINED_FUNCTION_128_1();
  while (1)
  {
    result = sub_221BCC998();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_131_3();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_221A82A60(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_32_7(a1, a2);
  if ((MEMORY[0x223DA21A0](v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v6, v7);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A82B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A48, type metadata accessor for AppIntentsProtobuf_ValueType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A82BF8(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A82CC0()
{
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);

  return sub_221BCCB48();
}

uint64_t sub_221A82D6C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC30);
  __swift_project_value_buffer(v0, qword_27CFDDC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "containerBundleIdentifier";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "targetBundleIdentifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "snippetModelBundleIdentifier";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 21;
  *v16 = "snippetModelData";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A82FF4()
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
      case 21:
        OUTLINED_FUNCTION_5_17();
        sub_221A830D0();
        break;
      case 10:
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 11:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 20:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA18();
        break;
    }
  }

  return result;
}

void sub_221A83134()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (sub_221AE9494(*v0, *(v2 + 8)) || (OUTLINED_FUNCTION_12_7(), sub_221BCCBA8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    sub_221A7F238();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7A888();
      OUTLINED_FUNCTION_1_34();
      sub_221A7C03C();
      v3 = OUTLINED_FUNCTION_3_21();
      sub_221A83228(v3);
      v4 = *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 20);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A83228(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_2219EBFC8(*v3, *(v3 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v5, v4);
  }

  return result;
}

uint64_t sub_221A832C8(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_32_7(a1, a2);
  if ((MEMORY[0x223DA21A0](v2) & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v4 = v3[6];
  OUTLINED_FUNCTION_18_10();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v11 = v3[7];
  OUTLINED_FUNCTION_18_10();
  if (v14)
  {
    if (!v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v13);
    v17 = v10 && v15 == v16;
    if (!v17 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v18 = v3[8];
  OUTLINED_FUNCTION_18_10();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v20);
    v24 = v10 && v22 == v23;
    if (!v24 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_5(v3[9]);
  if (!(!v10 & v27))
  {
    OUTLINED_FUNCTION_122_3();
    if (!(!v28 & v27))
    {
      v34 = OUTLINED_FUNCTION_6_16();
      v35 = MEMORY[0x223DA21A0](v34);
      v36 = OUTLINED_FUNCTION_14();
      sub_2219EC02C(v36, v37);
      v38 = OUTLINED_FUNCTION_56_3();
      sub_2219EC02C(v38, v39);
      if (v35)
      {
        goto LABEL_39;
      }

      return 0;
    }

LABEL_36:
    v29 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v29, v30);
    v31 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v31, v32);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!(!v10 & v27))
  {
    goto LABEL_36;
  }

  v25 = OUTLINED_FUNCTION_6_16();
  sub_2219EC02C(v25, v26);
LABEL_39:
  v40 = v3[5];
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v41, v42);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t sub_221A83448(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_221BCE308();
  a1(0);
  sub_221A8395C(a2, a3);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A834F0(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_123_1();

  return v6(v5);
}

uint64_t sub_221A83558(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_221A835F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A50, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A83694@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_221BCCC78();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_221A83730(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A837F8()
{
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  return sub_221BCCB48();
}

uint64_t sub_221A83874()
{
  sub_221BCE308();
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A8395C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221A851FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A8554C()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v0;
}

uint64_t sub_221A855A4()
{
  OUTLINED_FUNCTION_69_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_0_0();
  v7(v6);
  return v0;
}

unint64_t sub_221A855FC()
{
  result = qword_27CFB9938;
  if (!qword_27CFB9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9938);
  }

  return result;
}

uint64_t sub_221A85650(uint64_t result, uint64_t a2)
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
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_221B9E9B8(v15, v16);
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
      v25 = sub_221BCE1B8();

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
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221A857F0()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_221A85844()
{
  result = qword_27CFB99A8;
  if (!qword_27CFB99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB99A8);
  }

  return result;
}

void sub_221A858C0()
{
  sub_221A733D0(319, &qword_27CFB9A68, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221A733D0(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_116Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_19_9(*v0);
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_108_3();
  v4 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_117Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_109_1();
    v4 = OUTLINED_FUNCTION_41_3(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_221A85AF0()
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9A88, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v2 <= 0x3F)
      {
        sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221A85C80()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221A733D0(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221A85DF8()
{
  sub_221A733D0(319, &qword_27CFB9AB0, type metadata accessor for AppIntentsProtobuf_DynamicOption, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_221A85F64()
{
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_4();
    return 0;
  }

  return result;
}

uint64_t sub_221A85FE0()
{
  v0 = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_221A733D0(319, &qword_27CFB9AD8, type metadata accessor for AppIntentsProtobuf_Error, MEMORY[0x277D83D88]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t __swift_get_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_19_9(*(v0 + 8));
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_129_3();
  v4 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_72Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v0)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_130_2();
    v2 = OUTLINED_FUNCTION_41_3(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_221A86280()
{
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_29()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  sub_2219EBFB4(v1, v0);
  sub_2219EBFB4(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_19_9@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_221BCC8B8();
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return sub_221BCD338();
}

void OUTLINED_FUNCTION_64_4()
{
  v2 = (v0 + *(v1 + 28));
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_65_5(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v3 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v7 = *v5;
  v6 = v5[1];
}

void OUTLINED_FUNCTION_68_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_70_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_72_4()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_75_5()
{
  result = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_81_4()
{
  v1 = *(v0 + *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_86_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_221A857F0();
}

void OUTLINED_FUNCTION_92_4(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return sub_221A82A00();
}

uint64_t OUTLINED_FUNCTION_94_3()
{

  return sub_221A82A00();
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_106_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_117_3(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ActionOutput(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_119_3()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_126_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_134_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_137_2(__n128 a1)
{
  *v1 = a1;
  v4 = v1 + *(v2 + 20);

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return sub_221A8554C();
}

uint64_t OUTLINED_FUNCTION_141_2()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_143_2(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return sub_221BCD2C8();
}

uint64_t OUTLINED_FUNCTION_148_2()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_149_1()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_150_1()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_221A857F0();
}

uint64_t sub_221A86F0C()
{
  OUTLINED_FUNCTION_314();
  sub_221A1AB78();
  return sub_221BCE358();
}

uint64_t sub_221A86F4C()
{
  OUTLINED_FUNCTION_314();
  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221A86FD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_314();
  a3(v4);
  OUTLINED_FUNCTION_394();
  return sub_221BCE358();
}

uint64_t sub_221A8702C()
{
  OUTLINED_FUNCTION_270_0();
  MEMORY[0x223DA4060](v0 + 100);
  return sub_221BCE358();
}

uint64_t sub_221A8706C()
{
  OUTLINED_FUNCTION_270_0();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A870AC()
{
  OUTLINED_FUNCTION_270_0();
  MEMORY[0x223DA4060](v0 + 801);
  return sub_221BCE358();
}

uint64_t sub_221A870EC()
{
  OUTLINED_FUNCTION_270_0();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A87134()
{
  OUTLINED_FUNCTION_270_0();
  MEMORY[0x223DA4060](v0 + 301);
  return sub_221BCE358();
}

uint64_t sub_221A87174()
{
  OUTLINED_FUNCTION_270_0();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A871BC(uint64_t a1)
{
  OUTLINED_FUNCTION_314();
  MEMORY[0x223DA4060](a1);
  return sub_221BCE358();
}

uint64_t sub_221A871FC()
{
  OUTLINED_FUNCTION_270_0();
  MEMORY[0x223DA4060](v0 + 800);
  return sub_221BCE358();
}

uint64_t sub_221A8723C()
{
  OUTLINED_FUNCTION_314();
  sub_221BCE338();
  return sub_221BCE358();
}

uint64_t sub_221A8727C()
{
  OUTLINED_FUNCTION_337();
  sub_221BCE338();
  return sub_221BCE358();
}

uint64_t sub_221A872B8()
{
  OUTLINED_FUNCTION_337();
  Entitlement.Constants.rawValue.getter();
  sub_221BCD448();

  return sub_221BCE358();
}

uint64_t sub_221A87314()
{
  OUTLINED_FUNCTION_337();
  MEMORY[0x223DA4060](v0 + 100);
  return sub_221BCE358();
}

uint64_t sub_221A8735C()
{
  OUTLINED_FUNCTION_337();
  MEMORY[0x223DA4060](v0 + 301);
  return sub_221BCE358();
}

uint64_t sub_221A8739C()
{
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A873E4(uint64_t a1, uint64_t a2)
{
  sub_221BCE308();
  MEMORY[0x223DA4060](a2);
  return sub_221BCE358();
}

uint64_t sub_221A87428()
{
  OUTLINED_FUNCTION_337();
  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221A87468()
{
  OUTLINED_FUNCTION_337();
  sub_221A1AB78();
  return sub_221BCE358();
}

uint64_t sub_221A874A4()
{
  OUTLINED_FUNCTION_337();
  MEMORY[0x223DA4060](v0 + 801);
  return sub_221BCE358();
}

uint64_t sub_221A874E4()
{
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A87524()
{
  OUTLINED_FUNCTION_337();
  MEMORY[0x223DA4060](v0 + 800);
  return sub_221BCE358();
}

uint64_t sub_221A87564()
{
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_364(v0);
  return sub_221BCE358();
}

uint64_t sub_221A875E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_221BCE308();
  a4(v5);
  OUTLINED_FUNCTION_394();
  return sub_221BCE358();
}

uint64_t sub_221A87638()
{
  OUTLINED_FUNCTION_337();
  sub_221BCD448();

  return sub_221BCE358();
}

uint64_t sub_221A876E0()
{
  OUTLINED_FUNCTION_337();
  v1 = *&aCreated_2[8 * v0];
  sub_221BCD448();

  return sub_221BCE358();
}

void sub_221A87734()
{
  sub_221BCC8C8();
  v0 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  OUTLINED_FUNCTION_68_2(*(v0 + 20));
}

uint64_t sub_221A87768@<X0>(uint64_t a1@<X8>)
{
  sub_221BCC8C8();
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_68_2(*(v2 + 20));
  result = OUTLINED_FUNCTION_101_3(v3);
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_221A877B8()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 57) & 1;
}

uint64_t sub_221A877F0()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v4 + 57) = v0 & 1;
  return result;
}

BOOL sub_221A87854()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return OUTLINED_FUNCTION_301(*(v0 + 57));
}

uint64_t sub_221A8788C()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 58) & 1;
}

uint64_t sub_221A878C4()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v4 + 58) = v0 & 1;
  return result;
}

BOOL sub_221A87928()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return OUTLINED_FUNCTION_301(*(v0 + 58));
}

uint64_t sub_221A87960()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 59) & 1;
}

uint64_t sub_221A87998()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v4 + 59) = v0 & 1;
  return result;
}

BOOL sub_221A879FC()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return OUTLINED_FUNCTION_301(*(v0 + 59));
}

double sub_221A87A34()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  result = *(v0 + 64);
  if (*(v0 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_221A87A78(double a1)
{
  v3 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v7);
    swift_allocObject();
    sub_221A91E70();
    v6 = v8;
    *(v1 + v3) = v8;
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v6 + 64) = a1;
  *(v6 + 72) = 0;
  return result;
}

BOOL sub_221A87B04()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return (*(v0 + 72) & 1) == 0;
}

uint64_t sub_221A87B40()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A87B90()
{
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v4);
  v6 = OUTLINED_FUNCTION_307(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v8);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v9);
  }

  OUTLINED_FUNCTION_228_1();
  v10 = *(v7 + 88);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;
}

BOOL sub_221A87C0C()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 88) != 0;
}

uint64_t sub_221A87C48()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A87C98()
{
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v4);
  v6 = OUTLINED_FUNCTION_307(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v8);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v9);
  }

  OUTLINED_FUNCTION_228_1();
  v10 = *(v7 + 104);
  *(v7 + 96) = v2;
  *(v7 + 104) = v0;
}

BOOL sub_221A87D14()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 104) != 0;
}

uint64_t sub_221A87D50()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 112) & 1;
}

uint64_t sub_221A87D88()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v4 + 112) = v0 & 1;
  return result;
}

BOOL sub_221A87DEC()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return OUTLINED_FUNCTION_301(*(v0 + 112));
}

uint64_t sub_221A87E24()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return *(v0 + 121) & 1;
}

uint64_t sub_221A87E5C()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1();
  *(v4 + 121) = v0 & 1;
  return result;
}

BOOL sub_221A87EC0()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2();
  return OUTLINED_FUNCTION_301(*(v0 + 121));
}

uint64_t sub_221A87EF8@<X0>(_OWORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v7 = OUTLINED_FUNCTION_29_8();
  v8 = *(v1 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v7) + 20));
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  OUTLINED_FUNCTION_22_9(v2);
  if (v9)
  {
    sub_221A70CBC(a1);
    result = OUTLINED_FUNCTION_22_9(v2);
    if (!v9)
    {
      return sub_2219A1CC8(v2, &unk_27CFBB740, &qword_221BE09F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A87FF8()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_59_6();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v5);
  v7 = OUTLINED_FUNCTION_307(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v9);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v10);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v11 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A880EC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x277D84F90];
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v4 = v1 + v3[7];
  sub_221BCC8C8();
  v5 = v3[8];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  OUTLINED_FUNCTION_139_2(v6);
  v7 = v3[9];
  v8 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  OUTLINED_FUNCTION_139_2(v8);
  v9 = v3[10];
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  OUTLINED_FUNCTION_139_2(v10);
  v11 = v3[11];
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_139_2(v12);
  v13 = v3[12];
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v14 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_221A8819C()
{
  OUTLINED_FUNCTION_21();
  v43 = v3;
  v4 = OUTLINED_FUNCTION_345();
  v5 = type metadata accessor for AppIntentsProtobuf_Value(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_8();
  v42 = v9;
  v10 = OUTLINED_FUNCTION_133_3();
  v11 = type metadata accessor for AppIntentsProtobuf_Error(v10);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v17 = (v16 - v15);
  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  v19 = OUTLINED_FUNCTION_57_6(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_55_8();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (v41 - v24);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_152_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA438, &qword_221BE0AA0);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74_5();
  v31 = *(v30 + 56);
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_282_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_115_2();
    sub_221ADFEBC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v2, v2[1], *v17, v17[1]))
      {
        v38 = *(v11 + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v39, v40);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_35();
LABEL_12:
    sub_221ADFE28();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_115_2();
    sub_221ADFEBC();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      OUTLINED_FUNCTION_10_14();
      v34 = v42;
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v1, v1[1], *v34, v34[1]))
      {
        v35 = *(v41[1] + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v36, v37);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_4_19();
      sub_221ADFE28();
      OUTLINED_FUNCTION_4_19();
LABEL_18:
      sub_221ADFE28();
      OUTLINED_FUNCTION_78_0();
      sub_221ADFE28();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_19();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_115_2();
  sub_221ADFEBC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_13:
    sub_2219A1CC8(v0, &qword_27CFBA438, &qword_221BE0AA0);
    goto LABEL_19;
  }

  v33 = *v25 == *(v0 + v31);
  sub_221ADFE28();
LABEL_19:
  OUTLINED_FUNCTION_22();
}

void sub_221A88564()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_Error(v4);
  v6 = OUTLINED_FUNCTION_43_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = OUTLINED_FUNCTION_98_3();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(v9);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_330();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA458, &qword_221BE0AB8);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      v21 = *v3 == *(v0 + v20);
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA458, &qword_221BE0AB8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_311();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_77_5();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A887E8()
{
  OUTLINED_FUNCTION_281_0();
  v1(0);
  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0(0);
  OUTLINED_FUNCTION_322(v6);
  sub_221BCC8C8();
  v7 = *(v6 + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_221A88860()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_345();
  v3 = type metadata accessor for AppIntentsProtobuf_Value(v2);
  v4 = OUTLINED_FUNCTION_58_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v29 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_2_1(v29);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  v16 = (&v29 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA478, &qword_221BE0AD0);
  OUTLINED_FUNCTION_8_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74_5();
  v22 = *(v21 + 56);
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() == 1)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      v23 = OUTLINED_FUNCTION_205_1();
      if (MEMORY[0x223DA21A0](v23))
      {
        OUTLINED_FUNCTION_267_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v24, v25);
        OUTLINED_FUNCTION_132_3();
      }

      OUTLINED_FUNCTION_4_19();
      sub_221ADFE28();
      OUTLINED_FUNCTION_4_19();
LABEL_14:
      sub_221ADFE28();
      OUTLINED_FUNCTION_76_2();
      sub_221ADFE28();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_19();
  }

  else
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() != 1)
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v16, v16[1], *v1, v1[1]))
      {
        v26 = *(v29 + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_35();
  }

  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA478, &qword_221BE0AD0);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_221A88BA8()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_Error(v4);
  v6 = OUTLINED_FUNCTION_43_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = OUTLINED_FUNCTION_98_3();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(v9);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_330();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA498, &qword_221BE0AE8);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      v21 = *v3 ^ *(v0 + v20);
      OUTLINED_FUNCTION_45_8();
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA498, &qword_221BE0AE8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_311();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_45_8();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

void sub_221A88E1C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_Error(v4);
  v6 = OUTLINED_FUNCTION_43_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = OUTLINED_FUNCTION_98_3();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(v9);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_330();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4B0, &qword_221BE0B00);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      v21 = *v3 ^ *(v0 + v20);
      OUTLINED_FUNCTION_54_6();
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA4B0, &qword_221BE0B00);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_311();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_54_6();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A89090@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  OUTLINED_FUNCTION_139_2(v4);
  v5 = v1 + *(v2 + 28);
  return sub_221BCC8C8();
}

uint64_t sub_221A890EC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v3 = OUTLINED_FUNCTION_259_0(v2);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(v3);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + *(v2 + 24));
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = a1 + *(v2 + 28);
  return sub_221BCC8C8();
}

uint64_t sub_221A89158@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v4 = OUTLINED_FUNCTION_333(v3);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(v4);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + v2[6]) = MEMORY[0x277D84F90];
  v9 = v1 + v2[7];
  sub_221BCC8C8();
  v10 = v2[8];
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  result = OUTLINED_FUNCTION_139_2(v11);
  v13 = v1 + v2[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_221A891E0()
{
  OUTLINED_FUNCTION_281_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v3 = v2(0);
  v4 = OUTLINED_FUNCTION_259_0(v3);
  v0(v4);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v1 + *(v3 + 24);
  return sub_221BCC8C8();
}

uint64_t sub_221A89248@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v4 = OUTLINED_FUNCTION_333(v3);
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(v4);
  OUTLINED_FUNCTION_139_2(v5);
  v6 = v1 + *(v2 + 24);
  sub_221BCC8C8();
  v7 = *(v2 + 28);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v8 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_221A892B0(uint64_t a1@<X8>)
{
  sub_221BCC8C8();
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  OUTLINED_FUNCTION_68_2(*(v2 + 20));
  *(a1 + *(v3 + 24)) = 2;
}

void sub_221A892F0()
{
  OUTLINED_FUNCTION_21();
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v2 = OUTLINED_FUNCTION_8_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_30_8();
  v5 = OUTLINED_FUNCTION_133_3();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(v5);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v10 = OUTLINED_FUNCTION_133_3();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(v10);
  v12 = OUTLINED_FUNCTION_8_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v15 = OUTLINED_FUNCTION_133_3();
  v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(v15);
  v17 = OUTLINED_FUNCTION_8_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_12(v20, v52);
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v22 = OUTLINED_FUNCTION_8_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30_8();
  v25 = OUTLINED_FUNCTION_133_3();
  v26 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(v25);
  v27 = OUTLINED_FUNCTION_8_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_8();
  v30 = OUTLINED_FUNCTION_133_3();
  v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(v30);
  v32 = OUTLINED_FUNCTION_8_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_8();
  v35 = OUTLINED_FUNCTION_133_3();
  v36 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v35);
  v37 = OUTLINED_FUNCTION_2_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_105_3();
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_275();
  v44 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_163();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA518, &unk_221BE0B60);
  OUTLINED_FUNCTION_8_1(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74_5();
  v51 = *(v50 + 56);
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 1)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_24();
      sub_221AAB544();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 2)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AA6734();
      sub_221ADFE28();
      goto LABEL_22;
    case 3u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() == 3)
      {
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_324();
        sub_221AA1AE8();
        sub_221ADFE28();
LABEL_22:
        sub_221ADFE28();
        OUTLINED_FUNCTION_128_2();
        sub_221ADFE28();
      }

      else
      {
        OUTLINED_FUNCTION_195_2();
LABEL_20:
        sub_221ADFE28();
        sub_2219A1CC8(v0, &qword_27CFBA518, &unk_221BE0B60);
      }

      OUTLINED_FUNCTION_22();
      return;
    case 4u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_118();
      sub_221AACB88();
      sub_221ADFE28();
      goto LABEL_22;
    case 5u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 5)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AAE2B0();
      sub_221ADFE28();
      goto LABEL_22;
    case 6u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_24();
      sub_221AA4878();
LABEL_16:
      sub_221ADFE28();
      goto LABEL_22;
    default:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AA2F04();
      sub_221ADFE28();
      goto LABEL_22;
  }
}

uint64_t sub_221A899E4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_101_3(v3);
  return sub_221BCC8C8();
}

void sub_221A89A18()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA580, &qword_221BE0BE8);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_123_2();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_27_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_123_2();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_123_2();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA580, &qword_221BE0BE8);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A89CD0()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA528, &qword_221BE0B78);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_122_4();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_26_8();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_122_4();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_122_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA528, &qword_221BE0B78);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A89F88()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5C0, &unk_221BE0C30);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_121_4();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_25_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_121_4();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_121_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA5C0, &unk_221BE0C30);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A240()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  v6 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(v5) + 32);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  OUTLINED_FUNCTION_22_9(v0);
  if (v7)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    result = OUTLINED_FUNCTION_22_9(v0);
    if (!v7)
    {
      return sub_2219A1CC8(v0, &qword_27CFBA3D0, &qword_221BE0A18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_260_0();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

void sub_221A8A32C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA558, &unk_221BE0BB0);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_120_2();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_120_2();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_120_2();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA558, &unk_221BE0BB0);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A5E4@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  OUTLINED_FUNCTION_101_3(v3);
  return sub_221BCC8C8();
}

uint64_t sub_221A8A620@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  OUTLINED_FUNCTION_101_3(v1);
  sub_221BCC8C8();
  v2 = *(v1 + 28);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v3 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_221A8A680()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_182_2();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(v2);
  v4 = OUTLINED_FUNCTION_8_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_8();
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  v8 = OUTLINED_FUNCTION_58_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_13();
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  v12 = OUTLINED_FUNCTION_57_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA568, &unk_221BE0BC8);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_74_5();
  v23 = *(v22 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() == 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AA9150();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_52_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

LABEL_5:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA568, &unk_221BE0BC8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_241_1();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_334();
  if (v24)
  {
    v25 = *(v17 + 1);
    v26 = *(v1 + 8);
    sub_221A16A34();
    if (v27)
    {
      OUTLINED_FUNCTION_232_0();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v28, v29);
      OUTLINED_FUNCTION_132_3();
    }
  }

  OUTLINED_FUNCTION_258_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_52_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A9A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return OUTLINED_FUNCTION_357();
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8();
  }
}

uint64_t sub_221A8AA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_221AE0070();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_221A8AB1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  OUTLINED_FUNCTION_101_3(v1);
  return sub_221BCC8C8();
}

void sub_221A8AB64()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA538, &qword_221BE0B90);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_119_4();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_119_4();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_119_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA538, &qword_221BE0B90);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A8AE1C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA598, &unk_221BE0C00);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_118_4();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_22_10();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_118_4();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_118_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA598, &unk_221BE0C00);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A8B0D4()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5A8, &qword_221BE0C18);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305(v19);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_117_4();
    sub_221ADFEBC();
    v30 = *v3;
    v29 = v3[1];
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v23 && v29 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_21_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_117_4();
    sub_221ADFEBC();
    v31 = *v2;
    v29 = v2[1];
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_117_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v23 = v23 && v21 == v22;
    if (v23 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v26 = v23 && v24 == v25;
      if (v26 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v27, v28);
        OUTLINED_FUNCTION_132_3();
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA5A8, &qword_221BE0C18);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8B408(char a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_221A8B460()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  OUTLINED_FUNCTION_302(Request);
  sub_221BCC8C8();
  v6 = *(v0 + 24);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  OUTLINED_FUNCTION_139_2(v7);
  v8 = *(v0 + 28);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_221A8B4E4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  OUTLINED_FUNCTION_101_3(DeferredPropertyValueRequest);
  sub_221BCC8C8();
  v4 = *(DeferredPropertyValueRequest + 28);
  v5 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_139_2(v5);
  v6 = *(DeferredPropertyValueRequest + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v7 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_221A8B554()
{
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  OUTLINED_FUNCTION_321(AsyncIteratorRequest);
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_221A8B584()
{
  v1 = OUTLINED_FUNCTION_40_3();
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(v1);
  result = OUTLINED_FUNCTION_321(AsyncIteratorRequest);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

BOOL sub_221A8B5B4()
{
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  OUTLINED_FUNCTION_321(AsyncIteratorRequest);
  return (*(v1 + 8) & 1) == 0;
}

uint64_t sub_221A8B634@<X0>(uint64_t a1@<X8>)
{
  sub_221BCC8C8();
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v4 = OUTLINED_FUNCTION_333(AsyncIteratorRequest);
  type metadata accessor for AppIntentsProtobuf_UUID(v4);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = a1 + v1[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  OUTLINED_FUNCTION_68_2(v1[7]);
  v10 = v1[8];
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v11 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_221A8B6BC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = v1 + *(FileChunkRequest + 28);
  sub_221BCC8C8();
  v4 = *(FileChunkRequest + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v5 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_221A8B718@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_29_8();
  v8 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(v7) + 24);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v9)
  {
    sub_221A6F310(a1);
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v9)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB690, &qword_221BDADD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8B804(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A8B870()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v5 = (v1 + *(v4(v3) + 28));
  v6 = v5[1];

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t sub_221A8B8D8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  OUTLINED_FUNCTION_302(OptionsForActionRequest);
  sub_221BCC8C8();
  v3 = v1[6];
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_139_2(v4);
  OUTLINED_FUNCTION_68_2(v1[7]);
  v5 = v1[8];
  v6 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  OUTLINED_FUNCTION_139_2(v6);
  v7 = v1[9];
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v8 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_221A8B95C(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  sub_221BCC8C8();
  v6 = a1(0);
  v7 = *(v6 + 20);
  a2(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = *(v6 + 24);
  a3(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_221A8B9F8(uint64_t (*a1)(void))
{
  sub_221BCC8C8();
  v2 = a1(0);
  v3 = v2[5];
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[6];
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v2[7];
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_221A8BAA8(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_322(v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A8BB10()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_219_2(v5);
  v6 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A8BB74()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_321(v0);
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_221A8BBA4(int a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  result = OUTLINED_FUNCTION_321(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

BOOL sub_221A8BBD8()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_321(v0);
  return (*(v1 + 4) & 1) == 0;
}

uint64_t sub_221A8BC2C(char a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_221A8BC84()
{
  OUTLINED_FUNCTION_281_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v3 = v2(0);
  OUTLINED_FUNCTION_322(v3);
  sub_221BCC8C8();
  v4 = *(v3 + 24);
  v0(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_221A8BCF4()
{
  OUTLINED_FUNCTION_109_2();
  v4 = v3;
  sub_221BCC8C8();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    OUTLINED_FUNCTION_24();
    swift_once();
  }

  *(v4 + v5) = *v0;
}

void sub_221A8BD70()
{
  OUTLINED_FUNCTION_21();
  v112 = v1;
  v113 = v2;
  v106 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  v3 = OUTLINED_FUNCTION_2_1(v106);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_8();
  v108 = v6;
  v7 = OUTLINED_FUNCTION_133_3();
  v104 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v7);
  v8 = OUTLINED_FUNCTION_2_1(v104);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_12(v11, v97);
  v12 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v13 = OUTLINED_FUNCTION_8_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_8();
  v102 = v16;
  v17 = OUTLINED_FUNCTION_133_3();
  v101 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v17);
  v18 = OUTLINED_FUNCTION_2_1(v101);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  v107 = v21;
  v22 = OUTLINED_FUNCTION_133_3();
  v100 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v22);
  v23 = OUTLINED_FUNCTION_2_1(v100);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_8();
  v105 = v26;
  v27 = OUTLINED_FUNCTION_133_3();
  v98 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v27);
  v28 = OUTLINED_FUNCTION_2_1(v98);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_30_8();
  v103 = v31;
  v32 = OUTLINED_FUNCTION_133_3();
  v97 = type metadata accessor for AppIntentsProtobuf_Error(v32);
  v33 = OUTLINED_FUNCTION_2_1(v97);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_30_8();
  v99 = v36;
  v37 = OUTLINED_FUNCTION_133_3();
  v38 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v37);
  v39 = OUTLINED_FUNCTION_8_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_0();
  v42 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  v43 = OUTLINED_FUNCTION_2_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_5();
  v111 = v46 - v47;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v48);
  v110 = &v97 - v49;
  OUTLINED_FUNCTION_105_3();
  v51 = MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  v109 = &v97 - v52;
  OUTLINED_FUNCTION_105_3();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v97 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v97 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = (&v97 - v61);
  MEMORY[0x28223BE20](v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA708, &qword_221BE0CA8);
  OUTLINED_FUNCTION_8_1(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_97_3();
  v68 = *(v67 + 56);
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_118();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 1)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_6_17();
      v89 = v99;
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v62, v62[1], *v89, v89[1]))
      {
        v90 = *(v97 + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v91, v92);
        OUTLINED_FUNCTION_361();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_41;
    case 2u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 2)
      {
        OUTLINED_FUNCTION_150_2();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      v72 = v103;
      sub_221ADFDB4();
      v73 = *(v98 + 20);
      v74 = *&v59[v73];
      v75 = *(v72 + v73);
      if (v74 == v75 || (v76 = *&v59[v73], , , v77 = sub_221ABFF18(v74, v75), , , (v77 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v78, v79);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_253_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_0_0();
      goto LABEL_41;
    case 3u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 3)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      v80 = v105;
      sub_221ADFDB4();
      v81 = *(v100 + 20);
      if (*&v56[v81] == *(v80 + v81) || (v82 = *&v56[v81], , , v83 = OUTLINED_FUNCTION_0_0(), sub_221AC67E0(v83, v84), OUTLINED_FUNCTION_370(), , (v42 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v85, v86);
        OUTLINED_FUNCTION_369();
      }

      OUTLINED_FUNCTION_252_1();
      sub_221ADFE28();
      goto LABEL_41;
    case 4u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 4)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279(v101);
      if (v69)
      {
        goto LABEL_30;
      }

      v70 = OUTLINED_FUNCTION_0_0();
      sub_221AC9374(v70, v71);
      OUTLINED_FUNCTION_370();

      if (v42)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    case 5u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 5)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      sub_221ACB5A4();
      sub_221ADFE28();
      goto LABEL_41;
    case 6u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 6)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279(v104);
      if (v69)
      {
        goto LABEL_30;
      }

      v93 = OUTLINED_FUNCTION_0_0();
      sub_221ACD6B8(v93, v94);
      OUTLINED_FUNCTION_370();

      if (v42)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    case 7u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 7)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      OUTLINED_FUNCTION_346();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279(v106);
      if (v69 || (, , v87 = OUTLINED_FUNCTION_0_0(), sub_221AC32E8(v87, v88), OUTLINED_FUNCTION_370(), , (v42 & 1) != 0))
      {
LABEL_30:
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v95, v96);
        OUTLINED_FUNCTION_136_0();
        OUTLINED_FUNCTION_369();
      }

LABEL_31:
      sub_221ADFE28();
      goto LABEL_41;
    default:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336())
      {
        OUTLINED_FUNCTION_195_2();
LABEL_34:
        sub_221ADFE28();
        sub_2219A1CC8(v0, &qword_27CFBA708, &qword_221BE0CA8);
      }

      else
      {
        OUTLINED_FUNCTION_291_0();
        sub_221ADFDB4();
        OUTLINED_FUNCTION_323();
        sub_221ABE4A4();
        sub_221ADFE28();
        OUTLINED_FUNCTION_324();
LABEL_41:
        sub_221ADFE28();
        OUTLINED_FUNCTION_50_5();
        sub_221ADFE28();
      }

      OUTLINED_FUNCTION_22();
      return;
  }
}

uint64_t sub_221A8C850()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221ABEE50(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8C93C()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221ABEE50(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CA20()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221ABEE50(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CB4C@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  v7 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v6) + 28);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v8)
  {
    *a1 = xmmword_221BD8630;
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v8)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8CC2C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v1);
  sub_2219A1CC8(v0 + *(v2 + 28), &unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_103_4();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v3 = OUTLINED_FUNCTION_318();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_221A8CCA4@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  v7 = a1(0);
  v8 = a4 + v7[5];
  sub_221BCC8C8();
  v9 = v7[6];
  a2(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v7[7];
  a3(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_221A8CD4C()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC2204(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CE38()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC2204(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CF1C@<X0>(_OWORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v7 = OUTLINED_FUNCTION_29_8();
  v8 = *(v1 + *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v7) + 20));
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_269_0();
  v9 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_22_9(v2);
  if (v10)
  {
    *a1 = xmmword_221BD8630;
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    OUTLINED_FUNCTION_68_2(v9[6]);
    OUTLINED_FUNCTION_68_2(v9[7]);
    OUTLINED_FUNCTION_68_2(v9[8]);
    *(a1 + v9[9]) = xmmword_221BD8640;
    result = OUTLINED_FUNCTION_22_9(v2);
    if (!v10)
    {
      return sub_2219A1CC8(v2, &qword_27CFB9920, &unk_221BDADC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8D050()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_59_6();
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v5);
  v7 = OUTLINED_FUNCTION_307(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC2204(v10);
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D144()
{
  v1 = OUTLINED_FUNCTION_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  v7 = *(v0 + *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v6) + 20));
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v8 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v13, v14, &unk_221BDADC0);
  return v12;
}

uint64_t sub_221A8D258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_40_3();
  v13 = *(v12(v11) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a3(0);
    OUTLINED_FUNCTION_174_2(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_55_7();
    v16 = a4(v18);
    *(v10 + v13) = v16;
  }

  v19 = *a5;
  OUTLINED_FUNCTION_228_1();
  v20 = *(v16 + v19);
  *(v16 + v19) = v5;
}

uint64_t sub_221A8D3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221AE00DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_221A8D478@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = a1 + *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0) + 28);
  return sub_221BCC8C8();
}

uint64_t sub_221A8D4C0()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC50F8(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D5B8()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC50F8(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D69C()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC50F8(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D780()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC50F8(v11);
    OUTLINED_FUNCTION_124_3(v12);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v13 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D880(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_52_6();
  v9 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v8) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_55_7();
    v12 = sub_221AC50F8(v14);
    *(v7 + v9) = v12;
  }

  v15 = (v12 + *a3);
  OUTLINED_FUNCTION_294_0();
  v16 = v15[1];
  *v15 = v5;
  v15[1] = v3;
}

uint64_t sub_221A8D918()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC7EF0();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DA04()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC7EF0();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DAE8()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC7EF0();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DBCC()
{
  OUTLINED_FUNCTION_69_1();
  sub_221BCC8C8();
  v2 = *(v1(0) + 20);
  v0(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A8DC34()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC7EF0();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DD28()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221ACC164();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DE14()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_59_6();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v6);
  v8 = OUTLINED_FUNCTION_307(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221ACC164();
    OUTLINED_FUNCTION_124_3(v11);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v12 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DEF8()
{
  OUTLINED_FUNCTION_281_0();
  v1(0);
  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0(0);
  OUTLINED_FUNCTION_322(v6);
  return sub_221BCC8C8();
}

void sub_221A8DF44()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  v11 = OUTLINED_FUNCTION_57_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7A8, &qword_221BE0D00);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD00FC();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_49_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA7A8, &qword_221BE0D00);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v21 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v21))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_132_3();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_49_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8E228@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  v7 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v6) + 24);
  OUTLINED_FUNCTION_269_0();
  v8 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    *a1 = 0;
    a1[1] = v10;
    v11 = a1 + v8[6];
    sub_221BCC8C8();
    v12 = v8[7];
    type metadata accessor for AppIntentsProtobuf_UUID(0);
    v13 = OUTLINED_FUNCTION_50_4();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    *(a1 + v8[8]) = 2;
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v9)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB980, &unk_221BE0A20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125_3();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8E32C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v1);
  sub_2219A1CC8(v0 + *(v2 + 24), &unk_27CFBB980, &unk_221BE0A20);
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_103_4();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v3 = OUTLINED_FUNCTION_318();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_221A8E3A4()
{
  v0 = OUTLINED_FUNCTION_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_29_8();
  v6 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v5) + 24);
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v7 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v12, v13, &unk_221BE0A20);
  return v11;
}

void sub_221A8E44C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  v7 = OUTLINED_FUNCTION_8_1(DeferredPropertyValue);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  v11 = OUTLINED_FUNCTION_57_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7E0, &qword_221BE0D28);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD2130();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_48_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA7E0, &qword_221BE0D28);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v21 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v21))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_132_3();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_48_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A8E730()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  v7 = OUTLINED_FUNCTION_8_1(OptionsForAction);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  v11 = OUTLINED_FUNCTION_57_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA808, &qword_221BE0D48);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD3FE4();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_47_5();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA808, &qword_221BE0D48);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v21 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v21))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_132_3();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_47_5();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8EA14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  OUTLINED_FUNCTION_302(AsyncIterator);
  sub_221BCC8C8();
  v3 = *(v1 + 24);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221A8EA6C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  v7 = OUTLINED_FUNCTION_8_1(AsyncIterator);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  v11 = OUTLINED_FUNCTION_57_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA840, &qword_221BE0D78);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD6050();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_46_6();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA840, &qword_221BE0D78);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v21 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v21))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_132_3();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_46_6();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8ED50@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0) + 20);
  return sub_221BCC8C8();
}

void sub_221A8ED90()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_345();
  v4 = type metadata accessor for AppIntentsProtobuf_Error(v3);
  v5 = OUTLINED_FUNCTION_58_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_13();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  v8 = OUTLINED_FUNCTION_2_1(NextAsyncIteratorResults);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_8();
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_152_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA870, &qword_221BE0D98);
  OUTLINED_FUNCTION_8_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74_5();
  v21 = *(v20 + 56);
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() == 1)
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      v22 = OUTLINED_FUNCTION_205_1();
      if (MEMORY[0x223DA21A0](v22))
      {
        OUTLINED_FUNCTION_267_0();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v23, v24);
        OUTLINED_FUNCTION_132_3();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
LABEL_14:
      sub_221ADFE28();
      OUTLINED_FUNCTION_75_6();
      sub_221ADFE28();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_35();
  }

  else
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() != 1)
    {
      sub_221ADFDB4();
      v25 = *v2;
      v26 = *v1;
      sub_221A174D8();
      if (v27)
      {
        v28 = *(NextAsyncIteratorResults + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v29, v30);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_243_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_39_4();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_175_0();
  }

  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA870, &qword_221BE0D98);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_221A8F0E4()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v7 = OUTLINED_FUNCTION_8_1(AppDescription);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  v11 = OUTLINED_FUNCTION_57_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8A8, &qword_221BE0DB8);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v20 = *(v19 + 56);
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221ADA618();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_53_8();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA8A8, &qword_221BE0DB8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v21 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v21))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v22, v23);
    OUTLINED_FUNCTION_132_3();
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_53_8();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8F3C8@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  OUTLINED_FUNCTION_101_3(AppDescription);
  return sub_221BCC8C8();
}

uint64_t sub_221A8F428(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA3D8, type metadata accessor for AppIntentsProtobuf_ClientMessages);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A8F4C8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA3B8, type metadata accessor for AppIntentsProtobuf_ClientMessages);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A8F590()
{
  sub_221ADB35C(&qword_27CFBA3B8, type metadata accessor for AppIntentsProtobuf_ClientMessages);

  return sub_221BCCB48();
}

uint64_t sub_221A8F60C()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BEF820);
  qword_27CFDDC60 = 0xD000000000000021;
  *algn_27CFDDC68 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A8F680()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC70);
  __swift_project_value_buffer(v0, qword_27CFDDC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_221BD8660;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "actionIdentifier";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundleIdentifier";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 10;
  *v11 = "parameters";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 20;
  *v13 = "options";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 21;
  *v15 = "environment";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 22;
  *v17 = "systemContext";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 23;
  *v19 = "requestMetadata";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 100;
  *v21 = "executionIdentifier";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A8F9C0()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    if (!v2 & v1)
    {
      switch(result)
      {
        case 100:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FE2C();
          break;
        case 2:
          goto LABEL_18;
        case 10:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FABC();
          break;
        case 1:
LABEL_18:
          OUTLINED_FUNCTION_58_6();
          sub_221BCCA98();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 20:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FB5C();
          break;
        case 21:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FC10();
          break;
        case 22:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FCC4();
          break;
        case 23:
          OUTLINED_FUNCTION_5_17();
          sub_221A8FD78();
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_221A8FABC()
{
  type metadata accessor for AppIntentsProtobuf_Property(0);
  sub_221ADB35C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);
  return sub_221BCCAC8();
}

uint64_t sub_221A8FB5C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 32);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FC10()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 36);
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FCC4()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 40);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FD78()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 44);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FE2C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 48);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

void sub_221A8FEE0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_42_8();
  if (!v2 || (OUTLINED_FUNCTION_103_5(), !v0))
  {
    v3 = v1[2];
    v4 = v1[3];
    OUTLINED_FUNCTION_25_8();
    if (!v5 || (OUTLINED_FUNCTION_124_4(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for AppIntentsProtobuf_Property(0), sub_221ADB35C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v0))
      {
        v6 = OUTLINED_FUNCTION_3_21();
        sub_221A90010(v6, v7, v8, v9);
        if (!v0)
        {
          v10 = OUTLINED_FUNCTION_3_21();
          sub_221A901F0(v10, v11, v12, v13);
          v14 = OUTLINED_FUNCTION_3_21();
          sub_221A903D0(v14, v15, v16, v17);
          v18 = OUTLINED_FUNCTION_3_21();
          sub_221A905B0(v18, v19, v20, v21);
          v22 = OUTLINED_FUNCTION_3_21();
          sub_221A90790(v22, v23, v24, v25);
          v26 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 28);
          OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A90010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 32);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB730, &unk_221BE0A40);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A901F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 36);
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

uint64_t sub_221A903D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 40);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFBA3E8, &qword_221BE0A30);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A905B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 44);
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

uint64_t sub_221A90790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0) + 48);
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

void sub_221A90970()
{
  OUTLINED_FUNCTION_21();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_345();
  v158 = type metadata accessor for AppIntentsProtobuf_UUID(v9);
  v10 = OUTLINED_FUNCTION_2_1(v158);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  v155 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_116_5();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_2_1(v157);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v22 = &v151 - v21;
  v162 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v23 = OUTLINED_FUNCTION_2_1(v162);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_8();
  v156 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_104_2();
  v159 = v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1(v161);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_104_2();
  v163 = v35;
  v36 = OUTLINED_FUNCTION_133_3();
  v167 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v36);
  v37 = OUTLINED_FUNCTION_2_1(v167);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_8();
  v160 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_8_1(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_104_2();
  v164 = v45;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F8, &qword_221BE0A68);
  OUTLINED_FUNCTION_2_1(v166);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_107_5(v49, v151);
  v50 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v51 = OUTLINED_FUNCTION_67_4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_30_8();
  v165 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_104_2();
  v169 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA400, &qword_221BE0A70);
  OUTLINED_FUNCTION_2_1(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v63);
  v65 = OUTLINED_FUNCTION_41_4(v64, v151);
  v66 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v65);
  v67 = OUTLINED_FUNCTION_43_8(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_32_8();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  OUTLINED_FUNCTION_8_1(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_157();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA408, &qword_221BE0A78);
  OUTLINED_FUNCTION_57_6(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_225_0();
  v78 = *v6;
  v79 = v6[1];
  OUTLINED_FUNCTION_102_2();
  v82 = v82 && v80 == v81;
  if (!v82 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_36;
  }

  v83 = v6[2] == v8[2] && v6[3] == v8[3];
  if (!v83 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_36;
  }

  v84 = v6[4];
  v85 = v8[4];
  sub_221A15F10();
  if ((v86 & 1) == 0)
  {
    goto LABEL_36;
  }

  v151 = v5;
  v152 = v22;
  v87 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v88 = *(v87 + 32);
  v89 = *(v4 + 48);
  v153 = v87;
  v154 = v6;
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v82)
  {
    OUTLINED_FUNCTION_20_8(v1 + v89);
    if (v82)
    {
      sub_2219A1CC8(v1, &unk_27CFBB730, &unk_221BE0A40);
      goto LABEL_25;
    }

LABEL_20:
    v91 = &qword_27CFBA408;
    v92 = &qword_221BE0A78;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v89);
  if (v90)
  {
    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_20;
  }

  sub_221ADFDB4();
  v94 = *(v0 + 20);
  v95 = *(v3 + v94);
  v96 = *(v2 + v94);
  if (v95 != v96)
  {
    v97 = *(v3 + v94);

    v98 = sub_221A93780(v95, v96);

    if (!v98)
    {
      sub_221ADFE28();
      OUTLINED_FUNCTION_298();
      sub_221ADFE28();
      v91 = &unk_27CFBB730;
      v92 = &unk_221BE0A40;
      goto LABEL_21;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v99, v100);
  OUTLINED_FUNCTION_70_0();
  v101 = sub_221BCD338();
  sub_221ADFE28();
  OUTLINED_FUNCTION_39_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &unk_27CFBB730, &unk_221BE0A40);
  if (v101)
  {
LABEL_25:
    v102 = v153;
    v103 = v153[9];
    v104 = *(v60 + 48);
    v105 = v170;
    OUTLINED_FUNCTION_268_0();
    OUTLINED_FUNCTION_266_0();
    OUTLINED_FUNCTION_66_3(v105);
    if (v82)
    {
      OUTLINED_FUNCTION_39_8(v105 + v104);
      if (v82)
      {
        sub_2219A1CC8(v105, &unk_27CFBB650, &qword_221BE0A38);
        goto LABEL_44;
      }
    }

    else
    {
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v105 + v104);
      if (!v106)
      {
        OUTLINED_FUNCTION_261_0();
        sub_221ADFDB4();
        OUTLINED_FUNCTION_136_3();
        if (v108)
        {
          v111 = v109 == v110;
        }

        else
        {
          v111 = 0;
        }

        if (v111 || (sub_221BCE1B8() & 1) != 0)
        {
          v112 = dword_27CFBB664;
          sub_221BCC8D8();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v113, v114);
          OUTLINED_FUNCTION_271_0();
          OUTLINED_FUNCTION_361();
          OUTLINED_FUNCTION_242_1();
          sub_221ADFE28();
          OUTLINED_FUNCTION_300();
          sub_2219A1CC8(v105, &unk_27CFBB650, &qword_221BE0A38);
          if ((v112 & 1) == 0)
          {
            goto LABEL_36;
          }

LABEL_44:
          v115 = v102[10];
          v116 = *(v166 + 48);
          v117 = v168;
          OUTLINED_FUNCTION_268_0();
          v1 = v117;
          OUTLINED_FUNCTION_266_0();
          v118 = v167;
          OUTLINED_FUNCTION_81_5(v117, 1);
          if (v82)
          {
            OUTLINED_FUNCTION_39_8(v117 + v116);
            if (v82)
            {
              sub_2219A1CC8(v117, &qword_27CFBA3E8, &qword_221BE0A30);
LABEL_49:
              v119 = v102[11];
              v120 = *(v161 + 48);
              v121 = v163;
              OUTLINED_FUNCTION_268_0();
              v1 = v121;
              OUTLINED_FUNCTION_266_0();
              v122 = v162;
              OUTLINED_FUNCTION_81_5(v121, 1);
              if (v82)
              {
                OUTLINED_FUNCTION_39_8(v121 + v120);
                if (v82)
                {
                  sub_2219A1CC8(v121, &unk_27CFBB600, &qword_221BE44B0);
                  goto LABEL_76;
                }
              }

              else
              {
                sub_221A1C558();
                OUTLINED_FUNCTION_39_8(v121 + v120);
                if (!v134)
                {
                  OUTLINED_FUNCTION_7_14();
                  sub_221ADFDB4();
                  OUTLINED_FUNCTION_63_3();
                  sub_221AB95D0();
                  OUTLINED_FUNCTION_12_8();
                  sub_221ADFE28();
                  OUTLINED_FUNCTION_39_4();
                  sub_221ADFE28();
                  sub_2219A1CC8(v121, &unk_27CFBB600, &qword_221BE44B0);
                  if ((v122 & 1) == 0)
                  {
                    goto LABEL_36;
                  }

LABEL_76:
                  v135 = v102[12];
                  v136 = *(v157 + 48);
                  v137 = v152;
                  OUTLINED_FUNCTION_268_0();
                  OUTLINED_FUNCTION_266_0();
                  v138 = v158;
                  OUTLINED_FUNCTION_49_4(v137, 1, v158);
                  if (v82)
                  {
                    OUTLINED_FUNCTION_20_8(v137 + v136);
                    v139 = v137;
                    if (v82)
                    {
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    v143 = v151;
                    sub_221A1C558();
                    OUTLINED_FUNCTION_20_8(v137 + v136);
                    if (!v144)
                    {
                      OUTLINED_FUNCTION_3_22();
                      sub_221ADFDB4();
                      v145 = *v143;
                      OUTLINED_FUNCTION_349();
                      v139 = v137;
                      if (!v146 || (v147 = v143[1], OUTLINED_FUNCTION_385(), !v82))
                      {
                        OUTLINED_FUNCTION_2_30();
                        sub_221ADFE28();
                        goto LABEL_92;
                      }

                      v148 = *(v138 + 24);
                      sub_221BCC8D8();
                      OUTLINED_FUNCTION_0_41();
                      sub_221ADB35C(v149, v150);
                      OUTLINED_FUNCTION_271_0();
                      LOBYTE(v148) = sub_221BCD338();
                      OUTLINED_FUNCTION_2_30();
                      sub_221ADFE28();
                      if ((v148 & 1) == 0)
                      {
LABEL_92:
                        OUTLINED_FUNCTION_2_30();
                        sub_221ADFE28();
                        v91 = &qword_27CFB9988;
                        v92 = &qword_221BDAE20;
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_2_30();
                      sub_221ADFE28();
LABEL_80:
                      sub_2219A1CC8(v139, &qword_27CFB9988, &qword_221BDAE20);
                      v140 = v102[7];
                      sub_221BCC8D8();
                      OUTLINED_FUNCTION_0_41();
                      sub_221ADB35C(v141, v142);
                      OUTLINED_FUNCTION_379();
                      v107 = sub_221BCD338();
                      goto LABEL_37;
                    }

                    OUTLINED_FUNCTION_2_30();
                    sub_221ADFE28();
                    v139 = v137;
                  }

                  v91 = &qword_27CFB9990;
                  v92 = &qword_221BDAE28;
LABEL_93:
                  v93 = v139;
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_8_14();
                sub_221ADFE28();
              }

              v91 = &qword_27CFBA3F0;
              v92 = &qword_221BE0A60;
              goto LABEL_21;
            }
          }

          else
          {
            v123 = v164;
            sub_221A1C558();
            OUTLINED_FUNCTION_39_8(v1 + v116);
            if (!v124)
            {
              v125 = v160;
              sub_221ADFDB4();
              v126 = *(v118 + 20);
              v127 = *(v125 + v126 + 8);
              if (*(v123 + v126 + 8))
              {
                if (v127)
                {
                  OUTLINED_FUNCTION_61_3((v123 + v126));
                  v130 = v82 && v128 == v129;
                  if (v130 || (sub_221BCE1B8() & 1) != 0)
                  {
LABEL_66:
                    sub_221BCC8D8();
                    OUTLINED_FUNCTION_0_41();
                    sub_221ADB35C(v131, v132);
                    OUTLINED_FUNCTION_63_3();
                    v133 = sub_221BCD338();
                    sub_221ADFE28();
                    OUTLINED_FUNCTION_39_4();
                    sub_221ADFE28();
                    sub_2219A1CC8(v1, &qword_27CFBA3E8, &qword_221BE0A30);
                    if ((v133 & 1) == 0)
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_49;
                  }
                }
              }

              else if (!v127)
              {
                goto LABEL_66;
              }

              sub_221ADFE28();
              OUTLINED_FUNCTION_298();
              sub_221ADFE28();
              v91 = &qword_27CFBA3E8;
              v92 = &qword_221BE0A30;
LABEL_21:
              v93 = v1;
LABEL_35:
              sub_2219A1CC8(v93, v91, v92);
              goto LABEL_36;
            }

            OUTLINED_FUNCTION_175_0();
            sub_221ADFE28();
          }

          v91 = &qword_27CFBA3F8;
          v92 = &qword_221BE0A68;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_262_0();
        sub_221ADFE28();
        OUTLINED_FUNCTION_55_3();
        sub_221ADFE28();
        v91 = &unk_27CFBB650;
        v92 = &qword_221BE0A38;
LABEL_34:
        v93 = v105;
        goto LABEL_35;
      }

      sub_221ADFE28();
    }

    v91 = &qword_27CFBA400;
    v92 = &qword_221BE0A70;
    goto LABEL_34;
  }

LABEL_36:
  v107 = 0;
LABEL_37:
  OUTLINED_FUNCTION_100_3(v107);
  OUTLINED_FUNCTION_22();
}

uint64_t (*sub_221A91624(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_221A91678(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA3E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A91718(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A917E0()
{
  sub_221ADB35C(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);

  return sub_221BCCB48();
}

uint64_t sub_221A91860()
{
  if (qword_27CFB6E68 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDC60;
  v2 = *algn_27CFDDC68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x736E6F6974704F2ELL, 0xE800000000000000);

  qword_27CFDDC88 = v1;
  unk_27CFDDC90 = v2;
  return result;
}

uint64_t sub_221A91904()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC98);
  __swift_project_value_buffer(v0, qword_27CFDDC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_221BDAFB0;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 2;
  *v5 = "source";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "kind";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "interactionMode";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "donateToTranscript";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "requestUnlockIfNeeded";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "allowsPrepareBeforePerform";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "connectionOperationTimeout";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "preferredBundleIdentifier";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "exportedContentTypeIdentifier";
  *(v23 + 1) = 29;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "convertArrayResultToAsyncSequence";
  *(v25 + 1) = 33;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "payloadPrivacy";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "allowLiveActivities";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "assistantDismissalPolicy";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "snippetEnvironment";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A91DD8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 514;
  *(v0 + 59) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 2;
  *(v0 + 116) = 0;
  *(v0 + 120) = 513;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment;
  v2 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

void sub_221A91E70()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_104_2();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 57) = 514;
  *(v0 + 56) = 1;
  *(v0 + 59) = 2;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 112) = 2;
  *(v0 + 72) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 513;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_106_3();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  OUTLINED_FUNCTION_106_3();
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 32) = v12;
  *(v0 + 40) = v13;
  OUTLINED_FUNCTION_106_3();
  v14 = *(v2 + 48);
  v15 = *(v2 + 56);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v14) = *(v2 + 57);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 57) = v14;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v14) = *(v2 + 58);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 58) = v14;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v14) = *(v2 + 59);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 59) = v14;
  OUTLINED_FUNCTION_106_3();
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 64) = v16;
  *(v0 + 72) = v17;
  OUTLINED_FUNCTION_106_3();
  v18 = *(v2 + 80);
  v19 = *(v2 + 88);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 80) = v18;
  *(v0 + 88) = v19;
  OUTLINED_FUNCTION_106_3();
  v21 = *(v2 + 96);
  v20 = *(v2 + 104);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 96) = v21;
  *(v0 + 104) = v20;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v21) = *(v2 + 112);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 112) = v21;
  OUTLINED_FUNCTION_106_3();
  LODWORD(v21) = *(v2 + 116);
  v22 = *(v2 + 120);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 116) = v21;
  *(v0 + 120) = v22;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v21) = *(v2 + 121);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 121) = v21;
  OUTLINED_FUNCTION_106_3();
  v23 = *(v2 + 128);
  v24 = *(v2 + 136);
  OUTLINED_FUNCTION_294_0();
  *(v0 + 128) = v23;
  *(v0 + 136) = v24;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();

  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_378();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A92218()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);

  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment, &unk_27CFBB740, &qword_221BE09F8);
  return v0;
}

void sub_221A922A0()
{
  sub_221ABF2A8(319, &qword_27CFB9B48, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_221A9239C()
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
      case 2:
        sub_221A92594();
        break;
      case 3:
        sub_221A92618();
        break;
      case 4:
        sub_221A9269C();
        break;
      case 5:
        sub_221A92720();
        break;
      case 6:
        sub_221A927A4();
        break;
      case 7:
        sub_221A92828();
        break;
      case 8:
        sub_221A928AC();
        break;
      case 9:
        sub_221A92930();
        break;
      case 10:
        sub_221A929B4();
        break;
      case 11:
        sub_221A92A38();
        break;
      case 12:
        sub_221A92ABC();
        break;
      case 13:
        sub_221A92B40();
        break;
      case 14:
        sub_221A92BC4();
        break;
      case 15:
        sub_221A92C48();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A92594()
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92618()
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A9269C()
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92720()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A927A4()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92828()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A928AC()
{
  swift_beginAccess();
  sub_221BCCA58();
  return swift_endAccess();
}

uint64_t sub_221A92930()
{
  swift_beginAccess();
  sub_221BCCA88();
  return swift_endAccess();
}

uint64_t sub_221A929B4()
{
  swift_beginAccess();
  sub_221BCCA88();
  return swift_endAccess();
}

uint64_t sub_221A92A38()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92ABC()
{
  swift_beginAccess();
  sub_221BCCA78();
  return swift_endAccess();
}

uint64_t sub_221A92B40()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92BC4()
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92C48()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  sub_221ADB35C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A92D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221A92E94(a1);
  if (!v4)
  {
    sub_221A92F18(a1);
    sub_221A92F9C(a1);
    sub_221A93020(a1);
    sub_221A930A8(a1);
    sub_221A93130(a1);
    sub_221A931B8(a1);
    sub_221A9323C(a1);
    sub_221A932D8(a1);
    sub_221A93374(a1);
    sub_221A933FC(a1);
    sub_221A93480(a1);
    sub_221A93508(a1);
    return sub_221A9358C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_221A92E94(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A92F18(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    return sub_221BCCC08();
  }

  return result;
}