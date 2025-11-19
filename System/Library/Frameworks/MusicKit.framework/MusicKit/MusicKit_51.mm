uint64_t sub_2176083E8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2176084E0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B110C();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B110C();
  }

  sub_2171F0790(v0 + 208, &qword_27CB2ADF0, &qword_217787260);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB2ADF0, &qword_217787260, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787268);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_21760865C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB2ADF0, &qword_217787260);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2176086FC(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217608930()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217608A2C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for MusicVideo;
  v7[4] = &protocol witness table for MusicVideo;
  v7[5] = &type metadata for MusicVideo;
  v7[6] = &protocol witness table for MusicVideo;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635D9C;
  v8[3] = v4;
  *(v2 + 424) = sub_21749A90C;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_376;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB2AE80, &qword_217787390);
  OUTLINED_FUNCTION_9_14(&unk_217787398);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_217608C94()
{
  OUTLINED_FUNCTION_173_0();
  v9 = v1;
  OUTLINED_FUNCTION_209();
  v2 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  swift_willThrow();

  v6 = v0[61];

  sub_2172202A4(0);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217608D24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_217608E1C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B11F0();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B11F0();
  }

  sub_2171F0790(v0 + 208, &qword_27CB2AE80, &qword_217787390);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB2AE80, &qword_217787390, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787398);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_217608F98()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB2AE80, &qword_217787390);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217609038(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760926C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217609368()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Curator;
  v7[4] = &protocol witness table for Curator;
  v7[5] = &type metadata for Curator;
  v7[6] = &protocol witness table for Curator;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635EA4;
  v8[3] = v4;
  *(v2 + 424) = sub_21749A90C;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_706;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB2AFB0, &unk_217771CF0);
  OUTLINED_FUNCTION_9_14(&unk_217787598);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_2176095D0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2176096C8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B12D4();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B12D4();
  }

  sub_2171F0790(v0 + 208, &qword_27CB2AFB0, &unk_217771CF0);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB2AFB0, &unk_217771CF0, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787598);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_217609844()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB2AFB0, &unk_217771CF0);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2176098E4(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217609B18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217609C14()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Artist;
  v7[4] = &protocol witness table for Artist;
  v7[5] = &type metadata for Artist;
  v7[6] = &protocol witness table for Artist;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635D6C;
  v8[3] = v4;
  *(v2 + 424) = sub_21749A90C;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_292;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB2AE40, &qword_217787300);
  OUTLINED_FUNCTION_9_14(&unk_217787308);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_217609E7C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_217609F74()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B13B8();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B13B8();
  }

  sub_2171F0790(v0 + 208, &qword_27CB2AE40, &qword_217787300);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB2AE40, &qword_217787300, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787308);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_21760A0F0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB2AE40, &qword_217787300);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760A190(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760A3C4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760A4C0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Album;
  v7[4] = &protocol witness table for Album;
  v7[5] = &type metadata for Album;
  v7[6] = &protocol witness table for Album;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635B04;
  v8[3] = v4;
  *(v2 + 424) = sub_2172AC5D8;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_37;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB24DC0, &qword_21775A000);
  OUTLINED_FUNCTION_9_14(dword_217787118);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760A728()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760A820()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B149C();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B149C();
  }

  sub_2171F0790(v0 + 208, &qword_27CB24DC0, &qword_21775A000);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB24DC0, &qword_21775A000, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(dword_217787118);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_21760A99C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB24DC0, &qword_21775A000);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760AA3C(char a1, uint64_t a2)
{
  *(v2 + 488) = a2;
  *(v2 + 417) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760AC24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760AD20()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_102_13();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_290_0(v6);
  v7[2] = v0;
  v7[3] = &type metadata for MusicPersonalRecommendation.Item;
  v7[4] = &protocol witness table for MusicPersonalRecommendation.Item;
  v7[5] = &type metadata for MusicPersonalRecommendation.Item;
  v7[6] = &protocol witness table for MusicPersonalRecommendation.Item;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635DFC;
  v8[3] = v4;
  *(v2 + 456) = sub_21749A90C;
  *(v2 + 464) = v8;
  *(v2 + 424) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_14_55(COERCE_DOUBLE(1107296256));
  *(v2 + 440) = v9;
  *(v2 + 448) = &block_descriptor_420;
  _Block_copy(v1);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 417))
  {
    OUTLINED_FUNCTION_339_0();

    v13 = *(v2 + 472);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 536);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_101_12();
  result = OUTLINED_FUNCTION_244_1(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_233_3();

    v26 = *(v2 + 472);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_332_0(result, v14, &qword_27CB24E38, &unk_217771D50);
  OUTLINED_FUNCTION_9_14(&unk_2177873D8);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_89_17(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_70_18(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760AF88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760B080()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_41_31();
  OUTLINED_FUNCTION_801();
  sub_2171F0790(v2, v3, v4);
  OUTLINED_FUNCTION_121_13();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B1550();
  }

  OUTLINED_FUNCTION_52_0();
  if (v17)
  {
    OUTLINED_FUNCTION_56_19(v7);
    sub_2172B1550();
  }

  sub_2171F0790(v1 + 152, &qword_27CB24E38, &unk_217771D50);
  OUTLINED_FUNCTION_85_13();
  OUTLINED_FUNCTION_53_24();
  if (v8)
  {
    OUTLINED_FUNCTION_176_8();

    OUTLINED_FUNCTION_338_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_164_8();
    if (v17)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_271_0();
      OUTLINED_FUNCTION_336_0(&qword_27CB24E38, &unk_217771D50, v18);
      OUTLINED_FUNCTION_9_14(&unk_2177873D8);
      v19 = swift_task_alloc();
      v20 = OUTLINED_FUNCTION_89_17(v19);
      *v20 = v21;
      OUTLINED_FUNCTION_57_20(v20);
      OUTLINED_FUNCTION_1322();

      v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }
}

uint64_t sub_21760B208()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_131_11();
  sub_2171F0790(v2 + 80, &qword_27CB24E38, &unk_217771D50);

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760B2A8(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760B4DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760B5D8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Genre;
  v7[4] = &protocol witness table for Genre;
  v7[5] = &type metadata for Genre;
  v7[6] = &protocol witness table for Genre;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635D84;
  v8[3] = v4;
  *(v2 + 424) = sub_21749A90C;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_334;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB24E20, &unk_21775A0C0);
  OUTLINED_FUNCTION_9_14(&unk_217787348);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760B840()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760B938()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B1650();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B1650();
  }

  sub_2171F0790(v0 + 208, &qword_27CB24E20, &unk_21775A0C0);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB24E20, &unk_21775A0C0, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787348);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_21760BAB4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB24E20, &unk_21775A0C0);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760BB54(char a1, uint64_t a2)
{
  *(v2 + 488) = a2;
  *(v2 + 417) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760BD3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760BE38()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_102_13();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_290_0(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Track;
  v7[4] = &protocol witness table for Track;
  v7[5] = &type metadata for Track;
  v7[6] = &protocol witness table for Track;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635E2C;
  v8[3] = v4;
  *(v2 + 456) = sub_21749A90C;
  *(v2 + 464) = v8;
  *(v2 + 424) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_14_55(COERCE_DOUBLE(1107296256));
  *(v2 + 440) = v9;
  *(v2 + 448) = &block_descriptor_498;
  _Block_copy(v1);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 417))
  {
    OUTLINED_FUNCTION_339_0();

    v13 = *(v2 + 472);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 536);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_101_12();
  result = OUTLINED_FUNCTION_244_1(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_233_3();

    v26 = *(v2 + 472);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_332_0(result, v14, &qword_27CB2AEF0, &qword_21775A120);
  OUTLINED_FUNCTION_9_14(&unk_217787450);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_89_17(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_70_18(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760C0A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760C198()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_41_31();
  OUTLINED_FUNCTION_801();
  sub_2171F0790(v2, v3, v4);
  OUTLINED_FUNCTION_121_13();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B1704();
  }

  OUTLINED_FUNCTION_52_0();
  if (v17)
  {
    OUTLINED_FUNCTION_56_19(v7);
    sub_2172B1704();
  }

  sub_2171F0790(v1 + 152, &qword_27CB2AEF0, &qword_21775A120);
  OUTLINED_FUNCTION_85_13();
  OUTLINED_FUNCTION_53_24();
  if (v8)
  {
    OUTLINED_FUNCTION_176_8();

    OUTLINED_FUNCTION_338_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_164_8();
    if (v17)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_271_0();
      OUTLINED_FUNCTION_336_0(&qword_27CB2AEF0, &qword_21775A120, v18);
      OUTLINED_FUNCTION_9_14(&unk_217787450);
      v19 = swift_task_alloc();
      v20 = OUTLINED_FUNCTION_89_17(v19);
      *v20 = v21;
      OUTLINED_FUNCTION_57_20(v20);
      OUTLINED_FUNCTION_1322();

      v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }
}

uint64_t sub_21760C320()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_131_11();
  sub_2171F0790(v2 + 80, &qword_27CB2AEF0, &qword_21775A120);

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760C3C0(char a1, uint64_t a2)
{
  *(v2 + 488) = a2;
  *(v2 + 417) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760C5A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760C6A4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_102_13();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_290_0(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Playlist.Entry.Item;
  v7[4] = &protocol witness table for Playlist.Entry.Item;
  v7[5] = &type metadata for Playlist.Entry.Item;
  v7[6] = &protocol witness table for Playlist.Entry.Item;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635E14;
  v8[3] = v4;
  *(v2 + 456) = sub_21749A90C;
  *(v2 + 464) = v8;
  *(v2 + 424) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_14_55(COERCE_DOUBLE(1107296256));
  *(v2 + 440) = v9;
  *(v2 + 448) = &block_descriptor_462;
  _Block_copy(v1);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 417))
  {
    OUTLINED_FUNCTION_339_0();

    v13 = *(v2 + 472);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 536);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_101_12();
  result = OUTLINED_FUNCTION_244_1(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_233_3();

    v26 = *(v2 + 472);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_332_0(result, v14, &qword_27CB24E48, &qword_21775A0F8);
  OUTLINED_FUNCTION_9_14(&unk_2177871F8);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_89_17(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_70_18(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760C90C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760CA04()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_41_31();
  OUTLINED_FUNCTION_801();
  sub_2171F0790(v2, v3, v4);
  OUTLINED_FUNCTION_121_13();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B17C4();
  }

  OUTLINED_FUNCTION_52_0();
  if (v17)
  {
    OUTLINED_FUNCTION_56_19(v7);
    sub_2172B17C4();
  }

  sub_2171F0790(v1 + 152, &qword_27CB24E48, &qword_21775A0F8);
  OUTLINED_FUNCTION_85_13();
  OUTLINED_FUNCTION_53_24();
  if (v8)
  {
    OUTLINED_FUNCTION_176_8();

    OUTLINED_FUNCTION_338_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_164_8();
    if (v17)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_271_0();
      OUTLINED_FUNCTION_336_0(&qword_27CB24E48, &qword_21775A0F8, v18);
      OUTLINED_FUNCTION_9_14(&unk_2177871F8);
      v19 = swift_task_alloc();
      v20 = OUTLINED_FUNCTION_89_17(v19);
      *v20 = v21;
      OUTLINED_FUNCTION_57_20(v20);
      OUTLINED_FUNCTION_1322();

      v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }
}

uint64_t sub_21760CB8C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_131_11();
  sub_2171F0790(v2 + 80, &qword_27CB24E48, &qword_21775A0F8);

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760CC2C(char a1, uint64_t a2)
{
  *(v2 + 488) = a2;
  *(v2 + 417) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760CC44()
{
  v4 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item);
  v1[62] = v4;
  v1[63] = v5;
  if (!v4)
  {
    return sub_217752D08();
  }

  v6 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item);
  v1[64] = v6;
  v1[65] = v7;
  if (!v6)
  {
    OUTLINED_FUNCTION_362_0();
    v23 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v23);
    MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
    return sub_217752D08();
  }

  v8 = v1[61];
  v9 = OUTLINED_FUNCTION_319_0(objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection));
  v1[66] = v9;
  v10 = [objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection) (v0 + 2936)];
  v1[67] = v10;
  v11 = OUTLINED_FUNCTION_266_0();
  v25 = v9;
  [v9 appendSection_];

  v12 = OUTLINED_FUNCTION_266_0();
  [v10 appendSection_];

  sub_217204DD0(v8);
  OUTLINED_FUNCTION_105_16();
  for (i = 0; v12 != i; ++i)
  {
    if (v3)
    {
      v14 = MEMORY[0x21CEA2E30](i, v1[61]);
    }

    else
    {
      OUTLINED_FUNCTION_264_0();
      if (v15)
      {
        goto LABEL_18;
      }

      v14 = OUTLINED_FUNCTION_318_0();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return MEMORY[0x282200938](v14);
    }

    MEMORY[0x21CEA3980](v14);
    OUTLINED_FUNCTION_265_0();
    v16 = sub_2176126BC();
    v17 = sub_2176037E8();
    [v10 appendItem_];
    [v25 appendItem_];

    objc_autoreleasePoolPop(v2);
  }

  v18 = v1[61];

  sub_2172AC53C();
  v19 = [objc_opt_self() defaultUnpersonalizedRequest];
  v20 = v25;
  v1[68] = OUTLINED_FUNCTION_236_2(v10);
  v1[59] = MEMORY[0x277D84F90];
  v1[2] = v1;
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_234_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D18, &qword_217759BA0);
  OUTLINED_FUNCTION_16_60(v21);
  OUTLINED_FUNCTION_270_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_57();
  OUTLINED_FUNCTION_276_0(v22, sel_performWithCompletionHandler_);
  v14 = (v1 + 2);

  return MEMORY[0x282200938](v14);
}

uint64_t sub_21760CFEC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760D0E8()
{
  OUTLINED_FUNCTION_845();
  v1 = *(v0 + 480);
  *(v0 + 560) = v1;
  v25 = *(v0 + 496);
  v26 = *(v0 + 512);
  v2 = [v1 results];
  OUTLINED_FUNCTION_188_7();
  v3 = swift_allocObject();
  *(v0 + 568) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v26;
  *(v3 + 40) = v25;
  *(v3 + 56) = v0 + 472;
  OUTLINED_FUNCTION_28_6();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_217635CD0;
  *(v4 + 24) = v3;
  *(v0 + 456) = sub_21749A90C;
  *(v0 + 464) = v4;
  *(v0 + 424) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_14_55(COERCE_DOUBLE(1107296256));
  *(v0 + 440) = v5;
  *(v0 + 448) = &block_descriptor_161;
  _Block_copy((v0 + 424));
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_277_0();

  v6 = OUTLINED_FUNCTION_117_2();
  [v6 v7];

  _Block_release((v0 + 424));
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 417))
  {
    v9 = *(v0 + 544);
    v10 = *(v0 + 528);

    v11 = *(v0 + 472);
    sub_217751DE8();
LABEL_10:
    v22 = *(v0 + 568);

    v23 = OUTLINED_FUNCTION_4_11();

    return v24(v23);
  }

  v12 = *(v0 + 472);
  *(v0 + 576) = v12;
  v13 = *(v12 + 16);
  *(v0 + 584) = v13;
  *(v0 + 600) = MEMORY[0x277D84F90];
  *(v0 + 592) = 0;
  result = sub_217751DE8();
  if (!v13)
  {
    v18 = *(v0 + 560);
    v19 = *(v0 + 544);
    v20 = *(v0 + 536);

    v21 = *(v0 + 472);
    goto LABEL_10;
  }

  if (!*(v12 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_332_0(result, v14, &unk_27CB2ADC0, &qword_21775A078);
  OUTLINED_FUNCTION_9_14(&unk_217787220);
  v27 = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 608) = v16;
  *v16 = v17;
  v16[1] = sub_21760D43C;

  return v27(v0 + 360);
}

uint64_t sub_21760D3A4()
{
  OUTLINED_FUNCTION_173_0();
  v9 = v1;
  OUTLINED_FUNCTION_209();
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  swift_willThrow();

  v6 = v0[69];

  sub_2172202A4(0);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21760D43C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 616) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void *sub_21760D534()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 600);
  v2 = *(v0 + 376);
  *(v0 + 152) = *(v0 + 360);
  *(v0 + 168) = v2;
  *(v0 + 184) = *(v0 + 392);
  *(v0 + 193) = *(v0 + 401);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_801();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_121_13();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 600);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B2758();
    v8 = v38;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
    OUTLINED_FUNCTION_56_19(v9);
    sub_2172B2758();
    v8 = v39;
  }

  sub_2171F0790(v0 + 152, &unk_27CB2ADC0, &qword_21775A078);
  result = OUTLINED_FUNCTION_85_13();
  v12 = *(v0 + 592) + 1;
  *(v0 + 600) = v8;
  *(v0 + 592) = v12;
  if (v12 == *(v0 + 584))
  {
    v13 = *(v0 + 576);
    v14 = *(v0 + 560);
    v15 = *(v0 + 544);
    v16 = *(v0 + 536);

    v17 = *(v0 + 472);
    v18 = *(v0 + 568);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else if (v12 >= *(*(v0 + 576) + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_336_0(&unk_27CB2ADC0, &qword_21775A078, v27);
    OUTLINED_FUNCTION_9_14(&unk_217787220);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 608) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_57_20(v28);
    OUTLINED_FUNCTION_1322();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return result;
}

uint64_t sub_21760D724()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[70];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];

  sub_2171F0790((v0 + 10), &unk_27CB2ADC0, &qword_21775A078);

  v7 = v0[59];
  v8 = v0[77];
  v9 = v0[71];

  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_21760D7E8(char a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  *(v2 + 560) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21760DA30()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21760DB2C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61_18();
  v5 = [v0 results];
  OUTLINED_FUNCTION_188_7();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_241_1(v6);
  v7[2] = v0;
  v7[3] = &type metadata for Station;
  v7[4] = &protocol witness table for Station;
  v7[5] = &type metadata for Station;
  v7[6] = &protocol witness table for Station;
  v7[7] = v3;
  OUTLINED_FUNCTION_28_6();
  v8 = swift_allocObject();
  v8[2] = sub_217635E8C;
  v8[3] = v4;
  *(v2 + 424) = sub_21749A90C;
  *(v2 + 432) = v8;
  *(v2 + 392) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_83(COERCE_DOUBLE(1107296256));
  *(v2 + 408) = v9;
  *(v2 + 416) = &block_descriptor_662;
  _Block_copy(v1);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_277_0();

  v10 = OUTLINED_FUNCTION_117_2();
  [v10 v11];

  _Block_release(v1);
  OUTLINED_FUNCTION_65_23();
  result = OUTLINED_FUNCTION_275_0();
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 560))
  {
    OUTLINED_FUNCTION_303_0();

    v13 = *(v2 + 440);
    sub_217751DE8();
LABEL_10:
    v27 = *(v2 + 504);

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_60_25();
  result = OUTLINED_FUNCTION_213_5(MEMORY[0x277D84F90]);
  if (!v0)
  {
    OUTLINED_FUNCTION_184_6();

    v26 = *(v2 + 440);
    goto LABEL_10;
  }

  if (!v5[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_298_0(result, v14, &qword_27CB24E98, &qword_217787540);
  OUTLINED_FUNCTION_9_14(&unk_217787548);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_68_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_22_51(v16);
  OUTLINED_FUNCTION_1322();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_21760DD94()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_21760DE8C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_86_15();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B28A8();
  }

  OUTLINED_FUNCTION_117_15();
  if (v14)
  {
    OUTLINED_FUNCTION_37_32(v4);
    sub_2172B28A8();
  }

  sub_2171F0790(v0 + 208, &qword_27CB24E98, &qword_217787540);
  OUTLINED_FUNCTION_4_99();
  if (v5)
  {
    OUTLINED_FUNCTION_137_9();

    OUTLINED_FUNCTION_302_0();

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_1322();

    v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    if (v14)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_305_0(&qword_27CB24E98, &qword_217787540, v16 + (v15 << 6));
      OUTLINED_FUNCTION_9_14(&unk_217787548);
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_68_20(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_22_51(v18);
      OUTLINED_FUNCTION_1322();

      v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_21760E008()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_87_18();
  sub_2171F0790(v2 + 144, &qword_27CB24E98, &qword_217787540);

  OUTLINED_FUNCTION_214_6();
  OUTLINED_FUNCTION_33_38();
  OUTLINED_FUNCTION_1322();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21760E0A8()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v32, &qword_27CB2ADB8, &qword_217787208);
  if (v36)
  {

    sub_21729C7F8(v32);
    return v1;
  }

  v3 = v32[0];
  v30[0] = v33;
  v30[1] = v34;
  v31[0] = *v35;
  *(v31 + 9) = *&v35[9];
  sub_21754240C(v30, v28, &qword_27CB27D20, &qword_217758B80);
  sub_21754240C(v30, v24, &qword_27CB27D20, &qword_217758B80);
  if (v25[24] == 255)
  {
    sub_2171F0790(v24, &qword_27CB27D20, &qword_217758B80);
  }

  else
  {
    v26[0] = v24[0];
    v26[1] = v24[1];
    v27[0] = *v25;
    *(v27 + 9) = *&v25[9];
    *&v15[24] = &type metadata for Playlist.Entry.Item;
    *&v15[32] = &protocol witness table for Playlist.Entry.Item;
    *v15 = swift_allocObject();
    sub_21729C79C(v26, *v15 + 16);
    __swift_project_boxed_opaque_existential_1(v15, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v4 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v20);
    memcpy(__dst, __src, sizeof(__dst));
    __swift_destroy_boxed_opaque_existential_1(v15);
    v6 = *&__dst[24];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v21 = &type metadata for Playlist.Entry.Item;
    v22 = &protocol witness table for Playlist.Entry.Item;
    v20[0] = swift_allocObject();
    sub_21729C79C(v26, v20[0] + 16);
    __swift_project_boxed_opaque_existential_1(v20, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v8 + 24))(v15, v7, v8);
    sub_21729C644(v16);
    memcpy(__src, v15, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v9 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v9)
    {

      sub_217627FD8(v15);
      sub_21729C7F8(v26);
      sub_2171F0790(v28, &qword_27CB27D20, &qword_217758B80);
      v28[0] = *v15;
      v28[1] = *&v15[16];
      v29[0] = *&v15[32];
      *(v29 + 9) = *&v15[41];
    }

    else
    {
LABEL_7:
      sub_21729C7F8(v26);
    }
  }

  v10 = v1[2];
  v11 = v1[3];
  sub_21754240C(v28, __dst, &qword_27CB27D20, &qword_217758B80);
  sub_217275858((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v12 = sub_2176311E4(v10, v11, v3, __dst, __src);
  if (v12)
  {
    v13 = v12;
    sub_2171F0790(v28, &qword_27CB27D20, &qword_217758B80);
    sub_2171F0790(v30, &qword_27CB27D20, &qword_217758B80);
    return v13;
  }

  *__dst = 0;
  *&__dst[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760E518()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &unk_27CB2AE20, &qword_2177872C8);
  if (v35)
  {

    sub_217635D18(v31);
    return v1;
  }

  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v27, &unk_27CB2AE10, &qword_2177872A8);
  sub_21754240C(v29, v23, &unk_27CB2AE10, &qword_2177872A8);
  if (v24[24] == 255)
  {
    sub_2171F0790(v23, &unk_27CB2AE10, &qword_2177872A8);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26[0] = *v24;
    *(v26 + 9) = *&v24[9];
    *&v14[24] = &type metadata for RecentlyPlayedMusicItem;
    *&v14[32] = &protocol witness table for RecentlyPlayedMusicItem;
    *v14 = swift_allocObject();
    sub_21733C220(v25, *v14 + 16);
    __swift_project_boxed_opaque_existential_1(v14, &type metadata for RecentlyPlayedMusicItem);
    RecentlyPlayedMusicItem.propertyProvider.getter();
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v4[3])(__src, v3, v4);
    sub_21729C644(v19);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v5)
    {
      goto LABEL_7;
    }

    v20 = &type metadata for RecentlyPlayedMusicItem;
    v21 = &protocol witness table for RecentlyPlayedMusicItem;
    v19[0] = swift_allocObject();
    sub_21733C220(v25, v19[0] + 16);
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for RecentlyPlayedMusicItem);
    RecentlyPlayedMusicItem.propertyProvider.getter();
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 24))(v14, v6, v7);
    sub_21729C644(v15);
    memcpy(__src, v14, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v8)
    {

      sub_21762817C(v14);
      sub_217635D18(v25);
      sub_2171F0790(v27, &unk_27CB2AE10, &qword_2177872A8);
      v27[0] = *v14;
      v27[1] = *&v14[16];
      v28[0] = *&v14[32];
      *(v28 + 9) = *&v14[41];
    }

    else
    {
LABEL_7:
      sub_217635D18(v25);
    }
  }

  v9 = v1[2];
  v10 = v1[3];
  sub_21754240C(v27, __dst, &unk_27CB2AE10, &qword_2177872A8);
  sub_21733C220((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v11 = sub_2176314B4();
  if (v11)
  {
    v12 = v11;
    sub_2171F0790(v27, &unk_27CB2AE10, &qword_2177872A8);
    sub_2171F0790(v29, &unk_27CB2AE10, &qword_2177872A8);
    return v12;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760E9AC()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &unk_27CB2AF20, &qword_2177874B0);
  if (v35)
  {

    sub_217283E78(v31);
    return v1;
  }

  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v27, &unk_27CB2AF10, &unk_217787490);
  sub_21754240C(v29, v23, &unk_27CB2AF10, &unk_217787490);
  if (v24[24] == 255)
  {
    sub_2171F0790(v23, &unk_27CB2AF10, &unk_217787490);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26[0] = *v24;
    *(v26 + 9) = *&v24[9];
    *&v14[24] = &type metadata for MusicCatalogSearchResponse.TopResult;
    *&v14[32] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    *v14 = swift_allocObject();
    sub_217283E1C(v25, *v14 + 16);
    __swift_project_boxed_opaque_existential_1(v14, &type metadata for MusicCatalogSearchResponse.TopResult);
    MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v4[3])(__src, v3, v4);
    sub_21729C644(v19);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v5)
    {
      goto LABEL_7;
    }

    v20 = &type metadata for MusicCatalogSearchResponse.TopResult;
    v21 = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    v19[0] = swift_allocObject();
    sub_217283E1C(v25, v19[0] + 16);
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for MusicCatalogSearchResponse.TopResult);
    MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 24))(v14, v6, v7);
    sub_21729C644(v15);
    memcpy(__src, v14, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v8)
    {

      sub_217628320(v14);
      sub_217283E78(v25);
      sub_2171F0790(v27, &unk_27CB2AF10, &unk_217787490);
      v27[0] = *v14;
      v27[1] = *&v14[16];
      v28[0] = *&v14[32];
      *(v28 + 9) = *&v14[41];
    }

    else
    {
LABEL_7:
      sub_217283E78(v25);
    }
  }

  v9 = v1[2];
  v10 = v1[3];
  sub_21754240C(v27, __dst, &unk_27CB2AF10, &unk_217787490);
  sub_217283E1C((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v11 = sub_2176314B4();
  if (v11)
  {
    v12 = v11;
    sub_2171F0790(v27, &unk_27CB2AF10, &unk_217787490);
    sub_2171F0790(v29, &unk_27CB2AF10, &unk_217787490);
    return v12;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760EE40()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AD98, &qword_2177871E0);
  if (v38)
  {

    sub_217283B58(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &qword_27CB277F0, &unk_21775A2B0);
  sub_21754240C(v31, v25, &qword_27CB277F0, &unk_21775A2B0);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Song;
    *&v16[32] = &protocol witness table for Song;
    *v16 = swift_allocObject();
    sub_217283AFC(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Song);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Song;
    v23 = &protocol witness table for Song;
    v21[0] = swift_allocObject();
    sub_217283AFC(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Song);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Song, &protocol witness table for Song, sub_217283AFC, v16);
      sub_217283B58(v27);
      sub_2171F0790(v29, &qword_27CB277F0, &unk_21775A2B0);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_217283B58(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &qword_27CB277F0, &unk_21775A2B0);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &qword_27CB277F0, &unk_21775A2B0);
  sub_217283AFC((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &qword_27CB277F0, &unk_21775A2B0);
    sub_2171F0790(v31, &qword_27CB277F0, &unk_21775A2B0);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760F300()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &unk_27CB2AF70, &qword_217787530);
  if (v38)
  {

    sub_217283CC4(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &unk_27CB2AF60, &qword_217758C00);
  sub_21754240C(v31, v25, &unk_27CB2AF60, &qword_217758C00);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for RecordLabel;
    *&v16[32] = &protocol witness table for RecordLabel;
    *v16 = swift_allocObject();
    sub_217283C68(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for RecordLabel);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for RecordLabel;
    v23 = &protocol witness table for RecordLabel;
    v21[0] = swift_allocObject();
    sub_217283C68(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for RecordLabel);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for RecordLabel, &protocol witness table for RecordLabel, sub_217283C68, v16);
      sub_217283CC4(v27);
      sub_2171F0790(v29, &unk_27CB2AF60, &qword_217758C00);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_217283CC4(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &unk_27CB2AF60, &qword_217758C00);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &unk_27CB2AF60, &qword_217758C00);
  sub_217283C68((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &unk_27CB2AF60, &qword_217758C00);
    sub_2171F0790(v31, &unk_27CB2AF60, &qword_217758C00);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760F7C0()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AF48, &qword_2177874F0);
  if (v38)
  {

    sub_217284394(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &qword_27CB24678, &qword_217758BD0);
  sub_21754240C(v31, v25, &qword_27CB24678, &qword_217758BD0);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for RadioShow;
    *&v16[32] = &protocol witness table for RadioShow;
    *v16 = swift_allocObject();
    sub_217284338(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for RadioShow);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for RadioShow;
    v23 = &protocol witness table for RadioShow;
    v21[0] = swift_allocObject();
    sub_217284338(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for RadioShow);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for RadioShow, &protocol witness table for RadioShow, sub_217284338, v16);
      sub_217284394(v27);
      sub_2171F0790(v29, &qword_27CB24678, &qword_217758BD0);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_217284394(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &qword_27CB24678, &qword_217758BD0);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &qword_27CB24678, &qword_217758BD0);
  sub_217284338((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &qword_27CB24678, &qword_217758BD0);
    sub_2171F0790(v31, &qword_27CB24678, &qword_217758BD0);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21760FC80()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2ADF8, &qword_217787278);
  if (v38)
  {

    sub_21726B8C4(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &unk_27CB28A90, &qword_217758F90);
  sub_21754240C(v31, v25, &unk_27CB28A90, &qword_217758F90);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Playlist;
    *&v16[32] = &protocol witness table for Playlist;
    *v16 = swift_allocObject();
    sub_2172757C0(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Playlist);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Playlist;
    v23 = &protocol witness table for Playlist;
    v21[0] = swift_allocObject();
    sub_2172757C0(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Playlist);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Playlist, &protocol witness table for Playlist, sub_2172757C0, v16);
      sub_21726B8C4(v27);
      sub_2171F0790(v29, &unk_27CB28A90, &qword_217758F90);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_21726B8C4(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &unk_27CB28A90, &qword_217758F90);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &unk_27CB28A90, &qword_217758F90);
  sub_2172757C0((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &unk_27CB28A90, &qword_217758F90);
    sub_2171F0790(v31, &unk_27CB28A90, &qword_217758F90);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217610140()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AE88, &qword_2177873A8);
  if (v38)
  {

    sub_217283C08(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &qword_27CB24550, &qword_217758A58);
  sub_21754240C(v31, v25, &qword_27CB24550, &qword_217758A58);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for MusicVideo;
    *&v16[32] = &protocol witness table for MusicVideo;
    *v16 = swift_allocObject();
    sub_217283BAC(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for MusicVideo);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for MusicVideo;
    v23 = &protocol witness table for MusicVideo;
    v21[0] = swift_allocObject();
    sub_217283BAC(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for MusicVideo);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for MusicVideo, &protocol witness table for MusicVideo, sub_217283BAC, v16);
      sub_217283C08(v27);
      sub_2171F0790(v29, &qword_27CB24550, &qword_217758A58);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_217283C08(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &qword_27CB24550, &qword_217758A58);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &qword_27CB24550, &qword_217758A58);
  sub_217283BAC((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &qword_27CB24550, &qword_217758A58);
    sub_2171F0790(v31, &qword_27CB24550, &qword_217758A58);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217610600()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AFB8, &qword_2177875A8);
  if (v38)
  {

    sub_2172842E4(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &qword_27CB246E8, &qword_21776C140);
  sub_21754240C(v31, v25, &qword_27CB246E8, &qword_21776C140);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Curator;
    *&v16[32] = &protocol witness table for Curator;
    *v16 = swift_allocObject();
    sub_217284288(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Curator);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Curator;
    v23 = &protocol witness table for Curator;
    v21[0] = swift_allocObject();
    sub_217284288(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Curator);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Curator, &protocol witness table for Curator, sub_217284288, v16);
      sub_2172842E4(v27);
      sub_2171F0790(v29, &qword_27CB246E8, &qword_21776C140);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_2172842E4(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &qword_27CB246E8, &qword_21776C140);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &qword_27CB246E8, &qword_21776C140);
  sub_217284288((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &qword_27CB246E8, &qword_21776C140);
    sub_2171F0790(v31, &qword_27CB246E8, &qword_21776C140);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217610AC0()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AE48, &qword_217787318);
  if (v38)
  {

    sub_217284498(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &qword_27CB2CD90, &unk_21775A2C0);
  sub_21754240C(v31, v25, &qword_27CB2CD90, &unk_21775A2C0);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Artist;
    *&v16[32] = &protocol witness table for Artist;
    *v16 = swift_allocObject();
    sub_21725CF68(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Artist);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Artist;
    v23 = &protocol witness table for Artist;
    v21[0] = swift_allocObject();
    sub_21725CF68(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Artist);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Artist, &protocol witness table for Artist, sub_21725CF68, v16);
      sub_217284498(v27);
      sub_2171F0790(v29, &qword_27CB2CD90, &unk_21775A2C0);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_217284498(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &qword_27CB2CD90, &unk_21775A2C0);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &qword_27CB2CD90, &unk_21775A2C0);
  sub_21725CF68((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &qword_27CB2CD90, &unk_21775A2C0);
    sub_2171F0790(v31, &qword_27CB2CD90, &unk_21775A2C0);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217610F80()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &qword_27CB2AD68, &qword_217787188);
  if (v38)
  {

    sub_21725CE44(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &unk_27CB275E0, &qword_2177589D0);
  sub_21754240C(v31, v25, &unk_27CB275E0, &qword_2177589D0);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Album;
    *&v16[32] = &protocol witness table for Album;
    *v16 = swift_allocObject();
    sub_21725CF0C(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Album);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Album;
    v23 = &protocol witness table for Album;
    v21[0] = swift_allocObject();
    sub_21725CF0C(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Album);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Album, &protocol witness table for Album, sub_21725CF0C, v16);
      sub_21725CE44(v27);
      sub_2171F0790(v29, &unk_27CB275E0, &qword_2177589D0);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_21725CE44(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &unk_27CB275E0, &qword_2177589D0);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &unk_27CB275E0, &qword_2177589D0);
  sub_21725CF0C((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &unk_27CB275E0, &qword_2177589D0);
    sub_2171F0790(v31, &unk_27CB275E0, &qword_2177589D0);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217611440()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &unk_27CB2AEB0, &qword_2177873E8);
  if (v35)
  {

    sub_217283F28(v31);
    return v1;
  }

  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v27, &unk_27CB2AEA0, &unk_21775A260);
  sub_21754240C(v29, v23, &unk_27CB2AEA0, &unk_21775A260);
  if (v24[24] == 255)
  {
    sub_2171F0790(v23, &unk_27CB2AEA0, &unk_21775A260);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26[0] = *v24;
    *(v26 + 9) = *&v24[9];
    *&v14[24] = &type metadata for MusicPersonalRecommendation.Item;
    *&v14[32] = &protocol witness table for MusicPersonalRecommendation.Item;
    *v14 = swift_allocObject();
    sub_217283ECC(v25, *v14 + 16);
    __swift_project_boxed_opaque_existential_1(v14, &type metadata for MusicPersonalRecommendation.Item);
    MusicPersonalRecommendation.Item.propertyProvider.getter();
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v4[3])(__src, v3, v4);
    sub_21729C644(v19);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v5)
    {
      goto LABEL_7;
    }

    v20 = &type metadata for MusicPersonalRecommendation.Item;
    v21 = &protocol witness table for MusicPersonalRecommendation.Item;
    v19[0] = swift_allocObject();
    sub_217283ECC(v25, v19[0] + 16);
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for MusicPersonalRecommendation.Item);
    MusicPersonalRecommendation.Item.propertyProvider.getter();
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 24))(v14, v6, v7);
    sub_21729C644(v15);
    memcpy(__src, v14, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v8)
    {

      sub_2176286F4(v14);
      sub_217283F28(v25);
      sub_2171F0790(v27, &unk_27CB2AEA0, &unk_21775A260);
      v27[0] = *v14;
      v27[1] = *&v14[16];
      v28[0] = *&v14[32];
      *(v28 + 9) = *&v14[41];
    }

    else
    {
LABEL_7:
      sub_217283F28(v25);
    }
  }

  v9 = v1[2];
  v10 = v1[3];
  sub_21754240C(v27, __dst, &unk_27CB2AEA0, &unk_21775A260);
  sub_217283ECC((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v11 = sub_2176314B4();
  if (v11)
  {
    v12 = v11;
    sub_2171F0790(v27, &unk_27CB2AEA0, &unk_21775A260);
    sub_2171F0790(v29, &unk_27CB2AEA0, &unk_21775A260);
    return v12;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176118D4()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v33, &unk_27CB2AE60, &qword_217787358);
  if (v38)
  {

    sub_21728418C(v33);
    return v1;
  }

  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v32 = v37;
  sub_21754240C(v31, v29, &unk_27CB27760, &unk_21775A2D0);
  sub_21754240C(v31, v25, &unk_27CB27760, &unk_21775A2D0);
  if (*(&v25[0] + 1))
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    *&v16[24] = &type metadata for Genre;
    *&v16[32] = &protocol witness table for Genre;
    *v16 = swift_allocObject();
    sub_217284130(v27, *v16 + 16);
    v3 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for Genre);
    sub_21729C5E8((v3 + 2), v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v21);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v6 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v6)
    {
      goto LABEL_7;
    }

    v22 = &type metadata for Genre;
    v23 = &protocol witness table for Genre;
    v21[0] = swift_allocObject();
    sub_217284130(v27, v21[0] + 16);
    v7 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for Genre);
    sub_21729C5E8((v7 + 2), v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 24))(v16, v8, v9);
    sub_21729C644(v17);
    memcpy(__src, v16, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v10)
    {

      sub_2176284C4(&type metadata for Genre, &protocol witness table for Genre, sub_217284130, v16);
      sub_21728418C(v27);
      sub_2171F0790(v29, &unk_27CB27760, &unk_21775A2D0);
      v29[0] = *v16;
      v29[1] = *&v16[16];
      v29[2] = *&v16[32];
      v30 = *&v16[48];
    }

    else
    {
LABEL_7:
      sub_21728418C(v27);
    }
  }

  else
  {
    sub_2171F0790(v25, &unk_27CB27760, &unk_21775A2D0);
  }

  v11 = v1[2];
  v12 = v1[3];
  sub_21754240C(v29, __dst, &unk_27CB27760, &unk_21775A2D0);
  sub_217284130((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v13 = sub_217631748();
  if (v13)
  {
    v14 = v13;
    sub_2171F0790(v29, &unk_27CB27760, &unk_21775A2D0);
    sub_2171F0790(v31, &unk_27CB27760, &unk_21775A2D0);
    return v14;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217611D94()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &qword_27CB2AEF8, &qword_217787460);
  if (v35)
  {

    sub_21727576C(v31);
    return v1;
  }

  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v27, &unk_27CB28AA0, &qword_21775A020);
  sub_21754240C(v29, v23, &unk_27CB28AA0, &qword_21775A020);
  if (v24[24] == 255)
  {
    sub_2171F0790(v23, &unk_27CB28AA0, &qword_21775A020);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26[0] = *v24;
    *(v26 + 9) = *&v24[9];
    *&v14[24] = &type metadata for Track;
    *&v14[32] = &protocol witness table for Track;
    *v14 = swift_allocObject();
    sub_217275710(v25, *v14 + 16);
    __swift_project_boxed_opaque_existential_1(v14, &type metadata for Track);
    Track.propertyProvider.getter();
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v4[3])(__src, v3, v4);
    sub_21729C644(v19);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v5)
    {
      goto LABEL_7;
    }

    v20 = &type metadata for Track;
    v21 = &protocol witness table for Track;
    v19[0] = swift_allocObject();
    sub_217275710(v25, v19[0] + 16);
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for Track);
    Track.propertyProvider.getter();
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 24))(v14, v6, v7);
    sub_21729C644(v15);
    memcpy(__src, v14, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v8)
    {

      sub_217628898(v14);
      sub_21727576C(v25);
      sub_2171F0790(v27, &unk_27CB28AA0, &qword_21775A020);
      v27[0] = *v14;
      v27[1] = *&v14[16];
      v28[0] = *&v14[32];
      *(v28 + 9) = *&v14[41];
    }

    else
    {
LABEL_7:
      sub_21727576C(v25);
    }
  }

  v9 = v1[2];
  v10 = v1[3];
  sub_21754240C(v27, __dst, &unk_27CB28AA0, &qword_21775A020);
  sub_217275710((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v11 = sub_2176314B4();
  if (v11)
  {
    v12 = v11;
    sub_2171F0790(v27, &unk_27CB28AA0, &qword_21775A020);
    sub_2171F0790(v29, &unk_27CB28AA0, &qword_21775A020);
    return v12;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217612228()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &unk_27CB2AED0, &qword_217787420);
  if (v35)
  {

    sub_21729C7F8(v31);
    return v1;
  }

  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v27, &qword_27CB27D20, &qword_217758B80);
  sub_21754240C(v29, v23, &qword_27CB27D20, &qword_217758B80);
  if (v24[24] == 255)
  {
    sub_2171F0790(v23, &qword_27CB27D20, &qword_217758B80);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26[0] = *v24;
    *(v26 + 9) = *&v24[9];
    *&v14[24] = &type metadata for Playlist.Entry.Item;
    *&v14[32] = &protocol witness table for Playlist.Entry.Item;
    *v14 = swift_allocObject();
    sub_21729C79C(v25, *v14 + 16);
    __swift_project_boxed_opaque_existential_1(v14, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v4[3])(__src, v3, v4);
    sub_21729C644(v19);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v5)
    {
      goto LABEL_7;
    }

    v20 = &type metadata for Playlist.Entry.Item;
    v21 = &protocol witness table for Playlist.Entry.Item;
    v19[0] = swift_allocObject();
    sub_21729C79C(v25, v19[0] + 16);
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 24))(v14, v6, v7);
    sub_21729C644(v15);
    memcpy(__src, v14, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v8)
    {

      sub_217627FD8(v14);
      sub_21729C7F8(v25);
      sub_2171F0790(v27, &qword_27CB27D20, &qword_217758B80);
      v27[0] = *v14;
      v27[1] = *&v14[16];
      v28[0] = *&v14[32];
      *(v28 + 9) = *&v14[41];
    }

    else
    {
LABEL_7:
      sub_21729C7F8(v25);
    }
  }

  v9 = v1[2];
  v10 = v1[3];
  sub_21754240C(v27, __dst, &qword_27CB27D20, &qword_217758B80);
  sub_21729C79C((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v11 = sub_2176314B4();
  if (v11)
  {
    v12 = v11;
    sub_2171F0790(v27, &qword_27CB27D20, &qword_217758B80);
    sub_2171F0790(v29, &qword_27CB27D20, &qword_217758B80);
    return v12;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176126BC()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 12), v31, &qword_27CB2ADD8, &qword_217787230);
  if (v35)
  {

    sub_21729C748(v31);
    return v1;
  }

  v3 = v31[0];
  v29[0] = v32;
  v29[1] = v33;
  v30[0] = *v34;
  *(v30 + 9) = *&v34[9];
  sub_21754240C(v29, v28, &qword_27CB245B8, &qword_217758AE0);
  sub_21754240C(v29, v24, &qword_27CB245B8, &qword_217758AE0);
  if (v25[24] == 255)
  {
    sub_2171F0790(v24, &qword_27CB245B8, &qword_217758AE0);
  }

  else
  {
    v26[0] = v24[0];
    v26[1] = v24[1];
    v27[0] = *v25;
    *(v27 + 9) = *&v25[9];
    *&v15[24] = &type metadata for MusicPlayer.Queue.Entry.Item;
    *&v15[32] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
    *v15 = swift_allocObject();
    sub_21729C6EC(v26, *v15 + 16);
    __swift_project_boxed_opaque_existential_1(v15, &type metadata for MusicPlayer.Queue.Entry.Item);
    MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
    v4 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v5[3])(__src, v4, v5);
    sub_21729C644(v20);
    memcpy(__dst, __src, sizeof(__dst));
    __swift_destroy_boxed_opaque_existential_1(v15);
    v6 = *&__dst[24];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (v6)
    {

      v21 = &type metadata for MusicPlayer.Queue.Entry.Item;
      v22 = &protocol witness table for MusicPlayer.Queue.Entry.Item;
      v20[0] = swift_allocObject();
      sub_21729C6EC(v26, v20[0] + 16);
      __swift_project_boxed_opaque_existential_1(v20, &type metadata for MusicPlayer.Queue.Entry.Item);
      MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v8 + 24))(v15, v7, v8);
      sub_21729C644(v16);
      memcpy(__src, v15, sizeof(__src));
      __swift_destroy_boxed_opaque_existential_1(v20);
      v9 = *&__src[48];
      sub_217751DE8();
      sub_217269F50(__src);
      if (v9)
      {

        sub_217628A3C();
      }
    }

    sub_21729C748(v26);
  }

  v10 = v1[2];
  v11 = v1[3];
  sub_21754240C(v28, __dst, &qword_27CB245B8, &qword_217758AE0);
  sub_21729C6EC((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v12 = sub_2176319D4(v10, v11, v3, __dst, __src);
  if (v12)
  {
    v13 = v12;
    sub_2171F0790(v28, &qword_27CB245B8, &qword_217758AE0);
    sub_2171F0790(v29, &qword_27CB245B8, &qword_217758AE0);
    return v13;
  }

  *__dst = 0;
  *&__dst[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  *__src = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217612B2C()
{
  v1 = v0;
  v2 = *v0;
  sub_21754240C((v0 + 11), v34, &unk_27CB2AF90, &qword_217787568);
  if (v39)
  {

    sub_217283DC8(v34);
    return v1;
  }

  v3 = v34[0];
  v32[0] = v35;
  v32[1] = v36;
  v32[2] = v37;
  v33 = v38;
  sub_21754240C(v32, v30, &unk_27CB2AF80, &qword_217758C30);
  sub_21754240C(v32, v26, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v26[0] + 1))
  {
    v28[0] = v26[0];
    v28[1] = v26[1];
    v28[2] = v26[2];
    v29 = v27;
    *&v17[24] = &type metadata for Station;
    *&v17[32] = &protocol witness table for Station;
    *v17 = swift_allocObject();
    sub_217283D6C(v28, *v17 + 16);
    v4 = __swift_project_boxed_opaque_existential_1(v17, &type metadata for Station);
    sub_21729C5E8((v4 + 2), v22);
    v5 = v23;
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (v6[3])(__src, v5, v6);
    sub_21729C644(v22);
    memcpy(__dst, __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v7 = __dst[3];
    sub_217751DE8();
    sub_217269F50(__dst);
    if (!v7)
    {
      goto LABEL_7;
    }

    v23 = &type metadata for Station;
    v24 = &protocol witness table for Station;
    v22[0] = swift_allocObject();
    sub_217283D6C(v28, v22[0] + 16);
    v8 = __swift_project_boxed_opaque_existential_1(v22, &type metadata for Station);
    sub_21729C5E8((v8 + 2), v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v10 + 24))(v17, v9, v10);
    sub_21729C644(v18);
    memcpy(__src, v17, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v11 = __src[6];
    sub_217751DE8();
    sub_217269F50(__src);
    if (v11)
    {

      sub_2176284C4(&type metadata for Station, &protocol witness table for Station, sub_217283D6C, v17);
      sub_217283DC8(v28);
      sub_2171F0790(v30, &unk_27CB2AF80, &qword_217758C30);
      v30[0] = *v17;
      v30[1] = *&v17[16];
      v30[2] = *&v17[32];
      v31 = *&v17[48];
    }

    else
    {
LABEL_7:
      sub_217283DC8(v28);
    }
  }

  else
  {
    sub_2171F0790(v26, &unk_27CB2AF80, &qword_217758C30);
  }

  v12 = v1[2];
  v13 = v1[3];
  sub_21754240C(v30, __dst, &unk_27CB2AF80, &qword_217758C30);
  sub_217283D6C((v1 + 4), __src);
  swift_allocObject();
  sub_217751DE8();
  v14 = sub_217631CA4(v12, v13, v3, __dst, __src);
  if (v14)
  {
    v15 = v14;
    sub_2171F0790(v30, &unk_27CB2AF80, &qword_217758C30);
    sub_2171F0790(v32, &unk_27CB2AF80, &qword_217758C30);
    return v15;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  __src[0] = v1;
  sub_217752C78();
  result = sub_217752D08();
  __break(1u);
  return result;
}

void sub_217612FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  v10 = MEMORY[0x21CEA3980]();
  OUTLINED_FUNCTION_173_10();
  a10(v11);
  objc_autoreleasePoolPop(v10);
}

void *sub_21761306C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADB0, &unk_217778730);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 88, v146, &qword_27CB2ADB8, &qword_217787208);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_21729C79C(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &unk_27CB2ADA0, &unk_21775A060);
    sub_21770B594();
    v81 = *(*a8 + 16);
    sub_21770B8C4(v81);
    sub_2171F0790(v139, &unk_27CB2ADA0, &unk_21775A060);
    sub_21729C7F8(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &qword_27CB27D20, &qword_217758B80);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for Playlist.Entry.Item;
    *&v124[2] = &protocol witness table for Playlist.Entry.Item;
    *&v124[0] = swift_allocObject();
    sub_21729C79C(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C7F8(v136);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &qword_27CB27D20, &qword_217758B80);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &qword_27CB27D20, &qword_217758B80);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for Playlist.Entry.Item;
  v127[0] = &protocol witness table for Playlist.Entry.Item;
  *&v125 = swift_allocObject();
  sub_21729C79C(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Playlist.Entry.Item);
  Playlist.Entry.Item.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_21729C7F8(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E108;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &qword_27CB27D20, &qword_217758B80);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &qword_27CB27D20, &qword_217758B80);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for Playlist.Entry.Item;
    v127[0] = &protocol witness table for Playlist.Entry.Item;
    *&v125 = swift_allocObject();
    sub_21729C79C(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_21729C7F8(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &qword_27CB27D20, &qword_217758B80);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for Playlist.Entry.Item;
    v73 = &type metadata for Playlist.Entry.Item;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &qword_27CB27D20, &qword_217758B80);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_217613D28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE00, &qword_217787290);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &unk_27CB2AE20, &qword_2177872C8);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_21733C220(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &qword_27CB24E08, &qword_2177872B0);
    sub_21770B5AC();
    v81 = *(*a8 + 16);
    sub_21770B8DC(v81);
    sub_2171F0790(v139, &qword_27CB24E08, &qword_2177872B0);
    sub_217635D18(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &unk_27CB2AE10, &qword_2177872A8);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AE10, &qword_2177872A8);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for RecentlyPlayedMusicItem;
    *&v124[2] = &protocol witness table for RecentlyPlayedMusicItem;
    *&v124[0] = swift_allocObject();
    sub_21733C220(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for RecentlyPlayedMusicItem);
    RecentlyPlayedMusicItem.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_217635D18(v136);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &unk_27CB2AE10, &qword_2177872A8);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &unk_27CB2AE10, &qword_2177872A8);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for RecentlyPlayedMusicItem;
  v127[0] = &protocol witness table for RecentlyPlayedMusicItem;
  *&v125 = swift_allocObject();
  sub_21733C220(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for RecentlyPlayedMusicItem);
  RecentlyPlayedMusicItem.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_217635D18(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E148;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &unk_27CB2AE10, &qword_2177872A8);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &unk_27CB2AE10, &qword_2177872A8);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for RecentlyPlayedMusicItem;
    v127[0] = &protocol witness table for RecentlyPlayedMusicItem;
    *&v125 = swift_allocObject();
    sub_21733C220(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for RecentlyPlayedMusicItem);
    RecentlyPlayedMusicItem.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_217635D18(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &unk_27CB2AE10, &qword_2177872A8);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AE10, &qword_2177872A8);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for RecentlyPlayedMusicItem;
    v73 = &type metadata for RecentlyPlayedMusicItem;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &unk_27CB2AE10, &qword_2177872A8);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &unk_27CB2AE10, &qword_2177872A8);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_2176149E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF00, &qword_217771D78);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &unk_27CB2AF20, &qword_2177874B0);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_217283E1C(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &qword_27CB24E60, &qword_21775A130);
    sub_21770B5C4();
    v81 = *(*a8 + 16);
    sub_21770B8F4(v81);
    sub_2171F0790(v139, &qword_27CB24E60, &qword_21775A130);
    sub_217283E78(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &unk_27CB2AF10, &unk_217787490);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AF10, &unk_217787490);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for MusicCatalogSearchResponse.TopResult;
    *&v124[2] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    *&v124[0] = swift_allocObject();
    sub_217283E1C(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for MusicCatalogSearchResponse.TopResult);
    MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_217283E78(v136);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &unk_27CB2AF10, &unk_217787490);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &unk_27CB2AF10, &unk_217787490);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for MusicCatalogSearchResponse.TopResult;
  v127[0] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  *&v125 = swift_allocObject();
  sub_217283E1C(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicCatalogSearchResponse.TopResult);
  MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_217283E78(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E188;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &unk_27CB2AF10, &unk_217787490);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &unk_27CB2AF10, &unk_217787490);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for MusicCatalogSearchResponse.TopResult;
    v127[0] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    *&v125 = swift_allocObject();
    sub_217283E1C(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicCatalogSearchResponse.TopResult);
    MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_217283E78(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &unk_27CB2AF10, &unk_217787490);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AF10, &unk_217787490);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    v73 = &type metadata for MusicCatalogSearchResponse.TopResult;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &unk_27CB2AF10, &unk_217787490);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &unk_27CB2AF10, &unk_217787490);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176156A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C18, &unk_217771C80);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AD98, &qword_2177871E0);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217283AFC(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2AD90, &unk_217771C70);
    sub_21770B5F4();
    v83 = *(*a8 + 16);
    sub_21770B924(v83);
    sub_2171F0790(v147, &qword_27CB2AD90, &unk_217771C70);
    result = sub_217283B58(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &qword_27CB277F0, &unk_21775A2B0);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Song;
    *&v131[2] = &protocol witness table for Song;
    *&v131[0] = swift_allocObject();
    sub_217283AFC(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Song);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_217283B58(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB277F0, &unk_21775A2B0);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &qword_27CB277F0, &unk_21775A2B0);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &qword_27CB277F0, &unk_21775A2B0);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Song;
  v134[0] = &protocol witness table for Song;
  *&v132 = swift_allocObject();
  sub_217283AFC(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Song);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217283B58(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E1C8;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &qword_27CB277F0, &unk_21775A2B0);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Song;
    v134[0] = &protocol witness table for Song;
    *&v132 = swift_allocObject();
    sub_217283AFC(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Song);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217283B58(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &qword_27CB277F0, &unk_21775A2B0);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &qword_27CB277F0, &unk_21775A2B0);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Song;
    v75 = &type metadata for Song;
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB277F0, &unk_21775A2B0);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &qword_27CB277F0, &unk_21775A2B0);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &qword_27CB277F0, &unk_21775A2B0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217616338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF50, &unk_217771CA8);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &unk_27CB2AF70, &qword_217787530);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217283C68(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB24E88, &qword_21775A178);
    sub_21770B60C();
    v83 = *(*a8 + 16);
    sub_21770B93C(v83);
    sub_2171F0790(v147, &qword_27CB24E88, &qword_21775A178);
    result = sub_217283CC4(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &unk_27CB2AF60, &qword_217758C00);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for RecordLabel;
    *&v131[2] = &protocol witness table for RecordLabel;
    *&v131[0] = swift_allocObject();
    sub_217283C68(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for RecordLabel);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_217283CC4(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB2AF60, &qword_217758C00);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &unk_27CB2AF60, &qword_217758C00);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &unk_27CB2AF60, &qword_217758C00);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for RecordLabel;
  v134[0] = &protocol witness table for RecordLabel;
  *&v132 = swift_allocObject();
  sub_217283C68(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for RecordLabel);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217283CC4(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E208;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &unk_27CB2AF60, &qword_217758C00);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for RecordLabel;
    v134[0] = &protocol witness table for RecordLabel;
    *&v132 = swift_allocObject();
    sub_217283C68(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for RecordLabel);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217283CC4(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &unk_27CB2AF60, &qword_217758C00);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &unk_27CB2AF60, &qword_217758C00);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for RecordLabel;
    v75 = &type metadata for RecordLabel;
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB2AF60, &qword_217758C00);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &unk_27CB2AF60, &qword_217758C00);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &unk_27CB2AF60, &qword_217758C00);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217616FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C20, &unk_217771CC0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AF48, &qword_2177874F0);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217284338(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2AF40, &unk_21775A140);
    sub_21770B624();
    v83 = *(*a8 + 16);
    sub_21770B954(v83);
    sub_2171F0790(v147, &qword_27CB2AF40, &unk_21775A140);
    result = sub_217284394(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &qword_27CB24678, &qword_217758BD0);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for RadioShow;
    *&v131[2] = &protocol witness table for RadioShow;
    *&v131[0] = swift_allocObject();
    sub_217284338(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for RadioShow);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_217284394(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB24678, &qword_217758BD0);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &qword_27CB24678, &qword_217758BD0);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &qword_27CB24678, &qword_217758BD0);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for RadioShow;
  v134[0] = &protocol witness table for RadioShow;
  *&v132 = swift_allocObject();
  sub_217284338(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for RadioShow);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217284394(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E248;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &qword_27CB24678, &qword_217758BD0);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for RadioShow;
    v134[0] = &protocol witness table for RadioShow;
    *&v132 = swift_allocObject();
    sub_217284338(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for RadioShow);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217284394(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &qword_27CB24678, &qword_217758BD0);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &qword_27CB24678, &qword_217758BD0);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for RadioShow;
    v75 = &type metadata for RadioShow;
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB24678, &qword_217758BD0);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &qword_27CB24678, &qword_217758BD0);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &qword_27CB24678, &qword_217758BD0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217617C68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADE0, &qword_217771D38);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2ADF8, &qword_217787278);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_2172757C0(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2ADF0, &qword_217787260);
    sub_21770B654();
    v83 = *(*a8 + 16);
    sub_21770B984(v83);
    sub_2171F0790(v147, &qword_27CB2ADF0, &qword_217787260);
    result = sub_21726B8C4(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &unk_27CB28A90, &qword_217758F90);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Playlist;
    *&v131[2] = &protocol witness table for Playlist;
    *&v131[0] = swift_allocObject();
    sub_2172757C0(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Playlist);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_21726B8C4(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB28A90, &qword_217758F90);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &unk_27CB28A90, &qword_217758F90);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &unk_27CB28A90, &qword_217758F90);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Playlist;
  v134[0] = &protocol witness table for Playlist;
  *&v132 = swift_allocObject();
  sub_2172757C0(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Playlist);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_21726B8C4(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E288;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &unk_27CB28A90, &qword_217758F90);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Playlist;
    v134[0] = &protocol witness table for Playlist;
    *&v132 = swift_allocObject();
    sub_2172757C0(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Playlist);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_21726B8C4(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &unk_27CB28A90, &qword_217758F90);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &unk_27CB28A90, &qword_217758F90);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Playlist;
    v75 = &type metadata for Playlist;
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB28A90, &qword_217758F90);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &unk_27CB28A90, &qword_217758F90);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &unk_27CB28A90, &qword_217758F90);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217618900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C28, &qword_217787370);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AE88, &qword_2177873A8);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217283BAC(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2AE80, &qword_217787390);
    sub_21770B684();
    v83 = *(*a8 + 16);
    sub_21770B9B4(v83);
    sub_2171F0790(v147, &qword_27CB2AE80, &qword_217787390);
    result = sub_217283C08(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &qword_27CB24550, &qword_217758A58);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for MusicVideo;
    *&v131[2] = &protocol witness table for MusicVideo;
    *&v131[0] = swift_allocObject();
    sub_217283BAC(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for MusicVideo);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_217283C08(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB24550, &qword_217758A58);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &qword_27CB24550, &qword_217758A58);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &qword_27CB24550, &qword_217758A58);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for MusicVideo;
  v134[0] = &protocol witness table for MusicVideo;
  *&v132 = swift_allocObject();
  sub_217283BAC(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for MusicVideo);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217283C08(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E2C8;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &qword_27CB24550, &qword_217758A58);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for MusicVideo;
    v134[0] = &protocol witness table for MusicVideo;
    *&v132 = swift_allocObject();
    sub_217283BAC(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for MusicVideo);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217283C08(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &qword_27CB24550, &qword_217758A58);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &qword_27CB24550, &qword_217758A58);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for MusicVideo;
    v75 = &type metadata for MusicVideo;
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB24550, &qword_217758A58);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &qword_27CB24550, &qword_217758A58);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &qword_27CB24550, &qword_217758A58);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217619598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C30, &unk_217771D00);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AFB8, &qword_2177875A8);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217284288(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2AFB0, &unk_217771CF0);
    sub_21770B69C();
    v83 = *(*a8 + 16);
    sub_21770B9CC(v83);
    sub_2171F0790(v147, &qword_27CB2AFB0, &unk_217771CF0);
    result = sub_2172842E4(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &qword_27CB246E8, &qword_21776C140);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Curator;
    *&v131[2] = &protocol witness table for Curator;
    *&v131[0] = swift_allocObject();
    sub_217284288(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Curator);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_2172842E4(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB246E8, &qword_21776C140);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &qword_27CB246E8, &qword_21776C140);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &qword_27CB246E8, &qword_21776C140);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Curator;
  v134[0] = &protocol witness table for Curator;
  *&v132 = swift_allocObject();
  sub_217284288(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Curator);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_2172842E4(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E308;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &qword_27CB246E8, &qword_21776C140);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Curator;
    v134[0] = &protocol witness table for Curator;
    *&v132 = swift_allocObject();
    sub_217284288(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Curator);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_2172842E4(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &qword_27CB246E8, &qword_21776C140);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &qword_27CB246E8, &qword_21776C140);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Curator;
    v75 = &type metadata for Curator;
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB246E8, &qword_21776C140);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &qword_27CB246E8, &qword_21776C140);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &qword_27CB246E8, &qword_21776C140);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21761A230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C38, &qword_2177872E0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AE48, &qword_217787318);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_21725CF68(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB2AE40, &qword_217787300);
    sub_21770B6CC();
    v83 = *(*a8 + 16);
    sub_21770B9FC(v83);
    sub_2171F0790(v147, &qword_27CB2AE40, &qword_217787300);
    result = sub_217284498(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &qword_27CB2CD90, &unk_21775A2C0);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Artist;
    *&v131[2] = &protocol witness table for Artist;
    *&v131[0] = swift_allocObject();
    sub_21725CF68(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Artist);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_217284498(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB2CD90, &unk_21775A2C0);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &qword_27CB2CD90, &unk_21775A2C0);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &qword_27CB2CD90, &unk_21775A2C0);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Artist;
  v134[0] = &protocol witness table for Artist;
  *&v132 = swift_allocObject();
  sub_21725CF68(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Artist);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217284498(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E348;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &qword_27CB2CD90, &unk_21775A2C0);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Artist;
    v134[0] = &protocol witness table for Artist;
    *&v132 = swift_allocObject();
    sub_21725CF68(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Artist);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217284498(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &qword_27CB2CD90, &unk_21775A2C0);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &qword_27CB2CD90, &unk_21775A2C0);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Artist;
    v75 = &type metadata for Artist;
  }

  else
  {
    sub_2171F0790(&v132, &qword_27CB2CD90, &unk_21775A2C0);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &qword_27CB2CD90, &unk_21775A2C0);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &qword_27CB2CD90, &unk_21775A2C0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21761AEC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD00, &unk_217771D20);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &qword_27CB2AD68, &qword_217787188);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_21725CF0C(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB24DC0, &qword_21775A000);
    sub_21770B6FC();
    v83 = *(*a8 + 16);
    sub_21770BA2C(v83);
    sub_2171F0790(v147, &qword_27CB24DC0, &qword_21775A000);
    result = sub_21725CE44(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &unk_27CB275E0, &qword_2177589D0);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Album;
    *&v131[2] = &protocol witness table for Album;
    *&v131[0] = swift_allocObject();
    sub_21725CF0C(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Album);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_21725CE44(v143);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB275E0, &qword_2177589D0);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &unk_27CB275E0, &qword_2177589D0);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &unk_27CB275E0, &qword_2177589D0);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Album;
  v134[0] = &protocol witness table for Album;
  *&v132 = swift_allocObject();
  sub_21725CF0C(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Album);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_21725CE44(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E388;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &unk_27CB275E0, &qword_2177589D0);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Album;
    v134[0] = &protocol witness table for Album;
    *&v132 = swift_allocObject();
    sub_21725CF0C(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Album);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_21725CE44(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &unk_27CB275E0, &qword_2177589D0);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &unk_27CB275E0, &qword_2177589D0);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Album;
    v75 = &type metadata for Album;
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB275E0, &qword_2177589D0);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &unk_27CB275E0, &qword_2177589D0);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &unk_27CB275E0, &qword_2177589D0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_21761BB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE90, &qword_217771D60);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &unk_27CB2AEB0, &qword_2177873E8);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_217283ECC(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &qword_27CB24E38, &unk_217771D50);
    sub_21770B714();
    v81 = *(*a8 + 16);
    sub_21770BA44(v81);
    sub_2171F0790(v139, &qword_27CB24E38, &unk_217771D50);
    sub_217283F28(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &unk_27CB2AEA0, &unk_21775A260);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AEA0, &unk_21775A260);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for MusicPersonalRecommendation.Item;
    *&v124[2] = &protocol witness table for MusicPersonalRecommendation.Item;
    *&v124[0] = swift_allocObject();
    sub_217283ECC(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for MusicPersonalRecommendation.Item);
    MusicPersonalRecommendation.Item.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_217283F28(v136);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &unk_27CB2AEA0, &unk_21775A260);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &unk_27CB2AEA0, &unk_21775A260);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for MusicPersonalRecommendation.Item;
  v127[0] = &protocol witness table for MusicPersonalRecommendation.Item;
  *&v125 = swift_allocObject();
  sub_217283ECC(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicPersonalRecommendation.Item);
  MusicPersonalRecommendation.Item.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_217283F28(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E3C8;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &unk_27CB2AEA0, &unk_21775A260);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &unk_27CB2AEA0, &unk_21775A260);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for MusicPersonalRecommendation.Item;
    v127[0] = &protocol witness table for MusicPersonalRecommendation.Item;
    *&v125 = swift_allocObject();
    sub_217283ECC(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicPersonalRecommendation.Item);
    MusicPersonalRecommendation.Item.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_217283F28(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &unk_27CB2AEA0, &unk_21775A260);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB2AEA0, &unk_21775A260);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for MusicPersonalRecommendation.Item;
    v73 = &type metadata for MusicPersonalRecommendation.Item;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &unk_27CB2AEA0, &unk_21775A260);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &unk_27CB2AEA0, &unk_21775A260);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21761C81C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE50, &unk_217771C30);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &unk_27CB2AE60, &qword_217787358);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217284130(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB24E20, &unk_21775A0C0);
    sub_21770B72C();
    v83 = *(*a8 + 16);
    sub_21770BA5C(v83);
    sub_2171F0790(v147, &qword_27CB24E20, &unk_21775A0C0);
    result = sub_21728418C(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &unk_27CB27760, &unk_21775A2D0);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Genre;
    *&v131[2] = &protocol witness table for Genre;
    *&v131[0] = swift_allocObject();
    sub_217284130(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Genre);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_21728418C(v143);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB27760, &unk_21775A2D0);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &unk_27CB27760, &unk_21775A2D0);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &unk_27CB27760, &unk_21775A2D0);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Genre;
  v134[0] = &protocol witness table for Genre;
  *&v132 = swift_allocObject();
  sub_217284130(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Genre);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_21728418C(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E408;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &unk_27CB27760, &unk_21775A2D0);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Genre;
    v134[0] = &protocol witness table for Genre;
    *&v132 = swift_allocObject();
    sub_217284130(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Genre);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_21728418C(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &unk_27CB27760, &unk_21775A2D0);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &unk_27CB27760, &unk_21775A2D0);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Genre;
    v75 = &type metadata for Genre;
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB27760, &unk_21775A2D0);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &unk_27CB27760, &unk_21775A2D0);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &unk_27CB27760, &unk_21775A2D0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_21761D4B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C08, &unk_217771C50);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &qword_27CB2AEF8, &qword_217787460);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_217275710(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &qword_27CB2AEF0, &qword_21775A120);
    sub_21770B744();
    v81 = *(*a8 + 16);
    sub_21770BA74(v81);
    sub_2171F0790(v139, &qword_27CB2AEF0, &qword_21775A120);
    sub_21727576C(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &unk_27CB28AA0, &qword_21775A020);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB28AA0, &qword_21775A020);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for Track;
    *&v124[2] = &protocol witness table for Track;
    *&v124[0] = swift_allocObject();
    sub_217275710(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for Track);
    Track.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_21727576C(v136);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &unk_27CB28AA0, &qword_21775A020);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &unk_27CB28AA0, &qword_21775A020);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for Track;
  v127[0] = &protocol witness table for Track;
  *&v125 = swift_allocObject();
  sub_217275710(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Track);
  Track.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_21727576C(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E448;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &unk_27CB28AA0, &qword_21775A020);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &unk_27CB28AA0, &qword_21775A020);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for Track;
    v127[0] = &protocol witness table for Track;
    *&v125 = swift_allocObject();
    sub_217275710(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Track);
    Track.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_21727576C(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &unk_27CB28AA0, &qword_21775A020);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &unk_27CB28AA0, &qword_21775A020);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for Track;
    v73 = &type metadata for Track;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &unk_27CB28AA0, &qword_21775A020);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &unk_27CB28AA0, &qword_21775A020);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_21761E170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C00, &qword_217787400);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &unk_27CB2AED0, &qword_217787420);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_21729C79C(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &qword_27CB24E48, &qword_21775A0F8);
    sub_21770B75C();
    v81 = *(*a8 + 16);
    sub_21770BA8C(v81);
    sub_2171F0790(v139, &qword_27CB24E48, &qword_21775A0F8);
    sub_21729C7F8(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &qword_27CB27D20, &qword_217758B80);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for Playlist.Entry.Item;
    *&v124[2] = &protocol witness table for Playlist.Entry.Item;
    *&v124[0] = swift_allocObject();
    sub_21729C79C(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C7F8(v136);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &qword_27CB27D20, &qword_217758B80);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &qword_27CB27D20, &qword_217758B80);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for Playlist.Entry.Item;
  v127[0] = &protocol witness table for Playlist.Entry.Item;
  *&v125 = swift_allocObject();
  sub_21729C79C(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Playlist.Entry.Item);
  Playlist.Entry.Item.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_21729C7F8(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E488;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &qword_27CB27D20, &qword_217758B80);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &qword_27CB27D20, &qword_217758B80);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for Playlist.Entry.Item;
    v127[0] = &protocol witness table for Playlist.Entry.Item;
    *&v125 = swift_allocObject();
    sub_21729C79C(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for Playlist.Entry.Item);
    Playlist.Entry.Item.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_21729C7F8(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &qword_27CB27D20, &qword_217758B80);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for Playlist.Entry.Item;
    v73 = &type metadata for Playlist.Entry.Item;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &qword_27CB27D20, &qword_217758B80);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &qword_27CB27D20, &qword_217758B80);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}