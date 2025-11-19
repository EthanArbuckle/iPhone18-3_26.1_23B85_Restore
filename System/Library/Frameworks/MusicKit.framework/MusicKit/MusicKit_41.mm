uint64_t static MusicCatalogSearchResponse.TopResult.supportedTypeValues.getter()
{
  if (qword_27CB23C58 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21754CBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29570, &qword_217777390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21754CC50()
{
  result = qword_27CB29578;
  if (!qword_27CB29578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29578);
  }

  return result;
}

uint64_t sub_21754CCB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 57))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 56);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21754CCEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_21754CD3C(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 56) = a2;
  return result;
}

void OUTLINED_FUNCTION_29_31()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t CloudResource<>.filteredCloudTrackResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudTrack();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for CloudPlaylistEntry();
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264F8, &unk_2177776E0);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v40 - v29;
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v18, v30);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v18, v30);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v3);
    goto LABEL_7;
  }

  __swift_storeEnumTagSinglePayload(v30, 1, 1, v3);
  OUTLINED_FUNCTION_5_60();
  sub_217553244(v18, v32);
LABEL_7:
  v33 = OUTLINED_FUNCTION_25_0();
  sub_21726A594(v33, v34, v35, v36);
  if (__swift_getEnumTagSinglePayload(v26, 1, v3) == 1)
  {
    sub_2171F0738(v26, &qword_27CB264F8, &unk_2177776E0);
    v37 = 1;
  }

  else
  {
    sub_2175531EC(v26, v10);
    sub_21738A90C();
    sub_217553244(v10, type metadata accessor for CloudTrack);
    v37 = 0;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  return __swift_storeEnumTagSinglePayload(a1, v37, 1, v38);
}

uint64_t type metadata accessor for CloudPlaylistEntry()
{
  result = qword_280BE3C68;
  if (!qword_280BE3C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21754D058()
{
  OUTLINED_FUNCTION_12();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v49 - v5;
  sub_2172CAE0C();
  v7 = sub_217751DC8();
  v8 = *(v0 + 16);
  v53 = *(v8 + 16);
  if (!v53)
  {
LABEL_26:
    OUTLINED_FUNCTION_13();
    return;
  }

  v9 = 0;
  v10 = *(v1 + 80);
  v51 = v8;
  v52 = v8 + ((v10 + 32) & ~v10);
  v50 = v1;
  while (v9 < *(v8 + 16))
  {
    sub_21726A630(v52 + *(v1 + 72) * v9, v6, &qword_27CB24A28, &qword_217758FE0);
    v11 = CloudPlaylistEntry.id.getter();
    if (*(v7 + 16))
    {
      v13 = sub_21763246C(v11, v12);
      v15 = v14;

      if (v15)
      {
        v16 = *(*(v7 + 56) + 8 * v13);
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_30;
        }

        CloudPlaylistEntry.id.getter();
        swift_isUniquelyReferenced_nonNull_native();
        v54 = v7;
        v18 = OUTLINED_FUNCTION_83();
        v20 = sub_21763246C(v18, v19);
        OUTLINED_FUNCTION_53_18(v20, v21);
        if (v24)
        {
          goto LABEL_31;
        }

        v25 = v22;
        v26 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (OUTLINED_FUNCTION_56_15())
        {
          v27 = OUTLINED_FUNCTION_83();
          v29 = sub_21763246C(v27, v28);
          if ((v26 & 1) != (v30 & 1))
          {
            goto LABEL_33;
          }

          v25 = v29;
        }

        if (v26)
        {

          v7 = v54;
          *(*(v54 + 56) + 8 * v25) = v17;
          sub_2171F0738(v6, &qword_27CB24A28, &qword_217758FE0);
        }

        else
        {
          OUTLINED_FUNCTION_16_46();
          *(v46 + 8 * v25) = v17;
          sub_2171F0738(v6, &qword_27CB24A28, &qword_217758FE0);
          v47 = *(v7 + 16);
          v24 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v24)
          {
            goto LABEL_32;
          }

          *(v7 + 16) = v48;
        }

        v1 = v50;
        goto LABEL_25;
      }
    }

    else
    {
    }

    CloudPlaylistEntry.id.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v7;
    v31 = OUTLINED_FUNCTION_83();
    v33 = sub_21763246C(v31, v32);
    OUTLINED_FUNCTION_53_18(v33, v34);
    if (v24)
    {
      goto LABEL_28;
    }

    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
    if (OUTLINED_FUNCTION_56_15())
    {
      v39 = OUTLINED_FUNCTION_83();
      v41 = sub_21763246C(v39, v40);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

      v37 = v41;
    }

    if (v38)
    {

      v7 = v54;
      *(*(v54 + 56) + 8 * v37) = 0;
      sub_2171F0738(v6, &qword_27CB24A28, &qword_217758FE0);
    }

    else
    {
      OUTLINED_FUNCTION_16_46();
      *(v43 + 8 * v37) = 0;
      sub_2171F0738(v6, &qword_27CB24A28, &qword_217758FE0);
      v44 = *(v7 + 16);
      v24 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v24)
      {
        goto LABEL_29;
      }

      *(v7 + 16) = v45;
    }

LABEL_25:
    v8 = v51;
    if (v53 == ++v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_217753178();
  __break(1u);
}

void sub_21754D3F8()
{
  OUTLINED_FUNCTION_12();
  v50 = v2;
  v51 = v3;
  v5 = v4;
  v48 = v7;
  v49 = v6;
  v9 = v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256E0, &unk_21775D820);
  v10 = OUTLINED_FUNCTION_43(v47);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - v16;
  sub_2172CAE0C();
  v18 = MEMORY[0x277D84F90];
  v58 = sub_217751DC8();
  v19 = v0[2];
  v20 = *(v19 + 16);
  if (v20)
  {
    v41 = v5;
    v42 = v0;
    v43 = v9;
    *&v52 = v18;
    sub_217276198(0, v20, 0);
    v18 = v52;
    v46 = *(v19 + 16);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v22 = 0;
    OUTLINED_FUNCTION_45_0(v21);
    v45 = v23;
    v44 = v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    while (v46 != v22)
    {
      if (v22 >= *(v19 + 16))
      {
        goto LABEL_21;
      }

      v24 = v47;
      v25 = *(v47 + 48);
      sub_21726A630(v44 + *(v45 + 72) * v22, &v17[v25], &qword_27CB24A28, &qword_217758FE0);
      *v1 = v22;
      sub_21726A594(&v17[v25], v1 + *(v24 + 48), &qword_27CB24A28, &qword_217758FE0);
      sub_2175517F0(&v58, v48, &v55);
      sub_2171F0738(v1, &qword_27CB256E0, &unk_21775D820);
      *&v52 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_217276198(v26 > 1, v27 + 1, 1);
        v18 = v52;
      }

      *(v18 + 16) = v27 + 1;
      v28 = (v18 + (v27 << 6));
      v29 = v55;
      v30 = v56;
      v31 = *v57;
      *(v28 + 73) = *&v57[9];
      v28[3] = v30;
      v28[4] = v31;
      v28[2] = v29;
      if (v20 == ++v22)
      {
        v9 = v43;
        v0 = v42;
        v5 = v41;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_9:
    sub_21726A630(v5, &v52, &qword_27CB24188, &dword_217758930);
    if (*(&v53 + 1))
    {
      v55 = v52;
      v56 = v53;
      *v57 = v54;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24398, &unk_2177784D0);
      sub_217380098(v50, v51, &v55);
      if (*(&v53 + 1))
      {
        sub_2171F0738(&v52, &qword_27CB24188, &dword_217758930);
      }
    }

    v32 = *v0;
    v33 = v0[1];
    if (v33 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = *v0;
    }

    if (v33 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = v0[1];
    }

    v36 = v0[3];
    v37 = v0[4];
    v39 = v0[14];
    v38 = v0[15];
    *v9 = v18;
    *(v9 + 8) = 0;
    v40 = v56;
    *(v9 + 16) = v55;
    *(v9 + 32) = v40;
    *(v9 + 48) = *v57;
    *(v9 + 56) = v34;
    *(v9 + 64) = v35;
    *(v9 + 72) = v36;
    *(v9 + 80) = v37;
    *(v9 + 88) = v39;
    *(v9 + 96) = v38;
    sub_2171FB568(v32, v33);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    OUTLINED_FUNCTION_13();
  }
}

uint64_t CloudResource<>.equivalentCloudPlaylistEntryResource.getter()
{
  v2 = type metadata accessor for CloudTrack();
  v3 = OUTLINED_FUNCTION_43(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  v7 = type metadata accessor for CloudPlaylistEntry();
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_21755329C(v0, v1);
  swift_getEnumCaseMultiPayload();
  sub_2175531EC(v1, v14);
  OUTLINED_FUNCTION_25_0();
  swift_storeEnumTagMultiPayload();
  sub_21738A9E8();
  OUTLINED_FUNCTION_5_60();
  return sub_217553244(v14, v15);
}

uint64_t sub_21754D8B4(uint64_t a1)
{
  v2 = sub_21754D970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21754D8F0(uint64_t a1)
{
  v2 = sub_21754D970();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21754D970()
{
  result = qword_27CB29588;
  if (!qword_27CB29588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29588);
  }

  return result;
}

uint64_t sub_21754DA3C(uint64_t a1)
{
  v2 = sub_21754DAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21754DA78(uint64_t a1)
{
  v2 = sub_21754DAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21754DAF8()
{
  result = qword_27CB29598;
  if (!qword_27CB29598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29598);
  }

  return result;
}

uint64_t sub_21754DB6C(uint64_t a1)
{
  v2 = sub_21754DC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21754DBA8(uint64_t a1)
{
  v2 = sub_21754DC28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21754DC28()
{
  result = qword_27CB295A8;
  if (!qword_27CB295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295A8);
  }

  return result;
}

uint64_t sub_21754DC9C(uint64_t a1)
{
  v2 = sub_21754DE54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21754DCD8(uint64_t a1)
{
  v2 = sub_21754DE54();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21754DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &a9 - v35;
  v37 = *(v25 + 24);
  v38 = *(v25 + 32);
  v39 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v36, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21754DE54()
{
  result = qword_27CB295B8;
  if (!qword_27CB295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295B8);
  }

  return result;
}

uint64_t CloudPlaylistEntry.id.getter()
{
  v3 = type metadata accessor for CloudMusicVideo(0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_64();
  v9 = type metadata accessor for CloudSong(v8);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  v14 = type metadata accessor for CloudPlaylistEntry();
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_73();
  v19 = OUTLINED_FUNCTION_16_0();
  sub_21755329C(v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v2);
    v26 = *v2;
    v27 = v2[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_0_89();
    v25 = v2;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2175531EC(v1, v0);
    v22 = *v0;
    v23 = v0[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_1_80();
    v25 = v0;
LABEL_5:
    sub_217553244(v25, v24);
    return OUTLINED_FUNCTION_16_0();
  }

  OUTLINED_FUNCTION_50_19();
  memcpy(v29, v30, v31);
  sub_21726A630(v37, v35, &qword_27CB256E8, &qword_21775D830);
  if (v36)
  {
    sub_2171F3F0C(v35, v34);
    v33 = v34[3];
    v32 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    (*(*(v32 + 8) + 8))(v33);
    sub_2171F0738(v37, &qword_27CB256E8, &qword_21775D830);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2171F0738(v37, &qword_27CB256E8, &qword_21775D830);
    memcpy(v34, v35, sizeof(v34));
    sub_217751DE8();
    sub_21733BC90(v34);
  }

  return OUTLINED_FUNCTION_16_0();
}

void static CloudPlaylistEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v56 = v2;
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v55 = v11 - v10;
  v12 = OUTLINED_FUNCTION_206();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  v18 = type metadata accessor for CloudPlaylistEntry();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_6_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v54 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295C0, &qword_217777718);
  OUTLINED_FUNCTION_45_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v54 - v37;
  v40 = *(v39 + 56);
  sub_21755329C(v4, &v54 - v37);
  sub_21755329C(v56, &v38[v40]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_3_73();
    sub_21755329C(v38, v31);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_82();
      sub_2175531EC(&v38[v40], v0);
      static CloudSong.== infix(_:_:)();
      v43 = type metadata accessor for CloudSong;
      sub_217553244(v0, type metadata accessor for CloudSong);
      v44 = v31;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_89();
    v46 = v31;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_73();
    sub_21755329C(v38, v1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_4_74();
      v42 = v55;
      sub_2175531EC(&v38[v40], v55);
      static CloudMusicVideo.== infix(_:_:)();
      v43 = type metadata accessor for CloudMusicVideo;
      sub_217553244(v42, type metadata accessor for CloudMusicVideo);
      v44 = v1;
LABEL_14:
      sub_217553244(v44, v43);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_80();
    v46 = v1;
LABEL_10:
    sub_217553244(v46, v45);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v38, v25);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v57, &v38[v40], 0x1F9uLL);
    sub_2173CD150(v25, v57);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v47, v48, v49);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v50, v51, v52);
LABEL_15:
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v38, v53);
    goto LABEL_16;
  }

  sub_2171F0738(v25, &qword_27CB256E8, &qword_21775D830);
LABEL_12:
  sub_2171F0738(v38, &qword_27CB295C0, &qword_217777718);
LABEL_16:
  OUTLINED_FUNCTION_13();
}

void CloudPlaylistEntry.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = type metadata accessor for CloudMusicVideo(0);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  v11 = type metadata accessor for CloudSong(0);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_69();
  v16 = type metadata accessor for CloudPlaylistEntry();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v3, v2);
    MEMORY[0x21CEA3550](0);
    v26 = *v2;
    v27 = v2[1];
    sub_217751FF8();
    v28 = v2 + v11[5];
    CloudSong.Attributes.hash(into:)();
    sub_21726A630(v2 + v11[6], v35, &qword_27CB24A78, &qword_217759040);
    if (*&v35[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v34, v35, sizeof(v34));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v34);
    }

    v31 = *(v2 + v11[7]);
    sub_217753208();
    v32 = v2 + v11[8];
    v33 = *(v32 + 1);
    v35[0] = *v32;
    v35[1] = v33;
    *&v35[2] = *(v32 + 4);
    sub_217263F54();
    OUTLINED_FUNCTION_0_89();
    v30 = v2;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v3, v1);
    MEMORY[0x21CEA3550](1);
    v22 = *v1;
    v23 = v1[1];
    sub_217751FF8();
    v24 = v1 + v6[5];
    CloudMusicVideo.Attributes.hash(into:)();
    v25 = v6[6];
    sub_217264574(v5);
    sub_21726A630(v1 + v6[7], v35, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v35[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v34, v35, 0x100uLL);
      sub_217753208();
      sub_217264414(v5);
      sub_217264414(v5);
      sub_2172844EC(v34);
    }

    sub_217264490(v5, *(v1 + v6[8]), *(v1 + v6[8] + 8), *(v1 + v6[8] + 16), *(v1 + v6[8] + 24));
    OUTLINED_FUNCTION_1_80();
    v30 = v1;
LABEL_12:
    sub_217553244(v30, v29);
    goto LABEL_13;
  }

  memcpy(v35, v3, 0x1F9uLL);
  MEMORY[0x21CEA3550](2);
  sub_21755307C(v5);
  sub_2171F0738(v35, &qword_27CB256E8, &qword_21775D830);
LABEL_13:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPlaylistEntry.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylistEntry.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754E8FC()
{
  sub_2177531E8();
  CloudPlaylistEntry.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v40 = v3;
  v4 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for CloudMusicVideo(v9);
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  v15 = OUTLINED_FUNCTION_69();
  v16 = type metadata accessor for CloudSong.Attributes(v15);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = type metadata accessor for CloudSong(0);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = type metadata accessor for CloudPlaylistEntry();
  v33 = OUTLINED_FUNCTION_43(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_45_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_61_13(v41);
      sub_2173CEA64(v40);
      OUTLINED_FUNCTION_75_7();
      sub_2171F0738(v41, &qword_27CB256E8, &qword_21775D830);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_4_74();
    OUTLINED_FUNCTION_60_21();
    sub_2171FF30C(v40, v41);
    sub_21755329C(v2 + *(v10 + 20), v0);
    sub_21738598C();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_1_80();
    v39 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v31);
    sub_2171FF30C(v40, v41);
    sub_21755329C(v31 + *(v24 + 20), v23);
    sub_217385938();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_89();
    v39 = v31;
  }

  sub_217553244(v39, v38);
LABEL_6:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v32 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_69();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_13_16();
  v16 = type metadata accessor for CloudPlaylistEntry();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_13_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v3);
    sub_21726A630(v3 + *(v11 + 24), v33, &qword_27CB24A78, &qword_217759040);
    if (v34 == 1)
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v25);
      v23 = &qword_27CB24A78;
      v24 = &qword_217759040;
      goto LABEL_7;
    }

    sub_2171F0738(v33, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v32, v33);
    OUTLINED_FUNCTION_84();
    v30 = sub_217751DE8();
    v31 = sub_217383824(v30);

    Dictionary<>.init(from:skippingValuesFor:)(v33, v31);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v29 = v3;
LABEL_11:
    sub_217553244(v29, v28);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_61_13(v33);
    sub_2173CF6E0(v32);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(v33, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_60_21();
  sub_21726A630(v2 + *(v5 + 24), v33, &qword_27CB243A8, &unk_217777720);
  if (v34 != 1)
  {

    sub_2171F0738(v33, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v32, v33);
    OUTLINED_FUNCTION_84();
    v26 = sub_217751DE8();
    v27 = sub_217383844(v26);

    Dictionary<>.init(from:skippingValuesFor:)(v33, v27);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v29 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v22);
  v23 = &qword_27CB243A8;
  v24 = &unk_217777720;
LABEL_7:
  sub_2171F0738(v33, v23, v24);
LABEL_12:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *&v35 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_69();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_13_16();
  v16 = type metadata accessor for CloudPlaylistEntry();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_13_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v3);
    if (*(v3 + *(v11 + 28)))
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v23);
      goto LABEL_13;
    }

    sub_2171FF30C(v35, &v35 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    Dictionary<>.init(from:skippingValuesFor:)(&v35 + 1, v34);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v26 = v3;
LABEL_12:
    sub_217553244(v26, v25);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_61_13(&v35 + 8);
    sub_2173D0368(v35);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(&v35 + 8, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_60_21();
  sub_21726A630(v2 + *(v5 + 28), &v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v37 != 1)
  {

    sub_2171F0738(&v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v35, &v35 + 8);
    v24 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v35 + 1, v24);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v26 = v2;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v22);
  sub_2171F0738(&v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_13:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v32 = v5;
  v33 = v4;
  v6 = type metadata accessor for CloudMusicVideo(0);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_69();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_13_16();
  v17 = type metadata accessor for CloudPlaylistEntry();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_8_4();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v26 = OUTLINED_FUNCTION_86();
    sub_2175531EC(v26, v27);
    v28 = v2 + *(v12 + 32);
    if (*(v28 + 24) == 1)
    {
      OUTLINED_FUNCTION_0_89();
      v25 = v2;
      goto LABEL_7;
    }

    sub_2171FF30C(v33, v35);
    v31 = *(v28 + 16);
    v36[0] = *v28;
    v36[1] = v31;
    v37 = *(v28 + 32);
    sub_21726A630(v36, &v34, &qword_27CB25748, &qword_21775D870);
    sub_217385FAC();
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v30 = v2;
LABEL_11:
    sub_217553244(v30, v29);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {

    memcpy(v35, v3, 0x1F9uLL);
    sub_2173D0F7C(v33, v32);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(v35, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_74();
  sub_2175531EC(v3, v1);
  v23 = (v1 + *(v6 + 32));
  if (v23[3] != 1)
  {

    sub_2171FF30C(v33, v35);
    sub_21733C3CC(*v23, v23[1], v23[2], v23[3]);
    sub_217386110();
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v30 = v1;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_80();
  v25 = v1;
LABEL_7:
  sub_217553244(v25, v24);
LABEL_12:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v0;
  v30 = v5;
  v37 = v6;
  v7 = type metadata accessor for CloudMusicVideo(0);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_69();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_8_4();
  v18 = type metadata accessor for CloudPlaylistEntry();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v26 = OUTLINED_FUNCTION_45_4();
    sub_2175531EC(v26, v27);
    sub_21738864C(v3 + *(v13 + 20), v30, v37);
    OUTLINED_FUNCTION_0_89();
    v25 = v3;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    OUTLINED_FUNCTION_60_21();
    sub_2173886A0(v2 + *(v7 + 20), v30, v37);
    OUTLINED_FUNCTION_1_80();
    v25 = v2;
LABEL_5:
    sub_217553244(v25, v24);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_61_13(v36);
  sub_21726A630(v36, v34, &qword_27CB256E8, &qword_21775D830);
  if (v35)
  {
    sub_2171F3F0C(v34, v31);
    v28 = v32;
    v29 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(*(v29 + 8) + 48))(v37, v30, v28);
    sub_2171F0738(v36, &qword_27CB256E8, &qword_21775D830);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2171F0738(v36, &qword_27CB256E8, &qword_21775D830);
    sub_217751DE8();
    sub_2171F0738(v34, &qword_27CB256E8, &qword_21775D830);
  }

LABEL_9:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v7 = OUTLINED_FUNCTION_42_24(v5, v6);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = OUTLINED_FUNCTION_13_16();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_8_4();
  v18 = type metadata accessor for CloudPlaylistEntry();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v1 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v0, v3);
    sub_21726A630(v3 + *(v13 + 24), v33, &qword_27CB24A78, &qword_217759040);
    if (v33[2] == 1)
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v27);
      v25 = &qword_27CB24A78;
      v26 = &qword_217759040;
      goto LABEL_9;
    }

    memcpy(v34, v33, 0x600uLL);
    OUTLINED_FUNCTION_34_27();
    sub_2173888E8();
    OUTLINED_FUNCTION_75_7();
    sub_217284234(v34);
    OUTLINED_FUNCTION_0_89();
    v32 = v3;
LABEL_13:
    sub_217553244(v32, v31);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_50_19();
    memcpy(v28, v29, v30);
    sub_2173D21B4(v1);
    OUTLINED_FUNCTION_75_7();
    sub_2171F0738(v34, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_4_74();
  sub_2175531EC(v0, v2);
  sub_21726A630(v2 + *(v7 + 24), v33, &qword_27CB243A8, &unk_217777720);
  if (v33[2] != 1)
  {

    memcpy(v34, v33, 0x300uLL);
    OUTLINED_FUNCTION_34_27();
    sub_217388950();
    OUTLINED_FUNCTION_75_7();
    sub_21726A3FC(v34);
    OUTLINED_FUNCTION_1_80();
    v32 = v2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v24);
  v25 = &qword_27CB243A8;
  v26 = &unk_217777720;
LABEL_9:
  sub_2171F0738(v33, v25, v26);
LABEL_14:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v17 = OUTLINED_FUNCTION_42_24(v15, v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v22 = OUTLINED_FUNCTION_13_16();
  v23 = type metadata accessor for CloudSong(v22);
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_8_4();
  v28 = type metadata accessor for CloudPlaylistEntry();
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v11 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v14, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_4_74();
      sub_2175531EC(v10, v12);
      sub_21726A630(v12 + *(v17 + 28), v44, &qword_27CB24A90, &unk_21775D5B0);
      if (v44[2] == 1)
      {
        OUTLINED_FUNCTION_1_80();
        sub_217553244(v12, v34);
        sub_2171F0738(v44, &qword_27CB24A90, &unk_21775D5B0);
      }

      else
      {

        memcpy(v45, v44, 0x100uLL);
        OUTLINED_FUNCTION_34_27();
        sub_217388CF8();
        OUTLINED_FUNCTION_98();
        sub_2172844EC(v45);
        OUTLINED_FUNCTION_1_80();
        sub_217553244(v12, v38);
      }
    }

    else
    {

      OUTLINED_FUNCTION_50_19();
      memcpy(v35, v36, v37);
      sub_2173D2CC4(v11);
      OUTLINED_FUNCTION_98();
      sub_2171F0738(v45, &qword_27CB256E8, &qword_21775D830);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v10, v13);
    if ((*(v13 + *(v23 + 28)) & 1) == 0)
    {

      sub_2171FF30C(v43, v45);
      v39 = sub_2174D5760(v45);
      if (!a10)
      {
        v40 = v39;
        v41 = sub_217751DE8();
        sub_2174D37FC(v41, v40);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_0_89();
    sub_217553244(v13, v42);
  }

  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v47 = v5;
  v6 = OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = OUTLINED_FUNCTION_13_16();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_8_4();
  v18 = type metadata accessor for CloudPlaylistEntry();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v2, v4);
    v26 = v4 + *(v13 + 32);
    v27 = *(v26 + 24);
    if (v27 != 1)
    {
      v40 = *(v26 + 32);
      v41 = *(v26 + 16);
      v49 = *v26;
      v50 = v41 & 1;
      v51 = v27;
      v52 = v40;
      sub_217221020(v49);
      sub_217751DE8();
      sub_217751DE8();

      sub_2171FF30C(v47, v48);
      v42 = sub_2174D5DD4(&v49);
      if (!v1)
      {
        v45 = v42;
        v46 = sub_217751DE8();
        sub_2174D37FC(v46, v45);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_0_89();
    v39 = v4;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v2, v3);
    v24 = v3 + *(v7 + 32);
    v25 = *(v24 + 24);
    if (v25 != 1)
    {
      v31 = *(v24 + 16);
      v32 = *(v24 + 8);
      sub_217221020(*v24);
      sub_217751DE8();

      sub_2171FF30C(v47, v48);
      v33 = OUTLINED_FUNCTION_25_0();
      v37 = sub_2174D5C54(v33, v34, v35, v25, v36);
      if (!v1)
      {
        v43 = v37;
        v44 = sub_217751DE8();
        sub_2174D37FC(v44, v43);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_1_80();
    v39 = v3;
LABEL_16:
    sub_217553244(v39, v38);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50_19();
  memcpy(v28, v29, v30);
  sub_2173D3828(v0);
  OUTLINED_FUNCTION_98();
  sub_2171F0738(v48, &qword_27CB256E8, &qword_21775D830);
LABEL_17:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21754FF80(uint64_t a1)
{
  v2 = sub_217553198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21754FFBC(uint64_t a1)
{
  v2 = sub_217553198();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPlaylistEntry.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudMusicVideo(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v44 = v11 - v10;
  v12 = OUTLINED_FUNCTION_206();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295C8, &unk_217777730);
  OUTLINED_FUNCTION_0_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_69();
  v23 = type metadata accessor for CloudPlaylistEntry();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_8_4();
  v28 = v0[4];
  v48 = v0;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_217553198();
  sub_2177532C8();
  if (!v1)
  {
    v45 = v2;
    sub_21733BE84();
    sub_217752EA8();
    v31 = v47[0];
    v30 = v47[1];
    v32 = v47[2];
    v29 = v48;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7628, v47))
    {
      goto LABEL_15;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v33 = qword_280BE24F0 == v31 && *algn_280BE24F8 == v30;
    if (v33 || (sub_217753058() & 1) != 0)
    {
LABEL_15:

      sub_2171FF30C(v48, v47);
      CloudSong.init(from:)();
      v34 = OUTLINED_FUNCTION_36_26();
      v35(v34);
      OUTLINED_FUNCTION_2_82();
      sub_2175531EC(v45, v3);
LABEL_16:
      swift_storeEnumTagMultiPayload();
      v36 = OUTLINED_FUNCTION_45_4();
      sub_2175531EC(v36, v37);
      goto LABEL_4;
    }

    if (qword_280BE6EA0 != -1)
    {
      swift_once();
    }

    v47[0] = v31;
    v47[1] = v30;
    LOBYTE(v47[2]) = v32;
    if (static Array<A>.~= infix(_:_:)(off_280BE6EA8, v47))
    {
      goto LABEL_28;
    }

    if (qword_280BE6EC8 != -1)
    {
      swift_once();
    }

    if (qword_280BE6ED0 == v31 && *algn_280BE6ED8 == v30)
    {
LABEL_28:
    }

    else
    {
      v39 = sub_217753058();

      if ((v39 & 1) == 0)
      {
        sub_2171FF30C(v48, v46);
        sub_2173D499C(v46, v47);
        v40 = OUTLINED_FUNCTION_36_26();
        v41(v40);
        memcpy(v3, v47, 0x1F9uLL);
        goto LABEL_16;
      }
    }

    sub_2171FF30C(v48, v47);
    CloudMusicVideo.init(from:)();
    v42 = OUTLINED_FUNCTION_36_26();
    v43(v42);
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v44, v3);
    goto LABEL_16;
  }

  v29 = v0;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_64();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_13_16();
  v16 = type metadata accessor for CloudPlaylistEntry();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v26, v2, 0x1F9uLL);
      sub_2173D4F98();
      sub_2171F0738(v26, &qword_27CB256E8, &qword_21775D830);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v2, v0);
    CloudMusicVideo.encode(to:)();
    OUTLINED_FUNCTION_1_80();
    v23 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    v24 = OUTLINED_FUNCTION_86();
    sub_2175531EC(v24, v25);
    CloudSong.encode(to:)(v4);
    OUTLINED_FUNCTION_0_89();
    v23 = v1;
  }

  sub_217553244(v23, v22);
LABEL_7:
  OUTLINED_FUNCTION_170();
}

void Playlist.Entry.init<A>(_:position:occurrence:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  *&v210 = v3;
  v5 = v4;
  v215 = v6;
  v218 = v8;
  v219 = v7;
  v211 = v10;
  v212 = v9;
  v217 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_6_1();
  v201 = v17 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  v203 = &v197[-v21];
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22, v23);
  v202 = &v197[-v24];
  OUTLINED_FUNCTION_206();
  v206 = type metadata accessor for PlaylistEntryPropertyProvider();
  v25 = OUTLINED_FUNCTION_43(v206);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_1();
  v209 = (v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_6_1();
  v205 = v36 - v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v197[-v40];
  v42 = type metadata accessor for CloudMusicVideo(0);
  v43 = OUTLINED_FUNCTION_45_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  OUTLINED_FUNCTION_1();
  v207 = v48 - v47;
  v216 = v5;
  v213 = *(v5 - 8);
  v49 = *(v213 + 64);
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_1();
  v208 = v53 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v55 = OUTLINED_FUNCTION_43(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55, v58);
  OUTLINED_FUNCTION_6_1();
  v204 = v59 - v60;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v197[-v63];
  v65 = type metadata accessor for CloudSong(0);
  v66 = OUTLINED_FUNCTION_45_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_1();
  v72 = v71 - v70;
  OUTLINED_FUNCTION_206();
  v73 = type metadata accessor for CloudPlaylistEntry();
  v74 = OUTLINED_FUNCTION_43(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v77);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v78, v79);
  v81 = &v197[-v80];
  sub_21755329C(v219, &v197[-v80]);
  v214 = v81;
  v82 = OUTLINED_FUNCTION_86();
  sub_21755329C(v82, v83);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v200 = v72;
    sub_2175531EC(v0, v72);
    v108 = OUTLINED_FUNCTION_16_0();
    sub_21755329C(v108, v109);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v111 = v110[10];
    v112 = v219;
    v113 = (v219 + v110[9]);
    v114 = v113[1];
    v199 = *v113;
    v198 = *(v113 + 16);
    v115 = *(v219 + v111 + 8);
    v202 = *(v219 + v111);
    v203 = v114;
    v201 = v115;
    v116 = v110[11];
    memcpy(v233, (v219 + v116), 0x180uLL);
    v118 = *(v219 + v110[13]);
    v205 = *(v219 + v110[12]);
    v117 = v205;
    v206 = v118;
    v119 = v110[15];
    v207 = *(v219 + v110[14]);
    v120 = v207;
    v209 = *(v219 + v119);
    v121 = v209;
    v122 = &v64[v54[9]];
    *v122 = v199;
    *(v122 + 1) = v114;
    v122[16] = v198;
    v123 = &v64[v54[10]];
    v124 = v201;
    *v123 = v202;
    v123[1] = v124;
    memcpy(&v64[v54[11]], (v112 + v116), 0x180uLL);
    *&v64[v54[12]] = v117;
    *&v64[v54[13]] = v118;
    *&v64[v54[14]] = v120;
    *&v64[v54[15]] = v121;
    sub_21726A630(v64, v204, &qword_27CB24748, &unk_217758CD0);
    v125 = v213;
    v126 = v218;
    v127 = v216;
    (*(v213 + 16))(v208, v218, v216);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v233, v223, &qword_27CB25620, &qword_21776A5F0);

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_217283AFC(v222, v223);
    v223[56] = 0;
    Playlist.Entry.init(track:position:occurrence:)();

    (*(v125 + 8))(v126, v127);
    sub_2171F0738(v112, &qword_27CB24A28, &qword_217758FE0);
    sub_217283B58(v222);
    sub_2171F0738(v64, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_0_89();
    v107 = v200;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    v85 = v207;
    sub_2175531EC(v0, v207);
    sub_21755329C(v85, v41);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v87 = v86[10];
    v88 = v219;
    v89 = v219 + v86[9];
    v90 = *v89;
    v204 = *(v89 + 8);
    v91 = v204;
    LODWORD(v199) = *(v89 + 16);
    v92 = *(v219 + v87 + 8);
    v202 = *(v219 + v87);
    v200 = v90;
    v201 = v92;
    v93 = v86[11];
    memcpy(v233, (v219 + v93), 0x180uLL);
    v94 = v86[13];
    v203 = *(v219 + v86[12]);
    v95 = v203;
    v206 = *(v219 + v94);
    v96 = v206;
    v97 = v86[15];
    v209 = *(v219 + v86[14]);
    v98 = v209;
    v99 = *(v219 + v97);
    v100 = &v41[v31[9]];
    *v100 = v200;
    *(v100 + 1) = v91;
    v100[16] = v199;
    v101 = &v41[v31[10]];
    v102 = v201;
    *v101 = v202;
    v101[1] = v102;
    memcpy(&v41[v31[11]], (v88 + v93), 0x180uLL);
    *&v41[v31[12]] = v95;
    *&v41[v31[13]] = v96;
    *&v41[v31[14]] = v98;
    *&v41[v31[15]] = v99;
    sub_21726A630(v41, v205, &qword_27CB24808, &qword_217758D90);
    v103 = v213;
    v104 = v218;
    v105 = v216;
    (*(v213 + 16))(v208, v218, v216);
    sub_217751DE8();

    sub_217751DE8();
    sub_21726A630(v233, v223, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_217283BAC(v222, v223);
    v223[56] = 1;
    Playlist.Entry.init(track:position:occurrence:)();

    (*(v103 + 8))(v104, v105);
    sub_2171F0738(v88, &qword_27CB24A28, &qword_217758FE0);
    sub_217283C08(v222);
    sub_2171F0738(v41, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_1_80();
    v107 = v207;
LABEL_5:
    sub_217553244(v107, v106);
    OUTLINED_FUNCTION_5_60();
    v129 = v214;
LABEL_6:
    sub_217553244(v129, v128);
LABEL_7:
    OUTLINED_FUNCTION_13();
    return;
  }

  v130 = OUTLINED_FUNCTION_45_25();
  memcpy(v130, v0, 0x1F9uLL);
  v131 = OUTLINED_FUNCTION_45_25();
  sub_21726A630(v131, v234, v132, v133);
  if ((v234[504] & 1) == 0)
  {
    memcpy(v230, v234, sizeof(v230));
    v140 = v230[0];
    v141 = v230[1];
    v142 = qword_280BE90D0;
    sub_217751DE8();
    if (v142 != -1)
    {
      swift_once();
    }

    v144 = qword_280BE90E8;
    v143 = unk_280BE90F0;
    sub_217751DE8();
    sub_217751DE8();
    v210 = xmmword_280BE90D8;

    *v231 = v140;
    *&v231[8] = v141;
    *&v231[16] = v140;
    *&v231[24] = v141;
    v231[32] = 6;
    bzero(&v231[40], 0xE0uLL);
    *&v231[264] = MEMORY[0x277D84FA0];
    v231[272] = 0;
    *&v231[280] = &unk_28295F940;
    *&v231[288] = v210;
    *&v231[304] = v144;
    *&v231[312] = v143;
    memset(&v231[320], 0, 32);
    v231[352] = 4;
    v228 = 0;
    memset(v227, 0, sizeof(v227));
    v229 = -1;
    memcpy(v233, v231, 0x161uLL);
    MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v232);
    sub_217269F50(v231);
    if (qword_280BE8AC8 != -1)
    {
      swift_once();
    }

    v145 = *algn_280BE8AD8;
    *&v210 = qword_280BE8AD0;
    LODWORD(v208) = byte_280BE8AE0;
    sub_217751DE8();
    v207 = OUTLINED_FUNCTION_17_37();
    v205 = OUTLINED_FUNCTION_17_37();
    v204 = OUTLINED_FUNCTION_17_37();
    v200 = OUTLINED_FUNCTION_17_37();
    v226 = 0;
    memset(v225, 0, sizeof(v225));
    sub_2172A497C(v233);
    v146 = v209;
    memcpy(v209, v233, 0x221uLL);
    *(v146 + 69) = 0;
    v146[560] = 1;
    *(v146 + 568) = 0u;
    *(v146 + 584) = 0u;
    v147 = v206;
    v148 = v206[8];
    v149 = sub_2177517D8();
    OUTLINED_FUNCTION_4_10(&v146[v148]);
    OUTLINED_FUNCTION_4_10(&v146[v147[9]]);
    v150 = &v146[v147[10]];
    *(v150 + 48) = 0;
    *(v150 + 16) = 0u;
    *(v150 + 32) = 0u;
    *v150 = 0u;
    *(v150 + 56) = -1;
    v151 = &v146[v147[11]];
    *v151 = 0;
    *(v151 + 1) = 0;
    v151[16] = 0;
    v152 = &v146[v147[12]];
    *(v152 + 14) = 0;
    *(v152 + 5) = 0u;
    *(v152 + 6) = 0u;
    *(v152 + 3) = 0u;
    *(v152 + 4) = 0u;
    *(v152 + 1) = 0u;
    *(v152 + 2) = 0u;
    *v152 = 0u;
    v153 = &v146[v147[14]];
    *v153 = 0;
    *(v153 + 1) = 0;
    v211 = v147[15];
    OUTLINED_FUNCTION_4_10(&v146[v211]);
    v154 = &v146[v147[17]];
    *(v154 + 32) = 0;
    *v154 = 0u;
    *(v154 + 16) = 0u;
    if (qword_280BE3168 != -1)
    {
      swift_once();
    }

    v155 = qword_280C01FB0;
    if (qword_280C01FB0 >> 62)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v196 = sub_217752D28();

      v155 = v196;
    }

    else
    {
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v156 = v206;
    v157 = v209;
    v158 = &v209[v206[13]];
    v159 = &v209[v206[16]];
    *&v209[v206[18]] = v155;
    v160 = &v157[v156[21]];
    memcpy(&v157[v156[19]], v232, 0x161uLL);
    v161 = &v157[v156[20]];
    *v161 = v210;
    *(v161 + 1) = v145;
    v161[16] = v208;
    *v160 = 0;
    *(v160 + 1) = 0;
    *&v157[v156[22]] = v207;
    v162 = v204;
    *&v157[v156[23]] = v205;
    *&v157[v156[24]] = v162;
    *&v157[v156[25]] = v200;
    sub_21733BBDC(v227, v150, &qword_27CB27D20, &qword_217758B80);
    *v158 = v212;
    v158[8] = 0;
    sub_21733BBDC(v225, v154, &qword_27CB24BA8, &unk_217772FF0);
    v163 = v230[60];
    *v159 = v230[59];
    *(v159 + 1) = v163;
    memcpy(v224, &v230[2], sizeof(v224));
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v224) == 1)
    {
      memcpy(v223, v233, 0x221uLL);
      sub_217751DE8();
    }

    else
    {
      memcpy(v223, v224, 0x1B8uLL);
      sub_217751DE8();
      sub_21726A630(&v230[2], v222, &qword_27CB25000, &unk_21776EA00);
      CloudAttribute<A>.convertToArtwork()(v221);
      memcpy(v220, v223, sizeof(v220));
      sub_2171F0738(v220, &qword_27CB243F0, &qword_21775D690);
      memcpy(v222, v221, 0x221uLL);
      nullsub_1(v222, v164);
      memcpy(v223, v222, 0x221uLL);
    }

    v166 = v217;
    v165 = v218;
    v167 = v202;
    v168 = v209;
    memcpy(v222, v209, 0x221uLL);
    sub_2171F0738(v222, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v168, v223, 0x221uLL);
    if ((v230[58] & 1) == 0)
    {
      v169 = v209;
      *(v209 + 69) = v230[57] / 1000.0;
      v169[560] = 0;
    }

    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v170 = type metadata accessor for CloudFormatter();
    v171 = __swift_project_value_buffer(v170, qword_280BE8918);
    v172 = v230[62];
    v173 = v203;
    OUTLINED_FUNCTION_4_10(v203);
    if (v172)
    {
      v174 = *(v171 + *(v170 + 20));
      OUTLINED_FUNCTION_16_0();
      v175 = sub_217751F18();
      v176 = [v174 dateFromString_];

      if (v176)
      {
        v177 = v201;
        sub_2177517C8();

        v178 = 0;
        v179 = v203;
      }

      else
      {
        v178 = 1;
        v179 = v203;
        v177 = v201;
      }

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v180, v181, v182);
      __swift_storeEnumTagSinglePayload(v177, v178, 1, v149);
      v183 = OUTLINED_FUNCTION_25_0();
      sub_21726A594(v183, v184, &qword_27CB241C0, &qword_217759480);
      sub_21726A594(v179, v167, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      sub_2171F0738(v173, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_4_10(v167);
    }

    sub_21733BC90(v230);
    v185 = v209;
    sub_21733BBDC(v167, &v209[v211], &qword_27CB241C0, &qword_217759480);
    v186 = v206;
    v166[5] = v206;
    v166[6] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166 + 2);
    sub_21755329C(v185, boxed_opaque_existential_0);

    v188 = (boxed_opaque_existential_0 + v186[19]);
    v190 = *v188;
    v189 = v188[1];
    v191 = *(v213 + 8);
    sub_217751DE8();
    v191(v165, v216);
    sub_2171F0738(v219, &qword_27CB24A28, &qword_217758FE0);
    v192 = OUTLINED_FUNCTION_45_25();
    sub_2171F0738(v192, v193, v194);
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v214, v195);
    *v166 = v190;
    v166[1] = v189;
    v128 = type metadata accessor for PlaylistEntryPropertyProvider;
    v129 = v185;
    goto LABEL_6;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry))
  {
    v135 = v218;
    v136 = v219;
    v137 = v216;
    (*(v134 + 16))(v219, v212, v211, v218, v215, v216, v210);

    (*(v213 + 8))(v135, v137);
    sub_2171F0738(v136, &qword_27CB24A28, &qword_217758FE0);
    v138 = OUTLINED_FUNCTION_45_25();
    sub_2171F0738(v138, &qword_27CB256E8, &qword_21775D830);
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v214, v139);
    sub_2171F0738(v234, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_7;
  }

  v233[0] = 0;
  v233[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AB9C0);
  sub_217752D08();
  __break(1u);
}

uint64_t sub_2175517F0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = CloudPlaylistEntry.id.getter();
  v8 = sub_2173AC898(v6, v7, *a1);
  v10 = v9;

  if ((v10 & 1) == 0 && __OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    CloudPlaylistEntry.id.getter();
    v12 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_2172C8018();
    *a1 = v16;

    v13 = CloudPlaylistEntry.id.getter();
    v14 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v14);

    sub_217751DE8();
    MEMORY[0x21CEA23B0](95, 0xE100000000000000);

    MEMORY[0x28223BE20](v13, v15);
    sub_217312474(a2, sub_2175547A8, a3);
  }

  return result;
}

void sub_217551A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v22[2] = a8;
  v22[3] = a4;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  v22[1] = a9;
  MEMORY[0x28223BE20](a1, a2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  sub_21726A630(a3, v22 - v20, &qword_27CB24A28, &qword_217758FE0);
  v21 = *a5;
  (*(v13 + 16))(v16, a6, a7);

  Playlist.Entry.init<A>(_:position:occurrence:configuration:sharedRelatedItemStore:)();
}

uint64_t CloudPlaylistEntry.Placeholder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPlaylistEntry.Placeholder.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_54_18();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x1E8uLL);
  return sub_2175532F4(v8, v7);
}

void static CloudPlaylistEntry.Placeholder.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_43_18(v31);
  v22 = *(v5 + 440);
  v6 = *(v5 + 448);
  v7 = *(v5 + 456);
  v24 = *(v5 + 464);
  v8 = *(v5 + 472);
  v9 = *(v5 + 480);
  OUTLINED_FUNCTION_41_23(v32);
  v10 = *(v3 + 448);
  v20 = *(v3 + 456);
  v21 = *(v3 + 440);
  v23 = *(v3 + 464);
  v12 = *(v3 + 472);
  v11 = *(v3 + 480);
  OUTLINED_FUNCTION_43_18(__src);
  OUTLINED_FUNCTION_41_23(&__src[440]);
  OUTLINED_FUNCTION_43_18(v33);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v33) == 1)
  {
    OUTLINED_FUNCTION_41_23(__dst);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
    {
      v19 = v7;
      OUTLINED_FUNCTION_43_18(v30);
      sub_21726A630(v31, v27, &qword_27CB25000, &unk_21776EA00);
      sub_21726A630(v32, v27, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v30, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_21726A630(v31, v30, &qword_27CB25000, &unk_21776EA00);
    sub_21726A630(v32, v30, &qword_27CB25000, &unk_21776EA00);
    sub_2171F0738(__dst, &qword_27CB25008, &qword_21778F850);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_41_23(v27);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v27) == 1)
  {
    goto LABEL_5;
  }

  v19 = v7;
  OUTLINED_FUNCTION_41_23(v25);
  OUTLINED_FUNCTION_41_23(__dst);
  OUTLINED_FUNCTION_43_18(v30);
  sub_21726A630(v31, v26, &qword_27CB25000, &unk_21776EA00);
  sub_21726A630(v32, v26, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v14 = v13;
  sub_2171F0738(v25, &qword_27CB25000, &unk_21776EA00);
  OUTLINED_FUNCTION_43_18(v26);
  sub_2171F0738(v26, &qword_27CB25000, &unk_21776EA00);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (v6)
  {
    v15 = v8;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v22 == v21)
    {
      v16 = v10;
    }

    else
    {
      v16 = 1;
    }

    v15 = v8;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (v24)
  {
    if (!v23)
    {
      goto LABEL_6;
    }

    v17 = v19 == v20 && v24 == v23;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v23)
  {
    goto LABEL_6;
  }

  if (v9 && v11 && (v15 != v12 || v9 != v11))
  {
    sub_217753058();
  }

LABEL_6:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217551EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000002177B0890 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_21755205C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x44657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175520EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217551EF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217552114(uint64_t a1)
{
  v2 = sub_21755332C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217552150(uint64_t a1)
{
  v2 = sub_21755332C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPlaylistEntry.Placeholder.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295D8, &qword_217777740);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_22_36();
  memcpy(v22, v0, 0x1B8uLL);
  v19 = *(v0 + 440);
  v23 = *(v0 + 448);
  v17 = *(v0 + 464);
  v18 = *(v0 + 456);
  v15 = *(v0 + 480);
  v16 = *(v0 + 472);
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21726A630(v22, v21, &qword_27CB25000, &unk_21776EA00);
  sub_21755332C();
  sub_2177532F8();
  memcpy(v21, v22, sizeof(v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8);
  sub_217752F38();
  if (v1)
  {
    memcpy(v20, v21, sizeof(v20));
    sub_2171F0738(v20, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v20, v21, sizeof(v20));
    sub_2171F0738(v20, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_33_27();
    sub_217752F28();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_33_27();
    sub_217752EF8();
    OUTLINED_FUNCTION_33_27();
    sub_217752EF8();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_13_2();
  v14(v13);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.Placeholder.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = *(v0 + 472);
  v9 = *(v0 + 480);
  memcpy(__dst, v0, sizeof(__dst));
  v12 = v4;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    memcpy(v10, v0, sizeof(v10));
    OUTLINED_FUNCTION_24();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v4);

    if (!v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      MEMORY[0x21CEA3550](v3);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_25();
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_9:
      OUTLINED_FUNCTION_25();
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_25();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_5:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();
  sub_217751FF8();
LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPlaylistEntry.Placeholder.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.Placeholder.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295E8, &qword_217777748);
  OUTLINED_FUNCTION_0_0(v32);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21755332C();
  OUTLINED_FUNCTION_139();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = v6;
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_21751AE98(&qword_280BE42D0);
    v16 = v32;
    OUTLINED_FUNCTION_8_1();
    sub_217752E58();
    memcpy(v42, v41, sizeof(v42));
    v34[0] = 1;
    OUTLINED_FUNCTION_8_1();
    v17 = v14;
    v31 = sub_217752E48();
    v43 = v18 & 1;
    v34[0] = 2;
    OUTLINED_FUNCTION_8_1();
    v19 = sub_217752E18();
    v21 = v20;
    v30 = v19;
    OUTLINED_FUNCTION_8_1();
    v22 = sub_217752E18();
    v23 = *(v17 + 8);
    v29 = v22;
    v25 = v24;
    v23(v12, v16);
    memcpy(v33, v42, 0x1B8uLL);
    v27 = v30;
    v26 = v31;
    v33[55] = v31;
    LOBYTE(v33[56]) = v43;
    v33[57] = v30;
    v33[58] = v21;
    v33[59] = v29;
    v33[60] = v25;
    memcpy(v15, v33, 0x1E8uLL);
    sub_2175532F4(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v34, v42, sizeof(v34));
    v35 = v26;
    v36 = v43;
    v37 = v27;
    v38 = v21;
    v39 = v29;
    v40 = v25;
    sub_217553380(v34);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21755289C()
{
  sub_2177531E8();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

uint64_t static CloudPlaylistEntry.Placeholder.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *a2;
  v7 = a2[1];
  OUTLINED_FUNCTION_54_18();
  memcpy(v8, v9, v10);
  v11 = v4 == v6 && v5 == v7;
  if (v11 || (OUTLINED_FUNCTION_16_0(), v12 = 0, (sub_217753058() & 1) != 0))
  {
    sub_2175532F4(__dst, v19);
    sub_2175532F4(v21, v19);
    static CloudPlaylistEntry.Placeholder.Attributes.== infix(_:_:)();
    v12 = v13;
    OUTLINED_FUNCTION_54_18();
    memcpy(v14, v15, v16);
    sub_217553380(&v18);
    memcpy(v19, a1 + 2, sizeof(v19));
    sub_217553380(v19);
  }

  return v12 & 1;
}

uint64_t sub_2175529C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_217552A88(char a1)
{
  if (a1)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_217552AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175529C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217552AE8(uint64_t a1)
{
  v2 = sub_2175533B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217552B24(uint64_t a1)
{
  v2 = sub_2175533B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPlaylistEntry.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295F0, &qword_217777750);
  OUTLINED_FUNCTION_0_0(v4);
  v20 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_22_36();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_54_18();
  memcpy(v12, v13, v14);
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2175533B0();
  sub_217751DE8();
  sub_2177532F8();
  v22[0] = v10;
  v22[1] = v11;
  v21[0] = 0;
  sub_2172E1B18();
  sub_217752F88();

  if (v1)
  {
    v16 = *(v20 + 8);
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    sub_2175532F4(v23, v21);
    sub_217553404();
    sub_217752F88();
    memcpy(v21, v22, sizeof(v21));
    sub_217553380(v21);
    v19 = *(v20 + 8);
  }

  v17 = OUTLINED_FUNCTION_13_2();
  v18(v17);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.Placeholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
}

uint64_t CloudPlaylistEntry.Placeholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v18 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29608, &qword_217777758);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2175533B0();
  OUTLINED_FUNCTION_139();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = v6;
    LOBYTE(v19[0]) = 0;
    sub_2172E1C68();
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    v17 = v20;
    v13 = v21;
    sub_217553458();
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_86();
    v16(v15);
    memcpy(v24, v23, sizeof(v24));
    v19[0] = v17;
    v19[1] = v13;
    memcpy(&v19[2], v23, 0x1E8uLL);
    memcpy(v18, v19, 0x1F8uLL);
    sub_2175534AC(v19, &v20);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v20 = v17;
    v21 = v13;
    memcpy(v22, v24, sizeof(v22));
    sub_21733BC90(&v20);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21755303C()
{
  sub_2177531E8();
  CloudPlaylistEntry.Placeholder.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21755307C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB256E8, &qword_21775D830);
  if (v9)
  {
    sub_2171F3F0C(__src, __dst);
    v3 = __dst[3];
    v4 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(v4 + 40))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217751DE8();
    sub_2175532F4(&__dst[2], v6);
    sub_217751FF8();

    memcpy(v6, &__dst[2], sizeof(v6));
    CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
    sub_21733BC90(__dst);
    return sub_217553380(&__dst[2]);
  }
}

unint64_t sub_217553198()
{
  result = qword_27CB295D0;
  if (!qword_27CB295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295D0);
  }

  return result;
}

uint64_t sub_2175531EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

uint64_t sub_217553244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21755329C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_21755332C()
{
  result = qword_27CB295E0;
  if (!qword_27CB295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295E0);
  }

  return result;
}

unint64_t sub_2175533B0()
{
  result = qword_27CB295F8;
  if (!qword_27CB295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295F8);
  }

  return result;
}

unint64_t sub_217553404()
{
  result = qword_27CB29600;
  if (!qword_27CB29600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29600);
  }

  return result;
}

unint64_t sub_217553458()
{
  result = qword_27CB29610;
  if (!qword_27CB29610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29610);
  }

  return result;
}

unint64_t sub_2175534E8()
{
  result = qword_27CB29618;
  if (!qword_27CB29618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29618);
  }

  return result;
}

unint64_t sub_217553540()
{
  result = qword_27CB29620;
  if (!qword_27CB29620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29620);
  }

  return result;
}

unint64_t sub_217553598()
{
  result = qword_27CB29628;
  if (!qword_27CB29628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29628);
  }

  return result;
}

unint64_t sub_2175535F0()
{
  result = qword_27CB29630;
  if (!qword_27CB29630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29630);
  }

  return result;
}

unint64_t sub_217553648()
{
  result = qword_27CB29638;
  if (!qword_27CB29638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29638);
  }

  return result;
}

unint64_t sub_2175536A0()
{
  result = qword_27CB29640;
  if (!qword_27CB29640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29640);
  }

  return result;
}

unint64_t sub_2175536F8()
{
  result = qword_27CB29648;
  if (!qword_27CB29648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29648);
  }

  return result;
}

unint64_t sub_217553750()
{
  result = qword_27CB29650;
  if (!qword_27CB29650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29650);
  }

  return result;
}

unint64_t sub_2175537A8()
{
  result = qword_27CB29658;
  if (!qword_27CB29658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29658);
  }

  return result;
}

unint64_t sub_217553800()
{
  result = qword_27CB29660;
  if (!qword_27CB29660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29660);
  }

  return result;
}

unint64_t sub_217553858()
{
  result = qword_27CB29668;
  if (!qword_27CB29668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29668);
  }

  return result;
}

unint64_t sub_2175538B0()
{
  result = qword_27CB29670;
  if (!qword_27CB29670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29670);
  }

  return result;
}

unint64_t sub_217553908()
{
  result = qword_27CB29678;
  if (!qword_27CB29678)
  {
    type metadata accessor for CloudPlaylistEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29678);
  }

  return result;
}

unint64_t sub_217553964()
{
  result = qword_27CB29680;
  if (!qword_27CB29680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29680);
  }

  return result;
}

unint64_t sub_2175539B8(void *a1)
{
  a1[1] = sub_2175539F0();
  a1[2] = sub_217553A44();
  result = sub_217553A98();
  a1[3] = result;
  return result;
}

unint64_t sub_2175539F0()
{
  result = qword_280BE3C80;
  if (!qword_280BE3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C80);
  }

  return result;
}

unint64_t sub_217553A44()
{
  result = qword_280BE3C98;
  if (!qword_280BE3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C98);
  }

  return result;
}

unint64_t sub_217553A98()
{
  result = qword_280BE3C90;
  if (!qword_280BE3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C90);
  }

  return result;
}

unint64_t sub_217553AF0()
{
  result = qword_280BE3C88;
  if (!qword_280BE3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C88);
  }

  return result;
}

void sub_217553B44()
{
  type metadata accessor for CloudSong(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CloudMusicVideo(319);
    if (v1 <= 0x3F)
    {
      sub_217553BCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_217553BCC()
{
  if (!qword_280BE7130[0])
  {
    sub_217553C28();
    v0 = type metadata accessor for CloudInternalPolymorphicMusicItem();
    if (!v1)
    {
      atomic_store(v0, qword_280BE7130);
    }
  }
}

unint64_t sub_217553C28()
{
  result = qword_280BE3C78;
  if (!qword_280BE3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C78);
  }

  return result;
}

uint64_t sub_217553CE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 504))
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

uint64_t sub_217553D20(uint64_t result, int a2, int a3)
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
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217553DF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 488))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_217553E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPlaylistEntry.Placeholder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudPlaylistEntry.Placeholder.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2175540E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175541D4()
{
  result = qword_27CB29688;
  if (!qword_27CB29688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29688);
  }

  return result;
}

unint64_t sub_21755422C()
{
  result = qword_27CB29690;
  if (!qword_27CB29690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29690);
  }

  return result;
}

unint64_t sub_217554284()
{
  result = qword_27CB29698;
  if (!qword_27CB29698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29698);
  }

  return result;
}

unint64_t sub_2175542DC()
{
  result = qword_27CB296A0;
  if (!qword_27CB296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296A0);
  }

  return result;
}

unint64_t sub_217554334()
{
  result = qword_27CB296A8;
  if (!qword_27CB296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296A8);
  }

  return result;
}

unint64_t sub_21755438C()
{
  result = qword_27CB296B0;
  if (!qword_27CB296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296B0);
  }

  return result;
}

unint64_t sub_2175543E4()
{
  result = qword_27CB296B8;
  if (!qword_27CB296B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296B8);
  }

  return result;
}

unint64_t sub_21755443C()
{
  result = qword_27CB296C0;
  if (!qword_27CB296C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296C0);
  }

  return result;
}

unint64_t sub_217554494()
{
  result = qword_27CB296C8;
  if (!qword_27CB296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296C8);
  }

  return result;
}

unint64_t sub_2175544EC()
{
  result = qword_27CB296D0;
  if (!qword_27CB296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296D0);
  }

  return result;
}

unint64_t sub_217554544()
{
  result = qword_27CB296D8;
  if (!qword_27CB296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296D8);
  }

  return result;
}

unint64_t sub_21755459C()
{
  result = qword_27CB296E0;
  if (!qword_27CB296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296E0);
  }

  return result;
}

unint64_t sub_2175545F4()
{
  result = qword_27CB296E8;
  if (!qword_27CB296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296E8);
  }

  return result;
}

unint64_t sub_21755464C()
{
  result = qword_27CB296F0;
  if (!qword_27CB296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296F0);
  }

  return result;
}

unint64_t sub_2175546A4()
{
  result = qword_27CB296F8;
  if (!qword_27CB296F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296F8);
  }

  return result;
}

unint64_t sub_2175546FC()
{
  result = qword_27CB29700;
  if (!qword_27CB29700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29700);
  }

  return result;
}

unint64_t sub_217554754()
{
  result = qword_27CB29708;
  if (!qword_27CB29708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29708);
  }

  return result;
}

void OUTLINED_FUNCTION_16_46()
{
  v4 = *(v3 - 88);
  *(v4 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v5 = (*(v4 + 48) + 16 * v0);
  *v5 = v2;
  v5[1] = v1;
  v6 = *(v4 + 56);
}

uint64_t OUTLINED_FUNCTION_40_24()
{

  return sub_217752D08();
}

void *OUTLINED_FUNCTION_41_23(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_42_24(uint64_t a1, uint64_t a2)
{
  *(v4 - 72) = v3;
  *(v2 + 8) = a2;

  return type metadata accessor for CloudMusicVideo(0);
}

void *OUTLINED_FUNCTION_43_18(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_56_15()
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_60_21()
{

  return sub_2175531EC(v0, v1);
}

void *OUTLINED_FUNCTION_61_13(void *a1)
{

  return memcpy(a1, v1, 0x1F9uLL);
}

uint64_t sub_217554A10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_217751AF8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_217751AE8();
}

uint64_t sub_217554B54()
{
  OUTLINED_FUNCTION_122_7();
  v4 = *(*(v3 + 56) + 16);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_133_10(MEMORY[0x277D84F90]);
    v1(v5);
    v6 = 0;
    v7 = v16;
    do
    {
      v2(v12, v6);
      swift_getAtKeyPath();
      v11(v12);
      OUTLINED_FUNCTION_158_6();
      if (v8)
      {
        OUTLINED_FUNCTION_161_8();
        v9();
        v7 = v16;
      }

      ++v6;
      *(v7 + 16) = v0;
      OUTLINED_FUNCTION_44_22((v7 + 56 * v1), v13, v14, v15);
    }

    while (v4 != v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_217554C78(uint64_t a1)
{
  v3 = type metadata accessor for MusicPersonalRecommendation();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  swift_beginAccess();
  v19 = a1;
  v12 = *(*(a1 + 56) + 16);
  if (v12)
  {
    v17 = v1;
    v20 = MEMORY[0x277D84F90];
    sub_2172760A8();
    v13 = 0;
    v14 = v20;
    do
    {
      sub_2172943A8(v13, v7);
      swift_getAtKeyPath();
      sub_21755FBE4(v7, type metadata accessor for MusicPersonalRecommendation);
      v20 = v14;
      v15 = *(v14 + 16);
      if (v15 >= *(v14 + 24) >> 1)
      {
        sub_2172760A8();
        v14 = v20;
      }

      ++v13;
      *(v14 + 16) = v15 + 1;
      sub_21755FB2C(v11, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, type metadata accessor for MusicPersonalRecommendation);
    }

    while (v12 != v13);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_217554ED8()
{
  OUTLINED_FUNCTION_122_7();
  v4 = *(*(v3 + 56) + 16);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_133_10(MEMORY[0x277D84F90]);
    v1(v5);
    v6 = 0;
    v7 = v16;
    do
    {
      v2(v12, v6);
      swift_getAtKeyPath();
      v11(v12);
      OUTLINED_FUNCTION_158_6();
      if (v8)
      {
        OUTLINED_FUNCTION_161_8();
        v9();
        v7 = v16;
      }

      ++v6;
      *(v7 + 16) = v0;
      OUTLINED_FUNCTION_32_21(v7 + (v1 << 6), v13, v14, v15[0], *(v15 + 9));
    }

    while (v4 != v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_217554FF4()
{
  v34 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v4, v5, v6, v7);
  v8 = v50;
  v9 = BYTE8(v50);
  sub_217283C5C(v50, SBYTE8(v50));
  sub_2171F0738(&v50, &unk_27CB2ACA0, &unk_217759C60);
  result = sub_21725CF00(v8, v9);
  v11 = 0;
  v12 = v53;
  v57 = v53 + 32;
  v55 = 0;
  v13 = v54;
  while (v13)
  {
    swift_beginAccess();
    if (v11 == *(*(v12 + 56) + 16))
    {
      goto LABEL_27;
    }

    sub_217294664();
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    result = sub_21725CF00(v12, 1);
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_29;
    }

LABEL_14:
    v55 = v11;
    if (qword_280BE66D8 != -1)
    {
      swift_once();
    }

    v19 = qword_280BE66E0;
    sub_21729C5E8(&v47, &v42);
    v20 = *(&v43 + 1);
    v21 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    (*(v21 + 96))(&v35, v20, v21);
    v22 = *(&v36 + 1);
    v23 = v37;
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    (*(*(v23 + 8) + 8))(&v39, v19, &type metadata for Playlist.Entry, &type metadata for Playlist.Entry.Item, v22);
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_21729C644(&v42);
    if (v41[24] == 255)
    {
      sub_2171F0738(&v39, &qword_27CB27D20, &qword_217758B80);
      result = sub_2172758B4(&v46);
    }

    else
    {
      v50 = v39;
      v51 = v40;
      v52[0] = *v41;
      *(v52 + 9) = *&v41[9];
      sub_21729C79C(&v50, &v39);
      if (v41[24])
      {
        v24 = &type metadata for Song;
      }

      else
      {
        v24 = &type metadata for MusicVideo;
      }

      if (v41[24])
      {
        v25 = &protocol witness table for Song;
      }

      else
      {
        v25 = &protocol witness table for MusicVideo;
      }

      *(&v43 + 1) = v24;
      *&v44 = v25;
      v26 = swift_allocObject();
      v27 = v40;
      *(v26 + 16) = v39;
      *(v26 + 32) = v27;
      *(v26 + 48) = *v41;
      *(v26 + 64) = *&v41[16];
      *&v42 = v26;
      __swift_project_boxed_opaque_existential_1(&v42, v24);
      v28 = (v25[1])(v24, v25);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v42);
      sub_217620780(&v35);
      v31 = v35;
      v39 = v50;
      v40 = v51;
      *v41 = v52[0];
      *&v41[9] = *(v52 + 9);
      sub_217275858(&v46, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADB0, &unk_217778730);
      swift_allocObject();
      sub_217631F6C(v28, v30, v31, &v39, &v42);
      v32 = sub_2172758B4(&v46);
      MEMORY[0x21CEA25D0](v32);
      v33 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
      {
        OUTLINED_FUNCTION_57(v33);
        sub_2177522F8();
      }

      result = sub_217752378();
      v34 = v56;
    }
  }

  v15 = *(v12 + 16);
  if (v11 == v15)
  {
LABEL_27:
    sub_2171F0738(&v53, &qword_27CB279D0, &qword_217778740);
    return v34;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11 >= v15)
    {
      goto LABEL_30;
    }

    sub_21738C4B0(v57 + (v11 << 6), &v50, &qword_27CB279E0, &unk_2177881E0);
    sub_21738C4B0(&v50, &v39, &qword_27CB279E0, &unk_2177881E0);
    if (v41[24])
    {
      v16 = *(v39 + 16);
      v17 = *(v39 + 24);
      v18 = *(v39 + 32);
      sub_217283C5C(v12, 0);
      sub_217751DE8();
      sub_217293954(&v35, v16, v17);

      sub_2171F0738(&v50, &qword_27CB279E0, &unk_2177881E0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(&v50, &qword_27CB279E0, &unk_2177881E0);
      v35 = v39;
      v36 = v40;
      v37 = *v41;
      v38 = *&v41[16];
    }

    v44 = v37;
    v46 = v35;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    sub_21725CF00(v12, 0);
    ++v11;
    goto LABEL_14;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_217555518(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29728, &unk_217778720) - 8) + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  v5 = type metadata accessor for PlaylistEntryPropertyProvider();
  *(v3 + 472) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2175555E8, 0, 0);
}

uint64_t sub_2175555E8()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 456);
  v2 = *(v0 + 249);
  v3 = sub_217554FF4();
  *(v0 + 488) = v3;
  OUTLINED_FUNCTION_9_14(&dword_2177871E8);
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 496) = v5;
  *v5 = v6;
  v5[1] = sub_2175556A4;

  return v8(v2 & 1, v3);
}

uint64_t sub_2175556A4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *(v5 + 488);
  v8 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  v3[63] = v10;

  if (v0)
  {
    v11 = v3[60];
    v12 = v3[58];

    v13 = *(v8 + 8);

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_4_25();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_217555800()
{
  v1 = v0[31].n128_u64[1];
  v2 = *(v1 + 16);
  if (v2)
  {
    v35 = v0[29].n128_u64[1];
    v37 = MEMORY[0x277D84F90];
    sub_217275DB0();
    v3 = v37;
    v4 = v1 + 32;
    while (1)
    {
      v36 = v2;
      v5 = v3;
      v7 = v0[29].n128_u64[0];
      v6 = v0[29].n128_u64[1];
      sub_21738C4B0(v4, &v0[7].n128_i64[1], &unk_27CB2ADA0, &unk_21775A060);
      sub_21729C79C(&v0[7].n128_i64[1], &v0[12]);
      sub_217275858(v0[11].n128_u64[1] + 32, &v0[19].n128_i64[1]);
      sub_21729C5E8(&v0[20].n128_i64[1], &v0[25].n128_i64[1]);
      v9 = v0[27].n128_i64[0];
      v8 = v0[27].n128_u64[1];
      __swift_project_boxed_opaque_existential_1(&v0[25].n128_u64[1], v9);
      (*(v8 + 96))(v9, v8);
      sub_21729C644(&v0[25].n128_i64[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v11 = v0[29].n128_i64[1];
      v10 = v0[30].n128_i64[0];
      v12 = v0[29].n128_i64[0];
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v11);
      sub_21755FB2C(v12, v10, type metadata accessor for PlaylistEntryPropertyProvider);
      v13 = *(v35 + 40);
      sub_2171F0738(v10 + v13, &qword_27CB27D20, &qword_217758B80);
      sub_21729C79C(&v0[12], v10 + v13);
      v0[18].n128_u64[1] = v11;
      v0[19].n128_u64[0] = &protocol witness table for PlaylistEntryPropertyProvider;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v0[17]);
      sub_21755FB88(v10, boxed_opaque_existential_0, type metadata accessor for PlaylistEntryPropertyProvider);
      v15 = (boxed_opaque_existential_0 + *(v35 + 76));
      v17 = *v15;
      v16 = v15[1];
      sub_217751DE8();
      sub_2172758B4(&v0[19].n128_i64[1]);
      sub_21729C7F8(&v0[12]);
      v0[16].n128_u64[0] = v17;
      v0[16].n128_u64[1] = v16;
      v18 = OUTLINED_FUNCTION_153();
      sub_21755FBE4(v18, v19);
      sub_2171F0738(&v0[7].n128_i64[1], &unk_27CB2ADA0, &unk_21775A060);
      v3 = v5;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_57(v20);
        sub_217275DB0();
        v3 = v5;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v0[19].n128_u64[0];
      OUTLINED_FUNCTION_44_22((v3 + 56 * v21), v0[16], v0[17], v0[18]);
      v4 += 72;
      v2 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_7;
      }
    }

    v23 = v0[29].n128_i64[0];
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v0[29].n128_i64[1]);
    sub_2171F0738(v23, &qword_27CB29728, &unk_217778720);
    return sub_217752D08();
  }

  else
  {
LABEL_7:
    v25 = v0[31].n128_u64[1];

    v26 = v0[30].n128_u64[0];
    v27 = v0[28].n128_u64[1];
    v28 = v0[29].n128_u64[0];
    v29 = v0[28].n128_u64[0];
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v30, v31, v32, v33);
    OUTLINED_FUNCTION_126_11();
    sub_217555C40();

    OUTLINED_FUNCTION_0_2();

    return v34();
  }
}

void sub_217555C40()
{
  OUTLINED_FUNCTION_135_8();
  v5 = *(v4 + 16);
  v33 = MEMORY[0x277D84F90];
  v6 = OUTLINED_FUNCTION_164_7();
  v22 = v7;
  (v7)(v6);
  v8 = v33;
  if (v5)
  {
    v9 = *(v3 + 16);
    v10 = v3 + 32;
    v11 = v5;
    while (v9)
    {
      v2(v10, &v30);
      v32[24] = 0;
      OUTLINED_FUNCTION_163_5();
      if (v12)
      {
        OUTLINED_FUNCTION_762();
        v22();
        v8 = v33;
      }

      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_32_21(v8 + (v0 << 6), v30, v31, *v32, *&v32[9]);
      v10 += 56;
      --v9;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    for (i = v3 + 56 * v5 + 32; ; i += 56)
    {
      v14 = *(v3 + 16);
      if (v5 == v14)
      {

        sub_21738C4B0((v23 + 2), v26 + 16, &qword_27CB24188, &dword_217758930);
        v16 = v23[7];
        v17 = v23[8];
        v19 = v23[9];
        v18 = v23[10];
        v20 = v23[11];
        v21 = v23[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v23, v24, v25);
        *v26 = v8;
        *(v26 + 8) = 0;
        *(v26 + 56) = v16;
        *(v26 + 64) = v17;
        *(v26 + 72) = v19;
        *(v26 + 80) = v18;
        *(v26 + 88) = v20;
        *(v26 + 96) = v21;
        return;
      }

      if (v5 >= v14)
      {
        break;
      }

      v2(i, &v30);
      v28 = v31;
      v29 = *v32;
      v27 = v30;
      OUTLINED_FUNCTION_163_5();
      if (v12)
      {
        OUTLINED_FUNCTION_762();
        v22();
        v8 = v33;
      }

      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_44_22((v8 + (v0 << 6)), v27, v28, v29);
      *(v15 + 88) = 0;
      ++v5;
    }

    __break(1u);
  }

  __break(1u);
}

size_t sub_21755602C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v44, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for MusicPersonalRecommendation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v45 = MEMORY[0x277D84F90];
  result = sub_2172762F8(0, v19, 0);
  v21 = v45;
  v41 = a1;
  if (v19)
  {
    v22 = 0;
    v23 = *(a1 + 16);
    v42 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v43 = v23;
    while (v43 != v22)
    {
      sub_21755FB88(v42 + *(v14 + 72) * v22, v8, type metadata accessor for MusicPersonalRecommendation);
      swift_storeEnumTagMultiPayload();
      v45 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2172762F8(v24 > 1, v25 + 1, 1);
        v21 = v45;
      }

      ++v22;
      *(v21 + 16) = v25 + 1;
      result = sub_21755FC3C(v8, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25);
      if (v19 == v22)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v26 = v41;
    while (1)
    {
      v27 = *(v26 + 16);
      if (v19 == v27)
      {

        v31 = v39;
        v30 = v40;
        sub_21738C4B0((v39 + 2), v40 + 16, &qword_27CB24188, &dword_217758930);
        v33 = v31[7];
        v32 = v31[8];
        v35 = v31[9];
        v34 = v31[10];
        v36 = v31[11];
        v37 = v31[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        result = sub_2171F0738(v31, &qword_27CB28678, &qword_21776DEA0);
        *v30 = v21;
        *(v30 + 8) = 0;
        *(v30 + 56) = v33;
        *(v30 + 64) = v32;
        *(v30 + 72) = v35;
        *(v30 + 80) = v34;
        *(v30 + 88) = v36;
        *(v30 + 96) = v37;
        return result;
      }

      if (v19 >= v27)
      {
        break;
      }

      sub_21755FB88(v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v18, type metadata accessor for MusicPersonalRecommendation);
      sub_21755FB2C(v18, v12, type metadata accessor for MusicPersonalRecommendation);
      swift_storeEnumTagMultiPayload();
      v45 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2172762F8(v28 > 1, v29 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v29 + 1;
      result = sub_21755FC3C(v12, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29);
      ++v19;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_217556418()
{
  OUTLINED_FUNCTION_135_8();
  v5 = *(v4 + 16);
  v36 = MEMORY[0x277D84F90];
  v25 = v6;
  (v6)(0, v5, 0);
  v7 = v36;
  if (v5)
  {
    v8 = *(v3 + 16);
    v9 = v3 + 32;
    v10 = v5;
    while (v8)
    {
      v2(v9, &v33);
      v35[25] = 0;
      OUTLINED_FUNCTION_156_8();
      if (v11)
      {
        OUTLINED_FUNCTION_762();
        v25();
        v7 = v36;
      }

      *(v7 + 16) = v0;
      v12 = (v7 + (v1 << 6));
      v13 = v33;
      v14 = v34;
      v15 = *v35;
      *(v12 + 74) = *&v35[10];
      v12[3] = v14;
      v12[4] = v15;
      v12[2] = v13;
      v9 += 64;
      --v8;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    for (i = v3 + (v5 << 6) + 32; ; i += 64)
    {
      v17 = *(v3 + 16);
      if (v5 == v17)
      {

        sub_21738C4B0((v26 + 2), v29 + 16, &qword_27CB24188, &dword_217758930);
        v19 = v26[7];
        v20 = v26[8];
        v22 = v26[9];
        v21 = v26[10];
        v23 = v26[11];
        v24 = v26[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v26, v27, v28);
        *v29 = v7;
        *(v29 + 8) = 0;
        *(v29 + 56) = v19;
        *(v29 + 64) = v20;
        *(v29 + 72) = v22;
        *(v29 + 80) = v21;
        *(v29 + 88) = v23;
        *(v29 + 96) = v24;
        return;
      }

      if (v5 >= v17)
      {
        break;
      }

      v2(i, &v33);
      *&v32[9] = *&v35[9];
      v31 = v34;
      *v32 = *v35;
      v30 = v33;
      OUTLINED_FUNCTION_156_8();
      if (v11)
      {
        OUTLINED_FUNCTION_762();
        v25();
        v7 = v36;
      }

      *(v7 + 16) = v0;
      OUTLINED_FUNCTION_32_21(v7 + (v1 << 6), v30, v31, *v32, *&v32[9]);
      *(v18 + 89) = 0;
      ++v5;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21755676C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556784()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Album))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_217509B44(v6, v7);
  }

  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE85C0);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755EB98(v15);
}

uint64_t sub_2175568D8(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175568F0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Artist))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_21750985C(v6, v7);
  }

  if (qword_280BE2A18 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE2A20);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755E7C0(v15);
}

uint64_t sub_217556A54(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556A6C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Curator))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_217509574(v6, v7);
  }

  if (qword_280BE7660 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE7668);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755E3E8(v15);
}

uint64_t sub_217556BD0(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556BE8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_21750928C(v6, v7);
  }

  if (qword_280BE7F40 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE7F48);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755DFF8(v15);
}

uint64_t sub_217556D4C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556D64()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_217508FA4(v6, v7);
  }

  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE84E0);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755DC2C(v15);
}

uint64_t sub_217556EB8(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556ED0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for RadioShow))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_217508CBC(v6, v7);
  }

  if (qword_280BE23C0 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE23C8);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755D854(v15);
}

uint64_t sub_217557034(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21755704C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for RecordLabel))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_2175089D4(v6, v7);
  }

  if (qword_280BE5130 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE5138);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755D47C(v15);
}

uint64_t sub_2175571B0(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175571C8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Song))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_2175086EC(v6, v7);
  }

  if (qword_280BEB230 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BEB238);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755D0B0(v15);
}

uint64_t sub_21755732C(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557344()
{
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item))
  {
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item))
    {
      v1 = *(v0 + 40);
      v2 = swift_task_alloc();
      v3 = OUTLINED_FUNCTION_48_18(v2);
      *v3 = v4;
      v5 = OUTLINED_FUNCTION_23_40(v3);

      return sub_21750A404(v5, v6);
    }

    else
    {
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      return sub_217752D08();
    }
  }

  else
  {
    sub_21738C4B0(*(v0 + 24), *(v0 + 16), &qword_27CB27A88, &qword_21776B6D0);
    OUTLINED_FUNCTION_0_2();

    return v8();
  }
}

uint64_t sub_217557510(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557528()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Genre))
  {
LABEL_2:
    v2 = *(v1 + 48);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_48_18(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_23_40(v4);
    OUTLINED_FUNCTION_1322();

    return sub_21750A6F0(v6, v7);
  }

  if (qword_280BE2A80 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_139_9(&xmmword_280BE2A88);
  OUTLINED_FUNCTION_814(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_58_17(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_57_17(v13);
  OUTLINED_FUNCTION_1322();

  return sub_21755EF64(v15);
}

uint64_t sub_21755768C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175576A4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Station))
  {
    if (dynamic_cast_existential_1_conditional(&type metadata for Station))
    {
LABEL_3:
      v2 = *(v1 + 48);
      v3 = swift_task_alloc();
      v4 = OUTLINED_FUNCTION_48_18(v3);
      *v4 = v5;
      OUTLINED_FUNCTION_23_40(v4);
      OUTLINED_FUNCTION_1322();

      return sub_21750ACC4(v6, v7);
    }

    if (qword_280BE26C0 != -1)
    {
      swift_once();
    }

    v18 = OUTLINED_FUNCTION_139_9(&xmmword_280BE26C8);
    OUTLINED_FUNCTION_814(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_64_20();
      OUTLINED_FUNCTION_138_5();
      if (v0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_58_17(v20);
    *v21 = v22;
    OUTLINED_FUNCTION_57_17(v21);
    OUTLINED_FUNCTION_1322();

    return sub_21755F33C(v23);
  }

  else
  {
    sub_21738C4B0(*(v1 + 24), *(v1 + 16), &qword_27CB255B8, &unk_21775D470);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_21755786C(uint64_t a1, char a2)
{
  *(v3 + 353) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557884()
{
  OUTLINED_FUNCTION_182();
  sub_21738C4B0(*(v0 + 312), v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  sub_21738C4B0(v0 + 16, v0 + 120, &unk_27CB2ACA0, &unk_217759C60);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACB0, &unk_217786F10);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 353);
    sub_2171F3F0C((v0 + 264), v0 + 224);
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v3);
    *(v0 + 352) = v2 & 1;
    v5 = *(v4 + 8);
    v17 = (v5 + *v5);
    v6 = v5[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 320) = v7;
    *v7 = v8;
    v7[1] = sub_217557AF8;
    v9 = *(v0 + 304);

    return v17(v9, v0 + 352, v1, v3, v4);
  }

  else
  {
    v11 = *(v0 + 353);
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0;
    sub_2171F0738(v0 + 264, &qword_27CB29720, &qword_217778710);
    OUTLINED_FUNCTION_9_14(&unk_217778718);
    v18 = v12;
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_35_25(v13);
    *v14 = v15;
    v14[1] = sub_217557BF0;
    v16 = *(v0 + 304);

    return v18(v16, v11 & 1);
  }
}

uint64_t sub_217557AF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217557BF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217557CE8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217557D58()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217557DCC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217557E34()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

void sub_217557EA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Album;
    *(v4 - 8) = &protocol witness table for Album;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_106_8();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275CCC();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217758A00);
    OUTLINED_FUNCTION_59_14();
    if (v16)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217292A88(v13, v11, v12);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v14);
      sub_217275CCC();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v15)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217558024()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Playlist;
    *(v4 - 8) = &protocol witness table for Playlist;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_105_13();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275D18();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217771D40);
    OUTLINED_FUNCTION_59_14();
    if (v16)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_21729290C(v13, v11, v12);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v14);
      sub_217275D18();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v15)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2175581A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Artist;
    *(v4 - 8) = &protocol witness table for Artist;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275D64();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_21776B8C0);
    OUTLINED_FUNCTION_59_14();
    if (v14)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217293074(v11);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v12);
      sub_217275D64();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v13)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755833C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Playlist.Entry;
    *(v4 - 8) = &protocol witness table for Playlist.Entry;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275DB0();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &unk_2177881E0);
    OUTLINED_FUNCTION_59_14();
    if (v16)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217293954(v13, v11, v12);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v14);
      sub_217275DB0();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v15)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2175584D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Track;
    *(v4 - 8) = &protocol witness table for Track;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554ED8();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275DFC();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &unk_2177589C0);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v11, v12, v13, v14);
    if (v21)
    {
      v15 = *(v20 + 16);
      v16 = *(v20 + 24);
      OUTLINED_FUNCTION_56_16();

      v17 = OUTLINED_FUNCTION_37_26();
      sub_21729366C(v17);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v18);
      OUTLINED_FUNCTION_43_19();
      sub_217275DFC();
    }

    OUTLINED_FUNCTION_12_37();
    if (v19)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217558688()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for RadioShow;
    *(v4 - 8) = &protocol witness table for RadioShow;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275E48();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217758BF0);
    OUTLINED_FUNCTION_59_14();
    if (v14)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217293370(v11);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v12);
      sub_217275E48();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v13)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755881C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Curator;
    *(v4 - 8) = &protocol witness table for Curator;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275E94();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_21776C1A0);
    OUTLINED_FUNCTION_59_14();
    if (v14)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_2172934F0(v11);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v12);
      sub_217275E94();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v13)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2175589B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Song;
    *(v4 - 8) = &protocol witness table for Song;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275EE0();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_21776B300);
    OUTLINED_FUNCTION_59_14();
    if (v16)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217292D80(v13, v11, v12);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v14);
      sub_217275EE0();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v15)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217558B44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for Station;
    *(v4 - 8) = &protocol witness table for Station;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_104_10();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275F2C();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217758C50);
    OUTLINED_FUNCTION_59_14();
    if (v14)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217292790(v11);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v12);
      sub_217275F2C();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v13)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217558CC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for MusicVideo;
    *(v4 - 8) = &protocol witness table for MusicVideo;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217275F78();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217771CE0);
    OUTLINED_FUNCTION_59_14();
    if (v16)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_217292EF4(v13, v11, v12);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v14);
      sub_217275F78();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v15)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217558FF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for RecordLabel;
    *(v4 - 8) = &protocol witness table for RecordLabel;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554B54();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217276010();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217758C20);
    OUTLINED_FUNCTION_59_14();
    if (v14)
    {
      OUTLINED_FUNCTION_11_48();

      v11 = OUTLINED_FUNCTION_22_37();
      sub_2172931EC(v11);
      OUTLINED_FUNCTION_136_9();
      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_5_61();
    }

    OUTLINED_FUNCTION_6_58();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_7_52(v12);
      sub_217276010();
      OUTLINED_FUNCTION_101_10();
    }

    OUTLINED_FUNCTION_1_81();
    if (v13)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217559184()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for MusicCatalogSearchResponse.TopResult;
    *(v4 - 8) = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554ED8();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_21727605C();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &qword_217771D80);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v11, v12, v13, v14);
    if (v23)
    {
      v15 = *(v22 + 16);
      v16 = *(v22 + 24);
      OUTLINED_FUNCTION_56_16();

      v17 = OUTLINED_FUNCTION_37_26();
      sub_2172921E8(v19, v17, v18);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_43_19();
      sub_21727605C();
    }

    OUTLINED_FUNCTION_12_37();
    if (v21)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755933C()
{
  OUTLINED_FUNCTION_12();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v1 = OUTLINED_FUNCTION_0_0(v62);
  v64 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1, v5);
  OUTLINED_FUNCTION_6_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for MusicPersonalRecommendation();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v63 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  OUTLINED_FUNCTION_6_1();
  v65 = v19 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v26 = &v61 - v25;
  v66 = *v0;
  if (*(v0 + 8))
  {
    MEMORY[0x28223BE20](v23, v24);
    OUTLINED_FUNCTION_36_27();
    *(v28 - 16) = v27;
    *(v28 - 8) = &protocol witness table for MusicPersonalRecommendation;
    swift_getKeyPath();
    v29 = v66;
    sub_217283C5C(v66, 1);

    v30 = OUTLINED_FUNCTION_56_0();
    sub_217554C78(v30);

    v31 = v29;
    v32 = 1;
LABEL_13:
    sub_21725CF00(v31, v32);
    goto LABEL_14;
  }

  v33 = *(v66 + 16);
  if (!v33)
  {
LABEL_14:
    OUTLINED_FUNCTION_13();
    return;
  }

  v67 = MEMORY[0x277D84F90];
  v34 = v66;
  sub_217751DE8();
  OUTLINED_FUNCTION_164_7();
  sub_2172760A8();
  v35 = 0;
  v36 = v67;
  v37 = v65;
  v38 = *(v64 + 80);
  OUTLINED_FUNCTION_47_3();
  v40 = v34 + v39;
  v61 = v12;
  while (v35 < *(v66 + 16))
  {
    sub_21738C4B0(v40 + *(v64 + 72) * v35, v12, &qword_27CB24978, &qword_21776DBA0);
    sub_21738C4B0(v12, v8, &qword_27CB24978, &qword_21776DBA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v8;
      v42 = v8;
      v43 = v40;
      v44 = v33;
      v45 = v26;
      v47 = *(*v8 + 16);
      v46 = *(v41 + 24);
      v48 = *(v41 + 32);
      sub_217751DE8();

      v8 = v42;
      v12 = v61;
      sub_217292370(v65);

      v37 = v65;

      v26 = v45;
      v33 = v44;
      v40 = v43;
    }

    else
    {
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v8, v37, v49);
    }

    OUTLINED_FUNCTION_0_90();
    v50 = OUTLINED_FUNCTION_56_0();
    sub_21755FB2C(v50, v51, v52);
    sub_2171F0738(v12, &qword_27CB24978, &qword_21776DBA0);
    v67 = v36;
    v53 = v26;
    v55 = *(v36 + 16);
    v54 = *(v36 + 24);
    if (v55 >= v54 >> 1)
    {
      OUTLINED_FUNCTION_57(v54);
      sub_2172760A8();
      v37 = v65;
      v36 = v67;
    }

    ++v35;
    *(v36 + 16) = v55 + 1;
    v56 = *(v63 + 80);
    OUTLINED_FUNCTION_47_3();
    v58 = *(v57 + 72);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v53, v59, v60);
    v26 = v53;
    if (v33 == v35)
    {
      v31 = v66;
      v32 = 0;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_2175596E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v4 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_102_11();
    OUTLINED_FUNCTION_42_25();
    sub_217554ED8();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_217276100();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &unk_21775A270);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v11, v12, v13, v14);
    if (v21)
    {
      v15 = *(v20 + 16);
      v16 = *(v20 + 24);
      OUTLINED_FUNCTION_56_16();

      v17 = OUTLINED_FUNCTION_37_26();
      sub_217292624(v17);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v18);
      OUTLINED_FUNCTION_43_19();
      sub_217276100();
    }

    OUTLINED_FUNCTION_12_37();
    if (v19)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755988C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2, v3);
    OUTLINED_FUNCTION_36_27();
    *(v4 - 16) = &type metadata for MusicLibrarySearchResponse.TopResult;
    *(v4 - 8) = &protocol witness table for MusicLibrarySearchResponse.TopResult;
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_42_25();
    sub_217554ED8();
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_20_33();
  sub_21727614C();
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v8, v9, v10, &unk_217778870);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v11, v12, v13, v14);
    if (v21)
    {
      v15 = *(v20 + 16);
      v16 = *(v20 + 24);
      OUTLINED_FUNCTION_56_16();

      v17 = OUTLINED_FUNCTION_37_26();
      sub_217292BF8(v17);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v18);
      OUTLINED_FUNCTION_43_19();
      sub_21727614C();
    }

    OUTLINED_FUNCTION_12_37();
    if (v19)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t MusicPersonalRecommendationsResponse.hashValue.getter()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v1);
  return sub_217753238();
}

uint64_t sub_217559AC8()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v1);
  return sub_217753238();
}

void MusicPersonalRecommendationsResponse.replacing<A>(_:)()
{
  OUTLINED_FUNCTION_12();
  v104 = v1;
  v103 = v2;
  v102 = v3;
  v94 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v96 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v95 = &v93 - v11;
  v12 = type metadata accessor for MusicPersonalRecommendation();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v93 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v34, v35);
  v106 = &v93 - v36;
  v93 = v0;
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v37, v38, v39, v40);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v41, v42, v43, v44);
  v45 = v108;
  v46 = v109;
  sub_217283C5C(v108, v109);
  v47 = v26;
  sub_2171F0738(&v108, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v45, v46);
  v48 = 0;
  v114 = 0;
  v49 = v110;
  v107 = v111;
  v50 = MEMORY[0x277D84F90];
  v97 = v47;
  v105 = v30;
  v51 = v110;
  while (1)
  {
    if (v107)
    {
      swift_beginAccess();
      if (v48 == *(v49[7] + 16))
      {
        goto LABEL_28;
      }

      sub_2172943A8(v48, v30);
      goto LABEL_9;
    }

    v52 = v49[2];
    if (v48 == v52)
    {
LABEL_28:
      sub_2171F0738(&v110, &qword_27CB29710, &qword_21777D6E0);
      __swift_storeEnumTagSinglePayload(v106, 1, 1, v12);
      sub_21738C4B0(v93, &v110, &qword_27CB28678, &qword_21776DEA0);
      sub_21755602C(v50, &v110, v94);
      OUTLINED_FUNCTION_13();
      return;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v48 >= v52)
    {
      goto LABEL_32;
    }

    v53 = *(v96 + 80);
    OUTLINED_FUNCTION_47_3();
    v56 = v95;
    sub_21738C4B0(v49 + v54 + *(v55 + 72) * v48, v95, &qword_27CB24978, &qword_21776DBA0);
    sub_217751DE8();
    sub_217293F44(v105);
    v30 = v105;
    v49 = v51;
    v47 = v97;
    sub_2171F0738(v56, &qword_27CB24978, &qword_21776DBA0);
LABEL_9:
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v30, v106, v57);
    v58 = __OFADD__(v48, 1);
    if (v107)
    {
      sub_21725CF00(v49, 1);
      if (v58)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_21725CF00(v49, 0);
      if (v58)
      {
        goto LABEL_30;
      }
    }

    v114 = v48 + 1;
    v59 = OUTLINED_FUNCTION_88_12();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v12);
    OUTLINED_FUNCTION_0_90();
    v62 = OUTLINED_FUNCTION_56_0();
    v65 = sub_21755FB2C(v62, v63, v64);
    v49 = &v93;
    MEMORY[0x28223BE20](v65, v66);
    *(&v93 - 2) = v47;
    v67 = v100;
    v68 = v102;
    sub_217752198();
    v69 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v69, v70, v12) == 1)
    {
      sub_2171F0738(v67, &qword_27CB24B58, &unk_21775A2A0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB88(v47, v99, v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_151_7();
        v50 = v87;
      }

      OUTLINED_FUNCTION_154_7();
      if (v73)
      {
        v88 = OUTLINED_FUNCTION_57(v72);
        sub_2172B1610(v88, v68, 1, v50);
        v50 = v89;
      }

      v74 = &v113;
    }

    else
    {
      OUTLINED_FUNCTION_103_12();
      v75 = v101;
      sub_21755FB2C(v67, v101, v76);
      sub_21755FB88(v75, v98, v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_151_7();
        v50 = v90;
      }

      OUTLINED_FUNCTION_154_7();
      v47 = v97;
      if (v73)
      {
        v91 = OUTLINED_FUNCTION_57(v77);
        sub_2172B1610(v91, v68, 1, v50);
        v50 = v92;
      }

      OUTLINED_FUNCTION_24_31();
      sub_21755FBE4(v101, v78);
      v74 = &v112;
    }

    v79 = *(v74 - 32);
    *(v50 + 16) = v68;
    v80 = *(v15 + 80);
    OUTLINED_FUNCTION_47_3();
    v81 = *(v15 + 72);
    OUTLINED_FUNCTION_103_12();
    sub_21755FB2C(v82, v83, v84);
    v85 = OUTLINED_FUNCTION_93();
    sub_21755FBE4(v85, v86);
    ++v48;
    v30 = v105;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_21755A160(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058() & 1;
  }
}

uint64_t MusicPersonalRecommendationsResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 1216) = v0;
  *(v1 + 1208) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  *(v1 + 1224) = v5;
  OUTLINED_FUNCTION_15_3(v5);
  *(v1 + 1232) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  v9 = type metadata accessor for MusicPersonalRecommendation();
  *(v1 + 1256) = v9;
  OUTLINED_FUNCTION_15_3(v9);
  *(v1 + 1264) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 1272) = swift_task_alloc();
  *(v1 + 1280) = swift_task_alloc();
  *(v1 + 1288) = swift_task_alloc();
  *(v1 + 1296) = swift_task_alloc();
  *(v1 + 1304) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0) - 8) + 64) + 15;
  *(v1 + 1312) = swift_task_alloc();
  *(v1 + 233) = *v3;
  v14 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_21755A348()
{
  v2 = &qword_21776DEA0;
  sub_21738C4B0(*(v0 + 1216), v0 + 352, &qword_27CB28678, &qword_21776DEA0);
  sub_21738C4B0(v0 + 352, v0 + 16, &qword_27CB28678, &qword_21776DEA0);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  sub_217283C5C(v3, v4);
  sub_2171F0738(v0 + 352, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v3, v4);
  v5 = 0;
  *(v0 + 120) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 1320) = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v0 + 234) = v7;
  while (2)
  {
    *(v0 + 1328) = v6;
    v8 = *(v0 + 1320);
    if (v7)
    {
      OUTLINED_FUNCTION_113_11();
      if (v5 != *(*(v8 + 56) + 16))
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(v5, v2);
        goto LABEL_12;
      }

LABEL_25:
      v69 = *(v0 + 1312);
      v70 = *(v0 + 1304);
      v71 = *(v0 + 1296);
      v72 = *(v0 + 1288);
      v73 = *(v0 + 1280);
      v138 = *(v0 + 1272);
      v74 = *(v0 + 1256);
      v140 = *(v0 + 1248);
      v142 = *(v0 + 1240);
      v75 = *(v0 + 1216);
      v76 = *(v0 + 1208);
      sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
      v77 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v77, v78, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_129_1();

      __asm { BRAA            X1, X16 }
    }

    v9 = *(v8 + 16);
    if (v5 == v9)
    {
      goto LABEL_25;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v5 >= v9)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_149_7(v11 + v10 * v5, v6);
    v12 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v12, v13);
    OUTLINED_FUNCTION_20_6();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1296);
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1240);
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_98_15(*(v0 + 1320));
      sub_217292370(v15);

      sub_2171F0738(v16, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v18 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v18, v19, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v17, v15, v20);
    }

    v21 = *(v0 + 1304);
    v22 = *(v0 + 1296);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v23, v24, v25);
LABEL_12:
    v26 = *(v0 + 234);
    v27 = *(v0 + 1312);
    v28 = *(v0 + 1304);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v29, v30, v31);
    v32 = v5 + 1;
    LOBYTE(v6) = __OFADD__(v5, 1);
    v33 = *(v0 + 1320);
    if (v26)
    {
      sub_21725CF00(v33, 1);
      if (v6)
      {
        goto LABEL_68;
      }

LABEL_19:
      v6 = *(v0 + 1312);
      v34 = *(v0 + 1288);
      v35 = *(v0 + 1256);
      *(v0 + 1336) = v32;
      *(v0 + 120) = v32;
      v36 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      OUTLINED_FUNCTION_0_90();
      v39 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v39, v40, v41);
      OUTLINED_FUNCTION_132_10();
      switch(*(v0 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v0 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
          {
            goto LABEL_29;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_40;
          }

          goto LABEL_70;
        case 2:
          OUTLINED_FUNCTION_127_9((v0 + 128));
          OUTLINED_FUNCTION_159_8();
          v42 = *(v0 + 1288);
          v2 = *(v0 + 1280);
          v139 = *(v0 + 1272);
          v141 = *(v0 + 1328);
          v43 = *(v0 + 1256);
          v44 = *(v42 + 8);
          v45 = *(v42 + 24);
          v136 = *(v42 + 16);
          v137 = *v42;
          v46 = *(v42 + 32);
          v135 = *(v42 + 40);
          v133 = *(v42 + 64);
          v134 = *(v42 + 48);
          v131 = *(v42 + 72);
          v132 = *(v42 + 56);
          sub_21738C4B0(v42 + v43[10], v2 + v43[10], &qword_27CB241C0, &qword_217759480);
          v127 = *(v42 + v43[11]);
          v128 = *(v42 + v43[12]);
          v47 = (v42 + v43[13]);
          v48 = *v47;
          v1 = v47[1];
          v49 = v47[2];
          v126 = *(v42 + v43[14]);
          v125 = *(v42 + v43[15]);
          sub_21755F734(v0 + 128, v2 + v43[16]);
          v129 = *(v42 + v43[17]);
          v130 = *(v42 + v43[18]);
          v50 = *(v42 + v43[19]);
          v51 = *(v42 + v43[20]);
          *v2 = v137;
          v2[1] = v44;
          v2[2] = v136;
          v2[3] = v45;
          v2[4] = v46;
          *(v2 + 40) = v135;
          v2[6] = v134;
          v2[7] = v132;
          v2[8] = v133;
          v2[9] = v131;
          *(v2 + v43[11]) = v127;
          *(v2 + v43[12]) = v128;
          v52 = (v2 + v43[13]);
          *v52 = v48;
          v52[1] = v1;
          v52[2] = v49;
          *(v2 + v43[14]) = v126;
          *(v2 + v43[15]) = v125;
          *(v2 + v43[17]) = v129;
          *(v2 + v43[18]) = v130;
          *(v2 + v43[19]) = v50;
          *(v2 + v43[20]) = v51;
          OUTLINED_FUNCTION_0_90();
          sub_21755FB88(v2, v139, v53);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_2172E1074(v48, v1, v49);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v6 = *(v0 + 1328);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = OUTLINED_FUNCTION_21_3();
            sub_2172B1610(v59, v60, v61, v62);
            v6 = v63;
          }

          OUTLINED_FUNCTION_117_13();
          if (v56)
          {
            OUTLINED_FUNCTION_57(v55);
            OUTLINED_FUNCTION_79_15();
            sub_2172B1610(v64, v65, v66, v67);
            v6 = v68;
          }

          v57 = OUTLINED_FUNCTION_16_47();
          sub_21755FBE4(v57, v58);
          sub_21755F790(v0 + 128);
          OUTLINED_FUNCTION_166_7();
          OUTLINED_FUNCTION_47_21();
          v5 = *(v0 + 1336);
          v7 = *(v0 + 234);
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v0 + 1424) = v94;
          *v94 = v95;
          OUTLINED_FUNCTION_14_40(v94);
          OUTLINED_FUNCTION_129_1();

          return sub_21750A118(v96, v97);
        default:
          OUTLINED_FUNCTION_127_9((v0 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album))
          {
            goto LABEL_33;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1();
          }

          OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45();
          }

          v108 = off_280BE71C8;
          v109 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
          if (v109)
          {
            OUTLINED_FUNCTION_30_18(v109, v110);
            v111 = OUTLINED_FUNCTION_153();
            v1(v111);
            OUTLINED_FUNCTION_148_6();
            v112 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v112, v113, v114, v115, v116);
            v108 = v143;
          }

          else
          {
            sub_217751DE8();
          }

          if (v108[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v6)
            {
LABEL_33:
              v88 = *(v0 + 233);
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v0 + 1344) = v89;
              *v89 = v90;
              OUTLINED_FUNCTION_13_41(v89);
              OUTLINED_FUNCTION_129_1();

              return sub_217509B44(v91, v92);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v0 + 1376) = v121;
          *v121 = v122;
          OUTLINED_FUNCTION_19_28(v121);
          OUTLINED_FUNCTION_129_1();

          result = sub_21755EB98(v123);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v33, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  OUTLINED_FUNCTION_44_0();
LABEL_40:
  OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45();
  }

  v99 = off_280BE71C8;
  v100 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v100)
  {
    OUTLINED_FUNCTION_30_18(v100, v101);
    v102 = OUTLINED_FUNCTION_153();
    v1(v102);
    OUTLINED_FUNCTION_148_6();
    v103 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v103, v104, v105, v106, v107);
    v99 = v143;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v99[2])
  {

LABEL_55:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 1416) = v117;
    *v117 = v118;
    OUTLINED_FUNCTION_18_38(v117);
    OUTLINED_FUNCTION_129_1();

    return sub_21755DC2C(v119);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v6 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_29:
  v81 = *(v0 + 233);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 1384) = v82;
  *v82 = v83;
  OUTLINED_FUNCTION_15_45(v82);
  OUTLINED_FUNCTION_129_1();

  return sub_217508FA4(v84, v85);
}

uint64_t sub_21755AC24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 1344);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 1352) = v0;

  if (!v0)
  {
    *(v3 + 1360) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21755AD20()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[166];

  v0[171] = v0[169];
  v2 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_21755AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 872, &qword_27CB25388, &unk_21775D410);
  memcpy((v35 + 128), (v35 + 976), 0x68uLL);
  *(v35 + 232) = 0;
  v144 = *(v35 + 1360);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v145 = *(v39 + v33[17]);
    v146 = *(v39 + v33[18]);
    v147 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v145;
    *(v34 + v33[18]) = v146;
    *(v34 + v33[19]) = v147;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v80, v81, v82, v83);
      v33 = v84;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v85, v86, v87, v88);
      v33 = v89;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v90 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v90, v91, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, v144, a11, a12, a13, a14, v145, v146, a17, v147, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    v62 = *(v35 + 1304);
    v63 = *(v35 + 1296);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v64, v65, v66);
LABEL_16:
    v67 = *(v35 + 234);
    v68 = *(v35 + 1312);
    v69 = *(v35 + 1304);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_144_7();
    if (v67)
    {
      sub_21725CF00(v73, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v74 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v34);
      OUTLINED_FUNCTION_0_90();
      v77 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v77, v78, v79);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v113;
          *v113 = v114;
          OUTLINED_FUNCTION_14_40(v113);
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v115, v116);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1();
          }

          OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45();
          }

          v127 = off_280BE71C8;
          v128 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
          if (v128)
          {
            OUTLINED_FUNCTION_30_18(v128, v129);
            v130 = OUTLINED_FUNCTION_153();
            (v41)(v130);
            OUTLINED_FUNCTION_148_6();
            v131 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v131, v132, v133, v134, v135);
            v127 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v127[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              v107 = *(v35 + 233);
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v108;
              *v108 = v109;
              OUTLINED_FUNCTION_13_41(v108);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v110, v111);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v140;
          *v140 = v141;
          OUTLINED_FUNCTION_19_28();
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v142);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v73, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0();
LABEL_37:
  OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45();
  }

  v118 = off_280BE71C8;
  v119 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v119)
  {
    OUTLINED_FUNCTION_30_18(v119, v120);
    v121 = OUTLINED_FUNCTION_153();
    (v41)(v121);
    OUTLINED_FUNCTION_148_6();
    v122 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v122, v123, v124, v125, v126);
    v118 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v118[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v136;
    *v136 = v137;
    OUTLINED_FUNCTION_18_38(v136);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v138);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  v101 = *(v35 + 233);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v102;
  *v102 = v103;
  OUTLINED_FUNCTION_15_45(v102);
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v104, v105);
}

uint64_t sub_21755B4F8()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1288);
  sub_2171F0738(v0 + 872, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v1, v2);
  sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
  v3 = *(v0 + 1368);
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21755B5E0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 1376);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[166];

    v3[171] = v0;
  }

  else
  {
    v3[170] = 0;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21755B6EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 1384);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 1392) = v0;

  if (!v0)
  {
    *(v3 + 1400) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21755B7E8()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[166];

  v0[176] = v0[174];
  v2 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_21755B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 664, &unk_27CB28230, &unk_21775CD50);
  memcpy((v35 + 128), (v35 + 768), 0x68uLL);
  *(v35 + 232) = 1;
  v144 = *(v35 + 1400);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v145 = *(v39 + v33[17]);
    v146 = *(v39 + v33[18]);
    v147 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v145;
    *(v34 + v33[18]) = v146;
    *(v34 + v33[19]) = v147;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v80, v81, v82, v83);
      v33 = v84;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v85, v86, v87, v88);
      v33 = v89;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v90 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v90, v91, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, v144, a11, a12, a13, a14, v145, v146, a17, v147, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    v62 = *(v35 + 1304);
    v63 = *(v35 + 1296);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v64, v65, v66);
LABEL_16:
    v67 = *(v35 + 234);
    v68 = *(v35 + 1312);
    v69 = *(v35 + 1304);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_144_7();
    if (v67)
    {
      sub_21725CF00(v73, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v74 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v34);
      OUTLINED_FUNCTION_0_90();
      v77 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v77, v78, v79);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v113;
          *v113 = v114;
          OUTLINED_FUNCTION_14_40();
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v115, v116);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1();
          }

          OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45();
          }

          v127 = off_280BE71C8;
          v128 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
          if (v128)
          {
            OUTLINED_FUNCTION_30_18(v128, v129);
            v130 = OUTLINED_FUNCTION_153();
            (v41)(v130);
            OUTLINED_FUNCTION_148_6();
            v131 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v131, v132, v133, v134, v135);
            v127 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v127[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              v107 = *(v35 + 233);
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v108;
              *v108 = v109;
              OUTLINED_FUNCTION_13_41(v108);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v110, v111);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v140;
          *v140 = v141;
          OUTLINED_FUNCTION_19_28();
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v142);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v73, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0();
LABEL_37:
  OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45();
  }

  v118 = off_280BE71C8;
  v119 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v119)
  {
    OUTLINED_FUNCTION_30_18(v119, v120);
    v121 = OUTLINED_FUNCTION_153();
    (v41)(v121);
    OUTLINED_FUNCTION_148_6();
    v122 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v122, v123, v124, v125, v126);
    v118 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v118[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v136;
    *v136 = v137;
    OUTLINED_FUNCTION_18_38(v136);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v138);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  v101 = *(v35 + 233);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v102;
  *v102 = v103;
  OUTLINED_FUNCTION_15_45();
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v104, v105);
}

uint64_t sub_21755BFC4()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1288);
  sub_2171F0738(v0 + 664, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v1, v2);
  sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
  v3 = *(v0 + 1408);
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21755C0AC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 1416);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[166];

    v3[176] = v0;
  }

  else
  {
    v3[175] = 0;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21755C1B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 1424);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 1432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21755C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 456, &qword_27CB25928, &unk_21775D9A0);
  memcpy((v35 + 128), (v35 + 560), 0x68uLL);
  *(v35 + 232) = 3;
  v144 = *(v35 + 1432);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v145 = *(v39 + v33[17]);
    v146 = *(v39 + v33[18]);
    v147 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v145;
    *(v34 + v33[18]) = v146;
    *(v34 + v33[19]) = v147;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v80, v81, v82, v83);
      v33 = v84;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v85, v86, v87, v88);
      v33 = v89;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v90 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v90, v91, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, v144, a11, a12, a13, a14, v145, v146, a17, v147, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    v62 = *(v35 + 1304);
    v63 = *(v35 + 1296);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v64, v65, v66);
LABEL_16:
    v67 = *(v35 + 234);
    v68 = *(v35 + 1312);
    v69 = *(v35 + 1304);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_144_7();
    if (v67)
    {
      sub_21725CF00(v73, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v74 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v34);
      OUTLINED_FUNCTION_0_90();
      v77 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v77, v78, v79);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v113;
          *v113 = v114;
          OUTLINED_FUNCTION_14_40();
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v115, v116);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1();
          }

          OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45();
          }

          v127 = off_280BE71C8;
          v128 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
          if (v128)
          {
            OUTLINED_FUNCTION_30_18(v128, v129);
            v130 = OUTLINED_FUNCTION_153();
            (v41)(v130);
            OUTLINED_FUNCTION_148_6();
            v131 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v131, v132, v133, v134, v135);
            v127 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v127[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              v107 = *(v35 + 233);
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v108;
              *v108 = v109;
              OUTLINED_FUNCTION_13_41(v108);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v110, v111);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v140;
          *v140 = v141;
          OUTLINED_FUNCTION_19_28();
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v142);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v73, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0();
LABEL_37:
  OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45();
  }

  v118 = off_280BE71C8;
  v119 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v119)
  {
    OUTLINED_FUNCTION_30_18(v119, v120);
    v121 = OUTLINED_FUNCTION_153();
    (v41)(v121);
    OUTLINED_FUNCTION_148_6();
    v122 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v122, v123, v124, v125, v126);
    v118 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v118[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v136;
    *v136 = v137;
    OUTLINED_FUNCTION_18_38(v136);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v138);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  v101 = *(v35 + 233);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v102;
  *v102 = v103;
  OUTLINED_FUNCTION_15_45(v102);
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v104, v105);
}

uint64_t sub_21755CA28()
{
  OUTLINED_FUNCTION_182();
  v1 = v0[166];
  v2 = v0[161];

  sub_2171F0738((v0 + 57), &qword_27CB25928, &unk_21775D9A0);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v2, v3);
  sub_2171F0738((v0 + 2), &qword_27CB29710, &qword_21777D6E0);
  v4 = v0[179];
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_21755CB18()
{
  OUTLINED_FUNCTION_30_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return MusicPersonalRecommendationsResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicPersonalRecommendationsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2171FF30C(a1, v22);
  sub_21765E96C(v22, v23);
  if (!v2)
  {
    sub_2174B961C(v23, v22);
    v5 = a1[3];
    v6 = a1[4];
    v7 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v9 = OUTLINED_FUNCTION_140_9();
    Decoder.dataRequestConfiguration.getter(v9, v10);
    v11 = a1[3];
    v12 = a1[4];
    v13 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    OUTLINED_FUNCTION_140_9();
    Decoder.sharedRelatedItemStore.getter();
    v15 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    if (v22[16] >= 2uLL)
    {
      v16 = sub_217751DE8();
      sub_2174BEF8C(v16);
      Array<A>.update(with:)(v17);

      v15 = v24;
    }

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_2174B9678(v15, v21, a2);

    sub_2171F0738(v19, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v21);
    sub_2174B9AF4(v22);
    sub_2174B9AF4(v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPersonalRecommendationsResponse.encode(to:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_140_9();
  Encoder.dataRequestConfiguration.getter(v4, v5);
  sub_21755CDB0(v8);
  result = sub_21733AB9C(&v7);
  if (!v1)
  {
    sub_21765EE98(a1);
    return sub_2174B9AF4(v8);
  }

  return result;
}

double sub_21755CDB0@<D0>(uint64_t a1@<X8>)
{
  sub_2172ECF40();
  sub_21738C4B0(v1 + 16, v6, &qword_27CB24188, &dword_217758930);
  if (!v7)
  {
    sub_2171F0738(v6, &qword_27CB24188, &dword_217758930);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_7;
  }

  sub_2171FF30C(v6, v12);
  sub_217283154(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    sub_2171F0738(&v8, &qword_27CB29730, &unk_217778840);
    v3 = 1;
    goto LABEL_8;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  v3 = sub_2174BF360(v9);
  sub_2174BF6D8(v12);
LABEL_8:
  *(a1 + 72) = v17;
  *(a1 + 88) = v18;
  v4 = v13;
  *(a1 + 104) = v19;
  *a1 = v12[4];
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  *(a1 + 40) = v15;
  *(a1 + 56) = v16;
  result = *&v20;
  *(a1 + 112) = v20;
  *(a1 + 128) = v3;
  return result;
}

uint64_t sub_21755CF68()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_217597FF4();
  sub_21738C4B0(v0 + 16, v6, &qword_27CB24188, &dword_217758930);
  v1 = v6[3];
  sub_2171F0738(v6, &qword_27CB24188, &dword_217758930);
  if (v1)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v6[0] = 0xD000000000000025;
  v6[1] = 0x80000002177B0980;
  v2 = v7;
  v3 = v8;
  MEMORY[0x21CEA23B0](v7, v8);

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_21755D0B0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755D0C4()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_2175589B0();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_65_20();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_217283AFC(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_2177871D0);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D1F8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_217283B58(v9);
  }

  else
  {
    sub_217283B58(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755D318()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283AFC(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B0E30();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0E30();
  }

  sub_217283B58(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_65_20();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_217283AFC(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_2177871D0);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755D47C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755D49C, 0, 0);
}

void sub_21755D49C()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_217558FF0();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_74_14();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_217283C68(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_217787520);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D5D0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_217283CC4(v9);
  }

  else
  {
    sub_217283CC4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755D6F0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283C68(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B0F14();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0F14();
  }

  sub_217283CC4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_74_14();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_217283C68(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_217787520);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755D854(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755D874, 0, 0);
}

void sub_21755D874()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_217558688();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_73_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_217284338(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_2177874E0);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D9A8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_217284394(v9);
  }

  else
  {
    sub_217284394(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755DAC8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217284338(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B0FF8();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0FF8();
  }

  sub_217284394(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_73_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_217284338(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_2177874E0);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755DC2C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755DC40()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_217558024();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_72_13();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_2172757C0(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_217787268);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755DD74()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_21726B8C4(v9);
  }

  else
  {
    sub_21726B8C4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755DE94()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_2172757C0(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B10DC();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B10DC();
  }

  sub_21726B8C4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_72_13();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_2172757C0(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_217787268);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755DFF8(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755E00C()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_217558CC8();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_71_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_217283BAC(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_217787398);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755E140()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_217283C08(v9);
  }

  else
  {
    sub_217283C08(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755E260()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283BAC(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B11C0();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B11C0();
  }

  sub_217283C08(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_71_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_217283BAC(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_217787398);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755E3C4()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 344);
  return v2();
}

uint64_t sub_21755E3E8(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755E408, 0, 0);
}

void sub_21755E408()
{
  OUTLINED_FUNCTION_173_0();
  v19 = v1;
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 296);
  sub_21755881C();
  OUTLINED_FUNCTION_112_12(v3);
  OUTLINED_FUNCTION_111_12(v4);
  if (!v6)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_70_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = OUTLINED_FUNCTION_109_11(v5);
    sub_217284288(v7, v8);
    OUTLINED_FUNCTION_9_14(&unk_217787598);
    v18 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_35_25(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_10_43(v11);

    v18(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755E53C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_53_19();
    sub_2172842E4(v9);
  }

  else
  {
    sub_2172842E4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_21755E65C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217284288(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_3();
    sub_2172B12A4();
  }

  OUTLINED_FUNCTION_52_0();
  if (v14)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B12A4();
  }

  sub_2172842E4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v5)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_70_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v14)
  {
    v16 = OUTLINED_FUNCTION_27_35(v15);
    sub_217284288(v16, v17);
    OUTLINED_FUNCTION_9_14(&unk_217787598);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_35_25(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_10_43(v19);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v7(v6, v7, v8, v9, v10, v11, v12, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_21755E7C0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755E7E0, 0, 0);
}