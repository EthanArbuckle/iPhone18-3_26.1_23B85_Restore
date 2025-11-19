uint64_t sub_237B90080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = sub_237C0596C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C05ADC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  v21 = *a1;
  v22 = a1[1];
  v29[1] = v21;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D0], v8);
  (*(v14 + 16))(v7, v30, v13);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);

  sub_237C05ABC();
  sub_237C0595C();
  v23 = *(v14 + 8);
  v23(v20, v13);
  v24 = sub_237C05A9C();
  v26 = v25;
  result = (v23)(v18, v13);
  v28 = v31;
  *v31 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_237B902FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_237C05A2C();
  v11 = sub_237C05A9C();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void MLHandPoseClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v8 = v7;
  v66 = v9;
  v10 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_62_8();
  sub_237B8CDFC(v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    v45 = (v16 + v44[12]);
    v32 = v45[1];
    v57 = *v45;
    v46 = *(v16 + v44[16] + 8);

    v47 = *(v16 + v44[20] + 8);

    v48 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v48);
    v36 = (*(v49 + 8))(v16);
LABEL_5:
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v36, v37, v38, v39, v40, v41, v42, v43, v55, v57, v59, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8]);
    if (v1)
    {
    }

    else
    {
      v53 = v64;
      v54 = v65;
      sub_237B03618(v60, v63);
      sub_237B320AC(v8, v63, v53, v54, v58, v32, v5, v3, v66);

      sub_2379DBC9C(v53, v54);
      memcpy(v62, v63, sizeof(v62));
      sub_237B07C38(v62);
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v27 = *v16;
    v55 = v0;
    v28 = v8;
    v29 = v5;
    v30 = v3;
    v31 = *(v16 + 8);
    v32 = *(v16 + 24);
    v57 = *(v16 + 16);
    v33 = *(v16 + 40);
    v34 = *(v16 + 56);

    v35 = v31;
    v3 = v30;
    v5 = v29;
    v8 = v28;
    v1 = v0;
    sub_2379DBC9C(v27, v35);
    goto LABEL_5;
  }

  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(EnumCaseMultiPayload, v20, v21, v22, v23, v24, v25, v26, v55, v56, v59, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8]);
  if (!v0)
  {
    v50 = v64;
    v51 = v8;
    v52 = v65;
    sub_237B03618(v61, v63);
    sub_237B064E0(v51, v63, v50, v52, v5, v3, v66);
    sub_2379DBC9C(v50, v52);
    memcpy(v62, v63, sizeof(v62));
    sub_237B07C38(v62);
  }

  sub_237A9A80C(v16);
LABEL_11:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B9068C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08EAC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_237C093CC();

    sub_237C0878C();
    result = sub_237C0940C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_237C0929C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_237B9081C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_237B9082C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90888()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D870, &unk_237C14EB0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90908(uint64_t *a1, uint64_t *a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 80);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90994(uint64_t (*a1)(void))
{
  v1 = *(*(a1(0) - 8) + 80);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

void sub_237B90A1C()
{
  sub_237B90AE0();
  if (v0 <= 0x3F)
  {
    sub_237A6191C();
    if (v1 <= 0x3F)
    {
      sub_237B6215C(319);
      if (v2 <= 0x3F)
      {
        sub_237B90BDC();
        if (v3 <= 0x3F)
        {
          sub_237B62370();
          if (v4 <= 0x3F)
          {
            sub_237B90C44();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_237B90AE0()
{
  if (!qword_27DE9D858)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05ADC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D858);
    }
  }
}

void sub_237B90BDC()
{
  if (!qword_27DE9D860)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D860);
    }
  }
}

void sub_237B90C44()
{
  if (!qword_27DE9D868)
  {
    sub_237C05DBC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D868);
    }
  }
}

void OUTLINED_FUNCTION_16_30()
{
  v4 = *(v0 + 64);
  v3 = v0 + 64;
  *(v2 - 320) = v3;
  *(v3 - 32);
  *(v2 - 168) = v1 + 16;
  *(v2 - 160) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_20_32()
{
  v3 = *(v1 - 192);

  return sub_237B5DD44(v0, 0x7461506567616D69, 0xE900000000000068, v3);
}

void OUTLINED_FUNCTION_21_34()
{
  v3 = v0;
  v4 = *(v2 - 104);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(v2 - 280) = v3;
  v6 = *(v1 + 72);
  *(v2 - 152) = *(v1 + 16);
  *(v2 - 144) = v6;
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return sub_237B845E8((v0 - 296), 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_25_28()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 200);
  return result;
}

void OUTLINED_FUNCTION_28_21()
{
  *(v0 + 16) = v4;
  v6 = v0 + 16 * v2;
  *(v6 + 32) = *(v5 - 136);
  *(v6 + 40) = v3;
  v7 = v1 + *(v5 - 144);
  v8 = *(v5 - 72);
}

uint64_t OUTLINED_FUNCTION_30_23(uint64_t a1)
{
  *(v2 - 136) = a1;
  v3 = **(v2 - 160);
  return v1;
}

uint64_t OUTLINED_FUNCTION_35_18()
{
  result = *(v0 - 128);
  v2 = *(v0 - 168);
  v3 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_15()
{
  result = *(v0 - 192);
  v2 = *(v0 - 200);
  return result;
}

void OUTLINED_FUNCTION_46_16()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_53_12(uint64_t result)
{
  v2 = *(v1 - 320);
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_60_13()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_70_6(uint64_t result)
{
  *(v2 - 304) = result;
  *(v2 - 312) = v1;
  return result;
}

void OUTLINED_FUNCTION_72_8()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

uint64_t sub_237B91000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      if (*(a1 + 48) == *(a2 + 48))
      {
        if (*(a1 + 56) == *(a2 + 56))
        {
          if (*(a1 + 64) == *(a2 + 64))
          {
            v6 = *(a1 + 72);
            v7 = 1702195828;
            v8 = *(a2 + 72);
            if (*(a1 + 72))
            {
              v9 = 1702195828;
            }

            else
            {
              v9 = 0x65736C6166;
            }

            if (*(a1 + 72))
            {
              v10 = 0xE400000000000000;
            }

            else
            {
              v10 = 0xE500000000000000;
            }

            if (*(a2 + 72))
            {
              v11 = 0xE400000000000000;
            }

            else
            {
              v7 = 0x65736C6166;
              v11 = 0xE500000000000000;
            }

            if (v6 == v8)
            {
              v12 = 0;
            }

            else
            {
              v12 = 0x2065727574616546;
            }

            if (v6 == v8)
            {
              v13 = 0;
            }

            else
            {
              v13 = 0xEF676E696C616373;
            }

            if (v6 == v8)
            {
              v3 = 0;
            }

            else
            {
              v3 = v9;
            }

            if (v6 == v8)
            {
              v4 = 0;
            }

            else
            {
              v4 = v10;
            }

            if (v6 == v8)
            {
              result = 0;
            }

            else
            {
              result = v7;
            }

            if (v6 == v8)
            {
              v15 = 0;
            }

            else
            {
              v15 = v11;
            }
          }

          else
          {
            v13 = 0x8000000237C1B920;
            sub_237C08A6C();
            result = OUTLINED_FUNCTION_0_54();
            v12 = 0xD000000000000015;
          }
        }

        else
        {
          sub_237C08A6C();
          result = OUTLINED_FUNCTION_0_54();
          v13 = 0xE900000000000065;
          v12 = 0x7A69732070657453;
        }
      }

      else
      {
        v13 = 0xEA00000000007974;
        sub_237C08A6C();
        result = OUTLINED_FUNCTION_0_54();
        v12 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v13 = 0xEA00000000007974;
      v12 = 0x6C616E657020314CLL;
      sub_237C08A6C();
      result = OUTLINED_FUNCTION_0_54();
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v3 = sub_237C0924C();
    v4 = v16;
    result = sub_237C0924C();
    v13 = 0xEF736E6F69746172;
    v12 = 0x657469202E78614DLL;
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v3;
  a3[3] = v4;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

uint64_t sub_237B9122C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80(&unk_237C14F08);
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B912B8()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80(&unk_237C14EF8);
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B9133C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80(dword_237C14F28);
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B913C0()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80(&unk_237C14EE8);
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B91444()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v1[1] = sub_237A6ECB4;

  return j__OUTLINED_FUNCTION_2_76();
}

uint64_t OUTLINED_FUNCTION_3_80@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_237B91530()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v4 = *(v3 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237B915D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v13 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB350(v13);
  sub_2379FC064(v11);
  if (v12)
  {
    v14 = *(v10 + 112);

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_59_11(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_17_27(v25);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v27);
  }
}

uint64_t sub_237B916E8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v2;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  *(v4 + 128) = v0;

  if (!v0)
  {
    *(v4 + 136) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237B917EC()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v4 = *(v3 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237B9188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v13 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB36C(v13);
  sub_2379FC064(v11);
  if (v12)
  {
    v14 = *(v10 + 112);

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_59_11(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_17_27(v25);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v27);
  }
}

uint64_t sub_237B919A4()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v4 = *(v3 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237B91A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v13 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB398(v13);
  sub_2379FC064(v11);
  if (v12)
  {
    v14 = *(v10 + 112);

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_59_11(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_17_27(v25);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v27);
  }
}

uint64_t sub_237B91B5C()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v4 = *(v3 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237B91D14()
{
  v1[11] = v0;
  v2 = sub_237C07F1C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B91DD4, 0, 0);
}

uint64_t sub_237B91DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v13 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB6A4(v13);
  sub_2379FC064(v11);
  if (v12)
  {
    v14 = *(v10 + 112);

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_59_11(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_17_27(v25);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v27);
  }
}

uint64_t sub_237B91EEC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v2;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  *(v4 + 128) = v0;

  if (!v0)
  {
    *(v4 + 136) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237B91FF0()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

uint64_t sub_237B92070()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[14];

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237B920E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_237C0602C();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = sub_237C05DBC();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[18] = v12;
  sub_237AAA8FC(v12);
  v5[19] = 0;

  return MEMORY[0x2822009F8](sub_237B92254, 0, 0);
}

uint64_t sub_237B92254()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  sub_237C05DFC();
  sub_237B635F0();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v2, v4);
  if (v8)
  {
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[9];
    sub_237C05DFC();
    sub_237B635F0();
    v16 = v15;
    v9(v10, v11);
    if (v16)
    {
      v17 = v0[17];
      v46 = v0[16];
      v49 = v0[18];
      v52 = v0[15];
      v18 = v0[11];
      v19 = v0[8];
      v43 = v0[12];
      v44 = v0[9];

      v0[3] = v8;
      v0[4] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      sub_237A48144();
      sub_237B979F8();
      OUTLINED_FUNCTION_61_9();
      sub_237C06EDC();
      v20 = v0[2];
      v0[6] = v8;
      v0[7] = v16;
      OUTLINED_FUNCTION_61_9();
      sub_237C06EEC();
      OUTLINED_FUNCTION_0_82();
      sub_237B979A4();
      v21 = *(v17 + 8);
      v21(v44, v46);
      v21(v49, v46);

      v22 = v0[5];
      *v19 = v20;
      *(v19 + 8) = v22;
      *(v19 + 16) = 0;

      OUTLINED_FUNCTION_8();
      goto LABEL_7;
    }

    v34 = v0[17];
    v35 = v0[15];
    v51 = v0[12];
    v54 = v0[16];
    v36 = v0[10];
    v37 = v0[11];
    v45 = v0[13];
    v48 = v0[9];

    OUTLINED_FUNCTION_78_5();
    OUTLINED_FUNCTION_68_4();
    sub_237C05DFC();

    sub_237C05FFC();
    v9(v35, v45);
    v38 = sub_237C094DC();
    MEMORY[0x2383DC360](v38);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_43_12(v39, v40);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    v33 = *(v34 + 8);
    v33(v48, v54);
  }

  else
  {
    v25 = v0[17];
    v24 = v0[18];
    v26 = v0[15];
    v27 = v0[13];
    v47 = v0[12];
    v28 = v0[10];
    v29 = v0[11];
    v50 = v0[9];
    v53 = v0[16];
    OUTLINED_FUNCTION_78_5();
    OUTLINED_FUNCTION_68_4();
    sub_237C05DFC();

    sub_237C05FFC();
    v9(v26, v27);
    v30 = sub_237C094DC();
    MEMORY[0x2383DC360](v30);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v31 = swift_allocError();
    OUTLINED_FUNCTION_43_12(v31, v32);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    v33 = *(v25 + 8);
    v33(v50, v53);
  }

  v41 = v0[15];
  v33(v0[18], v0[16]);

  OUTLINED_FUNCTION_8();
LABEL_7:

  return v23();
}

uint64_t sub_237B92648()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[17];
  v2 = v0[12];
  OUTLINED_FUNCTION_0_82();
  sub_237B979A4();
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[15];
  (*(v1 + 8))(v0[9], v0[16]);

  OUTLINED_FUNCTION_8();

  return v6();
}

void MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v164 = v0;
  v2 = v1;
  v165 = v3;
  v168 = v4;
  v162 = v5;
  v175 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLLinearRegressor();
  v10 = OUTLINED_FUNCTION_0(v9);
  v147 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v149 = v14;
  OUTLINED_FUNCTION_77_0(&v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = sub_237C05DBC();
  v15 = OUTLINED_FUNCTION_0(v166);
  v169 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v19);
  v146 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v22);
  v23 = _s5ModelVMa_2();
  v24 = OUTLINED_FUNCTION_1(v23);
  v151 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v28);
  v152 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v31);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v32 = OUTLINED_FUNCTION_0(v159);
  v158 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  v38 = &v141 - v37;
  v156 = _s9RegressorVMa();
  v39 = OUTLINED_FUNCTION_4(v156);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v43 - v42);
  v44 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v49 = OUTLINED_FUNCTION_4(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  v54 = &v141 - v53;
  v55 = v8 + *(v9 + 36);
  *v55 = 0;
  *(v55 + 8) = 0;
  v56 = v55;
  *(v55 + 16) = 0;
  v154 = v9;
  v57 = *(v9 + 40);
  v155 = v8;
  v58 = v8 + v57;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v59 = swift_allocError();
  *v60 = 0xD0000000000000C0;
  v60[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v59, v60);
  *v58 = v61;
  *(v58 + 8) = 0;
  v163 = v58;
  *(v58 + 16) = 1;
  v167 = v2;
  sub_2379FC864(v2, &v170, &qword_27DE9A998, &unk_237C0C100);
  if (v171)
  {
    v62 = *(v48 + 48);
    sub_2379DAD24(&v170, &v172);
    swift_dynamicCast();
    v63 = v164;
    sub_237B655DC(v54, &v54[v62], v175);
    v64 = v56;
    if (v63)
    {

      OUTLINED_FUNCTION_72_4();
      v65 = OUTLINED_FUNCTION_38_1();
      sub_237A68B6C(v65);
      v66 = OUTLINED_FUNCTION_25_29();
      v67(v66);
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
    }

    else
    {
      v143 = v56;
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
      v68 = v162;
      v69 = v168;
      v70 = v54;
      sub_237B19700(v54, v162, v168, v165);
      v164 = 0;
      v72 = v71;
      v142 = v48;

      v73 = v167;
      sub_237B0B0C8(v167, &v172);
      v74 = v160;
      *v160 = v68;
      v74[1] = v69;
      v74[2] = v72;
      sub_237B0B0C8(&v172, (v74 + 3));
      sub_237B0B0C8(&v172, &v170);
      sub_237A20BBC();

      sub_237C06C3C();
      v75 = v159;
      v165 = v72;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(&v170);
      v76 = v158;
      (v158)[2](v157, v38, v75);
      v77 = v74 + *(v156 + 28);
      sub_237C06E5C();
      (v76[1])(v38, v75);
      sub_237A68B6C(&v172);
      v78 = v70 + v62;
      v79 = v161;
      v80 = v164;
      sub_237B730D8(v70, v78, 0, 0, v161);
      if (v80)
      {

        OUTLINED_FUNCTION_72_4();
        sub_237A68B6C(v73);
        v81 = OUTLINED_FUNCTION_25_29();
        v82(v81);
        OUTLINED_FUNCTION_3_81();
        sub_237B979A4();
        sub_2379D9054(v70, &qword_27DE9ADC0, &unk_237C0BF40);
        v64 = v143;
      }

      else
      {
        v159 = v70;
        v83 = v73;
        v84 = sub_237A37A64();
        v64 = v143;
        if ((v84 & 1) == 0)
        {
          sub_237C05D3C();
          v69 = v168;
          sub_237A37AEC(6);
        }

        v85 = v154;
        v86 = v155;
        v87 = (v155 + v154[6]);
        *v87 = v162;
        v87[1] = v69;
        v162 = v85[8];
        sub_237B0B0C8(v83, v86 + v162);
        *(v86 + v85[7]) = v165;
        OUTLINED_FUNCTION_4_68();
        v88 = v153;
        sub_237B94874(v79, v153, v89);
        OUTLINED_FUNCTION_74_8(&v174);
        swift_allocObject();
        OUTLINED_FUNCTION_27_19();
        sub_237B97948(v88, v90, v91);
        sub_2379DD56C();
        v158 = v92;

        *(v86 + v85[5]) = v158;
        OUTLINED_FUNCTION_4_68();
        v93 = OUTLINED_FUNCTION_46_8();
        sub_237B94874(v93, v86, v94);
        v95 = v169;
        v96 = *(v169 + 2);
        v97 = v148;
        v98 = v166;
        v154 = (v169 + 16);
        v157 = v96;
        v96(v148, v159, v166);
        OUTLINED_FUNCTION_14_35();
        sub_237B94874(v86, v150, v99);
        v100 = *(v95 + 80);
        v101 = (v100 + 16) & ~v100;
        v102 = *(v147 + 80);
        v103 = (v146 + v102 + v101) & ~v102;
        v156 = v100 | v102;
        v104 = swift_allocObject();
        v105 = v95;
        v106 = v98;
        v107 = *(v105 + 4);
        v108 = v97;
        v109 = v105 + 32;
        v107(v104 + v101, v108, v106);
        OUTLINED_FUNCTION_12_46();
        sub_237B97948(v150, v104 + v103, v110);
        sub_2379DDFE8();
        v164 = 0;
        v152 = v107;
        v153 = v101;

        v111 = v172;
        LOBYTE(v86) = v173;
        sub_2379F8918(*v64, *(v64 + 8), *(v64 + 16));
        *v64 = v111;
        v112 = v166;
        *(v64 + 16) = v86;
        v113 = v159;
        v114 = v144;
        sub_2379FC864(v159, v144, &qword_27DE9ADC0, &unk_237C0BF40);
        v115 = *(v142 + 48);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114 + v115, 1, v112);
        v117 = (v169 + 8);
        if (EnumTagSinglePayload == 1)
        {
          v118 = OUTLINED_FUNCTION_38_1();
          sub_237A68B6C(v118);
          v119 = v112;
          v120 = *v117;
          (*v117)(v175, v119);
          OUTLINED_FUNCTION_0_82();
          OUTLINED_FUNCTION_46_8();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          OUTLINED_FUNCTION_71_9();
          sub_2379D9054(v113, &qword_27DE9ADC0, &unk_237C0BF40);
          sub_2379D9054(v114 + v115, &qword_27DE9A9A0, &qword_237C0BF60);
          v120(v114, v119);
          goto LABEL_7;
        }

        v121 = v114 + v115;
        v122 = v145;
        v123 = v152;
        v152(v145, v121, v112);
        v169 = *v117;
        v169(v114, v112);
        v151 = v109;
        v124 = v103;
        v125 = v148;
        v157(v148, v122, v112);
        OUTLINED_FUNCTION_14_35();
        v126 = v155;
        v127 = v150;
        sub_237B94874(v155, v150, v128);
        v129 = swift_allocObject();
        v123(v129 + v153, v125, v112);
        OUTLINED_FUNCTION_12_46();
        sub_237B97948(v127, v129 + v124, v130);
        v131 = v164;
        sub_2379DDFE8();
        if (!v131)
        {

          v135 = OUTLINED_FUNCTION_38_1();
          sub_237A68B6C(v135);
          v136 = v169;
          v169(v175, v112);
          v136(v145, v112);
          OUTLINED_FUNCTION_0_82();
          OUTLINED_FUNCTION_46_8();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          v137 = OUTLINED_FUNCTION_71_9();
          OUTLINED_FUNCTION_82_7(v137, &qword_27DE9ADC0, &unk_237C0BF40);
          v138 = v172;
          v139 = v173;
          v140 = v163;
          sub_2379F8918(*v163, *(v163 + 8), *(v163 + 16));
          *v140 = v138;
          *(v140 + 16) = v139;
          goto LABEL_7;
        }

        v132 = OUTLINED_FUNCTION_38_1();
        sub_237A68B6C(v132);
        v133 = v169;
        v169(v175, v112);
        v133(v145, v112);
        OUTLINED_FUNCTION_0_82();
        OUTLINED_FUNCTION_46_8();
        sub_237B979A4();
        OUTLINED_FUNCTION_3_81();
        v134 = OUTLINED_FUNCTION_71_9();
        OUTLINED_FUNCTION_82_7(v134, &qword_27DE9ADC0, &unk_237C0BF40);
        OUTLINED_FUNCTION_0_82();
        sub_237B979A4();
        OUTLINED_FUNCTION_72_4();

        sub_237A68B6C(v126 + v162);
      }
    }

    sub_2379F8918(*v64, *(v64 + 8), *(v64 + 16));
    sub_2379F8918(*v163, *(v163 + 8), *(v163 + 16));
LABEL_7:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for MLLinearRegressor()
{
  result = qword_27DE9D8A8;
  if (!qword_27DE9D8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MLLinearRegressor.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLLinearRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 36));

  return sub_2379F7AF4(v1, v2, v3);
}

id MLLinearRegressor.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLLinearRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 40));

  return sub_2379F7AF4(v1, v2, v3);
}

uint64_t MLLinearRegressor.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLLinearRegressor() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLLinearRegressor.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLinearRegressor() + 28));
}

id MLLinearRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLinearRegressor() + 20));

  return v1;
}

void MLLinearRegressor.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLLinearRegressor() + 20);

  *(v1 + v2) = v0;
}

void (*MLLinearRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLinearRegressor() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLLinearRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLLinearRegressor() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLLinearRegressor.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLLinearRegressor() + 24);
  return nullsub_1;
}

uint64_t MLLinearRegressor.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLLinearRegressor() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLLinearRegressor.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLLinearRegressor() + 28);
  return nullsub_1;
}

uint64_t MLLinearRegressor.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLLinearRegressor() + 32);

  return sub_237B0B0C8(v2, v0);
}

uint64_t sub_237B93844()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9D878);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D878);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLLinearRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9D878);
  OUTLINED_FUNCTION_1_80();
  return sub_237B94874(v3, a1, v4);
}

uint64_t sub_237B93938(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B939E0;

  return sub_237B91D14();
}

uint64_t sub_237B939E0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_237B93B14()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = _s5ModelVMa_2();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237B93938(v6);
}

uint64_t sub_237B93BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(_s5ModelVMa_2() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_237C05DBC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B93CC0, 0, 0);
}

uint64_t sub_237B93CC0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[5];
  v2 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  v3 = (v2 + *(type metadata accessor for MLLinearRegressor() + 24));
  v4 = *v3;
  v5 = v3[1];
  OUTLINED_FUNCTION_4_68();
  v6 = OUTLINED_FUNCTION_37_0();
  sub_237B94874(v6, v7, v8);

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_237B93DC8;
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[2];

  return sub_237B920E4(v12, v10, v4, v5, v11);
}

uint64_t sub_237B93DC8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[8];
    v13 = v3[5];

    OUTLINED_FUNCTION_8();

    return v14();
  }
}

uint64_t sub_237B93EF4()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_8();
  v4 = v0[10];

  return v3();
}

uint64_t sub_237B93F5C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_58_11();
  v0 = sub_237C05DBC();
  OUTLINED_FUNCTION_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for MLLinearRegressor();
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_55_10();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81_3(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_23_32(v9);

  return sub_237B93BD0(v11, v12, v13);
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  LOBYTE(v12) = *(a1 + 8);
  v15 = *a1;
  v16 = v12;
  sub_237A70ED4(&v15, v13);
  sub_237B0B0C8(a5, &v15);
  MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237A68B6C(a5);
}

void MLLinearRegressor.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v103 = v21;
  v26 = v25;
  OUTLINED_FUNCTION_146();
  v27 = _s5ModelVMa_2();
  v28 = OUTLINED_FUNCTION_1(v27);
  v97 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v32);
  v98 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v37 = OUTLINED_FUNCTION_0(v36);
  v102 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  v43 = &v93 - v42;
  v105 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v44 = OUTLINED_FUNCTION_4(v105);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  v100 = _s9RegressorVMa();
  v48 = OUTLINED_FUNCTION_4(v100);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v51 = type metadata accessor for MLLinearRegressor();
  v52 = v20 + *(v51 + 36);
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  v95 = v51;
  v53 = *(v51 + 40);
  v96 = v20;
  v54 = v20 + v53;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v55 = swift_allocError();
  *v56 = 0xD0000000000000C0;
  v56[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v55, v56);
  *v54 = v57;
  *(v54 + 8) = 0;
  *(v54 + 16) = 1;
  v58 = *(type metadata accessor for MLCheckpoint() + 20);
  a10 = v26;
  switch(*(v26 + v58))
  {
    case 2:

      goto LABEL_4;
    default:
      v59 = sub_237C0929C();

      if (v59)
      {
LABEL_4:
        OUTLINED_FUNCTION_66_9();
        v61 = *(v60 - 256);
        swift_storeEnumTagMultiPayload();
        v107 = 0u;
        v108 = 0u;
        v109 = 10;
        v94 = xmmword_237C0CFC0;
        v110 = xmmword_237C0CFC0;
        v93 = xmmword_237C0CFD0;
        v111 = xmmword_237C0CFD0;
        v112 = 1;
        v62 = OUTLINED_FUNCTION_28_22();
        v64 = *(v63 - 256);
        sub_237B94874(v62, v64, v65);
        v106[3] = v61;
        __swift_allocate_boxed_opaque_existential_0(v106);
        OUTLINED_FUNCTION_32_19();
        sub_237B97948(v64, v66, v67);
        OUTLINED_FUNCTION_2_77();
        sub_237B979A4();
        sub_2379DAE54(v106, &v107);
        *v22 = 0;
        v22[1] = 0xE000000000000000;
        v22[2] = MEMORY[0x277D84F90];
        sub_237B0B0C8(&v107, (v22 + 3));
        sub_237B0B0C8(&v107, v106);
        sub_237A20BBC();
        sub_237C06C3C();
        sub_237C06BEC();
        sub_237C06C1C();
        sub_237C06C2C();
        sub_237C06C0C();
        sub_237C06BFC();
        sub_237A68B6C(v106);
        v68 = v102;
        (*(v102 + 16))(v101, v43, v36);
        v69 = v22 + *(v100 + 28);
        sub_237C06E5C();
        (*(v68 + 8))(v43, v36);
        sub_237A68B6C(&v107);
        sub_237B948D0();
        v70 = v104;
        v71 = v103;
        sub_237C0743C();
        if (!v71)
        {
          OUTLINED_FUNCTION_4_68();
          v74 = v99;
          sub_237B94874(v70, v99, v75);
          OUTLINED_FUNCTION_74_8(&a9);
          swift_allocObject();
          OUTLINED_FUNCTION_27_19();
          sub_237B97948(v74, v76, v77);
          sub_2379DD56C();
          v79 = v78;

          v80 = v95;
          v81 = v96;
          *(v96 + v95[5]) = v79;
          OUTLINED_FUNCTION_4_68();
          sub_237B94874(v70, v81, v82);
          OUTLINED_FUNCTION_66_9();
          v84 = *(v83 - 256);
          swift_storeEnumTagMultiPayload();
          v85 = v81 + v80[8];
          *v85 = 0u;
          *(v85 + 16) = 0u;
          *(v85 + 32) = 10;
          *(v85 + 40) = v94;
          *(v85 + 56) = v93;
          *(v85 + 72) = 1;
          v86 = OUTLINED_FUNCTION_28_22();
          v88 = *(v87 - 256);
          sub_237B94874(v86, v88, v89);
          *(&v108 + 1) = v84;
          __swift_allocate_boxed_opaque_existential_0(&v107);
          OUTLINED_FUNCTION_32_19();
          sub_237B97948(v88, v90, v91);
          OUTLINED_FUNCTION_2_77();
          sub_237B979A4();
          sub_2379DAE54(&v107, v85);
          v92 = (v81 + v80[6]);
          *v92 = 0;
          v92[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_7_51();
          sub_237B979A4();
          OUTLINED_FUNCTION_0_82();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          sub_237B979A4();
          *(v81 + v80[7]) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_7_51();
        sub_237B979A4();
        OUTLINED_FUNCTION_3_81();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v72 = swift_allocError();
        *v73 = 0xD00000000000003BLL;
        v73[1] = 0x8000000237C1DCA0;
        OUTLINED_FUNCTION_23_3(v72, v73);
        swift_willThrow();
        OUTLINED_FUNCTION_7_51();
      }

      sub_237B979A4();
      sub_2379F8918(*v52, *(v52 + 8), *(v52 + 16));
      sub_2379F8918(*v54, *(v54 + 8), *(v54 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B94874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

unint64_t sub_237B948D0()
{
  result = qword_27DE9D890;
  if (!qword_27DE9D890)
  {
    _s9RegressorVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D890);
  }

  return result;
}

uint64_t sub_237B94928(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B50114;

  return sub_237B91D14();
}

uint64_t objectdestroyTm_9()
{
  v2 = _s5ModelVMa_2();
  OUTLINED_FUNCTION_65_7(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = *(v1 + v5 + 8);

  if (*(v1 + v5 + 16))
  {

    v10 = *(v8 + 32);
  }

  v11 = *(v0 + 24);
  v12 = sub_237C0707C();
  OUTLINED_FUNCTION_4(v12);
  (*(v13 + 8))(v8 + v11);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_237B94AB8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = _s5ModelVMa_2();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237B94928(v6);
}

void static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v1)
  {
    v3 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
    v5 = OUTLINED_FUNCTION_91(v4);
    sub_237BECE6C(v5, v3);
  }
}

void static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v66 = v0;
  v62 = v1;
  v63 = v2;
  v4 = v3;
  v60 = v5;
  v61 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v14);
  v15 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  v64 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  v65 = &v54 - v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v54 - v27;
  v72 = sub_237C05DBC();
  v29 = OUTLINED_FUNCTION_0(v72);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = *(v8 + 8);
  *&v67 = *v8;
  BYTE8(v67) = v37;
  sub_2379DBCF4(v67, v37);
  sub_237A70ED4(&v67, v36);
  v58 = v4;
  sub_2379FC864(v4, &v70, &qword_27DE9A998, &unk_237C0C100);
  if (v71)
  {
    v38 = *(v19 + 48);
    sub_2379DAD24(&v70, &v67);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    v39 = v66;
    sub_237B655DC(v28, &v28[v38], v36);
    if (v39)
    {
      (*(v31 + 8))(v36, v72);
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
    }

    else
    {
      v56 = v31;
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
      v40 = v65;
      sub_2379FC864(v28, v65, &qword_27DE9ADC0, &unk_237C0BF40);
      v66 = *(v19 + 48);
      v41 = v64;
      sub_2379FC864(v28, v64, &qword_27DE9ADC0, &unk_237C0BF40);
      v55 = *(v19 + 48);
      v42 = OUTLINED_FUNCTION_38_1();
      sub_237B0B0C8(v42, v43);
      OUTLINED_FUNCTION_1_80();
      v44 = v59;
      sub_237B94874(v63, v59, v45);
      v46 = type metadata accessor for LinearRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v46);
      v47 = v62;

      v48 = v61;

      v49 = sub_237B07DFC(v40, v41 + v55, v60, v48, v47, &v67, v44);
      v50 = *(v56 + 8);
      v50(v64, v72);
      sub_2379D9054(v65 + v66, &qword_27DE9A9A0, &qword_237C0BF60);
      v68 = v46;
      v69 = &off_284AC4910;
      *&v67 = v49;
      OUTLINED_FUNCTION_1_80();
      v51 = v57;
      sub_237B94874(v63, v57, v52);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
      OUTLINED_FUNCTION_91(v53);
      sub_2379E43D0(&v67, v51, 6);
      sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);
      v50(v36, v72);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_74();
  v48 = v1;
  v49 = v2;
  v4 = v3;
  v46 = v5;
  v47 = v6;
  OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for MLTrainingSessionParameters();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v44 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v45 = v13;
  v14 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v29 = v4;
  sub_2379FC864(v4, &v53, &qword_27DE9A998, &unk_237C0C100);
  if (v54)
  {
    v30 = *(v18 + 48);
    sub_2379DAD24(&v53, &v50);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_2_77();
    sub_237B979A4();
    if (!v0)
    {
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_57_10();
      v31 = *(v18 + 48);
      sub_237B0B0C8(v29, &v50);
      OUTLINED_FUNCTION_1_80();
      sub_237B94874(v49, v45, v32);
      v33 = type metadata accessor for LinearRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v33);
      v34 = v48;

      OUTLINED_FUNCTION_41_15();
      if (v34)
      {
        sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);
        v35 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v35);
        v37 = (*(v36 + 8))(v24);
        OUTLINED_FUNCTION_83_5(v37, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        OUTLINED_FUNCTION_46();
        v38 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v38);
        v40 = (*(v39 + 8))(v24);
        OUTLINED_FUNCTION_83_5(v40, &qword_27DE9A9A0, &qword_237C0BF60);
        v51 = v33;
        v52 = &off_284AC4910;
        *&v50 = v31;
        OUTLINED_FUNCTION_1_80();
        sub_237B94874(v49, v44, v41);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
        OUTLINED_FUNCTION_91(v42);

        OUTLINED_FUNCTION_81_5();
        sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLLinearRegressor.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BECE6C(v3, a1);
}

void static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v52 = v1;
  v53 = v2;
  v4 = v3;
  v50 = v5;
  v51 = v6;
  OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for MLTrainingSessionParameters();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v48 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v49 = v13;
  v14 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - v27;
  v29 = v4;
  sub_2379FC864(v4, &v57, &qword_27DE9A998, &unk_237C0C100);
  if (v58)
  {
    v30 = *(v18 + 48);
    sub_2379DAD24(&v57, &v54);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_2_77();
    sub_237B979A4();
    if (!v0)
    {
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_57_10();
      v31 = *(v18 + 48);
      sub_237B0B0C8(v29, &v54);
      OUTLINED_FUNCTION_1_80();
      sub_237B94874(v53, v49, v32);
      v33 = type metadata accessor for LinearRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v33);
      v34 = v52;

      OUTLINED_FUNCTION_41_15();
      if (v34)
      {
        sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);
        v35 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v35);
        v37 = (*(v36 + 8))(v24);
        OUTLINED_FUNCTION_83_5(v37, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        OUTLINED_FUNCTION_46();
        v38 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v38);
        v40 = (*(v39 + 8))(v24);
        OUTLINED_FUNCTION_83_5(v40, &qword_27DE9A9A0, &qword_237C0BF60);
        v55 = v33;
        v56 = &off_284AC4910;
        *&v54 = v31;
        OUTLINED_FUNCTION_1_80();
        sub_237B94874(v53, v48, v41);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
        OUTLINED_FUNCTION_91(v42);

        OUTLINED_FUNCTION_81_5();
        v44 = v43;
        sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);

        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
        v46 = OUTLINED_FUNCTION_91(v45);
        sub_237BECE6C(v46, v44);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLinearRegressor.restoreTrainingSession(sessionParameters:)()
{
  OUTLINED_FUNCTION_58_11();
  v2 = type metadata accessor for MLTrainingSessionParameters();
  v3 = OUTLINED_FUNCTION_20(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  OUTLINED_FUNCTION_1_80();
  sub_237B94874(v1, v11, v12);
  v13 = type metadata accessor for LinearRegressorTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v13);
  v14 = sub_237B07D30(v11);
  if (!v0)
  {
    v18[3] = v13;
    v18[4] = &off_284AC4910;
    v18[0] = v14;
    OUTLINED_FUNCTION_1_80();
    sub_237B94874(v1, v8, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
    OUTLINED_FUNCTION_91(v16);
    sub_2379E43D0(v18, v8, 6);
  }
}

uint64_t sub_237B95900(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28[-v20 - 8];
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v15);
    return sub_2379D9054(v15, &qword_27DE9D8B8, &qword_237C15058);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    OUTLINED_FUNCTION_58_11();
    type metadata accessor for LinearRegressorTrainingSessionDelegate();
    swift_dynamicCast();
    v24 = v27;
    v25 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a4;
    v26[6] = a5;

    sub_237BBAEC8(0, 0, v21, &unk_237C15068, v26);
  }
}

uint64_t sub_237B95AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B95BAC, 0, 0);
}

uint64_t sub_237B95BAC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237B95C4C;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237B95EC0();
}

uint64_t sub_237B95C4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237B95D4C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237B978D8(v5, v6);
  OUTLINED_FUNCTION_69_8();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9D8B8, &qword_237C15058);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237B95E08()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 40);
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69_8();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9D8B8, &qword_237C15058);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237B95EC0()
{
  OUTLINED_FUNCTION_9();
  v0[28] = v1;
  v0[29] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[30] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLLinearRegressor();
  v0[31] = v6;
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[34] = OUTLINED_FUNCTION_19();
  v12 = _s20PersistentParametersVMa_3();
  v0[35] = v12;
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  v0[36] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_237B95FD0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9CE00, &qword_237C15080);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  sub_237B97948(*(v0 + 272), v6, _s20PersistentParametersVMa_3);
  sub_237B0B0C8(v6 + v7[8], v0 + 16);
  v10 = (v6 + v7[6]);
  v12 = *v10;
  v11 = v10[1];
  *(v0 + 296) = v11;
  v13 = *(v6 + v7[7]);
  *(v0 + 304) = v13;
  v14 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v9 + v14, v8, &qword_27DE9CDE8, &qword_237C12E30);
  v15 = _s5ModelVMa_2();
  result = __swift_getEnumTagSinglePayload(v8, 1, v15);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 240);
  sub_237B0B0C8(v0 + 16, v0 + 96);
  v19 = v17[9];
  *(v0 + 92) = v19;
  v20 = v16 + v19;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = v17[10];
  *(v0 + 172) = v21;
  v22 = v16 + v21;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v23 = swift_allocError();
  *v24 = 0xD0000000000000C0;
  v24[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v23, v24);
  *v22 = v25;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  OUTLINED_FUNCTION_4_68();
  sub_237B94874(v18, v16, v26);
  *(v16 + v17[7]) = v13;
  v27 = (v16 + v17[6]);
  *v27 = v12;
  v27[1] = v11;
  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = sub_237B96258;
  v29 = *(v0 + 240);

  return sub_237B91D14();
}

uint64_t sub_237B96258()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v7 = *(v6 + 312);
  v8 = *v2;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  *(v4 + 320) = v0;

  if (!v0)
  {
    *(v4 + 328) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237B9635C()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[41];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  OUTLINED_FUNCTION_0_82();
  sub_237B979A4();
  *(v2 + *(v5 + 20)) = v1;
  memcpy((v2 + *(v5 + 32)), v0 + 12, 0x49uLL);
  sub_237B97948(v2, v3, type metadata accessor for MLLinearRegressor);
  result = sub_237B97948(v3, v6, type metadata accessor for MLLinearRegressor);
  v9 = v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  v10 = *(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[36];
    v12 = v0[31];
    v14 = v0[28];
    v13 = v0[29];
    v16 = *v9;
    v15 = *(v9 + 8);
    v17 = v10 & 1;
    sub_2379F7AF4(*v9, v15, v10 & 1);
    sub_237A68B6C((v0 + 2));
    OUTLINED_FUNCTION_33_24();
    sub_237B979A4();
    v18 = v14 + *(v12 + 36);
    sub_2379F8918(*v18, *(v18 + 8), *(v18 + 16));
    *v18 = v16;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    v20 = *(v13 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
    v19 = *(v13 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
    v21 = *(v13 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v20, v19, *(v13 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v21 != 255)
    {
      v22 = v0[28] + *(v0[31] + 40);
      sub_2379F8918(*v22, *(v22 + 8), *(v22 + 16));
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
    }

    v23 = v0[36];
    v24 = v0[33];
    v25 = v0[34];
    v26 = v0[32];
    v27 = v0[30];

    OUTLINED_FUNCTION_8();

    return v28();
  }

  return result;
}

uint64_t sub_237B96538()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v12 = *(v0 + 272);
  v13 = *(v0 + 264);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = v4 + *(v0 + 92);
  v8 = v4 + *(v0 + 172);
  sub_237A68B6C(v0 + 96);
  sub_237B979A4();
  sub_237B979A4();

  sub_2379F8918(*v7, *(v7 + 8), *(v7 + 16));
  sub_2379F8918(*v8, *(v8 + 8), *(v8 + 16));

  sub_237A68B6C(v0 + 16);
  OUTLINED_FUNCTION_33_24();
  sub_237B979A4();

  OUTLINED_FUNCTION_8();
  v10 = *(v0 + 320);

  return v9();
}

void MLLinearRegressor.predictions(from:)()
{
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = type metadata accessor for MLLinearRegressor();
  v10 = *(v0 + *(v9 + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    OUTLINED_FUNCTION_11();
    sub_237AAA8FC(v11);
    v12 = (v0 + *(v9 + 24));
    v13 = *v12;
    v14 = v12[1];
    sub_237C05DFC();
    (*(v6 + 8))(v2, v3);
  }
}

uint64_t MLLinearRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_20(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = *(a1 + 8);
  v20 = *a1;
  v21 = v18;
  sub_2379DBCF4(v20, v18);
  sub_237A70ED4(&v20, v3);
  MLLinearRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v5);
  }

  (*(v8 + 8))(v3, v5);
  return sub_237A72900(v17, 1, v1);
}

uint64_t MLLinearRegressor.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for MLLinearRegressor();
  v5 = OUTLINED_FUNCTION_0(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_237C05DBC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = *(v2 + *(v4 + 28));
  OUTLINED_FUNCTION_43_0();
  v36 = a1;
  sub_2379F2DA4();
  v31 = v8;
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v12;
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v17 = (v2 + *(v4 + 24));
  v18 = v17[1];
  *(inited + 32) = *v17;
  *(inited + 40) = v18;

  v19 = v36;
  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  v21 = v32;
  v20 = v33;
  v22 = v19;
  v23 = v9;
  (*(v33 + 16))(v32, v22, v9);
  OUTLINED_FUNCTION_14_35();
  v24 = v34;
  sub_237B94874(v2, v34, v25);
  v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v27 = (v14 + *(v35 + 80) + v26) & ~*(v35 + 80);
  v28 = swift_allocObject();
  (*(v20 + 32))(v28 + v26, v21, v23);
  OUTLINED_FUNCTION_12_46();
  sub_237B97948(v24, v28 + v27, v29);
  sub_2379DDFE8();
}

{
  v4 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = *(a1 + 8);
  v15 = *a1;
  v16 = v13;
  sub_2379DBCF4(v15, v13);
  sub_237A70ED4(&v15, v12);
  MLLinearRegressor.evaluation(on:)(v12, a2);
  return (*(v7 + 8))(v12, v4);
}

void MLLinearRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v51 = v0;
  v3 = v2;
  v4 = _s5ModelVMa_2();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C07F1C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_237C05ADC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v3;
  v29 = v28 - v27;
  memcpy(v50, v26, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v42 = v14;
    v43 = v23;
    OUTLINED_FUNCTION_4_68();
    sub_237B94874(v51, v10, v30);
    v31 = *(&v50[0] + 1);
    if (*(&v50[0] + 1))
    {
      v32 = *&v50[0];
      v33 = *(&v50[1] + 1);
      v34 = *&v50[1];
      v35 = v50[2];
      v36 = *(&v50[3] + 1);
      v37 = *&v50[3];
      v38 = *&v50[4];
    }

    else
    {
      v39 = v29;
      v40 = NSFullUserName();
      v32 = sub_237C086EC();
      v31 = v41;

      v29 = v39;
      v38 = 0;
      v33 = 0x8000000237C17C90;
      v35 = 0uLL;
      v36 = 0xE100000000000000;
      v34 = 0xD000000000000033;
      v37 = 49;
    }

    v45[0] = v32;
    v45[1] = v31;
    v45[2] = v34;
    v45[3] = v33;
    v46 = v35;
    v47 = v37;
    v48 = v36;
    v49 = v38;
    sub_2379FC864(v50, &v44, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB6A4(v45);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    sub_2379FC064(v45);
    sub_237C07E5C();
    (*(v42 + 8))(v19, v11);
    (*(v43 + 8))(v29, v20);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLLinearRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v30[1] = v3;
  v31 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v30 - v19;
  v21 = sub_237C05ADC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  memcpy(v32, v5, sizeof(v32));
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v9 + 104))(v14, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLLinearRegressor.write(to:metadata:)();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_73();
}

unint64_t MLLinearRegressor.description.getter()
{
  v3 = v0;
  v4 = type metadata accessor for MLLinearRegressor();
  v5 = v0 + v4[8];
  MLLinearRegressor.ModelParameters.description.getter();
  OUTLINED_FUNCTION_45_16();
  v6 = (v3 + v4[9]);
  v17 = *v6;
  v18 = *(v6 + 16);
  v7 = MLRegressorMetrics.description.getter();
  v9 = v8;
  v10 = (v3 + v4[10]);
  v11 = *(v10 + 16);
  v16 = *v10;
  v12 = MLRegressorMetrics.description.getter();
  v14 = v13;
  MEMORY[0x2383DC360](v1, v2);

  MEMORY[0x2383DC360](v7, v9);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if ((v11 & 1) == 0)
  {
    MEMORY[0x2383DC360](v12, v14);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD00000000000001CLL;
}

id MLLinearRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLLinearRegressor.description.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  v9 = type metadata accessor for MLLinearRegressor();
  OUTLINED_FUNCTION_65_7(v9);
  v11 = *(v10 + 80);
  v12 = (v6 + v8 + v11) & ~v11;
  v14 = *(v13 + 64);
  (*(v4 + 8))(v1 + v6, v2);
  v15 = v1 + v12;
  v16 = *(v1 + v12 + 8);

  if (*(v1 + v12 + 16))
  {

    v17 = *(v15 + 32);
  }

  v18 = *(_s5ModelVMa_2() + 24);
  v19 = sub_237C0707C();
  OUTLINED_FUNCTION_4(v19);
  (*(v20 + 8))(v15 + v18);

  v21 = *(v15 + v0[6] + 8);

  v22 = *(v15 + v0[7]);

  v23 = (v15 + v0[8]);
  if (v23[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_2379F8918(*(v15 + v0[9]), *(v15 + v0[9] + 8), *(v15 + v0[9] + 16));
  sub_2379F8918(*(v15 + v0[10]), *(v15 + v0[10] + 8), *(v15 + v0[10] + 16));

  return MEMORY[0x2821FE8E8](v1, v12 + v14, v5 | v11 | 7);
}

id sub_237B97564@<X0>(void *a1@<X8>)
{
  result = MLLinearRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B975A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = _s5ModelVMa_2();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_237B97664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s5ModelVMa_2();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_237B9770C()
{
  _s5ModelVMa_2();
  if (v0 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237B977D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237B9781C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237B95AF0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_237B978D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B97948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237B979A4()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_237B979F8()
{
  result = qword_27DE9B840;
  if (!qword_27DE9B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B828, &qword_237C0DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B840);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_66@<X0>(uint64_t a1@<X8>)
{
  v1[2] = 0xD000000000000033;
  v1[3] = (a1 - 32) | 0x8000000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 49;
  v1[7] = 0xE100000000000000;
  v1[8] = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_25_29()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_15()
{
  v8 = *(v6 - 232);

  return sub_237B07DFC(v5, v2 + v0, v8, v3, v1, (v6 - 200), v4);
}

uint64_t OUTLINED_FUNCTION_43_12(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_57_10()
{
  *(v5 - 72) = *(v4 + 48);

  return sub_2379FC864(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_66_9()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 256;
  return v0;
}

void OUTLINED_FUNCTION_68_4()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[7];
  v6 = v0[8];

  return sub_237B978D8(v5, v6);
}

uint64_t OUTLINED_FUNCTION_71_9()
{
  v2 = *(v0 - 328);

  return sub_237B979A4();
}

NSString *OUTLINED_FUNCTION_72_9()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  return NSFullUserName();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_79_6()
{

  return sub_2379FC864(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_5()
{
  v5 = *(v3 - 72);

  return sub_237B655DC(v2, v2 + v1, v0);
}

void OUTLINED_FUNCTION_81_5()
{

  sub_2379E43D0((v1 - 200), v0, 6);
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 336);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_83_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 72);

  return sub_2379D9054(v6, a2, a3);
}

uint64_t OUTLINED_FUNCTION_85_5()
{
  *(v1 + 88) = v0;

  return sub_237C07F1C();
}

uint64_t getEnumTagSinglePayload for ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
        JUMPOUT(0x237B98024);
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237B98060()
{
  result = qword_27DE9D8C0;
  if (!qword_27DE9D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D8C0);
  }

  return result;
}

void sub_237B980B4(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 27:
      return;
    case 4:
    case 25:
      OUTLINED_FUNCTION_8_47(21);
      break;
    case 13:
      OUTLINED_FUNCTION_10_45(21);
      break;
    case 22:
      OUTLINED_FUNCTION_9_51(21);
      break;
    case 26:
      OUTLINED_FUNCTION_3_82(0x6147u);
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      break;
  }
}

void sub_237B983D8()
{
  OUTLINED_FUNCTION_5_67();
  switch(v0)
  {
    case 6:
    case 7:
    case 8:
    case 9:
    case 12:
    case 13:
    case 16:
    case 17:
    case 19:
    case 20:
    case 25:
      OUTLINED_FUNCTION_12_47();
      break;
    case 10:
      return;
    case 11:
      OUTLINED_FUNCTION_6_62();
      break;
    case 14:
      OUTLINED_FUNCTION_7_52();
      break;
    case 15:
    case 23:
      OUTLINED_FUNCTION_10_45(24);
      break;
    case 18:
      OUTLINED_FUNCTION_9_51(24);
      break;
    case 21:
    case 22:
    case 24:
      OUTLINED_FUNCTION_8_47(24);
      break;
    case 26:
      OUTLINED_FUNCTION_3_82(0x6167u);
      break;
    case 27:
      OUTLINED_FUNCTION_4_69();
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      break;
  }
}

uint64_t sub_237B98710(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000237C1DF90 == a2;
  if (v3 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_1_81();
    v7 = v3 && v6 == a2;
    if (v7 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_1_81();
      v9 = v3 && v8 == a2;
      if (v9 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
      {

        return 4;
      }

      else
      {
        OUTLINED_FUNCTION_1_81();
        v11 = v3 && v10 == a2;
        if (v11 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
        {

          return 5;
        }

        else
        {
          OUTLINED_FUNCTION_1_81();
          v13 = v3 && v12 == a2;
          if (v13 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
          {

            return 0;
          }

          else
          {
            OUTLINED_FUNCTION_1_81();
            v15 = v3 && v14 == a2;
            if (v15 || (OUTLINED_FUNCTION_0_83() & 1) != 0)
            {

              return 1;
            }

            else
            {
              v16 = a1 == 0xD00000000000001CLL && 0x8000000237C1DE80 == a2;
              if (v16 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v17 = a1 == 0xD00000000000001FLL && 0x8000000237C1DE60 == a2;
                if (v17 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v18 = a1 == 0xD00000000000001ELL && 0x8000000237C1DED0 == a2;
                  if (v18 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v19 = a1 == 0xD000000000000021 && 0x8000000237C1DEA0 == a2;
                    if (v19 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v21 = a1 == OUTLINED_FUNCTION_5_67() && a2 == v20;
                      if (v21 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v23 = a1 == OUTLINED_FUNCTION_6_62() && a2 == v22;
                        if (v23 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v24 = a1 == 0xD000000000000010 && 0x8000000237C1DE40 == a2;
                          if (v24 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v25 = a1 == 0xD000000000000012 && 0x8000000237C1DE20 == a2;
                            if (v25 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v27 = a1 == OUTLINED_FUNCTION_7_52() && a2 == v26;
                              if (v27 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v28 = a1 == 0xD000000000000012 && 0x8000000237C1DDE0 == a2;
                                if (v28 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v29 = a1 == 0xD000000000000014 && 0x8000000237C1DE00 == a2;
                                  if (v29 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                  {

                                    return 15;
                                  }

                                  else
                                  {
                                    v30 = a1 == 0xD000000000000011 && 0x8000000237C1DDC0 == a2;
                                    if (v30 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v31 = a1 == 0xD000000000000013 && 0x8000000237C1DDA0 == a2;
                                      if (v31 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_1_81();
                                        v33 = v3 && v32 == a2;
                                        if (v33 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v34 = a1 == 0xD000000000000019 && 0x8000000237C1DD80 == a2;
                                          if (v34 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v35 = a1 == 0xD000000000000017 && 0x8000000237C1DD60 == a2;
                                            if (v35 || (OUTLINED_FUNCTION_8_20() & 1) != 0 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v36 = a1 == 0xD000000000000014 && 0x8000000237C1DD40 == a2;
                                              if (v36 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_1_81();
                                                v38 = v3 && v37 == a2;
                                                if (v38 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v39 = a1 == 0xD000000000000016 && 0x8000000237C1DD00 == a2;
                                                  if (v39 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v40 = a1 == 0x65657474657A6167 && a2 == 0xE900000000000072;
                                                    if (v40 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
                                                    {

                                                      return 26;
                                                    }

                                                    else if (a1 == OUTLINED_FUNCTION_4_69() && a2 == v41)
                                                    {

                                                      return 27;
                                                    }

                                                    else
                                                    {
                                                      v43 = OUTLINED_FUNCTION_8_20();

                                                      if (v43)
                                                      {
                                                        return 27;
                                                      }

                                                      else
                                                      {
                                                        return 28;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237B98CF0@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_237B980B4(a1);
  v4 = v3;
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_237A02218(v4, v6, 0);
  result = sub_237A022C0();
  a2[3] = result;
  *a2 = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_83()
{

  return sub_237C0929C();
}

void sub_237B98E78()
{
  OUTLINED_FUNCTION_39_15();
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_35_19();
    sub_237BC246C();
    OUTLINED_FUNCTION_16_31();
    sub_237BA2134(v2, v3, v4, v5);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v6)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0F80(v7);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

void sub_237B98EF8()
{
  OUTLINED_FUNCTION_39_15();
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_35_19();
    sub_237BC24D0();
    OUTLINED_FUNCTION_16_31();
    sub_237BA221C(v2, v3, v4, v5);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v6)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0FEC(v7);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

void sub_237B98F7C()
{
  OUTLINED_FUNCTION_39_15();
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_35_19();
    sub_237BC24D0();
    OUTLINED_FUNCTION_16_31();
    sub_237BA237C(v2, v3, v4, v5);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v6)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0FEC(v7);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

uint64_t sub_237B98FFC(uint64_t a1, char a2)
{
  v2 = a1;
  switch(a2)
  {
    case 4:
      return *(a1 + 16);
    case 5:
      v4 = *(a1 + 16);
      if (v4)
      {
        v16 = MEMORY[0x277D84F90];
        sub_237AC8A34();
        v5 = v16;
        v6 = (v2 + 56);
        do
        {
          v7 = *(v6 - 2);
          v8 = *(v6 - 1);
          v9 = *v6;

          sub_237A1E09C(v8, v9);
          v10 = sub_237B98FFC(v8, v9);

          sub_237A1E0B0(v8, v9);
          v11 = *(v16 + 16);
          v12 = v11 + 1;
          if (v11 >= *(v16 + 24) >> 1)
          {
            sub_237AC8A34();
          }

          v6 += 32;
          *(v16 + 16) = v12;
          *(v16 + 8 * v11 + 32) = v10;
          --v4;
        }

        while (v4);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
        v12 = *(MEMORY[0x277D84F90] + 16);
        if (!v12)
        {

          return 0;
        }
      }

      v2 = 0;
      v13 = 32;
      do
      {
        v14 = *(v5 + v13);
        v15 = __OFADD__(v2, v14);
        v2 += v14;
        if (v15)
        {
          __break(1u);
          JUMPOUT(0x237B99188);
        }

        v13 += 8;
        --v12;
      }

      while (v12);

      return v2;
    case 6:
      return 1;
    default:
      return v2;
  }
}

uint64_t sub_237B991A4@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = sub_237C0757C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C075DC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 1:
      v21 = MEMORY[0x277D250F8];
      goto LABEL_7;
    case 2:
      v21 = MEMORY[0x277D25100];
      goto LABEL_7;
    case 3:
      v21 = MEMORY[0x277D250F0];
      goto LABEL_7;
    case 4:

      sub_237C0756C();
      (*(v16 + 104))(v20, *MEMORY[0x277D25130], v13);
      return sub_237C07B3C();
    case 5:

      sub_237C075CC();
      return sub_237C07B3C();
    case 6:

      v23 = (v16 + 104);
      if (a1)
      {
        sub_237C0755C();
        v24 = MEMORY[0x277D25128];
      }

      else
      {
        sub_237C0751C();
        v24 = MEMORY[0x277D25118];
      }

      (*v23)(v20, *v24, v13);
      return sub_237C07B3C();
    default:
      v21 = MEMORY[0x277D250E8];
LABEL_7:
      (*(v8 + 104))(v12, *v21, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_237C0B660;
      *(v22 + 32) = a1;

      sub_237C0750C();

      (*(v8 + 8))(v12, v5);
      return sub_237C07B3C();
  }
}

void sub_237B99480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_60_14();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11;
    v17 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8BB4();
    v14 = (v13 + 32);
    do
    {
      v15 = *v14++;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B380, &qword_237C0CC20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B370, &qword_237C153A0);
      swift_dynamicCast();
      v16 = *(v17 + 16);
      if (v16 >= *(v17 + 24) >> 1)
      {
        sub_237AC8BB4();
      }

      *(v17 + 16) = v16 + 1;
      *(v17 + 8 * v16 + 32) = a11;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_59_12();
}

uint64_t sub_237B9958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8C54();
    v2 = v13;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D839F8];
    v6 = MEMORY[0x277D83A38];
    do
    {
      v7 = *v4;
      v13 = v2;
      v8 = *(v2 + 16);
      if (v8 >= *(v2 + 24) >> 1)
      {
        sub_237AC8C54();
        v2 = v13;
      }

      v11 = v5;
      v12 = v6;
      *&v10 = v7;
      *(v2 + 16) = v8 + 1;
      sub_237A1FCF0(&v10, v2 + 40 * v8 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99678(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8EB4();
    v4 = (a1 + 56);
    v2 = v16;
    do
    {
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA10, &unk_237C15390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B298, &qword_237C0CB48);
      swift_dynamicCast();
      v5 = *(v16 + 16);
      if (v5 >= *(v16 + 24) >> 1)
      {
        sub_237AC8EB4();
      }

      *(v16 + 16) = v5 + 1;
      v6 = (v16 + 32 * v5);
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B997AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2379F6D68(v4, v9);
      v10 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_237AC8ED4();
        v2 = v10;
      }

      *(v2 + 16) = v5 + 1;
      v6 = v2 + 32 * v5;
      v7 = v9[1];
      *(v6 + 32) = v9[0];
      *(v6 + 48) = v7;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B9987C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v11 + 16);
      if (v5 >= *(v11 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v11 + 16) = v5 + 1;
      v6 = v11 + 32 * v5;
      *(v6 + 32) = v9;
      *(v6 + 48) = v10;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B9998C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v11 + 16);
      if (v5 >= *(v11 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v11 + 16) = v5 + 1;
      v6 = v11 + 32 * v5;
      *(v6 + 32) = v9;
      *(v6 + 48) = v10;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 32 * v6;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 32 * v6;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 32 * v6;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8ED4();
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v12 + 16);
      if (v5 >= *(v12 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v12 + 16) = v5 + 1;
      v6 = v12 + 32 * v5;
      *(v6 + 32) = v10;
      *(v6 + 48) = v11;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_237B99ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v354[0] = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  v27 = OUTLINED_FUNCTION_0_26(v26, &v346);
  v317[24] = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v34 = OUTLINED_FUNCTION_0_26(v33, &v344);
  v317[20] = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v41 = OUTLINED_FUNCTION_0_26(v40, &v340);
  v317[16] = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  v48 = OUTLINED_FUNCTION_0_26(v47, &v336);
  v317[12] = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  v55 = OUTLINED_FUNCTION_0_26(v54, &v332);
  v317[8] = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v62 = OUTLINED_FUNCTION_0_26(v61, v329);
  v317[5] = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0_26(v68, v325);
  v317[2] = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8C8, &qword_237C15208);
  OUTLINED_FUNCTION_20(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0_26(v79, &v350);
  v320 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v84);
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  OUTLINED_FUNCTION_4(v318);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  OUTLINED_FUNCTION_0_26(v89, v354);
  v324 = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8D0, &unk_237C15218);
  OUTLINED_FUNCTION_20(v95);
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0_26(v100, &a9);
  v327 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v105);
  v326[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  OUTLINED_FUNCTION_4(v326[0]);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  OUTLINED_FUNCTION_0_26(v110, &a14);
  v331 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8D8, &qword_237C15228);
  OUTLINED_FUNCTION_20(v116);
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_23();
  v338 = v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  OUTLINED_FUNCTION_0_26(v121, &a18);
  v335 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v126);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  OUTLINED_FUNCTION_4(v333);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_23();
  v337 = v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  v132 = OUTLINED_FUNCTION_0(v131);
  v340 = v133;
  v341 = v132;
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_23();
  v339 = v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8E0, &qword_237C15248);
  OUTLINED_FUNCTION_20(v138);
  v140 = *(v139 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_23();
  v347 = v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  v144 = OUTLINED_FUNCTION_0(v143);
  v344 = v145;
  v345 = v144;
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_23();
  v343 = v149;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  OUTLINED_FUNCTION_4(v342);
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_23();
  v346 = v153;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3C8, &unk_237C15260);
  v155 = OUTLINED_FUNCTION_0(v154);
  v348 = v156;
  v349 = v155;
  v158 = *(v157 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_37_15();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC8, &qword_237C0EC28);
  OUTLINED_FUNCTION_0(v160);
  v350 = v161;
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v164);
  v166 = v317 - v165;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  OUTLINED_FUNCTION_0(v167);
  v351 = v168;
  v170 = *(v169 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v171);
  v173 = v317 - v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v174);
  v352 = v175;
  v177 = *(v176 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v178);
  v180 = v317 - v179;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v181);
  v183 = *(v182 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_36_0();
  v353 = sub_237C0600C();
  v354[1] = v185;
  a10 = v25;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_4;
  }

  if (swift_dynamicCastMetatype())
  {
    v188 = a10;
    sub_237C05FEC();
    v355 = 0;
    v356 = 0xE000000000000000;
    sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    v352[1](v180, v174);
    sub_237B43058();
    sub_237B98EF8();

    v189 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v189);
    (*(v190 + 8))(v188);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  if (OUTLINED_FUNCTION_51_2())
  {
    OUTLINED_FUNCTION_28_23();
    v191 = sub_237B3B4E8();
    (*(v351 + 8))(v173, v167);
    if (v191 != 1)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
  if (OUTLINED_FUNCTION_51_2())
  {
    OUTLINED_FUNCTION_28_23();
    v191 = sub_237B3B504();
    (*(v350 + 8))(v166, v160);
    if (v191 != 1)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D300, &qword_237C137F8);
  if (OUTLINED_FUNCTION_51_2())
  {
    OUTLINED_FUNCTION_28_23();
    v191 = sub_237B3B5E0();
    (*(v348 + 8))(v21, v349);
    if (v191 != 1)
    {
LABEL_20:
      v192 = sub_237C0602C();
      OUTLINED_FUNCTION_12_0(v192);
      (*(v193 + 8))(v174);
      if (!v191)
      {
        goto LABEL_5;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_128;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  if (OUTLINED_FUNCTION_51_2())
  {
    v194 = v343;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B5FC(v195);
    (*(v344 + 8))(v194, v345);
    v196 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v196, v197, v342) != 1)
    {
      sub_237BA0F20(v347, v346, &qword_27DE9B0F8, &qword_237C0CA08);
      OUTLINED_FUNCTION_17_28();
      if (v198)
      {
        sub_237A7B808(v346, &qword_27DE9B0F8, &qword_237C0CA08);
      }

      else
      {
        sub_237C082AC();
        OUTLINED_FUNCTION_23_13(v174);
        v204 = *(v203 + 8);
        v205 = OUTLINED_FUNCTION_58_0();
        v206(v205);
      }

      OUTLINED_FUNCTION_47_18();
      if (!v208)
      {
        if (v207)
        {
          goto LABEL_88;
        }

        goto LABEL_57;
      }

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_132;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D8, &qword_237C0CA00);
  if (OUTLINED_FUNCTION_51_2())
  {
    v199 = v339;
    OUTLINED_FUNCTION_12_48();
    v200 = sub_237B3B6DC();
    (*(v340 + 8))(v199, v341);
    if (v200 == 1)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v201 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v201);
    (*(v202 + 8))(a10);
    if (!v200)
    {
      goto LABEL_5;
    }

LABEL_62:
    v236 = OUTLINED_FUNCTION_42_15();
    sub_237BA0F10(v236);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  if (OUTLINED_FUNCTION_51_2())
  {
    v211 = v334;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B6F8(v212);
    OUTLINED_FUNCTION_36_3(&a17);
    v213(v211, v336);
    v214 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v214, v215, v333) == 1)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    sub_237BA0F20(v338, v337, &qword_27DE9B108, &qword_237C0CA10);
    OUTLINED_FUNCTION_17_28();
    if (v198)
    {
      sub_237A7B808(v337, &qword_27DE9B108, &qword_237C0CA10);
    }

    else
    {
      sub_237C082AC();
      OUTLINED_FUNCTION_23_13(v174);
      v221 = *(v220 + 8);
      v222 = OUTLINED_FUNCTION_58_0();
      v223(v222);
    }

    OUTLINED_FUNCTION_47_18();
    if (!v208)
    {
      if (v224)
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

LABEL_33:

    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v209 = swift_allocError();
    OUTLINED_FUNCTION_26_25(v209, v210);
LABEL_4:
    v186 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v186);
    (*(v187 + 8))(a10);
LABEL_5:
    OUTLINED_FUNCTION_73();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  if (OUTLINED_FUNCTION_51_2())
  {
    OUTLINED_FUNCTION_5_68(&a12);
    v216 = sub_237B3B7D8();
    OUTLINED_FUNCTION_36_3(&a13);
    v217(v21, v332);
    if (v216 == 1)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v218 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v218);
    (*(v219 + 8))(a10);
    if (!v216)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  if (OUTLINED_FUNCTION_51_2())
  {
    v225 = v326[1];
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B7F4(v226);
    OUTLINED_FUNCTION_36_3(&v357);
    v227(v225, v328);
    v228 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v228, v229, v326[0]) == 1)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    sub_237BA0F20(v329[1], v329[0], &qword_27DE9B118, &qword_237C0CA18);
    OUTLINED_FUNCTION_17_28();
    if (v198)
    {
      sub_237A7B808(v329[0], &qword_27DE9B118, &qword_237C0CA18);
    }

    else
    {
      sub_237C082AC();
      OUTLINED_FUNCTION_23_13(v174);
      v238 = *(v237 + 8);
      v239 = OUTLINED_FUNCTION_58_0();
      v240(v239);
    }

    OUTLINED_FUNCTION_47_18();
    if (!v208)
    {
      if (v241)
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  if (OUTLINED_FUNCTION_51_2())
  {
    OUTLINED_FUNCTION_5_68(&v352);
    v232 = sub_237B3B8D4();
    OUTLINED_FUNCTION_36_3(&v353);
    v233(v21, v325[0]);
    if (v232 == 1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v234 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v234);
    (*(v235 + 8))(a10);
    if (!v232)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  if (OUTLINED_FUNCTION_51_2())
  {
    v242 = v319;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B8F0(v243);
    OUTLINED_FUNCTION_36_3(&v349);
    v244(v242, v321);
    v245 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v245, v246, v318) != 1)
    {
      sub_237BA0F20(v325[1], v322, &qword_27DE9B120, &qword_237C0CA20);
      OUTLINED_FUNCTION_17_28();
      if (v198)
      {
        sub_237A7B808(v322, &qword_27DE9B120, &qword_237C0CA20);
      }

      else
      {
        sub_237C082AC();
        OUTLINED_FUNCTION_23_13(v174);
        v260 = *(v259 + 8);
        v261 = OUTLINED_FUNCTION_58_0();
        v262(v261);
      }

      OUTLINED_FUNCTION_47_18();
      if (!v208)
      {
        if (v263)
        {
LABEL_88:
          OUTLINED_FUNCTION_64_7();
          v264 = sub_237C0602C();
          OUTLINED_FUNCTION_12_0(v264);
          (*(v265 + 8))(a10);
          goto LABEL_5;
        }

LABEL_57:
        v230 = sub_237C0602C();
        OUTLINED_FUNCTION_12_0(v230);
        (*(v231 + 8))(a10);

        goto LABEL_5;
      }

      goto LABEL_33;
    }

    goto LABEL_138;
  }

  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  if (!OUTLINED_FUNCTION_51_2())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
    if (OUTLINED_FUNCTION_51_2())
    {
      OUTLINED_FUNCTION_5_68(&v327);
      OUTLINED_FUNCTION_29_19(v326);
      v266 = OUTLINED_FUNCTION_8_48();
      v267(v266);
      v268 = OUTLINED_FUNCTION_25_30();
      sub_237B9C29C(v268);
      OUTLINED_FUNCTION_31_22();
      if (v20)
      {

        v269 = sub_237C0602C();
      }

      else
      {
        v269 = OUTLINED_FUNCTION_23_33();
      }

      OUTLINED_FUNCTION_12_0(v269);
      (*(v270 + 8))(a10);
      v271 = OUTLINED_FUNCTION_51_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B180, &unk_237C152B0);
      if (OUTLINED_FUNCTION_51_2())
      {
        OUTLINED_FUNCTION_5_68(&v330);
        OUTLINED_FUNCTION_29_19(&v328);
        v282 = OUTLINED_FUNCTION_8_48();
        v283(v282);
        v284 = OUTLINED_FUNCTION_25_30();
        sub_237B9CB58(v284);
        OUTLINED_FUNCTION_31_22();
        if (v20)
        {

          v285 = sub_237C0602C();
        }

        else
        {
          v285 = OUTLINED_FUNCTION_23_33();
        }

        OUTLINED_FUNCTION_12_0(v285);
        (*(v286 + 8))(a10);
        v271 = OUTLINED_FUNCTION_54_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B188, &qword_237C0CA58);
        if (OUTLINED_FUNCTION_51_2())
        {
          OUTLINED_FUNCTION_5_68(&v334);
          OUTLINED_FUNCTION_29_19(&v331);
          v295 = OUTLINED_FUNCTION_8_48();
          v296(v295);
          v297 = OUTLINED_FUNCTION_25_30();
          sub_237B9D414(v297);
          OUTLINED_FUNCTION_31_22();
          if (v20)
          {

            v298 = sub_237C0602C();
          }

          else
          {
            v298 = OUTLINED_FUNCTION_23_33();
          }

          OUTLINED_FUNCTION_12_0(v298);
          (*(v299 + 8))(a10);
          v271 = OUTLINED_FUNCTION_53_13();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
          if (OUTLINED_FUNCTION_51_2())
          {
            OUTLINED_FUNCTION_5_68(&v338);
            OUTLINED_FUNCTION_29_19(&v335);
            v300 = OUTLINED_FUNCTION_8_48();
            v301(v300);
            v302 = OUTLINED_FUNCTION_25_30();
            sub_237B9DCD0(v302);
            OUTLINED_FUNCTION_31_22();
            if (v20)
            {

              v303 = sub_237C0602C();
            }

            else
            {
              v303 = OUTLINED_FUNCTION_23_33();
            }

            OUTLINED_FUNCTION_12_0(v303);
            (*(v304 + 8))(a10);
            v271 = OUTLINED_FUNCTION_52_16();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
            if (OUTLINED_FUNCTION_51_2())
            {
              OUTLINED_FUNCTION_5_68(&v342);
              OUTLINED_FUNCTION_29_19(&v339);
              v305 = OUTLINED_FUNCTION_8_48();
              v306(v305);
              v307 = OUTLINED_FUNCTION_25_30();
              sub_237B9E58C(v307);
              OUTLINED_FUNCTION_31_22();
              if (v20)
              {

                v308 = sub_237C0602C();
              }

              else
              {
                v308 = OUTLINED_FUNCTION_23_33();
              }

              OUTLINED_FUNCTION_12_0(v308);
              (*(v309 + 8))(a10);
              v271 = OUTLINED_FUNCTION_50_14();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
              if (!OUTLINED_FUNCTION_51_2())
              {
LABEL_128:

                v355 = 0;
                v356 = 0xE000000000000000;
                sub_237C08EDC();

                v315 = OUTLINED_FUNCTION_27_20();
                MEMORY[0x2383DC360](v315);

                MEMORY[0x2383DC360](0xD000000000000021, 0x8000000237C1E090);
                sub_237C05FFC();
                v316 = sub_237C094DC();
                MEMORY[0x2383DC360](v316);

                v275 = OUTLINED_FUNCTION_57_11();
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_5_68(&v345);
              OUTLINED_FUNCTION_29_19(&v343);
              v310 = OUTLINED_FUNCTION_8_48();
              v311(v310);
              v312 = OUTLINED_FUNCTION_25_30();
              sub_237B9EE48(v312);
              OUTLINED_FUNCTION_31_22();
              if (v20)
              {

                v313 = sub_237C0602C();
              }

              else
              {
                v313 = OUTLINED_FUNCTION_23_33();
              }

              OUTLINED_FUNCTION_12_0(v313);
              (*(v314 + 8))(a10);
              v271 = OUTLINED_FUNCTION_49_11();
            }
          }
        }
      }
    }

    v272(v271, *(v273 - 256));
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_5_68(&v323);
  v247 = sub_237B3B9D0();
  OUTLINED_FUNCTION_36_3(&v324);
  v248(v21, v317[3]);
  v352 = v247;
  if (!v247)
  {

    v355 = 0;
    v356 = 0xE000000000000000;
    sub_237C08EDC();

    v274 = OUTLINED_FUNCTION_27_20();
    MEMORY[0x2383DC360](v274);

    v275 = 0xD000000000000017;
    v276 = 0x8000000237C1E0C0;
LABEL_94:
    MEMORY[0x2383DC360](v275, v276);
    v277 = v355;
    v278 = v356;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    *v279 = v277;
    *(v279 + 8) = v278;
    *(v279 + 16) = 0u;
    *(v279 + 32) = 0u;
    *(v279 + 48) = 1;
    swift_willThrow();
    v280 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v280);
    (*(v281 + 8))(v21);
    goto LABEL_5;
  }

  if (v352 == 1)
  {
    goto LABEL_139;
  }

  v249 = [v352 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v250 = sub_237C0893C();

  v251 = sub_237A254D8(v250);
  if (v251)
  {
    v252 = v251;
    v355 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    if (v252 < 0)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v253 = 0;
    v254 = v355;
    do
    {
      if ((v250 & 0xC000000000000001) != 0)
      {
        v255 = MEMORY[0x2383DCAF0](v253, v250);
      }

      else
      {
        v255 = *(v250 + 8 * v253 + 32);
      }

      v256 = v255;
      v257 = [v255 integerValue];

      v355 = v254;
      v258 = *(v254 + 16);
      if (v258 >= *(v254 + 24) >> 1)
      {
        sub_237AC8A34();
        v254 = v355;
      }

      ++v253;
      *(v254 + 16) = v258 + 1;
      *(v254 + 8 * v258 + 32) = v257;
    }

    while (v252 != v253);
  }

  OUTLINED_FUNCTION_42_15();

  if (v250 > 1)
  {

    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v287 = swift_allocError();
    OUTLINED_FUNCTION_26_25(v287, v288);
    sub_237BA0F00(v352);
    goto LABEL_4;
  }

  sub_237BA0EF0(v352);
  v289 = OUTLINED_FUNCTION_25_30();
  sub_237B9BF3C(v289);
  if (v20)
  {
    v291 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v291);
    (*(v292 + 8))(a10);
    sub_237BA0F00(v352);

    goto LABEL_5;
  }

  if (v290 != -1)
  {
    v293 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v293);
    (*(v294 + 8))(a10);
    sub_237BA0F00(v352);
    goto LABEL_5;
  }

LABEL_140:
  __break(1u);
}

uint64_t sub_237B9BEC4(uint64_t a1, char a2)
{
  result = 4;
  switch(a2)
  {
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237B9BF3C(void *a1)
{
  v2 = a1;
  v3 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0893C();

  v5 = sub_237A254D8(v4);
  if (v5)
  {
    v6 = v5;
    v17 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v16 = v2;
    v7 = 0;
    v8 = v17;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383DCAF0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v12 = *(v17 + 16);
      if (v12 >= *(v17 + 24) >> 1)
      {
        sub_237AC8A34();
      }

      ++v7;
      *(v17 + 16) = v12 + 1;
      *(v17 + 8 * v12 + 32) = v11;
    }

    while (v6 != v7);

    v2 = v16;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) > 1uLL)
  {

    return 0;
  }

  v1 = &off_278A42000;
  v13 = [v2 dataType];
  if (v13 == 65552)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

LABEL_22:
    OUTLINED_FUNCTION_66_10();

    return v4;
  }

  if (v13 == 65568)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v13 == 131104)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

LABEL_25:

    return 1;
  }

  if (v13 == 65600)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_28:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1E140);
  [v2 v1[305]];
  type metadata accessor for MLMultiArrayDataType(0);
  sub_237C0907C();
  v15 = OUTLINED_FUNCTION_57_11();
  MEMORY[0x2383DC360](v15);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B9C29C(uint64_t a1)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8F0, &qword_237C152E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v87 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8F8, &qword_237C152E8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v87 - v9;
  v98 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  sub_2379D9224(&qword_27DE9D900, &qword_27DE9B130, &qword_237C0CA28);
  v88 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v92 = sub_2379D9224(&qword_27DE9D908, &qword_27DE9D8F0, &qword_237C152E0);
  v93 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v90 = v10;
  v91 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v10[v93] == v98)
  {
    sub_237A7B808(v10, &qword_27DE9D8F8, &qword_237C152E8);

    sub_237B98F7C();
    v58 = v57;

    v59 = 0;
    v93 = *(v58 + 16);
    v94 = v58;
    v60 = (v58 + 40);
    v100 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v93 == v59)
      {
        (*(*(v88 - 8) + 8))(v89);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v100;
      }

      if (v59 >= *(v94 + 16))
      {
        break;
      }

      if (!v16[2])
      {
        goto LABEL_43;
      }

      v96 = v59;
      v28 = *(v60 - 1);
      v61 = *v60;

      v62 = sub_237ACAC78(v28, v61);
      if ((v63 & 1) == 0)
      {
        goto LABEL_44;
      }

      v97 = v61;
      v64 = *(v16[7] + 8 * v62);

      v66 = sub_237B99CB4(v65);

      v67 = sub_237B9FEA0(v66);
      if (v68 == -1)
      {
        goto LABEL_38;
      }

      v69 = v67;
      v70 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = *(v100 + 16);
        sub_237BC1FD4();
        v100 = v78;
      }

      v72 = *(v100 + 16);
      if (v72 >= *(v100 + 24) >> 1)
      {
        sub_237BC1FD4();
        v100 = v79;
      }

      v73 = v100;
      *(v100 + 16) = v72 + 1;
      v74 = v73 + 32 * v72;
      v75 = v96;
      v76 = v97;
      *(v74 + 32) = v95;
      *(v74 + 40) = v76;
      *(v74 + 48) = v69;
      *(v74 + 56) = v70;
      v60 += 2;
      v59 = v75 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v17 = sub_237C08B9C();
    v100 = v13;
    v18 = v15;
    v19 = v14;
    v21 = *v20;

    v17(&v98, 0);
    sub_237C08B6C();
    v22 = 0;
    v24 = v21 + 64;
    v23 = *(v21 + 64);
    v95 = v21 + 64;
    v96 = v21;
    v25 = *(v21 + 32);
    v14 = v19;
    v15 = v18;
    v13 = v100;
    v26 = 1 << v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v94 = v29;
    if ((v27 & v23) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v31 = __clz(__rbit64(v28)) | (v22 << 6);
      v32 = (*(v96 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      v97 = *(*(v96 + 56) + 8 * v31);

      sub_237A560B8(v13);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_237BA0370;
      *(v35 + 24) = 0;
      v100 = v35;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v98 = v16;
      v36 = sub_237ACAC78(v34, v33);
      if (__OFADD__(v16[2], (v37 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D910, &unk_237C152F0);
      v40 = sub_237C090AC();
      v16 = v98;
      if (v40)
      {
        v41 = sub_237ACAC78(v34, v33);
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_45;
        }

        v38 = v41;
      }

      if ((v39 & 1) == 0)
      {
        v43 = *(v100 + 24);
        v44 = (*(v100 + 16))();
        v16[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v16[6] + 16 * v38);
        *v45 = v34;
        v45[1] = v33;
        *(v16[7] + 8 * v38) = v44;
        v46 = v16[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_41;
        }

        v16[2] = v48;
      }

      v49 = v16[7];
      v50 = *(v49 + 8 * v38);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v38) = v50;
      if ((v51 & 1) == 0)
      {
        sub_237BC0EB4(0, *(v50 + 16) + 1, 1, v50);
        v50 = v55;
        *(v49 + 8 * v38) = v55;
      }

      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_237BC0EB4(v52 > 1, v53 + 1, 1, v50);
        *(v49 + 8 * v38) = v56;
      }

      v28 &= v28 - 1;

      v54 = *(v49 + 8 * v38);
      *(v54 + 16) = v53 + 1;
      *(v54 + 8 * v53 + 32) = v97;
      v14 = sub_237BA2F54;
      v13 = sub_237BA0370;
      v15 = v100;
      v29 = v94;
      v24 = v95;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        v10 = v90;
        goto LABEL_2;
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v28, v97);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v81 = v88;
    v80 = v89;
    v82 = sub_237C05F0C();
    MEMORY[0x2383DC360](v82);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v83 = v98;
    v84 = v99;
    sub_2379E8AF0();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v84;
    *(v85 + 16) = 0u;
    *(v85 + 32) = 0u;
    *(v85 + 48) = 0;
    swift_willThrow();
    (*(*(v81 - 8) + 8))(v80, v81);

    sub_237A560B8(v13);
    sub_237A560B8(v14);
    return v100;
  }

  return result;
}

uint64_t sub_237B9CB58(uint64_t a1)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D918, &qword_237C15300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v87 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D920, &qword_237C15308);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v87 - v9;
  v98 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  sub_2379D9224(&qword_27DE9D928, &qword_27DE9B178, &qword_237C15200);
  v88 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v92 = sub_2379D9224(&qword_27DE9D930, &qword_27DE9D918, &qword_237C15300);
  v93 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v90 = v10;
  v91 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v10[v93] == v98)
  {
    sub_237A7B808(v10, &qword_27DE9D920, &qword_237C15308);

    sub_237B98F7C();
    v58 = v57;

    v59 = 0;
    v93 = *(v58 + 16);
    v94 = v58;
    v60 = (v58 + 40);
    v100 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v93 == v59)
      {
        (*(*(v88 - 8) + 8))(v89);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v100;
      }

      if (v59 >= *(v94 + 16))
      {
        break;
      }

      if (!v16[2])
      {
        goto LABEL_43;
      }

      v96 = v59;
      v28 = *(v60 - 1);
      v61 = *v60;

      v62 = sub_237ACAC78(v28, v61);
      if ((v63 & 1) == 0)
      {
        goto LABEL_44;
      }

      v97 = v61;
      v64 = *(v16[7] + 8 * v62);

      v66 = sub_237B99BA8(v65);

      v67 = sub_237B9FEA0(v66);
      if (v68 == -1)
      {
        goto LABEL_38;
      }

      v69 = v67;
      v70 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = *(v100 + 16);
        sub_237BC1FD4();
        v100 = v78;
      }

      v72 = *(v100 + 16);
      if (v72 >= *(v100 + 24) >> 1)
      {
        sub_237BC1FD4();
        v100 = v79;
      }

      v73 = v100;
      *(v100 + 16) = v72 + 1;
      v74 = v73 + 32 * v72;
      v75 = v96;
      v76 = v97;
      *(v74 + 32) = v95;
      *(v74 + 40) = v76;
      *(v74 + 48) = v69;
      *(v74 + 56) = v70;
      v60 += 2;
      v59 = v75 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v17 = sub_237C08B9C();
    v100 = v13;
    v18 = v15;
    v19 = v14;
    v21 = *v20;

    v17(&v98, 0);
    sub_237C08B6C();
    v22 = 0;
    v24 = v21 + 64;
    v23 = *(v21 + 64);
    v95 = v21 + 64;
    v96 = v21;
    v25 = *(v21 + 32);
    v14 = v19;
    v15 = v18;
    v13 = v100;
    v26 = 1 << v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v94 = v29;
    if ((v27 & v23) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v31 = __clz(__rbit64(v28)) | (v22 << 6);
      v32 = (*(v96 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      LODWORD(v97) = *(*(v96 + 56) + v31);

      sub_237A560B8(v13);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_237BA0370;
      *(v35 + 24) = 0;
      v100 = v35;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v98 = v16;
      v36 = sub_237ACAC78(v34, v33);
      if (__OFADD__(v16[2], (v37 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D938, &qword_237C15310);
      v40 = sub_237C090AC();
      v16 = v98;
      if (v40)
      {
        v41 = sub_237ACAC78(v34, v33);
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_45;
        }

        v38 = v41;
      }

      if ((v39 & 1) == 0)
      {
        v43 = *(v100 + 24);
        v44 = (*(v100 + 16))();
        v16[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v16[6] + 16 * v38);
        *v45 = v34;
        v45[1] = v33;
        *(v16[7] + 8 * v38) = v44;
        v46 = v16[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_41;
        }

        v16[2] = v48;
      }

      v49 = v16[7];
      v50 = *(v49 + 8 * v38);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v38) = v50;
      if ((v51 & 1) == 0)
      {
        v54 = *(v50 + 16);
        sub_237BC22E4();
        v50 = v55;
        *(v49 + 8 * v38) = v55;
      }

      v52 = *(v50 + 16);
      if (v52 >= *(v50 + 24) >> 1)
      {
        sub_237BC22E4();
        *(v49 + 8 * v38) = v56;
      }

      v28 &= v28 - 1;

      v53 = *(v49 + 8 * v38);
      *(v53 + 16) = v52 + 1;
      *(v53 + v52 + 32) = v97;
      v14 = sub_237BA2F54;
      v13 = sub_237BA0370;
      v15 = v100;
      v29 = v94;
      v24 = v95;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        v10 = v90;
        goto LABEL_2;
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v28, v97);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v81 = v88;
    v80 = v89;
    v82 = sub_237C05F0C();
    MEMORY[0x2383DC360](v82);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v83 = v98;
    v84 = v99;
    sub_2379E8AF0();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v84;
    *(v85 + 16) = 0u;
    *(v85 + 32) = 0u;
    *(v85 + 48) = 0;
    swift_willThrow();
    (*(*(v81 - 8) + 8))(v80, v81);

    sub_237A560B8(v13);
    sub_237A560B8(v14);
    return v100;
  }

  return result;
}

uint64_t sub_237B9D414(uint64_t a1)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D940, &qword_237C15318);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v87 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D948, &qword_237C15320);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v87 - v9;
  v98 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  sub_2379D9224(&qword_27DE9D950, &qword_27DE9B170, &qword_237C0CA50);
  v88 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v92 = sub_2379D9224(&qword_27DE9D958, &qword_27DE9D940, &qword_237C15318);
  v93 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v90 = v10;
  v91 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v10[v93] == v98)
  {
    sub_237A7B808(v10, &qword_27DE9D948, &qword_237C15320);

    sub_237B98F7C();
    v58 = v57;

    v59 = 0;
    v93 = *(v58 + 16);
    v94 = v58;
    v60 = (v58 + 40);
    v100 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v93 == v59)
      {
        (*(*(v88 - 8) + 8))(v89);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v100;
      }

      if (v59 >= *(v94 + 16))
      {
        break;
      }

      if (!v16[2])
      {
        goto LABEL_43;
      }

      v96 = v59;
      v28 = *(v60 - 1);
      v61 = *v60;

      v62 = sub_237ACAC78(v28, v61);
      if ((v63 & 1) == 0)
      {
        goto LABEL_44;
      }

      v97 = v61;
      v64 = *(v16[7] + 8 * v62);

      v66 = sub_237B99A9C(v65);

      v67 = sub_237B9FEA0(v66);
      if (v68 == -1)
      {
        goto LABEL_38;
      }

      v69 = v67;
      v70 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = *(v100 + 16);
        sub_237BC1FD4();
        v100 = v78;
      }

      v72 = *(v100 + 16);
      if (v72 >= *(v100 + 24) >> 1)
      {
        sub_237BC1FD4();
        v100 = v79;
      }

      v73 = v100;
      *(v100 + 16) = v72 + 1;
      v74 = v73 + 32 * v72;
      v75 = v96;
      v76 = v97;
      *(v74 + 32) = v95;
      *(v74 + 40) = v76;
      *(v74 + 48) = v69;
      *(v74 + 56) = v70;
      v60 += 2;
      v59 = v75 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v17 = sub_237C08B9C();
    v100 = v13;
    v18 = v15;
    v19 = v14;
    v21 = *v20;

    v17(&v98, 0);
    sub_237C08B6C();
    v22 = 0;
    v24 = v21 + 64;
    v23 = *(v21 + 64);
    v95 = v21 + 64;
    v96 = v21;
    v25 = *(v21 + 32);
    v14 = v19;
    v15 = v18;
    v13 = v100;
    v26 = 1 << v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v94 = v29;
    if ((v27 & v23) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v31 = __clz(__rbit64(v28)) | (v22 << 6);
      v32 = (*(v96 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      LODWORD(v97) = *(*(v96 + 56) + 4 * v31);

      sub_237A560B8(v13);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_237BA0370;
      *(v35 + 24) = 0;
      v100 = v35;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v98 = v16;
      v36 = sub_237ACAC78(v34, v33);
      if (__OFADD__(v16[2], (v37 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D960, &qword_237C15328);
      v40 = sub_237C090AC();
      v16 = v98;
      if (v40)
      {
        v41 = sub_237ACAC78(v34, v33);
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_45;
        }

        v38 = v41;
      }

      if ((v39 & 1) == 0)
      {
        v43 = *(v100 + 24);
        v44 = (*(v100 + 16))();
        v16[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v16[6] + 16 * v38);
        *v45 = v34;
        v45[1] = v33;
        *(v16[7] + 8 * v38) = v44;
        v46 = v16[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_41;
        }

        v16[2] = v48;
      }

      v49 = v16[7];
      v50 = *(v49 + 8 * v38);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v38) = v50;
      if ((v51 & 1) == 0)
      {
        sub_237BC21E8(0, *(v50 + 16) + 1, 1, v50);
        v50 = v55;
        *(v49 + 8 * v38) = v55;
      }

      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_237BC21E8(v52 > 1, v53 + 1, 1, v50);
        *(v49 + 8 * v38) = v56;
      }

      v28 &= v28 - 1;

      v54 = *(v49 + 8 * v38);
      *(v54 + 16) = v53 + 1;
      *(v54 + 4 * v53 + 32) = v97;
      v14 = sub_237BA2F54;
      v13 = sub_237BA0370;
      v15 = v100;
      v29 = v94;
      v24 = v95;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        v10 = v90;
        goto LABEL_2;
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v28, v97);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v81 = v88;
    v80 = v89;
    v82 = sub_237C05F0C();
    MEMORY[0x2383DC360](v82);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v83 = v98;
    v84 = v99;
    sub_2379E8AF0();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v84;
    *(v85 + 16) = 0u;
    *(v85 + 32) = 0u;
    *(v85 + 48) = 0;
    swift_willThrow();
    (*(*(v81 - 8) + 8))(v80, v81);

    sub_237A560B8(v13);
    sub_237A560B8(v14);
    return v100;
  }

  return result;
}

uint64_t sub_237B9DCD0(uint64_t a1)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D968, &qword_237C15330);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v88 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D970, &qword_237C15338);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v88 - v9;
  v99 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  sub_2379D9224(&qword_27DE9D978, &qword_27DE9B140, &unk_237C151F0);
  v89 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v93 = sub_2379D9224(&qword_27DE9D980, &qword_27DE9D968, &qword_237C15330);
  v94 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v91 = v10;
  v92 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v10[v94] == v99)
  {
    sub_237A7B808(v10, &qword_27DE9D970, &qword_237C15338);

    sub_237B98F7C();
    v59 = v58;

    v60 = 0;
    v93 = *(v59 + 16);
    v94 = v59;
    v61 = (v59 + 40);
    v98 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v93 == v60)
      {
        (*(*(v89 - 8) + 8))(v90);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v98;
      }

      if (v60 >= *(v94 + 16))
      {
        break;
      }

      if (!v16[2])
      {
        goto LABEL_43;
      }

      v96 = v60;
      v28 = *(v61 - 1);
      v62 = *v61;

      v63 = sub_237ACAC78(v28, v62);
      if ((v64 & 1) == 0)
      {
        goto LABEL_44;
      }

      v97 = v62;
      v65 = *(v16[7] + 8 * v63);

      v67 = sub_237B9998C(v66);

      v68 = sub_237B9FEA0(v67);
      if (v69 == -1)
      {
        goto LABEL_38;
      }

      v70 = v68;
      v71 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = *(v98 + 16);
        sub_237BC1FD4();
        v98 = v79;
      }

      v73 = *(v98 + 16);
      if (v73 >= *(v98 + 24) >> 1)
      {
        sub_237BC1FD4();
        v98 = v80;
      }

      v74 = v98;
      *(v98 + 16) = v73 + 1;
      v75 = v74 + 32 * v73;
      v76 = v96;
      v77 = v97;
      *(v75 + 32) = v95;
      *(v75 + 40) = v77;
      *(v75 + 48) = v70;
      *(v75 + 56) = v71;
      v61 += 2;
      v60 = v76 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v17 = sub_237C08B9C();
    v98 = v13;
    v18 = v15;
    v19 = v14;
    v21 = *v20;

    v17(&v99, 0);
    sub_237C08B6C();
    v22 = 0;
    v24 = v21 + 64;
    v23 = *(v21 + 64);
    v96 = v21 + 64;
    v97 = v21;
    v25 = *(v21 + 32);
    v14 = v19;
    v15 = v18;
    v13 = v98;
    v26 = 1 << v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v95 = v29;
    if ((v27 & v23) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v31 = __clz(__rbit64(v28)) | (v22 << 6);
      v32 = (*(v97 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(*(v97 + 56) + 8 * v31);

      sub_237A560B8(v13);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_237BA0370;
      *(v36 + 24) = 0;
      v98 = v36;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v16;
      v37 = sub_237ACAC78(v34, v33);
      if (__OFADD__(v16[2], (v38 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
      v41 = sub_237C090AC();
      v16 = v99;
      if (v41)
      {
        v42 = sub_237ACAC78(v34, v33);
        if ((v40 & 1) != (v43 & 1))
        {
          goto LABEL_45;
        }

        v39 = v42;
      }

      if ((v40 & 1) == 0)
      {
        v44 = *(v98 + 24);
        v45 = (*(v98 + 16))();
        v16[(v39 >> 6) + 8] |= 1 << v39;
        v46 = (v16[6] + 16 * v39);
        *v46 = v34;
        v46[1] = v33;
        *(v16[7] + 8 * v39) = v45;
        v47 = v16[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_41;
        }

        v16[2] = v49;
      }

      v50 = v16[7];
      v51 = *(v50 + 8 * v39);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v39) = v51;
      if ((v52 & 1) == 0)
      {
        sub_237BC0EDC(0, *(v51 + 16) + 1, 1, v51);
        v51 = v56;
        *(v50 + 8 * v39) = v56;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_237BC0EDC(v53 > 1, v54 + 1, 1, v51);
        *(v50 + 8 * v39) = v57;
      }

      v28 &= v28 - 1;

      v55 = *(v50 + 8 * v39);
      *(v55 + 16) = v54 + 1;
      *(v55 + 8 * v54 + 32) = v35;
      v14 = sub_237BA24E8;
      v13 = sub_237BA0370;
      v15 = v98;
      v29 = v95;
      v24 = v96;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        v10 = v91;
        goto LABEL_2;
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v99 = 0;
    v100 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v28, v97);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v82 = v89;
    v81 = v90;
    v83 = sub_237C05F0C();
    MEMORY[0x2383DC360](v83);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v84 = v99;
    v85 = v100;
    sub_2379E8AF0();
    swift_allocError();
    *v86 = v84;
    *(v86 + 8) = v85;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    swift_willThrow();
    (*(*(v82 - 8) + 8))(v81, v82);

    sub_237A560B8(v13);
    sub_237A560B8(v14);
    return v98;
  }

  return result;
}

uint64_t sub_237B9E58C(uint64_t a1)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D988, &qword_237C15348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v88 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D990, &qword_237C15350);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v88 - v9;
  v99 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  sub_2379D9224(&qword_27DE9D998, &qword_27DE9B138, &qword_237C0CA30);
  v89 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v93 = sub_2379D9224(&qword_27DE9D9A0, &qword_27DE9D988, &qword_237C15348);
  v94 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v91 = v10;
  v92 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v10[v94] == v99)
  {
    sub_237A7B808(v10, &qword_27DE9D990, &qword_237C15350);

    sub_237B98F7C();
    v59 = v58;

    v60 = 0;
    v93 = *(v59 + 16);
    v94 = v59;
    v61 = (v59 + 40);
    v98 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v93 == v60)
      {
        (*(*(v89 - 8) + 8))(v90);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v98;
      }

      if (v60 >= *(v94 + 16))
      {
        break;
      }

      if (!v16[2])
      {
        goto LABEL_43;
      }

      v96 = v60;
      v28 = *(v61 - 1);
      v62 = *v61;

      v63 = sub_237ACAC78(v28, v62);
      if ((v64 & 1) == 0)
      {
        goto LABEL_44;
      }

      v97 = v62;
      v65 = *(v16[7] + 8 * v63);

      v67 = sub_237B9987C(v66);

      v68 = sub_237B9FEA0(v67);
      if (v69 == -1)
      {
        goto LABEL_38;
      }

      v70 = v68;
      v71 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = *(v98 + 16);
        sub_237BC1FD4();
        v98 = v79;
      }

      v73 = *(v98 + 16);
      if (v73 >= *(v98 + 24) >> 1)
      {
        sub_237BC1FD4();
        v98 = v80;
      }

      v74 = v98;
      *(v98 + 16) = v73 + 1;
      v75 = v74 + 32 * v73;
      v76 = v96;
      v77 = v97;
      *(v75 + 32) = v95;
      *(v75 + 40) = v77;
      *(v75 + 48) = v70;
      *(v75 + 56) = v71;
      v61 += 2;
      v60 = v76 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v17 = sub_237C08B9C();
    v98 = v13;
    v18 = v15;
    v19 = v14;
    v21 = *v20;

    v17(&v99, 0);
    sub_237C08B6C();
    v22 = 0;
    v24 = v21 + 64;
    v23 = *(v21 + 64);
    v96 = v21 + 64;
    v97 = v21;
    v25 = *(v21 + 32);
    v14 = v19;
    v15 = v18;
    v13 = v98;
    v26 = 1 << v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v95 = v29;
    if ((v27 & v23) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v31 = __clz(__rbit64(v28)) | (v22 << 6);
      v32 = (*(v97 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(*(v97 + 56) + 4 * v31);

      sub_237A560B8(v13);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_237BA0370;
      *(v36 + 24) = 0;
      v98 = v36;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v16;
      v37 = sub_237ACAC78(v34, v33);
      if (__OFADD__(v16[2], (v38 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9A8, &qword_237C15358);
      v41 = sub_237C090AC();
      v16 = v99;
      if (v41)
      {
        v42 = sub_237ACAC78(v34, v33);
        if ((v40 & 1) != (v43 & 1))
        {
          goto LABEL_45;
        }

        v39 = v42;
      }

      if ((v40 & 1) == 0)
      {
        v44 = *(v98 + 24);
        v45 = (*(v98 + 16))();
        v16[(v39 >> 6) + 8] |= 1 << v39;
        v46 = (v16[6] + 16 * v39);
        *v46 = v34;
        v46[1] = v33;
        *(v16[7] + 8 * v39) = v45;
        v47 = v16[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_41;
        }

        v16[2] = v49;
      }

      v50 = v16[7];
      v51 = *(v50 + 8 * v39);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v39) = v51;
      if ((v52 & 1) == 0)
      {
        sub_237BC21C0(0, *(v51 + 16) + 1, 1, v51);
        v51 = v56;
        *(v50 + 8 * v39) = v56;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_237BC21C0(v53 > 1, v54 + 1, 1, v51);
        *(v50 + 8 * v39) = v57;
      }

      v28 &= v28 - 1;

      v55 = *(v50 + 8 * v39);
      *(v55 + 16) = v54 + 1;
      *(v55 + 4 * v54 + 32) = v35;
      v14 = sub_237BA2F54;
      v13 = sub_237BA0370;
      v15 = v98;
      v29 = v95;
      v24 = v96;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        v10 = v91;
        goto LABEL_2;
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v99 = 0;
    v100 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v28, v97);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v82 = v89;
    v81 = v90;
    v83 = sub_237C05F0C();
    MEMORY[0x2383DC360](v83);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v84 = v99;
    v85 = v100;
    sub_2379E8AF0();
    swift_allocError();
    *v86 = v84;
    *(v86 + 8) = v85;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    swift_willThrow();
    (*(*(v82 - 8) + 8))(v81, v82);

    sub_237A560B8(v13);
    sub_237A560B8(v14);
    return v98;
  }

  return result;
}

uint64_t sub_237B9EE48(uint64_t a1)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9B0, &qword_237C15360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v89 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9B8, &qword_237C15368);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v89 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  *&v101 = sub_237C085AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  sub_2379D9224(&qword_27DE9D9C0, &qword_27DE9B168, &unk_237C151E0);
  v89 = v11;
  sub_237C05EAC();

  (*(v2 + 16))(v10, v5, v1);
  v12 = *(v7 + 44);
  v93 = sub_2379D9224(&qword_27DE9D9C8, &qword_27DE9D9B0, &qword_237C15360);
  v94 = v12;
  sub_237C08B2C();
  (*(v2 + 8))(v5, v1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v91 = v10;
  v92 = v1;
LABEL_2:
  sub_237C08B5C();
  v17 = *&v10[v94];
  *&v99 = v14;
  if (v17 == v101)
  {
    sub_237A7B808(v10, &qword_27DE9D9B8, &qword_237C15368);

    sub_237B98F7C();
    v61 = v60;

    v62 = 0;
    v94 = *(v61 + 16);
    v95 = v61;
    v63 = (v61 + 40);
    *&v98 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v94 == v62)
      {
        (*(*(v89 - 8) + 8))(v90);

        sub_237A560B8(v13);
        sub_237A560B8(v14);
        return v98;
      }

      if (v62 >= *(v95 + 16))
      {
        goto LABEL_43;
      }

      if (!v16[2])
      {
        goto LABEL_44;
      }

      v64 = *(v63 - 1);
      v65 = *v63;
      v96 = v63;

      v66 = sub_237ACAC78(v64, v65);
      if ((v67 & 1) == 0)
      {
        goto LABEL_45;
      }

      v97 = v64;
      v68 = *(v16[7] + 8 * v66);

      v70 = sub_237B997AC(v69);

      v71 = sub_237B9FEA0(v70);
      if (v72 == -1)
      {
        break;
      }

      v73 = v71;
      v74 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = *(v98 + 16);
        sub_237BC1FD4();
        *&v98 = v80;
      }

      v75 = *(v98 + 16);
      if (v75 >= *(v98 + 24) >> 1)
      {
        sub_237BC1FD4();
        *&v98 = v81;
      }

      v77 = v97;
      v76 = v98;
      *(v98 + 16) = v75 + 1;
      v78 = v76 + 32 * v75;
      *(v78 + 32) = v77;
      *(v78 + 40) = v65;
      *(v78 + 48) = v73;
      *(v78 + 56) = v74;
      v63 = v96 + 2;
      ++v62;
      v14 = v99;
    }

    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v97, v65);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v82 = v89;
    v83 = v14;
    v84 = v90;
    v85 = sub_237C05F0C();
    MEMORY[0x2383DC360](v85);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v86 = v101;
    sub_2379E8AF0();
    swift_allocError();
    *v87 = v86;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 0u;
    *(v87 + 48) = 0;
    swift_willThrow();
    (*(*(v82 - 8) + 8))(v84, v82);

    sub_237A560B8(v13);
    sub_237A560B8(v83);
    return v98;
  }

  else
  {
    v18 = sub_237C08B9C();
    v19 = v13;
    v20 = v15;
    v22 = *v21;

    v18(&v101, 0);
    sub_237C08B6C();
    v23 = 0;
    v25 = (v22 + 64);
    v24 = *(v22 + 64);
    v96 = (v22 + 64);
    v97 = v22;
    v26 = *(v22 + 32);
    v15 = v20;
    v13 = v19;
    v14 = v99;
    v27 = 1 << v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v24;
    v30 = (v27 + 63) >> 6;
    v95 = v30;
    if ((v28 & v24) == 0)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_11:
      v32 = __clz(__rbit64(v29)) | (v23 << 6);
      v33 = (*(v97 + 48) + 16 * v32);
      v34 = *v33;
      v35 = v33[1];
      sub_2379F6D68(*(v97 + 56) + 32 * v32, &v101);
      v98 = v101;
      v99 = v102;

      if (!v35)
      {
LABEL_25:

        v10 = v91;
        goto LABEL_2;
      }

      v101 = v98;
      v102 = v99;
      sub_237A560B8(v13);
      sub_2379F6D68(&v101, v100);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_237BA0370;
      *(v36 + 24) = 0;
      *&v99 = v36;
      sub_237A560B8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v16;
      v37 = sub_237ACAC78(v34, v35);
      if (__OFADD__(v16[2], (v38 & 1) == 0))
      {
        break;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9D0, &qword_237C15370);
      v41 = sub_237C090AC();
      v16 = v103;
      if (v41)
      {
        v42 = sub_237ACAC78(v34, v35);
        if ((v40 & 1) != (v43 & 1))
        {
          goto LABEL_46;
        }

        v39 = v42;
      }

      if ((v40 & 1) == 0)
      {
        v44 = *(v99 + 24);
        v45 = (*(v99 + 16))();
        v16[(v39 >> 6) + 8] |= 1 << v39;
        v46 = (v16[6] + 16 * v39);
        *v46 = v34;
        v46[1] = v35;
        *(v16[7] + 8 * v39) = v45;
        v47 = v16[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_42;
        }

        v16[2] = v49;
      }

      v50 = v16[7];
      v51 = *(v50 + 8 * v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v39) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = *(v51 + 16);
        sub_237BC20F8();
        v51 = v58;
        *(v50 + 8 * v39) = v58;
      }

      v53 = *(v51 + 16);
      if (v53 >= *(v51 + 24) >> 1)
      {
        sub_237BC20F8();
        *(v50 + 8 * v39) = v59;
      }

      v29 &= v29 - 1;

      sub_237A7B808(&v101, &qword_27DE9A998, &unk_237C0C100);
      v54 = *(v50 + 8 * v39);
      *(v54 + 16) = v53 + 1;
      v55 = v54 + 32 * v53;
      v56 = v100[1];
      *(v55 + 32) = v100[0];
      *(v55 + 48) = v56;
      v14 = sub_237BA2F54;
      v13 = sub_237BA0370;
      v15 = v99;
      v30 = v95;
      v25 = v96;
      if (!v29)
      {
LABEL_7:
        while (1)
        {
          v31 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v31 >= v30)
          {
            goto LABEL_25;
          }

          v29 = v25[v31];
          ++v23;
          if (v29)
          {
            v23 = v31;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_237C0932C();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B9F780(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_237C0929C() & 1) == 0)
  {
    return 0;
  }

  return sub_237B9FC2C(a3, a4, a7, a8);
}

uint64_t sub_237B9F808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373654465707974 && a2 == 0xEE00726F74706972)
  {

    return 1;
  }

  else
  {
    v7 = sub_237C0929C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237B9F8D8(char a1)
{
  if (a1)
  {
    return 0x6373654465707974;
  }

  else
  {
    return 1701667182;
  }
}

void sub_237B9F914()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA58, &qword_237C15830);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37_15();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237BA2C34();
  sub_237C0949C();
  sub_237C091EC();
  if (!v0)
  {
    sub_237BA2CDC();
    sub_237C0921C();
  }

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_58_0();
  v12(v11);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B9FA84(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA40, &qword_237C15828);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237BA2C34();
  OUTLINED_FUNCTION_45_17();
  if (!v1)
  {
    OUTLINED_FUNCTION_15_41();
    v7 = sub_237C0918C();
    sub_237BA2C88();
    OUTLINED_FUNCTION_19_31();
    sub_237C091BC();
    v9 = OUTLINED_FUNCTION_4_70();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237B9FC2C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 3:
      if (a4 != 3)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 4:
      if (a4 != 4)
      {
        goto LABEL_25;
      }

      result = sub_237AC703C(a1, a3);
      break;
    case 5:
      if (a4 != 5)
      {
        goto LABEL_25;
      }

      result = sub_237AC70C8(a1, a3);
      break;
    case 6:
      switch(a1)
      {
        case 1:
          if (a4 != 6 || a3 != 1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (a4 != 6 || a3 != 2)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (a4 != 6 || a3 != 3)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (a4 != 6 || a3 != 0)
          {
            goto LABEL_25;
          }

          break;
      }

      return 1;
    default:
      if (a4)
      {
LABEL_25:
        result = 0;
      }

      else
      {
LABEL_11:
        result = a1 == a3;
      }

      break;
  }

  return result;
}

uint64_t sub_237B9FD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237B9F808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237B9FD94(uint64_t a1)
{
  v2 = sub_237BA2C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237B9FDD0(uint64_t a1)
{
  v2 = sub_237BA2C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237B9FE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237B9FA84(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

void sub_237B9FE40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_237B9F914();
}

uint64_t sub_237B9FEA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = MEMORY[0x277D84F90];
    v5 = a1 + 32;
    v6 = *(a1 + 16);
    do
    {
      sub_2379F6D68(v5, &v35);
      v31 = v35;
      v32 = v36;
      if (*(&v36 + 1))
      {
        sub_2379DAD24(&v31, &v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = *(v4 + 16);
          sub_237BC2004();
          v4 = v9;
        }

        v7 = *(v4 + 16);
        if (v7 >= *(v4 + 24) >> 1)
        {
          sub_237BC2004();
          v4 = v10;
        }

        *(v4 + 16) = v7 + 1;
        sub_2379DAD24(&v33, (v4 + 32 * v7 + 32));
      }

      else
      {
        sub_237A7B808(&v31, &qword_27DE9A998, &unk_237C0C100);
      }

      v5 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  sub_237B3B4C8(v4, &v33);

  if (!v34)
  {

    sub_237A7B808(&v33, &qword_27DE9A998, &unk_237C0C100);
    return 0;
  }

  sub_2379DAD24(&v33, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  DynamicType = swift_getDynamicType();
  if (!v2)
  {
LABEL_23:
    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);

      return 0;
    }

    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);

      return 2;
    }

    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);

      return 1;
    }

    if (swift_dynamicCastMetatype() || (sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0), swift_dynamicCastMetatype()))
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);

      return 3;
    }

LABEL_34:
    if (swift_dynamicCastMetatype())
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v30 = v3;
        sub_237AC8A74();
        v18 = v3;
        v19 = a1 + 32;
        do
        {
          sub_2379F6D68(v19, &v33);
          sub_2379F6D68(&v33, &v28);
          if (v29)
          {
            sub_2379DAD24(&v28, &v31);
            swift_dynamicCast();
            v20 = v26;
            v21 = v27;
          }

          else
          {
            sub_237A7B808(&v28, &qword_27DE9A998, &unk_237C0C100);
            v20 = 0;
            v21 = 0xE000000000000000;
          }

          sub_237A7B808(&v33, &qword_27DE9A998, &unk_237C0C100);
          v30 = v18;
          v22 = *(v18 + 16);
          v23 = v22 + 1;
          if (v22 >= *(v18 + 24) >> 1)
          {
            sub_237AC8A74();
            v23 = v22 + 1;
            v18 = v30;
          }

          *(v18 + 16) = v23;
          v24 = v18 + 16 * v22;
          *(v24 + 32) = v20;
          *(v24 + 40) = v21;
          v19 += 32;
          --v17;
        }

        while (v17);
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      sub_237B42F98(v18);
      sub_237B98EF8();
      v16 = v25;

      __swift_destroy_boxed_opaque_existential_1(&v35);
      return v16;
    }

LABEL_44:
    __swift_destroy_boxed_opaque_existential_1(&v35);

    return 0;
  }

  v12 = 0;
  v13 = a1 + 32;
  while (1)
  {
    if (v12 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_2379F6D68(v13, &v33);
    if (v34)
    {
      break;
    }

    sub_237A7B808(&v33, &qword_27DE9A998, &unk_237C0C100);
LABEL_22:
    ++v12;
    v13 += 32;
    if (v2 == v12)
    {
      goto LABEL_23;
    }
  }

  result = sub_2379F6D68(&v33, &v31);
  if (*(&v32 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    v15 = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v31);
    sub_237A7B808(&v33, &qword_27DE9A998, &unk_237C0C100);
    if (v15 != DynamicType)
    {
      goto LABEL_44;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_237BA037C()
{
  v0 = sub_237C0916C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237BA03C8(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = OUTLINED_FUNCTION_24_32();
      break;
    case 9:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237BA0504()
{
  v0 = sub_237C0916C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237BA0550(char a1)
{
  result = 0x54746E656D656C65;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = OUTLINED_FUNCTION_24_32();
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237BA0604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_237BA037C();
  *a2 = result;
  return result;
}

uint64_t sub_237BA0634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237BA03C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237BA0734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_237BA0504();
  *a2 = result;
  return result;
}

uint64_t sub_237BA0764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237BA0550(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237BA0798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237BA0504();
  *a1 = result;
  return result;
}

uint64_t sub_237BA07C0(uint64_t a1)
{
  v2 = sub_237BA2518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237BA07FC(uint64_t a1)
{
  v2 = sub_237BA2518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237BA0838(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9D8, &qword_237C15378);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237BA2518();
  OUTLINED_FUNCTION_45_17();
  if (!v1)
  {
    sub_237BA256C();
    OUTLINED_FUNCTION_19_31();
    sub_237C091BC();
    switch(v24)
    {
      case 1:
        v18 = OUTLINED_FUNCTION_4_70();
        v19(v18);
        v8 = 1;
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_4_70();
        v15(v14);
        v8 = 2;
        break;
      case 3:
        v16 = OUTLINED_FUNCTION_4_70();
        v17(v16);
        v8 = 3;
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_15_41();
        v8 = sub_237C091AC();
        v20 = OUTLINED_FUNCTION_4_70();
        v21(v20);
        break;
      case 8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
        sub_237BA2614(&qword_27DE9D9F0);
        OUTLINED_FUNCTION_19_31();
        sub_237C091BC();
        v22 = OUTLINED_FUNCTION_4_70();
        v23(v22);
        v8 = v24;
        break;
      case 9:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
        sub_237B188AC(&qword_27DE9D128, sub_237B18858);
        OUTLINED_FUNCTION_19_31();
        sub_237C091BC();
        v12 = OUTLINED_FUNCTION_4_70();
        v13(v12);
        v8 = v24;
        break;
      default:
        v10 = OUTLINED_FUNCTION_4_70();
        v11(v10);
        v8 = 0;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_237BA0C30()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9F8, &unk_237C15380);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_37_15();
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_237BA2518();
  sub_237C0949C();
  sub_237B9BEC4(v4, v2);
  sub_237BA25C0();
  sub_237C0921C();
  if (!v0)
  {
    switch(v2)
    {
      case 4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
        sub_237BA2614(&qword_27DE9DA08);
        goto LABEL_6;
      case 5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
        sub_237B188AC(&qword_27DE9D138, sub_237B18924);
LABEL_6:
        sub_237C0921C();
        break;
      case 6:
        break;
      default:
        sub_237C0920C();
        break;
    }
  }

  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_58_0();
  v16(v15);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237BA0EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237BA0838(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_237BA0ED0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_237BA0C30();
}

id sub_237BA0EF0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_237BA0F00(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_237BA0F10(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_237BA0F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237BA0F80(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC48(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_237BA1058(v6);
  *a1 = v2;
  return result;
}

void sub_237BA0FEC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC80(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_237BA114C(v5);
  *a1 = v2;
}

uint64_t sub_237BA1058(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237C0923C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237AE7450(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237AE732C(0, v2, 1, a1);
  }

  return result;
}

void sub_237BA114C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_237C0923C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237AE78F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_237BA1240();
  }
}

void sub_237BA1240()
{
  OUTLINED_FUNCTION_74();
  if (v2 != v1)
  {
    v4 = v2;
    v5 = v1;
    v6 = *v3;
    v7 = *v3 + 16 * v2;
    v8 = v0 - v2;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = v10 == *(v13 - 2) && v11 == *(v13 - 1);
        if (v14 || (sub_237C0929C() & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v10 = *v13;
        v11 = v13[1];
        *v13 = *(v13 - 1);
        *(v13 - 1) = v11;
        *(v13 - 2) = v10;
        v13 -= 2;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73();
}

char *sub_237BA130C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_237BA1338(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8E8, &qword_237C152D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_237BA1438(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v3;
    a1[1] = v5;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    OUTLINED_FUNCTION_55_11();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v5 == sub_237A2E9F4())
      {
        v7 = v9;
        goto LABEL_13;
      }

      v11 = sub_237A2E9C8(v5);
      if (v4)
      {
        goto LABEL_16;
      }

      v12 = v11;
      v5 = sub_237B6A888(v5);
      *(a2 + 8 * v9++) = v12;
      if (v10 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237BA1520()
{
  OUTLINED_FUNCTION_39_15();
  v4 = v3;
  v6 = v5;
  if (!v1)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v2;
  if (!v2)
  {
LABEL_12:
    *v6 = v4;
    v6[1] = v7;
    OUTLINED_FUNCTION_38_19();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v8 = v1;
    v9 = 0;
    v0 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v11 = sub_237A2E9F4();
      if (v9 == OUTLINED_FUNCTION_44_16(v11))
      {
        v7 = v9;
        goto LABEL_12;
      }

      sub_237A2E9C8(v9);
      v12 = sub_237A2DE60();
      v14 = v13;

      v15 = sub_237A2E9F4();
      if (v9 >= OUTLINED_FUNCTION_44_16(v15))
      {
        goto LABEL_14;
      }

      *v8 = v12;
      v8[1] = v14;
      v8 += 2;
      ++v9;
      if (v10 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);

  sub_237C08EDC();

  OUTLINED_FUNCTION_46_17();
  v16 = sub_237C0924C();
  MEMORY[0x2383DC360](v16);

  v17 = OUTLINED_FUNCTION_57_11();
  MEMORY[0x2383DC360](v17);
  OUTLINED_FUNCTION_7_5();
  __break(1u);
}

void sub_237BA16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_14();
  a23 = v26;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  if (!v33)
  {
    v34 = 0;
    goto LABEL_14;
  }

  v34 = v27;
  if (!v27)
  {
LABEL_14:
    *v32 = v30;
    v32[1] = v34;
    OUTLINED_FUNCTION_59_12();
    return;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_55_11();
    while (!__OFADD__(v25, 1))
    {
      v35 = sub_237A2E9F4();
      if (v25 == OUTLINED_FUNCTION_44_16(v35))
      {
        v34 = v25;
        goto LABEL_14;
      }

      v36 = sub_237A2E9C8(v25);
      if (v24)
      {
        goto LABEL_18;
      }

      sub_237AFC548(v36, &a10);
      v37 = sub_237A2E9F4();
      if (v25 >= OUTLINED_FUNCTION_44_16(v37))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_13();
      if (v38)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_1_44();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237BA1788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v7;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = a1;
    v24 = a5;
    v9 = 0;
    while (!__OFADD__(v9, 1))
    {
      v10 = sub_237A2E9F4();
      v11 = OUTLINED_FUNCTION_44_16(v10);
      v12 = sub_237A2E9F4();
      if (OUTLINED_FUNCTION_44_16(v12) < 0)
      {
        goto LABEL_17;
      }

      v13 = sub_237A2E9F4();
      v14 = OUTLINED_FUNCTION_44_16(v13);
      if (v11 < 0 || v14 < v11)
      {
        goto LABEL_18;
      }

      if (v9 == v11)
      {
        v7 = v9;
LABEL_14:
        a1 = v23;
        a5 = v24;
        goto LABEL_15;
      }

      sub_237A2E9C8(v9);
      v15 = sub_237A2DE60();
      v17 = v16;

      v18 = sub_237A2E9C8(v9);
      sub_237AFC548(v18, v26);
      v19 = v26[0];
      v20 = v26[1];
      v21 = v27;

      sub_2379E9288(v19, v20, v21);

      sub_2379E8CE8(v19, v20, v21);
      *v8 = v15;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v8 += 40;
      if (++v9 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237BA19E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v5 = a4;
  v33 = a4;
  v34 = a5 & 1;
  v35 = 0;
  if (!a2)
  {
    v6 = 0;
    v8 = 0;
LABEL_27:
    *a1 = v5;
    *(a1 + 8) = a5 & 1;
    *(a1 + 16) = v6;
    return v8;
  }

  v6 = a3;
  if (!a3)
  {
    v8 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v25 = a1;
    v8 = 0;
    v30 = a5;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (a5)
      {
        *&v31 = v5;
        sub_2379DBCF4(v5, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        v10 = sub_237C0925C();
        if (v10)
        {
          v11 = v10;
          sub_2379DBC9C(v5, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v11 = swift_allocError();
          *v15 = v5;
        }

        sub_2379F8918(v11, v27, 1);
        if (!v8)
        {
          v6 = v35;
          goto LABEL_25;
        }
      }

      else
      {
        v12 = v5[2];
        sub_2379DBCF4(v5, 0);
        v13 = sub_237A30330();
        v14 = v5[2];
        v27 = sub_237A3035C();
        sub_2379DBC9C(v5, 0);
        if (v8 == v13)
        {
          v6 = v8;
LABEL_25:
          v5 = v33;
          a5 = v34;
          goto LABEL_26;
        }
      }

      MLDataTable.Rows.subscript.getter(&v31, v8);
      v29 = v31;
      v16 = v32;
      if (v30)
      {
        *&v31 = v5;
        v17 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        v18 = sub_237C0925C();
        if (v18)
        {
          v19 = v18;
          sub_2379DBC9C(v5, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v19 = swift_allocError();
          *v23 = v5;
        }

        sub_2379F8918(v19, v26, 1);
        v21 = 0;
      }

      else
      {
        v20 = v5[2];

        v21 = sub_237A30330();
        v22 = v5[2];
        v26 = sub_237A3035C();
        sub_2379DBC9C(v5, 0);
      }

      if (v8 >= v21)
      {
        goto LABEL_29;
      }

      *v7 = v29;
      *(v7 + 16) = v16;
      v7 += 24;
      ++v8;
      v35 = v9;
      v6 = a3;
      a5 = v30;
      if (v9 == a3)
      {
        v5 = v33;
        a5 = v34;
        v8 = a3;
LABEL_26:
        a1 = v25;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237BA1CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_14();
  a23 = v26;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  if (!v33)
  {
    v34 = 0;
    goto LABEL_14;
  }

  v34 = v27;
  if (!v27)
  {
LABEL_14:
    *v32 = v30;
    v32[1] = v34;
    OUTLINED_FUNCTION_59_12();
    return;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_55_11();
    while (!__OFADD__(v25, 1))
    {
      if (v25 == sub_237A2E9F4())
      {
        v34 = v25;
        goto LABEL_14;
      }

      v35 = sub_237A2E9C8(v25);
      if (v24)
      {
        goto LABEL_18;
      }

      sub_237AFC548(v35, &a10);
      if (v25 >= sub_237A2E9F4())
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_13();
      if (v36)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237BA1DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_237B024B4(a4);
  v10 = v9;
  v12 = v11;

  if (!a2)
  {
    a3 = 0;
LABEL_23:
    v14 = a4;
LABEL_26:
    *a1 = v14;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12 & 1;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = a4;
    v42 = a1;
    v15 = 0;
    v47 = a4;
    v48 = a4 + 64;
    v44 = a4 + 72;
    v46 = a3;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12)
      {
        goto LABEL_32;
      }

      v17 = v10;
      if (*(v14 + 36) != v10)
      {
        goto LABEL_28;
      }

      v18 = 1 << *(v14 + 32);
      if (v8 == v18)
      {
        v12 = 0;
        a3 = v15;
LABEL_25:
        a1 = v42;
        goto LABEL_26;
      }

      if ((v8 & 0x8000000000000000) != 0 || v8 >= v18)
      {
        goto LABEL_29;
      }

      v19 = v8 >> 6;
      v20 = *(v48 + 8 * (v8 >> 6));
      if (((v20 >> v8) & 1) == 0)
      {
        goto LABEL_30;
      }

      v49 = v16;
      v50 = *(v14 + 36);
      v21 = *(v14 + 48) + 24 * v8;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v14 + 56) + 24 * v8;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = v20 & (-2 << (v8 & 0x3F));
      if (v29)
      {
        v30 = v17;
        v31 = OUTLINED_FUNCTION_65_8(*v21);
        sub_2379E9288(v31, v27, v28);
        result = sub_2379E8FD0(v8, v30, 0);
        v14 = v47;
        v8 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v32 = v27;
      }

      else
      {
        v45 = *(v25 + 8);
        v33 = v19 << 6;
        v34 = v19 + 1;
        v35 = (v44 + 8 * v19);
        while (v34 < (v18 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v43 = v17;
            v38 = OUTLINED_FUNCTION_65_8(v22);
            sub_2379E9288(v38, v45, v28);
            result = sub_2379E8FD0(v8, v43, 0);
            v39 = __rbit64(v36);
            v32 = v45;
            v8 = __clz(v39) + v33;
            goto LABEL_19;
          }
        }

        v40 = v17;
        v41 = OUTLINED_FUNCTION_65_8(v22);
        v32 = v45;
        sub_2379E9288(v41, v45, v28);
        result = sub_2379E8FD0(v8, v40, 0);
        v8 = v18;
LABEL_19:
        v14 = v47;
      }

      v12 = 0;
      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 16) = v24;
      *(a2 + 24) = v26;
      *(a2 + 32) = v32;
      *(a2 + 40) = v28;
      a2 += 48;
      v10 = v50;
      v15 = v49;
      a3 = v46;
      if (v49 == v46)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237BA2040(void *a1, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v3;
    a1[1] = v5;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    OUTLINED_FUNCTION_55_11();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v5 == sub_237A2EAA4())
      {
        v7 = v9;
        goto LABEL_13;
      }

      v11 = sub_237A2EB64(v5);
      if (v4)
      {
        goto LABEL_16;
      }

      v13 = v11;
      v14 = v12;
      v5 = sub_237B6A974(v5);
      *v8 = v13;
      v8[1] = v14;
      v8 += 2;
      ++v9;
      if (v10 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_237BA2134(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237BA221C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237BA237C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237BA24E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t sub_237BA2518()
{
  result = qword_27DE9D9E0;
  if (!qword_27DE9D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D9E0);
  }

  return result;
}

unint64_t sub_237BA256C()
{
  result = qword_27DE9D9E8;
  if (!qword_27DE9D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D9E8);
  }

  return result;
}

unint64_t sub_237BA25C0()
{
  result = qword_27DE9DA00;
  if (!qword_27DE9DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA00);
  }

  return result;
}

uint64_t sub_237BA2614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.FeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.FeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x237BA27D4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}