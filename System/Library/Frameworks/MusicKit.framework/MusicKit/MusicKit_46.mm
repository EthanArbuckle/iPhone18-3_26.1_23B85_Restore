uint64_t sub_2175A7CA0()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[40];

  (*(*(v1 - 8) + 8))(v0 + 2, v1);
  v4 = v0[46];
  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2175A7D38(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2])
  {
    v3 = a3;
    result = sub_217751DE8();
    v5 = MEMORY[0x277D84F90];
    v6 = &qword_27CB244A0;
    v7 = &qword_21777F1E0;
    v8 = &unk_27CB2A2D8;
    v9 = &unk_21777F378;
    v10 = &qword_27CB2A2E8;
    while (1)
    {
      v11 = v3[2];
      if (!v11)
      {
        break;
      }

      sub_2172830F8((v3 + 4), v61);
      v45 = v5;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v11 - 1) > v3[3] >> 1)
      {
        sub_2172B2028();
        v3 = v12;
      }

      v13 = (v3 + 4);
      sub_217283154((v3 + 4));
      v14 = v3[2];
      result = memmove(v3 + 4, v3 + 9, 40 * v14 - 40);
      v15 = v14 - 1;
      v3[2] = v14 - 1;
      if (v14 == 1)
      {

        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        if (v14 < 2)
        {
          goto LABEL_35;
        }

        v3 = MEMORY[0x277D84F90];
        do
        {
          sub_2172830F8(v13, v59);
          v55 = 0;
          v53 = 0u;
          v54 = 0u;
          sub_2171FF30C(v61, v49);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
          if (swift_dynamicCast())
          {
            sub_2171F3F0C(v47, v50);
            v46 = v15;
            v17 = v3;
            v18 = v10;
            v19 = v9;
            v20 = v8;
            v21 = v7;
            v22 = v6;
            v24 = v51;
            v23 = v52;
            __swift_project_boxed_opaque_existential_1(v50, v51);
            v25 = v24;
            v6 = v22;
            v7 = v21;
            v8 = v20;
            v9 = v19;
            v10 = v18;
            v3 = v17;
            v15 = v46;
            (*(v23 + 16))(v49, v59, v16, v25, v23);
            sub_2175AA0E4(v49, &v53);
            __swift_destroy_boxed_opaque_existential_1(v50);
          }

          else
          {
            v48 = 0;
            memset(v47, 0, sizeof(v47));
            sub_2171F06D8(v47, &qword_27CB2A2E0, &qword_21777F380);
          }

          if (*(&v54 + 1))
          {
            sub_2171FF30C(&v53, v50);
            v26 = v51;
            v27 = v52;
            __swift_project_boxed_opaque_existential_1(v50, v51);
            MusicItemCollectionIncrementalLoader.eraseToAnyIncrementalLoader()(v26, v27, &v56);
            __swift_destroy_boxed_opaque_existential_1(v50);
          }

          else
          {
            v58 = 0;
            v56 = 0u;
            v57 = 0u;
          }

          sub_2171F06D8(&v53, v10, &unk_21777F388);
          if (*(&v57 + 1))
          {
            sub_217283154(v59);
            sub_217283154(v61);
            v61[0] = v56;
            v61[1] = v57;
            v62 = v58;
          }

          else
          {
            sub_2171F06D8(&v56, &qword_27CB24188, &dword_217758930);
            sub_2172830F8(v59, &v56);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = v3[2];
              sub_2172B2028();
              v3 = v34;
            }

            v29 = v3[2];
            v28 = v3[3];
            if (v29 >= v28 >> 1)
            {
              OUTLINED_FUNCTION_11_1(v28);
              sub_2172B2028();
              v3 = v35;
            }

            sub_217283154(v59);
            v3[2] = v29 + 1;
            v30 = &v3[5 * v29];
            v31 = v58;
            v32 = v57;
            *(v30 + 2) = v56;
            *(v30 + 3) = v32;
            v30[8] = v31;
          }

          v13 += 40;
          --v15;
        }

        while (v15);
      }

      sub_2172830F8(v61, v59);
      sub_217751DE8();
      v5 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v45 + 16);
        sub_2172B2028();
        v5 = v43;
      }

      v37 = *(v5 + 16);
      v36 = *(v5 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_11_1(v36);
        sub_2172B2028();
        v5 = v44;
      }

      sub_217283154(v61);
      *(v5 + 16) = v37 + 1;
      v38 = v5 + 40 * v37;
      v39 = v60;
      v40 = v59[1];
      *(v38 + 32) = v59[0];
      *(v38 + 48) = v40;
      *(v38 + 64) = v39;
      v41 = v3[2];

      if (!v41)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2175A8190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = a8;
  *(v8 + 504) = a6;
  *(v8 + 512) = a7;
  *(v8 + 592) = a5;
  *(v8 + 488) = a3;
  *(v8 + 496) = a4;
  *(v8 + 480) = a2;
  *(v8 + 528) = type metadata accessor for MusicItemCollection();
  *(v8 + 536) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB27640, &qword_21775A340);
  v9 = sub_217752588();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2175A82D8, 0, 0);
}

uint64_t sub_2175A82D8()
{
  v1 = *(v0 + 488);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v30 = sub_217752538();
    do
    {
      v4 = *(v0 + 568);
      v5 = *(v0 + 536);
      v6 = *(v0 + 528);
      v7 = *(v0 + 592);
      v8 = *(v0 + 496);
      v9 = *(v0 + 480);
      v31 = *(v0 + 512);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v30);
      sub_2172830F8(v3, v0 + 432);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v11 = *(v0 + 432);
      v12 = *(v0 + 448);
      *(v10 + 32) = v31;
      *(v10 + 48) = v11;
      *(v10 + 64) = v12;
      *(v10 + 80) = *(v0 + 464);
      *(v10 + 88) = v8;
      *(v10 + 96) = v7 & 1;
      v13 = sub_217752598();
      sub_2175A7488(v4, &unk_21777F370, v10, v13);
      sub_2171F06D8(v4, &qword_27CB24D78, &qword_217759EA0);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 560);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = **(v0 + 480);
  *(v0 + 576) = swift_checkMetadataState();
  sub_217752568();
  v18 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 584) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_0_106(v19);

  return MEMORY[0x2822004E8](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_2175A84A4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 584);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {
    v6 = sub_2175A874C;
  }

  else
  {
    v6 = sub_2175A85A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2175A85A4()
{
  if (v0[13])
  {
    v1 = v0[72];
    v2 = v0[63];
    memcpy(v0 + 15, v0 + 2, 0x68uLL);
    v3 = *(v1 - 8);
    (*(v3 + 16))(v0 + 41, v2, v1);
    sub_217743240();
    v4 = *(v3 + 8);
    v4(v0 + 41, v1);
    v4(v0 + 15, v1);
    (*(v3 + 40))(v2, v0 + 28, v1);
    v5 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[73] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_0_106();

    return MEMORY[0x2822004E8](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = v0[71];
    v17 = OUTLINED_FUNCTION_8_59();
    v18(v17);

    OUTLINED_FUNCTION_20_0();

    return v19();
  }
}

uint64_t sub_2175A874C()
{
  v1 = *(v0 + 568);
  v2 = OUTLINED_FUNCTION_8_59();
  v3(v2);
  v4 = *(v0 + 472);

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2175A87D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_217282D8C;

  return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(a1, a5, a6 & 1, a7, a8);
}

uint64_t sub_2175A88A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a1 == a4 && a2 == a5;
      if (v8 || (sub_217753058() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_8:

  return sub_217273884(a3, a6);
}

void sub_2175A891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217283064(a1, a4);
}

uint64_t sub_2175A8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2177531E8();
  sub_217753208();
  if (a2)
  {
    sub_217751FF8();
  }

  sub_217283064(v6, a3);
  return sub_217753238();
}

BOOL sub_2175A8A14()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

uint64_t sub_2175A8A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2F0, &qword_21777F398);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175AA154();
  sub_2177532F8();
  v17[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2C8, &qword_21777F1E8);
  sub_2175AA1FC(&qword_27CB2A300, sub_2175AA1A8);
  sub_217752F88();
  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_2175A8BE0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A310, &qword_21777F3A0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175AA154();
  sub_2177532C8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2C8, &qword_21777F1E8);
  sub_2175AA1FC(&qword_27CB2A318, sub_2175AA274);
  sub_217752EA8();
  (*(v5 + 8))(v11, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return 0;
}

uint64_t sub_2175A8D94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2172849C8;

  return sub_2175A7648(a1, a2, a3 & 1, v12, v13, v14, a4, a5);
}

uint64_t sub_2175A8EAC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2177531E8();
  sub_2175A891C(v5, v1, v2, v3);
  return sub_217753238();
}

BOOL sub_2175A8F10@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2175A8A14();
  *a2 = result;
  return result;
}

BOOL sub_2175A8F68@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2175A8A14();
  *a1 = result;
  return result;
}

uint64_t sub_2175A8F94(uint64_t a1)
{
  v2 = sub_2175AA154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175A8FD0(uint64_t a1)
{
  v2 = sub_2175AA154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2175A900C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2175A8BE0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t AnyMusicItemCollectionIncrementalLoader.splitIncrementalLoaders<A, B>(ofType:nestedIncrementalLoaderKeyPath:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v80 = a2;
  v81 = a3;
  v5 = (*a2 + *MEMORY[0x277D84DE8]);
  v6 = *v5;
  v69 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v68 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v79 = v67 - v16;
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v77 = v67 - v27;
  v28 = v5[1];
  v29 = *(v28 + 16);
  swift_getTupleTypeMetadata2();
  sub_217752338();
  v78 = v28;
  v30 = *(v28 + 32);
  v86 = sub_217751DC8();
  sub_2171FF30C(v4, v85);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if (swift_dynamicCast())
  {
    v72 = v31;
    v32 = v83[2];
    v67[1] = v83[1];
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A2C8, &qword_21777F1E8);
    swift_getTupleTypeMetadata2();
    sub_217752338();
    v74 = v29;
    v67[2] = v33;
    v73 = v30;
    v84 = sub_217751DC8();
    v75 = *(v32 + 16);
    v13 = (v32 + 32);
    v71 = (v18 + 32);
    v70 = (v18 + 8);
    v76 = v32;
    sub_217751DE8();
    v34 = 0;
    while (v75 != v34)
    {
      if (v34 >= *(v76 + 16))
      {
        __break(1u);
LABEL_12:
        OUTLINED_FUNCTION_13_47(v33, 1);
        (*(v68 + 8))(v33, v69);
        v82[0] = 0;
        v82[1] = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B18C0);
        v62 = sub_217753348();
        MEMORY[0x21CEA23B0](v62);

        OUTLINED_FUNCTION_12_42();
        sub_217752C78();
        MEMORY[0x21CEA23B0](0xD000000000000092, 0x80000002177B18F0);
        LODWORD(v66) = 0;
        for (i = 164; ; i = 181)
        {
          v65 = i;
          sub_217752D08();
          __break(1u);
LABEL_14:
          OUTLINED_FUNCTION_13_47(v13, 1);
          (*(v68 + 8))(v13, v69);
          v85[0] = 0;
          v85[1] = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000002CLL, 0x80000002177B1870);
          v64 = sub_217753348();
          MEMORY[0x21CEA23B0](v64);

          OUTLINED_FUNCTION_12_42();
          sub_217752C78();
          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
          LODWORD(v66) = 0;
        }
      }

      sub_2172830F8(v13, v85);
      sub_2171FF30C(v85, v83);
      sub_2171FF30C(v83, v82);
      v33 = v79;
      if (!swift_dynamicCast())
      {
        goto LABEL_12;
      }

      ++v34;
      OUTLINED_FUNCTION_13_47(v33, 0);
      v35 = v77;
      (*v71)(v77, v33, v6);
      v36 = swift_getAtKeyPath();
      MEMORY[0x28223BE20](v36, v37);
      OUTLINED_FUNCTION_9_53();
      *(v39 - 48) = *(v38 - 256);
      *(v39 - 40) = v6;
      v40 = v81;
      *(v39 - 32) = v73;
      *(v39 - 24) = v40;
      *(v39 - 16) = &v84;
      *(v39 - 8) = v85;
      MEMORY[0x28223BE20](v41, v42);
      v67[-6] = v43;
      v67[-5] = v6;
      v67[-4] = v45;
      v67[-3] = v44;
      v65 = sub_2175A9D90;
      v66 = v46;
      swift_getWitnessTable();
      v33 = v82;
      sub_2177521C8();
      (*v70)(v35, v6);
      __swift_destroy_boxed_opaque_existential_1(v83);

      sub_217283154(v85);
      v13 += 40;
    }

    swift_bridgeObjectRelease_n();

    v85[0] = v84;
    MEMORY[0x28223BE20](v50, v51);
    OUTLINED_FUNCTION_9_53();
    v53 = *(v52 - 256);
    *(v54 - 48) = v53;
    *(v54 - 40) = v6;
    v55 = v81;
    *(v54 - 32) = v73;
    *(v54 - 24) = v55;
    *(v54 - 16) = &v86;
    MEMORY[0x28223BE20](v56, v53);
    v67[-6] = v57;
    v67[-5] = v6;
    v67[-4] = v58;
    v67[-3] = v59;
    v65 = sub_2175A9DCC;
    v66 = v60;
    sub_217751E38();
    sub_217751DE8();
    swift_getWitnessTable();
    sub_2177521C8();
    swift_bridgeObjectRelease_n();
    return v86;
  }

  else
  {
    sub_2171FF30C(v4, v85);
    if (!swift_dynamicCast())
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_13_47(v13, 0);
    (*(v18 + 32))(v24, v13, v6);
    v47 = swift_getAtKeyPath();
    MEMORY[0x28223BE20](v47, v48);
    v67[-4] = v29;
    v67[-3] = v6;
    v65 = v30;
    v66 = v81;
    v49 = sub_217751E28();

    (*(v18 + 8))(v24, v6);
  }

  return v49;
}

uint64_t sub_2175A9928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2C8, &qword_21777F1E8);
  sub_217751E68();
  if (*&v24[0])
  {
    v14 = *&v24[0];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_2172830F8(a4, v24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v14 + 16);
    sub_2172B2028();
    v14 = v21;
  }

  v15 = *(v14 + 16);
  if (v15 >= *(v14 + 24) >> 1)
  {
    sub_2172B2028();
    v14 = v22;
  }

  *(v14 + 16) = v15 + 1;
  v16 = v14 + 40 * v15;
  v17 = v24[0];
  v18 = v24[1];
  *(v16 + 64) = v25;
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  (*(v8 + 16))(v11, a1, a5);
  *&v24[0] = v14;
  sub_217751E38();
  return sub_217751E78();
}

uint64_t sub_2175A9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1, a1);
  v8 = *(a2 + 16);
  (*(v9 + 16))(&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (v8 == 1)
  {
    sub_2172830F8(a2 + 32, v12);
    sub_217751E38();
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    v12[3] = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
    v12[4] = &off_282971898;
    v12[2] = a2;
    sub_217751E38();
    sub_217751DE8();
  }

  return sub_217751E78();
}

uint64_t sub_2175A9CCC(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A2C8, &qword_21777F1E8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_2175A9D90(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2175A9928(a1, a2, v2[6], v2[7], v2[2]);
}

uint64_t sub_2175A9DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2175A9B70(a1, a2, v2[6], v2[2]);
}

uint64_t sub_2175A9E48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2175A9E88(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2175A9EDC()
{
  result = qword_27CB2A2D0;
  if (!qword_27CB2A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2D0);
  }

  return result;
}

uint64_t sub_2175A9F30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v3 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_2172849C8;

  return sub_2175A8190(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_2175AA00C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_217282D8C;

  return sub_2175A87D0(a1, v6, v7, v1 + 48, v8, v9, v4, v5);
}

uint64_t sub_2175AA0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2E8, &unk_21777F388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175AA154()
{
  result = qword_27CB2A2F8;
  if (!qword_27CB2A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2F8);
  }

  return result;
}

unint64_t sub_2175AA1A8()
{
  result = qword_27CB2A308;
  if (!qword_27CB2A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A308);
  }

  return result;
}

uint64_t sub_2175AA1FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A2C8, &qword_21777F1E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2175AA274()
{
  result = qword_27CB2A320;
  if (!qword_27CB2A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A320);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicItemCollectionCombinationIncrementalLoader.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175AA378()
{
  result = qword_27CB2A328;
  if (!qword_27CB2A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A328);
  }

  return result;
}

unint64_t sub_2175AA3D0()
{
  result = qword_27CB2A330;
  if (!qword_27CB2A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A330);
  }

  return result;
}

unint64_t sub_2175AA428()
{
  result = qword_27CB2A338;
  if (!qword_27CB2A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A338);
  }

  return result;
}

uint64_t MusicDataResponse.init(data:urlResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MusicDataResponse.data.getter()
{
  v1 = *v0;
  sub_21727591C(*v0, *(v0 + 8));
  return v1;
}

uint64_t static MusicDataResponse.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((MEMORY[0x21CEA1AB0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_2175AA53C();
  return sub_2177528A8() & 1;
}

unint64_t sub_2175AA53C()
{
  result = qword_27CB2A340;
  if (!qword_27CB2A340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2A340);
  }

  return result;
}

uint64_t MusicDataResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217751778();
  return sub_2177528B8();
}

uint64_t MusicDataResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2177531E8();
  sub_217751778();
  sub_2177528B8();
  return sub_217753238();
}

uint64_t sub_2175AA620()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_2177531E8();
  MusicDataResponse.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2175AA670(char a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = sub_217751F98();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v67 = 0xD000000000000012;
  v68 = 0x80000002177B1990;
  v69 = 0x3A6174616420200ALL;
  v70 = 0xE900000000000020;
  v9 = sub_217751718();
  MEMORY[0x21CEA23B0](v9);

  OUTLINED_FUNCTION_3_86();

  v10 = [objc_opt_self() currentDeviceInfo];
  v11 = [v10 isInternalBuild];

  if (v11)
  {
    v12 = *MEMORY[0x277D7F990];
    sub_217751F48();
    v13 = sub_217751F18();

    v14 = [v8 valueForHTTPHeaderField_];
    if (v14)
    {
      v15 = v14;
      v16 = sub_217751F48();
      v18 = v17;

      OUTLINED_FUNCTION_1_93();
      sub_217752AA8();

      OUTLINED_FUNCTION_0_107();
      v69 = v20 + 10;
      v70 = v19;
      MEMORY[0x21CEA23B0](v16, v18);

      MEMORY[0x21CEA23B0](34, 0xE100000000000000);
      OUTLINED_FUNCTION_3_86();
    }

    else
    {
    }

    v21 = *MEMORY[0x277D7F988];
    sub_217751F48();
    v22 = sub_217751F18();

    v23 = [v8 valueForHTTPHeaderField_];
    if (!v23)
    {

      if (a1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    v24 = v23;
    v25 = sub_217751F48();
    v27 = v26;

    OUTLINED_FUNCTION_1_93();
    sub_217752AA8();

    OUTLINED_FUNCTION_0_107();
    v69 = v29 + 7;
    v70 = v28;
    MEMORY[0x21CEA23B0](v25, v27);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    OUTLINED_FUNCTION_3_86();
  }

  if (a1)
  {
LABEL_8:
    v30 = [v8 description];
    v31 = sub_217751F48();
    v33 = v32;

    goto LABEL_11;
  }

LABEL_10:
  OUTLINED_FUNCTION_1_93();
  MEMORY[0x21CEA23B0](60, 0xE100000000000000);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = NSStringFromClass(ObjCClassFromMetadata);
  v36 = sub_217751F48();
  v38 = v37;

  MEMORY[0x21CEA23B0](v36, v38);

  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  v65 = v8;
  sub_217752C78();
  MEMORY[0x21CEA23B0](62, 0xE100000000000000);
  v31 = v69;
  v33 = v70;
LABEL_11:
  OUTLINED_FUNCTION_1_93();
  sub_217752AA8();

  OUTLINED_FUNCTION_0_107();
  v69 = v40;
  v70 = v39;
  v65 = v31;
  v66 = v33;
  sub_21733A5C8();
  v41 = OUTLINED_FUNCTION_2_94();
  v43 = v42;

  MEMORY[0x21CEA23B0](v41, v43);

  MEMORY[0x21CEA23B0](v69, v70);

  if ((a1 & 1) == 0)
  {
    goto LABEL_20;
  }

  v44 = objc_opt_self();
  v45 = sub_217751738();
  v65 = 0;
  v46 = [v44 JSONObjectWithData:v45 options:0 error:&v65];

  v47 = v65;
  if (!v46)
  {
    v60 = v47;
    v61 = sub_217751638();

    swift_willThrow();
LABEL_19:

    goto LABEL_20;
  }

  sub_2177529C8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(&v69, v71);
  v48 = sub_217753048();
  v65 = 0;
  v49 = [v44 dataWithJSONObject:v48 options:1 error:&v65];
  swift_unknownObjectRelease();
  v50 = v65;
  if (!v49)
  {
    v62 = v50;
    v61 = sub_217751638();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    goto LABEL_19;
  }

  v51 = sub_217751768();
  v53 = v52;

  sub_217751F88();
  sub_217751F68();
  if (v54)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_0_107();
    v65 = (v56 + 6);
    v66 = v55;
    v57 = OUTLINED_FUNCTION_2_94();
    v59 = v58;

    MEMORY[0x21CEA23B0](v57, v59);

    MEMORY[0x21CEA23B0](v65, v66);
  }

  sub_217275694(v51, v53);
  __swift_destroy_boxed_opaque_existential_1(&v69);
LABEL_20:
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  result = v67;
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MusicDataResponse.serverCorrelationKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D7F990];
  sub_217751F48();
  v3 = sub_217751F18();

  v4 = [v1 valueForHTTPHeaderField_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_217751F48();
  }

  else
  {

    return 0;
  }

  return v6;
}

unint64_t sub_2175AAD94(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  return sub_2175AA670(a1);
}

unint64_t sub_2175AADDC()
{
  result = qword_27CB2A348;
  if (!qword_27CB2A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A348);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t MusicPlayer.Queue.Entry.init(_:startTime:endTime:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_2171FF30C(a1, v14);
  sub_2173E04B4(v14, a2, a3 & 1, a4, a5 & 1, __src);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = __src[1];
  *a6 = __src[0];
  *(a6 + 8) = v12;
  memcpy((a6 + 16), __src, 0x2D9uLL);
  *(a6 + 745) = 0;
  return sub_217751DE8();
}

uint64_t MusicPlayer.Queue.Entry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t MusicPlayer.Queue.Entry.title.getter()
{
  v0 = OUTLINED_FUNCTION_5_69();
  if (v10)
  {
    OUTLINED_FUNCTION_9_54();
    sub_2174FB530();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v0, v1, v2, v3, v4, v5, v6, v7, v9);
    sub_217751DE8();
    sub_217284734(&v9);
  }

  return OUTLINED_FUNCTION_4_83();
}

uint64_t MusicPlayer.Queue.Entry.subtitle.getter()
{
  v0 = OUTLINED_FUNCTION_5_69();
  if (v10)
  {
    OUTLINED_FUNCTION_9_54();
    sub_2174FB5A0();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v0, v1, v2, v3, v4, v5, v6, v7, v9);
    sub_217751DE8();
    sub_217284734(&v9);
  }

  return OUTLINED_FUNCTION_4_83();
}

void *MusicPlayer.Queue.Entry.artwork.getter@<X0>(void *a1@<X8>)
{
  sub_2172846D8(v1 + 16, __src);
  if (__src[729])
  {
    sub_2174FB610(__dst);
  }

  else
  {
    memcpy(__dst, __src, 0x2D9uLL);
    memcpy(v6, &__src[48], 0x221uLL);
    sub_217202078(v6, &v4, &qword_27CB24400, &unk_21775E9A0);
    sub_217284734(__dst);
    memcpy(__dst, v6, 0x221uLL);
  }

  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t MusicPlayer.Queue.Entry.item.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_5_69();
  if (v12[865])
  {
    sub_2174FB6D8();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    sub_217202078(v12, a1, &qword_27CB245B8, &qword_217758AE0);
    return sub_217284734(v11);
  }
}

uint64_t MusicPlayer.Queue.Entry.transientItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_5_69();
  if (v12[801])
  {
    sub_2174FB754();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    sub_217202078(v12, a1, &qword_27CB24418, &unk_21777F680);
    return sub_217284734(v11);
  }
}

BOOL MusicPlayer.Queue.Entry.isTransient.getter()
{
  v0 = OUTLINED_FUNCTION_5_69();
  if (v14)
  {
    sub_2174FB754();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v0, v1, v2, v3, v4, v5, v6, v7, v10[0]);
    sub_217202078(&v11, &v15, &qword_27CB24418, &unk_21777F680);
    sub_217284734(v10);
  }

  v12[0] = v15;
  v12[1] = v16;
  v13 = v17;
  v8 = *(&v16 + 1) != 0;
  sub_2171F06D8(v12, &qword_27CB24418, &unk_21777F680);
  return v8;
}

uint64_t MusicPlayer.Queue.Entry.startTime.getter()
{
  v0 = OUTLINED_FUNCTION_5_69();
  if (v11)
  {
    OUTLINED_FUNCTION_9_54();
    v8 = sub_2174FB7D0();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v0, v1, v2, v3, v4, v5, v6, v7, v10[0]);
    v8 = v10[88];
    sub_217284734(v10);
  }

  return v8;
}

uint64_t MusicPlayer.Queue.Entry.endTime.getter()
{
  v0 = OUTLINED_FUNCTION_5_69();
  if (v11)
  {
    OUTLINED_FUNCTION_9_54();
    v8 = sub_2174FB83C();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v0, v1, v2, v3, v4, v5, v6, v7, v10[0]);
    v8 = v10[90];
    sub_217284734(v10);
  }

  return v8;
}

void *sub_2175AB364@<X0>(void *a1@<X8>)
{
  MusicPlayer.Queue.Entry.transientItem.getter(__dst);
  v2 = __dst[3];
  if (__dst[3])
  {
    v3 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(v3 + 16))(__src, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    if (__src[1])
    {
      return memcpy(a1, __src, 0x78uLL);
    }
  }

  else
  {
    sub_2171F06D8(__dst, &qword_27CB24418, &unk_21777F680);
    memset(__src, 0, 120);
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_2171F06D8(__dst, &qword_27CB244D0, &unk_21775D620);
  MusicPlayer.Queue.Entry.item.getter(v121);
  if (v121[56] == 255)
  {
    sub_2171F06D8(v121, &qword_27CB245B8, &qword_217758AE0);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  else
  {
    v4 = sub_21729C6EC(v121, &v117);
    if (v120)
    {
      OUTLINED_FUNCTION_1_94(v4, v5, v6, v7, v8, v9, v10, v11, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v80, v84, v88, v92, v95, v97, v98, v100, v101, v103, v104, v106, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v12);
      if (qword_280BE6CA8 != -1)
      {
        swift_once();
      }

      sub_2176CAB9C(qword_280C022F8, v13, v14, v15, v16, v17, v18, v19, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v81, v85, v89, v93);
      sub_217283C08(&v110);
    }

    else
    {
      OUTLINED_FUNCTION_1_94(v4, v5, v6, v7, v8, v9, v10, v11, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v80, v84, v88, v92, v95, v97, v98, v100, v101, v103, v104, v106, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v12);
      if (qword_280BE9800 != -1)
      {
        swift_once();
      }

      sub_2176CAA38(qword_280C028C0, v29, v30, v31, v32, v33, v34, v35, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v79, v83, v87, v91, v94);
      sub_217283B58(&v110);
    }

    v22 = v78;
    v21 = v82;
    v20 = v86;
    sub_21729C748(v121);
    v24 = v96;
    v23 = v90;
    v25 = v99;
    v26 = v102;
    v27 = v105;
    v28 = v108;
  }

  __src[0] = v22;
  __src[1] = v21;
  __src[2] = v20;
  *&__src[3] = v23;
  *&__src[5] = v24;
  *&__src[7] = v25;
  *&__src[9] = v26;
  *&__src[11] = v27;
  *&__src[13] = v28;
  return memcpy(a1, __src, 0x78uLL);
}

unint64_t MusicPlayer.Queue.Entry.description.getter()
{
  v40 = 0xD000000000000018;
  v41 = 0x80000002177B1A30;
  *&v38[0] = 0x22203A6469;
  *(&v38[0] + 1) = 0xE500000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_6_68();
  OUTLINED_FUNCTION_3_87();

  if (sub_2175AB9D0())
  {
    MusicPlayer.Queue.Entry.transientItem.getter(&v35);
    if (*(&v36 + 1))
    {
      sub_2171F3F0C(&v35, v38);
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177B1A50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27448, &unk_21776A590);
      sub_217752C78();
      MEMORY[0x21CEA23B0](v35, *(&v35 + 1));

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
      sub_2171F06D8(&v35, &qword_27CB24418, &unk_21777F680);
      MusicPlayer.Queue.Entry.item.getter(&v35);
      if (v37[24] == 255)
      {
        sub_2171F06D8(&v35, &qword_27CB245B8, &qword_217758AE0);
        *&v38[0] = 0x3A656C746974202CLL;
        *(&v38[0] + 1) = 0xEA00000000002220;
        v10 = MusicPlayer.Queue.Entry.title.getter();
        MEMORY[0x21CEA23B0](v10);

        OUTLINED_FUNCTION_6_68();
        OUTLINED_FUNCTION_3_87();

        v11 = MusicPlayer.Queue.Entry.subtitle.getter();
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          *&v38[0] = 0;
          *(&v38[0] + 1) = 0xE000000000000000;
          sub_217752AA8();

          strcpy(v38, ", subtitle: ");
          HIWORD(v38[0]) = -4864;
          MEMORY[0x21CEA23B0](v13, v14);

          OUTLINED_FUNCTION_6_68();
          OUTLINED_FUNCTION_3_87();
        }
      }

      else
      {
        v38[0] = v35;
        v38[1] = v36;
        v39[0] = *v37;
        *(v39 + 9) = *&v37[9];
        sub_21729C6EC(v38, &v35);
        if (v37[24])
        {
          OUTLINED_FUNCTION_2_95(v1, v2, v3, v4, v5, v6, v7, v8, v21, v24, v27, v28, v29, v30, v31, v32, v33, v34, *&v35, *(&v35 + 1), *&v36, *(&v36 + 1), *v37);
          v9 = MusicVideo.description.getter();
          MEMORY[0x21CEA23B0](v9);

          MEMORY[0x21CEA23B0](v22, v25);

          sub_217283C08(&v27);
        }

        else
        {
          OUTLINED_FUNCTION_2_95(v1, v2, v3, v4, v5, v6, v7, v8, v21, v24, v27, v28, v29, v30, v31, v32, v33, v34, *&v35, *(&v35 + 1), *&v36, *(&v36 + 1), *v37);
          v15 = Song.description.getter();
          MEMORY[0x21CEA23B0](v15);

          MEMORY[0x21CEA23B0](v23, v26);

          sub_217283B58(&v27);
        }

        sub_21729C748(v38);
      }
    }

    MusicPlayer.Queue.Entry.startTime.getter();
    if ((v16 & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_8_60();
      MEMORY[0x21CEA23B0](v17 | 0x5474726174730000, 0xED0000203A656D69);
      sub_2177525E8();
      OUTLINED_FUNCTION_3_87();
    }

    MusicPlayer.Queue.Entry.endTime.getter();
    if ((v18 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_8_60();
      MEMORY[0x21CEA23B0](v19 | 0x6D6954646E650000, 0xEB00000000203A65);
      sub_2177525E8();
      MEMORY[0x21CEA23B0](*&v38[0], *(&v38[0] + 1));
    }
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v40;
}

uint64_t sub_2175AB9D0()
{
  sub_2172846D8(v0, v8);
  if (v9)
  {
    v1 = v8[0];
    v2 = *(v8[0] + 32);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    swift_beginAccess();
    sub_217284788(v1 + 40, v6);
    v4 = v7;
    if (v7)
    {
      sub_217284734(v6);
    }

    else
    {
      sub_2172847E4(v6);
    }

    os_unfair_lock_unlock(*(v2 + 16));
  }

  else
  {
    sub_2175AC264(v8);
    return 1;
  }

  return v4;
}

uint64_t sub_2175ABA90()
{
  v1 = sub_2172846D8(v0, v13);
  if (v14)
  {
    v9 = *(v13[0] + 16);
    v10 = *(v13[0] + 24);
    sub_217751DE8();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v1, v2, v3, v4, v5, v6, v7, v8, v12);
    sub_217751DE8();
    sub_217284734(&v12);
  }

  return OUTLINED_FUNCTION_4_83();
}

void *sub_2175ABB04@<X0>(void *a1@<X8>)
{
  sub_2172846D8(v1, v8);
  if ((v9 & 1) == 0)
  {
    return memcpy(a1, v8, 0x2D9uLL);
  }

  v3 = *v8;
  v4 = *(*v8 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  sub_217284788(v3 + 40, __src);
  if (__src[729])
  {
    memcpy(a1, __src, 0x2D9uLL);
  }

  else
  {
    sub_2172847E4(__src);
    bzero(a1, 0x2D9uLL);
  }

  os_unfair_lock_unlock(*(v4 + 16));
}

BOOL sub_2175ABBE4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v2 = sub_2175ABA90();
  v4 = v3;
  if (v2 == sub_2175ABA90() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_217753058();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8;
    }
  }

  sub_2175ABB04(__src);
  sub_2175ABB04(v14);
  memcpy(__dst, __src, 0x2D9uLL);
  if (!__dst[1])
  {
    goto LABEL_12;
  }

  sub_217202078(__dst, v12, &qword_27CB24AE0, &unk_2177590B0);
  if (!v14[1])
  {
    sub_217284734(v12);
LABEL_12:
    sub_2171F06D8(__dst, &qword_27CB24AD8, &qword_2177590A8);
    return 1;
  }

  memcpy(v11, v12, 0x2D9uLL);
  memcpy(v10, v14, 0x2D9uLL);
  v8 = sub_2173E2640(v11, v10);
  sub_217284734(v10);
  sub_217284734(v11);
  sub_2171F06D8(__dst, &qword_27CB24AE0, &unk_2177590B0);
  return v8;
}

uint64_t sub_2175ABD88()
{
  sub_2175ABA90();
  OUTLINED_FUNCTION_189_1();
}

uint64_t sub_2175ABDC4()
{
  sub_2177531E8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175ABE2C()
{
  sub_2177531E8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

BOOL static MusicPlayer.Queue.Entry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  return sub_2175ABBE4((a1 + 2), (a2 + 2));
}

uint64_t MusicPlayer.Queue.Entry.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  sub_2175ABA90();
  OUTLINED_FUNCTION_189_1();
}

uint64_t MusicPlayer.Queue.Entry.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175ABFAC()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175AC010@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2175AC040()
{
  result = qword_27CB2A350;
  if (!qword_27CB2A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A350);
  }

  return result;
}

uint64_t sub_2175AC0A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 746))
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

uint64_t sub_2175AC0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 744) = 0;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 746) = 1;
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

    *(result + 746) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2175AC210()
{
  result = qword_27CB2A358;
  if (!qword_27CB2A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A358);
  }

  return result;
}

uint64_t Track.contentRating.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v42);
  if (v48)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    if (qword_280BE6D00 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA688(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    result = sub_217283C08(&v34);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA5B8(v19, v20, v21, v22, v23, v24, v25, v26, v29, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    result = sub_217283B58(&v34);
  }

  *v0 = v33;
  return result;
}

uint64_t sub_2175AC370@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  sub_21729C5E8(v1 + 16, v29);
  v4 = v30;
  v5 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v5 + 96))(__dst, v4, v5);
  v7 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(*(v6 + 8) + 48))(v27, v7);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_21729C644(v29);
  v8 = v27[1];
  if (v28 == 1)
  {

    v9 = 1;
  }

  else
  {
    v10 = v27[0];
    if (qword_280BE4BA8 != -1)
    {
      swift_once();
    }

    v11 = v10 == qword_280BE4BB0 && v8 == unk_280BE4BB8;
    if (v11 || (OUTLINED_FUNCTION_32_34() & 1) != 0)
    {

      v9 = 2;
    }

    else
    {
      if (qword_280BE4B60 != -1)
      {
        swift_once();
      }

      v21 = v10 == qword_280BE4B68 && v8 == unk_280BE4B70;
      if (v21 || (OUTLINED_FUNCTION_32_34() & 1) != 0)
      {

        v9 = 3;
      }

      else
      {
        if (qword_280BE4C10 != -1)
        {
          swift_once();
        }

        if (v10 == qword_280BE4C18 && v8 == unk_280BE4C20)
        {

          v9 = 4;
        }

        else
        {
          v23 = OUTLINED_FUNCTION_32_34();

          if (v23)
          {
            v9 = 4;
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }
  }

  sub_21729C5E8(v2 + 16, v25);
  v12 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v13 = *(v12 + 24);
  v14 = OUTLINED_FUNCTION_16_0();
  v15(v14);
  sub_21729C644(v25);
  memcpy(__dst, __src, 0x161uLL);
  v16 = __dst[3];
  if (__dst[3])
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  if (__dst[6])
  {
    v18 = 0;
  }

  else
  {
    v18 = v9 == 1;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v9;
  }

  if (LOBYTE(__dst[44]))
  {
    result = sub_217269F50(__dst);
  }

  else
  {
    sub_217751DE8();
    result = sub_217269F50(__dst);
    if (v16)
    {

      v19 = 0;
    }
  }

  *a1 = v19;
  return result;
}

uint64_t Track.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v30)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE6BC8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.artistName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v30)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE6DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v17);
  }

  return OUTLINED_FUNCTION_93();
}

void *Track.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6B50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA83C(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA860(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x221uLL);
}

uint64_t Track.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 48);
  v6 = OUTLINED_FUNCTION_47_2();
  v7(v6);
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_31_0(&qword_280BEA1D0);
  v9 = v9 && v8 == v79;
  if (!v9 && (OUTLINED_FUNCTION_24_30() & 1) == 0)
  {
    if (qword_280BE8B08 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_31_0(&qword_280BE8B10);
    v11 = v9 && v10 == v79;
    if (!v11 && (OUTLINED_FUNCTION_24_30() & 1) == 0)
    {
      if (qword_280BE8B28 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_31_0(&qword_280BE8B30);
      v40 = v9 && v39 == v79;
      if (!v40 && (OUTLINED_FUNCTION_24_30() & 1) == 0)
      {
        if (qword_280BE8B68 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_31_0(&qword_280BE8B70);
        if (!v9 || v41 != v79)
        {
          v43 = OUTLINED_FUNCTION_24_30();

          if (v43)
          {
LABEL_33:
            v44 = a1[4];
            v45 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            v46 = *(v44 + 96);
            v47 = v45;
            v48 = OUTLINED_FUNCTION_47_2();
            v49(v48);
            v50 = v71;
            v51 = v72;
            __swift_project_boxed_opaque_existential_1(v70, v71);
            OUTLINED_FUNCTION_0();
            v53 = v52;
            v55 = *(v54 + 64);
            MEMORY[0x28223BE20](v56, v57);
            v59 = OUTLINED_FUNCTION_10_49(v58, v69);
            v60(v59);
            v61 = *(*(v51 + 8) + 24);
            v62 = OUTLINED_FUNCTION_47_2();
            v63(v62);
            v65 = v77;
            v64 = v78;
            sub_217751DE8();
            sub_217269F50(&v77);
            *&v73 = v65;
            *(&v73 + 1) = v64;
            v66 = OUTLINED_FUNCTION_47_2();
            PropertyProvider.eraseToAnyPropertyProvider()(v66, v67, v68);
            (*(v53 + 8))(v47, v50);
            __swift_destroy_boxed_opaque_existential_1(v70);
            LOBYTE(v70[0]) = 1;
            goto LABEL_16;
          }

          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_33;
    }
  }

  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = *(v12 + 96);
  v15 = v13;
  v16 = OUTLINED_FUNCTION_47_2();
  v17(v16);
  v18 = v71;
  v19 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24, v25);
  v27 = OUTLINED_FUNCTION_10_49(v26, v69);
  v28(v27);
  v29 = *(*(v19 + 8) + 24);
  v30 = OUTLINED_FUNCTION_47_2();
  v31(v30);
  v33 = v77;
  v32 = v78;
  sub_217751DE8();
  sub_217269F50(&v77);
  *&v73 = v33;
  *(&v73 + 1) = v32;
  v34 = OUTLINED_FUNCTION_47_2();
  PropertyProvider.eraseToAnyPropertyProvider()(v34, v35, v36);
  (*(v21 + 8))(v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v70);
  LOBYTE(v70[0]) = 0;
LABEL_16:
  v37 = v74;
  *a2 = v73;
  *(a2 + 16) = v37;
  *(a2 + 32) = v75;
  *(a2 + 48) = v76;
  *(a2 + 56) = v70[0];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Track.id.getter()
{
  Track.innerItem.getter();
  v0 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_16_1();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return OUTLINED_FUNCTION_93();
}

double Track.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_217275710(v1, v7);
  if (v10)
  {
    v2 = &type metadata for MusicVideo;
  }

  else
  {
    v2 = &type metadata for Song;
  }

  if (v10)
  {
    v3 = &protocol witness table for MusicVideo;
  }

  else
  {
    v3 = &protocol witness table for Song;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t Track.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283B58(&v14);
  }
}

void *Track.albumIdentifierSet.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_27CB23DE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CB5A4(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE82A8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CB598(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x161uLL);
}

uint64_t Track.albumTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.artistURL.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v38);
  if (v44)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0(v9, v10);
    OUTLINED_FUNCTION_7_2();
    sub_2176CA63C(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, vars0, vars8);

    return sub_217283C08(&v30);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0(v20, v21);
    OUTLINED_FUNCTION_7_2();
    sub_2176CA560(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, vars0, vars8);

    return sub_217283B58(&v30);
  }
}

uint64_t Track.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6B38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE96D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

double Track.editorialNotes.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v35);
  if (v41)
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6CD8 != -1)
    {
      swift_once();
    }

    sub_2176CA67C(qword_280C02318, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1));
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1));
    sub_217283B58(&v27);
  }

  v24 = v43;
  *v0 = v42;
  v0[1] = v24;
  result = *&v44;
  v26 = v45;
  v0[2] = v44;
  v0[3] = v26;
  return result;
}

uint64_t Track.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v35)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    if (qword_280BE6D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4238(v16);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    sub_217283C08(&v22);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v20 = sub_2172A41D4(v19);
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    sub_217283B58(&v22);
  }

  return v18;
}

uint64_t Track._favoriteStatus.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v43);
  if (v49)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v28, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE6CA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CB384(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51);
    result = sub_217283C08(&v35);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v28, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE97F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA924(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51);
    result = sub_217283B58(&v35);
  }

  v27 = v34;
  if (v34 == 3)
  {
    v27 = 0;
  }

  *v0 = v27;
  return result;
}

uint64_t Track.keepLocalManagedStatus.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6C30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CB3AC(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283C08(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9798 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CA94C(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283B58(&v26);
  }
}

uint64_t Track.keepLocalManagedStatusReasons.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6C18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CB3C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283C08(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9780 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CA960(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283B58(&v26);
  }
}

uint64_t Track.isrc.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6BF8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.playCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6B18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE9690 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

void *Track.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAB9C(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAA38(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t Track.previewAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v33)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE6CF0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4614(v16);
    sub_217283C08(&v20);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4534(v18);
    sub_217283B58(&v20);
  }

  return v17;
}

uint64_t Track._releaseYear.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6D40 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE98D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t Track.trackNumber.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6D50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE98E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t Track.workName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6B30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE96C8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track._popularity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v32)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE6D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    if (qword_280BE9938 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t static Track.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217275710(a1, v48);
  sub_217275710(a2, &v49);
  if (v48[56])
  {
    v3 = sub_217275710(v48, v46);
    if (v50 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v47;
        v15 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283C08(&v38);
        if (v19)
        {
          sub_217283C08(v46);
LABEL_21:
          sub_21727576C(v48);
          return 1;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v46);
LABEL_26:
      sub_21727576C(v48);
      return 0;
    }

    sub_217283C08(v46);
  }

  else
  {
    v20 = sub_217275710(v48, v46);
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v47;
        v32 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283B58(&v38);
        if (v36)
        {
          sub_217283B58(v46);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v46);
      goto LABEL_26;
    }

    sub_217283B58(v46);
  }

  sub_2171F06D8(v48, &qword_27CB2A368, &unk_21777FC70);
  return 0;
}

uint64_t Track.hash(into:)()
{
  v1 = sub_217275710(v0, &v24);
  if (v29)
  {
    v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](1, v9);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v10 = OUTLINED_FUNCTION_3_4();
    v11(v10);
    return sub_217283C08(&v16);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](0, v13);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    return sub_217283B58(&v16);
  }
}

uint64_t Track.hashValue.getter()
{
  sub_2177531E8();
  Track.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175AE71C()
{
  sub_2177531E8();
  Track.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175AE758@<X0>(uint64_t *a1@<X8>)
{
  result = Track.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Track.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v6 = v5;
  v8 = *(v7 + 224);
  v9 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_33_33();
  if (v32)
  {
    OUTLINED_FUNCTION_3_0();
    v16 = *(v6 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v20 = v19;
    sub_217751DE8();
    MusicVideo.subscript.getter(v20);
    v21 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v21);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v26 = *(v6 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v27 = *(v2 + 16);
    v28 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v30 = v29;
    sub_217751DE8();
    Song.subscript.getter(v30);
    v31 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v31);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v4;
  }

  return v24(v23, v25, v9);
}

{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v6 = v5;
  v8 = *(v7 + 264);
  v9 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_33_33();
  if (v30)
  {
    OUTLINED_FUNCTION_3_0();
    v16 = *(v6 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    sub_217751DE8();
    v19 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter(v19);
    v20 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v20);

    if (&vars0 != 208)
    {
      return result;
    }

    v22 = OUTLINED_FUNCTION_40_0();
    v24 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v25 = *(v6 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v27 = *(v2 + 16);
    v26 = *(v2 + 24);
    sub_217751DE8();
    v28 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter(v28);
    v29 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v29);

    if (&vars0 != 208)
    {
      return result;
    }

    v22 = OUTLINED_FUNCTION_40_0();
    v24 = v4;
  }

  return v23(v22, v24, v9);
}

void *Track.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  sub_217275710(v2, v14);
  if (v14[56])
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v6);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_47_2();
    MusicRelationshipProperty.__allocating_init(_:kind:)();
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter(v7);
    v8 = v3;
    sub_217283C08(v13);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v9);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_47_2();
    MusicRelationshipProperty.__allocating_init(_:kind:)();
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter(v10);
    v8 = v3;
    sub_217283B58(v13);
  }

  if (!v8)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t Track.cloudEndpointKind.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v24);
  if (v29)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_24_36();
    sub_2175AC370(v10);
    result = sub_217283C08(&v16);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_24_36();
    sub_2175AC370(v12);
    result = sub_217283B58(&v16);
  }

  *v0 = v15;
  return result;
}

uint64_t Track.isLibraryAdded.getter()
{
  sub_2175AED74(v6);
  if (v7)
  {
    v0 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v1 = *(v0 + 24);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_2171F06D8(v6, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v4;
}

double sub_2175AED74@<D0>(uint64_t a1@<X8>)
{
  sub_217275710(v1, v8);
  if (v10)
  {
    v3 = &type metadata for MusicVideo;
  }

  else
  {
    v3 = &type metadata for Song;
  }

  if (v10)
  {
    v4 = &protocol witness table for MusicVideo;
  }

  else
  {
    v4 = &protocol witness table for Song;
  }

  v5 = swift_allocObject();
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v8[2];
  *(v5 + 64) = v9;
  v12 = v3;
  v13 = v4;
  *&v11 = v5;
  sub_2171F3F0C(&v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A380, &qword_21779A4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t Track.isLibraryAddEligible.getter()
{
  sub_2175AED74(v6);
  if (v7)
  {
    v0 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v1 = *(v0 + 32);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_2171F06D8(v6, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v4;
}

uint64_t Track.keepLocalEnabledStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_2175AED74(v7);
  if (v8)
  {
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = *(v2 + 40);
    v4 = OUTLINED_FUNCTION_16_0();
    v5(v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = sub_2171F06D8(v7, &qword_27CB2A370, &qword_21777FC80);
    *a1 = 5;
  }

  return result;
}

uint64_t sub_2175AEFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217758490;
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BEA1D0 + 1);
  v2 = byte_280BEA1E0;
  *(v0 + 32) = xmmword_280BEA1D0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE8B08;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *algn_280BE8B18;
  v5 = byte_280BE8B20;
  *(v0 + 56) = qword_280BE8B10;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = qword_280BE8B28;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_280BE8B38;
  v8 = byte_280BE8B40;
  *(v0 + 80) = qword_280BE8B30;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = qword_280BE8B68;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *algn_280BE8B78;
  v11 = byte_280BE8B80;
  *(v0 + 104) = qword_280BE8B70;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  qword_27CB8A2D8 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175AF17C()
{
  if (qword_27CB23CD0 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t Track.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE918();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Track.description.getter()
{
  v1 = sub_217275710(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217752AA8();

    v9 = MusicVideo.description.getter();
    MEMORY[0x21CEA23B0](v9);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_30_34();
    v10 = Song.description.getter();
    MEMORY[0x21CEA23B0](v10);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    sub_217283B58(&v14);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.debugDescription.getter()
{
  sub_217275710(v0, v5);
  if (v5[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    MusicVideo.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_6_2();

    v1 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x21CEA23B0](v1);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    sub_217283C08(v4);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_30_34();
    Song.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_6_2();

    v2 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x21CEA23B0](v2);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    sub_217283B58(v4);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static Track.typeValue.getter()
{
  if (qword_280BE8588 != -1)
  {
    OUTLINED_FUNCTION_9_55();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE8590);

  return sub_217751DE8();
}

uint64_t sub_2175AF5A0()
{
  if (qword_280BE8588 != -1)
  {
    OUTLINED_FUNCTION_9_55();
  }

  xmmword_280BE62A8 = xmmword_280BE8590;
  qword_280BE62B8 = qword_280BE85A0;
  unk_280BE62C0 = unk_280BE85A8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.track.getter()
{
  if (qword_280BE62A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62A8);

  return sub_217751DE8();
}

uint64_t sub_2175AF670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759200;
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v2 = qword_280BEB150;
  v1 = unk_280BEB158;
  *(v0 + 32) = xmmword_280BEB140;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6378;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280BE6390;
  v4 = unk_280BE6398;
  *(v0 + 64) = xmmword_280BE6380;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  qword_27CB2A360 = v0;

  return sub_217751DE8();
}

uint64_t static Track.supportedTypeValues.getter()
{
  if (qword_27CB23CD8 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2175AF7CC()
{
  result = qword_27CB2A378;
  if (!qword_27CB2A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A378);
  }

  return result;
}

uint64_t sub_2175AF82C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175AF868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2175AF8B8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void *sub_2175AFAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v16[1] = a2;
  v16[2] = a5;
  v17 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudResourceCollection();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v21, a1, v13);
  (*(v9 + 16))(v12, a3, a4);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_2174D0DD8();
  (*(v9 + 8))(a3, a4);
  (*(v14 + 8))(a1, v13);
  return sub_2173AA804(__src, v17);
}

uint64_t sub_2175AFC7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for MusicItemCollection();
  return sub_2174D10C0(v5, a2);
}

void sub_2175AFCBC()
{
  OUTLINED_FUNCTION_9_56();
  if (!v3)
  {
    goto LABEL_67;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_2175B15FC(v1, v0, 10);
LABEL_67:

    return;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v4 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v4 = sub_217752B88();
    }

    v5 = *v4;
    if (v5 == 43)
    {
      if (v2 >= 1)
      {
        if (v2 != 1 && v4)
        {
          OUTLINED_FUNCTION_16_52();
          do
          {
            OUTLINED_FUNCTION_1_2();
            if (!v7 & v6)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v7)
            {
              break;
            }

            if (__OFADD__(v15, v14))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
          }

          while (!v7);
        }

        goto LABEL_67;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v2 && v4)
      {
        do
        {
          if (*v4 - 48 > 9)
          {
            break;
          }

          OUTLINED_FUNCTION_14_47();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v21, v20))
          {
            break;
          }

          v4 = (v18 + 1);
        }

        while (v19 != 1);
      }

      goto LABEL_67;
    }

    if (v2 >= 1)
    {
      if (v2 != 1 && v4)
      {
        OUTLINED_FUNCTION_16_52();
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v9, v8))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_15_50();
  if (!v7)
  {
    if (v11 != 45)
    {
      if (v10)
      {
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_3_88();
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v13, v12))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      OUTLINED_FUNCTION_3_88();
      do
      {
        OUTLINED_FUNCTION_1_2();
        if (!v7 & v6)
        {
          break;
        }

        OUTLINED_FUNCTION_0_47();
        if (!v7)
        {
          break;
        }

        if (__OFADD__(v17, v16))
        {
          break;
        }

        OUTLINED_FUNCTION_2_5();
      }

      while (!v7);
    }

    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
}

uint64_t static URLQueryItem.requestedTypes(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_217275C90();
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      sub_217751DE8();
      if (v7 >= v6 >> 1)
      {
        sub_217275C90();
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2173C2F20();
  sub_217751ED8();

  sub_2177513F8();
}

uint64_t sub_2175B003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v8 = *(sub_217751428() - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6;
    if (sub_217751408() == a2 && v10 == a3)
    {
      break;
    }

    v12 = sub_217753058();

    if (v12)
    {
      goto LABEL_11;
    }

    ++v6;
  }

LABEL_11:
  v13 = v6;
LABEL_12:

  return v13;
}

void Array<A>.update(with:)(uint64_t a1)
{
  v2 = sub_217751428();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v3, v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v21 = *(v12 + 56);
    v22 = v13;
    v15 = (v12 - 8);
    do
    {
      v22(v10, v14, v2, v8);
      v16 = sub_217751408();
      v18 = v17;
      v19 = sub_217751418();
      Array<A>.subscript.setter(v19, v20, v16, v18);
      (*v15)(v10, v2);
      v14 += v21;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175B02A4()
{
  v0 = sub_217751428();
  __swift_allocate_value_buffer(v0, qword_280BE7428);
  __swift_project_value_buffer(v0, qword_280BE7428);
  return sub_2177513F8();
}

uint64_t sub_2175B0348()
{
  v0 = sub_217751428();
  __swift_allocate_value_buffer(v0, qword_27CB2A388);
  __swift_project_value_buffer(v0, qword_27CB2A388);
  return sub_2177513F8();
}

uint64_t sub_2175B03DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_217751428();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void Array<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217751428();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v32 = &v32 - v22;
  v23 = 0;
  v24 = *(a3 + 16);
  v34 = v9 + 16;
  v35 = a3;
  v25 = (v9 + 8);
  while (1)
  {
    if (v24 == v23)
    {
      v29 = 1;
      v30 = v32;
      goto LABEL_12;
    }

    (*(v9 + 16))(v14, v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v6, v21);
    if (sub_217751408() == a1 && v26 == a2)
    {
      break;
    }

    v28 = sub_217753058();

    if (v28)
    {
      goto LABEL_11;
    }

    (*v25)(v14, v6);
    ++v23;
  }

LABEL_11:
  v30 = v32;
  (*(v9 + 32))(v32, v14, v6);
  v29 = 0;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v30, v29, 1, v6);
  v31 = v33;
  sub_2175471C0(v30, v33);
  if (__swift_getEnumTagSinglePayload(v31, 1, v6) == 1)
  {
    sub_217547230(v30);
    sub_217547230(v31);
  }

  else
  {
    sub_217751418();
    sub_217547230(v30);
    (*v25)(v31, v6);
  }

  OUTLINED_FUNCTION_13();
}

{
  Array<A>.subscript.getter(a1, a2, a3);
  if (v4)
  {
    OUTLINED_FUNCTION_9_56();
    if (v7)
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        sub_2175B15FC(v5, v3, 10);
LABEL_68:

        return;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_15_50();
        if (v11)
        {
          if (v14)
          {
            if (v14 != 1)
            {
              OUTLINED_FUNCTION_3_88();
              do
              {
                OUTLINED_FUNCTION_1_2();
                if (!v11 & v10)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v11)
                {
                  break;
                }

                if (__OFADD__(v21, v20))
                {
                  break;
                }

                OUTLINED_FUNCTION_2_5();
              }

              while (!v11);
            }

            goto LABEL_68;
          }

          goto LABEL_76;
        }

        if (v15 != 45)
        {
          if (v14)
          {
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }

        if (v14)
        {
          if (v14 != 1)
          {
            OUTLINED_FUNCTION_3_88();
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFSUB__(v17, v16))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_217752B88();
        }

        v9 = *v8;
        if (v9 == 43)
        {
          if (v6 >= 1)
          {
            if (v6 != 1 && v8)
            {
              OUTLINED_FUNCTION_16_52();
              do
              {
                OUTLINED_FUNCTION_1_2();
                if (!v11 & v10)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v11)
                {
                  break;
                }

                if (__OFADD__(v19, v18))
                {
                  break;
                }

                OUTLINED_FUNCTION_2_5();
              }

              while (!v11);
            }

            goto LABEL_68;
          }

          goto LABEL_75;
        }

        if (v9 != 45)
        {
          if (v6 && v8)
          {
            do
            {
              if (*v8 - 48 > 9)
              {
                break;
              }

              OUTLINED_FUNCTION_14_47();
              if (!v11)
              {
                break;
              }

              if (__OFADD__(v25, v24))
              {
                break;
              }

              v8 = (v22 + 1);
            }

            while (v23 != 1);
          }

          goto LABEL_68;
        }

        if (v6 >= 1)
        {
          if (v6 != 1 && v8)
          {
            OUTLINED_FUNCTION_16_52();
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFSUB__(v13, v12))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }
  }
}

void sub_2175B071C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  Array<A>.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
}

void sub_2175B074C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  sub_217751DE8();
  sub_217751DE8();
  Array<A>.subscript.setter(v5, v6, v3, v4);
}

void Array<A>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_217751428();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v21, v22);
  if (a2)
  {
    v50 = v24;
    v51 = &v50 - v23;
    v53 = a3;
    sub_2177513F8();

    v25 = 0;
    v52 = v4;
    v26 = *v4;
    v27 = *(*v4 + 16);
    v54 = v13 + 16;
    v55 = v13 + 8;
    v56 = v27;
    v28 = v10;
    while (1)
    {
      if (v56 == v25)
      {

        v38 = *(v13 + 16);
        v40 = v50;
        v39 = v51;
        v41 = OUTLINED_FUNCTION_132();
        v42(v41);
        v43 = v52;
        sub_21770B7A4();
        v44 = *(*v43 + 16);
        sub_21770BAD4(v44);
        (*(v13 + 8))(v39, v28);
        v45 = *v43;
        *(v45 + 16) = v44 + 1;
        (*(v13 + 32))(v45 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v44, v40, v28);
        *v43 = v45;
LABEL_20:
        OUTLINED_FUNCTION_13();
        return;
      }

      if (v25 >= *(v26 + 16))
      {
        break;
      }

      v5 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v10 = *(v13 + 72) * v25;
      v6 = v13;
      (*(v13 + 16))(v20, v26 + v5 + v10, v28);
      if (sub_217751408() == v53 && v29 == a4)
      {

        v46 = OUTLINED_FUNCTION_13_48();
        v47(v46);
LABEL_17:

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_18:
          v48 = v52;
          if (v25 < *(v26 + 16))
          {
            (*(v6 + 40))(v26 + v5 + v10, v51, v28);
            *v48 = v26;
            goto LABEL_20;
          }

          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

LABEL_22:
        sub_2175035C8(v26);
        v26 = v49;
        goto LABEL_18;
      }

      v31 = a4;
      v32 = sub_217753058();

      v33 = OUTLINED_FUNCTION_13_48();
      v34(v33);
      if (v32)
      {
        goto LABEL_17;
      }

      ++v25;
      a4 = v31;
      v13 = v6;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_217751DE8();
  v35 = sub_2175B1B0C(v4, a3, a4);
  v36 = *(*v4 + 16);
  if (v36 < v35)
  {
    goto LABEL_24;
  }

  sub_2175B1264(v35, v36);
  OUTLINED_FUNCTION_13();
}

void (*Array<A>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *v3;
  v9 = OUTLINED_FUNCTION_132();
  Array<A>.subscript.getter(v9, v10, v11);
  *v7 = v12;
  v7[1] = v13;
  return sub_2175B0BA8;
}

void sub_2175B0BA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (*a1)[1];
    sub_217751DE8();
    sub_217751DE8();
    v8 = OUTLINED_FUNCTION_16_0();
    Array<A>.subscript.setter(v8, v9, v6, v5);
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];
    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_16_0();
    Array<A>.subscript.setter(v12, v13, v6, v5);
  }

  free(v2);
}

void sub_2175B0E80(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Array<A>.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  *(a3 + 8) = v5 & 1;
}

void sub_2175B0EB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_217751DE8();
  Array<A>.subscript.setter(v5, v6, v3, v4);
}

void Array<A>.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = sub_217752FC8();
  }

  Array<A>.subscript.setter(v6, v7, a3, a4);
}

void (*Array<A>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v8 = *v3;
  v9 = OUTLINED_FUNCTION_132();
  Array<A>.subscript.getter(v9, v10, v11);
  *v7 = v12;
  *(v7 + 8) = v13 & 1;
  return sub_2175B100C;
}

void sub_2175B100C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (*(*a1 + 8))
  {
    v3 = *(*a1 + 32);
    sub_217751DE8();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v1[2] = *v1;
    sub_217751DE8();
    v4 = sub_217752FC8();
    v2 = v1[4];
  }

  v6 = v1[5];
  Array<A>.subscript.setter(v4, v5, v1[3], v2);

  free(v1);
}

void Array<A>.update(with:)()
{
  v0 = sub_217751408();
  v2 = v1;
  v3 = sub_217751418();

  Array<A>.subscript.setter(v3, v4, v0, v2);
}

void sub_2175B10F8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_84();
  if (v5 != v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFSUB__(1, v7);
  v8 = 1 - v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_2173B7154(v4 + v8, 1);

  sub_217503700();
}

void sub_2175B118C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B7154(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 752 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_217500044((v12 + 752 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_2175B1264(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71CC(result, 1);
  v8 = *v2;
  v9 = *(sub_217751428() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_2175000FC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2175B1394(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71E4(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 16 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_217230498((v12 + 16 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_2175B1464(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_84();
  if (v9 != v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v3;
  v12 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v7;
  v14 = v6;
  v15 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = __OFSUB__(v15, v12);
  v16 = v15 - v12;
  if (v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v5;
  v18 = v4;
  sub_2173B7154(v8 + v16, 1);

  sub_217503B1C(v11, a2, v15, v18, v17, v14, v13);
}

void sub_2175B152C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71FC(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 32 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_2172304B8((v12 + 32 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

unsigned __int8 *sub_2175B15FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;
  sub_217751DE8();
  result = sub_217752108();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_132();
    v6 = sub_217288DA4();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      result = sub_217752B88();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_7_60();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_7_60();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_12_4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_7_60();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_12_4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_7_60();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_12_4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_7_60();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2175B1B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_217751428();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - v17;
  v19 = *a1;
  sub_217751DE8();
  v20 = v57;
  result = sub_2175B003C(v19, a2, a3);
  if (v20)
  {
  }

  v50 = v18;
  v54 = a2;
  if (v22)
  {
    v23 = *(v19 + 16);

    return v23;
  }

  v46 = v10;
  v47 = v14;
  v43 = 0;
  v44 = a1;
  v51 = result;
  v24 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v25 = v19;
  v52 = v6;
  v53 = (v6 + 8);
  v45 = (v6 + 40);
  v26 = v48;
  v27 = v50;
  v49 = a3;
  v57 = v6 + 16;
  while (1)
  {
    v28 = *(v25 + 16);
    if (v24 == v28)
    {

      return v51;
    }

    if (v24 >= v28)
    {
      break;
    }

    v55 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v29 = v25 + v55;
    v30 = *(v6 + 72);
    v31 = *(v6 + 16);
    v56 = v30 * v24;
    v31(v27, v25 + v55 + v30 * v24, v26);
    if (sub_217751408() == v54 && v32 == a3)
    {

      result = (*v53)(v27, v26);
      goto LABEL_16;
    }

    v34 = sub_217753058();

    result = (*v53)(v27, v26);
    if (v34)
    {
      a3 = v49;
      v27 = v50;
LABEL_16:
      v6 = v52;
      goto LABEL_27;
    }

    v35 = v51;
    if (v24 == v51)
    {
      a3 = v49;
      v27 = v50;
      v6 = v52;
    }

    else
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v36 = *(v25 + 16);
      if (v51 >= v36)
      {
        goto LABEL_31;
      }

      v37 = v30 * v51;
      v38 = v48;
      result = (v31)(v47, v29 + v30 * v51, v48);
      if (v24 >= v36)
      {
        goto LABEL_32;
      }

      v39 = v56;
      v31(v46, v29 + v56, v38);
      v26 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2175035C8(v25);
        v25 = v42;
      }

      v6 = v52;
      v40 = v25 + v55;
      v41 = *v45;
      result = (*v45)(v25 + v55 + v37, v46, v38);
      if (v24 >= *(v25 + 16))
      {
        goto LABEL_33;
      }

      result = v41(v40 + v39, v47, v38);
      *v44 = v25;
      a3 = v49;
      v27 = v50;
      v35 = v51;
    }

    v51 = v35 + 1;
LABEL_27:
    ++v24;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_2175B1F04()
{
  OUTLINED_FUNCTION_0_41();
  v2 = *(v0 + *(v1 + 144));
  sub_21720BA7C();
}

uint64_t sub_2175B1F64(uint64_t a1)
{
  v2 = *(*a1 + 152);
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = sub_217751B48();
  return sub_217211878(v3);
}

void sub_2175B1FD8()
{
  v1 = v0;
  v2 = *v0;
  os_unfair_lock_assert_not_owner(*(*(v1 + v2[18]) + 16));
  v3 = v2[12];
  v4 = v2[14];
  v5 = v1 + *(*v1 + 128);
  sub_217751B28();
  sub_21720BA7C();
}

uint64_t sub_2175B20A0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 152);
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_217751B58();
  result = sub_217751B38();
  if ((result & 1) == 0)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v5)
    {
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + v4);
  sub_217751B58();
  if ((sub_217751B38() & 1) == 0)
  {
    sub_217751B58();
    result = sub_217751B38();
    if (result)
    {
      v8 = sub_217751B58();
LABEL_10:
      *(a1 + v4) = v8;
      goto LABEL_11;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        v8 = v7 - 1;
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_11:
  swift_endAccess();
LABEL_12:
  swift_beginAccess();
  v9 = *(a1 + v4);
  sub_217751B58();
  if (sub_217751B38())
  {
LABEL_21:
    swift_endAccess();
    return sub_217211878(v5);
  }

  sub_217751B58();
  v10 = sub_217751B38();
  v11 = sub_217751B58();
  if (v10)
  {
LABEL_20:
    *(a1 + v4) = v11;
    goto LABEL_21;
  }

  result = sub_217751B38();
  if (result)
  {
LABEL_18:
    v11 = sub_217751B58();
    goto LABEL_20;
  }

  if ((v9 | a2) < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
    goto LABEL_18;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_2175B2234()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_1_96();
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_0_41();
  v7 = *(v6 + 128);
  v8 = *(v1 + 96);
  OUTLINED_FUNCTION_1_96();
  (*(v9 + 8))(v0 + v10);
  OUTLINED_FUNCTION_0_41();
  v12 = *(v0 + *(v11 + 136));

  OUTLINED_FUNCTION_0_41();
  v14 = *(v0 + *(v13 + 144));

  return v0;
}

uint64_t sub_2175B2324()
{
  sub_2175B2234();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Artwork.init(_:alternateText:existingColorAnalysis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v207[55] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v157 = *(a4 + 16);
  v159 = *(a4 + 8);
  v155 = *(a4 + 24);
  sub_2172E22C0(v207);
  v9 = a1[3];
  v10 = a1[4];
  OUTLINED_FUNCTION_27_40();
  v11 = *(v10 + 32);
  v12 = OUTLINED_FUNCTION_5_4();
  if (v13(v12, v10))
  {
    v14 = objc_opt_self();
    v15 = sub_217751D88();

    v204[0] = 0;
    v16 = [v14 dataWithJSONObject:v15 options:0 error:v204];

    v17 = v204[0];
    if (v16)
    {
      v18 = sub_217751768();
      v20 = v19;

      v21 = sub_217751348();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
      sub_2172DF600();
      sub_217751308();

      sub_217275694(v18, v20);
      memcpy(v203, v204, 0x1B8uLL);
      nullsub_1(v203, v73);
      v74 = v203;
      goto LABEL_6;
    }

    v24 = v17;
    v25 = sub_217751638();

    swift_willThrow();
  }

  v74 = v207;
LABEL_6:
  memcpy(v206, v74, sizeof(v206));
  memcpy(v205, v206, sizeof(v205));
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v205) != 1)
  {
    sub_2175B364C(v8, v159, v157, v155);

    memcpy(v203, v206, 0x1B8uLL);
    CloudAttribute<A>.convertToArtwork()(v204);
    memcpy(v202, v203, sizeof(v202));
    sub_2171F06D8(v202, &qword_27CB243F0, &qword_21775D690);
    memcpy(v203, v204, sizeof(v203));
    v188 = *v203;
    v46 = *&v203[8];
    v123 = *&v203[24];
    v124 = *&v203[16];
    v125 = *&v203[32];
    v190 = *&v203[40];
    v162 = *&v203[56];
    v163 = *&v203[48];
    v161 = *&v203[64];
    v127 = *&v203[72];
    v121 = *&v203[88];
    v122 = *&v203[80];
    v120[0] = v203[96];
    *&v195[3] = HIDWORD(v204[12]);
    *v195 = *(&v204[12] + 1);
    *&v120[4] = *&v203[104];
    v119 = v203[112];
    *&v194[3] = HIDWORD(v204[14]);
    *v194 = *(&v204[14] + 1);
    v180 = *&v203[128];
    v181 = *&v203[120];
    v47 = *&v203[152];
    v178 = *&v203[160];
    v179 = *&v203[136];
    v170 = *&v203[184];
    v171 = *&v203[144];
    v184 = *&v203[176];
    v185 = *&v203[192];
    v176 = *&v203[200];
    v177 = *&v203[168];
    *v193 = *(&v204[63] + 1);
    *&v193[3] = HIDWORD(v204[63]);
    v183 = *&v203[216];
    v169 = *&v203[224];
    v191 = *&v203[232];
    v174 = *&v203[240];
    v175 = *&v203[208];
    v172 = *&v203[256];
    v173 = *&v203[248];
    v167 = *&v203[264];
    v192 = *&v203[272];
    v132 = *&v203[288];
    v133 = *&v203[280];
    v130 = *&v203[304];
    v131 = *&v203[296];
    v128 = *&v203[320];
    v129 = *&v203[312];
    v158 = *&v203[336];
    v160 = *&v203[328];
    v154 = *&v203[352];
    v156 = *&v203[344];
    v152 = *&v203[368];
    v153 = *&v203[360];
    v150 = *&v203[384];
    v151 = *&v203[376];
    v148 = *&v203[400];
    v149 = *&v203[392];
    v146 = *&v203[416];
    v147 = *&v203[408];
    v144 = *&v203[432];
    v145 = *&v203[424];
    v142 = *&v203[448];
    v143 = *&v203[440];
    v141 = *&v203[456];
    v138 = *&v203[472];
    v139 = *&v203[464];
    v136 = *&v203[488];
    v137 = *&v203[480];
    v135 = *&v203[496];
    v134 = v203[504];
    v168 = *&v203[512];
    v140 = v203[544];
    v48 = a1[3];
    v49 = a1[4];
    OUTLINED_FUNCTION_27_40();
    v50 = *(v49 + 40);
    sub_217284028(v203, v199);
    v51 = v50(v48, v49);
    v165 = v52;
    v166 = v51;

    v53 = *v203;
    v54 = *&v203[8];
    sub_2171FF30C(a1, v199);
    v196 = 0uLL;
    v197 = v53;
    v198 = v54;
    type metadata accessor for ArtworkCatalog();
    v55 = swift_allocObject();
    v56 = v200;
    v57 = v201;
    __swift_mutable_project_boxed_opaque_existential_1(v199, v200);
    OUTLINED_FUNCTION_0();
    v59 = *(v58 + 64);
    MEMORY[0x28223BE20](v60, v61);
    OUTLINED_FUNCTION_1();
    v64 = v63 - v62;
    (*(v65 + 16))(v63 - v62);
    sub_217751DE8();
    v66 = v64;
    v67 = v190;
    v68 = v55;
    v69 = v56;
    v70 = v188;
    v71 = v47;
    v186 = sub_2173CB844(v66, &v196, v68, v69, v57);
    sub_217284084(v203);
    __swift_destroy_boxed_opaque_existential_1(v199);

    v72 = v46;
    goto LABEL_61;
  }

  v125 = a2;
  v189 = a3;
  sub_2171FF30C(a1, v204);
  sub_2173C9A78(v204, 0, 0, v203);
  v26 = *v203;
  v27 = *&v203[8];
  v28 = *&v203[16];
  v29 = *&v203[24];
  sub_2171FF30C(a1, v204);
  *v203 = v26;
  *&v203[8] = v27;
  v187 = v28;
  *&v203[16] = v28;
  *&v203[24] = v29;
  type metadata accessor for ArtworkCatalog();
  v30 = swift_allocObject();
  v31 = v204[3];
  v32 = v204[4];
  __swift_mutable_project_boxed_opaque_existential_1(v204, v204[3]);
  OUTLINED_FUNCTION_0();
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  (*(v40 + 16))(v38 - v37);
  sub_217751DE8();
  v182 = v29;
  sub_217751DE8();
  v186 = sub_2173CB844(v39, v203, v30, v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v204);
  if (qword_280BE76A8 != -1)
  {
    swift_once();
  }

  if ((byte_280BE76B1 & 1) == 0)
  {
    if (v8 == 1)
    {
      v41 = a1[3];
      v42 = a1[4];
      OUTLINED_FUNCTION_27_40();
      v43 = *(v42 + 48);
      v44 = OUTLINED_FUNCTION_5_4();
      v45(v44, v42);
      v8 = v204[0];
      v157 = v204[2];
      v159 = v204[1];
      v155 = v204[3];
    }

    else
    {
      v204[0] = v8;
      v204[1] = v159;
      v204[2] = v157;
    }
  }

  if (v8 >= 2)
  {
    v79 = v8;
    OUTLINED_FUNCTION_26_34();

    v75 = v204[0];
    v76 = v204[1];
    v77 = v204[2];
    v78 = v204[3];
    v164 = v204[4];
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v164 = 0;
  }

  v80 = 0;
  v81 = 0;
  if (v8 == 1)
  {
    v184 = 0;
    v185 = 0;
    v82 = 0;
  }

  else
  {
    v184 = 0;
    v185 = 0;
    v82 = 0;
    if (v159)
    {
      v83 = v159;
      OUTLINED_FUNCTION_26_34();

      v80 = v204[0];
      v81 = v204[1];
      v184 = v204[2];
      v82 = v204[3];
      v185 = v204[4];
    }
  }

  v177 = v81;
  v178 = v80;
  v84 = 0;
  v180 = v76;
  v170 = v82;
  v85 = 0;
  if (v8 == 1)
  {
    v183 = 0;
    v86 = 0;
    v191 = 0;
  }

  else
  {
    v183 = 0;
    v86 = 0;
    v191 = 0;
    if (v157)
    {
      v87 = v157;
      OUTLINED_FUNCTION_26_34();

      v84 = v204[0];
      v85 = v204[1];
      v183 = v204[2];
      v86 = v204[3];
      v191 = v204[4];
    }
  }

  v169 = v86;
  v175 = v85;
  v176 = v84;
  v88 = 0;
  v181 = v75;
  v179 = v77;
  v171 = v78;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  if (v8 == 1)
  {
    v192 = 0;
  }

  else
  {
    v192 = 0;
    if (v155)
    {
      v92 = v155;
      OUTLINED_FUNCTION_26_34();

      v88 = v204[0];
      v89 = v204[1];
      v90 = v204[2];
      v91 = v204[3];
      v192 = v204[4];
    }
  }

  v167 = v91;
  v172 = v90;
  v173 = v89;
  v174 = v88;
  v168 = sub_217751DC8();
  v93 = a1[3];
  v94 = a1[4];
  OUTLINED_FUNCTION_27_40();
  v95 = *(v94 + 40);
  v96 = OUTLINED_FUNCTION_5_4();
  v98 = v97(v96, v94);
  v165 = v99;
  v166 = v98;
  v203[0] = 0;
  LOBYTE(v199[0]) = 0;
  v100 = v164;
  if (v164)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v101 = OUTLINED_FUNCTION_16_7();
    *(v101 + 32) = v181;
    v102 = (v101 + 32);
    *(v101 + 16) = xmmword_217758490;
    *(v101 + 40) = v76;
    *(v101 + 48) = v77;
    OUTLINED_FUNCTION_6_69(v101);
    v103 = qword_280BE76A0;

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    if (v103 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v104 = CGColorCreate(qword_280C023C0, v102);
    }

    else
    {

      v104 = 0;
    }

    v105 = v191;
    v100 = v164;

    if (v185)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_217751DE8();

    sub_217751DE8();
    sub_217751DE8();
    v105 = v191;
    sub_217751DE8();
    v104 = 0;
    if (v185)
    {
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
      v108 = OUTLINED_FUNCTION_16_7();
      *(v108 + 16) = xmmword_217758490;
      *(v108 + 32) = v178;
      v109 = (v108 + 32);
      *(v108 + 40) = v177;
      *(v108 + 48) = v184;
      OUTLINED_FUNCTION_6_69(v108);
      if (qword_280BE76A0 != -1)
      {
        OUTLINED_FUNCTION_0_109();
      }

      if (qword_280C023C0)
      {
        v110 = CGColorCreate(qword_280C023C0, v109);
      }

      else
      {

        v110 = 0;
      }

      v106 = v164;
      v107 = v110;
      goto LABEL_44;
    }
  }

  v106 = v100;
  v107 = 0;
LABEL_44:
  v163 = v104;
  if (v105)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v111 = OUTLINED_FUNCTION_16_7();
    *(v111 + 16) = xmmword_217758490;
    *(v111 + 32) = v176;
    v112 = (v111 + 32);
    *(v111 + 40) = v175;
    *(v111 + 48) = v183;
    OUTLINED_FUNCTION_6_69(v111);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v113 = CGColorCreate(qword_280C023C0, v112);
    }

    else
    {

      v113 = 0;
    }
  }

  else
  {
    v113 = 0;
  }

  v161 = v113;
  v162 = v107;
  if (v192)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v114 = OUTLINED_FUNCTION_16_7();
    *(v114 + 16) = xmmword_217758490;
    *(v114 + 32) = v174;
    v115 = (v114 + 32);
    *(v114 + 40) = v173;
    *(v114 + 48) = v172;
    OUTLINED_FUNCTION_6_69(v114);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v116 = CGColorCreate(qword_280C023C0, v115);
    }

    else
    {

      v116 = 0;
    }

    v67 = v189;
    v70 = v187;
    v72 = v182;
  }

  else
  {

    v116 = 0;
    v67 = v189;
    v70 = v187;
    v72 = v182;
  }

  v127 = v116;
  sub_2175B364C(v8, v159, v157, v155);

  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  *&v120[8] = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  v158 = 0;
  v160 = 0;
  v154 = 0;
  v156 = 0;
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  v140 = 0;
  v119 = v199[0];
  *v120 = v203[0];
  v71 = v106;
LABEL_61:
  *&v203[97] = *v195;
  *&v203[113] = *v194;
  *&v203[505] = *v193;
  *&v203[100] = *&v195[3];
  *&v203[116] = *&v194[3];
  *&v203[508] = *&v193[3];
  *v203 = v70;
  *&v203[8] = v72;
  *&v203[16] = v124;
  *&v203[24] = v123;
  *&v203[32] = v125;
  *&v203[40] = v67;
  *&v203[48] = v163;
  *&v203[56] = v162;
  *&v203[64] = v161;
  *&v203[72] = v127;
  *&v203[80] = v122;
  *&v203[88] = v121;
  v203[96] = v120[0];
  *&v203[104] = *&v120[4];
  v203[112] = v119;
  *&v203[120] = v181;
  *&v203[128] = v180;
  *&v203[136] = v179;
  *&v203[144] = v171;
  *&v203[152] = v71;
  *&v203[160] = v178;
  *&v203[168] = v177;
  *&v203[176] = v184;
  *&v203[184] = v170;
  *&v203[192] = v185;
  *&v203[200] = v176;
  *&v203[208] = v175;
  *&v203[216] = v183;
  *&v203[224] = v169;
  *&v203[232] = v191;
  *&v203[240] = v174;
  *&v203[248] = v173;
  *&v203[256] = v172;
  *&v203[264] = v167;
  *&v203[272] = v192;
  *&v203[280] = v133;
  *&v203[288] = v132;
  *&v203[296] = v131;
  *&v203[304] = v130;
  *&v203[312] = v129;
  *&v203[320] = v128;
  *&v203[328] = v160;
  *&v203[336] = v158;
  *&v203[344] = v156;
  *&v203[352] = v154;
  *&v203[360] = v153;
  *&v203[368] = v152;
  *&v203[376] = v151;
  *&v203[384] = v150;
  *&v203[392] = v149;
  *&v203[400] = v148;
  *&v203[408] = v147;
  *&v203[416] = v146;
  *&v203[424] = v145;
  *&v203[432] = v144;
  *&v203[440] = v143;
  *&v203[448] = v142;
  *&v203[456] = v141;
  *&v203[464] = v139;
  *&v203[472] = v138;
  *&v203[480] = v137;
  *&v203[488] = v136;
  *&v203[496] = v135;
  v203[504] = v134;
  *&v203[512] = v168;
  *&v203[520] = v186;
  *&v203[528] = v166;
  *&v203[536] = v165;
  v203[544] = v140;
  memcpy(a5, v203, 0x221uLL);
  sub_217284028(v203, v204);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v204[0] = v70;
  v204[1] = v72;
  v204[2] = v124;
  v204[3] = v123;
  v204[4] = v125;
  v204[5] = v67;
  v204[6] = v163;
  v204[7] = v162;
  v204[8] = v161;
  v204[9] = v127;
  v204[10] = v122;
  v204[11] = v121;
  LOBYTE(v204[12]) = v120[0];
  v204[13] = *&v120[4];
  LOBYTE(v204[14]) = v119;
  v204[15] = v181;
  v204[16] = v180;
  v204[17] = v179;
  v204[18] = v171;
  v204[19] = v71;
  v204[20] = v178;
  v204[21] = v177;
  v204[22] = v184;
  v204[23] = v170;
  v204[24] = v185;
  v204[25] = v176;
  v204[26] = v175;
  v204[27] = v183;
  v204[28] = v169;
  v204[29] = v191;
  v204[30] = v174;
  v204[31] = v173;
  v204[32] = v172;
  v204[33] = v167;
  v204[34] = v192;
  v204[35] = v133;
  v204[36] = v132;
  v204[37] = v131;
  v204[38] = v130;
  v204[39] = v129;
  v204[40] = v128;
  *(&v204[12] + 1) = *v195;
  HIDWORD(v204[12]) = *&v195[3];
  *(&v204[14] + 1) = *v194;
  HIDWORD(v204[14]) = *&v194[3];
  v204[41] = v160;
  v204[42] = v158;
  v204[43] = v156;
  v204[44] = v154;
  v204[45] = v153;
  v204[46] = v152;
  v204[47] = v151;
  v204[48] = v150;
  v204[49] = v149;
  v204[50] = v148;
  v204[51] = v147;
  v204[52] = v146;
  v204[53] = v145;
  v204[54] = v144;
  v204[55] = v143;
  v204[56] = v142;
  v204[57] = v141;
  v204[58] = v139;
  v204[59] = v138;
  v204[60] = v137;
  v204[61] = v136;
  v204[62] = v135;
  LOBYTE(v204[63]) = v134;
  *(&v204[63] + 1) = *v193;
  HIDWORD(v204[63]) = *&v193[3];
  v204[64] = v168;
  v204[65] = v186;
  v204[66] = v166;
  v204[67] = v165;
  LOBYTE(v204[68]) = v140;
  result = sub_217284084(v204);
  v118 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2175B364C(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

void sub_2175B36A8(void *a1)
{
  v3 = v1;
  v5 = v1[54];
  memcpy(__dst, v3, sizeof(__dst));
  if (*(v5 + 16))
  {
    memcpy(v12, v3, sizeof(v12));
    sub_2171FF30C(a1, v10);
    sub_2172A9D58(v12, &v9);
    sub_2174D6834();
    if (!v2)
    {
      v7 = v6;
      v8 = sub_217751DE8();
      sub_2174D37FC(v8, v7);
      sub_21733AC44();
      sub_217751E48();
    }
  }

  else
  {
    CloudArtwork.encode(to:)(a1);
  }
}

uint64_t sub_2175B37C4(void *a1)
{
  v3 = *(v1 + 7);
  v4 = v1[1];
  v12 = *v1;
  v13 = v4;
  v5 = v1[3];
  v14 = v1[2];
  v15 = v5;
  if (!*(v3 + 16))
  {
    return sub_2173A90E4(a1);
  }

  v6 = v1[1];
  v16[0] = *v1;
  v16[1] = v6;
  v16[2] = v1[2];
  v17 = *(v1 + 6);
  sub_2171FF30C(a1, v11);
  sub_2175B7B18(v16, &v10);
  result = sub_2174D69C4(v16);
  if (!v2)
  {
    v8 = result;
    v9 = sub_217751DE8();
    sub_2174D37FC(v9, v8);
    sub_21733AC44();
    OUTLINED_FUNCTION_93();
    sub_217751E48();
  }

  return result;
}

uint64_t sub_2175B38E0(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 64);
  memcpy(__dst, v3, sizeof(__dst));
  if (!*(v5 + 16))
  {
    return CloudEditorialNotes.encode(to:)(a1);
  }

  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  sub_2171FF30C(a1, v12);
  sub_2175B7B74(v14, &v11);
  result = sub_2174D6B68(v14, v12);
  if (!v2)
  {
    v9 = result;
    v10 = sub_217751DE8();
    sub_2174D37FC(v10, v9);
    sub_21733AC44();
    OUTLINED_FUNCTION_93();
    sub_217751E48();
  }

  return result;
}

void sub_2175B39F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v13[-v3];
  v5 = sub_2177516D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_217751DC8();
  v14 = 0;
  v13[0] = 0;
  sub_2177516C8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2171F06D8(v4, &unk_27CB277C0, &qword_217758DC0);
    v12 = 0;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    type metadata accessor for ArtworkLoadingProtocol();
    v12 = sub_217576A44();
    (*(v6 + 8))(v10, v5);
  }

  qword_280BE27C8 = 0xD00000000000001ALL;
  unk_280BE27D0 = 0x80000002177B1DC0;
  xmmword_280BE27D8 = vdupq_n_s64(0x1F4uLL);
  unk_280BE27E8 = 0u;
  xmmword_280BE27F8 = 0u;
  unk_280BE2808 = 0u;
  qword_280BE2818 = 0;
  unk_280BE2820 = 500;
  byte_280BE2828 = v14;
  qword_280BE2830 = 500;
  byte_280BE2838 = v13[0];
  bzero(&unk_280BE2840, 0x181uLL);
  qword_280BE29C8 = v11;
  qword_280BE29D0 = v12;
  qword_280BE29D8 = 0xD000000000000018;
  qword_280BE29E0 = 0x80000002177B1DE0;
  byte_280BE29E8 = 1;
}

uint64_t static Artwork.placeholder.getter()
{
  if (qword_280BE27C0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_280BE27C8, 0x221uLL);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_217284028(__dst, &v3);
}

uint64_t Artwork.alternateText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *Artwork.primaryTextColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *Artwork.secondaryTextColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *Artwork.tertiaryTextColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *Artwork.quaternaryTextColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t Artwork._textGradient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 320), sizeof(__dst));
  memcpy(a1, (v1 + 320), 0x60uLL);
  return sub_2174A87A0(__dst, &v4, &qword_27CB2A3A0, &qword_2177800D0);
}

uint64_t Artwork._gradient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 416), sizeof(__dst));
  memcpy(a1, (v1 + 416), 0x58uLL);
  return sub_2174A87A0(__dst, &v4, &qword_27CB2A3A8, &qword_2177800D8);
}

uint64_t Artwork.catalog.setter(uint64_t a1)
{
  v3 = *(v1 + 520);

  *(v1 + 520) = a1;
  return result;
}

double Artwork.rawArtworkCatalog.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 520);
  if (v2)
  {
    swift_beginAccess();
    v3 = v2[7];
    v4 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
    OUTLINED_FUNCTION_0();
    v6 = v5;
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v9, v10);
    OUTLINED_FUNCTION_1();
    v13 = v12 - v11;
    (*(v6 + 16))(v12 - v11);
    (*(v4 + 104))(v3, v4);
    (*(v6 + 8))(v13, v3);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t Artwork._urlFormat.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t Artwork.visualIdenticalityIdentifier.getter()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t Artwork.visualIdenticalityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 536);

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
  return result;
}

uint64_t Artwork.url(width:height:)()
{
  v2 = *v0;
  v3 = v0[1];
  sub_217751DE8();
  sub_217752FC8();
  sub_21733A5C8();
  OUTLINED_FUNCTION_13_49();

  sub_217752FC8();
  OUTLINED_FUNCTION_13_49();

  sub_2177516C8();
}

uint64_t sub_2175B423C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  v4 = v0[11];
  v5 = *(v0 + 96);
  v22 = v0[13];
  v23 = v0[4];
  v6 = *(v0 + 112);
  v7 = v0[19];
  v8 = v0[24];
  v24 = v0[18];
  v25 = v0[23];
  v26 = v0[28];
  v27 = v0[33];
  v29 = v0[29];
  v30 = v0[34];
  v28 = v0[38];
  v31 = v0[39];
  memcpy(__dst, v0 + 40, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28998, &unk_217780360);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2177586E0;
  v35[0] = 7107189;
  v35[1] = 0xE300000000000000;
  sub_217751DE8();
  v10 = MEMORY[0x277D837D0];
  sub_217752A48();
  *(v9 + 96) = v10;
  *(v9 + 72) = v2;
  *(v9 + 80) = v1;
  v11 = sub_217751DC8();
  v12 = MEMORY[0x277D83B88];
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(&v33 + 1) = 0xE500000000000000;
    sub_217752A48();
    v34 = v12;
    *&v33 = v4;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
    if (v6)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  *&v33 = 0x746867696568;
  *(&v33 + 1) = 0xE600000000000000;
  sub_217752A48();
  v34 = v12;
  *&v33 = v22;
  sub_2172124CC(&v33, v32);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2172C80EC(v32, v35);
  sub_2174E6BDC(v35);
  if (v3)
  {
LABEL_4:
    *&v33 = 7629921;
    *(&v33 + 1) = 0xE300000000000000;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v23;
    *(&v33 + 1) = v3;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

LABEL_5:
  if (v7)
  {
    strcpy(&v33, "bgColor");
    *(&v33 + 1) = 0xE700000000000000;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v24;
    *(&v33 + 1) = v7;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v8)
  {
    strcpy(&v33, "textColor1");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v25;
    *(&v33 + 1) = v8;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v29)
  {
    strcpy(&v33, "textColor2");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v26;
    *(&v33 + 1) = v29;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v30)
  {
    strcpy(&v33, "textColor3");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v27;
    *(&v33 + 1) = v30;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v31)
  {
    strcpy(&v33, "textColor4");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v28;
    *(&v33 + 1) = v31;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  v13 = __dst[6];
  if (__dst[6])
  {
    v15 = __dst[10];
    v14 = __dst[11];
    v16 = __dst[5];
    strcpy(&v33, "textGradient");
    BYTE13(v33) = 0;
    HIWORD(v33) = -5120;
    v17 = __dst[0];
    v18 = __dst[1];
    sub_217751DE8();
    sub_217751DE8();
    v19 = v17;
    sub_217752A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_217759200;
    *(v20 + 32) = v16;
    *(v20 + 40) = v13;
    *(v20 + 48) = v15;
    *(v20 + 56) = v14;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    *&v33 = v20;
    sub_2172124CC(&v33, v32);
    sub_217751DE8();
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
    sub_2171F06D8(__dst, &qword_27CB2A3A0, &qword_2177800D0);
  }

  return v11;
}

uint64_t Artwork._makeCloudArtworkCatalog(cropStyle:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, 0x221uLL);
  sub_2175B423C();
  sub_2175B78D8();
  OUTLINED_FUNCTION_5_4();
  sub_217751DE8();
  v4 = sub_2175B4AFC();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = sub_217751F18();
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_opt_self();
    OUTLINED_FUNCTION_5_37();
    v10 = [v8 v9];

    if ([v7 artworkCatalogWithStoreArtworkToken_])
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_217717634();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      v12 = sub_2175B770C(v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v12;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B1BD0);
    v15 = [v5 description];
    v16 = sub_217751F48();
    v18 = v17;

    MEMORY[0x21CEA23B0](v16, v18);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177B1B90);
    v14 = sub_217751DA8();
    MEMORY[0x21CEA23B0](v14);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

id sub_2175B4AFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_217751D88();

  v2 = [v0 initWithArtworkResponseDictionary_];

  return v2;
}

uint64_t static Artwork.== infix(_:_:)(uint64_t *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v223 = a1[4];
  v226 = a1[5];
  v225 = a1[6];
  v221 = a1[7];
  v219 = a1[8];
  v217 = a1[9];
  v215 = a1[10];
  v209 = a1[11];
  v212 = *(a1 + 96);
  v210 = *(a1 + 112);
  v203 = *(a1 + 16);
  v201 = *(a1 + 15);
  v202 = *(a1 + 17);
  v197 = a1[18];
  v205 = a1[13];
  v206 = a1[19];
  v193 = *(a1 + 21);
  v191 = *(a1 + 20);
  v192 = *(a1 + 22);
  v187 = a1[23];
  v195 = a1[24];
  v183 = *(a1 + 26);
  v181 = *(a1 + 25);
  v182 = *(a1 + 27);
  v177 = a1[28];
  v185 = a1[29];
  v173 = *(a1 + 31);
  v171 = *(a1 + 30);
  v172 = *(a1 + 32);
  v175 = a1[34];
  v163 = *(a1 + 36);
  v161 = *(a1 + 35);
  v162 = *(a1 + 37);
  v157 = a1[38];
  v166 = a1[33];
  v167 = a1[39];
  memcpy(__dst, a1 + 40, sizeof(__dst));
  memcpy(v243, a1 + 52, sizeof(v243));
  v148 = *(a1 + 504);
  v151 = a1[64];
  v152 = a1[65];
  v153 = a1[67];
  v154 = a1[66];
  v155 = *(a1 + 544);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 5);
  v222 = *(a2 + 4);
  v224 = *(a2 + 6);
  v220 = *(a2 + 7);
  v218 = *(a2 + 8);
  v216 = *(a2 + 9);
  v214 = *(a2 + 10);
  v207 = *(a2 + 11);
  v211 = *(a2 + 96);
  v204 = *(a2 + 13);
  v208 = *(a2 + 112);
  v200 = a2[16];
  v198 = a2[15];
  v199 = a2[17];
  v196 = *(a2 + 18);
  v213 = *(a2 + 19);
  v190 = a2[21];
  v188 = a2[20];
  v189 = a2[22];
  v186 = *(a2 + 23);
  v194 = *(a2 + 24);
  v180 = a2[26];
  v178 = a2[25];
  v179 = a2[27];
  v176 = *(a2 + 28);
  v184 = *(a2 + 29);
  v170 = a2[31];
  v168 = a2[30];
  v169 = a2[32];
  v174 = *(a2 + 34);
  v160 = a2[36];
  v158 = a2[35];
  v159 = a2[37];
  v156 = *(a2 + 38);
  v164 = *(a2 + 39);
  v165 = *(a2 + 33);
  memcpy(v244, a2 + 40, sizeof(v244));
  memcpy(v245, a2 + 52, sizeof(v245));
  v145 = *(a2 + 504);
  v146 = *(a2 + 64);
  v147 = *(a2 + 65);
  v13 = *(a2 + 66);
  v149 = v13;
  v150 = *(a2 + 67);
  v14 = v4 == *&v8 && v5 == v9;
  v15 = *(a2 + 544);
  if (v14)
  {
    if (v7 != v10 || v6 != v11)
    {
      return 0;
    }

LABEL_16:
    if (v226)
    {
      if (!v12)
      {
        return 0;
      }

      v20 = v223 == v222 && v226 == v12;
      if (!v20 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (v225)
    {
      if (!v224)
      {
        return 0;
      }

      v21 = v15;
      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v22 = v224;
      v23 = sub_217751988();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v21 = v15;
      if (v224)
      {
        return 0;
      }
    }

    if (v221)
    {
      if (!v220)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v24 = v220;
      v25 = OUTLINED_FUNCTION_11_57();

      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v220)
    {
      return 0;
    }

    if (v219)
    {
      if (!v218)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v26 = v218;
      v27 = OUTLINED_FUNCTION_11_57();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v218)
    {
      return 0;
    }

    if (v217)
    {
      if (!v216)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v28 = v216;
      v29 = OUTLINED_FUNCTION_11_57();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v216)
    {
      return 0;
    }

    if (v215)
    {
      if (!v214)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v30 = v214;
      v31 = OUTLINED_FUNCTION_11_57();

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v214)
    {
      return 0;
    }

    if (v212)
    {
      v32 = v213;
      if (!v211)
      {
        return 0;
      }
    }

    else
    {
      v33 = v211;
      if (v209 != v207)
      {
        v33 = 1;
      }

      v32 = v213;
      if (v33)
      {
        return 0;
      }
    }

    if (v210)
    {
      if (!v208)
      {
        return 0;
      }
    }

    else
    {
      v34 = v208;
      if (v205 != v204)
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    if (v206)
    {
      if (v32)
      {
        if (v201 != v198 || v203 != v200 || v202 != v199)
        {
          goto LABEL_71;
        }

        v37 = v197 == v196 && v206 == v213;
        if (!v37 && (sub_217753058() & 1) == 0)
        {
          return 0;
        }

LABEL_80:
        if (v195)
        {
          if (v194)
          {
            if (v191 != v188 || v193 != v190 || v192 != v189)
            {
              goto LABEL_71;
            }

            v43 = v187 == v186 && v195 == v194;
            if (!v43 && (sub_217753058() & 1) == 0)
            {
              return 0;
            }

LABEL_103:
            if (v185)
            {
              if (v184)
              {
                if (v181 != v178 || v183 != v180 || v182 != v179)
                {
                  goto LABEL_71;
                }

                v46 = v177 == v176 && v185 == v184;
                if (!v46 && (sub_217753058() & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_121;
              }
            }

            else if (!v184)
            {

LABEL_121:
              if (v175)
              {
                if (v174)
                {
                  if (v171 != v168 || v173 != v170 || v172 != v169)
                  {
                    goto LABEL_71;
                  }

                  v49 = v166 == v165 && v175 == v174;
                  if (!v49 && (sub_217753058() & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_139;
                }
              }

              else if (!v174)
              {

LABEL_139:
                if (v167)
                {
                  if (v164)
                  {
                    if (v161 != v158 || v163 != v160 || v162 != v159)
                    {
LABEL_71:
                      swift_bridgeObjectRetain_n();
                      swift_bridgeObjectRelease_n();
                      return 0;
                    }

                    v52 = v157 == v156 && v167 == v164;
                    if (!v52 && (sub_217753058() & 1) == 0)
                    {
                      return 0;
                    }

LABEL_157:
                    v231[0] = __dst[0];
                    v231[1] = __dst[1];
                    v231[2] = __dst[2];
                    v239 = *(&__dst[3] + 8);
                    v240 = *(&__dst[4] + 8);
                    v53 = *&__dst[3];
                    v241 = *(&__dst[5] + 1);
                    v230[1] = v244[1];
                    v230[2] = v244[2];
                    v230[0] = v244[0];
                    v54 = *&v244[3];
                    v238 = *(&v244[5] + 1);
                    v237 = *(&v244[4] + 8);
                    v236 = *(&v244[3] + 8);
                    if (*&__dst[3])
                    {
                      OUTLINED_FUNCTION_4_85(__dst);
                      *&__src[48] = v53;
                      *&__src[88] = v55;
                      memcpy(v232, __src, sizeof(v232));
                      if (v54)
                      {
                        v229[0] = v244[0];
                        v229[1] = v244[1];
                        v229[2] = v244[2];
                        *(&v229[3] + 8) = *(&v244[3] + 8);
                        *(&v229[4] + 8) = *(&v244[4] + 8);
                        *(&v229[5] + 1) = *(&v244[5] + 1);
                        *&v229[3] = v54;
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v56, v57, v58, v59);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v60, v61, v62, v63);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v64, v65, v66, v67);
                        v68 = static Artwork._TextGradient.== infix(_:_:)(v232, v229);
                        memcpy(v227, v229, sizeof(v227));
                        sub_2175B7970(v227);
                        memcpy(v228, v232, sizeof(v228));
                        sub_2175B7970(v228);
                        v229[0] = v231[0];
                        v229[1] = v231[1];
                        v229[2] = v231[2];
                        *(&v229[3] + 8) = v239;
                        *(&v229[4] + 8) = v240;
                        *&v229[3] = v53;
                        *(&v229[5] + 1) = v241;
                        OUTLINED_FUNCTION_27(v229);
                        if ((v68 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_166;
                      }

                      memcpy(v229, __src, sizeof(v229));
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v77, v78, v79, v80);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v81, v82, v83, v84);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v85, v86, v87, v88);
                      sub_2175B7970(v229);
                    }

                    else
                    {
                      if (!*&v244[3])
                      {
                        OUTLINED_FUNCTION_4_85(__dst);
                        *&__src[48] = 0;
                        *&__src[88] = v89;
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v90, v91, v92, v93);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v94, v95, v96, v97);
                        OUTLINED_FUNCTION_27(__src);
LABEL_166:
                        memcpy(v231, v243, sizeof(v231));
                        v98 = v243[10];
                        memcpy(v230, v245, sizeof(v230));
                        v99 = v245[10];
                        if (v243[10])
                        {
                          memcpy(__src, v243, 0x50uLL);
                          *&__src[80] = v243[10];
                          memcpy(v232, __src, 0x58uLL);
                          if (v245[10])
                          {
                            memcpy(v229, v245, 0x50uLL);
                            *&v229[5] = v245[10];
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v100, v101, v102, v103);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v104, v105, v106, v107);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v108, v109, v110, v111);
                            static Artwork._Gradient.== infix(_:_:)(v232, v229);
                            v113 = v112;
                            memcpy(v227, v229, 0x58uLL);
                            sub_2175B791C(v227);
                            memcpy(v228, v232, 0x58uLL);
                            sub_2175B791C(v228);
                            memcpy(v229, v231, 0x50uLL);
                            *&v229[5] = v98;
                            OUTLINED_FUNCTION_27(v229);
                            result = 0;
                            if (v113 & 1) == 0 || ((v148 ^ v145))
                            {
                              return result;
                            }

LABEL_176:
                            sub_217261FB0(v151, v146);
                            if (v142)
                            {
                              if (v152)
                              {
                                if (!v147)
                                {
                                  return 0;
                                }

                                type metadata accessor for ArtworkCatalog();

                                v143 = static ArtworkCatalog.== infix(_:_:)(v152, v147);

                                if ((v143 & 1) == 0)
                                {
                                  return 0;
                                }
                              }

                              else if (v147)
                              {
                                return 0;
                              }

                              if (v153)
                              {
                                if (!v150)
                                {
                                  return 0;
                                }

                                v144 = v154 == v149 && v153 == v150;
                                if (!v144 && (sub_217753058() & 1) == 0)
                                {
                                  return 0;
                                }
                              }

                              else if (v150)
                              {
                                return 0;
                              }

                              return v155 ^ v21 ^ 1u;
                            }

                            return 0;
                          }

                          memcpy(v229, __src, 0x58uLL);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v122, v123, v124, v125);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v126, v127, v128, v129);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v130, v131, v132, v133);
                          sub_2175B791C(v229);
                        }

                        else
                        {
                          if (!v245[10])
                          {
                            memcpy(__src, v243, 0x50uLL);
                            *&__src[80] = 0;
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v134, v135, v136, v137);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v138, v139, v140, v141);
                            OUTLINED_FUNCTION_27(__src);
                            if (v148 != v145)
                            {
                              return 0;
                            }

                            goto LABEL_176;
                          }

                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v114, v115, v116, v117);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v118, v119, v120, v121);
                        }

                        memcpy(__src, v231, 0x50uLL);
                        *&__src[80] = v98;
                        memcpy(&__src[88], v230, 0x50uLL);
                        *&v234 = v99;
                        v41 = &unk_27CB2A3B8;
                        v42 = &unk_2177800F0;
LABEL_94:
                        sub_2171F06D8(__src, v41, v42);
                        return 0;
                      }

                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v69, v70, v71, v72);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v73, v74, v75, v76);
                    }

                    *__src = v231[0];
                    *&__src[16] = v231[1];
                    *&__src[32] = v231[2];
                    *&__src[56] = v239;
                    *&__src[72] = v240;
                    *&__src[128] = v230[2];
                    *&__src[112] = v230[1];
                    *&__src[96] = v230[0];
                    v234 = v237;
                    *&__src[48] = v53;
                    *&__src[88] = v241;
                    *&__src[144] = v54;
                    v235 = v238;
                    *&__src[152] = v236;
                    v41 = &unk_27CB2A3B0;
                    v42 = &unk_2177800E8;
                    goto LABEL_94;
                  }
                }

                else if (!v164)
                {

                  goto LABEL_157;
                }

                sub_217751DE8();
                *__src = v161;
                OUTLINED_FUNCTION_16_53(*&v162);
                *&__src[24] = v157;
                *&__src[32] = v167;
                *&__src[40] = v158;
                OUTLINED_FUNCTION_14_48(*&v159);
                *&__src[64] = v156;
                v40 = v164;
                goto LABEL_92;
              }

              sub_217751DE8();
              *__src = v171;
              OUTLINED_FUNCTION_16_53(*&v172);
              *&__src[24] = v166;
              *&__src[32] = v175;
              *&__src[40] = v168;
              OUTLINED_FUNCTION_14_48(*&v169);
              *&__src[64] = v165;
              v40 = v174;
LABEL_92:
              *&__src[72] = v40;
              goto LABEL_93;
            }

            sub_217751DE8();
            *__src = v181;
            OUTLINED_FUNCTION_16_53(*&v182);
            *&__src[24] = v177;
            *&__src[32] = v185;
            *&__src[40] = v178;
            OUTLINED_FUNCTION_14_48(*&v179);
            *&__src[64] = v176;
            v40 = v184;
            goto LABEL_92;
          }
        }

        else if (!v194)
        {

          goto LABEL_103;
        }

        sub_217751DE8();
        *__src = v191;
        OUTLINED_FUNCTION_16_53(*&v192);
        *&__src[24] = v187;
        *&__src[32] = v195;
        *&__src[40] = v188;
        OUTLINED_FUNCTION_14_48(*&v189);
        *&__src[64] = v186;
        v40 = v194;
        goto LABEL_92;
      }
    }

    else if (!v32)
    {

      goto LABEL_80;
    }

    sub_217751DE8();
    *__src = v201;
    OUTLINED_FUNCTION_16_53(*&v202);
    *&__src[24] = v197;
    *&__src[32] = v206;
    *&__src[40] = v198;
    OUTLINED_FUNCTION_14_48(*&v199);
    *&__src[64] = v196;
    *&__src[72] = v32;
LABEL_93:
    v41 = &unk_27CB24C98;
    v42 = &unk_2177800E0;
    goto LABEL_94;
  }

  v16 = sub_217753058();
  result = 0;
  if ((v16 & 1) != 0 && v7 == v10 && v6 == v11)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t Artwork.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v36 = v2[7];
  v37 = v2[8];
  v10 = v2[9];
  v38 = v2[10];
  v29 = v2[11];
  v30 = v2[13];
  v31 = v2[4];
  v39 = *(v2 + 96);
  v40 = *(v2 + 112);
  v11 = *(v2 + 15);
  v12 = *(v2 + 17);
  v65 = v2[19];
  v63 = v11;
  v64 = v12;
  v62 = v2[24];
  v13 = *(v2 + 11);
  v60 = *(v2 + 10);
  v61 = v13;
  v59 = v2[29];
  v14 = *(v2 + 27);
  v57 = *(v2 + 25);
  v58 = v14;
  v15 = *(v2 + 15);
  v16 = *(v2 + 16);
  v56 = v2[34];
  v54 = v15;
  v55 = v16;
  v17 = *(v2 + 35);
  v18 = *(v2 + 37);
  v19 = v2[40];
  v53 = v2[39];
  v51 = v17;
  v52 = v18;
  v20 = v2[42];
  v21 = v2[43];
  v22 = v2[44];
  v23 = v2[46];
  v24 = v2[47];
  v25 = v2[48];
  v26 = v2[49];
  v32 = v2[45];
  v33 = v2[51];
  v41 = v2[41];
  v42 = v2[62];
  v43 = *(v2 + 504);
  v27 = v2[65];
  v34 = v2[50];
  v35 = v2[66];
  v44 = v2[64];
  v45 = v2[67];
  v46 = *(v2 + 544);
  sub_217751FF8();
  MEMORY[0x21CEA3550](v6);
  MEMORY[0x21CEA3550](v7);
  if (v8)
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v36)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v10)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v38)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v39)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v29);
  }

  if (v40)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v30);
  }

  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  if (v23)
  {
    OUTLINED_FUNCTION_24();
    if (v19)
    {
      OUTLINED_FUNCTION_24();
      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      OUTLINED_FUNCTION_1_97();
      sub_217751998();
      if (v41)
      {
LABEL_28:
        OUTLINED_FUNCTION_24();
        type metadata accessor for CGColor(0);
        sub_2175B79C4();
        OUTLINED_FUNCTION_1_97();
        sub_217751998();
        goto LABEL_33;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v41)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_25();
LABEL_33:
    Artwork.Color.hash(into:)();
    v50[0] = v24;
    v50[1] = v25;
    v50[2] = v26;
    v50[3] = v34;
    v50[4] = v33;
    Artwork.Color.hash(into:)();
    if (v42)
    {
      goto LABEL_34;
    }

LABEL_30:
    OUTLINED_FUNCTION_25();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_25();
  if (!v42)
  {
    goto LABEL_30;
  }

LABEL_34:
  memcpy(__dst, v2 + 52, 0x50uLL);
  __dst[10] = v42;
  OUTLINED_FUNCTION_24();
  memcpy(v48, v2 + 52, sizeof(v48));
  v49 = v42;
  sub_2175B7A1C(v48, v50);
  Artwork._Gradient.hash(into:)();
  memcpy(v50, __dst, sizeof(v50));
  sub_2175B791C(v50);
LABEL_35:
  sub_217753208();
  sub_217265A08(a1, v44);
  if (!v27)
  {
    OUTLINED_FUNCTION_25();
    if (v45)
    {
      goto LABEL_37;
    }

LABEL_39:
    OUTLINED_FUNCTION_25();
    return sub_217753208();
  }

  OUTLINED_FUNCTION_24();
  ArtworkCatalog.hash(into:)(a1);
  if (!v45)
  {
    goto LABEL_39;
  }

LABEL_37:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  return sub_217753208();
}

uint64_t Artwork.hashValue.getter()
{
  sub_2177531E8();
  Artwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175B5EB8()
{
  sub_2177531E8();
  Artwork.hash(into:)(v1);
  return sub_217753238();
}

void *Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v13);
  sub_2171FF30C(v13, v10);
  CloudArtwork.init(from:)(v10, __src);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_2171FF30C(v13, v11);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2172A9D58(__dst, v10);
    sub_2173862E4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v13);
    memcpy(v9, __src, 0x1B0uLL);
    v9[54] = v7;
    memcpy(v8, v9, sizeof(v8));
    CloudAttribute<A>.convertToArtwork()(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2171F06D8(v9, &qword_27CB243F0, &qword_21775D690);
    return memcpy(a2, v10, 0x221uLL);
  }
}

uint64_t Artwork.encode(to:)(void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  Artwork.convertToCloudArtworkAttribute()(v5);
  sub_2175B36A8(a1);
  return sub_2171F06D8(v5, &qword_27CB243F0, &qword_21775D690);
}

uint64_t Artwork.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177B1C10);
  MEMORY[0x21CEA23B0](v1, v2);
  OUTLINED_FUNCTION_19_31();
  v5 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v5);

  OUTLINED_FUNCTION_19_31();
  v6 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0;
}

uint64_t Artwork.debugDescription.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[6];
  v6 = v0[7];
  v21 = v0[4];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[5];
  v8 = v7;
  OUTLINED_FUNCTION_17_43();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v2, v3);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  OUTLINED_FUNCTION_5_70();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v26 = v9;
  v10 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v10);

  MEMORY[0x21CEA23B0](0xD000000000000012, v26);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v11 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v11);

  OUTLINED_FUNCTION_5_70();

  if (v7)
  {
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_5_70();
  }

  if (v6)
  {
    OUTLINED_FUNCTION_15_51();
    v12 = v6;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_5_70();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_15_51();
    v14 = v13;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_5_70();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_15_51();
    v16 = v15;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_5_70();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_15_51();
    v18 = v17;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_5_70();
  }

  if (v25)
  {
    OUTLINED_FUNCTION_15_51();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v27 = v19;
    MEMORY[0x21CEA23B0](v21, v25);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000014, v27);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return 0x286B726F77747241;
}

void *Artwork.init(coverArtworkRecipe:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2177513A8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  memcpy(v79, a1, 0xE8uLL);
  if (BYTE8(v79[0]) == 1 || (v74 = *(&v79[1] + 1)) == 0)
  {

    sub_21735129C(v79);
    goto LABEL_10;
  }

  v71 = v10;
  v72 = v8;
  v69 = *&v79[1];
  v70 = *&v79[0];
  memcpy(v77, (a1 + 32), sizeof(v77));
  v73 = a2;
  if (sub_21726A474(v77) != 1 && *&v77[2])
  {
    v18 = *&v77[1];
    v67 = v77[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v19 = OUTLINED_FUNCTION_16_7();
    *(v19 + 16) = xmmword_217758490;
    *(v19 + 32) = v67;
    v20 = (v19 + 32);
    *(v19 + 48) = v18;
    OUTLINED_FUNCTION_6_69(v19);
    v21 = qword_280BE76A0;
    sub_217751DE8();
    sub_217751DE8();
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v68 = CGColorCreate(qword_280C023C0, v20);
    }

    else
    {

      v68 = 0;
    }

    v24 = *(&v79[4] + 1);
    v26 = *(&v79[5] + 1);
    v25 = *&v79[5];
    if (!*(&v79[6] + 1))
    {
      goto LABEL_35;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v28 = OUTLINED_FUNCTION_16_7();
    *(v28 + 32) = v24;
    v29 = (v28 + 32);
    *(v28 + 16) = xmmword_217758490;
    *(v28 + 40) = v25;
    *(v28 + 48) = v26;
    OUTLINED_FUNCTION_6_69(v28);
    v30 = qword_280BE76A0;
    sub_217751DE8();
    if (v30 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v66 = CGColorCreate(qword_280C023C0, v29);
    }

    else
    {

      v66 = 0;
    }

    v32 = *(&v79[7] + 1);
    v31 = *&v79[7];
    v33 = *&v79[8];
    if (!*&v79[9])
    {
      goto LABEL_39;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v34 = OUTLINED_FUNCTION_16_7();
    *(v34 + 32) = v31;
    v35 = (v34 + 32);
    *(v34 + 16) = xmmword_217758490;
    *(v34 + 40) = v32;
    *(v34 + 48) = v33;
    OUTLINED_FUNCTION_6_69(v34);
    v36 = qword_280BE76A0;
    sub_217751DE8();
    if (v36 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v37 = CGColorCreate(qword_280C023C0, v35);
    }

    else
    {

      v37 = 0;
    }

    v38 = *(&v79[9] + 1);
    v39 = *(&v79[10] + 1);
    v40 = *&v79[10];
    if (!*(&v79[11] + 1))
    {
      goto LABEL_43;
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v78) == 1)
  {
    sub_217751DE8();
    v68 = 0;
    goto LABEL_36;
  }

  v24 = v78[5];
  v25 = v78[6];
  v26 = v78[7];
  v27 = v78[9];
  sub_217751DE8();
  v68 = 0;
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_35:
  a2 = v73;
LABEL_36:
  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v78) == 1)
  {
    v66 = 0;
    goto LABEL_40;
  }

  v66 = 0;
  v31 = v78[10];
  v32 = v78[11];
  v33 = v78[12];
  if (v78[14])
  {
    goto LABEL_21;
  }

LABEL_39:
  a2 = v73;
LABEL_40:
  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v78) != 1)
  {
    v37 = 0;
    v38 = v78[15];
    v40 = v78[16];
    v39 = v78[17];
    if (!v78[19])
    {
LABEL_43:
      v44 = 0;
      a2 = v73;
      goto LABEL_44;
    }

LABEL_27:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v41 = OUTLINED_FUNCTION_16_7();
    *(v41 + 32) = v38;
    v42 = (v41 + 32);
    *(v41 + 16) = xmmword_217758490;
    *(v41 + 40) = v40;
    *(v41 + 48) = v39;
    OUTLINED_FUNCTION_6_69(v41);
    v43 = qword_280BE76A0;
    sub_217751DE8();
    if (v43 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v44 = CGColorCreate(qword_280C023C0, v42);
    }

    else
    {

      v44 = 0;
    }

    a2 = v73;

    goto LABEL_44;
  }

  v44 = 0;
  v37 = 0;
LABEL_44:
  if (*&v79[14])
  {
    v45 = *&v79[13];
    v64 = v79[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v46 = OUTLINED_FUNCTION_16_7();
    *(v46 + 16) = xmmword_217758490;
    *(v46 + 32) = v64;
    v47 = (v46 + 32);
    *(v46 + 48) = v45;
    OUTLINED_FUNCTION_6_69(v46);
    v48 = qword_280BE76A0;
    sub_217751DE8();
    if (v48 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    if (qword_280C023C0)
    {
      v49 = CGColorCreate(qword_280C023C0, v47);
    }

    else
    {

      v49 = 0;
    }

    sub_21735129C(v79);
  }

  else
  {
    sub_21735129C(v79);
    v49 = 0;
  }

  v50 = objc_allocWithZone(MusicKit_SoftLinking_CoverArtworkRecipe);
  v61 = v49;
  v65 = v68;
  v63 = v66;
  v62 = v37;
  v60 = v44;
  v51 = sub_2175B75DC(v70, v69, v74, v68, v66, v37, v44, v49);
  v78[0] = a2;
  v78[1] = a3;
  sub_217751398();
  sub_21733A5C8();
  v52 = sub_217752988();
  v54 = v53;
  (*(v71 + 8))(v17, v72);

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    if (qword_27CB23BE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_2_4();
    sub_217751588();
  }

  v56 = sub_217751F18();

  v57 = [v51 createArtworkCatalogWithPlaylistName_];

  if (v57)
  {
    swift_getObjectType();
    v58 = sub_217717634();
    v78[4] = &off_28297F3C8;
    v78[3] = &type metadata for SoftLinking_ArtworkCatalog;
    v78[0] = v58;
    v75[0] = 1;
    memset(&v75[1], 0, 24);
    swift_unknownObjectRetain();
    Artwork.init(_:alternateText:existingColorAnalysis:)(v78, 0, 0, v75, v76);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    memcpy(v78, v76, 0x221uLL);
    nullsub_1(v78, v59);
    v22 = a4;
    return memcpy(v22, v78, 0x221uLL);
  }

LABEL_10:
  sub_2172A497C(v78);
  v22 = a4;
  return memcpy(v22, v78, 0x221uLL);
}

uint64_t sub_2175B6E78()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2175B76A0(v0);
  if (!v1)
  {

    v19 = 0u;
    v20 = 0u;
LABEL_9:
    v12 = &v19;
LABEL_10:
    sub_2171F06D8(v12, &qword_27CB2AD40, &qword_2177583F0);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  sub_2173ACA4C(0x696C43616964654DLL, 0xEF6F666E49746E65, v1);

  if (!*(&v20 + 1))
  {

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AD0, &qword_217765F78);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  sub_2173ACA4C(0x6B726F77747241, 0xE700000000000000, v17);

  if (!v18)
  {

    v12 = &v17;
    goto LABEL_10;
  }

  sub_2172124CC(&v17, &v19);
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  v3 = sub_217753048();
  *&v17 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v17];
  swift_unknownObjectRelease();
  v5 = v17;
  if (!v4)
  {
    v13 = v5;
    v14 = sub_217751638();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v19);
    goto LABEL_14;
  }

  v6 = sub_217751768();
  v8 = v7;

  v9 = sub_217751348();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2175B7BD0();
  sub_217751308();

  sub_217275694(v6, v8);

  __swift_destroy_boxed_opaque_existential_1(&v19);
  result = v17;
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2175B714C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A3D8, &qword_217780468);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B7D58();
  sub_2177532F8();
  sub_217752F58();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2175B72A4()
{
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_2175B72EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A3D0, &qword_217780460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B7D58();
  sub_2177532C8();
  if (!v1)
  {
    v10 = sub_217752E78();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10 & 1;
}

BOOL sub_2175B744C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_217229638();
  *a2 = result;
  return result;
}

unint64_t sub_2175B7480@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217229680();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2175B74AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_217229638();
  *a1 = result;
  return result;
}

uint64_t sub_2175B74D8(uint64_t a1)
{
  v2 = sub_2175B7D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175B7514(uint64_t a1)
{
  v2 = sub_2175B7D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2175B7550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2175B72EC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_2175B75B8()
{
  result = sub_2175B6E78();
  byte_280BE76B1 = result & 1;
  return result;
}

id sub_2175B75DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = sub_217751F18();

  v16 = [v8 initWithExpression:a1 version:v15 backgroundColor:a4 primaryColor:a5 secondaryColor:a6 tertiaryColor:a7 textColor:a8];

  return v16;
}

uint64_t sub_2175B76A0(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751D98();

  return v3;
}

uint64_t sub_2175B770C(uint64_t a1)
{
  v11[3] = &type metadata for SoftLinking_ArtworkCatalog;
  v11[4] = &off_28297F3C8;
  v11[0] = a1;
  sub_2171FF30C(v11, v9);
  swift_unknownObjectRetain();
  sub_2173C9A78(v9, 0, 0, v10);
  v1 = v10[1];
  v2 = v10[2];
  v3 = v10[3];
  type metadata accessor for ArtworkCatalog();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_93();
  v7 = sub_2175B77C8(v4, v5, v1, v2, v3, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2175B77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a1;
  v13[3] = &type metadata for SoftLinking_ArtworkCatalog;
  v13[4] = &off_28297F3C8;
  if (qword_280BE9F10 != -1)
  {
    swift_once();
  }

  *(a6 + 16) = a2;
  *(a6 + 24) = a3;

  sub_2171FF30C(v13, a6 + 32);
  if (*(a6 + 24))
  {
    v9 = *(a6 + 16);
    v10 = qword_280BE8888;
    v11 = *(a6 + 24);
    sub_217751DE8();
    if (v10 != -1)
    {
      swift_once();
    }

    sub_217577290(a6);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return a6;
}

unint64_t sub_2175B78D8()
{
  result = qword_280BE2300;
  if (!qword_280BE2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2300);
  }

  return result;
}

unint64_t sub_2175B79C4()
{
  result = qword_280BE7518;
  if (!qword_280BE7518)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7518);
  }

  return result;
}

unint64_t sub_2175B7A7C()
{
  result = qword_27CB2A3C0;
  if (!qword_27CB2A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3C0);
  }

  return result;
}

uint64_t sub_2175B7AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 545))
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

unint64_t sub_2175B7BD0()
{
  result = qword_280BE2798;
  if (!qword_280BE2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2798);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Artwork.ConfigurationInfo(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175B7D04()
{
  result = qword_27CB2A3C8;
  if (!qword_27CB2A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3C8);
  }

  return result;
}

unint64_t sub_2175B7D58()
{
  result = qword_280BE27B0;
  if (!qword_280BE27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Artwork.ConfigurationInfo.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175B7E5C()
{
  result = qword_27CB2A3E0;
  if (!qword_27CB2A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3E0);
  }

  return result;
}

unint64_t sub_2175B7EB4()
{
  result = qword_280BE27A0;
  if (!qword_280BE27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27A0);
  }

  return result;
}

unint64_t sub_2175B7F0C()
{
  result = qword_280BE27A8;
  if (!qword_280BE27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_57()
{

  return sub_217751988();
}

void *OUTLINED_FUNCTION_20_37()
{

  return memcpy((v0 + 888), (v1 + 32), 0xA0uLL);
}

void OUTLINED_FUNCTION_21_38()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_44()
{

  return sub_217752C78();
}

void OUTLINED_FUNCTION_26_34()
{

  CGColorRef.convertToArtworkColor()(v0 + 2160);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C7CuratorVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2175B8040(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2175B8080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2175B812C()
{
  result = qword_27CB2A3E8;
  if (!qword_27CB2A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3E8);
  }

  return result;
}

uint64_t sub_2175B8180(uint64_t a1, uint64_t a2)
{
  if ((sub_21733E6D0(a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_98(a1 + 104, v17);
  OUTLINED_FUNCTION_1_98(a2 + 104, &v19);
  if (!v18)
  {
    if (!v20)
    {
      sub_2171F06D8(v17, &qword_27CB24290, &unk_21775D550);
      goto LABEL_8;
    }

LABEL_10:
    sub_2171F06D8(v17, &qword_27CB26208, &qword_21777EF20);
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  v4 = sub_217202078(v17, v16, &qword_27CB24290, &unk_21775D550);
  if (!v20)
  {
    sub_2171F06D8(v16, &qword_27CB24298, &qword_21777CD60);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75(v4, v5, v6, v7, v8, v9, v10, v11, v15[0]);
  v12 = sub_2172DE0E8(v16, v15);
  OUTLINED_FUNCTION_4_86(v15);
  OUTLINED_FUNCTION_4_86(v16);
  sub_2171F06D8(v17, &qword_27CB24290, &unk_21775D550);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = sub_21733E724(a1 + 232, a2 + 232);
  return v13 & 1;
}

uint64_t sub_2175B82D8(uint64_t a1)
{
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(a1);
  v3 = sub_217202078(v1 + 104, v13, &qword_27CB24290, &unk_21775D550);
  if (v14)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v13[0]);
    sub_217753208();
    sub_2172DE7FC(a1);
    sub_2171F06D8(v12, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(a1);
}

uint64_t sub_2175B8384()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v29);
  v1 = sub_217202078(v0 + 104, v27, &qword_27CB24290, &unk_21775D550);
  if (v28)
  {
    OUTLINED_FUNCTION_180(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
    sub_217753208();
    sub_2172DE7FC(v29);
    sub_2171F06D8(v11, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v29);
  return sub_217753238();
}

BOOL sub_2175B8444(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, v27);
  OUTLINED_FUNCTION_1_98(a2, v29);
  if (v28)
  {
    v4 = sub_217202078(v27, v26, &qword_27CB242A0, &unk_21777EEF0);
    if (v30)
    {
      OUTLINED_FUNCTION_75(v4, v5, v6, v7, v8, v9, v10, v11, v25[0]);
      v12 = sub_2172DE100(v26, v25);
      OUTLINED_FUNCTION_4_86(v25);
      OUTLINED_FUNCTION_4_86(v26);
      sub_2171F06D8(v27, &qword_27CB242A0, &unk_21777EEF0);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F06D8(v26, &qword_27CB242A8, &unk_21775D570);
LABEL_12:
    v22 = &unk_27CB2A288;
    v23 = &unk_21777EF28;
    goto LABEL_18;
  }

  if (v30)
  {
    goto LABEL_12;
  }

  sub_2171F06D8(v27, &qword_27CB242A0, &unk_21777EEF0);
LABEL_7:
  OUTLINED_FUNCTION_1_98(a1 + 128, v27);
  OUTLINED_FUNCTION_1_98(a2 + 128, v29);
  if (v28)
  {
    v13 = sub_217202078(v27, v26, &qword_27CB24290, &unk_21775D550);
    if (v30)
    {
      OUTLINED_FUNCTION_75(v13, v14, v15, v16, v17, v18, v19, v20, v25[0]);
      v21 = sub_2172DE0E8(v26, v25);
      sub_2171F06D8(v25, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v26, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v27, &qword_27CB24290, &unk_21775D550);
      return (v21 & 1) != 0;
    }

    sub_2171F06D8(v26, &qword_27CB24298, &qword_21777CD60);
  }

  else if (!v30)
  {
    sub_2171F06D8(v27, &qword_27CB24290, &unk_21775D550);
    return 1;
  }

  v22 = &qword_27CB26208;
  v23 = &qword_21777EF20;
LABEL_18:
  sub_2171F06D8(v27, v22, v23);
  return 0;
}

uint64_t sub_2175B868C(uint64_t a1)
{
  v3 = sub_217202078(v1, v36, &qword_27CB242A0, &unk_21777EEF0);
  if (v37)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
    sub_217753208();
    sub_2172DE814(a1);
    sub_2171F06D8(&v20, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  v11 = sub_217202078(v1 + 128, v36, &qword_27CB24290, &unk_21775D550);
  if (!v37)
  {
    return sub_217753208();
  }

  OUTLINED_FUNCTION_10_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
  sub_217753208();
  sub_2172DE7FC(a1);
  return sub_2171F06D8(&v20, &qword_27CB24298, &qword_21777CD60);
}